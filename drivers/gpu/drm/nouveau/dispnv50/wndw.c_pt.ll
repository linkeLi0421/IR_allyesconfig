; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/wndw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.142 = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.119, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.119 = type { ptr, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.91 = type { i32, ptr }
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
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_wimm_func = type { ptr, ptr }
%struct.nv50_wndw_ctxdma = type { %struct.list_head, %struct.nvif_object }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.88, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.88 = type { [4 x i8] }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.anon.143 = type { %struct.nv_dma_v0, %union.anon.144 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%union.anon.144 = type { %struct.nv50_dma_v0 }
%struct.nv50_dma_v0 = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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
%struct.dma_fence = type { ptr, ptr, %union.anon.82, i64, i64, i32, %struct.kref, i32 }
%union.anon.82 = type { i64 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.102, %struct.anon.103, %struct.nv50_head_mode, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.114, %struct.nv50_crc_atom, %struct.anon.115, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
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

@nv50_wndw = dso_local constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @nv50_wndw_destroy, ptr @nv50_wndw_reset, ptr null, ptr @nv50_wndw_atomic_duplicate_state, ptr @nv50_wndw_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_plane_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@nv50_cursor_format_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@nv50_wndw_helper = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @nv50_wndw_prepare_fb, ptr @nv50_wndw_cleanup_fb, ptr @nv50_wndw_atomic_check, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.nv50_wndw_new.wndws = private unnamed_addr constant [4 x %struct.anon.142] [%struct.anon.142 { i32 50814, i32 0, ptr @wndwc67e_new }, %struct.anon.142 { i32 50558, i32 0, ptr @wndwc57e_new }, %struct.anon.142 { i32 50046, i32 0, ptr @wndwc37e_new }, %struct.anon.142 zeroinitializer], align 4
@nv50_wndw_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: No supported window class\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv50_wndw_new\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/wndw.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_wndw_new._entry_ptr = internal global ptr @nv50_wndw_new._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_wndw_prepare_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 543, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %s prepare: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_wndw_prepare_fb\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nv50_wndw_prepare_fb._entry_ptr = internal global ptr @nv50_wndw_prepare_fb._entry, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmsFbCtxDma\00", [20 x i8] zeroinitializer }, align 32
@nv50_wndw_cleanup_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 521, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %s cleanup: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_wndw_cleanup_fb\00", [43 x i8] zeroinitializer }, align 32
@nv50_wndw_cleanup_fb._entry_ptr = internal global ptr @nv50_wndw_cleanup_fb._entry, section ".printk_index", align 4
@nv50_wndw_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 448, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %s atomic_check\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nv50_wndw_atomic_check\00", [41 x i8] zeroinitializer }, align 32
@nv50_wndw_atomic_check._entry_ptr = internal global ptr @nv50_wndw_atomic_check._entry, section ".printk_index", align 4
@nv50_wndw_atomic_check_lut.dummy = internal global { %struct.drm_property_blob, [48 x i8] } zeroinitializer, align 32
@nv50_wndw_atomic_check_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 278, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %s acquire\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nv50_wndw_atomic_check_acquire\00", [33 x i8] zeroinitializer }, align 32
@nv50_wndw_atomic_check_acquire._entry_ptr = internal global ptr @nv50_wndw_atomic_check_acquire._entry, section ".printk_index", align 4
@nv50_wndw_atomic_check_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 197, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %s release\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nv50_wndw_atomic_check_release\00", [33 x i8] zeroinitializer }, align 32
@nv50_wndw_atomic_check_release._entry_ptr = internal global ptr @nv50_wndw_atomic_check_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 538982467, i64 808665665, i64 808665688, i64 808669761, i64 808669784, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909199186, i64 1211384385, i64 1211384408, i64 1448695129, i64 1498831189]
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"nv50_wndw\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 686, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [29 x i8] c"nv50_cursor_format_modifiers\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 714, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 752, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"nv50_wndw_helper\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 584, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 815, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 543, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 102, i32 46 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 521, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 448, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 399, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 278, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/wndw.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 197, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @nv50_wndw_atomic_check._entry, ptr @nv50_wndw_atomic_check._entry_ptr, ptr @nv50_wndw_atomic_check_acquire._entry, ptr @nv50_wndw_atomic_check_acquire._entry_ptr, ptr @nv50_wndw_atomic_check_release._entry, ptr @nv50_wndw_atomic_check_release._entry_ptr, ptr @nv50_wndw_cleanup_fb._entry, ptr @nv50_wndw_cleanup_fb._entry_ptr, ptr @nv50_wndw_new._entry, ptr @nv50_wndw_new._entry_ptr, ptr @nv50_wndw_prepare_fb._entry, ptr @nv50_wndw_prepare_fb._entry_ptr, ptr @nv50_wndw, ptr @nv50_cursor_format_modifiers, ptr @.str, ptr @nv50_wndw_helper, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @nv50_wndw_atomic_check_lut.dummy, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_cursor_format_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_helper to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_prepare_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_cleanup_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_atomic_check_lut.dummy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_atomic_check_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wndw_atomic_check_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_wndw_wait_armed(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 12
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %plane = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 5
  %1 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %plane, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %display.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wndw, align 8
  %ntfy_wait_begun = getelementptr inbounds %struct.nv50_wndw_func, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %ntfy_wait_begun to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ntfy_wait_begun, align 4
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sync, align 8
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load1 = load i16, ptr %offset, align 4
  %bf.lshr2 = lshr i16 %bf.load1, 4
  %conv = zext i16 %bf.lshr2 to i32
  %device = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 0, i32 1
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 8
  %call4 = tail call i32 %12(ptr noundef %14, i32 noundef %conv, ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_wndw_flush_clr(ptr noundef %wndw, ptr nocapture noundef %interlock, i1 noundef zeroext %flush, ptr nocapture noundef readonly %asyw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clr1 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 13
  %0 = ptrtoint ptr %clr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clr1, align 4
  br i1 %flush, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %set = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 12
  %2 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %set, align 1
  %phi.bo = xor i8 %3, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i8 [ %phi.bo, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  %and = and i8 %cond, %1
  %4 = and i8 %and, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not = icmp eq i8 %4, 0
  br i1 %bf.cast.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wndw, align 8
  %sema_clr = getelementptr inbounds %struct.nv50_wndw_func, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sema_clr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sema_clr, align 4
  %call = tail call i32 %8(ptr noundef %wndw) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %and)
  %bf.cast7.not = icmp sgt i8 %and, -1
  br i1 %bf.cast7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wndw, align 8
  %ntfy_clr = getelementptr inbounds %struct.nv50_wndw_func, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %ntfy_clr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ntfy_clr, align 4
  %call10 = tail call i32 %12(ptr noundef %wndw) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %13 = and i8 %and, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast15.not = icmp eq i8 %13, 0
  br i1 %bf.cast15.not, label %if.end11.if.end19_crit_edge, label %if.then16

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wndw, align 8
  %xlut_clr = getelementptr inbounds %struct.nv50_wndw_func, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %xlut_clr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xlut_clr, align 4
  %call18 = tail call i32 %17(ptr noundef %wndw) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %18 = and i8 %and, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %bf.cast23.not = icmp eq i8 %18, 0
  br i1 %bf.cast23.not, label %if.end19.if.end27_crit_edge, label %if.then24

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wndw, align 8
  %csc_clr = getelementptr inbounds %struct.nv50_wndw_func, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %csc_clr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csc_clr, align 4
  %call26 = tail call i32 %22(ptr noundef %wndw) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end19.if.end27_crit_edge
  %23 = and i8 %and, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %bf.cast31.not = icmp eq i8 %23, 0
  br i1 %bf.cast31.not, label %if.end27.if.end35_crit_edge, label %if.then32

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wndw, align 8
  %image_clr = getelementptr inbounds %struct.nv50_wndw_func, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %image_clr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %image_clr, align 4
  %call34 = tail call i32 %27(ptr noundef %wndw) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27.if.end35_crit_edge
  %interlock36 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3
  %data = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  %30 = ptrtoint ptr %interlock36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %interlock36, align 4
  %arrayidx = getelementptr i32, ptr %interlock, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %or = or i32 %33, %29
  store i32 %or, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_wndw_flush_set(ptr noundef %wndw, ptr noundef %interlock, ptr noundef %asyw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %image = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8
  %2 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %image, align 8
  %bf.clear3 = and i8 %bf.load, 3
  %bf.set4 = or i8 %bf.clear3, 4
  store i8 %bf.set4, ptr %image, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %set = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 12
  %3 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load5 = load i8, ptr %set, align 1
  %4 = and i8 %bf.load5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not = icmp eq i8 %4, 0
  br i1 %bf.cast.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wndw, align 8
  %sema_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %sema_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sema_set, align 4
  %call = tail call i32 %8(ptr noundef %wndw, ptr noundef %asyw) #8
  %9 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load10.pr = load i8, ptr %set, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %bf.load10 = phi i8 [ %bf.load10.pr, %if.then7 ], [ %bf.load5, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10)
  %bf.cast12.not = icmp sgt i8 %bf.load10, -1
  br i1 %bf.cast12.not, label %if.end8.if.end16_crit_edge, label %if.then13

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wndw, align 8
  %ntfy_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %ntfy_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ntfy_set, align 4
  %call15 = tail call i32 %13(ptr noundef %wndw, ptr noundef %asyw) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8.if.end16_crit_edge
  %14 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load18 = load i8, ptr %set, align 1
  %15 = and i8 %bf.load18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %bf.cast21.not = icmp eq i8 %15, 0
  br i1 %bf.cast21.not, label %if.end16.if.end25_crit_edge, label %if.then22

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wndw, align 8
  %image_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %image_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %image_set, align 4
  %call24 = tail call i32 %19(ptr noundef %wndw, ptr noundef %asyw) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end16.if.end25_crit_edge
  %20 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load27 = load i8, ptr %set, align 1
  %21 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %bf.cast30.not = icmp eq i8 %21, 0
  br i1 %bf.cast30.not, label %if.end25.if.end52_crit_edge, label %if.then31

if.end25.if.end52_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then31:                                        ; preds = %if.end25
  %ilut = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 1
  %22 = ptrtoint ptr %ilut to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ilut, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %if.then31.if.end49_crit_edge, label %if.then33

if.then31.if.end49_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %ilut34 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 6
  %i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 6)
  %bf.load35 = load i48, ptr %i, align 8
  %25 = trunc i48 %bf.load35 to i32
  %26 = lshr i32 %25, 7
  %conv = and i32 %26, 1
  %load = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 2
  %27 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %load, align 8
  %call42 = tail call i32 @nv50_lut_load(ptr noundef %ilut34, i32 noundef %conv, ptr noundef nonnull %23, ptr noundef %28) #8
  %29 = zext i32 %call42 to i48
  %30 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 6)
  %bf.load46 = load i48, ptr %i, align 8
  %bf.shl = shl nuw nsw i48 %29, 8
  %bf.clear47 = and i48 %bf.load46, 255
  %bf.set48 = or i48 %bf.clear47, %bf.shl
  store i48 %bf.set48, ptr %i, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then33, %if.then31.if.end49_crit_edge
  %31 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wndw, align 8
  %xlut_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %xlut_set to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xlut_set, align 4
  %call51 = tail call i32 %34(ptr noundef %wndw, ptr noundef %asyw) #8
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.end25.if.end52_crit_edge
  %35 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load54 = load i8, ptr %set, align 1
  %36 = and i8 %bf.load54, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %bf.cast57.not = icmp eq i8 %36, 0
  br i1 %bf.cast57.not, label %if.end52.if.end61_crit_edge, label %if.then58

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wndw, align 8
  %csc_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %csc_set to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csc_set, align 4
  %call60 = tail call i32 %40(ptr noundef %wndw, ptr noundef %asyw) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end52.if.end61_crit_edge
  %41 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load63 = load i8, ptr %set, align 1
  %42 = and i8 %bf.load63, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %bf.cast66.not = icmp eq i8 %42, 0
  br i1 %bf.cast66.not, label %if.end61.if.end70_crit_edge, label %if.then67

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wndw, align 8
  %scale_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %scale_set to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scale_set, align 4
  %call69 = tail call i32 %46(ptr noundef %wndw, ptr noundef %asyw) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end61.if.end70_crit_edge
  %47 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load72 = load i8, ptr %set, align 1
  %48 = and i8 %bf.load72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %bf.cast74.not = icmp eq i8 %48, 0
  br i1 %bf.cast74.not, label %if.end70.if.end78_crit_edge, label %if.then75

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wndw, align 8
  %blend_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %50, i32 0, i32 21
  %51 = ptrtoint ptr %blend_set to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %blend_set, align 4
  %call77 = tail call i32 %52(ptr noundef %wndw, ptr noundef %asyw) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end70.if.end78_crit_edge
  %53 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load80 = load i8, ptr %set, align 1
  %54 = and i8 %bf.load80, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %bf.cast83.not = icmp eq i8 %54, 0
  br i1 %bf.cast83.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %if.end78
  %bf.clear87 = and i8 %bf.load80, -3
  %55 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %bf.clear87, ptr %set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear87)
  %tobool90.not = icmp eq i8 %bf.clear87, 0
  br i1 %tobool90.not, label %if.then84.if.end95_crit_edge, label %if.then91

if.then84.if.end95_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then91:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %interlock92 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3
  %data = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data, align 4
  %58 = ptrtoint ptr %interlock92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %interlock92, align 4
  %arrayidx94 = getelementptr i32, ptr %interlock, i32 %59
  %60 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx94, align 4
  %or = or i32 %61, %57
  store i32 %or, ptr %arrayidx94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.then84.if.end95_crit_edge
  %wimm = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %wimm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wimm, align 4
  %arrayidx97 = getelementptr i32, ptr %interlock, i32 5
  %64 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx97, align 4
  %or98 = or i32 %65, %63
  store i32 %or98, ptr %arrayidx97, align 4
  %immd = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 1
  %66 = ptrtoint ptr %immd to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %immd, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call99 = tail call i32 %69(ptr noundef %wndw, ptr noundef %asyw) #8
  %70 = ptrtoint ptr %immd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %immd, align 4
  %update = getelementptr inbounds %struct.nv50_wimm_func, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %update, align 4
  %call101 = tail call i32 %73(ptr noundef %wndw, ptr noundef %interlock) #8
  br label %if.end108

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %interlock102 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3
  %data103 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %data103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data103, align 4
  %76 = ptrtoint ptr %interlock102 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %interlock102, align 4
  %arrayidx106 = getelementptr i32, ptr %interlock, i32 %77
  %78 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx106, align 4
  %or107 = or i32 %79, %75
  store i32 %or107, ptr %arrayidx106, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else, %if.end95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_load(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_wndw_ntfy_enable(ptr nocapture noundef %wndw, ptr nocapture noundef %asyw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %plane = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 5
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
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
  %handle = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 4, i32 3
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 4
  %ntfy = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 3
  %10 = ptrtoint ptr %ntfy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ntfy, align 4
  %ntfy3 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 10
  %11 = ptrtoint ptr %ntfy3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ntfy3, align 8
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %offset, align 4
  %bf.shl = shl i16 %12, 4
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %offset, align 4
  %set = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 12
  %14 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load9 = load i8, ptr %set, align 1
  %bf.set11 = or i8 %bf.load9, -128
  store i8 %bf.set11, ptr %set, align 1
  %15 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wndw, align 8
  %ntfy_reset = getelementptr inbounds %struct.nv50_wndw_func, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %ntfy_reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ntfy_reset, align 4
  %sync12 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %sync12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sync12, align 8
  %21 = load i16, ptr %ntfy3, align 8
  %conv = zext i16 %21 to i32
  tail call void %18(ptr noundef %20, i32 noundef %conv) #8
  %22 = ptrtoint ptr %ntfy3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ntfy3, align 8
  %24 = xor i16 %23, 16
  store i16 %24, ptr %ntfy3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_wndw_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr i8, ptr %plane, i32 -12
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not29 = icmp eq ptr %1, %list
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %nv50_wndw_ctxdma_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ctxdma.030 = phi ptr [ %ctxtmp.0, %nv50_wndw_ctxdma_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ctxdma.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ctxtmp.0 = load ptr, ptr %ctxdma.030, align 8
  %object.i = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %ctxdma.030, i32 0, i32 1
  tail call void @nvif_object_dtor(ptr noundef %object.i) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctxdma.030) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.nv50_wndw_ctxdma_del.exit_crit_edge

for.body.nv50_wndw_ctxdma_del.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_ctxdma_del.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ctxdma.030, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %ctxdma.030 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctxdma.030, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %nv50_wndw_ctxdma_del.exit

nv50_wndw_ctxdma_del.exit:                        ; preds = %if.end.i.i.i, %for.body.nv50_wndw_ctxdma_del.exit_crit_edge
  %9 = ptrtoint ptr %ctxdma.030 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %ctxdma.030, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ctxdma.030, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %ctxdma.030) #8
  %cmp.not = icmp eq ptr %ctxtmp.0, %list
  br i1 %cmp.not, label %nv50_wndw_ctxdma_del.exit.for.end_crit_edge, label %nv50_wndw_ctxdma_del.exit.for.body_crit_edge

nv50_wndw_ctxdma_del.exit.for.body_crit_edge:     ; preds = %nv50_wndw_ctxdma_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

nv50_wndw_ctxdma_del.exit.for.end_crit_edge:      ; preds = %nv50_wndw_ctxdma_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %nv50_wndw_ctxdma_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %plane, i32 -40
  %notify = getelementptr i8, ptr %plane, i32 1312
  %call = tail call i32 @nvif_notify_dtor(ptr noundef %notify) #8
  %wimm = getelementptr i8, ptr %plane, i32 984
  tail call void @nv50_dmac_destroy(ptr noundef %wimm) #8
  %wndw17 = getelementptr i8, ptr %plane, i32 656
  tail call void @nv50_dmac_destroy(ptr noundef %wndw17) #8
  %ilut = getelementptr i8, ptr %plane, i32 528
  tail call void @nv50_lut_fini(ptr noundef %ilut) #8
  tail call void @drm_plane_cleanup(ptr noundef %plane) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_wndw_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 368) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !55

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 631, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %funcs = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 14
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %atomic_destroy_state = getelementptr inbounds %struct.drm_plane_funcs, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %atomic_destroy_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %atomic_destroy_state, align 4
  tail call void %6(ptr noundef %plane, ptr noundef nonnull %2) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #8
  %type.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp eq i32 %8, 0
  %cond.i = select i1 %cmp2.i, i32 1, i32 255
  %cond3.i = select i1 %cmp.i, i32 0, i32 %cond.i
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond3.i, ptr %zpos, align 4
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i43 = icmp eq i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i44 = icmp eq i32 %13, 0
  %cond.i45 = select i1 %cmp2.i44, i32 1, i32 255
  %cond3.i46 = select i1 %cmp.i43, i32 0, i32 %cond.i45
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond3.i46, ptr %normalized_zpos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_wndw_atomic_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 368) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i) #8
  %sema = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 4
  %sema2 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 4
  %3 = call ptr @memcpy(ptr %sema, ptr %sema2, i32 16)
  %ntfy = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 3
  %ntfy3 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ntfy3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %ntfy3, align 4
  %6 = ptrtoint ptr %ntfy to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %ntfy, align 4
  %ilut = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %ilut to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ilut, align 4
  %xlut = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 6
  %xlut4 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %xlut, ptr %xlut4, i32 24)
  %csc = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 7
  %csc5 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %csc, ptr %csc5, i32 52)
  %image = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 8
  %image6 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8
  %10 = call ptr @memcpy(ptr %image, ptr %image6, i32 104)
  %point = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 10
  %point7 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %point7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %point7, align 4
  %13 = ptrtoint ptr %point to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %point, align 4
  %clr = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 13
  %14 = ptrtoint ptr %clr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %clr, align 4
  %set = getelementptr inbounds %struct.nv50_wndw_atom, ptr %call7.i, i32 0, i32 12
  %15 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %set, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_wndw_atomic_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #8
  tail call void @kfree(ptr noundef %state) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv50_plane_format_mod_supported(ptr nocapture noundef readonly %plane, i32 noundef %format, i64 noundef %modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %5)
  %cmp = icmp ult i16 %5, 192
  br i1 %cmp, label %if.then, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @drm_format_info(i32 noundef %format) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %tobool.not = icmp eq i32 %format, 0
  br i1 %tobool.not, label %if.then.cleanup20_crit_edge, label %for.cond.preheader

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

for.cond.preheader:                               ; preds = %if.then
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp827.not = icmp eq i8 %7, 0
  br i1 %cmp827.not, label %for.cond.preheader.cleanup20_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup20_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = getelementptr inbounds %struct.drm_format_info, ptr %call3, i32 0, i32 3
  %9 = and i64 %modifier, 1044480
  call void @__sanitizer_cov_trace_const_cmp8(i64 458752, i64 %9)
  %cmp14.not = icmp eq i64 %9, 458752
  %wide.trip.count = zext i8 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr %8, i32 0, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp11.not = icmp eq i8 %11, 4
  %or.cond.not.demorgan = or i1 %cmp14.not, %cmp11.not
  %or.cond.not = xor i1 %or.cond.not.demorgan, true
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next, i32 %wide.trip.count)
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  %or.cond30 = select i1 %or.cond.not, i1 true, i1 %exitcond.not
  br i1 %or.cond30, label %cleanup20.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup20.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %or.cond = or i1 %cmp14.not, %cmp11.not
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup20.loopexit, %for.cond.preheader.cleanup20_crit_edge, %if.then.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi i1 [ true, %entry.cleanup20_crit_edge ], [ false, %if.then.cleanup20_crit_edge ], [ true, %for.cond.preheader.cleanup20_crit_edge ], [ %or.cond, %cleanup20.loopexit ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_wndw_fini(ptr noundef %wndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %notify = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 9
  %call = tail call i32 @nvif_notify_put(ptr noundef %notify) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_wndw_init(ptr noundef %wndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %notify = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 9
  %call = tail call i32 @nvif_notify_get(ptr noundef %notify) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_wndw_new_(ptr noundef %func, ptr noundef %dev, i32 noundef %type, ptr noundef %name, i32 noundef %index, ptr noundef %format, i32 noundef %heads, i32 noundef %interlock_type, i32 noundef %interlock_data, ptr nocapture noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %mmu1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1440) #11
  %7 = ptrtoint ptr %pwndw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %pwndw, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %func, ptr %call7.i.i, align 8
  %id = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %index, ptr %id, align 8
  %interlock = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %interlock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %interlock_type, ptr %interlock, align 4
  %data = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %interlock_data, ptr %data, align 8
  %wndw7 = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 7
  %ctxdma = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %ctxdma to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %wndw7, ptr %ctxdma, align 8
  %list = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end
  %nformat.0 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr i32, ptr %format, i32 %nformat.0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %tobool9.not = icmp eq i32 %16, 0
  %inc = add i32 %nformat.0, 1
  br i1 %tobool9.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %for.end.if.end13_crit_edge, label %if.else

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_private.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %display.i, align 4
  %format_modifiers12 = getelementptr inbounds %struct.nouveau_display, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %format_modifiers12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %format_modifiers12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %for.end.if.end13_crit_edge
  %format_modifiers.0 = phi ptr [ %22, %if.else ], [ @nv50_cursor_format_modifiers, %for.end.if.end13_crit_edge ]
  %plane = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 5
  %call14 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef %plane, i32 noundef %heads, ptr noundef nonnull @nv50_wndw, ptr noundef %format, i32 noundef %nformat.0, ptr noundef %format_modifiers.0, i32 noundef %type, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %index) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %pwndw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwndw, align 4
  tail call void @kfree(ptr noundef %24) #8
  %25 = ptrtoint ptr %pwndw to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pwndw, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %helper_private.i = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 5, i32 18
  %26 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nv50_wndw_helper, ptr %helper_private.i, align 8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %ilut = getelementptr inbounds %struct.nv50_wndw_func, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %ilut to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ilut, align 4
  %tobool20.not = icmp eq ptr %30, null
  br i1 %tobool20.not, label %if.end17.if.end27_crit_edge, label %if.then21

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %if.end17
  %ilut22 = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 6
  %call23 = tail call i32 @nv50_lut_init(ptr noundef %5, ptr noundef %mmu1, ptr noundef %ilut22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %func28 = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 9, i32 6
  %31 = ptrtoint ptr %func28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @nv50_wndw_notify, ptr %func28, align 8
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %blend_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %blend_set to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %blend_set, align 4
  %tobool30.not = icmp eq ptr %35, null
  %type.i103 = getelementptr inbounds %struct.nv50_wndw, ptr %call7.i.i, i32 0, i32 5, i32 16
  %36 = ptrtoint ptr %type.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type.i103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i104 = icmp eq i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2.i105 = icmp eq i32 %37, 0
  %cond.i106 = select i1 %cmp2.i105, i32 1, i32 255
  %cond3.i107 = select i1 %cmp.i104, i32 0, i32 %cond.i106
  br i1 %tobool30.not, label %if.else49, label %if.then31

if.then31:                                        ; preds = %if.end27
  %call35 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %plane, i32 noundef %cond3.i107, i32 noundef 0, i32 noundef 254) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then31
  %call40 = tail call i32 @drm_plane_create_alpha_property(ptr noundef %plane) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %call45 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef %plane, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.if.end57_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else49:                                        ; preds = %if.end27
  %call53 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %plane, i32 noundef %cond3.i107) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else49.if.end57_crit_edge, label %if.else49.cleanup_crit_edge

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else49.if.end57_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end57:                                         ; preds = %if.else49.if.end57_crit_edge, %if.end43.if.end57_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.else49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ 0, %if.end57 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.then21.cleanup_crit_edge ], [ %call35, %if.then31.cleanup_crit_edge ], [ %call40, %if.end38.cleanup_crit_edge ], [ %call45, %if.end43.cleanup_crit_edge ], [ %call53, %if.else49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv50_wndw_notify(ptr nocapture noundef readnone %notify) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_wndw_new(ptr noundef %drm, i32 noundef %type, i32 noundef %index, ptr noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  %sclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
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
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #8
  %10 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !56
  %call4 = call i32 @nvif_object_sclass_get(ptr noundef %9, ptr noundef nonnull %sclass) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end26.thread

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp777.not = icmp eq i32 %call4, 0
  br i1 %cmp777.not, label %for.cond.preheader.if.end26.thread74_crit_edge, label %for.body8.lr.ph

for.cond.preheader.if.end26.thread74_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.thread74

if.end26.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #8
  br label %do.body

for.body8.lr.ph:                                  ; preds = %for.cond.preheader
  %11 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sclass, align 4
  br label %for.body8

if.end26.thread74:                                ; preds = %for.inc.2.if.end26.thread74_crit_edge, %land.rhs.2.if.end26.thread74_crit_edge, %land.rhs.1.if.end26.thread74_crit_edge, %for.cond.preheader.if.end26.thread74_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #8
  br label %do.body

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %j.078 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc.for.body8_crit_edge ]
  %arrayidx11 = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.078
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50814, i32 %14)
  %cmp13 = icmp eq i32 %14, 50814
  br i1 %cmp13, label %land.lhs.true, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body8
  %minver = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.078, i32 1
  %15 = ptrtoint ptr %minver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.not = icmp sgt i32 %16, 0
  br i1 %cmp16.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %maxver = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.078, i32 2
  %17 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp21.not = icmp slt i32 %18, 0
  br i1 %cmp21.not, label %land.lhs.true17.for.inc_crit_edge, label %land.lhs.true17.if.end36_crit_edge

land.lhs.true17.if.end36_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.078, 1
  %exitcond.not = icmp eq i32 %inc, %call4
  br i1 %exitcond.not, label %land.rhs.1, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

land.rhs.1:                                       ; preds = %for.inc
  br i1 %cmp777.not, label %land.rhs.1.if.end26.thread74_crit_edge, label %for.body8.lr.ph.1

land.rhs.1.if.end26.thread74_crit_edge:           ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.thread74

for.body8.lr.ph.1:                                ; preds = %land.rhs.1
  %19 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sclass, align 4
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.inc.1.for.body8.1_crit_edge, %for.body8.lr.ph.1
  %j.078.1 = phi i32 [ 0, %for.body8.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body8.1_crit_edge ]
  %arrayidx11.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.078.1
  %21 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50558, i32 %22)
  %cmp13.1 = icmp eq i32 %22, 50558
  br i1 %cmp13.1, label %land.lhs.true.1, label %for.body8.1.for.inc.1_crit_edge

for.body8.1.for.inc.1_crit_edge:                  ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body8.1
  %minver.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.078.1, i32 1
  %23 = ptrtoint ptr %minver.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %minver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp16.not.1 = icmp sgt i32 %24, 0
  br i1 %cmp16.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true17.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true17.1:                                ; preds = %land.lhs.true.1
  %maxver.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.078.1, i32 2
  %25 = ptrtoint ptr %maxver.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21.not.1 = icmp slt i32 %26, 0
  br i1 %cmp21.not.1, label %land.lhs.true17.1.for.inc.1_crit_edge, label %land.lhs.true17.1.if.end36_crit_edge

land.lhs.true17.1.if.end36_crit_edge:             ; preds = %land.lhs.true17.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true17.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true17.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true17.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.body8.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.078.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %call4
  br i1 %exitcond.1.not, label %land.rhs.2, label %for.inc.1.for.body8.1_crit_edge

for.inc.1.for.body8.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.1

land.rhs.2:                                       ; preds = %for.inc.1
  br i1 %cmp777.not, label %land.rhs.2.if.end26.thread74_crit_edge, label %for.body8.lr.ph.2

land.rhs.2.if.end26.thread74_crit_edge:           ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.thread74

for.body8.lr.ph.2:                                ; preds = %land.rhs.2
  %27 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sclass, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc.2.for.body8.2_crit_edge, %for.body8.lr.ph.2
  %j.078.2 = phi i32 [ 0, %for.body8.lr.ph.2 ], [ %inc.2, %for.inc.2.for.body8.2_crit_edge ]
  %arrayidx11.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.078.2
  %29 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50046, i32 %30)
  %cmp13.2 = icmp eq i32 %30, 50046
  br i1 %cmp13.2, label %land.lhs.true.2, label %for.body8.2.for.inc.2_crit_edge

for.body8.2.for.inc.2_crit_edge:                  ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body8.2
  %minver.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.078.2, i32 1
  %31 = ptrtoint ptr %minver.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp16.not.2 = icmp sgt i32 %32, 0
  br i1 %cmp16.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true17.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true17.2:                                ; preds = %land.lhs.true.2
  %maxver.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.078.2, i32 2
  %33 = ptrtoint ptr %maxver.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp21.not.2 = icmp slt i32 %34, 0
  br i1 %cmp21.not.2, label %land.lhs.true17.2.for.inc.2_crit_edge, label %land.lhs.true17.2.if.end36_crit_edge

land.lhs.true17.2.if.end36_crit_edge:             ; preds = %land.lhs.true17.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true17.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true17.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true17.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.body8.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.078.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %call4
  br i1 %exitcond.2.not, label %for.inc.2.if.end26.thread74_crit_edge, label %for.inc.2.for.body8.2_crit_edge

for.inc.2.for.body8.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.2

for.inc.2.if.end26.thread74_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.thread74

do.body:                                          ; preds = %if.end26.thread74, %if.end26.thread
  %drm30 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %drm30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drm30, align 8
  %dev31 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev31, align 8
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev32, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef %name) #12
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true17.2.if.end36_crit_edge, %land.lhs.true17.1.if.end36_crit_edge, %land.lhs.true17.if.end36_crit_edge
  %ret3.1.lcssa = phi i32 [ 2, %land.lhs.true17.2.if.end36_crit_edge ], [ 1, %land.lhs.true17.1.if.end36_crit_edge ], [ 0, %land.lhs.true17.if.end36_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #8
  %arrayidx37 = getelementptr [4 x %struct.anon.142], ptr @__const.nv50_wndw_new.wndws, i32 0, i32 %ret3.1.lcssa
  %new = getelementptr [4 x %struct.anon.142], ptr @__const.nv50_wndw_new.wndws, i32 0, i32 %ret3.1.lcssa, i32 2
  %41 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %new, align 4
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx37, align 4
  %call40 = call i32 %42(ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %44, ptr noundef %pwndw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %pwndw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pwndw, align 4
  %call44 = call i32 @nv50_wimm_init(ptr noundef %drm, ptr noundef %46) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end36.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -19, %do.body ], [ %call44, %if.end43 ], [ %call40, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc67e_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wimm_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_dmac_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_lut_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_wndw_prepare_fb(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  %unused.i = alloca i32, align 4
  %kind.i = alloca i8, align 1
  %args.i = alloca %struct.anon.143, align 8
  %cursor = alloca %struct.dma_resv_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %add.ptr = getelementptr i8, ptr %plane, i32 -40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #8
  %6 = getelementptr inbounds i8, ptr %cursor, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %8 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end15_crit_edge, label %do.body6

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drm8 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %drm8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm8, align 8
  %dev9 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 8
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %name11 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %15 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %16, ptr noundef %1) #12
  br label %do.end15

do.end15:                                         ; preds = %do.body6, %entry.do.end15_crit_edge
  %17 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb1, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %do.end15.cleanup_crit_edge, label %if.end19

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %obj, align 4
  %call21 = tail call i32 @nouveau_bo_pin(ptr noundef %20, i32 noundef 2, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %ctxdma25 = getelementptr i8, ptr %plane, i32 -16
  %21 = ptrtoint ptr %ctxdma25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctxdma25, align 8
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.end24.if.end39_crit_edge, label %if.then27

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then27:                                        ; preds = %if.end24
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_private.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused.i) #8
  %27 = ptrtoint ptr %unused.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %unused.i, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %kind.i) #8
  %28 = ptrtoint ptr %kind.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %kind.i, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args.i) #8
  %29 = call ptr @memset(ptr %args.i, i32 0, i32 32)
  call void @nouveau_framebuffer_get_layout(ptr noundef %1, ptr noundef nonnull %unused.i, ptr noundef nonnull %kind.i) #8
  %30 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %kind.i, align 1
  %conv.i = zext i8 %31 to i32
  %or.i = or i32 %conv.i, -83886080
  %list.i = getelementptr i8, ptr %plane, i32 -12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then27
  %ctxdma.0.in.i = phi ptr [ %list.i, %if.then27 ], [ %ctxdma.0.i, %for.body.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %ctxdma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %ctxdma.0.i = load ptr, ptr %ctxdma.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ctxdma.0.i, %list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %handle5.i = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %ctxdma.0.i, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %handle5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle5.i, align 4
  %cmp6.i = icmp eq i32 %34, %or.i
  br i1 %cmp6.i, label %for.body.i.nv50_wndw_ctxdma_new.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.body.i.nv50_wndw_ctxdma_new.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_ctxdma_new.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %nv50_wndw_ctxdma_new.exit.thread, label %if.end16.i

nv50_wndw_ctxdma_new.exit.thread:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i) #8
  br label %if.then30

if.end16.i:                                       ; preds = %for.end.i
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %list.i, ptr noundef %37) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end16.i.list_add.exit.i_crit_edge

if.end16.i.list_add.exit.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list.i, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i.i, ptr %list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end16.i.list_add.exit.i_crit_edge
  %target.i = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i, i32 0, i32 1
  %42 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %target.i, align 1
  %access.i = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i, i32 0, i32 2
  %43 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %access.i, align 2
  %start.i = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i, i32 0, i32 4
  %44 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %start.i, align 8
  %ram_user.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3, i32 1, i32 7
  %45 = ptrtoint ptr %ram_user.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ram_user.i, align 8
  %sub.i = add i64 %46, -1
  %limit.i = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i, i32 0, i32 5
  %47 = ptrtoint ptr %limit.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %sub.i, ptr %limit.i, align 8
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3, i32 1, i32 2
  %48 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %49)
  %cmp27.i = icmp ult i16 %49, 128
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %part.i = getelementptr inbounds %struct.anon.143, ptr %args.i, i32 0, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %part.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %part.i, align 2
  br label %if.end57.i

if.else.i:                                        ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %49)
  %cmp35.i = icmp ult i16 %49, 192
  br i1 %cmp35.i, label %if.then37.i, label %if.else41.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %part38.i = getelementptr inbounds %struct.anon.143, ptr %args.i, i32 0, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %part38.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %part38.i, align 2
  %52 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %kind.i, align 1
  %kind39.i = getelementptr inbounds %struct.anon.143, ptr %args.i, i32 0, i32 1, i32 0, i32 4
  %54 = ptrtoint ptr %kind39.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %kind39.i, align 4
  br label %if.end57.i

if.else41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 208, i16 %49)
  %cmp47.i = icmp ult i16 %49, 208
  br i1 %cmp47.i, label %if.then49.i, label %if.else52.i

if.then49.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %kind.i, align 1
  %kind50.i = getelementptr inbounds %struct.anon.143, ptr %args.i, i32 0, i32 1, i32 0, i32 2
  %57 = ptrtoint ptr %kind50.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %kind50.i, align 2
  br label %if.end57.i

if.else52.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  %page.i = getelementptr inbounds %struct.anon.143, ptr %args.i, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %page.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %page.i, align 1
  %59 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %kind.i, align 1
  %kind53.i = getelementptr inbounds %struct.anon.143, ptr %args.i, i32 0, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %kind53.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %kind53.i, align 2
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else52.i, %if.then49.i, %if.then37.i, %if.then29.i
  %62 = ptrtoint ptr %ctxdma25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctxdma25, align 8
  %object59.i = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %call7.i.i.i, i32 0, i32 1
  %call60.i = call i32 @nvif_object_ctor(ptr noundef %63, ptr noundef nonnull @.str.9, i32 noundef %or.i, i32 noundef 61, ptr noundef nonnull %args.i, i32 noundef 32, ptr noundef %object59.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end57.i.nv50_wndw_ctxdma_new.exit_crit_edge, label %if.then62.i

if.end57.i.nv50_wndw_ctxdma_new.exit_crit_edge:   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_ctxdma_new.exit

if.then62.i:                                      ; preds = %if.end57.i
  call void @nvif_object_dtor(ptr noundef %object59.i) #8
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then62.i.nv50_wndw_ctxdma_del.exit.i_crit_edge

if.then62.i.nv50_wndw_ctxdma_del.exit.i_crit_edge: ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_ctxdma_del.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i.i, align 4
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %nv50_wndw_ctxdma_del.exit.i

nv50_wndw_ctxdma_del.exit.i:                      ; preds = %if.end.i.i.i.i, %if.then62.i.nv50_wndw_ctxdma_del.exit.i_crit_edge
  %70 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %72 = inttoptr i32 %call60.i to ptr
  br label %nv50_wndw_ctxdma_new.exit

nv50_wndw_ctxdma_new.exit:                        ; preds = %nv50_wndw_ctxdma_del.exit.i, %if.end57.i.nv50_wndw_ctxdma_new.exit_crit_edge, %for.body.i.nv50_wndw_ctxdma_new.exit_crit_edge
  %retval.0.i = phi ptr [ %72, %nv50_wndw_ctxdma_del.exit.i ], [ %call7.i.i.i, %if.end57.i.nv50_wndw_ctxdma_new.exit_crit_edge ], [ %ctxdma.0.i, %for.body.i.nv50_wndw_ctxdma_new.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i) #8
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %nv50_wndw_ctxdma_new.exit.if.then30_crit_edge, label %if.end33

nv50_wndw_ctxdma_new.exit.if.then30_crit_edge:    ; preds = %nv50_wndw_ctxdma_new.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %nv50_wndw_ctxdma_new.exit.if.then30_crit_edge, %nv50_wndw_ctxdma_new.exit.thread
  %retval.0.i102 = phi ptr [ inttoptr (i32 -12 to ptr), %nv50_wndw_ctxdma_new.exit.thread ], [ %retval.0.i, %nv50_wndw_ctxdma_new.exit.if.then30_crit_edge ]
  %call31 = call i32 @nouveau_bo_unpin(ptr noundef %20) #8
  %73 = ptrtoint ptr %retval.0.i102 to i32
  br label %cleanup

if.end33:                                         ; preds = %nv50_wndw_ctxdma_new.exit
  %visible = getelementptr inbounds %struct.nv50_wndw_atom, ptr %state, i32 0, i32 2
  %74 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %visible, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool34.not = icmp eq i8 %75, 0
  br i1 %tobool34.not, label %if.end33.if.end39_crit_edge, label %if.then35

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %retval.0.i, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %handle, align 4
  %handle36 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %state, i32 0, i32 8, i32 7
  %78 = ptrtoint ptr %handle36 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %handle36, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end33.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %20, i32 0, i32 9
  %79 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %resv, align 8
  %81 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %cursor, align 4
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %82 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %all_fences2.i, align 4
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %83 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %fence.i, align 4
  %call40 = call ptr @dma_resv_iter_first_unlocked(ptr noundef nonnull %cursor) #8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.for.end_crit_edge, label %if.then.i

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.i:                                        ; preds = %if.end39
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call40, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %fence44 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 3
  %86 = ptrtoint ptr %fence44 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call40, ptr %fence44, align 4
  br label %for.end

for.end:                                          ; preds = %dma_fence_get.exit, %if.end39.for.end_crit_edge
  %87 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fence.i, align 4
  %tobool.not.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i, label %for.end.dma_resv_iter_end.exit_crit_edge, label %if.then.i.i

for.end.dma_resv_iter_end.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_resv_iter_end.exit

if.then.i.i:                                      ; preds = %for.end
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %88, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dma_resv_iter_end.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !59

if.end5.i.i.i.i.i.i.dma_resv_iter_end.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_resv_iter_end.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %dma_resv_iter_end.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  call void @dma_fence_release(ptr noundef %refcount.i.i) #8
  br label %dma_resv_iter_end.exit

dma_resv_iter_end.exit:                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_resv_iter_end.exit_crit_edge, %for.end.dma_resv_iter_end.exit_crit_edge
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %20, i32 0, i32 13
  %90 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %offset, align 8
  %offset47 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %state, i32 0, i32 8, i32 8
  %92 = ptrtoint ptr %offset47 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %offset47, align 8
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr, align 8
  %prepare = getelementptr inbounds %struct.nv50_wndw_func, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prepare, align 4
  %tobool49.not = icmp eq ptr %96, null
  br i1 %tobool49.not, label %dma_resv_iter_end.exit.cleanup_crit_edge, label %if.then50

dma_resv_iter_end.exit.cleanup_crit_edge:         ; preds = %dma_resv_iter_end.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %dma_resv_iter_end.exit
  %state52 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 25
  %97 = ptrtoint ptr %state52 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %state52, align 8
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %99 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %crtc, align 4
  %call.i = call ptr @drm_atomic_get_crtc_state(ptr noundef %98, ptr noundef %100) #8
  %cmp.i99 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end58:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr, align 8
  %prepare60 = getelementptr inbounds %struct.nv50_wndw_func, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %prepare60 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prepare60, align 4
  call void %105(ptr noundef %add.ptr, ptr noundef %call.i, ptr noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then56, %dma_resv_iter_end.exit.cleanup_crit_edge, %if.then30, %if.end19.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %73, %if.then30 ], [ %101, %if.then56 ], [ 0, %do.end15.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ 0, %if.end58 ], [ 0, %dma_resv_iter_end.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_wndw_cleanup_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %0 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i, align 4
  %drm4 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %drm4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm4, align 8
  %dev5 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5, align 8
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %name7 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %11 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name7, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %13 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef %12, ptr noundef %14) #12
  br label %do.end11

do.end11:                                         ; preds = %do.body2, %entry.do.end11_crit_edge
  %fb12 = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %15 = ptrtoint ptr %fb12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb12, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.end11.cleanup_crit_edge, label %if.end14

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %obj, align 4
  %call17 = tail call i32 @nouveau_bo_unpin(ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_wndw_atomic_check(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %kind.i = alloca i8, align 1
  %tile_mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %add.ptr = getelementptr i8, ptr %plane, i32 -40
  %state4 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %8 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end20_crit_edge, label %do.body11

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private.i, align 4
  %drm13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %drm13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drm13, align 8
  %dev14 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev14, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 12
  %name16 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %19 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %20) #12
  br label %do.end20

do.end20:                                         ; preds = %do.body11, %entry.do.end20_crit_edge
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %do.end20.if.end38_crit_edge, label %if.then22

do.end20.if.end38_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then22:                                        ; preds = %do.end20
  %state24 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 25
  %23 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state24, align 8
  %call.i = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %24, ptr noundef nonnull %22) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end31:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %27 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %28 = icmp ne i8 %27, 0
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %active, align 1, !range !57
  br label %if.end38

if.end38:                                         ; preds = %if.end31, %do.end20.if.end38_crit_edge
  %.sink = phi i8 [ %30, %if.end31 ], [ 0, %do.end20.if.end38_crit_edge ]
  %asyh.0 = phi ptr [ %call.i, %if.end31 ], [ null, %do.end20.if.end38_crit_edge ]
  %modeset.0.off0 = phi i1 [ %28, %if.end31 ], [ false, %do.end20.if.end38_crit_edge ]
  %visible37 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %visible37 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %visible37, align 8
  %crtc40 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %32 = ptrtoint ptr %crtc40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc40, align 4
  %tobool41.not = icmp eq ptr %33, null
  br i1 %tobool41.not, label %if.end38.if.end52_crit_edge, label %if.then42

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then42:                                        ; preds = %if.end38
  %state44 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 25
  %34 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state44, align 8
  %call.i222 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %35, ptr noundef nonnull %33) #8
  %cmp.i223 = icmp ugt ptr %call.i222, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %if.then49, label %if.then42.if.end52_crit_edge

if.then42.if.end52_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call.i222 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.then42.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  %harm.0 = phi ptr [ %call.i222, %if.then42.if.end52_crit_edge ], [ null, %if.end38.if.end52_crit_edge ]
  %visible53 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %visible53 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %visible53, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool54.not = icmp eq i8 %38, 0
  br i1 %tobool54.not, label %if.end52.if.else82_crit_edge, label %land.lhs.true

if.end52.if.else82_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else82

land.lhs.true:                                    ; preds = %if.end52
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %xlut_set = getelementptr inbounds %struct.nv50_wndw_func, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %xlut_set to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xlut_set, align 4
  %tobool55.not = icmp eq ptr %42, null
  br i1 %tobool55.not, label %land.lhs.true.if.end72_crit_edge, label %land.lhs.true56

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

land.lhs.true56:                                  ; preds = %land.lhs.true
  %visible57 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 2
  %43 = ptrtoint ptr %visible57 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %visible57, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool58.not = icmp eq i8 %44, 0
  br i1 %tobool58.not, label %land.lhs.true56.if.then67_crit_edge, label %lor.lhs.false

land.lhs.true56.if.then67_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false:                                    ; preds = %land.lhs.true56
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh.0, i32 0, i32 3
  %45 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %46 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %bf.cast.not = icmp eq i8 %46, 0
  br i1 %bf.cast.not, label %lor.lhs.false60, label %lor.lhs.false.if.then67_crit_edge

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false60:                                  ; preds = %lor.lhs.false
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %47 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fb, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %format, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %fb64 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %53 = ptrtoint ptr %fb64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fb64, align 8
  %format65 = getelementptr inbounds %struct.drm_framebuffer, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %format65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %format65, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %58)
  %cmp.not = icmp eq i32 %52, %58
  br i1 %cmp.not, label %lor.lhs.false60.if.end72_crit_edge, label %lor.lhs.false60.if.then67_crit_edge

lor.lhs.false60.if.then67_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false60.if.end72_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then67:                                        ; preds = %lor.lhs.false60.if.then67_crit_edge, %lor.lhs.false.if.then67_crit_edge, %land.lhs.true56.if.then67_crit_edge
  %degamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh.0, i32 0, i32 10
  %59 = ptrtoint ptr %degamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %degamma_lut.i, align 8
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.then67
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %61 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fb.i, align 8
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %format.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 538982467, i32 %66)
  %cmp.i224 = icmp eq i32 %66, 538982467
  br i1 %cmp.i224, label %if.then.i, label %land.lhs.true17.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh.0, i32 0, i32 12
  %67 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %gamma_lut.i, align 8
  %tobool4.not.i = icmp eq ptr %68, null
  br i1 %tobool4.not.i, label %if.then.i.nv50_wndw_atomic_check_lut.exit_crit_edge, label %if.end.i

if.then.i.nv50_wndw_atomic_check_lut.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_lut.exit

if.end.i:                                         ; preds = %if.then.i
  %ilut6.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %40, i32 0, i32 9
  %69 = ptrtoint ptr %ilut6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ilut6.i, align 4
  %tobool7.not.i = icmp eq ptr %70, null
  br i1 %tobool7.not.i, label %if.end.i.if.end33.i_crit_edge, label %if.then8.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %id.i = getelementptr i8, ptr %plane, i32 -32
  %71 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id.i, align 8
  %shl.i = shl nuw i32 1, %72
  %olut.i = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh.0, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %olut.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %olut.i, align 4
  %or.i = or i32 %74, %shl.i
  store i32 %or.i, ptr %olut.i, align 4
  br label %if.end33.i

if.end15.i:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %id11.i = getelementptr i8, ptr %plane, i32 -32
  %75 = ptrtoint ptr %id11.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id11.i, align 8
  %shl12.i = shl nuw i32 1, %76
  %neg.i = xor i32 %shl12.i, -1
  %olut14.i = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh.0, i32 0, i32 1, i32 2
  %77 = ptrtoint ptr %olut14.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %olut14.i, align 4
  %and.i225 = and i32 %78, %neg.i
  store i32 %and.i225, ptr %olut14.i, align 4
  br label %if.end33.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %id113.i = getelementptr i8, ptr %plane, i32 -32
  %79 = ptrtoint ptr %id113.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id113.i, align 8
  %shl124.i = shl nuw i32 1, %80
  %neg5.i = xor i32 %shl124.i, -1
  %olut146.i = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh.0, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %olut146.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %olut146.i, align 4
  %and7.i = and i32 %82, %neg5.i
  store i32 %and7.i, ptr %olut146.i, align 4
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 8
  %ilut_identity.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %84, i32 0, i32 13
  %85 = ptrtoint ptr %ilut_identity.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ilut_identity.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool19.not.i = icmp eq i8 %86, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.if.end33.i_crit_edge, label %land.lhs.true20.i

land.lhs.true17.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

land.lhs.true20.i:                                ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fb.i, align 8
  %format23.i = getelementptr inbounds %struct.drm_framebuffer, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %format23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %format23.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1211384408, i32 %92)
  %switch.selectcmp.case1.i = icmp eq i32 %92, 1211384408
  call void @__sanitizer_cov_trace_const_cmp4(i32 1211384385, i32 %92)
  %switch.selectcmp.case2.i = icmp eq i32 %92, 1211384385
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %93 = select i1 %switch.selectcmp.i, ptr null, ptr @nv50_wndw_atomic_check_lut.dummy
  br label %if.end33.i

if.end33.i:                                       ; preds = %land.lhs.true20.i, %land.lhs.true17.i.if.end33.i_crit_edge, %if.end15.i, %if.then8.i, %if.end.i.if.end33.i_crit_edge
  %ilut.1.i = phi ptr [ %60, %if.end15.i ], [ null, %land.lhs.true17.i.if.end33.i_crit_edge ], [ %93, %land.lhs.true20.i ], [ %68, %if.then8.i ], [ %68, %if.end.i.if.end33.i_crit_edge ]
  %xlut.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 6
  %94 = call ptr @memset(ptr %xlut.i, i32 0, i32 24)
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 8
  %ilut35.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %ilut35.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ilut35.i, align 4
  %tobool36.not.i = icmp eq ptr %98, null
  %spec.select.i = select i1 %tobool36.not.i, ptr null, ptr %ilut.1.i
  %ilut37.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 1
  %99 = ptrtoint ptr %ilut37.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %spec.select.i, ptr %ilut37.i, align 4
  %tobool38.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool38.not.i, label %if.else54.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 8
  %ilut41.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %ilut41.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ilut41.i, align 4
  %length.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %ilut.1.i, i32 0, i32 4
  %104 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %length.i.i, align 4
  %div1.i.i = lshr i32 %105, 3
  tail call void %103(ptr noundef %add.ptr, ptr noundef %5, i32 noundef %div1.i.i) #8
  %handle.i = getelementptr i8, ptr %plane, i32 852
  %106 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %handle.i, align 4
  %108 = ptrtoint ptr %xlut.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %xlut.i, align 8
  %i.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 6, i32 2
  %109 = ptrtoint ptr %i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 6)
  %bf.load.i226 = load i48, ptr %i.i, align 8
  %bf.set.i = xor i48 %bf.load.i226, 128
  store i48 %bf.set.i, ptr %i.i, align 8
  %set.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %110 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load51.i = load i8, ptr %set.i, align 1
  %bf.set53.i = or i8 %bf.load51.i, 32
  store i8 %bf.set53.i, ptr %set.i, align 1
  br label %if.end64.i

if.else54.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %xlut55.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 6
  %111 = ptrtoint ptr %xlut55.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %xlut55.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp57.not.i = icmp eq i32 %112, 0
  %clr.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 13
  %113 = ptrtoint ptr %clr.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load59.i = load i8, ptr %clr.i, align 4
  %bf.shl60.i = select i1 %cmp57.not.i, i8 0, i8 32
  %bf.clear61.i = and i8 %bf.load59.i, -33
  %bf.set62.i = or i8 %bf.clear61.i, %bf.shl60.i
  store i8 %bf.set62.i, ptr %clr.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else54.i, %if.then39.i
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr, align 8
  %olut_core.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %115, i32 0, i32 15
  %116 = ptrtoint ptr %olut_core.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %olut_core.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool66.not.i = icmp eq i8 %117, 0
  br i1 %tobool66.not.i, label %if.end64.i.if.end83.i_crit_edge, label %land.lhs.true68.i

if.end64.i.if.end83.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

land.lhs.true68.i:                                ; preds = %if.end64.i
  %118 = ptrtoint ptr %visible57 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %visible57, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool70.not.i = icmp eq i8 %119, 0
  br i1 %tobool70.not.i, label %land.lhs.true68.i.if.then78.i_crit_edge, label %lor.lhs.false.i

land.lhs.true68.i.if.then78.i_crit_edge:          ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true68.i
  %xlut71.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 6
  %120 = ptrtoint ptr %xlut71.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %xlut71.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool73.not.i = icmp eq i32 %121, 0
  br i1 %tobool73.not.i, label %lor.lhs.false.i.if.end83.i_crit_edge, label %land.lhs.true74.i

lor.lhs.false.i.if.end83.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

land.lhs.true74.i:                                ; preds = %lor.lhs.false.i
  %122 = ptrtoint ptr %xlut.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %xlut.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool77.not.i = icmp eq i32 %123, 0
  br i1 %tobool77.not.i, label %land.lhs.true74.i.if.then78.i_crit_edge, label %land.lhs.true74.i.if.end83.i_crit_edge

land.lhs.true74.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

land.lhs.true74.i.if.then78.i_crit_edge:          ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78.i

if.then78.i:                                      ; preds = %land.lhs.true74.i.if.then78.i_crit_edge, %land.lhs.true68.i.if.then78.i_crit_edge
  %set79.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %124 = ptrtoint ptr %set79.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load80.i = load i8, ptr %set79.i, align 1
  %bf.set82.i = or i8 %bf.load80.i, 32
  store i8 %bf.set82.i, ptr %set79.i, align 1
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then78.i, %land.lhs.true74.i.if.end83.i_crit_edge, %lor.lhs.false.i.if.end83.i_crit_edge, %if.end64.i.if.end83.i_crit_edge
  %125 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr, align 8
  %csc.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %126, i32 0, i32 10
  %127 = ptrtoint ptr %csc.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %csc.i, align 4
  %tobool85.not.i = icmp eq ptr %128, null
  br i1 %tobool85.not.i, label %if.end83.i.if.else100.i_crit_edge, label %land.lhs.true86.i

if.end83.i.if.else100.i_crit_edge:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else100.i

land.lhs.true86.i:                                ; preds = %if.end83.i
  %ctm.i = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh.0, i32 0, i32 11
  %129 = ptrtoint ptr %ctm.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ctm.i, align 4
  %tobool88.not.i = icmp eq ptr %130, null
  br i1 %tobool88.not.i, label %land.lhs.true86.i.if.else100.i_crit_edge, label %if.then89.i

land.lhs.true86.i.if.else100.i_crit_edge:         ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else100.i

if.then89.i:                                      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i, align 4
  tail call void %128(ptr noundef %add.ptr, ptr noundef %5, ptr noundef %132) #8
  %valid.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 7, i32 1
  %133 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %valid.i, align 8
  %set96.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %134 = ptrtoint ptr %set96.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load97.i = load i8, ptr %set96.i, align 1
  %bf.set99.i = or i8 %bf.load97.i, 16
  store i8 %bf.set99.i, ptr %set96.i, align 1
  br label %if.end112.i

if.else100.i:                                     ; preds = %land.lhs.true86.i.if.else100.i_crit_edge, %if.end83.i.if.else100.i_crit_edge
  %valid102.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 7, i32 1
  %135 = ptrtoint ptr %valid102.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %valid102.i, align 8
  %valid104.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 7, i32 1
  %136 = ptrtoint ptr %valid104.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %valid104.i, align 8, !range !57
  %clr106.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 13
  %138 = ptrtoint ptr %clr106.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load107.i = load i8, ptr %clr106.i, align 4
  %bf.shl108.i = shl nuw nsw i8 %137, 4
  %bf.clear109.i = and i8 %bf.load107.i, -17
  %bf.set110.i = or i8 %bf.clear109.i, %bf.shl108.i
  store i8 %bf.set110.i, ptr %clr106.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.else100.i, %if.then89.i
  %async_flip.i = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh.0, i32 0, i32 14
  br label %nv50_wndw_atomic_check_lut.exit

nv50_wndw_atomic_check_lut.exit:                  ; preds = %if.end112.i, %if.then.i.nv50_wndw_atomic_check_lut.exit_crit_edge
  %async_flip.sink.i = phi ptr [ %async_flip.i, %if.end112.i ], [ %visible53, %if.then.i.nv50_wndw_atomic_check_lut.exit_crit_edge ]
  %139 = ptrtoint ptr %async_flip.sink.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %async_flip.sink.i, align 8
  br label %if.end72

if.end72:                                         ; preds = %nv50_wndw_atomic_check_lut.exit, %lor.lhs.false60.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge
  %140 = ptrtoint ptr %visible53 to i32
  call void @__asan_load1_noabort(i32 %140)
  %.pr = load i8, ptr %visible53, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool74.not = icmp eq i8 %.pr, 0
  br i1 %tobool74.not, label %if.end72.if.else82_crit_edge, label %if.then75

if.end72.if.else82_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else82

if.then75:                                        ; preds = %if.end72
  %fb1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %141 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fb1.i, align 8
  %143 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %plane, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev_private.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %kind.i) #8
  %147 = ptrtoint ptr %kind.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -1, ptr %kind.i, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tile_mode.i) #8
  %148 = ptrtoint ptr %tile_mode.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %tile_mode.i, align 4, !annotation !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %149 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then75.do.end13.i_crit_edge, label %do.body3.i

if.then75.do.end13.i_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

do.body3.i:                                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %drm5.i = getelementptr inbounds %struct.nouveau_drm, ptr %146, i32 0, i32 2, i32 1
  %150 = ptrtoint ptr %drm5.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %drm5.i, align 8
  %dev6.i = getelementptr inbounds %struct.nouveau_drm, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev6.i, align 8
  %dev7.i = getelementptr inbounds %struct.drm_device, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev7.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %146, i32 0, i32 2, i32 12
  %name9.i = getelementptr i8, ptr %plane, i32 12
  %156 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %name9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %155, ptr noundef nonnull @.str.14, ptr noundef %name.i, ptr noundef %157) #12
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.body3.i, %if.then75.do.end13.i_crit_edge
  %fb15.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %158 = ptrtoint ptr %fb15.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %fb15.i, align 8
  %cmp.not.i = icmp eq ptr %142, %159
  br i1 %cmp.not.i, label %lor.lhs.false.i229, label %do.end13.i.if.then18.i_crit_edge

do.end13.i.if.then18.i_crit_edge:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

lor.lhs.false.i229:                               ; preds = %do.end13.i
  %visible.i227 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 2
  %160 = ptrtoint ptr %visible.i227 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %visible.i227, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i228 = icmp eq i8 %161, 0
  %brmerge.i = or i1 %modeset.0.off0, %tobool.not.i228
  br i1 %brmerge.i, label %lor.lhs.false.i229.if.then18.i_crit_edge, label %lor.lhs.false.i229.if.end124.i_crit_edge

lor.lhs.false.i229.if.end124.i_crit_edge:         ; preds = %lor.lhs.false.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i

lor.lhs.false.i229.if.then18.i_crit_edge:         ; preds = %lor.lhs.false.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i229.if.then18.i_crit_edge, %do.end13.i.if.then18.i_crit_edge
  call void @nouveau_framebuffer_get_layout(ptr noundef %142, ptr noundef nonnull %tile_mode.i, ptr noundef nonnull %kind.i) #8
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %142, i32 0, i32 9
  %162 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %width.i, align 8
  %conv.i = trunc i32 %163 to i16
  %image.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8
  %w.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 5
  %164 = ptrtoint ptr %w.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.i, ptr %w.i, align 8
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %142, i32 0, i32 10
  %165 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %height.i, align 4
  %conv19.i = trunc i32 %166 to i16
  %h.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 6
  %167 = ptrtoint ptr %h.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv19.i, ptr %h.i, align 2
  %168 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %kind.i, align 1
  %kind22.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 2
  %170 = ptrtoint ptr %kind22.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load.i230 = load i16, ptr %kind22.i, align 2
  %bf.value.i = zext i8 %169 to i16
  %bf.shl.i = shl i16 %bf.value.i, 9
  %bf.clear.i = and i16 %bf.load.i230, 511
  %bf.set.i231 = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i231, ptr %kind22.i, align 2
  %171 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fb1.i, align 8
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %format.i.i, align 8
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values)
  switch i32 %176, label %nv50_wndw_atomic_check_acquire.exit.thread [
    i32 538982467, label %if.then18.i.nv50_wndw_atomic_check_acquire_rgb.exit.thread.i_crit_edge
    i32 875713112, label %if.then18.i.sw.bb3.i.i_crit_edge
    i32 875713089, label %if.then18.i.sw.bb3.i.i_crit_edge246
    i32 909199186, label %sw.bb6.i.i
    i32 892424792, label %if.then18.i.sw.bb9.i.i_crit_edge
    i32 892424769, label %if.then18.i.sw.bb9.i.i_crit_edge247
    i32 808665688, label %if.then18.i.sw.bb12.i.i_crit_edge
    i32 808665665, label %if.then18.i.sw.bb12.i.i_crit_edge248
    i32 875709016, label %if.then18.i.sw.bb15.i.i_crit_edge
    i32 875708993, label %if.then18.i.sw.bb15.i.i_crit_edge249
    i32 808669784, label %if.then18.i.sw.bb18.i.i_crit_edge
    i32 808669761, label %if.then18.i.sw.bb18.i.i_crit_edge250
    i32 1211384408, label %if.then18.i.sw.bb21.i.i_crit_edge
    i32 1211384385, label %if.then18.i.sw.bb21.i.i_crit_edge251
    i32 1448695129, label %if.then18.i.nv50_wndw_atomic_check_acquire_yuv.exit.thread.i_crit_edge
    i32 1498831189, label %sw.bb3.i320.i
  ]

if.then18.i.nv50_wndw_atomic_check_acquire_yuv.exit.thread.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_acquire_yuv.exit.thread.i

if.then18.i.sw.bb21.i.i_crit_edge251:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i.i

if.then18.i.sw.bb21.i.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i.i

if.then18.i.sw.bb18.i.i_crit_edge250:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i.i

if.then18.i.sw.bb18.i.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i.i

if.then18.i.sw.bb15.i.i_crit_edge249:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i.i

if.then18.i.sw.bb15.i.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i.i

if.then18.i.sw.bb12.i.i_crit_edge248:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

if.then18.i.sw.bb12.i.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

if.then18.i.sw.bb9.i.i_crit_edge247:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i

if.then18.i.sw.bb9.i.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i

if.then18.i.sw.bb3.i.i_crit_edge246:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

if.then18.i.sw.bb3.i.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

if.then18.i.nv50_wndw_atomic_check_acquire_rgb.exit.thread.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

sw.bb3.i.i:                                       ; preds = %if.then18.i.sw.bb3.i.i_crit_edge, %if.then18.i.sw.bb3.i.i_crit_edge246
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

sw.bb6.i.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

sw.bb9.i.i:                                       ; preds = %if.then18.i.sw.bb9.i.i_crit_edge, %if.then18.i.sw.bb9.i.i_crit_edge247
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

sw.bb12.i.i:                                      ; preds = %if.then18.i.sw.bb12.i.i_crit_edge, %if.then18.i.sw.bb12.i.i_crit_edge248
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

sw.bb15.i.i:                                      ; preds = %if.then18.i.sw.bb15.i.i_crit_edge, %if.then18.i.sw.bb15.i.i_crit_edge249
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

sw.bb18.i.i:                                      ; preds = %if.then18.i.sw.bb18.i.i_crit_edge, %if.then18.i.sw.bb18.i.i_crit_edge250
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

sw.bb21.i.i:                                      ; preds = %if.then18.i.sw.bb21.i.i_crit_edge, %if.then18.i.sw.bb21.i.i_crit_edge251
  br label %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i

nv50_wndw_atomic_check_acquire_rgb.exit.thread.i: ; preds = %sw.bb21.i.i, %sw.bb18.i.i, %sw.bb15.i.i, %sw.bb12.i.i, %sw.bb9.i.i, %sw.bb6.i.i, %sw.bb3.i.i, %if.then18.i.nv50_wndw_atomic_check_acquire_rgb.exit.thread.i_crit_edge
  %.sink.i.i = phi i8 [ -54, %sw.bb21.i.i ], [ -33, %sw.bb18.i.i ], [ -43, %sw.bb15.i.i ], [ -47, %sw.bb12.i.i ], [ -23, %sw.bb9.i.i ], [ -24, %sw.bb6.i.i ], [ -49, %sw.bb3.i.i ], [ 30, %if.then18.i.nv50_wndw_atomic_check_acquire_rgb.exit.thread.i_crit_edge ]
  %format23.i.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 1
  %178 = ptrtoint ptr %format23.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %.sink.i.i, ptr %format23.i.i, align 1
  %179 = ptrtoint ptr %image.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load.i.i = load i8, ptr %image.i, align 8
  %bf.clear.i.i = and i8 %bf.load.i.i, -4
  br label %if.end30.i

sw.bb3.i320.i:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_acquire_yuv.exit.thread.i

nv50_wndw_atomic_check_acquire_yuv.exit.thread.i: ; preds = %sw.bb3.i320.i, %if.then18.i.nv50_wndw_atomic_check_acquire_yuv.exit.thread.i_crit_edge
  %.sink.i321.i = phi i8 [ 41, %sw.bb3.i320.i ], [ 40, %if.then18.i.nv50_wndw_atomic_check_acquire_yuv.exit.thread.i_crit_edge ]
  %format5.i.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 1
  %180 = ptrtoint ptr %format5.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %.sink.i321.i, ptr %format5.i.i, align 1
  %181 = ptrtoint ptr %image.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load.i322.i = load i8, ptr %image.i, align 8
  %bf.clear.i323.i = and i8 %bf.load.i322.i, -4
  %bf.set.i.i = or i8 %bf.clear.i323.i, 1
  br label %if.end30.i

nv50_wndw_atomic_check_acquire.exit.thread:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 216, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tile_mode.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind.i) #8
  br label %cleanup

if.end30.i:                                       ; preds = %nv50_wndw_atomic_check_acquire_yuv.exit.thread.i, %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i
  %storemerge330.i = phi i8 [ %bf.clear.i.i, %nv50_wndw_atomic_check_acquire_rgb.exit.thread.i ], [ %bf.set.i.i, %nv50_wndw_atomic_check_acquire_yuv.exit.thread.i ]
  %182 = ptrtoint ptr %image.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %storemerge330.i, ptr %image.i, align 8
  %183 = ptrtoint ptr %kind22.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %bf.load33.i = load i16, ptr %kind22.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %bf.load33.i)
  %tobool34.not.i = icmp ult i16 %bf.load33.i, 512
  br i1 %tobool34.not.i, label %if.else68.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear38.i = and i16 %bf.load33.i, -257
  %184 = ptrtoint ptr %kind22.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %bf.clear38.i, ptr %kind22.i, align 2
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %146, i32 0, i32 2, i32 3, i32 1, i32 2
  %185 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 191, i16 %186)
  %cmp42.i = icmp ugt i16 %186, 191
  %187 = ptrtoint ptr %tile_mode.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %tile_mode.i, align 4
  %189 = trunc i32 %188 to i16
  %bf.value57.i = shl i16 %189, 4
  %bf.value57.sink.i = select i1 %cmp42.i, i16 %189, i16 %bf.value57.i
  %bf.shl58.i = and i16 %bf.value57.sink.i, 240
  %bf.clear59.i = and i16 %bf.load33.i, -497
  %bf.set60.i = or i16 %bf.shl58.i, %bf.clear59.i
  %190 = ptrtoint ptr %kind22.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %bf.set60.i, ptr %kind22.i, align 2
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %142, i32 0, i32 6
  %191 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pitches.i, align 8
  %div317.i = lshr i32 %192, 6
  %conv63.i = trunc i32 %div317.i to i16
  %blocks.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 3
  %193 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv63.i, ptr %blocks.i, align 4
  br label %if.end87.i

if.else68.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set73.i = and i16 %bf.load33.i, -497
  %bf.clear77.i = or i16 %bf.set73.i, 256
  %194 = ptrtoint ptr %kind22.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %bf.clear77.i, ptr %kind22.i, align 2
  %blocks80.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 3
  %195 = ptrtoint ptr %blocks80.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %blocks80.i, align 4
  %pitches82.i = getelementptr inbounds %struct.drm_framebuffer, ptr %142, i32 0, i32 6
  %196 = ptrtoint ptr %pitches82.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %pitches82.i, align 8
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else68.i, %if.then35.i
  %.sink.i = phi i32 [ %197, %if.else68.i ], [ 0, %if.then35.i ]
  %pitch85.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 4
  %198 = ptrtoint ptr %pitch85.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %.sink.i, ptr %pitch85.i, align 4
  %async_flip.i232 = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh.0, i32 0, i32 14
  %199 = ptrtoint ptr %async_flip.i232 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %async_flip.i232, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool89.not.i = icmp eq i8 %200, 0
  %201 = ptrtoint ptr %image.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load92.i = load i8, ptr %image.i, align 8
  %bf.clear93.i = and i8 %bf.load92.i, -61
  %bf.set94.i = or i8 %bf.clear93.i, 4
  %storemerge.i = select i1 %tobool89.not.i, i8 %bf.set94.i, i8 %bf.clear93.i
  %bf.clear114.i = and i8 %storemerge.i, 7
  %202 = shl i8 %storemerge.i, 4
  %203 = and i8 %202, 64
  %204 = or i8 %203, %bf.clear114.i
  %205 = xor i8 %204, 64
  store i8 %205, ptr %image.i, align 8
  %206 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %add.ptr, align 8
  %image_set.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %207, i32 0, i32 18
  %208 = ptrtoint ptr %image_set.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %image_set.i, align 4
  %cmp117.not.i = icmp eq ptr %209, null
  %set.i233 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %210 = ptrtoint ptr %set.i233 to i32
  call void @__asan_load1_noabort(i32 %210)
  %bf.load119.i = load i8, ptr %set.i233, align 1
  %bf.shl120.i = select i1 %cmp117.not.i, i8 0, i8 8
  %bf.clear121.i = and i8 %bf.load119.i, -9
  %bf.set122.i = or i8 %bf.clear121.i, %bf.shl120.i
  store i8 %bf.set122.i, ptr %set.i233, align 1
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.end87.i, %lor.lhs.false.i229.if.end124.i_crit_edge
  %211 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %add.ptr, align 8
  %scale_set.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %212, i32 0, i32 20
  %213 = ptrtoint ptr %scale_set.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %scale_set.i, align 4
  %tobool126.not.i = icmp eq ptr %214, null
  br i1 %tobool126.not.i, label %if.end124.i.if.end159.i_crit_edge, label %if.then127.i

if.end124.i.if.end159.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159.i

if.then127.i:                                     ; preds = %if.end124.i
  %src_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %215 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %src_x.i, align 8
  %shr129.i = lshr i32 %216, 16
  %conv130.i = trunc i32 %shr129.i to i16
  %scale.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 9
  %217 = ptrtoint ptr %scale.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv130.i, ptr %scale.i, align 8
  %src_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %218 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %src_y.i, align 4
  %shr132.i = lshr i32 %219, 16
  %conv133.i = trunc i32 %shr132.i to i16
  %sy.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 9, i32 1
  %220 = ptrtoint ptr %sy.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv133.i, ptr %sy.i, align 2
  %src_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %221 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %src_w.i, align 4
  %shr136.i = lshr i32 %222, 16
  %conv137.i = trunc i32 %shr136.i to i16
  %sw.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 9, i32 2
  %223 = ptrtoint ptr %sw.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv137.i, ptr %sw.i, align 4
  %src_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %224 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %src_h.i, align 8
  %shr140.i = lshr i32 %225, 16
  %conv141.i = trunc i32 %shr140.i to i16
  %sh.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 9, i32 3
  %226 = ptrtoint ptr %sh.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv141.i, ptr %sh.i, align 2
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %227 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %crtc_w.i, align 8
  %conv144.i = trunc i32 %228 to i16
  %dw.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 9, i32 4
  %229 = ptrtoint ptr %dw.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv144.i, ptr %dw.i, align 8
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %230 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %crtc_h.i, align 4
  %conv147.i = trunc i32 %231 to i16
  %dh.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 9, i32 5
  %232 = ptrtoint ptr %dh.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv147.i, ptr %dh.i, align 2
  %scale149.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 9
  %bcmp315.i = call i32 @bcmp(ptr noundef dereferenceable(12) %scale149.i, ptr noundef dereferenceable(12) %scale.i, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp315.i)
  %tobool152.not.i = icmp eq i32 %bcmp315.i, 0
  br i1 %tobool152.not.i, label %if.then127.i.if.end159.i_crit_edge, label %if.then153.i

if.then127.i.if.end159.i_crit_edge:               ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159.i

if.then153.i:                                     ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #10
  %set154.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %233 = ptrtoint ptr %set154.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load155.i = load i8, ptr %set154.i, align 1
  %bf.set157.i = or i8 %bf.load155.i, 4
  store i8 %bf.set157.i, ptr %set154.i, align 1
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then153.i, %if.then127.i.if.end159.i_crit_edge, %if.end124.i.if.end159.i_crit_edge
  %234 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add.ptr, align 8
  %blend_set.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %235, i32 0, i32 21
  %236 = ptrtoint ptr %blend_set.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %blend_set.i, align 4
  %tobool161.not.i = icmp eq ptr %237, null
  br i1 %tobool161.not.i, label %if.end159.i.if.end212.i_crit_edge, label %if.then162.i

if.end159.i.if.end212.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212.i

if.then162.i:                                     ; preds = %if.end159.i
  %normalized_zpos.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %238 = ptrtoint ptr %normalized_zpos.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %normalized_zpos.i, align 4
  %240 = trunc i32 %239 to i8
  %conv164.i = xor i8 %240, -1
  %blend.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 11
  %241 = ptrtoint ptr %blend.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv164.i, ptr %blend.i, align 8
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 12
  %242 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %alpha.i, align 8
  %244 = lshr i16 %243, 8
  %conv168.i = trunc i16 %244 to i8
  %k1.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 11, i32 1
  %245 = ptrtoint ptr %k1.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv168.i, ptr %k1.i, align 1
  %pixel_blend_mode.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 13
  %246 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %pixel_blend_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %247)
  %switch.selectcmp.i234 = icmp eq i16 %247, 1
  %switch.select.i = select i1 %switch.selectcmp.i234, i8 87, i8 36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %247)
  %switch.selectcmp332.i = icmp eq i16 %247, 0
  %switch.select333.i = select i1 %switch.selectcmp332.i, i8 39, i8 %switch.select.i
  %src_color193.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 11, i32 2
  %248 = ptrtoint ptr %src_color193.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %switch.select333.i, ptr %src_color193.i, align 2
  %blend202.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 11
  %bcmp314.i = call i32 @bcmp(ptr noundef dereferenceable(3) %blend202.i, ptr noundef dereferenceable(3) %blend.i, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp314.i)
  %tobool205.not.i = icmp eq i32 %bcmp314.i, 0
  br i1 %tobool205.not.i, label %if.then162.i.if.end212.i_crit_edge, label %if.then206.i

if.then162.i.if.end212.i_crit_edge:               ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212.i

if.then206.i:                                     ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #10
  %set207.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %249 = ptrtoint ptr %set207.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %bf.load208.i = load i8, ptr %set207.i, align 1
  %bf.set210.i = or i8 %bf.load208.i, 1
  store i8 %bf.set210.i, ptr %set207.i, align 1
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.then206.i, %if.then162.i.if.end212.i_crit_edge, %if.end159.i.if.end212.i_crit_edge
  %immd.i = getelementptr i8, ptr %plane, i32 -36
  %250 = ptrtoint ptr %immd.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %immd.i, align 4
  %tobool213.not.i = icmp eq ptr %251, null
  br i1 %tobool213.not.i, label %if.end212.i.nv50_wndw_atomic_check_acquire.exit_crit_edge, label %if.then214.i

if.end212.i.nv50_wndw_atomic_check_acquire.exit_crit_edge: ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_acquire.exit

if.then214.i:                                     ; preds = %if.end212.i
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %252 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %crtc_x.i, align 8
  %conv216.i = trunc i32 %253 to i16
  %point.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 10
  %254 = ptrtoint ptr %point.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv216.i, ptr %point.i, align 4
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %255 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %crtc_y.i, align 4
  %conv218.i = trunc i32 %256 to i16
  %y.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 10, i32 1
  %257 = ptrtoint ptr %y.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv218.i, ptr %y.i, align 2
  %point220.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 10
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4) %point220.i, ptr noundef dereferenceable(4) %point.i, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool223.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool223.not.i, label %if.then214.i.nv50_wndw_atomic_check_acquire.exit_crit_edge, label %if.then224.i

if.then214.i.nv50_wndw_atomic_check_acquire.exit_crit_edge: ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_acquire.exit

if.then224.i:                                     ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #10
  %set225.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %258 = ptrtoint ptr %set225.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %bf.load226.i = load i8, ptr %set225.i, align 1
  %bf.set228.i = or i8 %bf.load226.i, 2
  store i8 %bf.set228.i, ptr %set225.i, align 1
  br label %nv50_wndw_atomic_check_acquire.exit

nv50_wndw_atomic_check_acquire.exit:              ; preds = %if.then224.i, %if.then214.i.nv50_wndw_atomic_check_acquire.exit_crit_edge, %if.end212.i.nv50_wndw_atomic_check_acquire.exit_crit_edge
  %259 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %add.ptr, align 8
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %call232.i = call i32 %262(ptr noundef %add.ptr, ptr noundef %5, ptr noundef %asyh.0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tile_mode.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232.i)
  %tobool78.not = icmp eq i32 %call232.i, 0
  br i1 %tobool78.not, label %if.end80, label %nv50_wndw_atomic_check_acquire.exit.cleanup_crit_edge

nv50_wndw_atomic_check_acquire.exit.cleanup_crit_edge: ; preds = %nv50_wndw_atomic_check_acquire.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end80:                                         ; preds = %nv50_wndw_atomic_check_acquire.exit
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr i8, ptr %plane, i32 -32
  %263 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %id, align 8
  %shl = shl nuw i32 1, %264
  %wndw81 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh.0, i32 0, i32 1
  %265 = ptrtoint ptr %wndw81 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %wndw81, align 4
  %or = or i32 %266, %shl
  store i32 %or, ptr %wndw81, align 4
  br label %if.end92

if.else82:                                        ; preds = %if.end72.if.else82_crit_edge, %if.end52.if.else82_crit_edge
  %visible83 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 2
  %267 = ptrtoint ptr %visible83 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %visible83, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool84.not = icmp eq i8 %268, 0
  br i1 %tobool84.not, label %if.else82.cleanup_crit_edge, label %if.then85

if.else82.cleanup_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %if.else82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %269 = load i32, ptr @__drm_debug, align 4
  %and.i.i235 = and i32 %269, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i235)
  %tobool.i.not.i236 = icmp eq i32 %and.i.i235, 0
  br i1 %tobool.i.not.i236, label %if.then85.nv50_wndw_atomic_check_release.exit_crit_edge, label %do.body2.i

if.then85.nv50_wndw_atomic_check_release.exit_crit_edge: ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv50_wndw_atomic_check_release.exit

do.body2.i:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %270 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %plane, align 8
  %dev_private.i.i238 = getelementptr inbounds %struct.drm_device, ptr %271, i32 0, i32 5
  %272 = ptrtoint ptr %dev_private.i.i238 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev_private.i.i238, align 4
  %drm4.i = getelementptr inbounds %struct.nouveau_drm, ptr %273, i32 0, i32 2, i32 1
  %274 = ptrtoint ptr %drm4.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %drm4.i, align 8
  %dev5.i = getelementptr inbounds %struct.nouveau_drm, ptr %275, i32 0, i32 3
  %276 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev5.i, align 8
  %dev6.i239 = getelementptr inbounds %struct.drm_device, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %dev6.i239 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev6.i239, align 4
  %name.i240 = getelementptr inbounds %struct.nouveau_drm, ptr %273, i32 0, i32 2, i32 12
  %name8.i = getelementptr i8, ptr %plane, i32 12
  %280 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %name8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %279, ptr noundef nonnull @.str.16, ptr noundef %name.i240, ptr noundef %281) #12
  br label %nv50_wndw_atomic_check_release.exit

nv50_wndw_atomic_check_release.exit:              ; preds = %do.body2.i, %if.then85.nv50_wndw_atomic_check_release.exit_crit_edge
  %282 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %add.ptr, align 8
  %release.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %release.i, align 4
  tail call void %285(ptr noundef %add.ptr, ptr noundef %5, ptr noundef %harm.0) #8
  %ntfy.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 3
  %286 = ptrtoint ptr %ntfy.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %ntfy.i, align 4
  %sema.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 4
  %287 = ptrtoint ptr %sema.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 0, ptr %sema.i, align 4
  %xlut.i241 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 6
  %288 = ptrtoint ptr %xlut.i241 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 0, ptr %xlut.i241, align 8
  %handle15.i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8, i32 7
  %289 = call ptr @memset(ptr %handle15.i, i32 0, i32 24)
  %id86 = getelementptr i8, ptr %plane, i32 -32
  %290 = ptrtoint ptr %id86 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %id86, align 8
  %shl87 = shl nuw i32 1, %291
  %neg = xor i32 %shl87, -1
  %wndw88 = getelementptr inbounds %struct.nv50_head_atom, ptr %harm.0, i32 0, i32 1
  %292 = ptrtoint ptr %wndw88 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %wndw88, align 4
  %and = and i32 %293, %neg
  store i32 %and, ptr %wndw88, align 4
  br label %if.end92

if.end92:                                         ; preds = %nv50_wndw_atomic_check_release.exit, %if.end80
  %294 = ptrtoint ptr %visible53 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %visible53, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool94.not = icmp eq i8 %295, 0
  %brmerge = select i1 %tobool94.not, i1 true, i1 %modeset.0.off0
  br i1 %brmerge, label %if.then97, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then97:                                        ; preds = %if.end92
  %ntfy = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 3
  %296 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %ntfy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp98.not = icmp eq i32 %297, 0
  %clr = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 13
  %298 = ptrtoint ptr %clr to i32
  call void @__asan_load1_noabort(i32 %298)
  %bf.load99 = load i8, ptr %clr, align 4
  %bf.shl = select i1 %cmp98.not, i8 0, i8 -128
  %bf.clear100 = and i8 %bf.load99, 127
  %bf.set = or i8 %bf.clear100, %bf.shl
  store i8 %bf.set, ptr %clr, align 4
  %sema = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 4
  %299 = ptrtoint ptr %sema to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %sema, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %cmp103.not = icmp eq i32 %300, 0
  %bf.shl106 = select i1 %cmp103.not, i8 0, i8 64
  %bf.clear107 = and i8 %bf.set, -65
  %bf.set108 = or i8 %bf.shl106, %bf.clear107
  %301 = ptrtoint ptr %clr to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %bf.set108, ptr %clr, align 4
  %xlut = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 6
  %302 = ptrtoint ptr %xlut to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %xlut, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %cmp111.not = icmp eq i32 %303, 0
  %bf.shl114 = select i1 %cmp111.not, i8 0, i8 32
  %bf.clear115 = and i8 %bf.set108, -33
  %bf.set116 = or i8 %bf.clear115, %bf.shl114
  %304 = ptrtoint ptr %clr to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %bf.set116, ptr %clr, align 4
  %brmerge245 = select i1 %cmp111.not, i1 true, i1 %tobool94.not
  br i1 %brmerge245, label %if.then97.if.end135_crit_edge, label %if.then126

if.then97.if.end135_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then126:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %xlut127 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 6
  %305 = ptrtoint ptr %xlut127 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %xlut127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp129.not = icmp eq i32 %306, 0
  %set = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  %307 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %307)
  %bf.load130 = load i8, ptr %set, align 1
  %bf.shl131 = select i1 %cmp129.not, i8 0, i8 32
  %bf.clear132 = and i8 %bf.load130, -33
  %bf.set133 = or i8 %bf.clear132, %bf.shl131
  store i8 %bf.set133, ptr %set, align 1
  br label %if.end135

if.end135:                                        ; preds = %if.then126, %if.then97.if.end135_crit_edge
  %valid = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 7, i32 1
  %308 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %valid, align 8, !range !57
  %310 = ptrtoint ptr %clr to i32
  call void @__asan_load1_noabort(i32 %310)
  %bf.load138 = load i8, ptr %clr, align 4
  %bf.shl139 = shl nuw nsw i8 %309, 4
  %bf.clear140 = and i8 %bf.load138, -17
  %bf.set141 = or i8 %bf.clear140, %bf.shl139
  store i8 %bf.set141, ptr %clr, align 4
  %311 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %add.ptr, align 8
  %image_clr = getelementptr inbounds %struct.nv50_wndw_func, ptr %312, i32 0, i32 19
  %313 = ptrtoint ptr %image_clr to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %image_clr, align 4
  %tobool144.not = icmp eq ptr %314, null
  br i1 %tobool144.not, label %if.end135.cleanup_crit_edge, label %if.then145

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then145:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %handle146 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %7, i32 0, i32 8, i32 7
  %315 = ptrtoint ptr %handle146 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %handle146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp147.not = icmp eq i32 %316, 0
  %bf.shl150 = select i1 %cmp147.not, i8 0, i8 8
  %bf.clear151 = and i8 %bf.set141, -9
  %bf.set152 = or i8 %bf.shl150, %bf.clear151
  %317 = ptrtoint ptr %clr to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %bf.set152, ptr %clr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then145, %if.end135.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.else82.cleanup_crit_edge, %nv50_wndw_atomic_check_acquire.exit.cleanup_crit_edge, %nv50_wndw_atomic_check_acquire.exit.thread, %if.then49, %if.then29
  %retval.0 = phi i32 [ %25, %if.then29 ], [ %36, %if.then49 ], [ %call232.i, %nv50_wndw_atomic_check_acquire.exit.cleanup_crit_edge ], [ 0, %if.else82.cleanup_crit_edge ], [ 0, %if.end92.cleanup_crit_edge ], [ 0, %if.end135.cleanup_crit_edge ], [ 0, %if.then145 ], [ -22, %nv50_wndw_atomic_check_acquire.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_framebuffer_get_layout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @nv50_wndw, !1, !"nv50_wndw", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 686, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 752, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 815, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv50_wndw_new._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv50_wndw_new._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @nv50_cursor_format_modifiers, !13, !"nv50_cursor_format_modifiers", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 714, i32 18}
!14 = !{ptr @nv50_wndw_helper, !15, !"nv50_wndw_helper", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 584, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 543, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nv50_wndw_prepare_fb._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nv50_wndw_prepare_fb._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 102, i32 46}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 521, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nv50_wndw_cleanup_fb._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nv50_wndw_cleanup_fb._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 448, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nv50_wndw_atomic_check._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nv50_wndw_atomic_check._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @nv50_wndw_atomic_check_lut.dummy, !35, !"dummy", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 399, i32 35}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 278, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nv50_wndw_atomic_check_acquire._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @nv50_wndw_atomic_check_acquire._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndw.c", i32 197, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nv50_wndw_atomic_check_release._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @nv50_wndw_atomic_check_release._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"auto-init"}
!57 = !{i8 0, i8 2}
!58 = !{i64 2148371759, i64 2148371791, i64 2148371820, i64 2148371854, i64 2148371885, i64 2148371908}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148459784}
!61 = !{i64 2148374224, i64 2148374256, i64 2148374285, i64 2148374319, i64 2148374350, i64 2148374373}
!62 = !{i64 2150070679}
