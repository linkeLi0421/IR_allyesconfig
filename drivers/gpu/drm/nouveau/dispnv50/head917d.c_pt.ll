; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/head917d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head917d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.92, %struct.anon.93, %struct.nv50_head_mode, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.104, %struct.nv50_crc_atom, %struct.anon.105, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.108, %struct.anon.109, %struct.anon.110, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.108 = type { i32, i8, i32, i32 }
%struct.anon.109 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.110 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.107 }
%struct.anon.107 = type { ptr, i64 }
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

@head917d = dso_local constant { %struct.nv50_head_func, [44 x i8] } { %struct.nv50_head_func { ptr @head907d_view, ptr @head907d_mode, ptr @head907d_olut, ptr @head907d_ilut_check, i8 0, i32 1024, ptr @head907d_olut_set, ptr @head907d_olut_clr, ptr @head507d_core_calc, ptr @head907d_core_set, ptr @head907d_core_clr, ptr @head917d_curs_layout, ptr @head507d_curs_format, ptr @head917d_curs_set, ptr @head907d_curs_clr, ptr @head917d_base, ptr @head907d_ovly, ptr @head917d_dither, ptr @head907d_procamp, ptr @head907d_or, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head917d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.head917d_curs_set = private unnamed_addr constant [18 x i8] c"head917d_curs_set\00", align 1
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV917D_HEAD_SET_CONTROL_CURSOR(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV917D_HEAD_SET_OFFSET_CURSOR(i)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV917D_HEAD_SET_CONTEXT_DMA_CURSOR(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.head917d_base = private unnamed_addr constant [14 x i8] c"head917d_base\00", align 1
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s/%08x:%s] %08x: %08x-> NV917D_HEAD_SET_BASE_CHANNEL_USAGE_BOUNDS(i)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.head917d_dither = private unnamed_addr constant [16 x i8] c"head917d_dither\00", align 1
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV917D_HEAD_SET_DITHER_CONTROL(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"head917d\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 118, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 88, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 98, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 73, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/head917d.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 40, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @head917d, ptr @.str, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @head917d to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @head917d_curs_layout(ptr nocapture readnone %head, ptr nocapture noundef readonly %asyw, ptr nocapture noundef %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %4 = add i32 %3, -32
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 27)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb7
    i32 7, label %sw.bb13
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %layout = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %7, i32 6)
  %bf.load = load i48, ptr %layout, align 8
  %bf.clear = and i48 %bf.load, -193
  store i48 %bf.clear, ptr %layout, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %layout3 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %layout3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 6)
  %bf.load4 = load i48, ptr %layout3, align 8
  %bf.clear5 = and i48 %bf.load4, -193
  %bf.set6 = or i48 %bf.clear5, 64
  store i48 %bf.set6, ptr %layout3, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %layout9 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %layout9 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 6)
  %bf.load10 = load i48, ptr %layout9, align 8
  %bf.clear11 = and i48 %bf.load10, -193
  %bf.set12 = or i48 %bf.clear11, 128
  store i48 %bf.set12, ptr %layout9, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %layout15 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %layout15 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 6)
  %bf.load16 = load i48, ptr %layout15, align 8
  %bf.set18 = or i48 %bf.load16, 192
  store i48 %bf.set18, ptr %layout15, align 8
  br label %return

return:                                           ; preds = %sw.bb13, %sw.bb7, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb13 ], [ 0, %sw.bb7 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_view(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_mode(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head907d_olut(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head907d_ilut_check(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_olut_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_olut_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @head507d_core_calc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_core_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_core_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head917d_curs_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #2 align 64 {
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
  %mul = mul i32 %13, 768
  %add7 = add i32 %mul, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !30

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.2) #4
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
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !30

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !30

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.5) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head917d_curs_set) #4
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
  %shl216 = and i32 %58, 201326592
  %or211 = or i32 %shl216, %shl210
  %or217 = or i32 %or211, -2147483648
  %59 = load ptr, ptr %cur.i, align 4
  %60 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seg.i, align 8
  %cmp226.not = icmp ult ptr %59, %61
  br i1 %cmp226.not, label %if.end175.if.end251_crit_edge, label %do.end245, !prof !30

if.end175.if.end251_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end251

do.end245:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end251

if.end251:                                        ; preds = %do.end245, %if.end175.if.end251_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp265.not = icmp ult ptr %63, %65
  br i1 %cmp265.not, label %if.end251.if.end290_crit_edge, label %do.end284, !prof !30

if.end251.if.end290_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end290

do.end284:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.5) #4
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
  tail call void (ptr, ptr, ...) %75(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %sub.ptr.sub310, i32 noundef %or217) #4
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
  br i1 %cmp349.not, label %if.end290.if.end374_crit_edge, label %do.end368, !prof !30

if.end290.if.end374_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end374

do.end368:                                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end374

if.end374:                                        ; preds = %do.end368, %if.end290.if.end374_crit_edge
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %93 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i, align 4
  %cmp388.not = icmp ult ptr %92, %94
  br i1 %cmp388.not, label %if.end374.if.end413_crit_edge, label %do.end407, !prof !30

if.end374.if.end413_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end413

do.end407:                                        ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.5) #4
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
  tail call void (ptr, ptr, ...) %104(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %108, i32 noundef %110, ptr noundef %112, i32 noundef %sub.ptr.sub433, i32 noundef %conv344) #4
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
  br i1 %tobool467.not, label %if.end413.if.end522_crit_edge, label %do.end487, !prof !30

if.end413.if.end522_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end522

do.end487:                                        ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.2) #4
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
  br i1 %cmp547.not, label %if.end522.if.end572_crit_edge, label %do.end566, !prof !30

if.end522.if.end572_crit_edge:                    ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end572

do.end566:                                        ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end572

if.end572:                                        ; preds = %do.end566, %if.end522.if.end572_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %cmp586.not = icmp ult ptr %123, %125
  br i1 %cmp586.not, label %if.end572.if.end611_crit_edge, label %do.end605, !prof !30

if.end572.if.end611_crit_edge:                    ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end611

do.end605:                                        ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #4
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
  tail call void (ptr, ptr, ...) %135(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %sub.ptr.sub631, i32 noundef %117, i32 noundef %add464, i32 noundef 1, ptr noundef nonnull @__func__.head917d_curs_set) #4
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
  br i1 %cmp668.not, label %if.end611.if.end693_crit_edge, label %do.end687, !prof !30

if.end611.if.end693_crit_edge:                    ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end693

do.end687:                                        ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end693

if.end693:                                        ; preds = %do.end687, %if.end611.if.end693_crit_edge
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end.i, align 4
  %cmp707.not = icmp ult ptr %153, %155
  br i1 %cmp707.not, label %if.end693.if.end732_crit_edge, label %do.end726, !prof !30

if.end693.if.end732_crit_edge:                    ; preds = %if.end693
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end732

do.end726:                                        ; preds = %if.end693
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #4
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
  tail call void (ptr, ptr, ...) %165(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %169, i32 noundef %171, ptr noundef %173, i32 noundef %sub.ptr.sub752, i32 noundef %148) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_curs_clr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head917d_base(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #2 align 64 {
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
  %cpp = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cpp, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %15, label %do.end [
    i8 0, label %entry.if.end43_crit_edge
    i8 8, label %entry.sw.epilog_crit_edge
    i8 4, label %sw.bb9
    i8 2, label %sw.bb13
    i8 1, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb17, %sw.bb13, %sw.bb9, %entry.sw.epilog_crit_edge
  %bounds.0 = phi i32 [ 131073, %do.end ], [ 131073, %sw.bb17 ], [ 131329, %sw.bb13 ], [ 131841, %sw.bb9 ], [ 132353, %entry.sw.epilog_crit_edge ]
  br label %if.end43

if.end43:                                         ; preds = %sw.epilog, %entry.if.end43_crit_edge
  %bounds.1 = phi i32 [ %bounds.0, %sw.epilog ], [ 0, %entry.if.end43_crit_edge ]
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
  br i1 %cmp.not.i, label %if.end43.do.body50_crit_edge, label %if.then.i

if.end43.do.body50_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body50

if.then.i:                                        ; preds = %if.end43
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %22(ptr noundef %11, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body50_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body50_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body50

do.body50:                                        ; preds = %if.then.i.do.body50_crit_edge, %if.end43.do.body50_crit_edge
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
  %tobool53.not = icmp ult i32 %add, 4096
  br i1 %tobool53.not, label %do.body50.if.end108_crit_edge, label %do.end73, !prof !30

do.body50.if.end108_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

do.end73:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.2) #4
  br label %if.end108

if.end108:                                        ; preds = %do.end73, %do.body50.if.end108_crit_edge
  %26 = and i32 %add, 4048
  %27 = or i32 %26, 262144
  %28 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur.i, align 4
  %30 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %29, %31
  br i1 %cmp.not, label %if.end108.if.end151_crit_edge, label %do.end145, !prof !30

if.end108.if.end151_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end151

do.end145:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end151

if.end151:                                        ; preds = %do.end145, %if.end108.if.end151_crit_edge
  %32 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur.i, align 4
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i, align 4
  %cmp164.not = icmp ult ptr %33, %35
  br i1 %cmp164.not, label %if.end151.if.end189_crit_edge, label %do.end183, !prof !30

if.end151.if.end189_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end189

do.end183:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #4
  br label %if.end189

if.end189:                                        ; preds = %do.end183, %if.end151.if.end189_crit_edge
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
  %name206 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %52 = ptrtoint ptr %name206 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name206, align 8
  tail call void (ptr, ptr, ...) %45(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %49, i32 noundef %51, ptr noundef %53, i32 noundef %sub.ptr.sub, i32 noundef %27, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head917d_base) #4
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
  %cmp226.not = icmp ult ptr %57, %59
  br i1 %cmp226.not, label %if.end189.if.end251_crit_edge, label %do.end245, !prof !30

if.end189.if.end251_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end251

do.end245:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end251

if.end251:                                        ; preds = %do.end245, %if.end189.if.end251_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp265.not = icmp ult ptr %61, %63
  br i1 %cmp265.not, label %if.end251.if.end290_crit_edge, label %do.end284, !prof !30

if.end251.if.end290_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end290

do.end284:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #4
  br label %if.end290

if.end290:                                        ; preds = %do.end284, %if.end251.if.end290_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast308 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast309 = ptrtoint ptr %67 to i32
  %sub.ptr.sub310 = sub i32 %sub.ptr.lhs.cast308, %sub.ptr.rhs.cast309
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
  %name322 = getelementptr inbounds %struct.nvif_object, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %name322 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name322, align 8
  %78 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle, align 4
  %80 = ptrtoint ptr %name206 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name206, align 8
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub310, i32 noundef %bounds.1) #4
  %82 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur.i, align 4
  %incdec.ptr331 = getelementptr i32, ptr %83, i32 1
  store ptr %incdec.ptr331, ptr %cur.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bounds.1, ptr %83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end290, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end290 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_ovly(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head917d_dither(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #2 align 64 {
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
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1184
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !30

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.2) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 4000
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !30

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !30

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.5) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head917d_dither) #4
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
  br i1 %cmp190.not, label %if.end133.if.end215_crit_edge, label %do.end209, !prof !30

if.end133.if.end215_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end215

do.end209:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end215

if.end215:                                        ; preds = %do.end209, %if.end133.if.end215_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp229.not = icmp ult ptr %63, %65
  br i1 %cmp229.not, label %if.end215.if.end254_crit_edge, label %do.end248, !prof !30

if.end215.if.end254_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end254

do.end248:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.5) #4
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
  tail call void (ptr, ptr, ...) %75(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %sub.ptr.sub274, i32 noundef %conv185) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_procamp(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_or(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !15, !17, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @head917d, !1, !"head917d", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head917d.c", i32 118, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head917d.c", i32 88, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.head917d_curs_set, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head917d.c", i32 98, i32 2}
!15 = !{ptr @__func__.head917d_base, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head917d.c", i32 73, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.head917d_dither, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head917d.c", i32 40, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
