; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/headc37d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/headc37d.c"
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

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/headc37d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.headc37d_dither = private unnamed_addr constant [16 x i8] c"headc37d_dither\00", align 1
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_DITHER_CONTROL(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.headc37d_curs_clr = private unnamed_addr constant [18 x i8] c"headc37d_curs_clr\00", align 1
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CONTROL_CURSOR(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CONTEXT_DMA_CURSOR(i, 0)\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.headc37d_curs_set = private unnamed_addr constant [18 x i8] c"headc37d_curs_set\00", align 1
@.str.10 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CONTROL_CURSOR_COMPOSITION(i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_OFFSET_CURSOR(i, 0)\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.headc37d_view = private unnamed_addr constant [14 x i8] c"headc37d_view\00", align 1
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_VIEWPORT_SIZE_IN(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_VIEWPORT_SIZE_OUT(i)\0A\00", [32 x i8] zeroinitializer }, align 32
@headc37d = dso_local constant { %struct.nv50_head_func, [44 x i8] } { %struct.nv50_head_func { ptr @headc37d_view, ptr @headc37d_mode, ptr @headc37d_olut, ptr @head907d_ilut_check, i8 0, i32 1024, ptr @headc37d_olut_set, ptr @headc37d_olut_clr, ptr null, ptr null, ptr null, ptr @head917d_curs_layout, ptr @headc37d_curs_format, ptr @headc37d_curs_set, ptr @headc37d_curs_clr, ptr null, ptr null, ptr @headc37d_dither, ptr @headc37d_procamp, ptr @headc37d_or, ptr @headc37d_static_wndw_map }, [44 x i8] zeroinitializer }, align 32
@__func__.headc37d_mode = private unnamed_addr constant [14 x i8] c"headc37d_mode\00", align 1
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_RASTER_SIZE(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_RASTER_SYNC_END(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_RASTER_BLANK_END(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_RASTER_BLANK_START(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x2074 + (i * 0x400)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x2008 + (i * 0x400)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_PIXEL_CLOCK_FREQUENCY(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_PIXEL_CLOCK_FREQUENCY_MAX(i)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_HEAD_USAGE_BOUNDS(i)\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.headc37d_olut_set = private unnamed_addr constant [18 x i8] c"headc37d_olut_set\00", align 1
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CONTROL_OUTPUT_LUT(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_OFFSET_OUTPUT_LUT(i)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CONTEXT_DMA_OUTPUT_LUT(i)\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.headc37d_olut_clr = private unnamed_addr constant [18 x i8] c"headc37d_olut_clr\00", align 1
@__func__.headc37d_procamp = private unnamed_addr constant [17 x i8] c"headc37d_procamp\00", align 1
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_PROCAMP(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.headc37d_or = private unnamed_addr constant [12 x i8] c"headc37d_or\00", align 1
@.str.29 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CONTROL_OUTPUT_RESOURCE(i)\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.headc37d_or = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"@P\10PP@P", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 1024]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 95, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 114, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 118, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 132, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 149, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 264, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 268, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"headc37d\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 284, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 220, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 237, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 238, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 240, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 243, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 247, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 185, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 74, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 55, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [25 x i8] c"switch.table.headc37d_or\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @headc37d, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.headc37d_or], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headc37d to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.headc37d_or to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @headc37d_dither(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
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
  %add = add i32 %mul, 8216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool7.not = icmp ult i32 %add, 16384
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !67

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 15384
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !67

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !67

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_dither) #4
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
  %55 = lshr i8 %bf.load, 1
  %56 = and i8 %55, 48
  %or175342 = or i8 %56, %bf.load.lobit
  %or175 = zext i8 %or175342 to i32
  %57 = and i8 %55, 7
  %and182 = zext i8 %57 to i32
  %shl183 = shl nuw nsw i32 %and182, 8
  %or184 = or i32 %shl183, %or175
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %seg.i, align 8
  %cmp191.not = icmp ult ptr %58, %60
  br i1 %cmp191.not, label %if.end133.if.end216_crit_edge, label %do.end210, !prof !67

if.end133.if.end216_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end216

do.end210:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end216

if.end216:                                        ; preds = %do.end210, %if.end133.if.end216_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %cmp230.not = icmp ult ptr %62, %64
  br i1 %cmp230.not, label %if.end216.if.end255_crit_edge, label %do.end249, !prof !67

if.end216.if.end255_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end255

do.end249:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end255

if.end255:                                        ; preds = %do.end249, %if.end216.if.end255_crit_edge
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast273 = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast274 = ptrtoint ptr %68 to i32
  %sub.ptr.sub275 = sub i32 %sub.ptr.lhs.cast273, %sub.ptr.rhs.cast274
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
  %name287 = getelementptr inbounds %struct.nvif_object, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %name287 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name287, align 8
  %79 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %handle, align 4
  %81 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %74(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %78, i32 noundef %80, ptr noundef %82, i32 noundef %sub.ptr.sub275, i32 noundef %or184) #4
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur.i, align 4
  %incdec.ptr296 = getelementptr i32, ptr %84, i32 1
  store ptr %incdec.ptr296, ptr %cur.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or184, ptr %84, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end255, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end255 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @headc37d_curs_clr(ptr nocapture noundef readonly %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
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
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 8348
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool7.not = icmp ult i32 %add, 16384
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !67

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 15516
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !67

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !67

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_curs_clr) #4
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !67

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !67

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 207) #4
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 207, ptr %80, align 4
  %add285 = add i32 %mul, 8328
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add285)
  %tobool289.not = icmp ult i32 %add285, 16384
  br i1 %tobool289.not, label %if.end234.if.end344_crit_edge, label %do.end309, !prof !67

if.end234.if.end344_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end344

do.end309:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end344

if.end344:                                        ; preds = %do.end309, %if.end234.if.end344_crit_edge
  %82 = and i32 %add285, 15496
  %83 = or i32 %82, 262144
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp370.not = icmp ult ptr %85, %87
  br i1 %cmp370.not, label %if.end344.if.end395_crit_edge, label %do.end389, !prof !67

if.end344.if.end395_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end395

do.end389:                                        ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end395

if.end395:                                        ; preds = %do.end389, %if.end344.if.end395_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp409.not = icmp ult ptr %89, %91
  br i1 %cmp409.not, label %if.end395.if.end434_crit_edge, label %do.end428, !prof !67

if.end395.if.end434_crit_edge:                    ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end434

do.end428:                                        ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end434

if.end434:                                        ; preds = %do.end428, %if.end395.if.end434_crit_edge
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %94 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast452 = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast453 = ptrtoint ptr %95 to i32
  %sub.ptr.sub454 = sub i32 %sub.ptr.lhs.cast452, %sub.ptr.rhs.cast453
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
  %name466 = getelementptr inbounds %struct.nvif_object, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %name466 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name466, align 8
  %106 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %handle, align 4
  %108 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %101(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %sub.ptr.sub454, i32 noundef %83, i32 noundef %add285, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_curs_clr) #4
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur.i, align 4
  %incdec.ptr478 = getelementptr i32, ptr %111, i32 1
  store ptr %incdec.ptr478, ptr %cur.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %83, ptr %111, align 4
  %113 = load ptr, ptr %cur.i, align 4
  %114 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %seg.i, align 8
  %cmp490.not = icmp ult ptr %113, %115
  br i1 %cmp490.not, label %if.end434.if.end515_crit_edge, label %do.end509, !prof !67

if.end434.if.end515_crit_edge:                    ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end515

do.end509:                                        ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end515

if.end515:                                        ; preds = %do.end509, %if.end434.if.end515_crit_edge
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i, align 4
  %cmp529.not = icmp ult ptr %117, %119
  br i1 %cmp529.not, label %if.end515.if.end554_crit_edge, label %do.end548, !prof !67

if.end515.if.end554_crit_edge:                    ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end554

do.end548:                                        ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end554

if.end554:                                        ; preds = %do.end548, %if.end515.if.end554_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast572 = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast573 = ptrtoint ptr %123 to i32
  %sub.ptr.sub574 = sub i32 %sub.ptr.lhs.cast572, %sub.ptr.rhs.cast573
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
  %name586 = getelementptr inbounds %struct.nvif_object, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %name586 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name586, align 8
  %134 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %handle, align 4
  %136 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %129(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %133, i32 noundef %135, ptr noundef %137, i32 noundef %sub.ptr.sub574, i32 noundef 0) #4
  %138 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cur.i, align 4
  %incdec.ptr595 = getelementptr i32, ptr %139, i32 1
  store ptr %incdec.ptr595, ptr %cur.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %139, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end554, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end554 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @headc37d_curs_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %cmp.not.i, label %entry.do.body5_crit_edge, label %if.then.i

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body5_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.body5:                                         ; preds = %if.then.i.do.body5_crit_edge, %entry.do.body5_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 7
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add7 = add i32 %mul, 8348
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 16384
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !67

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end94

if.end94:                                         ; preds = %do.end59, %do.body5.if.end94_crit_edge
  %23 = and i32 %add7, 15516
  %24 = or i32 %23, 524288
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp112.not = icmp ult ptr %26, %28
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !67

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !67

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.headc37d_curs_set) #4
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
  %conv208 = zext i8 %bf.load to i32
  %layout = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %55 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %55, i32 6)
  %bf.load213 = load i48, ptr %layout, align 8
  %56 = trunc i48 %bf.load213 to i32
  %57 = shl i32 %56, 2
  %shl216 = and i32 %57, 768
  %or211 = or i32 %shl216, %conv208
  %or217 = or i32 %or211, -2147483648
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %seg.i, align 8
  %cmp226.not = icmp ult ptr %58, %60
  br i1 %cmp226.not, label %if.end175.if.end251_crit_edge, label %do.end245, !prof !67

if.end175.if.end251_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end251

do.end245:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end251

if.end251:                                        ; preds = %do.end245, %if.end175.if.end251_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %cmp265.not = icmp ult ptr %62, %64
  br i1 %cmp265.not, label %if.end251.if.end290_crit_edge, label %do.end284, !prof !67

if.end251.if.end290_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end290

do.end284:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end290

if.end290:                                        ; preds = %do.end284, %if.end251.if.end290_crit_edge
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast308 = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast309 = ptrtoint ptr %68 to i32
  %sub.ptr.sub310 = sub i32 %sub.ptr.lhs.cast308, %sub.ptr.rhs.cast309
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
  %name322 = getelementptr inbounds %struct.nvif_object, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %name322 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name322, align 8
  %79 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %handle, align 4
  %81 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %74(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %78, i32 noundef %80, ptr noundef %82, i32 noundef %sub.ptr.sub310, i32 noundef %or217) #4
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur.i, align 4
  %incdec.ptr331 = getelementptr i32, ptr %84, i32 1
  store ptr %incdec.ptr331, ptr %cur.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or217, ptr %84, align 4
  %86 = load ptr, ptr %cur.i, align 4
  %87 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %seg.i, align 8
  %cmp343.not = icmp ult ptr %86, %88
  br i1 %cmp343.not, label %if.end290.if.end368_crit_edge, label %do.end362, !prof !67

if.end290.if.end368_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end368

do.end362:                                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end368

if.end368:                                        ; preds = %do.end362, %if.end290.if.end368_crit_edge
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i, align 4
  %cmp382.not = icmp ult ptr %90, %92
  br i1 %cmp382.not, label %if.end368.if.end407_crit_edge, label %do.end401, !prof !67

if.end368.if.end407_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end407

do.end401:                                        ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %102(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %106, i32 noundef %108, ptr noundef %110, i32 noundef %sub.ptr.sub427, i32 noundef 29439) #4
  %111 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur.i, align 4
  %incdec.ptr448 = getelementptr i32, ptr %112, i32 1
  store ptr %incdec.ptr448, ptr %cur.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 29439, ptr %112, align 4
  %add458 = add i32 %mul, 8328
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add458)
  %tobool462.not = icmp ult i32 %add458, 16384
  br i1 %tobool462.not, label %if.end407.if.end517_crit_edge, label %do.end482, !prof !67

if.end407.if.end517_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end517

do.end482:                                        ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end517

if.end517:                                        ; preds = %do.end482, %if.end407.if.end517_crit_edge
  %114 = and i32 %add458, 15496
  %115 = or i32 %114, 262144
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %seg.i, align 8
  %cmp543.not = icmp ult ptr %117, %119
  br i1 %cmp543.not, label %if.end517.if.end568_crit_edge, label %do.end562, !prof !67

if.end517.if.end568_crit_edge:                    ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end568

do.end562:                                        ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end568

if.end568:                                        ; preds = %do.end562, %if.end517.if.end568_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i, align 4
  %cmp582.not = icmp ult ptr %121, %123
  br i1 %cmp582.not, label %if.end568.if.end607_crit_edge, label %do.end601, !prof !67

if.end568.if.end607_crit_edge:                    ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end607

do.end601:                                        ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end607

if.end607:                                        ; preds = %do.end601, %if.end568.if.end607_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast625 = ptrtoint ptr %125 to i32
  %sub.ptr.rhs.cast626 = ptrtoint ptr %127 to i32
  %sub.ptr.sub627 = sub i32 %sub.ptr.lhs.cast625, %sub.ptr.rhs.cast626
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
  %name639 = getelementptr inbounds %struct.nvif_object, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %name639 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name639, align 8
  %138 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %handle, align 4
  %140 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %133(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %137, i32 noundef %139, ptr noundef %141, i32 noundef %sub.ptr.sub627, i32 noundef %115, i32 noundef %add458, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_curs_set) #4
  %142 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cur.i, align 4
  %incdec.ptr651 = getelementptr i32, ptr %143, i32 1
  store ptr %incdec.ptr651, ptr %cur.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %115, ptr %143, align 4
  %handle660 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 1
  %145 = ptrtoint ptr %handle660 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %handle660, align 4
  %147 = load ptr, ptr %cur.i, align 4
  %148 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %seg.i, align 8
  %cmp665.not = icmp ult ptr %147, %149
  br i1 %cmp665.not, label %if.end607.if.end690_crit_edge, label %do.end684, !prof !67

if.end607.if.end690_crit_edge:                    ; preds = %if.end607
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end690

do.end684:                                        ; preds = %if.end607
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end690

if.end690:                                        ; preds = %do.end684, %if.end607.if.end690_crit_edge
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %152 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %end.i, align 4
  %cmp704.not = icmp ult ptr %151, %153
  br i1 %cmp704.not, label %if.end690.if.end729_crit_edge, label %do.end723, !prof !67

if.end690.if.end729_crit_edge:                    ; preds = %if.end690
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end729

do.end723:                                        ; preds = %if.end690
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end729

if.end729:                                        ; preds = %do.end723, %if.end690.if.end729_crit_edge
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %156 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast747 = ptrtoint ptr %155 to i32
  %sub.ptr.rhs.cast748 = ptrtoint ptr %157 to i32
  %sub.ptr.sub749 = sub i32 %sub.ptr.lhs.cast747, %sub.ptr.rhs.cast748
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
  %name761 = getelementptr inbounds %struct.nvif_object, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %name761 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %name761, align 8
  %168 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %handle, align 4
  %170 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %163(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %167, i32 noundef %169, ptr noundef %171, i32 noundef %sub.ptr.sub749, i32 noundef %146) #4
  %172 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cur.i, align 4
  %incdec.ptr770 = getelementptr i32, ptr %173, i32 1
  store ptr %incdec.ptr770, ptr %cur.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %146, ptr %173, align 4
  %add780 = add i32 %mul, 8336
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add780)
  %tobool784.not = icmp ult i32 %add780, 16384
  br i1 %tobool784.not, label %if.end729.if.end839_crit_edge, label %do.end804, !prof !67

if.end729.if.end839_crit_edge:                    ; preds = %if.end729
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end839

do.end804:                                        ; preds = %if.end729
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end839

if.end839:                                        ; preds = %do.end804, %if.end729.if.end839_crit_edge
  %175 = and i32 %add780, 15504
  %176 = or i32 %175, 262144
  %177 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cur.i, align 4
  %179 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %seg.i, align 8
  %cmp865.not = icmp ult ptr %178, %180
  br i1 %cmp865.not, label %if.end839.if.end890_crit_edge, label %do.end884, !prof !67

if.end839.if.end890_crit_edge:                    ; preds = %if.end839
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end890

do.end884:                                        ; preds = %if.end839
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end890

if.end890:                                        ; preds = %do.end884, %if.end839.if.end890_crit_edge
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %183 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %end.i, align 4
  %cmp904.not = icmp ult ptr %182, %184
  br i1 %cmp904.not, label %if.end890.if.end929_crit_edge, label %do.end923, !prof !67

if.end890.if.end929_crit_edge:                    ; preds = %if.end890
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end929

do.end923:                                        ; preds = %if.end890
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end929

if.end929:                                        ; preds = %do.end923, %if.end890.if.end929_crit_edge
  %185 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cur.i, align 4
  %187 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast947 = ptrtoint ptr %186 to i32
  %sub.ptr.rhs.cast948 = ptrtoint ptr %188 to i32
  %sub.ptr.sub949 = sub i32 %sub.ptr.lhs.cast947, %sub.ptr.rhs.cast948
  %189 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mem, align 8
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %195 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %client, align 4
  %name961 = getelementptr inbounds %struct.nvif_object, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %name961 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %name961, align 8
  %199 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %handle, align 4
  %201 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %194(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %198, i32 noundef %200, ptr noundef %202, i32 noundef %sub.ptr.sub949, i32 noundef %176, i32 noundef %add780, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_curs_set) #4
  %203 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cur.i, align 4
  %incdec.ptr973 = getelementptr i32, ptr %204, i32 1
  store ptr %incdec.ptr973, ptr %cur.i, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %176, ptr %204, align 4
  %206 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %206, i32 6)
  %bf.load982 = load i48, ptr %layout, align 8
  %bf.lshr983 = lshr i48 %bf.load982, 16
  %conv986 = trunc i48 %bf.lshr983 to i32
  %207 = load ptr, ptr %cur.i, align 4
  %208 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %seg.i, align 8
  %cmp991.not = icmp ult ptr %207, %209
  br i1 %cmp991.not, label %if.end929.if.end1016_crit_edge, label %do.end1010, !prof !67

if.end929.if.end1016_crit_edge:                   ; preds = %if.end929
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1016

do.end1010:                                       ; preds = %if.end929
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1016

if.end1016:                                       ; preds = %do.end1010, %if.end929.if.end1016_crit_edge
  %210 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cur.i, align 4
  %212 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %end.i, align 4
  %cmp1030.not = icmp ult ptr %211, %213
  br i1 %cmp1030.not, label %if.end1016.if.end1055_crit_edge, label %do.end1049, !prof !67

if.end1016.if.end1055_crit_edge:                  ; preds = %if.end1016
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1055

do.end1049:                                       ; preds = %if.end1016
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1055

if.end1055:                                       ; preds = %do.end1049, %if.end1016.if.end1055_crit_edge
  %214 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1073 = ptrtoint ptr %215 to i32
  %sub.ptr.rhs.cast1074 = ptrtoint ptr %217 to i32
  %sub.ptr.sub1075 = sub i32 %sub.ptr.lhs.cast1073, %sub.ptr.rhs.cast1074
  %218 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mem, align 8
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %224 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %client, align 4
  %name1087 = getelementptr inbounds %struct.nvif_object, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %name1087 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %name1087, align 8
  %228 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %handle, align 4
  %230 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %223(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %227, i32 noundef %229, ptr noundef %231, i32 noundef %sub.ptr.sub1075, i32 noundef %conv986) #4
  %232 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1096 = getelementptr i32, ptr %233, i32 1
  store ptr %incdec.ptr1096, ptr %cur.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv986, ptr %233, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1055, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1055 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @headc37d_curs_format(ptr nocapture readnone %head, ptr nocapture noundef readonly %asyw, ptr nocapture noundef writeonly %asyh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %format, align 1
  %format1 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %format1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %format1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @headc37d_view(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
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
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 8268
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool7.not = icmp ult i32 %add, 16384
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !67

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 15436
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !67

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !67

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_view) #4
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %view = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2
  %54 = ptrtoint ptr %view to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %view, align 8
  %56 = and i16 %55, 32767
  %and167 = zext i16 %56 to i32
  %iH = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %iH to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %iH, align 2
  %59 = and i16 %58, 32767
  %and171 = zext i16 %59 to i32
  %shl172 = shl nuw nsw i32 %and171, 16
  %or173 = or i32 %shl172, %and167
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seg.i, align 8
  %cmp179.not = icmp ult ptr %60, %62
  br i1 %cmp179.not, label %if.end133.if.end204_crit_edge, label %do.end198, !prof !67

if.end133.if.end204_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end204

do.end198:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end204

if.end204:                                        ; preds = %do.end198, %if.end133.if.end204_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  %cmp218.not = icmp ult ptr %64, %66
  br i1 %cmp218.not, label %if.end204.if.end243_crit_edge, label %do.end237, !prof !67

if.end204.if.end243_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end243

do.end237:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end243

if.end243:                                        ; preds = %do.end237, %if.end204.if.end243_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast261 = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast262 = ptrtoint ptr %70 to i32
  %sub.ptr.sub263 = sub i32 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
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
  %name275 = getelementptr inbounds %struct.nvif_object, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %name275 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name275, align 8
  %81 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %handle, align 4
  %83 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %76(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %80, i32 noundef %82, ptr noundef %84, i32 noundef %sub.ptr.sub263, i32 noundef %or173) #4
  %85 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cur.i, align 4
  %incdec.ptr284 = getelementptr i32, ptr %86, i32 1
  store ptr %incdec.ptr284, ptr %cur.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or173, ptr %86, align 4
  %add294 = add i32 %mul, 8280
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add294)
  %tobool297.not = icmp ult i32 %add294, 16384
  br i1 %tobool297.not, label %if.end243.if.end352_crit_edge, label %do.end317, !prof !67

if.end243.if.end352_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end352

do.end317:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end352

if.end352:                                        ; preds = %do.end317, %if.end243.if.end352_crit_edge
  %88 = and i32 %add294, 15448
  %89 = or i32 %88, 262144
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %92 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %seg.i, align 8
  %cmp377.not = icmp ult ptr %91, %93
  br i1 %cmp377.not, label %if.end352.if.end402_crit_edge, label %do.end396, !prof !67

if.end352.if.end402_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end402

do.end396:                                        ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end402

if.end402:                                        ; preds = %do.end396, %if.end352.if.end402_crit_edge
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %end.i, align 4
  %cmp416.not = icmp ult ptr %95, %97
  br i1 %cmp416.not, label %if.end402.if.end441_crit_edge, label %do.end435, !prof !67

if.end402.if.end441_crit_edge:                    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end441

do.end435:                                        ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end441

if.end441:                                        ; preds = %do.end435, %if.end402.if.end441_crit_edge
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast459 = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast460 = ptrtoint ptr %101 to i32
  %sub.ptr.sub461 = sub i32 %sub.ptr.lhs.cast459, %sub.ptr.rhs.cast460
  %102 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mem, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %108 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %client, align 4
  %name473 = getelementptr inbounds %struct.nvif_object, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %name473 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name473, align 8
  %112 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %handle, align 4
  %114 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %107(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %111, i32 noundef %113, ptr noundef %115, i32 noundef %sub.ptr.sub461, i32 noundef %89, i32 noundef %add294, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_view) #4
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %incdec.ptr484 = getelementptr i32, ptr %117, i32 1
  store ptr %incdec.ptr484, ptr %cur.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %89, ptr %117, align 4
  %oW = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 2
  %119 = ptrtoint ptr %oW to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %oW, align 4
  %121 = and i16 %120, 32767
  %and494 = zext i16 %121 to i32
  %oH = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 3
  %122 = ptrtoint ptr %oH to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %oH, align 2
  %124 = and i16 %123, 32767
  %and498 = zext i16 %124 to i32
  %shl499 = shl nuw nsw i32 %and498, 16
  %or500 = or i32 %shl499, %and494
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp506.not = icmp ult ptr %125, %127
  br i1 %cmp506.not, label %if.end441.if.end531_crit_edge, label %do.end525, !prof !67

if.end441.if.end531_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end531

do.end525:                                        ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end531

if.end531:                                        ; preds = %do.end525, %if.end441.if.end531_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp545.not = icmp ult ptr %129, %131
  br i1 %cmp545.not, label %if.end531.if.end570_crit_edge, label %do.end564, !prof !67

if.end531.if.end570_crit_edge:                    ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end570

do.end564:                                        ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end570

if.end570:                                        ; preds = %do.end564, %if.end531.if.end570_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast588 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast589 = ptrtoint ptr %135 to i32
  %sub.ptr.sub590 = sub i32 %sub.ptr.lhs.cast588, %sub.ptr.rhs.cast589
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
  %name602 = getelementptr inbounds %struct.nvif_object, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %name602 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name602, align 8
  %146 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %handle, align 4
  %148 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %141(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %sub.ptr.sub590, i32 noundef %or500) #4
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %incdec.ptr611 = getelementptr i32, ptr %151, i32 1
  store ptr %incdec.ptr611, ptr %cur.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or500, ptr %151, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end570, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end570 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @headc37d_static_wndw_map(ptr nocapture noundef readonly %head, ptr nocapture noundef %asyh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 8
  %mul = shl i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %mul)
  %cmp4.not = icmp eq i32 %mul, 2147483646
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %mul, 2
  %owned = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %owned to i32
  call void @__asan_load4_noabort(i32 %2)
  %owned.promoted = load i32, ptr %owned, align 4
  %shl = shl nuw i32 1, %mul
  %or = or i32 %owned.promoted, %shl
  %inc = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add)
  %cmp = icmp slt i32 %inc, %add
  %shl.1 = shl nuw i32 1, %inc
  %or.1 = select i1 %cmp, i32 %shl.1, i32 0
  %or.lcssa = or i32 %or, %or.1
  %3 = ptrtoint ptr %owned to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.lcssa, ptr %owned, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc37d_mode(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %add.ptr.i = getelementptr i32, ptr %15, i32 15
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body5_crit_edge, label %if.then.i

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body5_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.body5:                                         ; preds = %if.then.i.do.body5_crit_edge, %entry.do.body5_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 15
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add81 = add i32 %mul, 8292
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add81)
  %tobool123.not = icmp ult i32 %add81, 16384
  br i1 %tobool123.not, label %do.body5.if.end178_crit_edge, label %do.end143, !prof !67

do.body5.if.end178_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

do.end143:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end178

if.end178:                                        ; preds = %do.end143, %do.body5.if.end178_crit_edge
  %23 = and i32 %add81, 15460
  %24 = or i32 %23, 1048576
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp196.not = icmp ult ptr %26, %28
  br i1 %cmp196.not, label %if.end178.if.end221_crit_edge, label %do.end215, !prof !67

if.end178.if.end221_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end221

do.end215:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end221

if.end221:                                        ; preds = %do.end215, %if.end178.if.end221_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp234.not = icmp ult ptr %30, %32
  br i1 %cmp234.not, label %if.end221.if.end259_crit_edge, label %do.end253, !prof !67

if.end221.if.end259_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end259

do.end253:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end259

if.end259:                                        ; preds = %do.end253, %if.end221.if.end259_crit_edge
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
  %name276 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add81, i32 noundef 4, ptr noundef nonnull @__func__.headc37d_mode) #4
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %h, align 4
  %56 = and i16 %55, 32767
  %and293 = zext i16 %56 to i32
  %v = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %v, align 4
  %59 = shl i32 %58, 16
  %60 = and i32 %59, 2147418112
  %or299 = or i32 %60, %and293
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %seg.i, align 8
  %cmp305.not = icmp ult ptr %61, %63
  br i1 %cmp305.not, label %if.end259.if.end330_crit_edge, label %do.end324, !prof !67

if.end259.if.end330_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end330

do.end324:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end330

if.end330:                                        ; preds = %do.end324, %if.end259.if.end330_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %cmp344.not = icmp ult ptr %65, %67
  br i1 %cmp344.not, label %if.end330.if.end369_crit_edge, label %do.end363, !prof !67

if.end330.if.end369_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end369

do.end363:                                        ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end369

if.end369:                                        ; preds = %do.end363, %if.end330.if.end369_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast387 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast388 = ptrtoint ptr %71 to i32
  %sub.ptr.sub389 = sub i32 %sub.ptr.lhs.cast387, %sub.ptr.rhs.cast388
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
  %name401 = getelementptr inbounds %struct.nvif_object, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %name401 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name401, align 8
  %82 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %handle, align 4
  %84 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %77(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %81, i32 noundef %83, ptr noundef %85, i32 noundef %sub.ptr.sub389, i32 noundef %or299) #4
  %86 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur.i, align 4
  %incdec.ptr410 = getelementptr i32, ptr %87, i32 1
  store ptr %incdec.ptr410, ptr %cur.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or299, ptr %87, align 4
  %synce = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 1
  %89 = ptrtoint ptr %synce to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %synce, align 2
  %91 = and i16 %90, 32767
  %and420 = zext i16 %91 to i32
  %synce423 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 1
  %92 = ptrtoint ptr %synce423 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %synce423, align 4
  %94 = and i16 %93, 32767
  %and425 = zext i16 %94 to i32
  %shl426 = shl nuw nsw i32 %and425, 16
  %or427 = or i32 %shl426, %and420
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %seg.i, align 8
  %cmp433.not = icmp ult ptr %95, %97
  br i1 %cmp433.not, label %if.end369.if.end458_crit_edge, label %do.end452, !prof !67

if.end369.if.end458_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end458

do.end452:                                        ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end458

if.end458:                                        ; preds = %do.end452, %if.end369.if.end458_crit_edge
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %cmp472.not = icmp ult ptr %99, %101
  br i1 %cmp472.not, label %if.end458.if.end497_crit_edge, label %do.end491, !prof !67

if.end458.if.end497_crit_edge:                    ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end497

do.end491:                                        ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end497

if.end497:                                        ; preds = %do.end491, %if.end458.if.end497_crit_edge
  %102 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur.i, align 4
  %104 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast515 = ptrtoint ptr %103 to i32
  %sub.ptr.rhs.cast516 = ptrtoint ptr %105 to i32
  %sub.ptr.sub517 = sub i32 %sub.ptr.lhs.cast515, %sub.ptr.rhs.cast516
  %106 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mem, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %client, align 4
  %name529 = getelementptr inbounds %struct.nvif_object, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %name529 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name529, align 8
  %116 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %handle, align 4
  %118 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %111(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %115, i32 noundef %117, ptr noundef %119, i32 noundef %sub.ptr.sub517, i32 noundef %or427) #4
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %incdec.ptr538 = getelementptr i32, ptr %121, i32 1
  store ptr %incdec.ptr538, ptr %cur.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or427, ptr %121, align 4
  %blanke = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 2
  %123 = ptrtoint ptr %blanke to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %blanke, align 4
  %125 = and i16 %124, 32767
  %and548 = zext i16 %125 to i32
  %blanke551 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 2
  %126 = ptrtoint ptr %blanke551 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %blanke551, align 2
  %128 = and i16 %127, 32767
  %and553 = zext i16 %128 to i32
  %shl554 = shl nuw nsw i32 %and553, 16
  %or555 = or i32 %shl554, %and548
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %seg.i, align 8
  %cmp561.not = icmp ult ptr %129, %131
  br i1 %cmp561.not, label %if.end497.if.end586_crit_edge, label %do.end580, !prof !67

if.end497.if.end586_crit_edge:                    ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end586

do.end580:                                        ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end586

if.end586:                                        ; preds = %do.end580, %if.end497.if.end586_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp600.not = icmp ult ptr %133, %135
  br i1 %cmp600.not, label %if.end586.if.end625_crit_edge, label %do.end619, !prof !67

if.end586.if.end625_crit_edge:                    ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end625

do.end619:                                        ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end625

if.end625:                                        ; preds = %do.end619, %if.end586.if.end625_crit_edge
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur.i, align 4
  %138 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast643 = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast644 = ptrtoint ptr %139 to i32
  %sub.ptr.sub645 = sub i32 %sub.ptr.lhs.cast643, %sub.ptr.rhs.cast644
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
  %name657 = getelementptr inbounds %struct.nvif_object, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %name657 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name657, align 8
  %150 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle, align 4
  %152 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %145(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %sub.ptr.sub645, i32 noundef %or555) #4
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %incdec.ptr666 = getelementptr i32, ptr %155, i32 1
  store ptr %incdec.ptr666, ptr %cur.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or555, ptr %155, align 4
  %blanks = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 3
  %157 = ptrtoint ptr %blanks to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %blanks, align 2
  %159 = and i16 %158, 32767
  %and676 = zext i16 %159 to i32
  %blanks679 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 3
  %160 = ptrtoint ptr %blanks679 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %blanks679, align 4
  %162 = and i16 %161, 32767
  %and681 = zext i16 %162 to i32
  %shl682 = shl nuw nsw i32 %and681, 16
  %or683 = or i32 %shl682, %and676
  %163 = load ptr, ptr %cur.i, align 4
  %164 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %seg.i, align 8
  %cmp689.not = icmp ult ptr %163, %165
  br i1 %cmp689.not, label %if.end625.if.end714_crit_edge, label %do.end708, !prof !67

if.end625.if.end714_crit_edge:                    ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end714

do.end708:                                        ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end714

if.end714:                                        ; preds = %do.end708, %if.end625.if.end714_crit_edge
  %166 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cur.i, align 4
  %168 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %end.i, align 4
  %cmp728.not = icmp ult ptr %167, %169
  br i1 %cmp728.not, label %if.end714.if.end753_crit_edge, label %do.end747, !prof !67

if.end714.if.end753_crit_edge:                    ; preds = %if.end714
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end753

do.end747:                                        ; preds = %if.end714
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end753

if.end753:                                        ; preds = %do.end747, %if.end714.if.end753_crit_edge
  %170 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cur.i, align 4
  %172 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast771 = ptrtoint ptr %171 to i32
  %sub.ptr.rhs.cast772 = ptrtoint ptr %173 to i32
  %sub.ptr.sub773 = sub i32 %sub.ptr.lhs.cast771, %sub.ptr.rhs.cast772
  %174 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mem, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %180 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %client, align 4
  %name785 = getelementptr inbounds %struct.nvif_object, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %name785 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %name785, align 8
  %184 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %handle, align 4
  %186 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %179(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %183, i32 noundef %185, ptr noundef %187, i32 noundef %sub.ptr.sub773, i32 noundef %or683) #4
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %incdec.ptr794 = getelementptr i32, ptr %189, i32 1
  store ptr %incdec.ptr794, ptr %cur.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %or683, ptr %189, align 4
  %add804 = add i32 %mul, 8308
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add804)
  %tobool807.not = icmp ult i32 %add804, 16384
  br i1 %tobool807.not, label %if.end753.if.end862_crit_edge, label %do.end827, !prof !67

if.end753.if.end862_crit_edge:                    ; preds = %if.end753
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end862

do.end827:                                        ; preds = %if.end753
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end862

if.end862:                                        ; preds = %do.end827, %if.end753.if.end862_crit_edge
  %191 = and i32 %add804, 15476
  %192 = or i32 %191, 262144
  %193 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cur.i, align 4
  %195 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %seg.i, align 8
  %cmp887.not = icmp ult ptr %194, %196
  br i1 %cmp887.not, label %if.end862.if.end912_crit_edge, label %do.end906, !prof !67

if.end862.if.end912_crit_edge:                    ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end912

do.end906:                                        ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end912

if.end912:                                        ; preds = %do.end906, %if.end862.if.end912_crit_edge
  %197 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cur.i, align 4
  %199 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %end.i, align 4
  %cmp926.not = icmp ult ptr %198, %200
  br i1 %cmp926.not, label %if.end912.if.end951_crit_edge, label %do.end945, !prof !67

if.end912.if.end951_crit_edge:                    ; preds = %if.end912
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end951

do.end945:                                        ; preds = %if.end912
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end951

if.end951:                                        ; preds = %do.end945, %if.end912.if.end951_crit_edge
  %201 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cur.i, align 4
  %203 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast969 = ptrtoint ptr %202 to i32
  %sub.ptr.rhs.cast970 = ptrtoint ptr %204 to i32
  %sub.ptr.sub971 = sub i32 %sub.ptr.lhs.cast969, %sub.ptr.rhs.cast970
  %205 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mem, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %211 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %client, align 4
  %name983 = getelementptr inbounds %struct.nvif_object, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %name983 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %name983, align 8
  %215 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %handle, align 4
  %217 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %210(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %214, i32 noundef %216, ptr noundef %218, i32 noundef %sub.ptr.sub971, i32 noundef %192, i32 noundef %add804, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_mode) #4
  %219 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cur.i, align 4
  %incdec.ptr994 = getelementptr i32, ptr %220, i32 1
  store ptr %incdec.ptr994, ptr %cur.i, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %192, ptr %220, align 4
  %blank2e = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 5
  %222 = ptrtoint ptr %blank2e to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %blank2e, align 4
  %conv1003 = zext i16 %223 to i32
  %shl1004 = shl nuw i32 %conv1003, 16
  %blank2s = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 4
  %224 = ptrtoint ptr %blank2s to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %blank2s, align 2
  %conv1006 = zext i16 %225 to i32
  %or1007 = or i32 %shl1004, %conv1006
  %226 = load ptr, ptr %cur.i, align 4
  %227 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %seg.i, align 8
  %cmp1012.not = icmp ult ptr %226, %228
  br i1 %cmp1012.not, label %if.end951.if.end1037_crit_edge, label %do.end1031, !prof !67

if.end951.if.end1037_crit_edge:                   ; preds = %if.end951
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1037

do.end1031:                                       ; preds = %if.end951
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1037

if.end1037:                                       ; preds = %do.end1031, %if.end951.if.end1037_crit_edge
  %229 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %cur.i, align 4
  %231 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %end.i, align 4
  %cmp1051.not = icmp ult ptr %230, %232
  br i1 %cmp1051.not, label %if.end1037.if.end1076_crit_edge, label %do.end1070, !prof !67

if.end1037.if.end1076_crit_edge:                  ; preds = %if.end1037
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1076

do.end1070:                                       ; preds = %if.end1037
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1076

if.end1076:                                       ; preds = %do.end1070, %if.end1037.if.end1076_crit_edge
  %233 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %cur.i, align 4
  %235 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1094 = ptrtoint ptr %234 to i32
  %sub.ptr.rhs.cast1095 = ptrtoint ptr %236 to i32
  %sub.ptr.sub1096 = sub i32 %sub.ptr.lhs.cast1094, %sub.ptr.rhs.cast1095
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
  %name1108 = getelementptr inbounds %struct.nvif_object, ptr %244, i32 0, i32 2
  %245 = ptrtoint ptr %name1108 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %name1108, align 8
  %247 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %handle, align 4
  %249 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %242(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %246, i32 noundef %248, ptr noundef %250, i32 noundef %sub.ptr.sub1096, i32 noundef %or1007) #4
  %251 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1117 = getelementptr i32, ptr %252, i32 1
  store ptr %incdec.ptr1117, ptr %cur.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %or1007, ptr %252, align 4
  %add1127 = add i32 %mul, 8200
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add1127)
  %tobool1130.not = icmp ult i32 %add1127, 16384
  br i1 %tobool1130.not, label %if.end1076.if.end1185_crit_edge, label %do.end1150, !prof !67

if.end1076.if.end1185_crit_edge:                  ; preds = %if.end1076
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1185

do.end1150:                                       ; preds = %if.end1076
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end1185

if.end1185:                                       ; preds = %do.end1150, %if.end1076.if.end1185_crit_edge
  %254 = and i32 %add1127, 15368
  %255 = or i32 %254, 262144
  %256 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cur.i, align 4
  %258 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %seg.i, align 8
  %cmp1210.not = icmp ult ptr %257, %259
  br i1 %cmp1210.not, label %if.end1185.if.end1235_crit_edge, label %do.end1229, !prof !67

if.end1185.if.end1235_crit_edge:                  ; preds = %if.end1185
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1235

do.end1229:                                       ; preds = %if.end1185
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1235

if.end1235:                                       ; preds = %do.end1229, %if.end1185.if.end1235_crit_edge
  %260 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cur.i, align 4
  %262 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %end.i, align 4
  %cmp1249.not = icmp ult ptr %261, %263
  br i1 %cmp1249.not, label %if.end1235.if.end1274_crit_edge, label %do.end1268, !prof !67

if.end1235.if.end1274_crit_edge:                  ; preds = %if.end1235
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1274

do.end1268:                                       ; preds = %if.end1235
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1274

if.end1274:                                       ; preds = %do.end1268, %if.end1235.if.end1274_crit_edge
  %264 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cur.i, align 4
  %266 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1292 = ptrtoint ptr %265 to i32
  %sub.ptr.rhs.cast1293 = ptrtoint ptr %267 to i32
  %sub.ptr.sub1294 = sub i32 %sub.ptr.lhs.cast1292, %sub.ptr.rhs.cast1293
  %268 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mem, align 8
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %271, align 4
  %274 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %client, align 4
  %name1306 = getelementptr inbounds %struct.nvif_object, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %name1306 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %name1306, align 8
  %278 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %handle, align 4
  %280 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %273(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %277, i32 noundef %279, ptr noundef %281, i32 noundef %sub.ptr.sub1294, i32 noundef %255, i32 noundef %add1127, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_mode) #4
  %282 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1317 = getelementptr i32, ptr %283, i32 1
  store ptr %incdec.ptr1317, ptr %cur.i, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %255, ptr %283, align 4
  %285 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %mode, align 4, !range !68
  %287 = zext i8 %286 to i32
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %seg.i, align 8
  %cmp1331.not = icmp ult ptr %288, %290
  br i1 %cmp1331.not, label %if.end1274.if.end1356_crit_edge, label %do.end1350, !prof !67

if.end1274.if.end1356_crit_edge:                  ; preds = %if.end1274
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1356

do.end1350:                                       ; preds = %if.end1274
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1356

if.end1356:                                       ; preds = %do.end1350, %if.end1274.if.end1356_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %293 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %end.i, align 4
  %cmp1370.not = icmp ult ptr %292, %294
  br i1 %cmp1370.not, label %if.end1356.if.end1395_crit_edge, label %do.end1389, !prof !67

if.end1356.if.end1395_crit_edge:                  ; preds = %if.end1356
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1395

do.end1389:                                       ; preds = %if.end1356
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1395

if.end1395:                                       ; preds = %do.end1389, %if.end1356.if.end1395_crit_edge
  %295 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %cur.i, align 4
  %297 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1413 = ptrtoint ptr %296 to i32
  %sub.ptr.rhs.cast1414 = ptrtoint ptr %298 to i32
  %sub.ptr.sub1415 = sub i32 %sub.ptr.lhs.cast1413, %sub.ptr.rhs.cast1414
  %299 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mem, align 8
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %300, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %302, align 4
  %305 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %client, align 4
  %name1427 = getelementptr inbounds %struct.nvif_object, ptr %306, i32 0, i32 2
  %307 = ptrtoint ptr %name1427 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name1427, align 8
  %309 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %handle, align 4
  %311 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %304(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %308, i32 noundef %310, ptr noundef %312, i32 noundef %sub.ptr.sub1415, i32 noundef %287) #4
  %313 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1436 = getelementptr i32, ptr %314, i32 1
  store ptr %incdec.ptr1436, ptr %cur.i, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %287, ptr %314, align 4
  %add1446 = add i32 %mul, 8204
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add1446)
  %tobool1449.not = icmp ult i32 %add1446, 16384
  br i1 %tobool1449.not, label %if.end1395.if.end1504_crit_edge, label %do.end1469, !prof !67

if.end1395.if.end1504_crit_edge:                  ; preds = %if.end1395
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1504

do.end1469:                                       ; preds = %if.end1395
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end1504

if.end1504:                                       ; preds = %do.end1469, %if.end1395.if.end1504_crit_edge
  %316 = and i32 %add1446, 15372
  %317 = or i32 %316, 262144
  %318 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %cur.i, align 4
  %320 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %seg.i, align 8
  %cmp1529.not = icmp ult ptr %319, %321
  br i1 %cmp1529.not, label %if.end1504.if.end1554_crit_edge, label %do.end1548, !prof !67

if.end1504.if.end1554_crit_edge:                  ; preds = %if.end1504
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1554

do.end1548:                                       ; preds = %if.end1504
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1554

if.end1554:                                       ; preds = %do.end1548, %if.end1504.if.end1554_crit_edge
  %322 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %cur.i, align 4
  %324 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %end.i, align 4
  %cmp1568.not = icmp ult ptr %323, %325
  br i1 %cmp1568.not, label %if.end1554.if.end1593_crit_edge, label %do.end1587, !prof !67

if.end1554.if.end1593_crit_edge:                  ; preds = %if.end1554
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1593

do.end1587:                                       ; preds = %if.end1554
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1593

if.end1593:                                       ; preds = %do.end1587, %if.end1554.if.end1593_crit_edge
  %326 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %cur.i, align 4
  %328 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1611 = ptrtoint ptr %327 to i32
  %sub.ptr.rhs.cast1612 = ptrtoint ptr %329 to i32
  %sub.ptr.sub1613 = sub i32 %sub.ptr.lhs.cast1611, %sub.ptr.rhs.cast1612
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
  %name1625 = getelementptr inbounds %struct.nvif_object, ptr %337, i32 0, i32 2
  %338 = ptrtoint ptr %name1625 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %name1625, align 8
  %340 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %handle, align 4
  %342 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %335(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %339, i32 noundef %341, ptr noundef %343, i32 noundef %sub.ptr.sub1613, i32 noundef %317, i32 noundef %add1446, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_mode) #4
  %344 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1636 = getelementptr i32, ptr %345, i32 1
  store ptr %incdec.ptr1636, ptr %cur.i, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %317, ptr %345, align 4
  %clock = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 1
  %347 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %clock, align 4
  %mul1644 = mul i32 %348, 1000
  %349 = and i32 %mul1644, 2147483640
  %350 = load ptr, ptr %cur.i, align 4
  %351 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %seg.i, align 8
  %cmp1653.not = icmp ult ptr %350, %352
  br i1 %cmp1653.not, label %if.end1593.if.end1678_crit_edge, label %do.end1672, !prof !67

if.end1593.if.end1678_crit_edge:                  ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1678

do.end1672:                                       ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1678

if.end1678:                                       ; preds = %do.end1672, %if.end1593.if.end1678_crit_edge
  %353 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %end.i, align 4
  %cmp1692.not = icmp ult ptr %354, %356
  br i1 %cmp1692.not, label %if.end1678.if.end1717_crit_edge, label %do.end1711, !prof !67

if.end1678.if.end1717_crit_edge:                  ; preds = %if.end1678
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1717

do.end1711:                                       ; preds = %if.end1678
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1717

if.end1717:                                       ; preds = %do.end1711, %if.end1678.if.end1717_crit_edge
  %357 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cur.i, align 4
  %359 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1735 = ptrtoint ptr %358 to i32
  %sub.ptr.rhs.cast1736 = ptrtoint ptr %360 to i32
  %sub.ptr.sub1737 = sub i32 %sub.ptr.lhs.cast1735, %sub.ptr.rhs.cast1736
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
  %name1749 = getelementptr inbounds %struct.nvif_object, ptr %368, i32 0, i32 2
  %369 = ptrtoint ptr %name1749 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %name1749, align 8
  %371 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %handle, align 4
  %373 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %366(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %370, i32 noundef %372, ptr noundef %374, i32 noundef %sub.ptr.sub1737, i32 noundef %349) #4
  %375 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1758 = getelementptr i32, ptr %376, i32 1
  store ptr %incdec.ptr1758, ptr %cur.i, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %349, ptr %376, align 4
  %add1768 = add i32 %mul, 8232
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add1768)
  %tobool1771.not = icmp ult i32 %add1768, 16384
  br i1 %tobool1771.not, label %if.end1717.if.end1826_crit_edge, label %do.end1791, !prof !67

if.end1717.if.end1826_crit_edge:                  ; preds = %if.end1717
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1826

do.end1791:                                       ; preds = %if.end1717
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end1826

if.end1826:                                       ; preds = %do.end1791, %if.end1717.if.end1826_crit_edge
  %378 = and i32 %add1768, 15400
  %379 = or i32 %378, 262144
  %380 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cur.i, align 4
  %382 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %seg.i, align 8
  %cmp1851.not = icmp ult ptr %381, %383
  br i1 %cmp1851.not, label %if.end1826.if.end1876_crit_edge, label %do.end1870, !prof !67

if.end1826.if.end1876_crit_edge:                  ; preds = %if.end1826
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1876

do.end1870:                                       ; preds = %if.end1826
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1876

if.end1876:                                       ; preds = %do.end1870, %if.end1826.if.end1876_crit_edge
  %384 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %cur.i, align 4
  %386 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %end.i, align 4
  %cmp1890.not = icmp ult ptr %385, %387
  br i1 %cmp1890.not, label %if.end1876.if.end1915_crit_edge, label %do.end1909, !prof !67

if.end1876.if.end1915_crit_edge:                  ; preds = %if.end1876
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1915

do.end1909:                                       ; preds = %if.end1876
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1915

if.end1915:                                       ; preds = %do.end1909, %if.end1876.if.end1915_crit_edge
  %388 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cur.i, align 4
  %390 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1933 = ptrtoint ptr %389 to i32
  %sub.ptr.rhs.cast1934 = ptrtoint ptr %391 to i32
  %sub.ptr.sub1935 = sub i32 %sub.ptr.lhs.cast1933, %sub.ptr.rhs.cast1934
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
  %name1947 = getelementptr inbounds %struct.nvif_object, ptr %399, i32 0, i32 2
  %400 = ptrtoint ptr %name1947 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %name1947, align 8
  %402 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %handle, align 4
  %404 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %397(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %401, i32 noundef %403, ptr noundef %405, i32 noundef %sub.ptr.sub1935, i32 noundef %379, i32 noundef %add1768, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_mode) #4
  %406 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1958 = getelementptr i32, ptr %407, i32 1
  store ptr %incdec.ptr1958, ptr %cur.i, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %379, ptr %407, align 4
  %409 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %clock, align 4
  %mul1967 = mul i32 %410, 1000
  %411 = and i32 %mul1967, 2147483640
  %412 = load ptr, ptr %cur.i, align 4
  %413 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %seg.i, align 8
  %cmp1976.not = icmp ult ptr %412, %414
  br i1 %cmp1976.not, label %if.end1915.if.end2001_crit_edge, label %do.end1995, !prof !67

if.end1915.if.end2001_crit_edge:                  ; preds = %if.end1915
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2001

do.end1995:                                       ; preds = %if.end1915
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end2001

if.end2001:                                       ; preds = %do.end1995, %if.end1915.if.end2001_crit_edge
  %415 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %cur.i, align 4
  %417 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %end.i, align 4
  %cmp2015.not = icmp ult ptr %416, %418
  br i1 %cmp2015.not, label %if.end2001.if.end2040_crit_edge, label %do.end2034, !prof !67

if.end2001.if.end2040_crit_edge:                  ; preds = %if.end2001
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2040

do.end2034:                                       ; preds = %if.end2001
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end2040

if.end2040:                                       ; preds = %do.end2034, %if.end2001.if.end2040_crit_edge
  %419 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %cur.i, align 4
  %421 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2058 = ptrtoint ptr %420 to i32
  %sub.ptr.rhs.cast2059 = ptrtoint ptr %422 to i32
  %sub.ptr.sub2060 = sub i32 %sub.ptr.lhs.cast2058, %sub.ptr.rhs.cast2059
  %423 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %mem, align 8
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %424, align 4
  %427 = ptrtoint ptr %426 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %426, align 4
  %429 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %client, align 4
  %name2072 = getelementptr inbounds %struct.nvif_object, ptr %430, i32 0, i32 2
  %431 = ptrtoint ptr %name2072 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %name2072, align 8
  %433 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %handle, align 4
  %435 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %428(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %432, i32 noundef %434, ptr noundef %436, i32 noundef %sub.ptr.sub2060, i32 noundef %411) #4
  %437 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2081 = getelementptr i32, ptr %438, i32 1
  store ptr %incdec.ptr2081, ptr %cur.i, align 4
  %439 = ptrtoint ptr %438 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %411, ptr %438, align 4
  %add2091 = add i32 %mul, 8240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add2091)
  %tobool2094.not = icmp ult i32 %add2091, 16384
  br i1 %tobool2094.not, label %if.end2040.if.end2149_crit_edge, label %do.end2114, !prof !67

if.end2040.if.end2149_crit_edge:                  ; preds = %if.end2040
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2149

do.end2114:                                       ; preds = %if.end2040
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end2149

if.end2149:                                       ; preds = %do.end2114, %if.end2040.if.end2149_crit_edge
  %440 = and i32 %add2091, 15408
  %441 = or i32 %440, 262144
  %442 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %cur.i, align 4
  %444 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %seg.i, align 8
  %cmp2174.not = icmp ult ptr %443, %445
  br i1 %cmp2174.not, label %if.end2149.if.end2199_crit_edge, label %do.end2193, !prof !67

if.end2149.if.end2199_crit_edge:                  ; preds = %if.end2149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2199

do.end2193:                                       ; preds = %if.end2149
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end2199

if.end2199:                                       ; preds = %do.end2193, %if.end2149.if.end2199_crit_edge
  %446 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %cur.i, align 4
  %448 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %end.i, align 4
  %cmp2213.not = icmp ult ptr %447, %449
  br i1 %cmp2213.not, label %if.end2199.if.end2238_crit_edge, label %do.end2232, !prof !67

if.end2199.if.end2238_crit_edge:                  ; preds = %if.end2199
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2238

do.end2232:                                       ; preds = %if.end2199
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end2238

if.end2238:                                       ; preds = %do.end2232, %if.end2199.if.end2238_crit_edge
  %450 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %cur.i, align 4
  %452 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2256 = ptrtoint ptr %451 to i32
  %sub.ptr.rhs.cast2257 = ptrtoint ptr %453 to i32
  %sub.ptr.sub2258 = sub i32 %sub.ptr.lhs.cast2256, %sub.ptr.rhs.cast2257
  %454 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %mem, align 8
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %455, align 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %457, align 4
  %460 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %client, align 4
  %name2270 = getelementptr inbounds %struct.nvif_object, ptr %461, i32 0, i32 2
  %462 = ptrtoint ptr %name2270 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %name2270, align 8
  %464 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %handle, align 4
  %466 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %459(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %463, i32 noundef %465, ptr noundef %467, i32 noundef %sub.ptr.sub2258, i32 noundef %441, i32 noundef %add2091, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_mode) #4
  %468 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2281 = getelementptr i32, ptr %469, i32 1
  store ptr %incdec.ptr2281, ptr %cur.i, align 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %441, ptr %469, align 4
  %471 = load ptr, ptr %cur.i, align 4
  %472 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %seg.i, align 8
  %cmp2293.not = icmp ult ptr %471, %473
  br i1 %cmp2293.not, label %if.end2238.if.end2318_crit_edge, label %do.end2312, !prof !67

if.end2238.if.end2318_crit_edge:                  ; preds = %if.end2238
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2318

do.end2312:                                       ; preds = %if.end2238
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end2318

if.end2318:                                       ; preds = %do.end2312, %if.end2238.if.end2318_crit_edge
  %474 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %cur.i, align 4
  %476 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %end.i, align 4
  %cmp2332.not = icmp ult ptr %475, %477
  br i1 %cmp2332.not, label %if.end2318.if.end2357_crit_edge, label %do.end2351, !prof !67

if.end2318.if.end2357_crit_edge:                  ; preds = %if.end2318
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2357

do.end2351:                                       ; preds = %if.end2318
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end2357

if.end2357:                                       ; preds = %do.end2351, %if.end2318.if.end2357_crit_edge
  %478 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %cur.i, align 4
  %480 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2375 = ptrtoint ptr %479 to i32
  %sub.ptr.rhs.cast2376 = ptrtoint ptr %481 to i32
  %sub.ptr.sub2377 = sub i32 %sub.ptr.lhs.cast2375, %sub.ptr.rhs.cast2376
  %482 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %mem, align 8
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %483, align 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %485, align 4
  %488 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %client, align 4
  %name2389 = getelementptr inbounds %struct.nvif_object, ptr %489, i32 0, i32 2
  %490 = ptrtoint ptr %name2389 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %name2389, align 8
  %492 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %handle, align 4
  %494 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %487(ptr noundef %mem, ptr noundef nonnull @.str.24, ptr noundef %491, i32 noundef %493, ptr noundef %495, i32 noundef %sub.ptr.sub2377, i32 noundef 292) #4
  %496 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2398 = getelementptr i32, ptr %497, i32 1
  store ptr %incdec.ptr2398, ptr %cur.i, align 4
  %498 = ptrtoint ptr %497 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 292, ptr %497, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2357, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2357 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @headc37d_olut(ptr nocapture noundef readnone %head, ptr nocapture noundef %asyh, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.return_crit_edge [
    i32 256, label %entry.if.end_crit_edge
    i32 1024, label %entry.if.end_crit_edge18
  ]

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %size)
  %cmp2 = icmp eq i32 %size, 1024
  %size3 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %size3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %size3, align 2
  %bf.clear = and i16 %bf.load, 1
  %bf.set = select i1 %cmp2, i16 66, i16 2
  %bf.set11 = or i16 %bf.set, %bf.clear
  store i16 %bf.set11, ptr %size3, align 2
  %load = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @head907d_olut_load, ptr %load, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head907d_ilut_check(i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc37d_olut_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %cmp.not.i, label %entry.if.end24_crit_edge, label %if.then.i

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end24_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.if.end24_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end24:                                         ; preds = %if.then.i.if.end24_crit_edge, %entry.if.end24_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add39 = add i32 %mul, 8356
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add39)
  %tobool81.not = icmp ult i32 %add39, 16384
  br i1 %tobool81.not, label %if.end24.if.end136_crit_edge, label %do.end101, !prof !67

if.end24.if.end136_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end136

do.end101:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end136

if.end136:                                        ; preds = %do.end101, %if.end24.if.end136_crit_edge
  %23 = and i32 %add39, 15524
  %24 = or i32 %23, 786432
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp154.not = icmp ult ptr %26, %28
  br i1 %cmp154.not, label %if.end136.if.end179_crit_edge, label %do.end173, !prof !67

if.end136.if.end179_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end179

do.end173:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end179

if.end179:                                        ; preds = %do.end173, %if.end136.if.end179_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp192.not = icmp ult ptr %30, %32
  br i1 %cmp192.not, label %if.end179.if.end217_crit_edge, label %do.end211, !prof !67

if.end179.if.end217_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end217

do.end211:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end217

if.end217:                                        ; preds = %do.end211, %if.end179.if.end217_crit_edge
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
  %name234 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name234 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name234, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add39, i32 noundef 3, ptr noundef nonnull @__func__.headc37d_olut_set) #4
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %size = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %size, align 2
  %bf.lshr = lshr i16 %bf.load, 5
  %55 = and i16 %bf.lshr, 3
  %and251 = zext i16 %55 to i32
  %56 = zext i16 %bf.load to i32
  %57 = shl nuw nsw i32 %56, 1
  %58 = and i32 %57, 48
  %or259 = or i32 %58, %and251
  %59 = shl i16 %bf.load, 7
  %60 = and i16 %59, 768
  %shl267 = zext i16 %60 to i32
  %or268 = or i32 %or259, %shl267
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %seg.i, align 8
  %cmp274.not = icmp ult ptr %61, %63
  br i1 %cmp274.not, label %if.end217.if.end299_crit_edge, label %do.end293, !prof !67

if.end217.if.end299_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end299

do.end293:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end299

if.end299:                                        ; preds = %do.end293, %if.end217.if.end299_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %cmp313.not = icmp ult ptr %65, %67
  br i1 %cmp313.not, label %if.end299.if.end338_crit_edge, label %do.end332, !prof !67

if.end299.if.end338_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end338

do.end332:                                        ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end338

if.end338:                                        ; preds = %do.end332, %if.end299.if.end338_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast356 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast357 = ptrtoint ptr %71 to i32
  %sub.ptr.sub358 = sub i32 %sub.ptr.lhs.cast356, %sub.ptr.rhs.cast357
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
  %name370 = getelementptr inbounds %struct.nvif_object, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %name370 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name370, align 8
  %82 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %handle, align 4
  %84 = ptrtoint ptr %name234 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name234, align 8
  tail call void (ptr, ptr, ...) %77(ptr noundef %mem, ptr noundef nonnull @.str.25, ptr noundef %81, i32 noundef %83, ptr noundef %85, i32 noundef %sub.ptr.sub358, i32 noundef %or268) #4
  %86 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur.i, align 4
  %incdec.ptr379 = getelementptr i32, ptr %87, i32 1
  store ptr %incdec.ptr379, ptr %cur.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or268, ptr %87, align 4
  %offset = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 2
  %89 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %89, i32 6)
  %bf.load388 = load i48, ptr %offset, align 8
  %bf.lshr389 = lshr i48 %bf.load388, 16
  %conv392 = trunc i48 %bf.lshr389 to i32
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %seg.i, align 8
  %cmp397.not = icmp ult ptr %90, %92
  br i1 %cmp397.not, label %if.end338.if.end422_crit_edge, label %do.end416, !prof !67

if.end338.if.end422_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end422

do.end416:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end422

if.end422:                                        ; preds = %do.end416, %if.end338.if.end422_crit_edge
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i, align 4
  %cmp436.not = icmp ult ptr %94, %96
  br i1 %cmp436.not, label %if.end422.if.end461_crit_edge, label %do.end455, !prof !67

if.end422.if.end461_crit_edge:                    ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end461

do.end455:                                        ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end461

if.end461:                                        ; preds = %do.end455, %if.end422.if.end461_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast479 = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast480 = ptrtoint ptr %100 to i32
  %sub.ptr.sub481 = sub i32 %sub.ptr.lhs.cast479, %sub.ptr.rhs.cast480
  %101 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mem, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %client, align 4
  %name493 = getelementptr inbounds %struct.nvif_object, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %name493 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %name493, align 8
  %111 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %handle, align 4
  %113 = ptrtoint ptr %name234 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name234, align 8
  tail call void (ptr, ptr, ...) %106(ptr noundef %mem, ptr noundef nonnull @.str.26, ptr noundef %110, i32 noundef %112, ptr noundef %114, i32 noundef %sub.ptr.sub481, i32 noundef %conv392) #4
  %115 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cur.i, align 4
  %incdec.ptr502 = getelementptr i32, ptr %116, i32 1
  store ptr %incdec.ptr502, ptr %cur.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv392, ptr %116, align 4
  %handle511 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %handle511 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle511, align 4
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %seg.i, align 8
  %cmp516.not = icmp ult ptr %120, %122
  br i1 %cmp516.not, label %if.end461.if.end541_crit_edge, label %do.end535, !prof !67

if.end461.if.end541_crit_edge:                    ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end541

do.end535:                                        ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end541

if.end541:                                        ; preds = %do.end535, %if.end461.if.end541_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %cmp555.not = icmp ult ptr %124, %126
  br i1 %cmp555.not, label %if.end541.if.end580_crit_edge, label %do.end574, !prof !67

if.end541.if.end580_crit_edge:                    ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end580

do.end574:                                        ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end580

if.end580:                                        ; preds = %do.end574, %if.end541.if.end580_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast598 = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast599 = ptrtoint ptr %130 to i32
  %sub.ptr.sub600 = sub i32 %sub.ptr.lhs.cast598, %sub.ptr.rhs.cast599
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
  %name612 = getelementptr inbounds %struct.nvif_object, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %name612 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name612, align 8
  %141 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %handle, align 4
  %143 = ptrtoint ptr %name234 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name234, align 8
  tail call void (ptr, ptr, ...) %136(ptr noundef %mem, ptr noundef nonnull @.str.27, ptr noundef %140, i32 noundef %142, ptr noundef %144, i32 noundef %sub.ptr.sub600, i32 noundef %119) #4
  %145 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cur.i, align 4
  %incdec.ptr621 = getelementptr i32, ptr %146, i32 1
  store ptr %incdec.ptr621, ptr %cur.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %119, ptr %146, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end580, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end580 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc37d_olut_clr(ptr nocapture noundef readonly %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
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
  %add = add i32 %mul, 8364
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool7.not = icmp ult i32 %add, 16384
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !67

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 15532
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !67

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !67

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_olut_clr) #4
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !67

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !67

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.27, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head917d_curs_layout(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc37d_procamp(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
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
  %add = add i32 %mul, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool7.not = icmp ult i32 %add, 16384
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !67

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 15360
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !67

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !67

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_procamp) #4
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
  %bf.lshr = and i16 %bf.load, -16
  %shl168 = zext i16 %bf.lshr to i32
  %sin = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 10, i32 0, i32 1
  %55 = ptrtoint ptr %sin to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load172 = load i16, ptr %sin, align 2
  %bf.lshr173 = lshr i16 %bf.load172, 4
  %conv174 = zext i16 %bf.lshr173 to i32
  %shl176 = shl nuw nsw i32 %conv174, 16
  %or177 = or i32 %shl176, %shl168
  %or180 = or i32 %or177, -2147483648
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seg.i, align 8
  %cmp186.not = icmp ult ptr %56, %58
  br i1 %cmp186.not, label %if.end133.if.end211_crit_edge, label %do.end205, !prof !67

if.end133.if.end211_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end211

do.end205:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end211

if.end211:                                        ; preds = %do.end205, %if.end133.if.end211_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %cmp225.not = icmp ult ptr %60, %62
  br i1 %cmp225.not, label %if.end211.if.end250_crit_edge, label %do.end244, !prof !67

if.end211.if.end250_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end250

do.end244:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end250

if.end250:                                        ; preds = %do.end244, %if.end211.if.end250_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast268 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast269 = ptrtoint ptr %66 to i32
  %sub.ptr.sub270 = sub i32 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
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
  %name282 = getelementptr inbounds %struct.nvif_object, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name282, align 8
  %77 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %handle, align 4
  %79 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %72(ptr noundef %mem, ptr noundef nonnull @.str.28, ptr noundef %76, i32 noundef %78, ptr noundef %80, i32 noundef %sub.ptr.sub270, i32 noundef %or180) #4
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr291 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr291, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or180, ptr %82, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end250, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end250 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc37d_or(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %or = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 11
  %14 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %or, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 15
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %bf.clear)
  %15 = icmp ult i8 %bf.clear, 7
  br i1 %15, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #4
  %phi.bo = shl i8 %bf.lshr, 4
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 101, %bf.clear
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.headc37d_or, i32 0, i32 %conv
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %17)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %depth.0 = phi i8 [ %phi.bo, %do.end ], [ %switch.load, %switch.lookup ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %19, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %21
  br i1 %cmp.not.i, label %sw.epilog.do.body31_crit_edge, label %if.then.i

sw.epilog.do.body31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

if.then.i:                                        ; preds = %sw.epilog
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %23(ptr noundef %11, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body31_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body31_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

do.body31:                                        ; preds = %if.then.i.do.body31_crit_edge, %sw.epilog.do.body31_crit_edge
  %24 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %25, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %26 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 8196
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool34.not = icmp ult i32 %add, 16384
  br i1 %tobool34.not, label %do.body31.if.end89_crit_edge, label %do.end54, !prof !67

do.body31.if.end89_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

do.end54:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end89

if.end89:                                         ; preds = %do.end54, %do.body31.if.end89_crit_edge
  %27 = and i32 %add, 15364
  %28 = or i32 %27, 262144
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %30, %32
  br i1 %cmp.not, label %if.end89.if.end132_crit_edge, label %do.end126, !prof !67

if.end89.if.end132_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

do.end126:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end132

if.end132:                                        ; preds = %do.end126, %if.end89.if.end132_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %cmp145.not = icmp ult ptr %34, %36
  br i1 %cmp145.not, label %if.end132.if.end170_crit_edge, label %do.end164, !prof !67

if.end132.if.end170_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end170

do.end164:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end170

if.end170:                                        ; preds = %do.end164, %if.end132.if.end170_crit_edge
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %41 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %51 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %handle, align 4
  %name187 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %name187 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name187, align 8
  tail call void (ptr, ptr, ...) %46(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %50, i32 noundef %52, ptr noundef %54, i32 noundef %sub.ptr.sub, i32 noundef %28, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc37d_or) #4
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %56, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %28, ptr %56, align 4
  %58 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load204 = load i8, ptr %or, align 8
  %59 = and i8 %bf.load204, 3
  %60 = lshr i8 %bf.load204, 5
  %61 = and i8 %60, 4
  %62 = lshr i8 %bf.load204, 3
  %63 = and i8 %62, 8
  %or215389 = or i8 %59, %depth.0
  %or223390 = or i8 %or215389, %61
  %or227391 = or i8 %or223390, %63
  %conv229 = zext i8 %or227391 to i32
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %seg.i, align 8
  %cmp234.not = icmp ult ptr %64, %66
  br i1 %cmp234.not, label %if.end170.if.end259_crit_edge, label %do.end253, !prof !67

if.end170.if.end259_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end259

do.end253:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end259

if.end259:                                        ; preds = %do.end253, %if.end170.if.end259_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp273.not = icmp ult ptr %68, %70
  br i1 %cmp273.not, label %if.end259.if.end298_crit_edge, label %do.end292, !prof !67

if.end259.if.end298_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end298

do.end292:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end298

if.end298:                                        ; preds = %do.end292, %if.end259.if.end298_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast316 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast317 = ptrtoint ptr %74 to i32
  %sub.ptr.sub318 = sub i32 %sub.ptr.lhs.cast316, %sub.ptr.rhs.cast317
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
  %name330 = getelementptr inbounds %struct.nvif_object, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %name330 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name330, align 8
  %85 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %handle, align 4
  %87 = ptrtoint ptr %name187 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name187, align 8
  tail call void (ptr, ptr, ...) %80(ptr noundef %mem, ptr noundef nonnull @.str.29, ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %sub.ptr.sub318, i32 noundef %conv229) #4
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr339 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr339, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv229, ptr %90, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end298, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end298 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @head907d_olut_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !14, !16, !17, !18, !20, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 95, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.headc37d_dither, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.headc37d_curs_clr, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 114, i32 2}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 118, i32 2}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 132, i32 2}
!16 = !{ptr @__func__.headc37d_curs_set, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 149, i32 2}
!20 = !{ptr @__func__.headc37d_view, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 264, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 268, i32 2}
!25 = !{ptr @headc37d, !26, !"headc37d", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 284, i32 1}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 220, i32 2}
!29 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.headc37d_mode, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 237, i32 2}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 238, i32 2}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 240, i32 2}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 243, i32 2}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 247, i32 2}
!45 = !{ptr @__func__.headc37d_olut_set, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 185, i32 2}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__func__.headc37d_olut_clr, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 171, i32 2}
!52 = !{ptr @__func__.headc37d_procamp, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 74, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__func__.headc37d_or, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc37d.c", i32 55, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i8 0, i8 2}
