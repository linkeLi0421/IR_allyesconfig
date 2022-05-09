; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/head907d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head907d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.119, %struct.anon.120, %struct.anon.121, ptr, ptr }
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
%struct.anon.119 = type { i32, i8, i32, i32 }
%struct.anon.120 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.121 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.118 }
%struct.anon.118 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
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
%struct.anon.92 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.127, %struct.anon.128, %struct.anon.130, ptr, %struct.anon.131, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.132, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.144 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.127 = type { ptr, i32, i32, i8 }
%struct.anon.128 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.129] }
%struct.anon.129 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.130 = type { i64, i64 }
%struct.anon.131 = type { i32, i64 }
%struct.anon.132 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.139, %struct.anon.140, %struct.anon.141, %struct.anon.142 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.133, i8 }
%union.anon.133 = type { %struct.anon.137 }
%struct.anon.137 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.139 = type { i32 }
%struct.anon.140 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.141 = type { i16, i16 }
%struct.anon.142 = type { i16, i16, i16, %struct.anon.143, i16 }
%struct.anon.143 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.144 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.93, %struct.anon.94, %struct.nv50_head_mode, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.105, %struct.nv50_crc_atom, %struct.anon.106, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.anon.93 = type { i32, i32, i32 }
%struct.anon.94 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.95, %struct.anon.96 }
%struct.anon.95 = type { i16, i16, i16, i16 }
%struct.anon.96 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.97 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.98 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.99 = type { i8, i32, [6 x i8], i8 }
%struct.anon.100 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.101 = type { i8 }
%struct.anon.102 = type { i8 }
%struct.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i16, i16 }
%struct.anon.105 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.106 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.107 }
%struct.anon.107 = type { i16 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head907d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.head907d_or = private unnamed_addr constant [12 x i8] c"head907d_or\00", align 1
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTROL_OUTPUT_RESOURCE(i)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTROL(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.head907d_procamp = private unnamed_addr constant [17 x i8] c"head907d_procamp\00", align 1
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_PROCAMP(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.head907d_ovly = private unnamed_addr constant [14 x i8] c"head907d_ovly\00", align 1
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_OVERLAY_USAGE_BOUNDS(i)\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.head907d_curs_clr = private unnamed_addr constant [18 x i8] c"head907d_curs_clr\00", align 1
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTROL_CURSOR(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTEXT_DMA_CURSOR(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.head907d_curs_set = private unnamed_addr constant [18 x i8] c"head907d_curs_set\00", align 1
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_OFFSET_CURSOR(i)\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.head907d_core_clr = private unnamed_addr constant [18 x i8] c"head907d_core_clr\00", align 1
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTEXT_DMAS_ISO(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.head907d_core_set = private unnamed_addr constant [18 x i8] c"head907d_core_set\00", align 1
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_OFFSET(i)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_SIZE(i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_STORAGE(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_PARAMS(i)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_VIEWPORT_POINT_IN(i)\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.head907d_olut_clr = private unnamed_addr constant [18 x i8] c"head907d_olut_clr\00", align 1
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_OUTPUT_LUT_LO(i)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTEXT_DMA_LUT(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.head907d_olut_set = private unnamed_addr constant [18 x i8] c"head907d_olut_set\00", align 1
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_OUTPUT_LUT_HI(i)\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.head907d_mode = private unnamed_addr constant [14 x i8] c"head907d_mode\00", align 1
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_OVERSCAN_COLOR(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_RASTER_SIZE(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_RASTER_SYNC_END(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_RASTER_BLANK_END(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_RASTER_BLANK_START(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_RASTER_VERT_BLANK2(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_DEFAULT_BASE_COLOR(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_PIXEL_CLOCK_FREQUENCY(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_PIXEL_CLOCK_CONFIGURATION(i)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_PIXEL_CLOCK_FREQUENCY_MAX(i)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.head907d_view = private unnamed_addr constant [14 x i8] c"head907d_view\00", align 1
@.str.37 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTROL_OUTPUT_SCALER(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_VIEWPORT_SIZE_IN(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_VIEWPORT_SIZE_OUT(i)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_VIEWPORT_SIZE_OUT_MIN(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_VIEWPORT_SIZE_OUT_MAX(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@head907d = dso_local constant { %struct.nv50_head_func, [44 x i8] } { %struct.nv50_head_func { ptr @head907d_view, ptr @head907d_mode, ptr @head907d_olut, ptr @head907d_ilut_check, i8 0, i32 1024, ptr @head907d_olut_set, ptr @head907d_olut_clr, ptr @head507d_core_calc, ptr @head907d_core_set, ptr @head907d_core_clr, ptr @head507d_curs_layout, ptr @head507d_curs_format, ptr @head907d_curs_set, ptr @head907d_curs_clr, ptr @head907d_base, ptr @head907d_ovly, ptr @head907d_dither, ptr @head907d_procamp, ptr @head907d_or, ptr null }, [44 x i8] zeroinitializer }, align 32
@__func__.head907d_base = private unnamed_addr constant [14 x i8] c"head907d_base\00", align 1
@.str.42 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_BASE_CHANNEL_USAGE_BOUNDS(i)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.head907d_dither = private unnamed_addr constant [16 x i8] c"head907d_dither\00", align 1
@.str.43 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_DITHER_CONTROL(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.head907d_ovly = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 256, i32 256, i32 257, i32 256, i32 769, i32 256, i32 256, i32 256, i32 1281], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 1024]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 46, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 67, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 120, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 162, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 167, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 181, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 205, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 219, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 222, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 240, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 256, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 259, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 273, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 333, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 358, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 363, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 388, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 394, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 398, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [9 x i8] c"head907d\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 413, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 148, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/head907d.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 87, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"switch.table.head907d_ovly\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @head907d, ptr @.str.42, ptr @.str.43, ptr @switch.table.head907d_ovly], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @head907d to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.head907d_ovly to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_or(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %mul = mul i32 %13, 768
  %add7 = add i32 %mul, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !89

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end94

if.end94:                                         ; preds = %do.end59, %do.body5.if.end94_crit_edge
  %23 = and i32 %add7, 3844
  %24 = or i32 %23, 524288
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp112.not = icmp ult ptr %26, %28
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !89

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !89

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head907d_or) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %or208 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 11
  %54 = ptrtoint ptr %or208 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %or208, align 8
  %55 = and i8 %bf.load, 3
  %56 = lshr i8 %bf.load, 4
  %57 = and i8 %56, 8
  %or217540 = or i8 %57, %55
  %58 = lshr i8 %bf.load, 2
  %59 = and i8 %58, 16
  %or225541 = or i8 %or217540, %59
  %or225 = zext i8 %or225541 to i32
  %60 = and i8 %58, 15
  %and231 = zext i8 %60 to i32
  %shl232 = shl nuw nsw i32 %and231, 6
  %or233 = or i32 %shl232, %or225
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %seg.i, align 8
  %cmp239.not = icmp ult ptr %61, %63
  br i1 %cmp239.not, label %if.end175.if.end264_crit_edge, label %do.end258, !prof !89

if.end175.if.end264_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

do.end258:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end264

if.end264:                                        ; preds = %do.end258, %if.end175.if.end264_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %cmp278.not = icmp ult ptr %65, %67
  br i1 %cmp278.not, label %if.end264.if.end303_crit_edge, label %do.end297, !prof !89

if.end264.if.end303_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

do.end297:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end303

if.end303:                                        ; preds = %do.end297, %if.end264.if.end303_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast321 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast322 = ptrtoint ptr %71 to i32
  %sub.ptr.sub323 = sub i32 %sub.ptr.lhs.cast321, %sub.ptr.rhs.cast322
  %72 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mem, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %client, align 4
  %name335 = getelementptr inbounds %struct.nvif_object, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %name335 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name335, align 8
  %82 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %handle, align 4
  %84 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %77(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %81, i32 noundef %83, ptr noundef %85, i32 noundef %sub.ptr.sub323, i32 noundef %or233) #5
  %86 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur.i, align 4
  %incdec.ptr344 = getelementptr i32, ptr %87, i32 1
  store ptr %incdec.ptr344, ptr %cur.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or233, ptr %87, align 4
  %89 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %index, align 8
  %shl354 = shl i32 %90, 25
  %mode = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3
  %91 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %mode, align 8, !range !90
  %93 = zext i8 %92 to i32
  %or355 = or i32 %shl354, %93
  %or361 = or i32 %or355, 837574656
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg.i, align 8
  %cmp367.not = icmp ult ptr %94, %96
  br i1 %cmp367.not, label %if.end303.if.end392_crit_edge, label %do.end386, !prof !89

if.end303.if.end392_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end392

do.end386:                                        ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end392

if.end392:                                        ; preds = %do.end386, %if.end303.if.end392_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i, align 4
  %cmp406.not = icmp ult ptr %98, %100
  br i1 %cmp406.not, label %if.end392.if.end431_crit_edge, label %do.end425, !prof !89

if.end392.if.end431_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end431

do.end425:                                        ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end431

if.end431:                                        ; preds = %do.end425, %if.end392.if.end431_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast449 = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast450 = ptrtoint ptr %104 to i32
  %sub.ptr.sub451 = sub i32 %sub.ptr.lhs.cast449, %sub.ptr.rhs.cast450
  %105 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mem, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %client, align 4
  %name463 = getelementptr inbounds %struct.nvif_object, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %name463 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name463, align 8
  %115 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %handle, align 4
  %117 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %110(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %114, i32 noundef %116, ptr noundef %118, i32 noundef %sub.ptr.sub451, i32 noundef %or361) #5
  %119 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cur.i, align 4
  %incdec.ptr472 = getelementptr i32, ptr %120, i32 1
  store ptr %incdec.ptr472, ptr %cur.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or361, ptr %120, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end431, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end431 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_procamp(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1176
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !89

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3992
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !89

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !89

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_procamp) #5
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
  %cmp185.not = icmp ult ptr %56, %58
  br i1 %cmp185.not, label %if.end133.if.end210_crit_edge, label %do.end204, !prof !89

if.end133.if.end210_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

do.end204:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end210

if.end210:                                        ; preds = %do.end204, %if.end133.if.end210_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %cmp224.not = icmp ult ptr %60, %62
  br i1 %cmp224.not, label %if.end210.if.end249_crit_edge, label %do.end243, !prof !89

if.end210.if.end249_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end249

do.end243:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end249

if.end249:                                        ; preds = %do.end243, %if.end210.if.end249_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast267 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast268 = ptrtoint ptr %66 to i32
  %sub.ptr.sub269 = sub i32 %sub.ptr.lhs.cast267, %sub.ptr.rhs.cast268
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
  %name281 = getelementptr inbounds %struct.nvif_object, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %name281 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name281, align 8
  %77 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %handle, align 4
  %79 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %72(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %76, i32 noundef %78, ptr noundef %80, i32 noundef %sub.ptr.sub269, i32 noundef %or177) #5
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr290 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr290, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or177, ptr %82, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end249, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end249 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_ovly(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %15)
  %16 = icmp ult i8 %15, 9
  br i1 %16, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #5
  br label %if.end38

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %15 to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %18 = sext i8 %15 to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.head907d_ovly, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end38

if.end38:                                         ; preds = %switch.lookup, %do.end
  %bounds.1 = phi i32 [ 1, %do.end ], [ %switch.load, %switch.lookup ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %21, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %23
  br i1 %cmp.not.i, label %if.end38.do.body45_crit_edge, label %if.then.i

if.end38.do.body45_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45

if.then.i:                                        ; preds = %if.end38
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %25(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body45_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body45_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45

do.body45:                                        ; preds = %if.then.i.do.body45_crit_edge, %if.end38.do.body45_crit_edge
  %26 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %27, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %28 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1236
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool48.not = icmp ult i32 %add, 4096
  br i1 %tobool48.not, label %do.body45.if.end103_crit_edge, label %do.end68, !prof !89

do.body45.if.end103_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

do.end68:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end103

if.end103:                                        ; preds = %do.end68, %do.body45.if.end103_crit_edge
  %29 = and i32 %add, 4052
  %30 = or i32 %29, 262144
  %31 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i, align 4
  %33 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %32, %34
  br i1 %cmp.not, label %if.end103.if.end146_crit_edge, label %do.end140, !prof !89

if.end103.if.end146_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

do.end140:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %if.end103.if.end146_crit_edge
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i, align 4
  %cmp159.not = icmp ult ptr %36, %38
  br i1 %cmp159.not, label %if.end146.if.end184_crit_edge, label %do.end178, !prof !89

if.end146.if.end184_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

do.end178:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end184

if.end184:                                        ; preds = %do.end178, %if.end146.if.end184_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %42 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %43 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %53 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %handle, align 4
  %name201 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %55 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %48(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %52, i32 noundef %54, ptr noundef %56, i32 noundef %sub.ptr.sub, i32 noundef %30, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_ovly) #5
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %58, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %30, ptr %58, align 4
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seg.i, align 8
  %cmp221.not = icmp ult ptr %60, %62
  br i1 %cmp221.not, label %if.end184.if.end246_crit_edge, label %do.end240, !prof !89

if.end184.if.end246_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end246

do.end240:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end246

if.end246:                                        ; preds = %do.end240, %if.end184.if.end246_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  %cmp260.not = icmp ult ptr %64, %66
  br i1 %cmp260.not, label %if.end246.if.end285_crit_edge, label %do.end279, !prof !89

if.end246.if.end285_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end285

do.end279:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end285

if.end285:                                        ; preds = %do.end279, %if.end246.if.end285_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast303 = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast304 = ptrtoint ptr %70 to i32
  %sub.ptr.sub305 = sub i32 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast304
  %71 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mem, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client, align 4
  %name317 = getelementptr inbounds %struct.nvif_object, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %name317 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name317, align 8
  %81 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %handle, align 4
  %83 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %76(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %80, i32 noundef %82, ptr noundef %84, i32 noundef %sub.ptr.sub305, i32 noundef %bounds.1) #5
  %85 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cur.i, align 4
  %incdec.ptr326 = getelementptr i32, ptr %86, i32 1
  store ptr %incdec.ptr326, ptr %cur.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %bounds.1, ptr %86, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end285, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end285 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_curs_clr(ptr nocapture noundef readonly %head) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %15, i32 4
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
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 4) #5
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
  %add.ptr4.i = getelementptr i32, ptr %21, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !89

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3968
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !89

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !89

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_curs_clr) #5
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !89

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !89

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 83886080) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 83886080, ptr %80, align 4
  %add285 = add i32 %mul, 1164
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add285)
  %tobool288.not = icmp ult i32 %add285, 4096
  br i1 %tobool288.not, label %if.end234.if.end343_crit_edge, label %do.end308, !prof !89

if.end234.if.end343_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end343

do.end308:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end343

if.end343:                                        ; preds = %do.end308, %if.end234.if.end343_crit_edge
  %82 = and i32 %add285, 3980
  %83 = or i32 %82, 262144
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp368.not = icmp ult ptr %85, %87
  br i1 %cmp368.not, label %if.end343.if.end393_crit_edge, label %do.end387, !prof !89

if.end343.if.end393_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end393

do.end387:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end343.if.end393_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp407.not = icmp ult ptr %89, %91
  br i1 %cmp407.not, label %if.end393.if.end432_crit_edge, label %do.end426, !prof !89

if.end393.if.end432_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end432

do.end426:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %101(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %sub.ptr.sub452, i32 noundef %83, i32 noundef %add285, i32 noundef 1, ptr noundef nonnull @__func__.head907d_curs_clr) #5
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur.i, align 4
  %incdec.ptr475 = getelementptr i32, ptr %111, i32 1
  store ptr %incdec.ptr475, ptr %cur.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %83, ptr %111, align 4
  %113 = load ptr, ptr %cur.i, align 4
  %114 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %seg.i, align 8
  %cmp487.not = icmp ult ptr %113, %115
  br i1 %cmp487.not, label %if.end432.if.end512_crit_edge, label %do.end506, !prof !89

if.end432.if.end512_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end512

do.end506:                                        ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end512

if.end512:                                        ; preds = %do.end506, %if.end432.if.end512_crit_edge
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i, align 4
  %cmp526.not = icmp ult ptr %117, %119
  br i1 %cmp526.not, label %if.end512.if.end551_crit_edge, label %do.end545, !prof !89

if.end512.if.end551_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end551

do.end545:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end551

if.end551:                                        ; preds = %do.end545, %if.end512.if.end551_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast569 = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast570 = ptrtoint ptr %123 to i32
  %sub.ptr.sub571 = sub i32 %sub.ptr.lhs.cast569, %sub.ptr.rhs.cast570
  %124 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mem, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %130 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %client, align 4
  %name583 = getelementptr inbounds %struct.nvif_object, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %name583 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name583, align 8
  %134 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %handle, align 4
  %136 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %129(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %133, i32 noundef %135, ptr noundef %137, i32 noundef %sub.ptr.sub571, i32 noundef 0) #5
  %138 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cur.i, align 4
  %incdec.ptr592 = getelementptr i32, ptr %139, i32 1
  store ptr %incdec.ptr592, ptr %cur.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %139, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end551, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end551 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_curs_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %15, i32 5
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
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 5) #5
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
  %add.ptr4.i = getelementptr i32, ptr %21, i32 5
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = mul i32 %13, 768
  %add7 = add i32 %mul, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !89

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end94

if.end94:                                         ; preds = %do.end59, %do.body5.if.end94_crit_edge
  %23 = and i32 %add7, 3968
  %24 = or i32 %23, 524288
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp112.not = icmp ult ptr %26, %28
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !89

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !89

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head907d_curs_set) #5
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
  %cmp226.not = icmp ult ptr %59, %61
  br i1 %cmp226.not, label %if.end175.if.end251_crit_edge, label %do.end245, !prof !89

if.end175.if.end251_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end251

do.end245:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end251

if.end251:                                        ; preds = %do.end245, %if.end175.if.end251_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp265.not = icmp ult ptr %63, %65
  br i1 %cmp265.not, label %if.end251.if.end290_crit_edge, label %do.end284, !prof !89

if.end251.if.end290_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end290

do.end284:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end290

if.end290:                                        ; preds = %do.end284, %if.end251.if.end290_crit_edge
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast308 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast309 = ptrtoint ptr %69 to i32
  %sub.ptr.sub310 = sub i32 %sub.ptr.lhs.cast308, %sub.ptr.rhs.cast309
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
  %name322 = getelementptr inbounds %struct.nvif_object, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %name322 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name322, align 8
  %80 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %handle, align 4
  %82 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %75(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %sub.ptr.sub310, i32 noundef %or217) #5
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %incdec.ptr331 = getelementptr i32, ptr %85, i32 1
  store ptr %incdec.ptr331, ptr %cur.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or217, ptr %85, align 4
  %87 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %87, i32 6)
  %bf.load340 = load i48, ptr %layout, align 8
  %bf.lshr341 = lshr i48 %bf.load340, 16
  %conv344 = trunc i48 %bf.lshr341 to i32
  %88 = load ptr, ptr %cur.i, align 4
  %89 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %seg.i, align 8
  %cmp349.not = icmp ult ptr %88, %90
  br i1 %cmp349.not, label %if.end290.if.end374_crit_edge, label %do.end368, !prof !89

if.end290.if.end374_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end374

do.end368:                                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end374

if.end374:                                        ; preds = %do.end368, %if.end290.if.end374_crit_edge
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %93 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i, align 4
  %cmp388.not = icmp ult ptr %92, %94
  br i1 %cmp388.not, label %if.end374.if.end413_crit_edge, label %do.end407, !prof !89

if.end374.if.end413_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end413

do.end407:                                        ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end413

if.end413:                                        ; preds = %do.end407, %if.end374.if.end413_crit_edge
  %95 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast431 = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast432 = ptrtoint ptr %98 to i32
  %sub.ptr.sub433 = sub i32 %sub.ptr.lhs.cast431, %sub.ptr.rhs.cast432
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
  %name445 = getelementptr inbounds %struct.nvif_object, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %name445 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name445, align 8
  %109 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %handle, align 4
  %111 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %104(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %108, i32 noundef %110, ptr noundef %112, i32 noundef %sub.ptr.sub433, i32 noundef %conv344) #5
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %incdec.ptr454 = getelementptr i32, ptr %114, i32 1
  store ptr %incdec.ptr454, ptr %cur.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv344, ptr %114, align 4
  %add464 = add i32 %mul, 1164
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add464)
  %tobool467.not = icmp ult i32 %add464, 4096
  br i1 %tobool467.not, label %if.end413.if.end522_crit_edge, label %do.end487, !prof !89

if.end413.if.end522_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end522

do.end487:                                        ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end522

if.end522:                                        ; preds = %do.end487, %if.end413.if.end522_crit_edge
  %116 = and i32 %add464, 3980
  %117 = or i32 %116, 262144
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur.i, align 4
  %120 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %seg.i, align 8
  %cmp547.not = icmp ult ptr %119, %121
  br i1 %cmp547.not, label %if.end522.if.end572_crit_edge, label %do.end566, !prof !89

if.end522.if.end572_crit_edge:                    ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end572

do.end566:                                        ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end572

if.end572:                                        ; preds = %do.end566, %if.end522.if.end572_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %cmp586.not = icmp ult ptr %123, %125
  br i1 %cmp586.not, label %if.end572.if.end611_crit_edge, label %do.end605, !prof !89

if.end572.if.end611_crit_edge:                    ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end611

do.end605:                                        ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end611

if.end611:                                        ; preds = %do.end605, %if.end572.if.end611_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast629 = ptrtoint ptr %127 to i32
  %sub.ptr.rhs.cast630 = ptrtoint ptr %129 to i32
  %sub.ptr.sub631 = sub i32 %sub.ptr.lhs.cast629, %sub.ptr.rhs.cast630
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
  %name643 = getelementptr inbounds %struct.nvif_object, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %name643 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name643, align 8
  %140 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %handle, align 4
  %142 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %135(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %sub.ptr.sub631, i32 noundef %117, i32 noundef %add464, i32 noundef 1, ptr noundef nonnull @__func__.head907d_curs_set) #5
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %incdec.ptr654 = getelementptr i32, ptr %145, i32 1
  store ptr %incdec.ptr654, ptr %cur.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %117, ptr %145, align 4
  %handle663 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 1
  %147 = ptrtoint ptr %handle663 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %handle663, align 4
  %149 = load ptr, ptr %cur.i, align 4
  %150 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %seg.i, align 8
  %cmp668.not = icmp ult ptr %149, %151
  br i1 %cmp668.not, label %if.end611.if.end693_crit_edge, label %do.end687, !prof !89

if.end611.if.end693_crit_edge:                    ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end693

do.end687:                                        ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end693

if.end693:                                        ; preds = %do.end687, %if.end611.if.end693_crit_edge
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end.i, align 4
  %cmp707.not = icmp ult ptr %153, %155
  br i1 %cmp707.not, label %if.end693.if.end732_crit_edge, label %do.end726, !prof !89

if.end693.if.end732_crit_edge:                    ; preds = %if.end693
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end732

do.end726:                                        ; preds = %if.end693
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end732

if.end732:                                        ; preds = %do.end726, %if.end693.if.end732_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast750 = ptrtoint ptr %157 to i32
  %sub.ptr.rhs.cast751 = ptrtoint ptr %159 to i32
  %sub.ptr.sub752 = sub i32 %sub.ptr.lhs.cast750, %sub.ptr.rhs.cast751
  %160 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mem, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %166 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %client, align 4
  %name764 = getelementptr inbounds %struct.nvif_object, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %name764 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %name764, align 8
  %170 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %handle, align 4
  %172 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %165(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %169, i32 noundef %171, ptr noundef %173, i32 noundef %sub.ptr.sub752, i32 noundef %148) #5
  %174 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cur.i, align 4
  %incdec.ptr773 = getelementptr i32, ptr %175, i32 1
  store ptr %incdec.ptr773, ptr %cur.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %148, ptr %175, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end732, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end732 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_core_clr(ptr nocapture noundef readonly %head) #0 align 64 {
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
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1140
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !89

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3956
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !89

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !89

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_core_clr) #5
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !89

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !89

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #5
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
define dso_local i32 @head907d_core_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !89

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3936
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !89

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !89

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_core_set) #5
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
  %conv170 = trunc i40 %55 to i32
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seg.i, align 8
  %cmp175.not = icmp ult ptr %56, %58
  br i1 %cmp175.not, label %if.end133.if.end200_crit_edge, label %do.end194, !prof !89

if.end133.if.end200_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end200

do.end194:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end200

if.end200:                                        ; preds = %do.end194, %if.end133.if.end200_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %cmp214.not = icmp ult ptr %60, %62
  br i1 %cmp214.not, label %if.end200.if.end239_crit_edge, label %do.end233, !prof !89

if.end200.if.end239_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end239

do.end233:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end239

if.end239:                                        ; preds = %do.end233, %if.end200.if.end239_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast257 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast258 = ptrtoint ptr %66 to i32
  %sub.ptr.sub259 = sub i32 %sub.ptr.lhs.cast257, %sub.ptr.rhs.cast258
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
  %name271 = getelementptr inbounds %struct.nvif_object, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %name271 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name271, align 8
  %77 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %handle, align 4
  %79 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %72(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %76, i32 noundef %78, ptr noundef %80, i32 noundef %sub.ptr.sub259, i32 noundef %conv170) #5
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr280 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr280, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv170, ptr %82, align 4
  %add376 = add i32 %mul, 1128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add376)
  %tobool421.not = icmp ult i32 %add376, 4096
  br i1 %tobool421.not, label %if.end239.if.end476_crit_edge, label %do.end441, !prof !89

if.end239.if.end476_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end476

do.end441:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end476

if.end476:                                        ; preds = %do.end441, %if.end239.if.end476_crit_edge
  %84 = and i32 %add376, 3944
  %85 = or i32 %84, 1048576
  %86 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur.i, align 4
  %88 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %seg.i, align 8
  %cmp501.not = icmp ult ptr %87, %89
  br i1 %cmp501.not, label %if.end476.if.end526_crit_edge, label %do.end520, !prof !89

if.end476.if.end526_crit_edge:                    ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end526

do.end520:                                        ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end526

if.end526:                                        ; preds = %do.end520, %if.end476.if.end526_crit_edge
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i, align 4
  %cmp540.not = icmp ult ptr %91, %93
  br i1 %cmp540.not, label %if.end526.if.end565_crit_edge, label %do.end559, !prof !89

if.end526.if.end565_crit_edge:                    ; preds = %if.end526
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end565

do.end559:                                        ; preds = %if.end526
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end565

if.end565:                                        ; preds = %do.end559, %if.end526.if.end565_crit_edge
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast583 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast584 = ptrtoint ptr %97 to i32
  %sub.ptr.sub585 = sub i32 %sub.ptr.lhs.cast583, %sub.ptr.rhs.cast584
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
  %name597 = getelementptr inbounds %struct.nvif_object, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %name597 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name597, align 8
  %108 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %handle, align 4
  %110 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %103(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %107, i32 noundef %109, ptr noundef %111, i32 noundef %sub.ptr.sub585, i32 noundef %85, i32 noundef %add376, i32 noundef 4, ptr noundef nonnull @__func__.head907d_core_set) #5
  %112 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cur.i, align 4
  %incdec.ptr608 = getelementptr i32, ptr %113, i32 1
  store ptr %incdec.ptr608, ptr %cur.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %85, ptr %113, align 4
  %w = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 8
  %115 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %w, align 8
  %conv617 = zext i16 %116 to i32
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 9
  %117 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %h, align 2
  %conv621 = zext i16 %118 to i32
  %shl623 = shl nuw i32 %conv621, 16
  %or624 = or i32 %shl623, %conv617
  %119 = load ptr, ptr %cur.i, align 4
  %120 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %seg.i, align 8
  %cmp630.not = icmp ult ptr %119, %121
  br i1 %cmp630.not, label %if.end565.if.end655_crit_edge, label %do.end649, !prof !89

if.end565.if.end655_crit_edge:                    ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end655

do.end649:                                        ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end655

if.end655:                                        ; preds = %do.end649, %if.end565.if.end655_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %cmp669.not = icmp ult ptr %123, %125
  br i1 %cmp669.not, label %if.end655.if.end694_crit_edge, label %do.end688, !prof !89

if.end655.if.end694_crit_edge:                    ; preds = %if.end655
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end694

do.end688:                                        ; preds = %if.end655
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end694

if.end694:                                        ; preds = %do.end688, %if.end655.if.end694_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast712 = ptrtoint ptr %127 to i32
  %sub.ptr.rhs.cast713 = ptrtoint ptr %129 to i32
  %sub.ptr.sub714 = sub i32 %sub.ptr.lhs.cast712, %sub.ptr.rhs.cast713
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
  %name726 = getelementptr inbounds %struct.nvif_object, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %name726 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name726, align 8
  %140 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %handle, align 4
  %142 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %135(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %sub.ptr.sub714, i32 noundef %or624) #5
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %incdec.ptr735 = getelementptr i32, ptr %145, i32 1
  store ptr %incdec.ptr735, ptr %cur.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or624, ptr %145, align 4
  %blockh = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 4
  %147 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %147)
  %bf.load744 = load i16, ptr %blockh, align 2
  %148 = lshr i16 %bf.load744, 4
  %149 = and i16 %148, 15
  %conv746 = zext i16 %149 to i32
  %pitch = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 5
  %150 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %150)
  %bf.load750 = load i32, ptr %pitch, align 8
  %151 = and i32 %bf.load750, 1048320
  %or756 = or i32 %151, %conv746
  %152 = lshr i32 %bf.load750, 12
  %153 = and i32 %152, 1048320
  %or764 = or i32 %or756, %153
  %bf.lshr767 = lshr i16 %bf.load744, 8
  %154 = and i16 %bf.lshr767, 1
  %155 = zext i16 %154 to i32
  %shl772 = shl nuw nsw i32 %155, 24
  %or773 = or i32 %or764, %shl772
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %seg.i, align 8
  %cmp779.not = icmp ult ptr %156, %158
  br i1 %cmp779.not, label %if.end694.if.end804_crit_edge, label %do.end798, !prof !89

if.end694.if.end804_crit_edge:                    ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end804

do.end798:                                        ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end804

if.end804:                                        ; preds = %do.end798, %if.end694.if.end804_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i, align 4
  %cmp818.not = icmp ult ptr %160, %162
  br i1 %cmp818.not, label %if.end804.if.end843_crit_edge, label %do.end837, !prof !89

if.end804.if.end843_crit_edge:                    ; preds = %if.end804
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end843

do.end837:                                        ; preds = %if.end804
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end843

if.end843:                                        ; preds = %do.end837, %if.end804.if.end843_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %165 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast861 = ptrtoint ptr %164 to i32
  %sub.ptr.rhs.cast862 = ptrtoint ptr %166 to i32
  %sub.ptr.sub863 = sub i32 %sub.ptr.lhs.cast861, %sub.ptr.rhs.cast862
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
  %name875 = getelementptr inbounds %struct.nvif_object, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %name875 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %name875, align 8
  %177 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %handle, align 4
  %179 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %172(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %176, i32 noundef %178, ptr noundef %180, i32 noundef %sub.ptr.sub863, i32 noundef %or773) #5
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %incdec.ptr884 = getelementptr i32, ptr %182, i32 1
  store ptr %incdec.ptr884, ptr %cur.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or773, ptr %182, align 4
  %format = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 3
  %184 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %format, align 1
  %conv893 = zext i8 %185 to i32
  %shl895 = shl nuw nsw i32 %conv893, 8
  %186 = load ptr, ptr %cur.i, align 4
  %187 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %seg.i, align 8
  %cmp903.not = icmp ult ptr %186, %188
  br i1 %cmp903.not, label %if.end843.if.end928_crit_edge, label %do.end922, !prof !89

if.end843.if.end928_crit_edge:                    ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end928

do.end922:                                        ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end928

if.end928:                                        ; preds = %do.end922, %if.end843.if.end928_crit_edge
  %189 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cur.i, align 4
  %191 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %end.i, align 4
  %cmp942.not = icmp ult ptr %190, %192
  br i1 %cmp942.not, label %if.end928.if.end967_crit_edge, label %do.end961, !prof !89

if.end928.if.end967_crit_edge:                    ; preds = %if.end928
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end967

do.end961:                                        ; preds = %if.end928
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end967

if.end967:                                        ; preds = %do.end961, %if.end928.if.end967_crit_edge
  %193 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cur.i, align 4
  %195 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast985 = ptrtoint ptr %194 to i32
  %sub.ptr.rhs.cast986 = ptrtoint ptr %196 to i32
  %sub.ptr.sub987 = sub i32 %sub.ptr.lhs.cast985, %sub.ptr.rhs.cast986
  %197 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mem, align 8
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %203 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %client, align 4
  %name999 = getelementptr inbounds %struct.nvif_object, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %name999 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %name999, align 8
  %207 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %handle, align 4
  %209 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %202(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %206, i32 noundef %208, ptr noundef %210, i32 noundef %sub.ptr.sub987, i32 noundef %shl895) #5
  %211 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1008 = getelementptr i32, ptr %212, i32 1
  store ptr %incdec.ptr1008, ptr %cur.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %shl895, ptr %212, align 4
  %handle1017 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 1
  %214 = ptrtoint ptr %handle1017 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %handle1017, align 4
  %216 = load ptr, ptr %cur.i, align 4
  %217 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %seg.i, align 8
  %cmp1026.not = icmp ult ptr %216, %218
  br i1 %cmp1026.not, label %if.end967.if.end1051_crit_edge, label %do.end1045, !prof !89

if.end967.if.end1051_crit_edge:                   ; preds = %if.end967
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1051

do.end1045:                                       ; preds = %if.end967
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1051

if.end1051:                                       ; preds = %do.end1045, %if.end967.if.end1051_crit_edge
  %219 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cur.i, align 4
  %221 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %end.i, align 4
  %cmp1065.not = icmp ult ptr %220, %222
  br i1 %cmp1065.not, label %if.end1051.if.end1090_crit_edge, label %do.end1084, !prof !89

if.end1051.if.end1090_crit_edge:                  ; preds = %if.end1051
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1090

do.end1084:                                       ; preds = %if.end1051
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1090

if.end1090:                                       ; preds = %do.end1084, %if.end1051.if.end1090_crit_edge
  %223 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cur.i, align 4
  %225 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1108 = ptrtoint ptr %224 to i32
  %sub.ptr.rhs.cast1109 = ptrtoint ptr %226 to i32
  %sub.ptr.sub1110 = sub i32 %sub.ptr.lhs.cast1108, %sub.ptr.rhs.cast1109
  %227 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mem, align 8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %233 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %client, align 4
  %name1122 = getelementptr inbounds %struct.nvif_object, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %name1122 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %name1122, align 8
  %237 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %handle, align 4
  %239 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %232(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %236, i32 noundef %238, ptr noundef %240, i32 noundef %sub.ptr.sub1110, i32 noundef %215) #5
  %241 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1131 = getelementptr i32, ptr %242, i32 1
  store ptr %incdec.ptr1131, ptr %cur.i, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %215, ptr %242, align 4
  %add1141 = add i32 %mul, 1200
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1141)
  %tobool1144.not = icmp ult i32 %add1141, 4096
  br i1 %tobool1144.not, label %if.end1090.if.end1199_crit_edge, label %do.end1164, !prof !89

if.end1090.if.end1199_crit_edge:                  ; preds = %if.end1090
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1199

do.end1164:                                       ; preds = %if.end1090
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end1199

if.end1199:                                       ; preds = %do.end1164, %if.end1090.if.end1199_crit_edge
  %244 = and i32 %add1141, 4016
  %245 = or i32 %244, 262144
  %246 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cur.i, align 4
  %248 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %seg.i, align 8
  %cmp1224.not = icmp ult ptr %247, %249
  br i1 %cmp1224.not, label %if.end1199.if.end1249_crit_edge, label %do.end1243, !prof !89

if.end1199.if.end1249_crit_edge:                  ; preds = %if.end1199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1249

do.end1243:                                       ; preds = %if.end1199
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1249

if.end1249:                                       ; preds = %do.end1243, %if.end1199.if.end1249_crit_edge
  %250 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cur.i, align 4
  %252 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %end.i, align 4
  %cmp1263.not = icmp ult ptr %251, %253
  br i1 %cmp1263.not, label %if.end1249.if.end1288_crit_edge, label %do.end1282, !prof !89

if.end1249.if.end1288_crit_edge:                  ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1288

do.end1282:                                       ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1288

if.end1288:                                       ; preds = %do.end1282, %if.end1249.if.end1288_crit_edge
  %254 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cur.i, align 4
  %256 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1306 = ptrtoint ptr %255 to i32
  %sub.ptr.rhs.cast1307 = ptrtoint ptr %257 to i32
  %sub.ptr.sub1308 = sub i32 %sub.ptr.lhs.cast1306, %sub.ptr.rhs.cast1307
  %258 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mem, align 8
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %264 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %client, align 4
  %name1320 = getelementptr inbounds %struct.nvif_object, ptr %265, i32 0, i32 2
  %266 = ptrtoint ptr %name1320 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %name1320, align 8
  %268 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %handle, align 4
  %270 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %263(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %267, i32 noundef %269, ptr noundef %271, i32 noundef %sub.ptr.sub1308, i32 noundef %245, i32 noundef %add1141, i32 noundef 1, ptr noundef nonnull @__func__.head907d_core_set) #5
  %272 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1331 = getelementptr i32, ptr %273, i32 1
  store ptr %incdec.ptr1331, ptr %cur.i, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %245, ptr %273, align 4
  %x = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 6
  %275 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %x, align 4
  %277 = and i16 %276, 32767
  %and1341 = zext i16 %277 to i32
  %y = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 7
  %278 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %y, align 2
  %280 = and i16 %279, 32767
  %and1345 = zext i16 %280 to i32
  %shl1346 = shl nuw nsw i32 %and1345, 16
  %or1347 = or i32 %shl1346, %and1341
  %281 = load ptr, ptr %cur.i, align 4
  %282 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %seg.i, align 8
  %cmp1353.not = icmp ult ptr %281, %283
  br i1 %cmp1353.not, label %if.end1288.if.end1378_crit_edge, label %do.end1372, !prof !89

if.end1288.if.end1378_crit_edge:                  ; preds = %if.end1288
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1378

do.end1372:                                       ; preds = %if.end1288
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1378

if.end1378:                                       ; preds = %do.end1372, %if.end1288.if.end1378_crit_edge
  %284 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cur.i, align 4
  %286 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %end.i, align 4
  %cmp1392.not = icmp ult ptr %285, %287
  br i1 %cmp1392.not, label %if.end1378.if.end1417_crit_edge, label %do.end1411, !prof !89

if.end1378.if.end1417_crit_edge:                  ; preds = %if.end1378
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1417

do.end1411:                                       ; preds = %if.end1378
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1417

if.end1417:                                       ; preds = %do.end1411, %if.end1378.if.end1417_crit_edge
  %288 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cur.i, align 4
  %290 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1435 = ptrtoint ptr %289 to i32
  %sub.ptr.rhs.cast1436 = ptrtoint ptr %291 to i32
  %sub.ptr.sub1437 = sub i32 %sub.ptr.lhs.cast1435, %sub.ptr.rhs.cast1436
  %292 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mem, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 4
  %298 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %client, align 4
  %name1449 = getelementptr inbounds %struct.nvif_object, ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %name1449 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %name1449, align 8
  %302 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %handle, align 4
  %304 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %297(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %301, i32 noundef %303, ptr noundef %305, i32 noundef %sub.ptr.sub1437, i32 noundef %or1347) #5
  %306 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1458 = getelementptr i32, ptr %307, i32 1
  store ptr %incdec.ptr1458, ptr %cur.i, align 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %or1347, ptr %307, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1417, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1417 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_olut_clr(ptr nocapture noundef readonly %head) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %15, i32 4
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
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 4) #5
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
  %add.ptr4.i = getelementptr i32, ptr %21, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !89

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3912
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !89

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !89

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_olut_clr) #5
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !89

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !89

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  %add285 = add i32 %mul, 1116
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add285)
  %tobool288.not = icmp ult i32 %add285, 4096
  br i1 %tobool288.not, label %if.end234.if.end343_crit_edge, label %do.end308, !prof !89

if.end234.if.end343_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end343

do.end308:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end343

if.end343:                                        ; preds = %do.end308, %if.end234.if.end343_crit_edge
  %82 = and i32 %add285, 3932
  %83 = or i32 %82, 262144
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp368.not = icmp ult ptr %85, %87
  br i1 %cmp368.not, label %if.end343.if.end393_crit_edge, label %do.end387, !prof !89

if.end343.if.end393_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end393

do.end387:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end343.if.end393_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp407.not = icmp ult ptr %89, %91
  br i1 %cmp407.not, label %if.end393.if.end432_crit_edge, label %do.end426, !prof !89

if.end393.if.end432_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end432

do.end426:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %101(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %sub.ptr.sub452, i32 noundef %83, i32 noundef %add285, i32 noundef 1, ptr noundef nonnull @__func__.head907d_olut_clr) #5
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur.i, align 4
  %incdec.ptr475 = getelementptr i32, ptr %111, i32 1
  store ptr %incdec.ptr475, ptr %cur.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %83, ptr %111, align 4
  %113 = load ptr, ptr %cur.i, align 4
  %114 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %seg.i, align 8
  %cmp487.not = icmp ult ptr %113, %115
  br i1 %cmp487.not, label %if.end432.if.end512_crit_edge, label %do.end506, !prof !89

if.end432.if.end512_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end512

do.end506:                                        ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end512

if.end512:                                        ; preds = %do.end506, %if.end432.if.end512_crit_edge
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i, align 4
  %cmp526.not = icmp ult ptr %117, %119
  br i1 %cmp526.not, label %if.end512.if.end551_crit_edge, label %do.end545, !prof !89

if.end512.if.end551_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end551

do.end545:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end551

if.end551:                                        ; preds = %do.end545, %if.end512.if.end551_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast569 = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast570 = ptrtoint ptr %123 to i32
  %sub.ptr.sub571 = sub i32 %sub.ptr.lhs.cast569, %sub.ptr.rhs.cast570
  %124 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mem, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %130 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %client, align 4
  %name583 = getelementptr inbounds %struct.nvif_object, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %name583 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name583, align 8
  %134 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %handle, align 4
  %136 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %129(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %133, i32 noundef %135, ptr noundef %137, i32 noundef %sub.ptr.sub571, i32 noundef 0) #5
  %138 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cur.i, align 4
  %incdec.ptr592 = getelementptr i32, ptr %139, i32 1
  store ptr %incdec.ptr592, ptr %cur.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %139, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end551, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end551 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_olut_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %15, i32 5
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
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 5) #5
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
  %add.ptr4.i = getelementptr i32, ptr %21, i32 5
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = mul i32 %13, 768
  %add7 = add i32 %mul, 1096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !89

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end94

if.end94:                                         ; preds = %do.end59, %do.body5.if.end94_crit_edge
  %23 = and i32 %add7, 3912
  %24 = or i32 %23, 524288
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp112.not = icmp ult ptr %26, %28
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !89

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !89

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head907d_olut_set) #5
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
  %56 = shl i32 %55, 21
  %shl210 = and i32 %56, 251658240
  %or211 = or i32 %shl210, -2147483648
  %57 = load ptr, ptr %cur.i, align 4
  %58 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %seg.i, align 8
  %cmp218.not = icmp ult ptr %57, %59
  br i1 %cmp218.not, label %if.end175.if.end243_crit_edge, label %do.end237, !prof !89

if.end175.if.end243_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end243

do.end237:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end243

if.end243:                                        ; preds = %do.end237, %if.end175.if.end243_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp257.not = icmp ult ptr %61, %63
  br i1 %cmp257.not, label %if.end243.if.end282_crit_edge, label %do.end276, !prof !89

if.end243.if.end282_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

do.end276:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub302, i32 noundef %or211) #5
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
  br i1 %cmp343.not, label %if.end282.if.end368_crit_edge, label %do.end362, !prof !89

if.end282.if.end368_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end368

do.end362:                                        ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end368

if.end368:                                        ; preds = %do.end362, %if.end282.if.end368_crit_edge
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i, align 4
  %cmp382.not = icmp ult ptr %90, %92
  br i1 %cmp382.not, label %if.end368.if.end407_crit_edge, label %do.end401, !prof !89

if.end368.if.end407_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end407

do.end401:                                        ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %102(ptr noundef %mem, ptr noundef nonnull @.str.24, ptr noundef %106, i32 noundef %108, ptr noundef %110, i32 noundef %sub.ptr.sub427, i32 noundef %conv338) #5
  %111 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur.i, align 4
  %incdec.ptr448 = getelementptr i32, ptr %112, i32 1
  store ptr %incdec.ptr448, ptr %cur.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv338, ptr %112, align 4
  %add458 = add i32 %mul, 1116
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add458)
  %tobool461.not = icmp ult i32 %add458, 4096
  br i1 %tobool461.not, label %if.end407.if.end516_crit_edge, label %do.end481, !prof !89

if.end407.if.end516_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end516

do.end481:                                        ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end516

if.end516:                                        ; preds = %do.end481, %if.end407.if.end516_crit_edge
  %114 = and i32 %add458, 3932
  %115 = or i32 %114, 262144
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %seg.i, align 8
  %cmp541.not = icmp ult ptr %117, %119
  br i1 %cmp541.not, label %if.end516.if.end566_crit_edge, label %do.end560, !prof !89

if.end516.if.end566_crit_edge:                    ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end566

do.end560:                                        ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end566

if.end566:                                        ; preds = %do.end560, %if.end516.if.end566_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i, align 4
  %cmp580.not = icmp ult ptr %121, %123
  br i1 %cmp580.not, label %if.end566.if.end605_crit_edge, label %do.end599, !prof !89

if.end566.if.end605_crit_edge:                    ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end605

do.end599:                                        ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end605

if.end605:                                        ; preds = %do.end599, %if.end566.if.end605_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast623 = ptrtoint ptr %125 to i32
  %sub.ptr.rhs.cast624 = ptrtoint ptr %127 to i32
  %sub.ptr.sub625 = sub i32 %sub.ptr.lhs.cast623, %sub.ptr.rhs.cast624
  %128 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mem, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %134 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %client, align 4
  %name637 = getelementptr inbounds %struct.nvif_object, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %name637 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name637, align 8
  %138 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %handle, align 4
  %140 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %133(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %137, i32 noundef %139, ptr noundef %141, i32 noundef %sub.ptr.sub625, i32 noundef %115, i32 noundef %add458, i32 noundef 1, ptr noundef nonnull @__func__.head907d_olut_set) #5
  %142 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cur.i, align 4
  %incdec.ptr648 = getelementptr i32, ptr %143, i32 1
  store ptr %incdec.ptr648, ptr %cur.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %115, ptr %143, align 4
  %handle657 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %handle657 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %handle657, align 4
  %147 = load ptr, ptr %cur.i, align 4
  %148 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %seg.i, align 8
  %cmp662.not = icmp ult ptr %147, %149
  br i1 %cmp662.not, label %if.end605.if.end687_crit_edge, label %do.end681, !prof !89

if.end605.if.end687_crit_edge:                    ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end687

do.end681:                                        ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end687

if.end687:                                        ; preds = %do.end681, %if.end605.if.end687_crit_edge
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %152 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %end.i, align 4
  %cmp701.not = icmp ult ptr %151, %153
  br i1 %cmp701.not, label %if.end687.if.end726_crit_edge, label %do.end720, !prof !89

if.end687.if.end726_crit_edge:                    ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end726

do.end720:                                        ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end726

if.end726:                                        ; preds = %do.end720, %if.end687.if.end726_crit_edge
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %156 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast744 = ptrtoint ptr %155 to i32
  %sub.ptr.rhs.cast745 = ptrtoint ptr %157 to i32
  %sub.ptr.sub746 = sub i32 %sub.ptr.lhs.cast744, %sub.ptr.rhs.cast745
  %158 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mem, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %164 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %client, align 4
  %name758 = getelementptr inbounds %struct.nvif_object, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %name758 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %name758, align 8
  %168 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %handle, align 4
  %170 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %163(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %167, i32 noundef %169, ptr noundef %171, i32 noundef %sub.ptr.sub746, i32 noundef %146) #5
  %172 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cur.i, align 4
  %incdec.ptr767 = getelementptr i32, ptr %173, i32 1
  store ptr %incdec.ptr767, ptr %cur.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %146, ptr %173, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end726, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end726 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @head907d_olut_load(ptr nocapture noundef readonly %in, i32 noundef %size, ptr noundef %mem) #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %in.addr.060 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in.addr.060, align 2
  %conv = zext i16 %1 to i32
  %add.i = add nuw nsw i32 %conv, 2
  %shr4.i = lshr i32 %add.i, 2
  %2 = tail call i32 @llvm.umin.i32(i32 %shr4.i, i32 16383) #5
  %3 = trunc i32 %2 to i16
  %conv1 = add nuw i16 %3, 24576
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.058, i16 %4) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %green = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.060, i32 0, i32 1
  %5 = ptrtoint ptr %green to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %green, align 2
  %conv4 = zext i16 %6 to i32
  %add.i53 = add nuw nsw i32 %conv4, 2
  %shr4.i54 = lshr i32 %add.i53, 2
  %7 = tail call i32 @llvm.umin.i32(i32 %shr4.i54, i32 16383) #5
  %8 = trunc i32 %7 to i16
  %conv7 = add nuw i16 %8, 24576
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %add.ptr8 = getelementptr i8, ptr %mem.addr.058, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %9) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %blue = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.060, i32 0, i32 2
  %10 = ptrtoint ptr %blue to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %blue, align 2
  %conv11 = zext i16 %11 to i32
  %add.i55 = add nuw nsw i32 %conv11, 2
  %shr4.i56 = lshr i32 %add.i55, 2
  %12 = tail call i32 @llvm.umin.i32(i32 %shr4.i56, i32 16383) #5
  %13 = trunc i32 %12 to i16
  %conv14 = add nuw i16 %13, 24576
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %add.ptr15 = getelementptr i8, ptr %mem.addr.058, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %14) #5, !srcloc !92
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %add.ptr19 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -8
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.0.lcssa, i16 %15) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %add.ptr27 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -6
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %add.ptr31 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31, i16 %16) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %add.ptr36 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -4
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr36) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %add.ptr40 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr40, i16 %17) #5, !srcloc !92
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @head907d_olut(ptr nocapture readnone %head, ptr nocapture noundef %asyh, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.return_crit_edge [
    i32 1024, label %entry.if.end9_crit_edge
    i32 256, label %if.else
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %entry.if.end9_crit_edge
  %.sink = phi i48 [ 56, %if.else ], [ 32, %entry.if.end9_crit_edge ]
  %mode5 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %mode5 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 6)
  %bf.load6 = load i48, ptr %mode5, align 8
  %bf.clear7 = and i48 %bf.load6, -121
  %bf.set8 = or i48 %bf.clear7, %.sink
  store i48 %bf.set8, ptr %mode5, align 8
  %load = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @head907d_olut_load, ptr %load, align 8
  br label %return

return:                                           ; preds = %if.end9, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end9 ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @head907d_ilut_check(i32 noundef %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp = icmp eq i32 %size, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %size)
  %cmp1 = icmp eq i32 %size, 1024
  %spec.select = or i1 %cmp, %cmp1
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_mode(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %mul = mul i32 %13, 768
  %add165 = add i32 %mul, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add165)
  %tobool207.not = icmp ult i32 %add165, 4096
  br i1 %tobool207.not, label %do.body5.if.end262_crit_edge, label %do.end227, !prof !89

do.body5.if.end262_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262

do.end227:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end262

if.end262:                                        ; preds = %do.end227, %do.body5.if.end262_crit_edge
  %23 = and i32 %add165, 3856
  %24 = or i32 %23, 1572864
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp280.not = icmp ult ptr %26, %28
  br i1 %cmp280.not, label %if.end262.if.end305_crit_edge, label %do.end299, !prof !89

if.end262.if.end305_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end305

do.end299:                                        ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end305

if.end305:                                        ; preds = %do.end299, %if.end262.if.end305_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp318.not = icmp ult ptr %30, %32
  br i1 %cmp318.not, label %if.end305.if.end343_crit_edge, label %do.end337, !prof !89

if.end305.if.end343_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end343

do.end337:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end343

if.end343:                                        ; preds = %do.end337, %if.end305.if.end343_crit_edge
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
  %name360 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add165, i32 noundef 6, ptr noundef nonnull @__func__.head907d_mode) #5
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
  %cmp380.not = icmp ult ptr %54, %56
  br i1 %cmp380.not, label %if.end343.if.end405_crit_edge, label %do.end399, !prof !89

if.end343.if.end405_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end405

do.end399:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end405

if.end405:                                        ; preds = %do.end399, %if.end343.if.end405_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp419.not = icmp ult ptr %58, %60
  br i1 %cmp419.not, label %if.end405.if.end444_crit_edge, label %do.end438, !prof !89

if.end405.if.end444_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end444

do.end438:                                        ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end444

if.end444:                                        ; preds = %do.end438, %if.end405.if.end444_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast462 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast463 = ptrtoint ptr %64 to i32
  %sub.ptr.sub464 = sub i32 %sub.ptr.lhs.cast462, %sub.ptr.rhs.cast463
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
  %name476 = getelementptr inbounds %struct.nvif_object, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %name476 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name476, align 8
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %handle, align 4
  %77 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.27, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub464, i32 noundef 0) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr485 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr485, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2
  %82 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %h, align 4
  %84 = and i16 %83, 32767
  %and494 = zext i16 %84 to i32
  %v = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3
  %85 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %v, align 4
  %87 = shl i32 %86, 16
  %88 = and i32 %87, 2147418112
  %or500 = or i32 %88, %and494
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %seg.i, align 8
  %cmp506.not = icmp ult ptr %89, %91
  br i1 %cmp506.not, label %if.end444.if.end531_crit_edge, label %do.end525, !prof !89

if.end444.if.end531_crit_edge:                    ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end531

do.end525:                                        ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end531

if.end531:                                        ; preds = %do.end525, %if.end444.if.end531_crit_edge
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %94 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %end.i, align 4
  %cmp545.not = icmp ult ptr %93, %95
  br i1 %cmp545.not, label %if.end531.if.end570_crit_edge, label %do.end564, !prof !89

if.end531.if.end570_crit_edge:                    ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end570

do.end564:                                        ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end570

if.end570:                                        ; preds = %do.end564, %if.end531.if.end570_crit_edge
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast588 = ptrtoint ptr %97 to i32
  %sub.ptr.rhs.cast589 = ptrtoint ptr %99 to i32
  %sub.ptr.sub590 = sub i32 %sub.ptr.lhs.cast588, %sub.ptr.rhs.cast589
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
  %name602 = getelementptr inbounds %struct.nvif_object, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %name602 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name602, align 8
  %110 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %handle, align 4
  %112 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %105(ptr noundef %mem, ptr noundef nonnull @.str.28, ptr noundef %109, i32 noundef %111, ptr noundef %113, i32 noundef %sub.ptr.sub590, i32 noundef %or500) #5
  %114 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cur.i, align 4
  %incdec.ptr611 = getelementptr i32, ptr %115, i32 1
  store ptr %incdec.ptr611, ptr %cur.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or500, ptr %115, align 4
  %synce = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 1
  %117 = ptrtoint ptr %synce to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %synce, align 2
  %119 = and i16 %118, 32767
  %and621 = zext i16 %119 to i32
  %synce624 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 1
  %120 = ptrtoint ptr %synce624 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %synce624, align 4
  %122 = and i16 %121, 32767
  %and626 = zext i16 %122 to i32
  %shl627 = shl nuw nsw i32 %and626, 16
  %or628 = or i32 %shl627, %and621
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %seg.i, align 8
  %cmp634.not = icmp ult ptr %123, %125
  br i1 %cmp634.not, label %if.end570.if.end659_crit_edge, label %do.end653, !prof !89

if.end570.if.end659_crit_edge:                    ; preds = %if.end570
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end659

do.end653:                                        ; preds = %if.end570
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end659

if.end659:                                        ; preds = %do.end653, %if.end570.if.end659_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i, align 4
  %cmp673.not = icmp ult ptr %127, %129
  br i1 %cmp673.not, label %if.end659.if.end698_crit_edge, label %do.end692, !prof !89

if.end659.if.end698_crit_edge:                    ; preds = %if.end659
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end698

do.end692:                                        ; preds = %if.end659
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end698

if.end698:                                        ; preds = %do.end692, %if.end659.if.end698_crit_edge
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast716 = ptrtoint ptr %131 to i32
  %sub.ptr.rhs.cast717 = ptrtoint ptr %133 to i32
  %sub.ptr.sub718 = sub i32 %sub.ptr.lhs.cast716, %sub.ptr.rhs.cast717
  %134 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mem, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %client, align 4
  %name730 = getelementptr inbounds %struct.nvif_object, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %name730 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name730, align 8
  %144 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %handle, align 4
  %146 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %139(ptr noundef %mem, ptr noundef nonnull @.str.29, ptr noundef %143, i32 noundef %145, ptr noundef %147, i32 noundef %sub.ptr.sub718, i32 noundef %or628) #5
  %148 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cur.i, align 4
  %incdec.ptr739 = getelementptr i32, ptr %149, i32 1
  store ptr %incdec.ptr739, ptr %cur.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or628, ptr %149, align 4
  %blanke = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 2
  %151 = ptrtoint ptr %blanke to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %blanke, align 4
  %153 = and i16 %152, 32767
  %and749 = zext i16 %153 to i32
  %blanke752 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 2
  %154 = ptrtoint ptr %blanke752 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %blanke752, align 2
  %156 = and i16 %155, 32767
  %and754 = zext i16 %156 to i32
  %shl755 = shl nuw nsw i32 %and754, 16
  %or756 = or i32 %shl755, %and749
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %seg.i, align 8
  %cmp762.not = icmp ult ptr %157, %159
  br i1 %cmp762.not, label %if.end698.if.end787_crit_edge, label %do.end781, !prof !89

if.end698.if.end787_crit_edge:                    ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end787

do.end781:                                        ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end787

if.end787:                                        ; preds = %do.end781, %if.end698.if.end787_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %end.i, align 4
  %cmp801.not = icmp ult ptr %161, %163
  br i1 %cmp801.not, label %if.end787.if.end826_crit_edge, label %do.end820, !prof !89

if.end787.if.end826_crit_edge:                    ; preds = %if.end787
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end826

do.end820:                                        ; preds = %if.end787
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end826

if.end826:                                        ; preds = %do.end820, %if.end787.if.end826_crit_edge
  %164 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cur.i, align 4
  %166 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast844 = ptrtoint ptr %165 to i32
  %sub.ptr.rhs.cast845 = ptrtoint ptr %167 to i32
  %sub.ptr.sub846 = sub i32 %sub.ptr.lhs.cast844, %sub.ptr.rhs.cast845
  %168 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mem, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %174 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %client, align 4
  %name858 = getelementptr inbounds %struct.nvif_object, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %name858 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name858, align 8
  %178 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %handle, align 4
  %180 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %173(ptr noundef %mem, ptr noundef nonnull @.str.30, ptr noundef %177, i32 noundef %179, ptr noundef %181, i32 noundef %sub.ptr.sub846, i32 noundef %or756) #5
  %182 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cur.i, align 4
  %incdec.ptr867 = getelementptr i32, ptr %183, i32 1
  store ptr %incdec.ptr867, ptr %cur.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or756, ptr %183, align 4
  %blanks = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 3
  %185 = ptrtoint ptr %blanks to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %blanks, align 2
  %187 = and i16 %186, 32767
  %and877 = zext i16 %187 to i32
  %blanks880 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 3
  %188 = ptrtoint ptr %blanks880 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %blanks880, align 4
  %190 = and i16 %189, 32767
  %and882 = zext i16 %190 to i32
  %shl883 = shl nuw nsw i32 %and882, 16
  %or884 = or i32 %shl883, %and877
  %191 = load ptr, ptr %cur.i, align 4
  %192 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %seg.i, align 8
  %cmp890.not = icmp ult ptr %191, %193
  br i1 %cmp890.not, label %if.end826.if.end915_crit_edge, label %do.end909, !prof !89

if.end826.if.end915_crit_edge:                    ; preds = %if.end826
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end915

do.end909:                                        ; preds = %if.end826
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end915

if.end915:                                        ; preds = %do.end909, %if.end826.if.end915_crit_edge
  %194 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cur.i, align 4
  %196 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %end.i, align 4
  %cmp929.not = icmp ult ptr %195, %197
  br i1 %cmp929.not, label %if.end915.if.end954_crit_edge, label %do.end948, !prof !89

if.end915.if.end954_crit_edge:                    ; preds = %if.end915
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end954

do.end948:                                        ; preds = %if.end915
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end954

if.end954:                                        ; preds = %do.end948, %if.end915.if.end954_crit_edge
  %198 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cur.i, align 4
  %200 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast972 = ptrtoint ptr %199 to i32
  %sub.ptr.rhs.cast973 = ptrtoint ptr %201 to i32
  %sub.ptr.sub974 = sub i32 %sub.ptr.lhs.cast972, %sub.ptr.rhs.cast973
  %202 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mem, align 8
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %208 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %client, align 4
  %name986 = getelementptr inbounds %struct.nvif_object, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %name986 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %name986, align 8
  %212 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %handle, align 4
  %214 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %207(ptr noundef %mem, ptr noundef nonnull @.str.31, ptr noundef %211, i32 noundef %213, ptr noundef %215, i32 noundef %sub.ptr.sub974, i32 noundef %or884) #5
  %216 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cur.i, align 4
  %incdec.ptr995 = getelementptr i32, ptr %217, i32 1
  store ptr %incdec.ptr995, ptr %cur.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %or884, ptr %217, align 4
  %blank2s = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 4
  %219 = ptrtoint ptr %blank2s to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %blank2s, align 2
  %221 = and i16 %220, 32767
  %and1005 = zext i16 %221 to i32
  %blank2e = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 5
  %222 = ptrtoint ptr %blank2e to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %blank2e, align 4
  %224 = and i16 %223, 32767
  %and1009 = zext i16 %224 to i32
  %shl1010 = shl nuw nsw i32 %and1009, 16
  %or1011 = or i32 %shl1010, %and1005
  %225 = load ptr, ptr %cur.i, align 4
  %226 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %seg.i, align 8
  %cmp1017.not = icmp ult ptr %225, %227
  br i1 %cmp1017.not, label %if.end954.if.end1042_crit_edge, label %do.end1036, !prof !89

if.end954.if.end1042_crit_edge:                   ; preds = %if.end954
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1042

do.end1036:                                       ; preds = %if.end954
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1042

if.end1042:                                       ; preds = %do.end1036, %if.end954.if.end1042_crit_edge
  %228 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cur.i, align 4
  %230 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %end.i, align 4
  %cmp1056.not = icmp ult ptr %229, %231
  br i1 %cmp1056.not, label %if.end1042.if.end1081_crit_edge, label %do.end1075, !prof !89

if.end1042.if.end1081_crit_edge:                  ; preds = %if.end1042
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1081

do.end1075:                                       ; preds = %if.end1042
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1081

if.end1081:                                       ; preds = %do.end1075, %if.end1042.if.end1081_crit_edge
  %232 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cur.i, align 4
  %234 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1099 = ptrtoint ptr %233 to i32
  %sub.ptr.rhs.cast1100 = ptrtoint ptr %235 to i32
  %sub.ptr.sub1101 = sub i32 %sub.ptr.lhs.cast1099, %sub.ptr.rhs.cast1100
  %236 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mem, align 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 4
  %242 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %client, align 4
  %name1113 = getelementptr inbounds %struct.nvif_object, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %name1113 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %name1113, align 8
  %246 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %handle, align 4
  %248 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %241(ptr noundef %mem, ptr noundef nonnull @.str.32, ptr noundef %245, i32 noundef %247, ptr noundef %249, i32 noundef %sub.ptr.sub1101, i32 noundef %or1011) #5
  %250 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1122 = getelementptr i32, ptr %251, i32 1
  store ptr %incdec.ptr1122, ptr %cur.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %or1011, ptr %251, align 4
  %add1132 = add i32 %mul, 1068
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1132)
  %tobool1135.not = icmp ult i32 %add1132, 4096
  br i1 %tobool1135.not, label %if.end1081.if.end1190_crit_edge, label %do.end1155, !prof !89

if.end1081.if.end1190_crit_edge:                  ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1190

do.end1155:                                       ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end1190

if.end1190:                                       ; preds = %do.end1155, %if.end1081.if.end1190_crit_edge
  %253 = and i32 %add1132, 3884
  %254 = or i32 %253, 262144
  %255 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cur.i, align 4
  %257 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %seg.i, align 8
  %cmp1215.not = icmp ult ptr %256, %258
  br i1 %cmp1215.not, label %if.end1190.if.end1240_crit_edge, label %do.end1234, !prof !89

if.end1190.if.end1240_crit_edge:                  ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1240

do.end1234:                                       ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1240

if.end1240:                                       ; preds = %do.end1234, %if.end1190.if.end1240_crit_edge
  %259 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %cur.i, align 4
  %261 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %end.i, align 4
  %cmp1254.not = icmp ult ptr %260, %262
  br i1 %cmp1254.not, label %if.end1240.if.end1279_crit_edge, label %do.end1273, !prof !89

if.end1240.if.end1279_crit_edge:                  ; preds = %if.end1240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1279

do.end1273:                                       ; preds = %if.end1240
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1279

if.end1279:                                       ; preds = %do.end1273, %if.end1240.if.end1279_crit_edge
  %263 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cur.i, align 4
  %265 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1297 = ptrtoint ptr %264 to i32
  %sub.ptr.rhs.cast1298 = ptrtoint ptr %266 to i32
  %sub.ptr.sub1299 = sub i32 %sub.ptr.lhs.cast1297, %sub.ptr.rhs.cast1298
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
  %name1311 = getelementptr inbounds %struct.nvif_object, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %name1311 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %name1311, align 8
  %277 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %handle, align 4
  %279 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %272(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %276, i32 noundef %278, ptr noundef %280, i32 noundef %sub.ptr.sub1299, i32 noundef %254, i32 noundef %add1132, i32 noundef 1, ptr noundef nonnull @__func__.head907d_mode) #5
  %281 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1322 = getelementptr i32, ptr %282, i32 1
  store ptr %incdec.ptr1322, ptr %cur.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %254, ptr %282, align 4
  %284 = load ptr, ptr %cur.i, align 4
  %285 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %seg.i, align 8
  %cmp1334.not = icmp ult ptr %284, %286
  br i1 %cmp1334.not, label %if.end1279.if.end1359_crit_edge, label %do.end1353, !prof !89

if.end1279.if.end1359_crit_edge:                  ; preds = %if.end1279
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1359

do.end1353:                                       ; preds = %if.end1279
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1359

if.end1359:                                       ; preds = %do.end1353, %if.end1279.if.end1359_crit_edge
  %287 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i, align 4
  %cmp1373.not = icmp ult ptr %288, %290
  br i1 %cmp1373.not, label %if.end1359.if.end1398_crit_edge, label %do.end1392, !prof !89

if.end1359.if.end1398_crit_edge:                  ; preds = %if.end1359
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1398

do.end1392:                                       ; preds = %if.end1359
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1398

if.end1398:                                       ; preds = %do.end1392, %if.end1359.if.end1398_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %293 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1416 = ptrtoint ptr %292 to i32
  %sub.ptr.rhs.cast1417 = ptrtoint ptr %294 to i32
  %sub.ptr.sub1418 = sub i32 %sub.ptr.lhs.cast1416, %sub.ptr.rhs.cast1417
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
  %name1430 = getelementptr inbounds %struct.nvif_object, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %name1430 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %name1430, align 8
  %305 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %handle, align 4
  %307 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %300(ptr noundef %mem, ptr noundef nonnull @.str.33, ptr noundef %304, i32 noundef %306, ptr noundef %308, i32 noundef %sub.ptr.sub1418, i32 noundef 0) #5
  %309 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1439 = getelementptr i32, ptr %310, i32 1
  store ptr %incdec.ptr1439, ptr %cur.i, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %310, align 4
  %add1493 = add i32 %mul, 1104
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1493)
  %tobool1538.not = icmp ult i32 %add1493, 4096
  br i1 %tobool1538.not, label %if.end1398.if.end1593_crit_edge, label %do.end1558, !prof !89

if.end1398.if.end1593_crit_edge:                  ; preds = %if.end1398
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1593

do.end1558:                                       ; preds = %if.end1398
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end1593

if.end1593:                                       ; preds = %do.end1558, %if.end1398.if.end1593_crit_edge
  %312 = and i32 %add1493, 3920
  %313 = or i32 %312, 786432
  %314 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %cur.i, align 4
  %316 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %seg.i, align 8
  %cmp1618.not = icmp ult ptr %315, %317
  br i1 %cmp1618.not, label %if.end1593.if.end1643_crit_edge, label %do.end1637, !prof !89

if.end1593.if.end1643_crit_edge:                  ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1643

do.end1637:                                       ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1643

if.end1643:                                       ; preds = %do.end1637, %if.end1593.if.end1643_crit_edge
  %318 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %cur.i, align 4
  %320 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %end.i, align 4
  %cmp1657.not = icmp ult ptr %319, %321
  br i1 %cmp1657.not, label %if.end1643.if.end1682_crit_edge, label %do.end1676, !prof !89

if.end1643.if.end1682_crit_edge:                  ; preds = %if.end1643
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1682

do.end1676:                                       ; preds = %if.end1643
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1682

if.end1682:                                       ; preds = %do.end1676, %if.end1643.if.end1682_crit_edge
  %322 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %cur.i, align 4
  %324 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1700 = ptrtoint ptr %323 to i32
  %sub.ptr.rhs.cast1701 = ptrtoint ptr %325 to i32
  %sub.ptr.sub1702 = sub i32 %sub.ptr.lhs.cast1700, %sub.ptr.rhs.cast1701
  %326 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %mem, align 8
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %327, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %332 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %client, align 4
  %name1714 = getelementptr inbounds %struct.nvif_object, ptr %333, i32 0, i32 2
  %334 = ptrtoint ptr %name1714 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %name1714, align 8
  %336 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %handle, align 4
  %338 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %331(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %335, i32 noundef %337, ptr noundef %339, i32 noundef %sub.ptr.sub1702, i32 noundef %313, i32 noundef %add1493, i32 noundef 3, ptr noundef nonnull @__func__.head907d_mode) #5
  %340 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1725 = getelementptr i32, ptr %341, i32 1
  store ptr %incdec.ptr1725, ptr %cur.i, align 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %313, ptr %341, align 4
  %clock = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 1
  %343 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %clock, align 4
  %mul1733 = mul i32 %344, 1000
  %345 = and i32 %mul1733, 2147483640
  %346 = load ptr, ptr %cur.i, align 4
  %347 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %seg.i, align 8
  %cmp1743.not = icmp ult ptr %346, %348
  br i1 %cmp1743.not, label %if.end1682.if.end1768_crit_edge, label %do.end1762, !prof !89

if.end1682.if.end1768_crit_edge:                  ; preds = %if.end1682
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1768

do.end1762:                                       ; preds = %if.end1682
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1768

if.end1768:                                       ; preds = %do.end1762, %if.end1682.if.end1768_crit_edge
  %349 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %cur.i, align 4
  %351 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %end.i, align 4
  %cmp1782.not = icmp ult ptr %350, %352
  br i1 %cmp1782.not, label %if.end1768.if.end1807_crit_edge, label %do.end1801, !prof !89

if.end1768.if.end1807_crit_edge:                  ; preds = %if.end1768
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1807

do.end1801:                                       ; preds = %if.end1768
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1807

if.end1807:                                       ; preds = %do.end1801, %if.end1768.if.end1807_crit_edge
  %353 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1825 = ptrtoint ptr %354 to i32
  %sub.ptr.rhs.cast1826 = ptrtoint ptr %356 to i32
  %sub.ptr.sub1827 = sub i32 %sub.ptr.lhs.cast1825, %sub.ptr.rhs.cast1826
  %357 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %mem, align 8
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %358, align 4
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %360, align 4
  %363 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %client, align 4
  %name1839 = getelementptr inbounds %struct.nvif_object, ptr %364, i32 0, i32 2
  %365 = ptrtoint ptr %name1839 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %name1839, align 8
  %367 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %handle, align 4
  %369 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %362(ptr noundef %mem, ptr noundef nonnull @.str.34, ptr noundef %366, i32 noundef %368, ptr noundef %370, i32 noundef %sub.ptr.sub1827, i32 noundef %345) #5
  %371 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1848 = getelementptr i32, ptr %372, i32 1
  store ptr %incdec.ptr1848, ptr %cur.i, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %345, ptr %372, align 4
  %374 = load ptr, ptr %cur.i, align 4
  %375 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %seg.i, align 8
  %cmp1860.not = icmp ult ptr %374, %376
  br i1 %cmp1860.not, label %if.end1807.if.end1885_crit_edge, label %do.end1879, !prof !89

if.end1807.if.end1885_crit_edge:                  ; preds = %if.end1807
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1885

do.end1879:                                       ; preds = %if.end1807
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1885

if.end1885:                                       ; preds = %do.end1879, %if.end1807.if.end1885_crit_edge
  %377 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %cur.i, align 4
  %379 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %end.i, align 4
  %cmp1899.not = icmp ult ptr %378, %380
  br i1 %cmp1899.not, label %if.end1885.if.end1924_crit_edge, label %do.end1918, !prof !89

if.end1885.if.end1924_crit_edge:                  ; preds = %if.end1885
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1924

do.end1918:                                       ; preds = %if.end1885
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1924

if.end1924:                                       ; preds = %do.end1918, %if.end1885.if.end1924_crit_edge
  %381 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %cur.i, align 4
  %383 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1942 = ptrtoint ptr %382 to i32
  %sub.ptr.rhs.cast1943 = ptrtoint ptr %384 to i32
  %sub.ptr.sub1944 = sub i32 %sub.ptr.lhs.cast1942, %sub.ptr.rhs.cast1943
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
  %name1956 = getelementptr inbounds %struct.nvif_object, ptr %392, i32 0, i32 2
  %393 = ptrtoint ptr %name1956 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %name1956, align 8
  %395 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %handle, align 4
  %397 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %390(ptr noundef %mem, ptr noundef nonnull @.str.35, ptr noundef %394, i32 noundef %396, ptr noundef %398, i32 noundef %sub.ptr.sub1944, i32 noundef 2097152) #5
  %399 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1965 = getelementptr i32, ptr %400, i32 1
  store ptr %incdec.ptr1965, ptr %cur.i, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 2097152, ptr %400, align 4
  %402 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %clock, align 4
  %mul1974 = mul i32 %403, 1000
  %404 = and i32 %mul1974, 2147483640
  %405 = load ptr, ptr %cur.i, align 4
  %406 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %seg.i, align 8
  %cmp1984.not = icmp ult ptr %405, %407
  br i1 %cmp1984.not, label %if.end1924.if.end2009_crit_edge, label %do.end2003, !prof !89

if.end1924.if.end2009_crit_edge:                  ; preds = %if.end1924
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2009

do.end2003:                                       ; preds = %if.end1924
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end2009

if.end2009:                                       ; preds = %do.end2003, %if.end1924.if.end2009_crit_edge
  %408 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %cur.i, align 4
  %410 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %end.i, align 4
  %cmp2023.not = icmp ult ptr %409, %411
  br i1 %cmp2023.not, label %if.end2009.if.end2048_crit_edge, label %do.end2042, !prof !89

if.end2009.if.end2048_crit_edge:                  ; preds = %if.end2009
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2048

do.end2042:                                       ; preds = %if.end2009
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end2048

if.end2048:                                       ; preds = %do.end2042, %if.end2009.if.end2048_crit_edge
  %412 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %cur.i, align 4
  %414 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2066 = ptrtoint ptr %413 to i32
  %sub.ptr.rhs.cast2067 = ptrtoint ptr %415 to i32
  %sub.ptr.sub2068 = sub i32 %sub.ptr.lhs.cast2066, %sub.ptr.rhs.cast2067
  %416 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %mem, align 8
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %417, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 4
  %422 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %client, align 4
  %name2080 = getelementptr inbounds %struct.nvif_object, ptr %423, i32 0, i32 2
  %424 = ptrtoint ptr %name2080 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %name2080, align 8
  %426 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %handle, align 4
  %428 = ptrtoint ptr %name360 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %name360, align 8
  tail call void (ptr, ptr, ...) %421(ptr noundef %mem, ptr noundef nonnull @.str.36, ptr noundef %425, i32 noundef %427, ptr noundef %429, i32 noundef %sub.ptr.sub2068, i32 noundef %404) #5
  %430 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2089 = getelementptr i32, ptr %431, i32 1
  store ptr %incdec.ptr2089, ptr %cur.i, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %404, ptr %431, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2048, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2048 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head907d_view(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %15, i32 8
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
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 8) #5
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
  %add.ptr4.i = getelementptr i32, ptr %21, i32 8
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1172
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !89

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 392, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3988
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !89

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 392, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !89

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 392, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_view) #5
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !89

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 392, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !89

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 392, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.37, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  %add285 = add i32 %mul, 1208
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add285)
  %tobool288.not = icmp ult i32 %add285, 4096
  br i1 %tobool288.not, label %if.end234.if.end343_crit_edge, label %do.end308, !prof !89

if.end234.if.end343_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end343

do.end308:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end343

if.end343:                                        ; preds = %do.end308, %if.end234.if.end343_crit_edge
  %82 = and i32 %add285, 4024
  %83 = or i32 %82, 262144
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp368.not = icmp ult ptr %85, %87
  br i1 %cmp368.not, label %if.end343.if.end393_crit_edge, label %do.end387, !prof !89

if.end343.if.end393_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end393

do.end387:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end343.if.end393_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp407.not = icmp ult ptr %89, %91
  br i1 %cmp407.not, label %if.end393.if.end432_crit_edge, label %do.end426, !prof !89

if.end393.if.end432_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end432

do.end426:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %101(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %sub.ptr.sub452, i32 noundef %83, i32 noundef %add285, i32 noundef 1, ptr noundef nonnull @__func__.head907d_view) #5
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
  br i1 %cmp496.not, label %if.end432.if.end521_crit_edge, label %do.end515, !prof !89

if.end432.if.end521_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end521

do.end515:                                        ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end521

if.end521:                                        ; preds = %do.end515, %if.end432.if.end521_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %cmp535.not = icmp ult ptr %123, %125
  br i1 %cmp535.not, label %if.end521.if.end560_crit_edge, label %do.end554, !prof !89

if.end521.if.end560_crit_edge:                    ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end560

do.end554:                                        ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %135(ptr noundef %mem, ptr noundef nonnull @.str.38, ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %sub.ptr.sub580, i32 noundef %or490) #5
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %incdec.ptr601 = getelementptr i32, ptr %145, i32 1
  store ptr %incdec.ptr601, ptr %cur.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or490, ptr %145, align 4
  %add654 = add i32 %mul, 1216
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add654)
  %tobool699.not = icmp ult i32 %add654, 4096
  br i1 %tobool699.not, label %if.end560.if.end754_crit_edge, label %do.end719, !prof !89

if.end560.if.end754_crit_edge:                    ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end754

do.end719:                                        ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end754

if.end754:                                        ; preds = %do.end719, %if.end560.if.end754_crit_edge
  %147 = and i32 %add654, 4032
  %148 = or i32 %147, 786432
  %149 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cur.i, align 4
  %151 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %seg.i, align 8
  %cmp779.not = icmp ult ptr %150, %152
  br i1 %cmp779.not, label %if.end754.if.end804_crit_edge, label %do.end798, !prof !89

if.end754.if.end804_crit_edge:                    ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end804

do.end798:                                        ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end804

if.end804:                                        ; preds = %do.end798, %if.end754.if.end804_crit_edge
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %155 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %end.i, align 4
  %cmp818.not = icmp ult ptr %154, %156
  br i1 %cmp818.not, label %if.end804.if.end843_crit_edge, label %do.end837, !prof !89

if.end804.if.end843_crit_edge:                    ; preds = %if.end804
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end843

do.end837:                                        ; preds = %if.end804
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end843

if.end843:                                        ; preds = %do.end837, %if.end804.if.end843_crit_edge
  %157 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast861 = ptrtoint ptr %158 to i32
  %sub.ptr.rhs.cast862 = ptrtoint ptr %160 to i32
  %sub.ptr.sub863 = sub i32 %sub.ptr.lhs.cast861, %sub.ptr.rhs.cast862
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
  %name875 = getelementptr inbounds %struct.nvif_object, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %name875 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %name875, align 8
  %171 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %handle, align 4
  %173 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %166(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %170, i32 noundef %172, ptr noundef %174, i32 noundef %sub.ptr.sub863, i32 noundef %148, i32 noundef %add654, i32 noundef 3, ptr noundef nonnull @__func__.head907d_view) #5
  %175 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cur.i, align 4
  %incdec.ptr886 = getelementptr i32, ptr %176, i32 1
  store ptr %incdec.ptr886, ptr %cur.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %148, ptr %176, align 4
  %oW = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 2
  %178 = ptrtoint ptr %oW to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %oW, align 4
  %180 = and i16 %179, 32767
  %and896 = zext i16 %180 to i32
  %oH = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 3
  %181 = ptrtoint ptr %oH to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %oH, align 2
  %183 = and i16 %182, 32767
  %and900 = zext i16 %183 to i32
  %shl901 = shl nuw nsw i32 %and900, 16
  %or902 = or i32 %shl901, %and896
  %184 = load ptr, ptr %cur.i, align 4
  %185 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %seg.i, align 8
  %cmp908.not = icmp ult ptr %184, %186
  br i1 %cmp908.not, label %if.end843.if.end933_crit_edge, label %do.end927, !prof !89

if.end843.if.end933_crit_edge:                    ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end933

do.end927:                                        ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end933

if.end933:                                        ; preds = %do.end927, %if.end843.if.end933_crit_edge
  %187 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cur.i, align 4
  %189 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %end.i, align 4
  %cmp947.not = icmp ult ptr %188, %190
  br i1 %cmp947.not, label %if.end933.if.end972_crit_edge, label %do.end966, !prof !89

if.end933.if.end972_crit_edge:                    ; preds = %if.end933
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end972

do.end966:                                        ; preds = %if.end933
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end972

if.end972:                                        ; preds = %do.end966, %if.end933.if.end972_crit_edge
  %191 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast990 = ptrtoint ptr %192 to i32
  %sub.ptr.rhs.cast991 = ptrtoint ptr %194 to i32
  %sub.ptr.sub992 = sub i32 %sub.ptr.lhs.cast990, %sub.ptr.rhs.cast991
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
  %name1004 = getelementptr inbounds %struct.nvif_object, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %name1004 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %name1004, align 8
  %205 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %handle, align 4
  %207 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %200(ptr noundef %mem, ptr noundef nonnull @.str.39, ptr noundef %204, i32 noundef %206, ptr noundef %208, i32 noundef %sub.ptr.sub992, i32 noundef %or902) #5
  %209 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1013 = getelementptr i32, ptr %210, i32 1
  store ptr %incdec.ptr1013, ptr %cur.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %or902, ptr %210, align 4
  %212 = ptrtoint ptr %oW to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %oW, align 4
  %214 = and i16 %213, 32767
  %and1024 = zext i16 %214 to i32
  %215 = ptrtoint ptr %oH to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %oH, align 2
  %217 = and i16 %216, 32767
  %and1029 = zext i16 %217 to i32
  %shl1030 = shl nuw nsw i32 %and1029, 16
  %or1031 = or i32 %shl1030, %and1024
  %218 = load ptr, ptr %cur.i, align 4
  %219 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %seg.i, align 8
  %cmp1037.not = icmp ult ptr %218, %220
  br i1 %cmp1037.not, label %if.end972.if.end1062_crit_edge, label %do.end1056, !prof !89

if.end972.if.end1062_crit_edge:                   ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1062

do.end1056:                                       ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1062

if.end1062:                                       ; preds = %do.end1056, %if.end972.if.end1062_crit_edge
  %221 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cur.i, align 4
  %223 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %end.i, align 4
  %cmp1076.not = icmp ult ptr %222, %224
  br i1 %cmp1076.not, label %if.end1062.if.end1101_crit_edge, label %do.end1095, !prof !89

if.end1062.if.end1101_crit_edge:                  ; preds = %if.end1062
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1101

do.end1095:                                       ; preds = %if.end1062
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1101

if.end1101:                                       ; preds = %do.end1095, %if.end1062.if.end1101_crit_edge
  %225 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cur.i, align 4
  %227 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1119 = ptrtoint ptr %226 to i32
  %sub.ptr.rhs.cast1120 = ptrtoint ptr %228 to i32
  %sub.ptr.sub1121 = sub i32 %sub.ptr.lhs.cast1119, %sub.ptr.rhs.cast1120
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
  %name1133 = getelementptr inbounds %struct.nvif_object, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %name1133 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %name1133, align 8
  %239 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %handle, align 4
  %241 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %234(ptr noundef %mem, ptr noundef nonnull @.str.40, ptr noundef %238, i32 noundef %240, ptr noundef %242, i32 noundef %sub.ptr.sub1121, i32 noundef %or1031) #5
  %243 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1142 = getelementptr i32, ptr %244, i32 1
  store ptr %incdec.ptr1142, ptr %cur.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %or1031, ptr %244, align 4
  %246 = ptrtoint ptr %oW to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %oW, align 4
  %248 = and i16 %247, 32767
  %and1153 = zext i16 %248 to i32
  %249 = ptrtoint ptr %oH to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %oH, align 2
  %251 = and i16 %250, 32767
  %and1158 = zext i16 %251 to i32
  %shl1159 = shl nuw nsw i32 %and1158, 16
  %or1160 = or i32 %shl1159, %and1153
  %252 = load ptr, ptr %cur.i, align 4
  %253 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %seg.i, align 8
  %cmp1166.not = icmp ult ptr %252, %254
  br i1 %cmp1166.not, label %if.end1101.if.end1191_crit_edge, label %do.end1185, !prof !89

if.end1101.if.end1191_crit_edge:                  ; preds = %if.end1101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1191

do.end1185:                                       ; preds = %if.end1101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1191

if.end1191:                                       ; preds = %do.end1185, %if.end1101.if.end1191_crit_edge
  %255 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cur.i, align 4
  %257 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %end.i, align 4
  %cmp1205.not = icmp ult ptr %256, %258
  br i1 %cmp1205.not, label %if.end1191.if.end1230_crit_edge, label %do.end1224, !prof !89

if.end1191.if.end1230_crit_edge:                  ; preds = %if.end1191
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1230

do.end1224:                                       ; preds = %if.end1191
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1230

if.end1230:                                       ; preds = %do.end1224, %if.end1191.if.end1230_crit_edge
  %259 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %cur.i, align 4
  %261 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1248 = ptrtoint ptr %260 to i32
  %sub.ptr.rhs.cast1249 = ptrtoint ptr %262 to i32
  %sub.ptr.sub1250 = sub i32 %sub.ptr.lhs.cast1248, %sub.ptr.rhs.cast1249
  %263 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mem, align 8
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %269 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %client, align 4
  %name1262 = getelementptr inbounds %struct.nvif_object, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %name1262 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %name1262, align 8
  %273 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %handle, align 4
  %275 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %268(ptr noundef %mem, ptr noundef nonnull @.str.41, ptr noundef %272, i32 noundef %274, ptr noundef %276, i32 noundef %sub.ptr.sub1250, i32 noundef %or1160) #5
  %277 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1271 = getelementptr i32, ptr %278, i32 1
  store ptr %incdec.ptr1271, ptr %cur.i, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %or1160, ptr %278, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1230, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1230 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @head507d_core_calc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_layout(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head907d_base(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.44)
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #5
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
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1232
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool50.not = icmp ult i32 %add, 4096
  br i1 %tobool50.not, label %do.body47.if.end105_crit_edge, label %do.end70, !prof !89

do.body47.if.end105_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.end70:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end105

if.end105:                                        ; preds = %do.end70, %do.body47.if.end105_crit_edge
  %26 = and i32 %add, 4048
  %27 = or i32 %26, 262144
  %28 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur.i, align 4
  %30 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %29, %31
  br i1 %cmp.not, label %if.end105.if.end148_crit_edge, label %do.end142, !prof !89

if.end105.if.end148_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

do.end142:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end148

if.end148:                                        ; preds = %do.end142, %if.end105.if.end148_crit_edge
  %32 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur.i, align 4
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i, align 4
  %cmp161.not = icmp ult ptr %33, %35
  br i1 %cmp161.not, label %if.end148.if.end186_crit_edge, label %do.end180, !prof !89

if.end148.if.end186_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end186

do.end180:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %45(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %49, i32 noundef %51, ptr noundef %53, i32 noundef %sub.ptr.sub, i32 noundef %27, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_base) #5
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
  br i1 %cmp223.not, label %if.end186.if.end248_crit_edge, label %do.end242, !prof !89

if.end186.if.end248_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

do.end242:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end248

if.end248:                                        ; preds = %do.end242, %if.end186.if.end248_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp262.not = icmp ult ptr %61, %63
  br i1 %cmp262.not, label %if.end248.if.end287_crit_edge, label %do.end281, !prof !89

if.end248.if.end287_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end287

do.end281:                                        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.42, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub307, i32 noundef %bounds.1) #5
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
define internal i32 @head907d_dither(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
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
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1168
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !89

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3984
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !89

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !89

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head907d_dither) #5
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
  br i1 %cmp190.not, label %if.end133.if.end215_crit_edge, label %do.end209, !prof !89

if.end133.if.end215_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.end209:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end215

if.end215:                                        ; preds = %do.end209, %if.end133.if.end215_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp229.not = icmp ult ptr %63, %65
  br i1 %cmp229.not, label %if.end215.if.end254_crit_edge, label %do.end248, !prof !89

if.end215.if.end254_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end254

do.end248:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %75(ptr noundef %mem, ptr noundef nonnull @.str.43, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %sub.ptr.sub274, i32 noundef %conv185) #5
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !41, !42, !44, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !68, !70, !71, !72, !74, !76, !77, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 46, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.head907d_or, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.head907d_procamp, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 67, i32 2}
!13 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.head907d_ovly, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 120, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.head907d_curs_clr, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 162, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 167, i32 2}
!22 = !{ptr @__func__.head907d_curs_set, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 181, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__func__.head907d_core_clr, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 205, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__func__.head907d_core_set, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 219, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 222, i32 2}
!33 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 240, i32 2}
!39 = !{ptr @__func__.head907d_olut_clr, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 256, i32 2}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 259, i32 2}
!44 = !{ptr @__func__.head907d_olut_set, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 273, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 333, i32 2}
!49 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__func__.head907d_mode, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 358, i32 2}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 363, i32 2}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__func__.head907d_view, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 388, i32 2}
!65 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 394, i32 2}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 398, i32 2}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @head907d, !73, !"head907d", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 413, i32 1}
!74 = !{ptr @__func__.head907d_base, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 148, i32 2}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__func__.head907d_dither, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head907d.c", i32 87, i32 2}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i8 0, i8 2}
!91 = !{i64 2158358923}
!92 = !{i64 4955040}
!93 = !{i64 2158359460}
!94 = !{i64 2158359997}
!95 = !{i64 2158361172}
!96 = !{i64 4955240}
!97 = !{i64 2158362027}
!98 = !{i64 2158362923}
!99 = !{i64 2158363778}
!100 = !{i64 2158364674}
!101 = !{i64 2158365529}
