; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/head827d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head827d.c"
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

@head827d = dso_local constant { %struct.nv50_head_func, [44 x i8] } { %struct.nv50_head_func { ptr @head507d_view, ptr @head507d_mode, ptr @head507d_olut, ptr null, i8 0, i32 256, ptr @head827d_olut_set, ptr @head827d_olut_clr, ptr @head507d_core_calc, ptr @head827d_core_set, ptr @head507d_core_clr, ptr @head507d_curs_layout, ptr @head507d_curs_format, ptr @head827d_curs_set, ptr @head827d_curs_clr, ptr @head507d_base, ptr @head507d_ovly, ptr @head507d_dither, ptr @head507d_procamp, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head827d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.head827d_olut_set = private unnamed_addr constant [18 x i8] c"head827d_olut_set\00", align 1
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_BASE_LUT_LO(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_BASE_LUT_HI(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_CONTEXT_DMA_LUT(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.head827d_olut_clr = private unnamed_addr constant [18 x i8] c"head827d_olut_clr\00", align 1
@__func__.head827d_core_set = private unnamed_addr constant [18 x i8] c"head827d_core_set\00", align 1
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_OFFSET(i, 0)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_SIZE(i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_STORAGE(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_PARAMS(i)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_CONTEXT_DMAS_ISO(i, 0)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_VIEWPORT_POINT_IN(i, 0)\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.head827d_curs_set = private unnamed_addr constant [18 x i8] c"head827d_curs_set\00", align 1
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_CONTROL_CURSOR(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_OFFSET_CURSOR(i)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827D_HEAD_SET_CONTEXT_DMA_CURSOR(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.head827d_curs_clr = private unnamed_addr constant [18 x i8] c"head827d_curs_clr\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"head827d\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 150, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 137, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 145, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 83, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 86, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 104, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 58, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/head827d.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 69, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @head827d, ptr @.str, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @head827d to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_view(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_mode(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head507d_olut(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head827d_olut_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body5

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body5_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.do.body5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
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
  %add7 = add i32 %mul, 2112
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !46

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.2) #2
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
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !46

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !46

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head827d_olut_set) #2
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
  br i1 %cmp218.not, label %if.end175.if.end243_crit_edge, label %do.end237, !prof !46

if.end175.if.end243_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end243

do.end237:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end243

if.end243:                                        ; preds = %do.end237, %if.end175.if.end243_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp257.not = icmp ult ptr %61, %63
  br i1 %cmp257.not, label %if.end243.if.end282_crit_edge, label %do.end276, !prof !46

if.end243.if.end282_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end282

do.end276:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub302, i32 noundef %or211) #2
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
  br i1 %cmp343.not, label %if.end282.if.end368_crit_edge, label %do.end362, !prof !46

if.end282.if.end368_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end368

do.end362:                                        ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end368

if.end368:                                        ; preds = %do.end362, %if.end282.if.end368_crit_edge
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i, align 4
  %cmp382.not = icmp ult ptr %90, %92
  br i1 %cmp382.not, label %if.end368.if.end407_crit_edge, label %do.end401, !prof !46

if.end368.if.end407_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end407

do.end401:                                        ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %102(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %106, i32 noundef %108, ptr noundef %110, i32 noundef %sub.ptr.sub427, i32 noundef %conv338) #2
  %111 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur.i, align 4
  %incdec.ptr448 = getelementptr i32, ptr %112, i32 1
  store ptr %incdec.ptr448, ptr %cur.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv338, ptr %112, align 4
  %add458 = add i32 %mul, 2140
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add458)
  %tobool461.not = icmp ult i32 %add458, 4096
  br i1 %tobool461.not, label %if.end407.if.end516_crit_edge, label %do.end481, !prof !46

if.end407.if.end516_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end516

do.end481:                                        ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end516

if.end516:                                        ; preds = %do.end481, %if.end407.if.end516_crit_edge
  %114 = and i32 %add458, 3164
  %115 = or i32 %114, 262144
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %seg.i, align 8
  %cmp541.not = icmp ult ptr %117, %119
  br i1 %cmp541.not, label %if.end516.if.end566_crit_edge, label %do.end560, !prof !46

if.end516.if.end566_crit_edge:                    ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end566

do.end560:                                        ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end566

if.end566:                                        ; preds = %do.end560, %if.end516.if.end566_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i, align 4
  %cmp580.not = icmp ult ptr %121, %123
  br i1 %cmp580.not, label %if.end566.if.end605_crit_edge, label %do.end599, !prof !46

if.end566.if.end605_crit_edge:                    ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end605

do.end599:                                        ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %133(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %137, i32 noundef %139, ptr noundef %141, i32 noundef %sub.ptr.sub625, i32 noundef %115, i32 noundef %add458, i32 noundef 1, ptr noundef nonnull @__func__.head827d_olut_set) #2
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
  br i1 %cmp662.not, label %if.end605.if.end687_crit_edge, label %do.end681, !prof !46

if.end605.if.end687_crit_edge:                    ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end687

do.end681:                                        ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end687

if.end687:                                        ; preds = %do.end681, %if.end605.if.end687_crit_edge
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %152 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %end.i, align 4
  %cmp701.not = icmp ult ptr %151, %153
  br i1 %cmp701.not, label %if.end687.if.end726_crit_edge, label %do.end720, !prof !46

if.end687.if.end726_crit_edge:                    ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end726

do.end720:                                        ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %163(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %167, i32 noundef %169, ptr noundef %171, i32 noundef %sub.ptr.sub746, i32 noundef %146) #2
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
define internal i32 @head827d_olut_clr(ptr nocapture noundef readonly %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
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
  %add = add i32 %mul, 2112
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !46

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.2) #2
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
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !46

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !46

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head827d_olut_clr) #2
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !46

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !46

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #2
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  %add285 = add i32 %mul, 2140
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add285)
  %tobool288.not = icmp ult i32 %add285, 4096
  br i1 %tobool288.not, label %if.end234.if.end343_crit_edge, label %do.end308, !prof !46

if.end234.if.end343_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end343

do.end308:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end343

if.end343:                                        ; preds = %do.end308, %if.end234.if.end343_crit_edge
  %82 = and i32 %add285, 3164
  %83 = or i32 %82, 262144
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp368.not = icmp ult ptr %85, %87
  br i1 %cmp368.not, label %if.end343.if.end393_crit_edge, label %do.end387, !prof !46

if.end343.if.end393_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end393

do.end387:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end343.if.end393_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp407.not = icmp ult ptr %89, %91
  br i1 %cmp407.not, label %if.end393.if.end432_crit_edge, label %do.end426, !prof !46

if.end393.if.end432_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end432

do.end426:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %101(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %sub.ptr.sub452, i32 noundef %83, i32 noundef %add285, i32 noundef 1, ptr noundef nonnull @__func__.head827d_olut_clr) #2
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
  br i1 %cmp487.not, label %if.end432.if.end512_crit_edge, label %do.end506, !prof !46

if.end432.if.end512_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end512

do.end506:                                        ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end512

if.end512:                                        ; preds = %do.end506, %if.end432.if.end512_crit_edge
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i, align 4
  %cmp526.not = icmp ult ptr %117, %119
  br i1 %cmp526.not, label %if.end512.if.end551_crit_edge, label %do.end545, !prof !46

if.end512.if.end551_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end551

do.end545:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %129(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %133, i32 noundef %135, ptr noundef %137, i32 noundef %sub.ptr.sub571, i32 noundef 0) #2
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @head507d_core_calc(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head827d_core_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 9) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
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
  br i1 %tobool8.not, label %do.body6.if.end54_crit_edge, label %do.end, !prof !46

do.body6.if.end54_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end54

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.2) #2
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
  br i1 %cmp.not, label %if.end54.if.end97_crit_edge, label %do.end91, !prof !46

if.end54.if.end97_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end97

do.end91:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.end54.if.end97_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp110.not = icmp ult ptr %30, %32
  br i1 %cmp110.not, label %if.end97.if.end135_crit_edge, label %do.end129, !prof !46

if.end97.if.end135_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end135

do.end129:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head827d_core_set) #2
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
  br i1 %cmp178.not, label %if.end135.if.end203_crit_edge, label %do.end197, !prof !46

if.end135.if.end203_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end203

do.end197:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end203

if.end203:                                        ; preds = %do.end197, %if.end135.if.end203_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %cmp217.not = icmp ult ptr %60, %62
  br i1 %cmp217.not, label %if.end203.if.end242_crit_edge, label %do.end236, !prof !46

if.end203.if.end242_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end242

do.end236:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %72(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %76, i32 noundef %78, ptr noundef %80, i32 noundef %sub.ptr.sub262, i32 noundef %conv173) #2
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr283 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr283, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv173, ptr %82, align 4
  %add380 = add i32 %mul, 2152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add380)
  %tobool425.not = icmp ult i32 %add380, 4096
  br i1 %tobool425.not, label %if.end242.if.end480_crit_edge, label %do.end445, !prof !46

if.end242.if.end480_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end480

do.end445:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end480

if.end480:                                        ; preds = %do.end445, %if.end242.if.end480_crit_edge
  %84 = and i32 %add380, 3176
  %85 = or i32 %84, 1048576
  %86 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur.i, align 4
  %88 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %seg.i, align 8
  %cmp505.not = icmp ult ptr %87, %89
  br i1 %cmp505.not, label %if.end480.if.end530_crit_edge, label %do.end524, !prof !46

if.end480.if.end530_crit_edge:                    ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end530

do.end524:                                        ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end530

if.end530:                                        ; preds = %do.end524, %if.end480.if.end530_crit_edge
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i, align 4
  %cmp544.not = icmp ult ptr %91, %93
  br i1 %cmp544.not, label %if.end530.if.end569_crit_edge, label %do.end563, !prof !46

if.end530.if.end569_crit_edge:                    ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end569

do.end563:                                        ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end569

if.end569:                                        ; preds = %do.end563, %if.end530.if.end569_crit_edge
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast587 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast588 = ptrtoint ptr %97 to i32
  %sub.ptr.sub589 = sub i32 %sub.ptr.lhs.cast587, %sub.ptr.rhs.cast588
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
  %name601 = getelementptr inbounds %struct.nvif_object, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %name601 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name601, align 8
  %108 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %handle, align 4
  %110 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %103(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %107, i32 noundef %109, ptr noundef %111, i32 noundef %sub.ptr.sub589, i32 noundef %85, i32 noundef %add380, i32 noundef 4, ptr noundef nonnull @__func__.head827d_core_set) #2
  %112 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cur.i, align 4
  %incdec.ptr612 = getelementptr i32, ptr %113, i32 1
  store ptr %incdec.ptr612, ptr %cur.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %85, ptr %113, align 4
  %w = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 8
  %115 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %w, align 8
  %117 = and i16 %116, 32767
  %and622 = zext i16 %117 to i32
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 9
  %118 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %h, align 2
  %120 = and i16 %119, 32767
  %and626 = zext i16 %120 to i32
  %shl627 = shl nuw nsw i32 %and626, 16
  %or628 = or i32 %shl627, %and622
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %seg.i, align 8
  %cmp634.not = icmp ult ptr %121, %123
  br i1 %cmp634.not, label %if.end569.if.end659_crit_edge, label %do.end653, !prof !46

if.end569.if.end659_crit_edge:                    ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end659

do.end653:                                        ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end659

if.end659:                                        ; preds = %do.end653, %if.end569.if.end659_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %cmp673.not = icmp ult ptr %125, %127
  br i1 %cmp673.not, label %if.end659.if.end698_crit_edge, label %do.end692, !prof !46

if.end659.if.end698_crit_edge:                    ; preds = %if.end659
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end698

do.end692:                                        ; preds = %if.end659
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end698

if.end698:                                        ; preds = %do.end692, %if.end659.if.end698_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast716 = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast717 = ptrtoint ptr %131 to i32
  %sub.ptr.sub718 = sub i32 %sub.ptr.lhs.cast716, %sub.ptr.rhs.cast717
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
  %name730 = getelementptr inbounds %struct.nvif_object, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %name730 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name730, align 8
  %142 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %handle, align 4
  %144 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %137(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %141, i32 noundef %143, ptr noundef %145, i32 noundef %sub.ptr.sub718, i32 noundef %or628) #2
  %146 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cur.i, align 4
  %incdec.ptr739 = getelementptr i32, ptr %147, i32 1
  store ptr %incdec.ptr739, ptr %cur.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or628, ptr %147, align 4
  %blockh = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 4
  %149 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load748 = load i16, ptr %blockh, align 2
  %150 = lshr i16 %bf.load748, 4
  %151 = and i16 %150, 15
  %conv750 = zext i16 %151 to i32
  %pitch = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 5
  %152 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %152)
  %bf.load754 = load i32, ptr %pitch, align 8
  %153 = and i32 %bf.load754, 261888
  %or760 = or i32 %153, %conv750
  %154 = lshr i32 %bf.load754, 12
  %155 = and i32 %154, 261888
  %or768 = or i32 %or760, %155
  %bf.lshr771 = lshr i16 %bf.load748, 8
  %156 = and i16 %bf.lshr771, 1
  %157 = zext i16 %156 to i32
  %shl776 = shl nuw nsw i32 %157, 20
  %or777 = or i32 %or768, %shl776
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %seg.i, align 8
  %cmp783.not = icmp ult ptr %158, %160
  br i1 %cmp783.not, label %if.end698.if.end808_crit_edge, label %do.end802, !prof !46

if.end698.if.end808_crit_edge:                    ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end808

do.end802:                                        ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end808

if.end808:                                        ; preds = %do.end802, %if.end698.if.end808_crit_edge
  %161 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cur.i, align 4
  %163 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i, align 4
  %cmp822.not = icmp ult ptr %162, %164
  br i1 %cmp822.not, label %if.end808.if.end847_crit_edge, label %do.end841, !prof !46

if.end808.if.end847_crit_edge:                    ; preds = %if.end808
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end847

do.end841:                                        ; preds = %if.end808
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end847

if.end847:                                        ; preds = %do.end841, %if.end808.if.end847_crit_edge
  %165 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cur.i, align 4
  %167 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast865 = ptrtoint ptr %166 to i32
  %sub.ptr.rhs.cast866 = ptrtoint ptr %168 to i32
  %sub.ptr.sub867 = sub i32 %sub.ptr.lhs.cast865, %sub.ptr.rhs.cast866
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
  %name879 = getelementptr inbounds %struct.nvif_object, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %name879 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name879, align 8
  %179 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %handle, align 4
  %181 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %174(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %178, i32 noundef %180, ptr noundef %182, i32 noundef %sub.ptr.sub867, i32 noundef %or777) #2
  %183 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cur.i, align 4
  %incdec.ptr888 = getelementptr i32, ptr %184, i32 1
  store ptr %incdec.ptr888, ptr %cur.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or777, ptr %184, align 4
  %format = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 3
  %186 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %format, align 1
  %conv897 = zext i8 %187 to i32
  %shl899 = shl nuw nsw i32 %conv897, 8
  %188 = load ptr, ptr %cur.i, align 4
  %189 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %seg.i, align 8
  %cmp907.not = icmp ult ptr %188, %190
  br i1 %cmp907.not, label %if.end847.if.end932_crit_edge, label %do.end926, !prof !46

if.end847.if.end932_crit_edge:                    ; preds = %if.end847
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end932

do.end926:                                        ; preds = %if.end847
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end932

if.end932:                                        ; preds = %do.end926, %if.end847.if.end932_crit_edge
  %191 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %end.i, align 4
  %cmp946.not = icmp ult ptr %192, %194
  br i1 %cmp946.not, label %if.end932.if.end971_crit_edge, label %do.end965, !prof !46

if.end932.if.end971_crit_edge:                    ; preds = %if.end932
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end971

do.end965:                                        ; preds = %if.end932
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end971

if.end971:                                        ; preds = %do.end965, %if.end932.if.end971_crit_edge
  %195 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cur.i, align 4
  %197 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast989 = ptrtoint ptr %196 to i32
  %sub.ptr.rhs.cast990 = ptrtoint ptr %198 to i32
  %sub.ptr.sub991 = sub i32 %sub.ptr.lhs.cast989, %sub.ptr.rhs.cast990
  %199 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mem, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %205 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %client, align 4
  %name1003 = getelementptr inbounds %struct.nvif_object, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %name1003 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name1003, align 8
  %209 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %handle, align 4
  %211 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %204(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %208, i32 noundef %210, ptr noundef %212, i32 noundef %sub.ptr.sub991, i32 noundef %shl899) #2
  %213 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1012 = getelementptr i32, ptr %214, i32 1
  store ptr %incdec.ptr1012, ptr %cur.i, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %shl899, ptr %214, align 4
  %handle1021 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 1
  %216 = ptrtoint ptr %handle1021 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %handle1021, align 4
  %218 = load ptr, ptr %cur.i, align 4
  %219 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %seg.i, align 8
  %cmp1030.not = icmp ult ptr %218, %220
  br i1 %cmp1030.not, label %if.end971.if.end1055_crit_edge, label %do.end1049, !prof !46

if.end971.if.end1055_crit_edge:                   ; preds = %if.end971
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1055

do.end1049:                                       ; preds = %if.end971
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1055

if.end1055:                                       ; preds = %do.end1049, %if.end971.if.end1055_crit_edge
  %221 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cur.i, align 4
  %223 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %end.i, align 4
  %cmp1069.not = icmp ult ptr %222, %224
  br i1 %cmp1069.not, label %if.end1055.if.end1094_crit_edge, label %do.end1088, !prof !46

if.end1055.if.end1094_crit_edge:                  ; preds = %if.end1055
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1094

do.end1088:                                       ; preds = %if.end1055
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end1094

if.end1094:                                       ; preds = %do.end1088, %if.end1055.if.end1094_crit_edge
  %225 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cur.i, align 4
  %227 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1112 = ptrtoint ptr %226 to i32
  %sub.ptr.rhs.cast1113 = ptrtoint ptr %228 to i32
  %sub.ptr.sub1114 = sub i32 %sub.ptr.lhs.cast1112, %sub.ptr.rhs.cast1113
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
  %name1126 = getelementptr inbounds %struct.nvif_object, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %name1126 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %name1126, align 8
  %239 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %handle, align 4
  %241 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %234(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %238, i32 noundef %240, ptr noundef %242, i32 noundef %sub.ptr.sub1114, i32 noundef %217) #2
  %243 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1135 = getelementptr i32, ptr %244, i32 1
  store ptr %incdec.ptr1135, ptr %cur.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %217, ptr %244, align 4
  %add1145 = add i32 %mul, 2240
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1145)
  %tobool1149.not = icmp ult i32 %add1145, 4096
  br i1 %tobool1149.not, label %if.end1094.if.end1204_crit_edge, label %do.end1169, !prof !46

if.end1094.if.end1204_crit_edge:                  ; preds = %if.end1094
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1204

do.end1169:                                       ; preds = %if.end1094
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end1204

if.end1204:                                       ; preds = %do.end1169, %if.end1094.if.end1204_crit_edge
  %246 = and i32 %add1145, 3264
  %247 = or i32 %246, 262144
  %248 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cur.i, align 4
  %250 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %seg.i, align 8
  %cmp1230.not = icmp ult ptr %249, %251
  br i1 %cmp1230.not, label %if.end1204.if.end1255_crit_edge, label %do.end1249, !prof !46

if.end1204.if.end1255_crit_edge:                  ; preds = %if.end1204
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1255

do.end1249:                                       ; preds = %if.end1204
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1255

if.end1255:                                       ; preds = %do.end1249, %if.end1204.if.end1255_crit_edge
  %252 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %cur.i, align 4
  %254 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %end.i, align 4
  %cmp1269.not = icmp ult ptr %253, %255
  br i1 %cmp1269.not, label %if.end1255.if.end1294_crit_edge, label %do.end1288, !prof !46

if.end1255.if.end1294_crit_edge:                  ; preds = %if.end1255
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1294

do.end1288:                                       ; preds = %if.end1255
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end1294

if.end1294:                                       ; preds = %do.end1288, %if.end1255.if.end1294_crit_edge
  %256 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cur.i, align 4
  %258 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1312 = ptrtoint ptr %257 to i32
  %sub.ptr.rhs.cast1313 = ptrtoint ptr %259 to i32
  %sub.ptr.sub1314 = sub i32 %sub.ptr.lhs.cast1312, %sub.ptr.rhs.cast1313
  %260 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mem, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %266 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %client, align 4
  %name1326 = getelementptr inbounds %struct.nvif_object, ptr %267, i32 0, i32 2
  %268 = ptrtoint ptr %name1326 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %name1326, align 8
  %270 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %handle, align 4
  %272 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %265(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %269, i32 noundef %271, ptr noundef %273, i32 noundef %sub.ptr.sub1314, i32 noundef %247, i32 noundef %add1145, i32 noundef 1, ptr noundef nonnull @__func__.head827d_core_set) #2
  %274 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1338 = getelementptr i32, ptr %275, i32 1
  store ptr %incdec.ptr1338, ptr %cur.i, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %247, ptr %275, align 4
  %x = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 6
  %277 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %x, align 4
  %279 = and i16 %278, 32767
  %and1348 = zext i16 %279 to i32
  %y = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 7
  %280 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %y, align 2
  %282 = and i16 %281, 32767
  %and1352 = zext i16 %282 to i32
  %shl1353 = shl nuw nsw i32 %and1352, 16
  %or1354 = or i32 %shl1353, %and1348
  %283 = load ptr, ptr %cur.i, align 4
  %284 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %seg.i, align 8
  %cmp1360.not = icmp ult ptr %283, %285
  br i1 %cmp1360.not, label %if.end1294.if.end1385_crit_edge, label %do.end1379, !prof !46

if.end1294.if.end1385_crit_edge:                  ; preds = %if.end1294
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1385

do.end1379:                                       ; preds = %if.end1294
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1385

if.end1385:                                       ; preds = %do.end1379, %if.end1294.if.end1385_crit_edge
  %286 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %cur.i, align 4
  %288 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %end.i, align 4
  %cmp1399.not = icmp ult ptr %287, %289
  br i1 %cmp1399.not, label %if.end1385.if.end1424_crit_edge, label %do.end1418, !prof !46

if.end1385.if.end1424_crit_edge:                  ; preds = %if.end1385
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1424

do.end1418:                                       ; preds = %if.end1385
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end1424

if.end1424:                                       ; preds = %do.end1418, %if.end1385.if.end1424_crit_edge
  %290 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cur.i, align 4
  %292 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1442 = ptrtoint ptr %291 to i32
  %sub.ptr.rhs.cast1443 = ptrtoint ptr %293 to i32
  %sub.ptr.sub1444 = sub i32 %sub.ptr.lhs.cast1442, %sub.ptr.rhs.cast1443
  %294 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %mem, align 8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %297, align 4
  %300 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %client, align 4
  %name1456 = getelementptr inbounds %struct.nvif_object, ptr %301, i32 0, i32 2
  %302 = ptrtoint ptr %name1456 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %name1456, align 8
  %304 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %handle, align 4
  %306 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %299(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %303, i32 noundef %305, ptr noundef %307, i32 noundef %sub.ptr.sub1444, i32 noundef %or1354) #2
  %308 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1465 = getelementptr i32, ptr %309, i32 1
  store ptr %incdec.ptr1465, ptr %cur.i, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %or1354, ptr %309, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1424, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1424 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_core_clr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_layout(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_format(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head827d_curs_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body5

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body5_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.do.body5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
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
  %add7 = add i32 %mul, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !46

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.2) #2
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
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !46

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !46

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head827d_curs_set) #2
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
  br i1 %cmp227.not, label %if.end175.if.end252_crit_edge, label %do.end246, !prof !46

if.end175.if.end252_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end252

do.end246:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end252

if.end252:                                        ; preds = %do.end246, %if.end175.if.end252_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp266.not = icmp ult ptr %63, %65
  br i1 %cmp266.not, label %if.end252.if.end291_crit_edge, label %do.end285, !prof !46

if.end252.if.end291_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end291

do.end285:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %75(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %sub.ptr.sub311, i32 noundef %or217) #2
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
  br i1 %cmp350.not, label %if.end291.if.end375_crit_edge, label %do.end369, !prof !46

if.end291.if.end375_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end375

do.end369:                                        ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end375

if.end375:                                        ; preds = %do.end369, %if.end291.if.end375_crit_edge
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %93 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i, align 4
  %cmp389.not = icmp ult ptr %92, %94
  br i1 %cmp389.not, label %if.end375.if.end414_crit_edge, label %do.end408, !prof !46

if.end375.if.end414_crit_edge:                    ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end414

do.end408:                                        ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %104(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %108, i32 noundef %110, ptr noundef %112, i32 noundef %sub.ptr.sub434, i32 noundef %conv345) #2
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %incdec.ptr455 = getelementptr i32, ptr %114, i32 1
  store ptr %incdec.ptr455, ptr %cur.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv345, ptr %114, align 4
  %add465 = add i32 %mul, 2204
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add465)
  %tobool468.not = icmp ult i32 %add465, 4096
  br i1 %tobool468.not, label %if.end414.if.end523_crit_edge, label %do.end488, !prof !46

if.end414.if.end523_crit_edge:                    ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end523

do.end488:                                        ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end523

if.end523:                                        ; preds = %do.end488, %if.end414.if.end523_crit_edge
  %116 = and i32 %add465, 3228
  %117 = or i32 %116, 262144
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur.i, align 4
  %120 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %seg.i, align 8
  %cmp548.not = icmp ult ptr %119, %121
  br i1 %cmp548.not, label %if.end523.if.end573_crit_edge, label %do.end567, !prof !46

if.end523.if.end573_crit_edge:                    ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end573

do.end567:                                        ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end573

if.end573:                                        ; preds = %do.end567, %if.end523.if.end573_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %cmp587.not = icmp ult ptr %123, %125
  br i1 %cmp587.not, label %if.end573.if.end612_crit_edge, label %do.end606, !prof !46

if.end573.if.end612_crit_edge:                    ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end612

do.end606:                                        ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end612

if.end612:                                        ; preds = %do.end606, %if.end573.if.end612_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast630 = ptrtoint ptr %127 to i32
  %sub.ptr.rhs.cast631 = ptrtoint ptr %129 to i32
  %sub.ptr.sub632 = sub i32 %sub.ptr.lhs.cast630, %sub.ptr.rhs.cast631
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
  %name644 = getelementptr inbounds %struct.nvif_object, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %name644 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name644, align 8
  %140 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %handle, align 4
  %142 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %135(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %sub.ptr.sub632, i32 noundef %117, i32 noundef %add465, i32 noundef 1, ptr noundef nonnull @__func__.head827d_curs_set) #2
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %incdec.ptr655 = getelementptr i32, ptr %145, i32 1
  store ptr %incdec.ptr655, ptr %cur.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %117, ptr %145, align 4
  %handle664 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 1
  %147 = ptrtoint ptr %handle664 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %handle664, align 4
  %149 = load ptr, ptr %cur.i, align 4
  %150 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %seg.i, align 8
  %cmp669.not = icmp ult ptr %149, %151
  br i1 %cmp669.not, label %if.end612.if.end694_crit_edge, label %do.end688, !prof !46

if.end612.if.end694_crit_edge:                    ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end694

do.end688:                                        ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end694

if.end694:                                        ; preds = %do.end688, %if.end612.if.end694_crit_edge
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end.i, align 4
  %cmp708.not = icmp ult ptr %153, %155
  br i1 %cmp708.not, label %if.end694.if.end733_crit_edge, label %do.end727, !prof !46

if.end694.if.end733_crit_edge:                    ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end733

do.end727:                                        ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end733

if.end733:                                        ; preds = %do.end727, %if.end694.if.end733_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast751 = ptrtoint ptr %157 to i32
  %sub.ptr.rhs.cast752 = ptrtoint ptr %159 to i32
  %sub.ptr.sub753 = sub i32 %sub.ptr.lhs.cast751, %sub.ptr.rhs.cast752
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
  %name765 = getelementptr inbounds %struct.nvif_object, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %name765 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %name765, align 8
  %170 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %handle, align 4
  %172 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %165(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %169, i32 noundef %171, ptr noundef %173, i32 noundef %sub.ptr.sub753, i32 noundef %148) #2
  %174 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cur.i, align 4
  %incdec.ptr774 = getelementptr i32, ptr %175, i32 1
  store ptr %incdec.ptr774, ptr %cur.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %148, ptr %175, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end733, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end733 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head827d_curs_clr(ptr nocapture noundef readonly %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
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
  %add = add i32 %mul, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !46

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.2) #2
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
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !46

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !46

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head827d_curs_clr) #2
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
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !46

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !46

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 83886080) #2
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 83886080, ptr %80, align 4
  %add285 = add i32 %mul, 2204
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add285)
  %tobool288.not = icmp ult i32 %add285, 4096
  br i1 %tobool288.not, label %if.end234.if.end343_crit_edge, label %do.end308, !prof !46

if.end234.if.end343_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end343

do.end308:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end343

if.end343:                                        ; preds = %do.end308, %if.end234.if.end343_crit_edge
  %82 = and i32 %add285, 3228
  %83 = or i32 %82, 262144
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp368.not = icmp ult ptr %85, %87
  br i1 %cmp368.not, label %if.end343.if.end393_crit_edge, label %do.end387, !prof !46

if.end343.if.end393_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end393

do.end387:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end343.if.end393_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp407.not = icmp ult ptr %89, %91
  br i1 %cmp407.not, label %if.end393.if.end432_crit_edge, label %do.end426, !prof !46

if.end393.if.end432_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end432

do.end426:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %101(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %sub.ptr.sub452, i32 noundef %83, i32 noundef %add285, i32 noundef 1, ptr noundef nonnull @__func__.head827d_curs_clr) #2
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
  br i1 %cmp487.not, label %if.end432.if.end512_crit_edge, label %do.end506, !prof !46

if.end432.if.end512_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end512

do.end506:                                        ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end512

if.end512:                                        ; preds = %do.end506, %if.end432.if.end512_crit_edge
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i, align 4
  %cmp526.not = icmp ult ptr %117, %119
  br i1 %cmp526.not, label %if.end512.if.end551_crit_edge, label %do.end545, !prof !46

if.end512.if.end551_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end551

do.end545:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.5) #2
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
  tail call void (ptr, ptr, ...) %129(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %133, i32 noundef %135, ptr noundef %137, i32 noundef %sub.ptr.sub571, i32 noundef 0) #2
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_base(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_ovly(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_dither(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_procamp(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @head827d, !1, !"head827d", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 150, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 137, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.head827d_olut_set, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 145, i32 2}
!15 = !{ptr @__func__.head827d_olut_clr, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 120, i32 2}
!17 = !{ptr @__func__.head827d_core_set, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 83, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 86, i32 2}
!22 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 104, i32 2}
!29 = !{ptr @__func__.head827d_curs_set, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 58, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 69, i32 2}
!35 = !{ptr @__func__.head827d_curs_clr, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head827d.c", i32 39, i32 2}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 2000, i32 1}
