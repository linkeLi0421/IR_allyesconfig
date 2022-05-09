; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/headc57d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/headc57d.c"
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
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@headc57d = dso_local constant { %struct.nv50_head_func, [44 x i8] } { %struct.nv50_head_func { ptr @headc37d_view, ptr @headc57d_mode, ptr @headc57d_olut, ptr @head907d_ilut_check, i8 1, i32 1024, ptr @headc57d_olut_set, ptr @headc57d_olut_clr, ptr null, ptr null, ptr null, ptr @head917d_curs_layout, ptr @headc37d_curs_format, ptr @headc37d_curs_set, ptr @headc37d_curs_clr, ptr null, ptr null, ptr @headc37d_dither, ptr @headc57d_procamp, ptr @headc57d_or, ptr @headc37d_static_wndw_map }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/headc57d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.headc57d_mode = private unnamed_addr constant [14 x i8] c"headc57d_mode\00", align 1
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_RASTER_SIZE(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_RASTER_SYNC_END(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_RASTER_BLANK_END(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_RASTER_BLANK_START(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x2074 + (i * 0x400)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x2008 + (i * 0x400)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_PIXEL_CLOCK_FREQUENCY(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_PIXEL_CLOCK_FREQUENCY_MAX(i)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_HEAD_USAGE_BOUNDS(i)\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.headc57d_olut_set = private unnamed_addr constant [18 x i8] c"headc57d_olut_set\00", align 1
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_OLUT_CONTROL(i)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_OLUT_FP_NORM_SCALE(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_CONTEXT_DMA_OLUT(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_OFFSET_OLUT(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.headc57d_olut_clr = private unnamed_addr constant [18 x i8] c"headc57d_olut_clr\00", align 1
@__func__.headc57d_procamp = private unnamed_addr constant [17 x i8] c"headc57d_procamp\00", align 1
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_PROCAMP(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.headc57d_or = private unnamed_addr constant [12 x i8] c"headc57d_or\00", align 1
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_CONTROL_OUTPUT_RESOURCE(i)\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.headc57d_or = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"@P\10PP@P", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 1024]
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"headc57d\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 235, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 199, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 216, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 217, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 219, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 222, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 226, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 107, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 76, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 55, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"switch.table.headc57d_or\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @headc57d, ptr @.str, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.headc57d_or], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headc57d to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.headc57d_or to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_view(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc57d_mode(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #1 align 64 {
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
  br i1 %tobool123.not, label %do.body5.if.end178_crit_edge, label %do.end143, !prof !50

do.body5.if.end178_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

do.end143:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp196.not, label %if.end178.if.end221_crit_edge, label %do.end215, !prof !50

if.end178.if.end221_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end221

do.end215:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end221

if.end221:                                        ; preds = %do.end215, %if.end178.if.end221_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp234.not = icmp ult ptr %30, %32
  br i1 %cmp234.not, label %if.end221.if.end259_crit_edge, label %do.end253, !prof !50

if.end221.if.end259_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end259

do.end253:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add81, i32 noundef 4, ptr noundef nonnull @__func__.headc57d_mode) #4
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
  br i1 %cmp305.not, label %if.end259.if.end330_crit_edge, label %do.end324, !prof !50

if.end259.if.end330_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end330

do.end324:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end330

if.end330:                                        ; preds = %do.end324, %if.end259.if.end330_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %cmp344.not = icmp ult ptr %65, %67
  br i1 %cmp344.not, label %if.end330.if.end369_crit_edge, label %do.end363, !prof !50

if.end330.if.end369_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end369

do.end363:                                        ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %77(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %81, i32 noundef %83, ptr noundef %85, i32 noundef %sub.ptr.sub389, i32 noundef %or299) #4
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
  br i1 %cmp433.not, label %if.end369.if.end458_crit_edge, label %do.end452, !prof !50

if.end369.if.end458_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end458

do.end452:                                        ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end458

if.end458:                                        ; preds = %do.end452, %if.end369.if.end458_crit_edge
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %cmp472.not = icmp ult ptr %99, %101
  br i1 %cmp472.not, label %if.end458.if.end497_crit_edge, label %do.end491, !prof !50

if.end458.if.end497_crit_edge:                    ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end497

do.end491:                                        ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %111(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %115, i32 noundef %117, ptr noundef %119, i32 noundef %sub.ptr.sub517, i32 noundef %or427) #4
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
  br i1 %cmp561.not, label %if.end497.if.end586_crit_edge, label %do.end580, !prof !50

if.end497.if.end586_crit_edge:                    ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end586

do.end580:                                        ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end586

if.end586:                                        ; preds = %do.end580, %if.end497.if.end586_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp600.not = icmp ult ptr %133, %135
  br i1 %cmp600.not, label %if.end586.if.end625_crit_edge, label %do.end619, !prof !50

if.end586.if.end625_crit_edge:                    ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end625

do.end619:                                        ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %145(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %sub.ptr.sub645, i32 noundef %or555) #4
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
  br i1 %cmp689.not, label %if.end625.if.end714_crit_edge, label %do.end708, !prof !50

if.end625.if.end714_crit_edge:                    ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end714

do.end708:                                        ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end714

if.end714:                                        ; preds = %do.end708, %if.end625.if.end714_crit_edge
  %166 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cur.i, align 4
  %168 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %end.i, align 4
  %cmp728.not = icmp ult ptr %167, %169
  br i1 %cmp728.not, label %if.end714.if.end753_crit_edge, label %do.end747, !prof !50

if.end714.if.end753_crit_edge:                    ; preds = %if.end714
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end753

do.end747:                                        ; preds = %if.end714
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %179(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %183, i32 noundef %185, ptr noundef %187, i32 noundef %sub.ptr.sub773, i32 noundef %or683) #4
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
  br i1 %tobool807.not, label %if.end753.if.end862_crit_edge, label %do.end827, !prof !50

if.end753.if.end862_crit_edge:                    ; preds = %if.end753
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end862

do.end827:                                        ; preds = %if.end753
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp887.not, label %if.end862.if.end912_crit_edge, label %do.end906, !prof !50

if.end862.if.end912_crit_edge:                    ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end912

do.end906:                                        ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end912

if.end912:                                        ; preds = %do.end906, %if.end862.if.end912_crit_edge
  %197 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cur.i, align 4
  %199 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %end.i, align 4
  %cmp926.not = icmp ult ptr %198, %200
  br i1 %cmp926.not, label %if.end912.if.end951_crit_edge, label %do.end945, !prof !50

if.end912.if.end951_crit_edge:                    ; preds = %if.end912
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end951

do.end945:                                        ; preds = %if.end912
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %210(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %214, i32 noundef %216, ptr noundef %218, i32 noundef %sub.ptr.sub971, i32 noundef %192, i32 noundef %add804, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_mode) #4
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
  br i1 %cmp1012.not, label %if.end951.if.end1037_crit_edge, label %do.end1031, !prof !50

if.end951.if.end1037_crit_edge:                   ; preds = %if.end951
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1037

do.end1031:                                       ; preds = %if.end951
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end1037

if.end1037:                                       ; preds = %do.end1031, %if.end951.if.end1037_crit_edge
  %229 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %cur.i, align 4
  %231 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %end.i, align 4
  %cmp1051.not = icmp ult ptr %230, %232
  br i1 %cmp1051.not, label %if.end1037.if.end1076_crit_edge, label %do.end1070, !prof !50

if.end1037.if.end1076_crit_edge:                  ; preds = %if.end1037
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1076

do.end1070:                                       ; preds = %if.end1037
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %242(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %246, i32 noundef %248, ptr noundef %250, i32 noundef %sub.ptr.sub1096, i32 noundef %or1007) #4
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
  br i1 %tobool1130.not, label %if.end1076.if.end1185_crit_edge, label %do.end1150, !prof !50

if.end1076.if.end1185_crit_edge:                  ; preds = %if.end1076
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1185

do.end1150:                                       ; preds = %if.end1076
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp1210.not, label %if.end1185.if.end1235_crit_edge, label %do.end1229, !prof !50

if.end1185.if.end1235_crit_edge:                  ; preds = %if.end1185
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1235

do.end1229:                                       ; preds = %if.end1185
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end1235

if.end1235:                                       ; preds = %do.end1229, %if.end1185.if.end1235_crit_edge
  %260 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cur.i, align 4
  %262 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %end.i, align 4
  %cmp1249.not = icmp ult ptr %261, %263
  br i1 %cmp1249.not, label %if.end1235.if.end1274_crit_edge, label %do.end1268, !prof !50

if.end1235.if.end1274_crit_edge:                  ; preds = %if.end1235
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1274

do.end1268:                                       ; preds = %if.end1235
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %273(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %277, i32 noundef %279, ptr noundef %281, i32 noundef %sub.ptr.sub1294, i32 noundef %255, i32 noundef %add1127, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_mode) #4
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
  %286 = load i8, ptr %mode, align 4, !range !51
  %287 = zext i8 %286 to i32
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %seg.i, align 8
  %cmp1331.not = icmp ult ptr %288, %290
  br i1 %cmp1331.not, label %if.end1274.if.end1356_crit_edge, label %do.end1350, !prof !50

if.end1274.if.end1356_crit_edge:                  ; preds = %if.end1274
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1356

do.end1350:                                       ; preds = %if.end1274
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end1356

if.end1356:                                       ; preds = %do.end1350, %if.end1274.if.end1356_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %293 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %end.i, align 4
  %cmp1370.not = icmp ult ptr %292, %294
  br i1 %cmp1370.not, label %if.end1356.if.end1395_crit_edge, label %do.end1389, !prof !50

if.end1356.if.end1395_crit_edge:                  ; preds = %if.end1356
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1395

do.end1389:                                       ; preds = %if.end1356
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %304(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %308, i32 noundef %310, ptr noundef %312, i32 noundef %sub.ptr.sub1415, i32 noundef %287) #4
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
  br i1 %tobool1449.not, label %if.end1395.if.end1504_crit_edge, label %do.end1469, !prof !50

if.end1395.if.end1504_crit_edge:                  ; preds = %if.end1395
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1504

do.end1469:                                       ; preds = %if.end1395
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp1529.not, label %if.end1504.if.end1554_crit_edge, label %do.end1548, !prof !50

if.end1504.if.end1554_crit_edge:                  ; preds = %if.end1504
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1554

do.end1548:                                       ; preds = %if.end1504
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end1554

if.end1554:                                       ; preds = %do.end1548, %if.end1504.if.end1554_crit_edge
  %322 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %cur.i, align 4
  %324 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %end.i, align 4
  %cmp1568.not = icmp ult ptr %323, %325
  br i1 %cmp1568.not, label %if.end1554.if.end1593_crit_edge, label %do.end1587, !prof !50

if.end1554.if.end1593_crit_edge:                  ; preds = %if.end1554
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1593

do.end1587:                                       ; preds = %if.end1554
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %335(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %339, i32 noundef %341, ptr noundef %343, i32 noundef %sub.ptr.sub1613, i32 noundef %317, i32 noundef %add1446, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_mode) #4
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
  br i1 %cmp1653.not, label %if.end1593.if.end1678_crit_edge, label %do.end1672, !prof !50

if.end1593.if.end1678_crit_edge:                  ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1678

do.end1672:                                       ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end1678

if.end1678:                                       ; preds = %do.end1672, %if.end1593.if.end1678_crit_edge
  %353 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %end.i, align 4
  %cmp1692.not = icmp ult ptr %354, %356
  br i1 %cmp1692.not, label %if.end1678.if.end1717_crit_edge, label %do.end1711, !prof !50

if.end1678.if.end1717_crit_edge:                  ; preds = %if.end1678
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1717

do.end1711:                                       ; preds = %if.end1678
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %366(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %370, i32 noundef %372, ptr noundef %374, i32 noundef %sub.ptr.sub1737, i32 noundef %349) #4
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
  br i1 %tobool1771.not, label %if.end1717.if.end1826_crit_edge, label %do.end1791, !prof !50

if.end1717.if.end1826_crit_edge:                  ; preds = %if.end1717
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1826

do.end1791:                                       ; preds = %if.end1717
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp1851.not, label %if.end1826.if.end1876_crit_edge, label %do.end1870, !prof !50

if.end1826.if.end1876_crit_edge:                  ; preds = %if.end1826
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1876

do.end1870:                                       ; preds = %if.end1826
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end1876

if.end1876:                                       ; preds = %do.end1870, %if.end1826.if.end1876_crit_edge
  %384 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %cur.i, align 4
  %386 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %end.i, align 4
  %cmp1890.not = icmp ult ptr %385, %387
  br i1 %cmp1890.not, label %if.end1876.if.end1915_crit_edge, label %do.end1909, !prof !50

if.end1876.if.end1915_crit_edge:                  ; preds = %if.end1876
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1915

do.end1909:                                       ; preds = %if.end1876
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %397(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %401, i32 noundef %403, ptr noundef %405, i32 noundef %sub.ptr.sub1935, i32 noundef %379, i32 noundef %add1768, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_mode) #4
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
  br i1 %cmp1976.not, label %if.end1915.if.end2001_crit_edge, label %do.end1995, !prof !50

if.end1915.if.end2001_crit_edge:                  ; preds = %if.end1915
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2001

do.end1995:                                       ; preds = %if.end1915
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end2001

if.end2001:                                       ; preds = %do.end1995, %if.end1915.if.end2001_crit_edge
  %415 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %cur.i, align 4
  %417 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %end.i, align 4
  %cmp2015.not = icmp ult ptr %416, %418
  br i1 %cmp2015.not, label %if.end2001.if.end2040_crit_edge, label %do.end2034, !prof !50

if.end2001.if.end2040_crit_edge:                  ; preds = %if.end2001
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2040

do.end2034:                                       ; preds = %if.end2001
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %428(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %432, i32 noundef %434, ptr noundef %436, i32 noundef %sub.ptr.sub2060, i32 noundef %411) #4
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
  br i1 %tobool2094.not, label %if.end2040.if.end2149_crit_edge, label %do.end2114, !prof !50

if.end2040.if.end2149_crit_edge:                  ; preds = %if.end2040
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2149

do.end2114:                                       ; preds = %if.end2040
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp2174.not, label %if.end2149.if.end2199_crit_edge, label %do.end2193, !prof !50

if.end2149.if.end2199_crit_edge:                  ; preds = %if.end2149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2199

do.end2193:                                       ; preds = %if.end2149
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end2199

if.end2199:                                       ; preds = %do.end2193, %if.end2149.if.end2199_crit_edge
  %446 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %cur.i, align 4
  %448 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %end.i, align 4
  %cmp2213.not = icmp ult ptr %447, %449
  br i1 %cmp2213.not, label %if.end2199.if.end2238_crit_edge, label %do.end2232, !prof !50

if.end2199.if.end2238_crit_edge:                  ; preds = %if.end2199
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2238

do.end2232:                                       ; preds = %if.end2199
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %459(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %463, i32 noundef %465, ptr noundef %467, i32 noundef %sub.ptr.sub2258, i32 noundef %441, i32 noundef %add2091, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_mode) #4
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
  br i1 %cmp2293.not, label %if.end2238.if.end2318_crit_edge, label %do.end2312, !prof !50

if.end2238.if.end2318_crit_edge:                  ; preds = %if.end2238
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2318

do.end2312:                                       ; preds = %if.end2238
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end2318

if.end2318:                                       ; preds = %do.end2312, %if.end2238.if.end2318_crit_edge
  %474 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %cur.i, align 4
  %476 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %end.i, align 4
  %cmp2332.not = icmp ult ptr %475, %477
  br i1 %cmp2332.not, label %if.end2318.if.end2357_crit_edge, label %do.end2351, !prof !50

if.end2318.if.end2357_crit_edge:                  ; preds = %if.end2318
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2357

do.end2351:                                       ; preds = %if.end2318
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %487(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %491, i32 noundef %493, ptr noundef %495, i32 noundef %sub.ptr.sub2377, i32 noundef 4372) #4
  %496 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2398 = getelementptr i32, ptr %497, i32 1
  store ptr %incdec.ptr2398, ptr %cur.i, align 4
  %498 = ptrtoint ptr %497 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 4372, ptr %497, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2357, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2357 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @headc57d_olut(ptr nocapture noundef readnone %head, ptr nocapture noundef %asyh, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.return_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 256, label %entry.if.end_crit_edge26
    i32 1024, label %entry.if.end_crit_edge27
  ]

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge26, %entry.if.end_crit_edge27
  %mode = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %1, i32 6)
  %bf.load = load i48, ptr %mode, align 8
  %bf.clear = and i48 %bf.load, -121
  %bf.set = or i48 %bf.clear, 16
  store i48 %bf.set, ptr %mode, align 8
  %size5 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %size5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load6 = load i16, ptr %size5, align 2
  %bf.clear7 = and i16 %bf.load6, 25
  %bf.set12 = or i16 %bf.clear7, -32606
  store i16 %bf.set12, ptr %size5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp13 = icmp eq i32 %size, 256
  %load = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 4
  %headc57d_olut_load_8.headc57d_olut_load = select i1 %cmp13, ptr @headc57d_olut_load_8, ptr @headc57d_olut_load
  %3 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %headc57d_olut_load_8.headc57d_olut_load, ptr %load, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head907d_ilut_check(i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc57d_olut_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #1 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %15, i32 5
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
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 5) #4
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
  %add.ptr4.i = getelementptr i32, ptr %21, i32 5
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add81 = add i32 %mul, 8832
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add81)
  %tobool123.not = icmp ult i32 %add81, 16384
  br i1 %tobool123.not, label %do.body5.if.end178_crit_edge, label %do.end143, !prof !50

do.body5.if.end178_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

do.end143:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end178

if.end178:                                        ; preds = %do.end143, %do.body5.if.end178_crit_edge
  %23 = and i32 %add81, 16000
  %24 = or i32 %23, 1048576
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp196.not = icmp ult ptr %26, %28
  br i1 %cmp196.not, label %if.end178.if.end221_crit_edge, label %do.end215, !prof !50

if.end178.if.end221_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end221

do.end215:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end221

if.end221:                                        ; preds = %do.end215, %if.end178.if.end221_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp234.not = icmp ult ptr %30, %32
  br i1 %cmp234.not, label %if.end221.if.end259_crit_edge, label %do.end253, !prof !50

if.end221.if.end259_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end259

do.end253:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add81, i32 noundef 4, ptr noundef nonnull @__func__.headc57d_olut_set) #4
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %output_mode = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %output_mode to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %output_mode, align 2
  %55 = lshr i16 %bf.load, 1
  %56 = and i16 %55, 1
  %57 = zext i16 %56 to i32
  %mode = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %58, i32 6)
  %bf.load297 = load i48, ptr %mode, align 8
  %59 = trunc i48 %bf.load297 to i32
  %60 = lshr i32 %59, 1
  %61 = and i32 %60, 12
  %or304886 = or i32 %61, %57
  %bf.lshr307 = lshr i16 %bf.load, 5
  %conv308 = zext i16 %bf.lshr307 to i32
  %shl310 = shl nuw nsw i32 %conv308, 8
  %or311 = or i32 %or304886, %shl310
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %seg.i, align 8
  %cmp317.not = icmp ult ptr %62, %64
  br i1 %cmp317.not, label %if.end259.if.end342_crit_edge, label %do.end336, !prof !50

if.end259.if.end342_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end342

do.end336:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end342

if.end342:                                        ; preds = %do.end336, %if.end259.if.end342_crit_edge
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %cmp356.not = icmp ult ptr %66, %68
  br i1 %cmp356.not, label %if.end342.if.end381_crit_edge, label %do.end375, !prof !50

if.end342.if.end381_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end381

do.end375:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.7) #4
  br label %if.end381

if.end381:                                        ; preds = %do.end375, %if.end342.if.end381_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast399 = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast400 = ptrtoint ptr %72 to i32
  %sub.ptr.sub401 = sub i32 %sub.ptr.lhs.cast399, %sub.ptr.rhs.cast400
  %73 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mem, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client, align 4
  %name413 = getelementptr inbounds %struct.nvif_object, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %name413 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name413, align 8
  %83 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %handle, align 4
  %85 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %78(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %82, i32 noundef %84, ptr noundef %86, i32 noundef %sub.ptr.sub401, i32 noundef %or311) #4
  %87 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cur.i, align 4
  %incdec.ptr422 = getelementptr i32, ptr %88, i32 1
  store ptr %incdec.ptr422, ptr %cur.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or311, ptr %88, align 4
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %seg.i, align 8
  %cmp434.not = icmp ult ptr %90, %92
  br i1 %cmp434.not, label %if.end381.if.end459_crit_edge, label %do.end453, !prof !50

if.end381.if.end459_crit_edge:                    ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end459

do.end453:                                        ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end459

if.end459:                                        ; preds = %do.end453, %if.end381.if.end459_crit_edge
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i, align 4
  %cmp473.not = icmp ult ptr %94, %96
  br i1 %cmp473.not, label %if.end459.if.end498_crit_edge, label %do.end492, !prof !50

if.end459.if.end498_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end498

do.end492:                                        ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.7) #4
  br label %if.end498

if.end498:                                        ; preds = %do.end492, %if.end459.if.end498_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast516 = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast517 = ptrtoint ptr %100 to i32
  %sub.ptr.sub518 = sub i32 %sub.ptr.lhs.cast516, %sub.ptr.rhs.cast517
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
  %name530 = getelementptr inbounds %struct.nvif_object, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %name530 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %name530, align 8
  %111 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %handle, align 4
  %113 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %106(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %110, i32 noundef %112, ptr noundef %114, i32 noundef %sub.ptr.sub518, i32 noundef -1) #4
  %115 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cur.i, align 4
  %incdec.ptr539 = getelementptr i32, ptr %116, i32 1
  store ptr %incdec.ptr539, ptr %cur.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %116, align 4
  %handle548 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %handle548 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle548, align 4
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %seg.i, align 8
  %cmp553.not = icmp ult ptr %120, %122
  br i1 %cmp553.not, label %if.end498.if.end578_crit_edge, label %do.end572, !prof !50

if.end498.if.end578_crit_edge:                    ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end578

do.end572:                                        ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end578

if.end578:                                        ; preds = %do.end572, %if.end498.if.end578_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %cmp592.not = icmp ult ptr %124, %126
  br i1 %cmp592.not, label %if.end578.if.end617_crit_edge, label %do.end611, !prof !50

if.end578.if.end617_crit_edge:                    ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end617

do.end611:                                        ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.7) #4
  br label %if.end617

if.end617:                                        ; preds = %do.end611, %if.end578.if.end617_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast635 = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast636 = ptrtoint ptr %130 to i32
  %sub.ptr.sub637 = sub i32 %sub.ptr.lhs.cast635, %sub.ptr.rhs.cast636
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
  %name649 = getelementptr inbounds %struct.nvif_object, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %name649 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name649, align 8
  %141 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %handle, align 4
  %143 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %136(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %140, i32 noundef %142, ptr noundef %144, i32 noundef %sub.ptr.sub637, i32 noundef %119) #4
  %145 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cur.i, align 4
  %incdec.ptr658 = getelementptr i32, ptr %146, i32 1
  store ptr %incdec.ptr658, ptr %cur.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %119, ptr %146, align 4
  %148 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %148, i32 6)
  %bf.load667 = load i48, ptr %mode, align 8
  %bf.lshr668 = lshr i48 %bf.load667, 16
  %conv671 = trunc i48 %bf.lshr668 to i32
  %149 = load ptr, ptr %cur.i, align 4
  %150 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %seg.i, align 8
  %cmp676.not = icmp ult ptr %149, %151
  br i1 %cmp676.not, label %if.end617.if.end701_crit_edge, label %do.end695, !prof !50

if.end617.if.end701_crit_edge:                    ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end701

do.end695:                                        ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end701

if.end701:                                        ; preds = %do.end695, %if.end617.if.end701_crit_edge
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end.i, align 4
  %cmp715.not = icmp ult ptr %153, %155
  br i1 %cmp715.not, label %if.end701.if.end740_crit_edge, label %do.end734, !prof !50

if.end701.if.end740_crit_edge:                    ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end740

do.end734:                                        ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.7) #4
  br label %if.end740

if.end740:                                        ; preds = %do.end734, %if.end701.if.end740_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast758 = ptrtoint ptr %157 to i32
  %sub.ptr.rhs.cast759 = ptrtoint ptr %159 to i32
  %sub.ptr.sub760 = sub i32 %sub.ptr.lhs.cast758, %sub.ptr.rhs.cast759
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
  %name772 = getelementptr inbounds %struct.nvif_object, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %name772 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %name772, align 8
  %170 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %handle, align 4
  %172 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name276, align 8
  tail call void (ptr, ptr, ...) %165(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %169, i32 noundef %171, ptr noundef %173, i32 noundef %sub.ptr.sub760, i32 noundef %conv671) #4
  %174 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cur.i, align 4
  %incdec.ptr781 = getelementptr i32, ptr %175, i32 1
  store ptr %incdec.ptr781, ptr %cur.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv671, ptr %175, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end740, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end740 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc57d_olut_clr(ptr nocapture noundef readonly %head) #1 align 64 {
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
  %add = add i32 %mul, 8840
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool7.not = icmp ult i32 %add, 16384
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !50

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 16008
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !50

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !50

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_olut_clr) #4
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !50

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !50

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #4
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
declare dso_local i32 @head917d_curs_layout(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_curs_format(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_curs_set(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_curs_clr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_dither(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headc57d_procamp(ptr nocapture noundef readonly %head, ptr nocapture noundef readnone %asyh) #1 align 64 {
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
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !50

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !50

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !50

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_procamp) #4
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !50

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !50

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #4
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
define internal i32 @headc57d_or(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #1 align 64 {
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
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.headc57d_or, i32 0, i32 %conv
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
  br i1 %tobool34.not, label %do.body31.if.end89_crit_edge, label %do.end54, !prof !50

do.body31.if.end89_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

do.end54:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  br i1 %cmp.not, label %if.end89.if.end132_crit_edge, label %do.end126, !prof !50

if.end89.if.end132_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

do.end126:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end132

if.end132:                                        ; preds = %do.end126, %if.end89.if.end132_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %cmp145.not = icmp ult ptr %34, %36
  br i1 %cmp145.not, label %if.end132.if.end170_crit_edge, label %do.end164, !prof !50

if.end132.if.end170_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end170

do.end164:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.7) #4
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
  tail call void (ptr, ptr, ...) %46(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %50, i32 noundef %52, ptr noundef %54, i32 noundef %sub.ptr.sub, i32 noundef %28, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.headc57d_or) #4
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
  %or215390 = or i8 %59, %depth.0
  %or223391 = or i8 %or215390, %61
  %or227392 = or i8 %or223391, %63
  %or227 = zext i8 %or227392 to i32
  %or229 = or i32 %or227, -67108864
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %seg.i, align 8
  %cmp235.not = icmp ult ptr %64, %66
  br i1 %cmp235.not, label %if.end170.if.end260_crit_edge, label %do.end254, !prof !50

if.end170.if.end260_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end260

do.end254:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.6) #4
  br label %if.end260

if.end260:                                        ; preds = %do.end254, %if.end170.if.end260_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp274.not = icmp ult ptr %68, %70
  br i1 %cmp274.not, label %if.end260.if.end299_crit_edge, label %do.end293, !prof !50

if.end260.if.end299_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end299

do.end293:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.7) #4
  br label %if.end299

if.end299:                                        ; preds = %do.end293, %if.end260.if.end299_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast317 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast318 = ptrtoint ptr %74 to i32
  %sub.ptr.sub319 = sub i32 %sub.ptr.lhs.cast317, %sub.ptr.rhs.cast318
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
  %name331 = getelementptr inbounds %struct.nvif_object, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %name331 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name331, align 8
  %85 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %handle, align 4
  %87 = ptrtoint ptr %name187 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name187, align 8
  tail call void (ptr, ptr, ...) %80(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %sub.ptr.sub319, i32 noundef %or229) #4
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr340 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr340, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or229, ptr %90, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end299, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end299 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @headc37d_static_wndw_map(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @headc57d_olut_load_8(ptr nocapture noundef readonly %in, i32 noundef %size, ptr noundef %mem) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mmioset(ptr noundef %mem, i32 noundef 0, i32 noundef 32) #4
  %add.ptr = getelementptr i8, ptr %mem, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not117 = icmp eq i32 %size, 0
  br i1 %tobool.not117, label %entry.do.body59_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body59

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %dec120.in = phi i32 [ %dec120, %if.end.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  %in.addr.0119 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %in, %entry.while.body_crit_edge ]
  %mem.addr.0118 = phi ptr [ %add.ptr58.3, %if.end.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %dec120 = add i32 %dec120.in, -1
  %0 = ptrtoint ptr %in.addr.0119 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in.addr.0119, align 2
  %green = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.0119, i32 0, i32 1
  %2 = ptrtoint ptr %green to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %green, align 2
  %blue = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.0119, i32 0, i32 2
  %4 = ptrtoint ptr %blue to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blue, align 2
  %incdec.ptr = getelementptr %struct.drm_color_lut, ptr %in.addr.0119, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec120)
  %tobool10.not = icmp eq i32 %dec120, 0
  br i1 %tobool10.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = zext i16 %5 to i32
  %conv2 = zext i16 %3 to i32
  %conv = zext i16 %1 to i32
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %incdec.ptr, align 2
  %conv12 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv12, %conv
  %div111 = lshr i32 %sub, 2
  %green16 = getelementptr %struct.drm_color_lut, ptr %in.addr.0119, i32 1, i32 1
  %8 = ptrtoint ptr %green16 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %green16, align 2
  %conv17 = zext i16 %9 to i32
  %sub20 = sub nsw i32 %conv17, %conv2
  %div21112 = lshr i32 %sub20, 2
  %blue23 = getelementptr %struct.drm_color_lut, ptr %in.addr.0119, i32 1, i32 2
  %10 = ptrtoint ptr %blue23 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %blue23, align 2
  %conv24 = zext i16 %11 to i32
  %sub27 = sub nsw i32 %conv24, %conv6
  %div28113 = lshr i32 %sub27, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %bi.0 = phi i32 [ %div28113, %if.then ], [ 0, %while.body.if.end_crit_edge ]
  %gi.0 = phi i32 [ %div21112, %if.then ], [ 0, %while.body.if.end_crit_edge ]
  %ri.0 = phi i32 [ %div111, %if.then ], [ 0, %while.body.if.end_crit_edge ]
  %12 = trunc i32 %ri.0 to i16
  %13 = trunc i32 %gi.0 to i16
  %14 = trunc i32 %bi.0 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %15 = tail call i16 @llvm.bswap.i16(i16 %1)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.0118, i16 %15) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %16 = tail call i16 @llvm.bswap.i16(i16 %3)
  %add.ptr47 = getelementptr i8, ptr %mem.addr.0118, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47, i16 %16) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %17 = tail call i16 @llvm.bswap.i16(i16 %5)
  %add.ptr57 = getelementptr i8, ptr %mem.addr.0118, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr57, i16 %17) #4, !srcloc !53
  %add.ptr58 = getelementptr i8, ptr %mem.addr.0118, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %conv36.1 = add i16 %1, %12
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv36.1)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58, i16 %18) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %conv46.1 = add i16 %3, %13
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv46.1)
  %add.ptr47.1 = getelementptr i8, ptr %mem.addr.0118, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47.1, i16 %19) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %conv56.1 = add i16 %5, %14
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv56.1)
  %add.ptr57.1 = getelementptr i8, ptr %mem.addr.0118, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr57.1, i16 %20) #4, !srcloc !53
  %add.ptr58.1 = getelementptr i8, ptr %mem.addr.0118, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %21 = shl i16 %12, 1
  %conv36.2 = add i16 %21, %1
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv36.2)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58.1, i16 %22) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %23 = shl i16 %13, 1
  %conv46.2 = add i16 %23, %3
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv46.2)
  %add.ptr47.2 = getelementptr i8, ptr %mem.addr.0118, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47.2, i16 %24) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %25 = shl i16 %14, 1
  %conv56.2 = add i16 %25, %5
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv56.2)
  %add.ptr57.2 = getelementptr i8, ptr %mem.addr.0118, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr57.2, i16 %26) #4, !srcloc !53
  %add.ptr58.2 = getelementptr i8, ptr %mem.addr.0118, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %27 = mul i16 %12, 3
  %conv36.3 = add i16 %27, %1
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv36.3)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58.2, i16 %28) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %29 = mul i16 %13, 3
  %conv46.3 = add i16 %29, %3
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv46.3)
  %add.ptr47.3 = getelementptr i8, ptr %mem.addr.0118, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47.3, i16 %30) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %31 = mul i16 %14, 3
  %conv56.3 = add i16 %31, %5
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv56.3)
  %add.ptr57.3 = getelementptr i8, ptr %mem.addr.0118, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr57.3, i16 %32) #4, !srcloc !53
  %add.ptr58.3 = getelementptr i8, ptr %mem.addr.0118, i32 32
  br i1 %tobool10.not, label %if.end.do.body59_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.do.body59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body59

do.body59:                                        ; preds = %if.end.do.body59_crit_edge, %entry.do.body59_crit_edge
  %mem.addr.0.lcssa = phi ptr [ %add.ptr, %entry.do.body59_crit_edge ], [ %add.ptr58.3, %if.end.do.body59_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %add.ptr62 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -8
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr62) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.0.lcssa, i16 %33) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %add.ptr71 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -6
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr71) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %add.ptr75 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr75, i16 %34) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %add.ptr81 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -4
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr81) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %add.ptr85 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr85, i16 %35) #4, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @headc57d_olut_load(ptr nocapture noundef readonly %in, i32 noundef %size, ptr noundef %mem) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mmioset(ptr noundef %mem, i32 noundef 0, i32 noundef 32) #4
  %add.ptr = getelementptr i8, ptr %mem, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not54 = icmp eq i32 %size, 0
  br i1 %tobool.not54, label %entry.do.body16_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body16

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %in.addr.057 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %in, %entry.do.body_crit_edge ]
  %size.addr.056 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %size, %entry.do.body_crit_edge ]
  %mem.addr.055 = phi ptr [ %add.ptr15, %do.body.do.body_crit_edge ], [ %add.ptr, %entry.do.body_crit_edge ]
  %dec = add i32 %size.addr.056, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %in.addr.057 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in.addr.057, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.055, i16 %2) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %green = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.057, i32 0, i32 1
  %3 = ptrtoint ptr %green to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %green, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %add.ptr8 = getelementptr i8, ptr %mem.addr.055, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %5) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %blue = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.057, i32 0, i32 2
  %6 = ptrtoint ptr %blue to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blue, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %add.ptr14 = getelementptr i8, ptr %mem.addr.055, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %8) #4, !srcloc !53
  %incdec.ptr = getelementptr %struct.drm_color_lut, ptr %in.addr.057, i32 1
  %add.ptr15 = getelementptr i8, ptr %mem.addr.055, i32 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.do.body16_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body16

do.body16:                                        ; preds = %do.body.do.body16_crit_edge, %entry.do.body16_crit_edge
  %mem.addr.0.lcssa = phi ptr [ %add.ptr, %entry.do.body16_crit_edge ], [ %add.ptr15, %do.body.do.body16_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %add.ptr18 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -8
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.0.lcssa, i16 %9) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %add.ptr26 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -6
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr26) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  %add.ptr30 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 %10) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %add.ptr35 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -4
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  %add.ptr39 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr39, i16 %11) #4, !srcloc !53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !37, !38, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @headc57d, !1, !"headc57d", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 235, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 199, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__func__.headc57d_mode, !3, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !3, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.10, !3, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.11, !3, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.12, !3, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 216, i32 2}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 217, i32 2}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 219, i32 2}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 222, i32 2}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 226, i32 2}
!27 = !{ptr @__func__.headc57d_olut_set, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 107, i32 2}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.21, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__func__.headc57d_olut_clr, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 93, i32 2}
!35 = !{ptr @__func__.headc57d_procamp, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 76, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__func__.headc57d_or, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/dispnv50/headc57d.c", i32 55, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
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
!51 = !{i8 0, i8 2}
!52 = !{i64 2157908127}
!53 = !{i64 5395009}
!54 = !{i64 2157908524}
!55 = !{i64 2157908921}
!56 = !{i64 2157909991}
!57 = !{i64 5395209}
!58 = !{i64 2157910846}
!59 = !{i64 2157911742}
!60 = !{i64 2157912597}
!61 = !{i64 2157913493}
!62 = !{i64 2157914348}
!63 = !{i64 2157914634}
!64 = !{i64 2157915135}
!65 = !{i64 2157915636}
!66 = !{i64 2157916784}
!67 = !{i64 2157917639}
!68 = !{i64 2157918535}
!69 = !{i64 2157919390}
!70 = !{i64 2157920286}
!71 = !{i64 2157921141}
