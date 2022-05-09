; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.98, %struct.anon.99, %struct.anon.104, ptr, %struct.anon.105, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.106, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.118 }
%struct.nvif_parent = type { ptr }
%struct.anon.98 = type { ptr, i32, i32, i8 }
%struct.anon.99 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.100] }
%struct.anon.100 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.104 = type { i64, i64 }
%struct.anon.105 = type { i32, i64 }
%struct.anon.106 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.107, i8 }
%union.anon.107 = type { %struct.anon.111 }
%struct.anon.111 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.113 = type { i32 }
%struct.anon.114 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.115 = type { i16, i16 }
%struct.anon.116 = type { i16, i16, i16, %struct.anon.117, i16 }
%struct.anon.117 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.118 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_channel = type { %struct.anon.101, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.102, i8, ptr, %struct.anon.103, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.101 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.102 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.103 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.97, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.97 = type { i32, ptr }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.nv04_page_flip_state = type { %struct.list_head, ptr, ptr, i32, i32, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.121, %struct.anon.122, %struct.anon.123, ptr, ptr }
%struct.anon.121 = type { i32, i8, i32, i32 }
%struct.anon.122 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.123 = type { i32 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.124, i32, i32 }
%union.anon.124 = type { %struct.anon.126 }
%struct.anon.126 = type { i16, i16 }
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
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rgb = type { i8, i8, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.92, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.92 = type { [4 x i8] }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.192, %struct.anon.192 }
%struct.anon.192 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.anon.211 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.187, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.187 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.anon.125 = type { i8, i8, i8, i8 }

@nv04_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr null, ptr @nv04_crtc_cursor_set, ptr null, ptr @nv04_crtc_cursor_move, ptr @nv_crtc_gamma_set, ptr @nv_crtc_destroy, ptr @drm_crtc_helper_set_config, ptr @nv04_crtc_page_flip, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_vblank_enable, ptr @nouveau_display_vblank_disable, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@nv04_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr @nv_crtc_dpms, ptr @nv_crtc_prepare, ptr @nv_crtc_commit, ptr null, ptr null, ptr @nv_crtc_mode_set, ptr null, ptr @nv04_crtc_mode_set_base, ptr @nv04_crtc_mode_set_base_atomic, ptr @nv_crtc_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_scanoutpos }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kmsVbl\00", [25 x i8] zeroinitializer }, align 32
@nv04_finish_page_flip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1060, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unexpected pageflip\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nv04_finish_page_flip\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/dispnv04/crtc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_finish_page_flip._entry_ptr = internal global ptr @nv04_finish_page_flip._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate primary plane\0A\00", [62 x i8] zeroinitializer }, align 32
@drm_primary_helper_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@modeset_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 875713112, i32 909199186, i32 892424792], [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nv04_crtc_page_flip = private unnamed_addr constant [20 x i8] c"nv04_crtc_page_flip\00", align 1
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x012c\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0134\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0100\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0130\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.nv04_page_flip_emit = private unnamed_addr constant [20 x i8] c"nv04_page_flip_emit\00", align 1
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NV_SW_PAGE_FLIP\0A\00", [53 x i8] zeroinitializer }, align 32
@nv_crtc_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 184, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Setting dpms mode %d on CRTC %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv_crtc_dpms\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nv_crtc_dpms._entry_ptr = internal global ptr @nv_crtc_dpms._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@nv_crtc_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 646, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: CTRC mode on CRTC %d:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nv_crtc_mode_set\00", [47 x i8] zeroinitializer }, align 32
@nv_crtc_mode_set._entry_ptr = internal global ptr @nv_crtc_mode_set._entry, section ".printk_index", align 4
@nv_crtc_calc_state_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 166, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: vpll: n1 %d n2 %d m1 %d m2 %d log2p %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nv_crtc_calc_state_ext\00", [41 x i8] zeroinitializer }, align 32
@nv_crtc_calc_state_ext._entry_ptr = internal global ptr @nv_crtc_calc_state_ext._entry, section ".printk_index", align 4
@nv_crtc_calc_state_ext._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 169, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: vpll: n %d m %d log2p %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nv_crtc_calc_state_ext._entry_ptr.28 = internal global ptr @nv_crtc_calc_state_ext._entry.26, section ".printk_index", align 4
@nv04_crtc_do_mode_set_base._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 836, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: index %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nv04_crtc_do_mode_set_base\00", [37 x i8] zeroinitializer }, align 32
@nv04_crtc_do_mode_set_base._entry_ptr = internal global ptr @nv04_crtc_do_mode_set_base._entry, section ".printk_index", align 4
@nv04_crtc_do_mode_set_base._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 840, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: No FB bound\0A\00", [47 x i8] zeroinitializer }, align 32
@nv04_crtc_do_mode_set_base._entry_ptr.33 = internal global ptr @nv04_crtc_do_mode_set_base._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"nv04_crtc_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1249, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"nv04_crtc_helper_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1261, i32 43 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1355, i32 45 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1060, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1286, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"modeset_formats\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1272, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1214, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1215, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1216, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1217, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1129, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 183, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 646, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 165, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 168, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 836, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/crtc.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 840, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @nv04_crtc_do_mode_set_base._entry, ptr @nv04_crtc_do_mode_set_base._entry.31, ptr @nv04_crtc_do_mode_set_base._entry_ptr, ptr @nv04_crtc_do_mode_set_base._entry_ptr.33, ptr @nv04_finish_page_flip._entry, ptr @nv04_finish_page_flip._entry_ptr, ptr @nv_crtc_calc_state_ext._entry, ptr @nv_crtc_calc_state_ext._entry.26, ptr @nv_crtc_calc_state_ext._entry_ptr, ptr @nv_crtc_calc_state_ext._entry_ptr.28, ptr @nv_crtc_dpms._entry, ptr @nv_crtc_dpms._entry_ptr, ptr @nv_crtc_mode_set._entry, ptr @nv_crtc_mode_set._entry_ptr, ptr @nv04_crtc_funcs, ptr @nv04_crtc_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @modeset_formats, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_finish_page_flip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeset_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_crtc_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_crtc_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_crtc_calc_state_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_crtc_calc_state_ext._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_crtc_do_mode_set_base._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_crtc_do_mode_set_base._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_flip_complete(ptr nocapture noundef readonly %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %client = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %drm1 = getelementptr inbounds %struct.nouveau_cli, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm1, align 8
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %fence.i = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fence.i, align 4
  %drm1.i = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %drm1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drm1.i, align 4
  %dev2.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2.i, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 28
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #8
  %flip.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %flip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %flip.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %flip.i
  br i1 %cmp.i.not.i, label %nv04_finish_page_flip.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %event.i = getelementptr inbounds %struct.nv04_page_flip_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %event.i, align 8
  %tobool20.not.i = icmp eq ptr %17, null
  %crtc23.i = getelementptr inbounds %struct.nv04_page_flip_state, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %crtc23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc23.i, align 4
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %19, ptr noundef nonnull %17) #8
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_vblank_put(ptr noundef %19) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then21.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.i.if.then_crit_edge

if.end24.i.if.then_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %if.then

nv04_finish_page_flip.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drm12.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %drm12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drm12.i, align 8
  %dev13.i = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev13.i, align 8
  %dev14.i = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev14.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef %name.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call4.i) #8
  br label %if.end

if.then:                                          ; preds = %if.end.i.i.i, %if.end24.i.if.then_crit_edge
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %crtc23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %state.sroa.6.0.copyload = load ptr, ptr %crtc23.i, align 4
  %state.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 16
  %35 = ptrtoint ptr %state.sroa.9.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %state.sroa.9.0.copyload = load i32, ptr %state.sroa.9.0..sroa_idx, align 8
  %state.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 20
  %36 = ptrtoint ptr %state.sroa.11.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %state.sroa.11.0.copyload = load i32, ptr %state.sroa.11.0..sroa_idx, align 4
  %state.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %15, i32 24
  %37 = ptrtoint ptr %state.sroa.13.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %37)
  %state.sroa.13.0.copyload = load i64, ptr %state.sroa.13.0..sroa_idx, align 8
  tail call void @kfree(ptr noundef %15) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call4.i) #8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %state.sroa.6.0.copyload, i32 0, i32 8
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i, align 4
  %y = getelementptr inbounds %struct.drm_crtc, ptr %state.sroa.6.0.copyload, i32 0, i32 15
  %42 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y, align 8
  %mul = mul i32 %43, %state.sroa.11.0.copyload
  %x = getelementptr inbounds %struct.drm_crtc, ptr %state.sroa.6.0.copyload, i32 0, i32 14
  %44 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %x, align 4
  %mul5 = mul i32 %45, %state.sroa.9.0.copyload
  %div = sdiv i32 %mul5, 8
  %46 = trunc i64 %state.sroa.13.0.copyload to i32
  %47 = add i32 %mul, %46
  %conv8 = add i32 %47, %div
  tail call fastcc void @nv_set_crtc_base(ptr noundef %39, i32 noundef %41, i32 noundef %conv8)
  br label %if.end

if.end:                                           ; preds = %if.then, %nv04_finish_page_flip.exit
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_set_crtc_base(ptr nocapture noundef readonly %dev, i32 noundef %head, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6293504, i32 6301696
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !76

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %offset) #8, !srcloc !78
  br label %NVWriteCRTC.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %offset) #8
  br label %NVWriteCRTC.exit

NVWriteCRTC.exit:                                 ; preds = %if.else.i, %do.body.i
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %NVWriteCRTC.exit.if.end_crit_edge

NVWriteCRTC.exit.if.end_crit_edge:                ; preds = %NVWriteCRTC.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %NVWriteCRTC.exit
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %device1.i13 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %map.i14 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i14, align 8
  %tobool.not.i15 = icmp eq ptr %11, null
  %mul6.i = shl i32 %head, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i15, label %if.else.i18, label %if.then.i, !prof !76

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 45) #8, !srcloc !80
  br label %if.end.i

if.else.i18:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i17 = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i13, i32 noundef 1, i64 noundef %conv.i17, i32 noundef 45) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i18, %if.then.i
  %12 = ptrtoint ptr %map.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i14, align 8
  %tobool12.not.i = icmp eq ptr %13, null
  %add29.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !76

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i = getelementptr i8, ptr %13, i32 %add29.i
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %conv26.i = zext i8 %14 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i = sext i32 %add29.i to i64
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i13, i32 noundef 1, i64 noundef %conv30.i) #8
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %conv34.i = trunc i32 %_data.0.i to i8
  %15 = and i8 %conv34.i, -65
  %shr = lshr i32 %offset, 18
  %16 = trunc i32 %shr to i8
  %17 = and i8 %16, 64
  %conv5 = or i8 %15, %17
  %18 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i, align 4
  %device1.i20 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3
  %map.i21 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 0, i32 6
  %20 = ptrtoint ptr %map.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i21, align 8
  %tobool.not.i22 = icmp eq ptr %21, null
  br i1 %tobool.not.i22, label %if.else.i28, label %if.then.i26, !prof !76

if.then.i26:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i25 = getelementptr i8, ptr %21, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i25, i8 45) #8, !srcloc !80
  br label %if.end.i30

if.else.i28:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i27 = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i20, i32 noundef 1, i64 noundef %conv.i27, i32 noundef 45) #8
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.else.i28, %if.then.i26
  %22 = ptrtoint ptr %map.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i21, align 8
  %tobool12.not.i29 = icmp eq ptr %23, null
  br i1 %tobool12.not.i29, label %if.else25.i, label %if.then19.i32, !prof !76

if.then19.i32:                                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i31 = getelementptr i8, ptr %23, i32 %add29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i31, i8 %conv5) #8, !srcloc !80
  br label %if.end

if.else25.i:                                      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i = sext i32 %add29.i to i64
  %conv29.i = zext i8 %conv5 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i20, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else25.i, %if.then19.i32, %NVWriteCRTC.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_crtc_create(ptr noundef %dev, i32 noundef %crtc_num) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvif_notify_head_req_v0, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1160) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lut = getelementptr inbounds %struct.nouveau_crtc, ptr %call7.i.i, i32 0, i32 12
  %5 = ptrtoint ptr %lut to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lut, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %crtc_num, ptr %index, align 8
  %last_dpms = getelementptr inbounds %struct.nouveau_crtc, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %last_dpms, align 4
  %save = getelementptr inbounds %struct.nouveau_crtc, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %save to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nv_crtc_save, ptr %save, align 4
  %restore = getelementptr inbounds %struct.nouveau_crtc, ptr %call7.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %restore to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nv_crtc_restore, ptr %restore, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 528) #12
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  br label %create_primary_plane.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 0, ptr noundef nonnull @drm_primary_helper_funcs, ptr noundef nonnull @modeset_formats, i32 noundef 3, ptr noundef null, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.create_primary_plane.exit_crit_edge, label %if.then2.i

if.end.i.create_primary_plane.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_primary_plane.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %create_primary_plane.exit

create_primary_plane.exit:                        ; preds = %if.then2.i, %if.end.i.create_primary_plane.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ null, %if.then.i ], [ null, %if.then2.i ], [ %call7.i.i.i, %if.end.i.create_primary_plane.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %retval.0.i, ptr noundef null, ptr noundef nonnull @nv04_crtc_funcs, ptr noundef null) #8
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nv04_crtc_helper_funcs, ptr %helper_private.i, align 8
  %call6 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i, i32 noundef 256) #8
  %12 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i.i, align 4
  %client = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2
  %cursor = getelementptr inbounds %struct.nouveau_crtc, ptr %call7.i.i, i32 0, i32 11
  %call8 = tail call i32 @nouveau_bo_new(ptr noundef %client, i64 noundef 16384, i32 noundef 256, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %cursor) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %create_primary_plane.exit.if.end32_crit_edge

create_primary_plane.exit.if.end32_crit_edge:     ; preds = %create_primary_plane.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then10:                                        ; preds = %create_primary_plane.exit
  %14 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cursor, align 8
  %call13 = tail call i32 @nouveau_bo_pin(ptr noundef %15, i32 noundef 2, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.then10.if.then27_crit_edge

if.then10.if.then27_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then15:                                        ; preds = %if.then10
  %16 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cursor, align 8
  %call18 = tail call i32 @nouveau_bo_map(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.if.end32_crit_edge, label %if.then20

if.then15.if.end32_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cursor, align 8
  %call23 = tail call i32 @nouveau_bo_unpin(ptr noundef %19) #8
  br label %if.then27

if.then27:                                        ; preds = %if.then20, %if.then10.if.then27_crit_edge
  %tobool.not.i62 = icmp eq ptr %cursor, null
  br i1 %tobool.not.i62, label %if.then27.if.end32_crit_edge, label %if.end.i63

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end.i63:                                       ; preds = %if.then27
  %20 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cursor, align 8
  store ptr null, ptr %cursor, align 8
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.end.i63.if.end32_crit_edge, label %if.then6.i

if.end.i63.if.end32_crit_edge:                    ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then6.i:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ttm_bo_put(ptr noundef nonnull %21) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then6.i, %if.end.i63.if.end32_crit_edge, %if.then27.if.end32_crit_edge, %if.then15.if.end32_crit_edge, %create_primary_plane.exit.if.end32_crit_edge
  %call33 = tail call i32 @nv04_cursor_init(ptr noundef nonnull %call7.i.i) #8
  %disp34 = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %.compoundliteral, align 1
  %head = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %.compoundliteral, i32 0, i32 1
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 8
  %conv = trunc i32 %24 to i8
  %25 = ptrtoint ptr %head to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %head, align 1
  %pad02 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %.compoundliteral, i32 0, i32 2
  %26 = call ptr @memset(ptr %pad02, i32 0, i32 6)
  %vblank = getelementptr inbounds %struct.nouveau_crtc, ptr %call7.i.i, i32 0, i32 2
  %call36 = call i32 @nvif_notify_ctor(ptr noundef %disp34, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_crtc_vblank_handler, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral, i32 noundef 8, i32 noundef 8, ptr noundef %vblank) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end32 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_crtc_save(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
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
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %11, i32 -102
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device.i, align 2
  %14 = and i16 %13, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %15 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.i = icmp ugt i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %14)
  %cmp5.not.i = icmp ne i16 %14, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %14)
  %cmp8.not.i = icmp ne i16 %14, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %14)
  %cmp11.not.i = icmp ne i16 %14, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %14)
  %cmp14.not.i = icmp ne i16 %14, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @NVSetOwner(ptr noundef %1, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %saved_reg = getelementptr inbounds %struct.nv04_display, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crtc, align 8
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 8
  tail call void @nouveau_hw_save_state(ptr noundef %18, i32 noundef %20, ptr noundef %saved_reg) #8
  %sel_clk = getelementptr inbounds %struct.nv04_display, ptr %7, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %sel_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sel_clk, align 4
  %and = and i32 %22, -327681
  %sel_clk13 = getelementptr inbounds %struct.nv04_mode_state, ptr %7, i32 0, i32 2
  %23 = ptrtoint ptr %sel_clk13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %sel_clk13, align 4
  %arrayidx14 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %9, i32 1, i32 51
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 51
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx16, align 1
  %pllsel = getelementptr inbounds %struct.nv04_display, ptr %7, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %pllsel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pllsel, align 4
  %and17 = and i32 %28, -806291969
  %pllsel18 = getelementptr inbounds %struct.nv04_mode_state, ptr %7, i32 0, i32 1
  %29 = ptrtoint ptr %pllsel18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and17, ptr %pllsel18, align 4
  %gpio_ext = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %9, i32 10
  %30 = ptrtoint ptr %gpio_ext to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_ext, align 4
  %gpio_ext19 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 10
  %32 = ptrtoint ptr %gpio_ext19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %gpio_ext19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_crtc_restore(ptr nocapture noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %display.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %saved_reg = getelementptr inbounds %struct.nv04_display, ptr %9, i32 0, i32 1
  %arrayidx3 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %3, i32 1, i32 33
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %13, i32 -102
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.i, align 2
  %16 = and i16 %15, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %17 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp ugt i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %16)
  %cmp5.not.i = icmp ne i16 %16, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %16)
  %cmp8.not.i = icmp ne i16 %16, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %16)
  %cmp11.not.i = icmp ne i16 %16, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %16)
  %cmp14.not.i = icmp ne i16 %16, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @NVSetOwner(ptr noundef %1, i32 noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc, align 8
  %21 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i22 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %display.i.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %display.i.i22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %saved_reg9 = getelementptr inbounds %struct.nv04_display, ptr %26, i32 0, i32 1
  tail call void @nouveau_hw_load_state(ptr noundef %20, i32 noundef %3, ptr noundef %saved_reg9) #8
  %27 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc, align 8
  %conv = zext i8 %11 to i32
  tail call fastcc void @nv_lock_vga_crtc_shadow(ptr noundef %28, i32 noundef %3, i32 noundef %conv)
  %last_dpms = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 7
  %29 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 128, ptr %last_dpms, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_bo_ref(ptr noundef %ref, ptr noundef %pnvbo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %pnvbo, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pnvbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnvbo, align 4
  %tobool1.not = icmp eq ptr %ref, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %kref.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %ref, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then2
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end4_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end4_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %pnvbo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ref, ptr %pnvbo, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ttm_bo_put(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_cursor_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_crtc_vblank_handler(ptr noundef %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notify, i32 -996
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %add.ptr) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVSetOwner(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_save_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_load_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_lock_vga_crtc_shadow(ptr nocapture noundef readonly %dev, i32 noundef %head, i32 noundef %lock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %cmp = icmp slt i32 %lock, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = shl i32 %head, 13
  %.pre21 = add i32 %.pre, 6296532
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %mul6.i = shl i32 %head, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !76

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 33) #8, !srcloc !80
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 33) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %5, null
  %add29.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !76

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i = getelementptr i8, ptr %5, i32 %add29.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %conv26.i = zext i8 %6 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i = sext i32 %add29.i to i64
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv30.i) #8
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %7 = and i32 %_data.0.i, 5
  %or = or i32 %7, 250
  br label %if.end

if.end:                                           ; preds = %NVReadVgaCrtc.exit, %entry.if.end_crit_edge
  %add7.i12.pre-phi = phi i32 [ %.pre21, %entry.if.end_crit_edge ], [ %add7.i, %NVReadVgaCrtc.exit ]
  %mul6.i11.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %mul6.i, %NVReadVgaCrtc.exit ]
  %cr21.0.in = phi i32 [ %lock, %entry.if.end_crit_edge ], [ %or, %NVReadVgaCrtc.exit ]
  %cr21.0 = trunc i32 %cr21.0.in to i8
  %dev_private.i.i7 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i.i7, align 4
  %device1.i8 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %map.i9 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i9, align 8
  %tobool.not.i10 = icmp eq ptr %11, null
  br i1 %tobool.not.i10, label %if.else.i16, label %if.then.i14, !prof !76

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i13 = getelementptr i8, ptr %11, i32 %add7.i12.pre-phi
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 33) #8, !srcloc !80
  br label %if.end.i18

if.else.i16:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i15 = sext i32 %add7.i12.pre-phi to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i8, i32 noundef 1, i64 noundef %conv.i15, i32 noundef 33) #8
  br label %if.end.i18

if.end.i18:                                       ; preds = %if.else.i16, %if.then.i14
  %12 = ptrtoint ptr %map.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i9, align 8
  %tobool12.not.i17 = icmp eq ptr %13, null
  %add27.i = add i32 %mul6.i11.pre-phi, 6296533
  br i1 %tobool12.not.i17, label %if.else25.i, label %if.then19.i20, !prof !76

if.then19.i20:                                    ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i19 = getelementptr i8, ptr %13, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i19, i8 %cr21.0) #8, !srcloc !80
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = and i32 %cr21.0.in, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i8, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #8
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_crtc_cursor_set(ptr noundef %crtc, ptr noundef %file_priv, i32 noundef %buffer_handle, i32 noundef %width, i32 noundef %height) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dev2 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_handle)
  %tobool.not = icmp eq i32 %buffer_handle, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hide = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %hide to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hide, align 8
  tail call void %7(ptr noundef %crtc, i1 noundef zeroext true) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %width)
  %cmp.not = icmp eq i32 %width, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %height)
  %cmp5.not = icmp eq i32 %height, 64
  %or.cond = and i1 %cmp.not, %cmp5.not
  br i1 %or.cond, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %buffer_handle) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call13 = tail call i32 @nouveau_bo_map(ptr noundef nonnull %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.if.then.i_crit_edge

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end16:                                         ; preds = %if.end11
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %8 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %9)
  %cmp17 = icmp ugt i16 %9, 16
  %cursor20 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11
  %10 = ptrtoint ptr %cursor20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cursor20, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  br i1 %cmp17, label %if.end16.for.body.i_crit_edge, label %if.else

if.end16.for.body.i_crit_edge:                    ; preds = %if.end16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end16.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %call.i = tail call i32 @nouveau_bo_rd32(ptr noundef nonnull %call8, i32 noundef %i.030.i) #8
  %12 = add i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %12)
  %13 = icmp ult i32 %12, 33554432
  %pixel.0.i = select i1 %13, i32 %call.i, i32 %12
  %14 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i.i, align 4
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 1, i32 2
  %16 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %17)
  %cmp4.i = icmp eq i16 %17, 17
  %or17.i = tail call i32 @llvm.bswap.i32(i32 %pixel.0.i) #8
  %pixel.1.i = select i1 %cmp4.i, i32 %or17.i, i32 %pixel.0.i
  tail call void @nouveau_bo_wr32(ptr noundef %11, i32 noundef %i.030.i, i32 noundef %pixel.1.i) #8
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i, label %for.body.i.if.end23_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end23_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else:                                          ; preds = %if.end16
  %18 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i.i, align 4
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 1, i32 4
  %20 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.i.i = icmp ugt i8 %21, 1
  %cond.i.i = select i1 %cmp.i.i, i32 64, i32 32
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc15.i.for.cond1.preheader.i_crit_edge, %if.else
  %i.030.i58 = phi i32 [ 0, %if.else ], [ %inc16.i, %for.inc15.i.for.cond1.preheader.i_crit_edge ]
  %mul.i = shl i32 %i.030.i58, 6
  %mul5.i = mul nuw nsw i32 %i.030.i58, %cond.i.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %j.029.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i59, %for.body3.i.for.body3.i_crit_edge ]
  %add.i = add nuw nsw i32 %j.029.i, %mul.i
  %call4.i = tail call i32 @nouveau_bo_rd32(ptr noundef nonnull %call8, i32 noundef %add.i) #8
  %add6.i = add nuw nsw i32 %j.029.i, %mul5.i
  %and.i = lshr i32 %call4.i, 16
  %shr.i = and i32 %and.i, 32768
  %and7.i = lshr i32 %call4.i, 9
  %shr8.i = and i32 %and7.i, 31744
  %or.i = or i32 %shr.i, %shr8.i
  %and9.i = lshr i32 %call4.i, 6
  %shr10.i = and i32 %and9.i, 992
  %or11.i = or i32 %or.i, %shr10.i
  %and12.i = lshr i32 %call4.i, 3
  %shr13.i = and i32 %and12.i, 31
  %or14.i = or i32 %or11.i, %shr13.i
  %conv.i = trunc i32 %or14.i to i16
  tail call void @nouveau_bo_wr16(ptr noundef %11, i32 noundef %add6.i, i16 noundef zeroext %conv.i) #8
  %inc.i59 = add nuw nsw i32 %j.029.i, 1
  %exitcond.not.i60 = icmp eq i32 %inc.i59, %cond.i.i
  br i1 %exitcond.not.i60, label %for.inc15.i, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.inc15.i:                                      ; preds = %for.body3.i
  %inc16.i = add nuw nsw i32 %i.030.i58, 1
  %exitcond31.not.i = icmp eq i32 %inc16.i, %cond.i.i
  br i1 %exitcond31.not.i, label %for.inc15.i.if.end23_crit_edge, label %for.inc15.i.for.cond1.preheader.i_crit_edge

for.inc15.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.inc15.i.if.end23_crit_edge:                   ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %for.inc15.i.if.end23_crit_edge, %for.body.i.if.end23_crit_edge
  tail call void @nouveau_bo_unmap(ptr noundef nonnull %call8) #8
  %cursor24 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11
  %22 = ptrtoint ptr %cursor24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cursor24, align 8
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset, align 8
  %conv26 = trunc i64 %25 to i32
  %offset28 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %offset28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv26, ptr %offset28, align 4
  %set_offset = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %set_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_offset, align 8
  tail call void %28(ptr noundef %crtc, i32 noundef %conv26) #8
  %show = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 5
  %29 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %show, align 4
  tail call void %30(ptr noundef %crtc, i1 noundef zeroext true) #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end23, %if.end11.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr nonnull %call8, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8, ptr nonnull %call8, i32 1, ptr nonnull elementtype(i32) %call8) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call8, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @drm_gem_object_free(ptr noundef nonnull %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %if.end7.cleanup_crit_edge ], [ %call13, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call13, %if.then10.i.i.i.i.i.i ], [ %call13, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_crtc_cursor_move(ptr noundef %crtc, i32 noundef %x, i32 noundef %y) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_pos = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %set_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_pos, align 4
  tail call void %1(ptr noundef %crtc, i32 noundef %x, i32 noundef %y) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_crtc_gamma_set(ptr nocapture noundef %crtc, ptr nocapture noundef readnone %r, ptr nocapture noundef readnone %g, ptr nocapture noundef readnone %b, i32 noundef %size, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lut = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 12
  %4 = ptrtoint ptr %lut to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lut, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %display.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %index.i = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 8
  %DAC.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %12, i32 0, i32 %14, i32 6
  %gamma_store.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %15 = ptrtoint ptr %gamma_store.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gamma_store.i, align 4
  %gamma_size.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %17 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gamma_size.i, align 8
  %add.ptr.i = getelementptr i16, ptr %16, i32 %18
  %add.ptr4.i = getelementptr i16, ptr %add.ptr.i, i32 %18
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.043.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %b.042.i = phi ptr [ %add.ptr4.i, %if.end ], [ %incdec.ptr14.i, %for.body.i.for.body.i_crit_edge ]
  %g.041.i = phi ptr [ %add.ptr.i, %if.end ], [ %incdec.ptr8.i, %for.body.i.for.body.i_crit_edge ]
  %r.040.i = phi ptr [ %16, %if.end ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %r.040.i, i32 1
  %19 = ptrtoint ptr %r.040.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %r.040.i, align 2
  %21 = lshr i16 %20, 8
  %conv5.i = trunc i16 %21 to i8
  %arrayidx6.i = getelementptr %struct.rgb, ptr %DAC.i, i32 %i.043.i
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %incdec.ptr8.i = getelementptr i16, ptr %g.041.i, i32 1
  %23 = ptrtoint ptr %g.041.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %g.041.i, align 2
  %25 = lshr i16 %24, 8
  %conv11.i = trunc i16 %25 to i8
  %g13.i = getelementptr %struct.rgb, ptr %DAC.i, i32 %i.043.i, i32 1
  %26 = ptrtoint ptr %g13.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11.i, ptr %g13.i, align 1
  %incdec.ptr14.i = getelementptr i16, ptr %b.042.i, i32 1
  %27 = ptrtoint ptr %b.042.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %b.042.i, align 2
  %29 = lshr i16 %28, 8
  %conv17.i = trunc i16 %29 to i8
  %b19.i = getelementptr %struct.rgb, ptr %DAC.i, i32 %i.043.i, i32 2
  %30 = ptrtoint ptr %b19.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv17.i, ptr %b19.i, align 1
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %nv_crtc_gamma_load.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nv_crtc_gamma_load.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i, align 8
  %33 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i39.i = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %display.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %display.i.i39.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  tail call void @nouveau_hw_load_state_palette(ptr noundef %6, i32 noundef %32, ptr noundef %38) #8
  br label %cleanup

cleanup:                                          ; preds = %nv_crtc_gamma_load.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
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
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %crtc) #8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %arrayidx = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %11) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %arrayidx11 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %13
  %tobool.not.i = icmp eq ptr %arrayidx11, null
  br i1 %tobool.not.i, label %if.end8.nouveau_bo_ref.exit_crit_edge, label %if.end.i

if.end8.nouveau_bo_ref.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nouveau_bo_ref.exit

if.end.i:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx11, align 4
  store ptr null, ptr %arrayidx11, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.end.i.nouveau_bo_ref.exit_crit_edge, label %if.then6.i

if.end.i.nouveau_bo_ref.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nouveau_bo_ref.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ttm_bo_put(ptr noundef nonnull %15) #8
  br label %nouveau_bo_ref.exit

nouveau_bo_ref.exit:                              ; preds = %if.then6.i, %if.end.i.nouveau_bo_ref.exit_crit_edge, %if.end8.nouveau_bo_ref.exit_crit_edge
  %cursor = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11
  %16 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cursor, align 8
  tail call void @nouveau_bo_unmap(ptr noundef %17) #8
  %18 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cursor, align 8
  %call15 = tail call i32 @nouveau_bo_unpin(ptr noundef %19) #8
  %tobool.not.i33 = icmp eq ptr %cursor, null
  br i1 %tobool.not.i33, label %nouveau_bo_ref.exit.nouveau_bo_ref.exit37_crit_edge, label %if.end.i34

nouveau_bo_ref.exit.nouveau_bo_ref.exit37_crit_edge: ; preds = %nouveau_bo_ref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nouveau_bo_ref.exit37

if.end.i34:                                       ; preds = %nouveau_bo_ref.exit
  %20 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cursor, align 4
  store ptr null, ptr %cursor, align 4
  %tobool5.not.i35 = icmp eq ptr %21, null
  br i1 %tobool5.not.i35, label %if.end.i34.nouveau_bo_ref.exit37_crit_edge, label %if.then6.i36

if.end.i34.nouveau_bo_ref.exit37_crit_edge:       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %nouveau_bo_ref.exit37

if.then6.i36:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ttm_bo_put(ptr noundef nonnull %21) #8
  br label %nouveau_bo_ref.exit37

nouveau_bo_ref.exit37:                            ; preds = %if.then6.i36, %if.end.i34.nouveau_bo_ref.exit37_crit_edge, %nouveau_bo_ref.exit.nouveau_bo_ref.exit37_crit_edge
  %vblank = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 2
  %call19 = tail call i32 @nvif_notify_dtor(ptr noundef %vblank) #8
  tail call void @kfree(ptr noundef nonnull %crtc) #8
  br label %cleanup

cleanup:                                          ; preds = %nouveau_bo_ref.exit37, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_crtc_page_flip(ptr noundef %crtc, ptr noundef %fb, ptr noundef %event, i32 noundef %flags, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb2, align 4
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %obj, align 4
  %obj4 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %10 = ptrtoint ptr %obj4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #8
  %12 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !88
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %display.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 8
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel, align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %client = getelementptr inbounds %struct.nouveau_channel, ptr %20, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %push11 = getelementptr inbounds %struct.anon.101, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %push11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %push11, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 32) #12
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %11, %9
  br i1 %cmp.not, label %if.end15.if.end21_crit_edge, label %if.then16

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then16:                                        ; preds = %if.end15
  %call17 = tail call i32 @nouveau_bo_pin(ptr noundef %11, i32 noundef 2, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.fail_free_crit_edge

if.then16.fail_free_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_free

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %mutex = getelementptr inbounds %struct.nouveau_cli, ptr %22, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %resv32.i = getelementptr inbounds %struct.drm_gem_object, ptr %11, i32 0, i32 9
  %26 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resv32.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %27, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -4
  %retval.1.i = select i1 %cmp.i, i32 -512, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool23.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.fail_unpin_crit_edge

if.end21.fail_unpin_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_unpin

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @nouveau_fence_sync(ptr noundef %11, ptr noundef nonnull %20, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %bdev.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #8
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 6
  %30 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %11, ptr noundef %31, ptr noundef null) #8
  %32 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %33, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #8
  %34 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resv32.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %35) #8
  tail call void @ww_mutex_unlock(ptr noundef %35) #8
  br label %fail_unpin

if.end30:                                         ; preds = %if.end25
  br i1 %cmp.not, label %if.end30.if.end39_crit_edge, label %if.then32

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then32:                                        ; preds = %if.end30
  %bdev.i.i1537 = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 1
  %36 = ptrtoint ptr %bdev.i.i1537 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev.i.i1537, align 8
  %lru_lock.i.i1538 = getelementptr inbounds %struct.ttm_device, ptr %37, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i1538) #8
  %resource.i.i1539 = getelementptr inbounds %struct.ttm_buffer_object, ptr %11, i32 0, i32 6
  %38 = ptrtoint ptr %resource.i.i1539 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource.i.i1539, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %11, ptr noundef %39, ptr noundef null) #8
  %40 = ptrtoint ptr %bdev.i.i1537 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev.i.i1537, align 8
  %lru_lock2.i.i1540 = getelementptr inbounds %struct.ttm_device, ptr %41, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i1540) #8
  %42 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resv32.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %43) #8
  tail call void @ww_mutex_unlock(ptr noundef %43) #8
  %resv32.i1542 = getelementptr inbounds %struct.drm_gem_object, ptr %9, i32 0, i32 9
  %44 = ptrtoint ptr %resv32.i1542 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resv32.i1542, align 8
  %call.i.i1543 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %45, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i1543)
  %cmp.i1544 = icmp eq i32 %call.i.i1543, -4
  %retval.1.i1545 = select i1 %cmp.i1544, i32 -512, i32 %call.i.i1543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i1545)
  %tobool36.not = icmp eq i32 %retval.1.i1545, 0
  br i1 %tobool36.not, label %if.then32.if.end39_crit_edge, label %fail_unpin.thread

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

fail_unpin.thread:                                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %if.then1334

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %46 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %format, align 8
  %48 = getelementptr inbounds %struct.drm_format_info, ptr %47, i32 0, i32 3
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 2
  %conv = zext i8 %50 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %51 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pitches, align 8
  %offset45 = getelementptr inbounds %struct.nouveau_bo, ptr %11, i32 0, i32 13
  %53 = ptrtoint ptr %offset45 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %offset45, align 8
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %call7.i.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 4
  %56 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  %57 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %event, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 8
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %58 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %crtc, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 16
  %59 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 8
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %60 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %52, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %61 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %54, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 8
  %call46 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  %62 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool47.not.not = icmp eq i32 %62, 0
  br i1 %tobool47.not.not, label %if.then48, label %if.end39.if.end1314_crit_edge

if.end39.if.end1314_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1314

if.then48:                                        ; preds = %if.end39
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 4
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %64, i32 8
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 6
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %66
  br i1 %cmp.not.i, label %if.then48.if.end123_crit_edge, label %if.then.i

if.then48.if.end123_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then.i:                                        ; preds = %if.then48
  %67 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %24, align 8
  %call.i = tail call i32 %68(ptr noundef %24, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end123_crit_edge, label %if.then.i.fail_unreserve_crit_edge

if.then.i.fail_unreserve_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_unreserve

if.then.i.if.end123_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.end123:                                        ; preds = %if.then.i.if.end123_crit_edge, %if.then48.if.end123_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %70, i32 8
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 5
  %71 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp136.not = icmp ult ptr %70, %add.ptr4.i
  br i1 %cmp136.not, label %if.end123.if.end161_crit_edge, label %do.end155, !prof !84

if.end123.if.end161_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

do.end155:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1214, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end161

if.end161:                                        ; preds = %do.end155, %if.end123.if.end161_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %cmp174.not = icmp ult ptr %73, %75
  br i1 %cmp174.not, label %if.end161.if.end199_crit_edge, label %do.end193, !prof !84

if.end161.if.end199_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

do.end193:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1214, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end199

if.end199:                                        ; preds = %do.end193, %if.end161.if.end199_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 2, i32 0, i32 6
  %78 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %79 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %80 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %client215 = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 2, i32 0, i32 1
  %86 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client215, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 2, i32 0, i32 3
  %90 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %handle, align 4
  %name217 = getelementptr inbounds %struct.nvif_push, ptr %24, i32 0, i32 2, i32 0, i32 2
  %92 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %85(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %sub.ptr.sub, i32 noundef 278828, i32 noundef 2, i32 noundef 300, i32 noundef 1, ptr noundef nonnull @__func__.nv04_crtc_page_flip) #8
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 278828, ptr %95, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp235.not = icmp ult ptr %97, %99
  br i1 %cmp235.not, label %if.end199.if.end260_crit_edge, label %do.end254, !prof !84

if.end199.if.end260_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

do.end254:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1214, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end260

if.end260:                                        ; preds = %do.end254, %if.end199.if.end260_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp274.not = icmp ult ptr %101, %103
  br i1 %cmp274.not, label %if.end260.if.end299_crit_edge, label %do.end293, !prof !84

if.end260.if.end299_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

do.end293:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1214, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end299

if.end299:                                        ; preds = %do.end293, %if.end260.if.end299_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast317 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast318 = ptrtoint ptr %107 to i32
  %sub.ptr.sub319 = sub i32 %sub.ptr.lhs.cast317, %sub.ptr.rhs.cast318
  %108 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mem, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %client215, align 4
  %name331 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name331 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name331, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub319, i32 noundef 0) #8
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr340 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr340, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %123, align 4
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp441.not = icmp ult ptr %125, %127
  br i1 %cmp441.not, label %if.end299.if.end466_crit_edge, label %do.end460, !prof !84

if.end299.if.end466_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end466

do.end460:                                        ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1215, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end466

if.end466:                                        ; preds = %do.end460, %if.end299.if.end466_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp480.not = icmp ult ptr %129, %131
  br i1 %cmp480.not, label %if.end466.if.end505_crit_edge, label %do.end499, !prof !84

if.end466.if.end505_crit_edge:                    ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end505

do.end499:                                        ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1215, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end505

if.end505:                                        ; preds = %do.end499, %if.end466.if.end505_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast523 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast524 = ptrtoint ptr %135 to i32
  %sub.ptr.sub525 = sub i32 %sub.ptr.lhs.cast523, %sub.ptr.rhs.cast524
  %136 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mem, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %client215, align 4
  %name537 = getelementptr inbounds %struct.nvif_object, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %name537 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name537, align 8
  %146 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %handle, align 4
  %148 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %141(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %sub.ptr.sub525, i32 noundef 278836, i32 noundef 2, i32 noundef 308, i32 noundef 1, ptr noundef nonnull @__func__.nv04_crtc_page_flip) #8
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %incdec.ptr546 = getelementptr i32, ptr %151, i32 1
  store ptr %incdec.ptr546, ptr %cur.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 278836, ptr %151, align 4
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %seg.i, align 8
  %cmp558.not = icmp ult ptr %153, %155
  br i1 %cmp558.not, label %if.end505.if.end583_crit_edge, label %do.end577, !prof !84

if.end505.if.end583_crit_edge:                    ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end583

do.end577:                                        ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1215, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end583

if.end583:                                        ; preds = %do.end577, %if.end505.if.end583_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i, align 4
  %cmp597.not = icmp ult ptr %157, %159
  br i1 %cmp597.not, label %if.end583.if.end622_crit_edge, label %do.end616, !prof !84

if.end583.if.end622_crit_edge:                    ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end622

do.end616:                                        ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1215, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end622

if.end622:                                        ; preds = %do.end616, %if.end583.if.end622_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast640 = ptrtoint ptr %161 to i32
  %sub.ptr.rhs.cast641 = ptrtoint ptr %163 to i32
  %sub.ptr.sub642 = sub i32 %sub.ptr.lhs.cast640, %sub.ptr.rhs.cast641
  %164 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mem, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %client215, align 4
  %name654 = getelementptr inbounds %struct.nvif_object, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %name654 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name654, align 8
  %174 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle, align 4
  %176 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %169(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %173, i32 noundef %175, ptr noundef %177, i32 noundef %sub.ptr.sub642, i32 noundef %18) #8
  %178 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cur.i, align 4
  %incdec.ptr663 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr663, ptr %cur.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %18, ptr %179, align 4
  %181 = load ptr, ptr %cur.i, align 4
  %182 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %seg.i, align 8
  %cmp764.not = icmp ult ptr %181, %183
  br i1 %cmp764.not, label %if.end622.if.end789_crit_edge, label %do.end783, !prof !84

if.end622.if.end789_crit_edge:                    ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end789

do.end783:                                        ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1216, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end789

if.end789:                                        ; preds = %do.end783, %if.end622.if.end789_crit_edge
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i, align 4
  %cmp803.not = icmp ult ptr %185, %187
  br i1 %cmp803.not, label %if.end789.if.end828_crit_edge, label %do.end822, !prof !84

if.end789.if.end828_crit_edge:                    ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end828

do.end822:                                        ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1216, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end828

if.end828:                                        ; preds = %do.end822, %if.end789.if.end828_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast846 = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast847 = ptrtoint ptr %191 to i32
  %sub.ptr.sub848 = sub i32 %sub.ptr.lhs.cast846, %sub.ptr.rhs.cast847
  %192 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mem, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client215, align 4
  %name860 = getelementptr inbounds %struct.nvif_object, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %name860 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %name860, align 8
  %202 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %handle, align 4
  %204 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %197(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %201, i32 noundef %203, ptr noundef %205, i32 noundef %sub.ptr.sub848, i32 noundef 278784, i32 noundef 2, i32 noundef 256, i32 noundef 1, ptr noundef nonnull @__func__.nv04_crtc_page_flip) #8
  %206 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur.i, align 4
  %incdec.ptr869 = getelementptr i32, ptr %207, i32 1
  store ptr %incdec.ptr869, ptr %cur.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 278784, ptr %207, align 4
  %209 = load ptr, ptr %cur.i, align 4
  %210 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %seg.i, align 8
  %cmp881.not = icmp ult ptr %209, %211
  br i1 %cmp881.not, label %if.end828.if.end906_crit_edge, label %do.end900, !prof !84

if.end828.if.end906_crit_edge:                    ; preds = %if.end828
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end906

do.end900:                                        ; preds = %if.end828
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1216, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end906

if.end906:                                        ; preds = %do.end900, %if.end828.if.end906_crit_edge
  %212 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cur.i, align 4
  %214 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %end.i, align 4
  %cmp920.not = icmp ult ptr %213, %215
  br i1 %cmp920.not, label %if.end906.if.end945_crit_edge, label %do.end939, !prof !84

if.end906.if.end945_crit_edge:                    ; preds = %if.end906
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end945

do.end939:                                        ; preds = %if.end906
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1216, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end945

if.end945:                                        ; preds = %do.end939, %if.end906.if.end945_crit_edge
  %216 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cur.i, align 4
  %218 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast963 = ptrtoint ptr %217 to i32
  %sub.ptr.rhs.cast964 = ptrtoint ptr %219 to i32
  %sub.ptr.sub965 = sub i32 %sub.ptr.lhs.cast963, %sub.ptr.rhs.cast964
  %220 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mem, align 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %226 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %client215, align 4
  %name977 = getelementptr inbounds %struct.nvif_object, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %name977 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %name977, align 8
  %230 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %handle, align 4
  %232 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %225(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %229, i32 noundef %231, ptr noundef %233, i32 noundef %sub.ptr.sub965, i32 noundef 0) #8
  %234 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cur.i, align 4
  %incdec.ptr986 = getelementptr i32, ptr %235, i32 1
  store ptr %incdec.ptr986, ptr %cur.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %235, align 4
  %237 = load ptr, ptr %cur.i, align 4
  %238 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %seg.i, align 8
  %cmp1087.not = icmp ult ptr %237, %239
  br i1 %cmp1087.not, label %if.end945.if.end1112_crit_edge, label %do.end1106, !prof !84

if.end945.if.end1112_crit_edge:                   ; preds = %if.end945
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1112

do.end1106:                                       ; preds = %if.end945
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1217, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end1112

if.end1112:                                       ; preds = %do.end1106, %if.end945.if.end1112_crit_edge
  %240 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cur.i, align 4
  %242 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %end.i, align 4
  %cmp1126.not = icmp ult ptr %241, %243
  br i1 %cmp1126.not, label %if.end1112.if.end1151_crit_edge, label %do.end1145, !prof !84

if.end1112.if.end1151_crit_edge:                  ; preds = %if.end1112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1151

do.end1145:                                       ; preds = %if.end1112
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1217, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end1151

if.end1151:                                       ; preds = %do.end1145, %if.end1112.if.end1151_crit_edge
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %246 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1169 = ptrtoint ptr %245 to i32
  %sub.ptr.rhs.cast1170 = ptrtoint ptr %247 to i32
  %sub.ptr.sub1171 = sub i32 %sub.ptr.lhs.cast1169, %sub.ptr.rhs.cast1170
  %248 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mem, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %client215, align 4
  %name1183 = getelementptr inbounds %struct.nvif_object, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %name1183 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %name1183, align 8
  %258 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %handle, align 4
  %260 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %253(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %257, i32 noundef %259, ptr noundef %261, i32 noundef %sub.ptr.sub1171, i32 noundef 278832, i32 noundef 2, i32 noundef 304, i32 noundef 1, ptr noundef nonnull @__func__.nv04_crtc_page_flip) #8
  %262 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1192 = getelementptr i32, ptr %263, i32 1
  store ptr %incdec.ptr1192, ptr %cur.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 278832, ptr %263, align 4
  %265 = load ptr, ptr %cur.i, align 4
  %266 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %seg.i, align 8
  %cmp1204.not = icmp ult ptr %265, %267
  br i1 %cmp1204.not, label %if.end1151.if.end1229_crit_edge, label %do.end1223, !prof !84

if.end1151.if.end1229_crit_edge:                  ; preds = %if.end1151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1229

do.end1223:                                       ; preds = %if.end1151
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1217, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end1229

if.end1229:                                       ; preds = %do.end1223, %if.end1151.if.end1229_crit_edge
  %268 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cur.i, align 4
  %270 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %end.i, align 4
  %cmp1243.not = icmp ult ptr %269, %271
  br i1 %cmp1243.not, label %if.end1229.if.end1268_crit_edge, label %do.end1262, !prof !84

if.end1229.if.end1268_crit_edge:                  ; preds = %if.end1229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1268

do.end1262:                                       ; preds = %if.end1229
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1217, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end1268

if.end1268:                                       ; preds = %do.end1262, %if.end1229.if.end1268_crit_edge
  %272 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cur.i, align 4
  %274 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1286 = ptrtoint ptr %273 to i32
  %sub.ptr.rhs.cast1287 = ptrtoint ptr %275 to i32
  %sub.ptr.sub1288 = sub i32 %sub.ptr.lhs.cast1286, %sub.ptr.rhs.cast1287
  %276 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mem, align 8
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %282 = ptrtoint ptr %client215 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %client215, align 4
  %name1300 = getelementptr inbounds %struct.nvif_object, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %name1300 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %name1300, align 8
  %286 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %handle, align 4
  %288 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %name217, align 8
  tail call void (ptr, ptr, ...) %281(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %285, i32 noundef %287, ptr noundef %289, i32 noundef %sub.ptr.sub1288, i32 noundef 0) #8
  %290 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1309 = getelementptr i32, ptr %291, i32 1
  store ptr %incdec.ptr1309, ptr %cur.i, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %291, align 4
  br label %if.end1314

if.end1314:                                       ; preds = %if.end1268, %if.end39.if.end1314_crit_edge
  %arrayidx1315 = getelementptr %struct.nv04_display, ptr %16, i32 0, i32 4, i32 %18
  tail call fastcc void @nouveau_bo_ref(ptr noundef %11, ptr noundef %arrayidx1315)
  %call1317 = call fastcc i32 @nv04_page_flip_emit(ptr noundef nonnull %20, ptr noundef %9, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1317)
  %tobool1318.not = icmp eq i32 %call1317, 0
  br i1 %tobool1318.not, label %if.end1320, label %if.end1314.fail_unreserve_crit_edge

if.end1314.fail_unreserve_crit_edge:              ; preds = %if.end1314
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_unreserve

if.end1320:                                       ; preds = %if.end1314
  call void @mutex_unlock(ptr noundef %mutex) #8
  %293 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %primary, align 4
  %fb1323 = getelementptr inbounds %struct.drm_plane, ptr %294, i32 0, i32 12
  %295 = ptrtoint ptr %fb1323 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %fb, ptr %fb1323, align 4
  %296 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %fence, align 4
  call void @nouveau_bo_fence(ptr noundef %9, ptr noundef %297, i1 noundef zeroext false) #8
  call fastcc void @ttm_bo_unreserve(ptr noundef %9)
  br i1 %cmp.not, label %if.end1320.if.end1329_crit_edge, label %if.then1327

if.end1320.if.end1329_crit_edge:                  ; preds = %if.end1320
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1329

if.then1327:                                      ; preds = %if.end1320
  call void @__sanitizer_cov_trace_pc() #10
  %call1328 = call i32 @nouveau_bo_unpin(ptr noundef %9) #8
  br label %if.end1329

if.end1329:                                       ; preds = %if.then1327, %if.end1320.if.end1329_crit_edge
  call void @nouveau_fence_unref(ptr noundef nonnull %fence) #8
  br label %cleanup

fail_unreserve:                                   ; preds = %if.end1314.fail_unreserve_crit_edge, %if.then.i.fail_unreserve_crit_edge
  %ret.0 = phi i32 [ %call1317, %if.end1314.fail_unreserve_crit_edge ], [ %call.i, %if.then.i.fail_unreserve_crit_edge ]
  call void @drm_crtc_vblank_put(ptr noundef %crtc) #8
  call fastcc void @ttm_bo_unreserve(ptr noundef %9)
  br label %fail_unpin

fail_unpin:                                       ; preds = %fail_unreserve, %if.then28, %if.end21.fail_unpin_crit_edge
  %ret.1 = phi i32 [ %retval.1.i, %if.end21.fail_unpin_crit_edge ], [ %call26, %if.then28 ], [ %ret.0, %fail_unreserve ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  br i1 %cmp.not, label %fail_unpin.fail_free_crit_edge, label %fail_unpin.if.then1334_crit_edge

fail_unpin.if.then1334_crit_edge:                 ; preds = %fail_unpin
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1334

fail_unpin.fail_free_crit_edge:                   ; preds = %fail_unpin
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_free

if.then1334:                                      ; preds = %fail_unpin.if.then1334_crit_edge, %fail_unpin.thread
  %ret.11550 = phi i32 [ %retval.1.i1545, %fail_unpin.thread ], [ %ret.1, %fail_unpin.if.then1334_crit_edge ]
  %call1335 = call i32 @nouveau_bo_unpin(ptr noundef %11) #8
  br label %fail_free

fail_free:                                        ; preds = %if.then1334, %fail_unpin.fail_free_crit_edge, %if.then16.fail_free_crit_edge
  %ret.2 = phi i32 [ %call17, %if.then16.fail_free_crit_edge ], [ %ret.11550, %if.then1334 ], [ %ret.1, %fail_unpin.fail_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %if.end1329, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail_free ], [ 0, %if.end1329 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_vblank_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_vblank_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_load_state_palette(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttm_bo_unreserve(ptr noundef %bo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i) #8
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %2 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %3, ptr noundef null) #8
  %4 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i) #8
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %6 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #8
  tail call void @ww_mutex_unlock(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nv04_page_flip_emit(ptr noundef %chan, ptr noundef %old_bo, ptr noundef %s, ptr noundef %pfence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 4
  %drm1 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm1, align 4
  %dev2 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %push4 = getelementptr inbounds %struct.anon.101, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %push4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %push4, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #8
  %flip = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %s, ptr noundef %9, ptr noundef %flip) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %s, ptr %prev.i, align 4
  %11 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %flip, ptr %s, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %s, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call6) #8
  %call10 = tail call i32 @nouveau_fence_sync(ptr noundef %old_bo, ptr noundef %chan, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %list_add_tail.exit.do.body315_crit_edge

list_add_tail.exit.do.body315_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body315

if.end:                                           ; preds = %list_add_tail.exit
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %if.end.if.end89_crit_edge, label %if.then.i

if.end.if.end89_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then.i:                                        ; preds = %if.end
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 8
  %call.i = tail call i32 %19(ptr noundef %7, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end89_crit_edge, label %if.then.i.do.body315_crit_edge

if.then.i.do.body315_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body315

if.then.i.if.end89_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.end89:                                         ; preds = %if.then.i.if.end89_crit_edge, %if.end.if.end89_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp102.not = icmp ult ptr %21, %add.ptr4.i
  br i1 %cmp102.not, label %if.end89.if.end127_crit_edge, label %do.end121, !prof !84

if.end89.if.end127_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.end121:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1129, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end127

if.end127:                                        ; preds = %do.end121, %if.end89.if.end127_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %cmp140.not = icmp ult ptr %24, %26
  br i1 %cmp140.not, label %if.end127.if.end165_crit_edge, label %do.end159, !prof !84

if.end127.if.end165_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

do.end159:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1129, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end165

if.end165:                                        ; preds = %do.end159, %if.end127.if.end165_crit_edge
  %27 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 2, i32 0, i32 6
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 2, i32 0, i32 3
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle, align 4
  %name182 = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 2, i32 0, i32 2
  %43 = ptrtoint ptr %name182 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name182, align 8
  tail call void (ptr, ptr, ...) %36(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %sub.ptr.sub, i32 noundef 271616, i32 noundef 1, i32 noundef 1280, i32 noundef 1, ptr noundef nonnull @__func__.nv04_page_flip_emit) #8
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 271616, ptr %46, align 4
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %seg.i, align 8
  %cmp199.not = icmp ult ptr %48, %50
  br i1 %cmp199.not, label %if.end165.if.end224_crit_edge, label %do.end218, !prof !84

if.end165.if.end224_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

do.end218:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1129, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %if.end224

if.end224:                                        ; preds = %do.end218, %if.end165.if.end224_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i, align 4
  %cmp238.not = icmp ult ptr %52, %54
  br i1 %cmp238.not, label %if.end224.if.end263_crit_edge, label %do.end257, !prof !84

if.end224.if.end263_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

do.end257:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1129, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %if.end263

if.end263:                                        ; preds = %do.end257, %if.end224.if.end263_crit_edge
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast281 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast282 = ptrtoint ptr %58 to i32
  %sub.ptr.sub283 = sub i32 %sub.ptr.lhs.cast281, %sub.ptr.rhs.cast282
  %59 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mem, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client, align 4
  %name295 = getelementptr inbounds %struct.nvif_object, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %name295 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name295, align 8
  %69 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %handle, align 4
  %71 = ptrtoint ptr %name182 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name182, align 8
  tail call void (ptr, ptr, ...) %64(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %68, i32 noundef %70, ptr noundef %72, i32 noundef %sub.ptr.sub283, i32 noundef 0) #8
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %incdec.ptr304 = getelementptr i32, ptr %74, i32 1
  store ptr %incdec.ptr304, ptr %cur.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %74, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %7, i32 0, i32 1
  %76 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %kick.i, align 4
  tail call void %77(ptr noundef %7) #8
  %call310 = tail call i32 @nouveau_fence_new(ptr noundef %chan, i1 noundef zeroext false, ptr noundef %pfence) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %if.end263.cleanup_crit_edge, label %if.end263.do.body315_crit_edge

if.end263.do.body315_crit_edge:                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body315

if.end263.cleanup_crit_edge:                      ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body315:                                       ; preds = %if.end263.do.body315_crit_edge, %if.then.i.do.body315_crit_edge, %list_add_tail.exit.do.body315_crit_edge
  %ret.0 = phi i32 [ %call10, %list_add_tail.exit.do.body315_crit_edge ], [ %call310, %if.end263.do.body315_crit_edge ], [ %call.i, %if.then.i.do.body315_crit_edge ]
  %call323 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #8
  %call.i.i1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s) #8
  br i1 %call.i.i1, label %if.end.i.i2, label %do.body315.list_del.exit_crit_edge

do.body315.list_del.exit_crit_edge:               ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i2:                                      ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i, align 4
  %80 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i2, %do.body315.list_del.exit_crit_edge
  %84 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %s, align 4
  %prev.i3 = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call323) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end263.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %list_del.exit ], [ 0, %if.end263.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_crtc_dpms(ptr nocapture noundef %crtc, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %2 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end12_crit_edge, label %do.body4

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i, align 4
  %drm6 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %drm6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm6, align 8
  %dev7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 8
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %mode, i32 noundef %12) #11
  br label %do.end12

do.end12:                                         ; preds = %do.body4, %entry.do.end12_crit_edge
  %last_dpms = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 7
  %13 = ptrtoint ptr %last_dpms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_dpms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mode)
  %cmp = icmp eq i32 %14, %mode
  br i1 %cmp, label %do.end12.cleanup_crit_edge, label %if.end14

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end12
  %15 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mode, ptr %last_dpms, align 4
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %19, i32 -102
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device.i, align 2
  %22 = and i16 %21, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 1, i32 4
  %23 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i = icmp ugt i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %22)
  %cmp5.not.i = icmp ne i16 %22, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %22)
  %cmp8.not.i = icmp ne i16 %22, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %22)
  %cmp11.not.i = icmp ne i16 %22, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %22)
  %cmp14.not.i = icmp ne i16 %22, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %index18 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %25 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index18, align 8
  tail call void @NVSetOwner(ptr noundef %1, i32 noundef %26) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %index20 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %27 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index20, align 8
  %29 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3, i32 0, i32 6
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  %mul6.i = shl i32 %28, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !76

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %32, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 26) #8, !srcloc !80
  br label %if.end.i

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 26) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %33 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %34, null
  %add29.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !76

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i = getelementptr i8, ptr %34, i32 %add29.i
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %conv26.i = zext i8 %35 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i = sext i32 %add29.i to i64
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv30.i) #8
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %conv34.i = trunc i32 %_data.0.i to i8
  %36 = and i8 %conv34.i, 63
  %37 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %NVReadVgaCrtc.exit.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb29
  ]

NVReadVgaCrtc.exit.sw.epilog_crit_edge:           ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = or i8 %36, -128
  br label %sw.epilog

sw.bb25:                                          ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %39 = or i8 %36, 64
  br label %sw.epilog

sw.bb29:                                          ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = or i8 %conv34.i, -64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb25, %sw.bb, %NVReadVgaCrtc.exit.sw.epilog_crit_edge
  %seq1.0 = phi i8 [ 32, %sw.bb29 ], [ 32, %sw.bb25 ], [ 32, %sw.bb ], [ 0, %NVReadVgaCrtc.exit.sw.epilog_crit_edge ]
  %crtc17.0 = phi i8 [ 0, %sw.bb29 ], [ -128, %sw.bb25 ], [ -128, %sw.bb ], [ -128, %NVReadVgaCrtc.exit.sw.epilog_crit_edge ]
  %crtc1A.0 = phi i8 [ %40, %sw.bb29 ], [ %39, %sw.bb25 ], [ %38, %sw.bb ], [ %36, %NVReadVgaCrtc.exit.sw.epilog_crit_edge ]
  %41 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index20, align 8
  tail call void @NVWriteVgaSeq(ptr noundef %1, i32 noundef %42, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %43 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index20, align 8
  %call36 = tail call zeroext i8 @NVReadVgaSeq(ptr noundef %1, i32 noundef %44, i8 noundef zeroext 1) #8
  %45 = and i8 %call36, -33
  %or40 = or i8 %45, %seq1.0
  %46 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index20, align 8
  tail call void @NVWriteVgaSeq(ptr noundef %1, i32 noundef %47, i8 noundef zeroext 1, i8 noundef zeroext %or40) #8
  %48 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index20, align 8
  %50 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_private.i, align 4
  %device1.i91 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3
  %map.i92 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 0, i32 6
  %52 = ptrtoint ptr %map.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map.i92, align 8
  %tobool.not.i93 = icmp eq ptr %53, null
  %mul6.i94 = shl i32 %49, 13
  %add7.i95 = add i32 %mul6.i94, 6296532
  br i1 %tobool.not.i93, label %if.else.i99, label %if.then.i97, !prof !76

if.then.i97:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i96 = getelementptr i8, ptr %53, i32 %add7.i95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i96, i8 23) #8, !srcloc !80
  br label %if.end.i103

if.else.i99:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i98 = sext i32 %add7.i95 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i91, i32 noundef 1, i64 noundef %conv.i98, i32 noundef 23) #8
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.else.i99, %if.then.i97
  %54 = ptrtoint ptr %map.i92 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i92, align 8
  %tobool12.not.i100 = icmp eq ptr %55, null
  %add29.i102 = add i32 %mul6.i94, 6296533
  br i1 %tobool12.not.i100, label %if.else27.i109, label %if.then19.i106, !prof !76

if.then19.i106:                                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i104 = getelementptr i8, ptr %55, i32 %add29.i102
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i104) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %conv26.i105 = zext i8 %56 to i32
  br label %NVReadVgaCrtc.exit112

if.else27.i109:                                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i107 = sext i32 %add29.i102 to i64
  %call31.i108 = tail call i32 @nvif_object_rd(ptr noundef %device1.i91, i32 noundef 1, i64 noundef %conv30.i107) #8
  br label %NVReadVgaCrtc.exit112

NVReadVgaCrtc.exit112:                            ; preds = %if.else27.i109, %if.then19.i106
  %_data.0.i110 = phi i32 [ %conv26.i105, %if.then19.i106 ], [ %call31.i108, %if.else27.i109 ]
  %conv34.i111 = trunc i32 %_data.0.i110 to i8
  %57 = and i8 %conv34.i111, 127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #8
  %or48 = or i8 %57, %crtc17.0
  %68 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index20, align 8
  %70 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_private.i, align 4
  %device1.i114 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3
  %map.i115 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3, i32 0, i32 6
  %72 = ptrtoint ptr %map.i115 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map.i115, align 8
  %tobool.not.i116 = icmp eq ptr %73, null
  %mul6.i117 = shl i32 %69, 13
  %add7.i118 = add i32 %mul6.i117, 6296532
  br i1 %tobool.not.i116, label %if.else.i122, label %if.then.i120, !prof !76

if.then.i120:                                     ; preds = %NVReadVgaCrtc.exit112
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i119 = getelementptr i8, ptr %73, i32 %add7.i118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i119, i8 23) #8, !srcloc !80
  br label %if.end.i124

if.else.i122:                                     ; preds = %NVReadVgaCrtc.exit112
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i121 = sext i32 %add7.i118 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i114, i32 noundef 1, i64 noundef %conv.i121, i32 noundef 23) #8
  br label %if.end.i124

if.end.i124:                                      ; preds = %if.else.i122, %if.then.i120
  %74 = ptrtoint ptr %map.i115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i115, align 8
  %tobool12.not.i123 = icmp eq ptr %75, null
  %add27.i = add i32 %mul6.i117, 6296533
  br i1 %tobool12.not.i123, label %if.else25.i, label %if.then19.i126, !prof !76

if.then19.i126:                                   ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i125 = getelementptr i8, ptr %75, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i125, i8 %or48) #8, !srcloc !80
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %or48 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i114, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #8
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i126
  %76 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index20, align 8
  tail call void @NVWriteVgaSeq(ptr noundef %1, i32 noundef %77, i8 noundef zeroext 0, i8 noundef zeroext 3) #8
  %78 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %index20, align 8
  %80 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_private.i, align 4
  %device1.i128 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3
  %map.i129 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3, i32 0, i32 6
  %82 = ptrtoint ptr %map.i129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map.i129, align 8
  %tobool.not.i130 = icmp eq ptr %83, null
  %mul6.i131 = shl i32 %79, 13
  %add7.i132 = add i32 %mul6.i131, 6296532
  br i1 %tobool.not.i130, label %if.else.i136, label %if.then.i134, !prof !76

if.then.i134:                                     ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i133 = getelementptr i8, ptr %83, i32 %add7.i132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i133, i8 26) #8, !srcloc !80
  br label %if.end.i140

if.else.i136:                                     ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i135 = sext i32 %add7.i132 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i128, i32 noundef 1, i64 noundef %conv.i135, i32 noundef 26) #8
  br label %if.end.i140

if.end.i140:                                      ; preds = %if.else.i136, %if.then.i134
  %84 = ptrtoint ptr %map.i129 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map.i129, align 8
  %tobool12.not.i137 = icmp eq ptr %85, null
  %add27.i139 = add i32 %mul6.i131, 6296533
  br i1 %tobool12.not.i137, label %if.else25.i145, label %if.then19.i142, !prof !76

if.then19.i142:                                   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i141 = getelementptr i8, ptr %85, i32 %add27.i139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i141, i8 %crtc1A.0) #8, !srcloc !80
  br label %cleanup

if.else25.i145:                                   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i143 = sext i32 %add27.i139 to i64
  %conv29.i144 = zext i8 %crtc1A.0 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i128, i32 noundef 1, i64 noundef %conv28.i143, i32 noundef %conv29.i144) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else25.i145, %if.then19.i142, %do.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_crtc_prepare(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %helper_private = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 19
  %4 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper_private, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %7, i32 -102
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i, align 2
  %10 = and i16 %9, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp ugt i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %10)
  %cmp5.not.i = icmp ne i16 %10, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %10)
  %cmp8.not.i = icmp ne i16 %10, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %10)
  %cmp11.not.i = icmp ne i16 %10, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %10)
  %cmp14.not.i = icmp ne i16 %10, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 8
  tail call void @NVSetOwner(ptr noundef %1, i32 noundef %14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  tail call void %16(ptr noundef %crtc, i32 noundef 3) #8
  %index4 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %17 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index4, align 8
  tail call void @NVBlankScreen(ptr noundef %1, i32 noundef %18, i1 noundef zeroext true) #8
  %19 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index4, align 8
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6293508, i32 6301700
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3, i32 0, i32 6
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !76

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #8, !srcloc !78
  br label %NVWriteCRTC.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef 1) #8
  br label %NVWriteCRTC.exit

NVWriteCRTC.exit:                                 ; preds = %if.else.i, %do.body.i
  %27 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %cmp = icmp eq i8 %28, 5
  br i1 %cmp, label %if.then7, label %NVWriteCRTC.exit.if.end11_crit_edge

NVWriteCRTC.exit.if.end11_crit_edge:              ; preds = %NVWriteCRTC.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %NVWriteCRTC.exit
  %29 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index4, align 8
  %31 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i28 = icmp eq i32 %30, 0
  %spec.select.i29 = select i1 %tobool.not.i28, i32 6818048, i32 6826240
  %map.i30 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = ptrtoint ptr %map.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i30, align 8
  %tobool2.not.i31 = icmp eq ptr %34, null
  br i1 %tobool2.not.i31, label %if.else.i35, label %if.then5.i, !prof !76

if.then5.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i32 = getelementptr i8, ptr %34, i32 %spec.select.i29
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  br label %NVReadRAMDAC.exit

if.else.i35:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i33 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3
  %conv.i34 = zext i32 %spec.select.i29 to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i33, i32 noundef 4, i64 noundef %conv.i34) #8
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i35, %if.then5.i
  %_data.0.i = phi i32 [ %35, %if.then5.i ], [ %call10.i, %if.else.i35 ]
  %36 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index4, align 8
  %and = and i32 %_data.0.i, -65537
  %38 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i37 = icmp eq i32 %37, 0
  %spec.select.i38 = select i1 %tobool.not.i37, i32 6818048, i32 6826240
  %map.i39 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3, i32 0, i32 6
  %40 = ptrtoint ptr %map.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i39, align 8
  %tobool2.not.i40 = icmp eq ptr %41, null
  br i1 %tobool2.not.i40, label %if.else.i45, label %do.body.i42, !prof !76

do.body.i42:                                      ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %map.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i39, align 8
  %add.ptr.i41 = getelementptr i8, ptr %43, i32 %spec.select.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %and) #8, !srcloc !78
  br label %if.end11

if.else.i45:                                      ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i43 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3
  %conv.i44 = zext i32 %spec.select.i38 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i43, i32 noundef 4, i64 noundef %conv.i44, i32 noundef %and) #8
  br label %if.end11

if.end11:                                         ; preds = %if.else.i45, %do.body.i42, %NVWriteCRTC.exit.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_crtc_commit(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %helper_private = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 19
  %2 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %helper_private, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void @nouveau_hw_load_state(ptr noundef %1, i32 noundef %5, ptr noundef %11) #8
  %x = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %12 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %x, align 4
  %y = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %14 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %y, align 8
  %call.i = tail call fastcc i32 @nv_crtc_swap_fbs(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nv04_crtc_mode_set_base.exit_crit_edge

entry.nv04_crtc_mode_set_base.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv04_crtc_mode_set_base.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nv04_crtc_do_mode_set_base(ptr noundef %crtc, ptr noundef null, i32 noundef %13, i32 noundef %15, i1 noundef zeroext false) #8
  br label %nv04_crtc_mode_set_base.exit

nv04_crtc_mode_set_base.exit:                     ; preds = %if.end.i, %entry.nv04_crtc_mode_set_base.exit_crit_edge
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 8
  %18 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 0, i32 6
  %20 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i, align 8
  %tobool.not.i21 = icmp eq ptr %21, null
  %mul6.i = shl i32 %17, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i21, label %if.else.i, label %if.then.i, !prof !76

if.then.i:                                        ; preds = %nv04_crtc_mode_set_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 70) #8, !srcloc !80
  br label %if.end.i22

if.else.i:                                        ; preds = %nv04_crtc_mode_set_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 70) #8
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.else.i, %if.then.i
  %22 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %23, null
  %add29.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !76

if.then19.i:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i = getelementptr i8, ptr %23, i32 %add29.i
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %conv26.i = zext i8 %24 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i = sext i32 %add29.i to i64
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv30.i) #8
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %conv34.i = trunc i32 %_data.0.i to i8
  %25 = or i8 %conv34.i, -128
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 8
  %28 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_private.i.i.i, align 4
  %device1.i24 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 2, i32 3
  %map.i25 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 2, i32 3, i32 0, i32 6
  %30 = ptrtoint ptr %map.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i25, align 8
  %tobool.not.i26 = icmp eq ptr %31, null
  %mul6.i27 = shl i32 %27, 13
  %add7.i28 = add i32 %mul6.i27, 6296532
  br i1 %tobool.not.i26, label %if.else.i32, label %if.then.i30, !prof !76

if.then.i30:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i29 = getelementptr i8, ptr %31, i32 %add7.i28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 70) #8, !srcloc !80
  br label %if.end.i34

if.else.i32:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i31 = sext i32 %add7.i28 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i24, i32 noundef 1, i64 noundef %conv.i31, i32 noundef 70) #8
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.else.i32, %if.then.i30
  %32 = ptrtoint ptr %map.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map.i25, align 8
  %tobool12.not.i33 = icmp eq ptr %33, null
  %add27.i = add i32 %mul6.i27, 6296533
  br i1 %tobool12.not.i33, label %if.else25.i, label %if.then19.i36, !prof !76

if.then19.i36:                                    ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i35 = getelementptr i8, ptr %33, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i35, i8 %25) #8, !srcloc !80
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %25 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i24, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #8
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i36
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  tail call void %35(ptr noundef %crtc, i32 noundef 0) #8
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_crtc_mode_set(ptr noundef %crtc, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode, i32 noundef %x, i32 noundef %y, ptr nocapture noundef readnone %old_fb) #0 align 64 {
entry:
  %pll_lim.i = alloca %struct.nvbios_pll, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %4 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end12_crit_edge, label %do.body4

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drm6 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %drm6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm6, align 8
  %dev7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 8
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %12) #11
  br label %do.end12

do.end12:                                         ; preds = %do.body4, %entry.do.end12_crit_edge
  tail call void @drm_mode_debug_printmodeline(ptr noundef %adjusted_mode) #8
  %call13 = tail call fastcc i32 @nv_crtc_swap_fbs(ptr noundef %crtc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end12
  %index16 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %13 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index16, align 8
  tail call fastcc void @nv_lock_vga_crtc_shadow(ptr noundef %1, i32 noundef %14, i32 noundef -1)
  %15 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %display.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index16, align 8
  %arrayidx.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %25 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %primary.i, align 4
  %fb3.i = getelementptr inbounds %struct.drm_plane, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %fb3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fb3.i, align 4
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %29 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %crtc_hdisplay.i, align 4
  %31 = lshr i16 %30, 3
  %32 = zext i16 %31 to i32
  %sub.i = add nsw i32 %32, -1
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %33 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %crtc_hsync_start.i, align 2
  %35 = lshr i16 %34, 3
  %narrow.i = add nuw nsw i16 %35, 1
  %add.i = zext i16 %narrow.i to i32
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %36 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %crtc_hsync_end.i, align 4
  %38 = lshr i16 %37, 3
  %narrow565.i = add nuw nsw i16 %38, 1
  %add8.i = zext i16 %narrow565.i to i32
  %crtc_htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %39 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %crtc_htotal.i, align 2
  %41 = lshr i16 %40, 3
  %42 = zext i16 %41 to i32
  %sub11.i = add nsw i32 %42, -5
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %43 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv20.i = zext i16 %44 to i32
  %sub21.i = add nsw i32 %conv20.i, -1
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %45 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv22.i = zext i16 %46 to i32
  %sub23.i = add nsw i32 %conv22.i, -1
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 24
  %47 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %crtc_vsync_end.i, align 2
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 25
  %49 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %crtc_vtotal.i, align 4
  %conv26.i = zext i16 %50 to i32
  %sub27.i = add nsw i32 %conv26.i, -2
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 16
  %51 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn579.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not580.i = icmp eq ptr %.pn579.i, %encoder_list.i
  br i1 %cmp.not580.i, label %for.end.thread.i, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

for.end.thread.i:                                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %52 = trunc i16 %48 to i8
  %extract.t575584.i = add i8 %52, -1
  br label %if.end58.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %.pn582.i = phi ptr [ %.pn.i, %if.end.i.for.body.i_crit_edge ], [ %.pn579.i, %if.end15.for.body.i_crit_edge ]
  %fp_output.0.off0581.i = phi i1 [ %fp_output.1.off0.i, %if.end.i.for.body.i_crit_edge ], [ false, %if.end15.for.body.i_crit_edge ]
  %crtc38.i = getelementptr i8, ptr %.pn582.i, i32 48
  %53 = ptrtoint ptr %crtc38.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %crtc38.i, align 4
  %cmp39.i = icmp eq ptr %54, %crtc
  br i1 %cmp39.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dcb.i = getelementptr i8, ptr %.pn582.i, i32 80
  %55 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dcb.i, align 4
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type.i, align 4
  %59 = and i32 %58, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %switch.i = icmp eq i32 %59, 2
  %spec.select577.i = select i1 %switch.i, i1 true, i1 %fp_output.0.off0581.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i.if.end.i_crit_edge
  %fp_output.1.off0.i = phi i1 [ %fp_output.0.off0581.i, %for.body.i.if.end.i_crit_edge ], [ %spec.select577.i, %land.lhs.true.i ]
  %60 = ptrtoint ptr %.pn582.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i = load ptr, ptr %.pn582.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %61 = trunc i16 %48 to i8
  %extract.t575.i = add i8 %61, -1
  br i1 %fp_output.1.off0.i, label %if.then52.i, label %for.end.i.if.end58.i_crit_edge

for.end.i.if.end58.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then52.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub53.i = add nsw i32 %conv26.i, -5
  %sub55.i = add nsw i32 %42, -10
  %sub56.i = add nsw i32 %42, -7
  %62 = trunc i16 %50 to i8
  %extract.t.i = add i8 %62, -4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then52.i, %for.end.i.if.end58.i_crit_edge, %for.end.thread.i
  %horizStart.0.i = phi i32 [ %sub55.i, %if.then52.i ], [ %add.i, %for.end.i.if.end58.i_crit_edge ], [ %add.i, %for.end.thread.i ]
  %horizEnd.0.i = phi i32 [ %sub56.i, %if.then52.i ], [ %add8.i, %for.end.i.if.end58.i_crit_edge ], [ %add8.i, %for.end.thread.i ]
  %vertStart.0.i = phi i32 [ %sub53.i, %if.then52.i ], [ %sub23.i, %for.end.i.if.end58.i_crit_edge ], [ %sub23.i, %for.end.thread.i ]
  %vertEnd.0.off0.i = phi i8 [ %extract.t.i, %if.then52.i ], [ %extract.t575.i, %for.end.i.if.end58.i_crit_edge ], [ %extract.t575584.i, %for.end.thread.i ]
  %vertBlankStart.0.i = phi i32 [ %sub53.i, %if.then52.i ], [ %sub21.i, %for.end.i.if.end58.i_crit_edge ], [ %sub21.i, %for.end.thread.i ]
  %horizBlankEnd.0.i = add nsw i32 %42, -1
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 4
  %and.i40 = lshr i32 %64, 4
  %65 = and i32 %and.i40, 1
  %66 = or i32 %65, %sub27.i
  %and63.i = and i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  %and67.i = and i32 %64, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  %or.cond.i = or i1 %tobool64.not.i, %tobool68.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.end58.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 35, ptr %arrayidx.i, align 4
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i, align 4
  %and71.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  %spec.store.select.i = select i1 %tobool72.not.i, i8 35, i8 99
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %spec.store.select.i, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  %and80.i = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.then69.i.if.end122.i_crit_edge, label %if.then82.i

if.then69.i.if.end122.i_crit_edge:                ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.i

if.then82.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = or i8 %spec.store.select.i, -128
  br label %if.end122.sink.split.i

if.else.i:                                        ; preds = %if.end58.i
  %vdisplay88.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %74 = ptrtoint ptr %vdisplay88.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vdisplay88.i, align 2
  %conv89.i = zext i16 %75 to i32
  %and91.i = lshr i32 %64, 5
  %and91.lobit.i = and i32 %and91.i, 1
  %spec.select576.i = shl nuw nsw i32 %conv89.i, %and91.lobit.i
  %vscan.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 10
  %76 = ptrtoint ptr %vscan.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vscan.i, align 2
  %78 = tail call i16 @llvm.umax.i16(i16 %77, i16 1) #8
  %mul101.i = zext i16 %78 to i32
  %vdisplay.1.i = mul i32 %spec.select576.i, %mul101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %vdisplay.1.i)
  %cmp103.i = icmp slt i32 %vdisplay.1.i, 400
  br i1 %cmp103.i, label %if.else.i.if.end122.sink.split.i_crit_edge, label %if.else107.i

if.else.i.if.end122.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.sink.split.i

if.else107.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %vdisplay.1.i)
  %cmp108.i = icmp ult i32 %vdisplay.1.i, 480
  br i1 %cmp108.i, label %if.else107.i.if.end122.sink.split.i_crit_edge, label %if.else112.i

if.else107.i.if.end122.sink.split.i_crit_edge:    ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.sink.split.i

if.else112.i:                                     ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %vdisplay.1.i)
  %cmp113.i = icmp ult i32 %vdisplay.1.i, 768
  %..i = select i1 %cmp113.i, i8 -29, i8 35
  br label %if.end122.sink.split.i

if.end122.sink.split.i:                           ; preds = %if.else112.i, %if.else107.i.if.end122.sink.split.i_crit_edge, %if.else.i.if.end122.sink.split.i_crit_edge, %if.then82.i
  %.sink585.i = phi i8 [ %73, %if.then82.i ], [ -93, %if.else.i.if.end122.sink.split.i_crit_edge ], [ 99, %if.else107.i.if.end122.sink.split.i_crit_edge ], [ %..i, %if.else112.i ]
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %.sink585.i, ptr %arrayidx.i, align 4
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.end122.sink.split.i, %if.then69.i.if.end122.i_crit_edge
  %Sequencer.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 3
  %80 = ptrtoint ptr %Sequencer.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %Sequencer.i, align 1
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 4
  %and125.i = and i32 %82, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  %.sink.i = select i1 %tobool126.not.i, i8 33, i8 41
  %83 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 3, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.sink.i, ptr %83, align 1
  %arrayidx135.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 3, i32 2
  %85 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 15, ptr %arrayidx135.i, align 1
  %arrayidx137.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 3, i32 3
  %86 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx137.i, align 1
  %arrayidx139.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 3, i32 4
  %87 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 14, ptr %arrayidx139.i, align 1
  %conv140.i = trunc i32 %sub11.i to i8
  %CRTC.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1
  %88 = ptrtoint ptr %CRTC.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv140.i, ptr %CRTC.i, align 1
  %conv142.i = trunc i32 %sub.i to i8
  %arrayidx144.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 1
  %89 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv142.i, ptr %arrayidx144.i, align 1
  %arrayidx147.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 2
  %90 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv142.i, ptr %arrayidx147.i, align 1
  %91 = trunc i32 %horizBlankEnd.0.i to i8
  %92 = and i8 %91, 31
  %conv151.i = or i8 %92, -128
  %arrayidx153.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 3
  %93 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv151.i, ptr %arrayidx153.i, align 1
  %conv154.i = trunc i32 %horizStart.0.i to i8
  %arrayidx156.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 4
  %94 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv154.i, ptr %arrayidx156.i, align 1
  %95 = shl nsw i32 %horizBlankEnd.0.i, 2
  %and159.i = and i32 %95, 128
  %and162.i = and i32 %horizEnd.0.i, 31
  %or163.i = or i32 %and162.i, %and159.i
  %conv164.i = trunc i32 %or163.i to i8
  %arrayidx166.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 5
  %96 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv164.i, ptr %arrayidx166.i, align 1
  %conv167.i = trunc i32 %66 to i8
  %arrayidx169.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 6
  %97 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv167.i, ptr %arrayidx169.i, align 1
  %98 = lshr i32 %vertStart.0.i, 2
  %and172.i = and i32 %98, 128
  %99 = lshr i32 %sub21.i, 3
  %and175.i = and i32 %99, 64
  %100 = lshr i32 %sub27.i, 4
  %and179.i = and i32 %100, 32
  %101 = lshr i32 %vertBlankStart.0.i, 5
  %and184.i = and i32 %101, 8
  %102 = lshr i32 %vertStart.0.i, 6
  %and188.i = and i32 %102, 4
  %103 = lshr i32 %sub21.i, 7
  %and192.i = and i32 %103, 2
  %shr194568.i = lshr i32 %sub27.i, 8
  %and196.i = and i32 %shr194568.i, 1
  %or176.i = or i32 %and192.i, %and175.i
  %or180.i = or i32 %or176.i, %and179.i
  %or181.i = or i32 %or180.i, %and196.i
  %or185.i = or i32 %or181.i, %and172.i
  %or189.i = or i32 %or185.i, %and188.i
  %or193.i = or i32 %or189.i, %and184.i
  %104 = trunc i32 %or193.i to i8
  %conv198.i = or i8 %104, 16
  %arrayidx200.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 7
  %105 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv198.i, ptr %arrayidx200.i, align 1
  %arrayidx202.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 8
  %106 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx202.i, align 1
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i, align 4
  %and204.i = shl i32 %108, 2
  %109 = and i32 %and204.i, 128
  %110 = lshr i32 %vertBlankStart.0.i, 4
  %and209.i = and i32 %110, 32
  %or206.i = or i32 %109, %and209.i
  %111 = trunc i32 %or206.i to i8
  %conv211.i = or i8 %111, 64
  %arrayidx213.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 9
  %112 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv211.i, ptr %arrayidx213.i, align 1
  %arrayidx215.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 10
  %conv226.i = trunc i32 %vertStart.0.i to i8
  %arrayidx228.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 16
  %113 = call ptr @memset(ptr %arrayidx215.i, i32 0, i32 6)
  %114 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv226.i, ptr %arrayidx228.i, align 1
  %115 = and i8 %vertEnd.0.off0.i, 15
  %conv233.i = or i8 %115, 32
  %arrayidx235.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 17
  %116 = ptrtoint ptr %arrayidx235.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv233.i, ptr %arrayidx235.i, align 1
  %conv236.i = trunc i32 %sub21.i to i8
  %arrayidx238.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 18
  %117 = ptrtoint ptr %arrayidx238.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv236.i, ptr %arrayidx238.i, align 1
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %28, i32 0, i32 6
  %118 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pitches.i, align 8
  %div569.i = lshr i32 %119, 3
  %conv240.i = trunc i32 %div569.i to i8
  %arrayidx242.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 19
  %120 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv240.i, ptr %arrayidx242.i, align 1
  %arrayidx244.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 20
  %121 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx244.i, align 1
  %conv245.i = trunc i32 %vertBlankStart.0.i to i8
  %arrayidx247.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 21
  %122 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv245.i, ptr %arrayidx247.i, align 1
  %123 = trunc i16 %50 to i8
  %conv248.i = add i8 %123, -1
  %arrayidx250.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 22
  %124 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv248.i, ptr %arrayidx250.i, align 1
  %arrayidx252.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 23
  %125 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 67, ptr %arrayidx252.i, align 1
  %arrayidx254.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 24
  %126 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -1, ptr %arrayidx254.i, align 1
  %127 = load i32, ptr %pitches.i, align 8
  %128 = lshr i32 %127, 6
  %129 = trunc i32 %128 to i8
  %conv261.i = and i8 %129, -32
  %arrayidx263.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 25
  %130 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv261.i, ptr %arrayidx263.i, align 1
  %131 = load i32, ptr %pitches.i, align 8
  %132 = lshr i32 %131, 8
  %133 = trunc i32 %132 to i8
  %conv270.i = and i8 %133, 64
  %arrayidx272.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 66
  %134 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv270.i, ptr %arrayidx272.i, align 1
  %135 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %crtc_hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %136)
  %cmp275.i = icmp ult i16 %136, 1280
  %conv278.i = select i1 %cmp275.i, i8 4, i8 0
  %arrayidx280.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 26
  %137 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv278.i, ptr %arrayidx280.i, align 1
  %138 = lshr i32 %horizBlankEnd.0.i, 2
  %and283.i = and i32 %138, 16
  %139 = lshr i32 %vertBlankStart.0.i, 7
  %and286.i = and i32 %139, 8
  %140 = lshr i32 %vertStart.0.i, 8
  %and290.i = and i32 %140, 4
  %141 = lshr i32 %sub21.i, 9
  %and294.i = and i32 %141, 2
  %shr296572.i = lshr i32 %sub27.i, 10
  %and298.i = and i32 %shr296572.i, 1
  %or287.i = or i32 %and294.i, %and283.i
  %or291.i = or i32 %or287.i, %and298.i
  %or295.i = or i32 %or291.i, %and290.i
  %or299.i = or i32 %or295.i, %and286.i
  %conv300.i = trunc i32 %or299.i to i8
  %arrayidx302.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 37
  %142 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv300.i, ptr %arrayidx302.i, align 1
  %143 = lshr i32 %horizStart.0.i, 5
  %and305.i = and i32 %143, 8
  %shr306.i = ashr i32 %sub.i, 8
  %shl307.i = shl nsw i32 %shr306.i, 2
  %and308.i = and i32 %shl307.i, 4
  %shl311.i = shl nsw i32 %shr306.i, 1
  %and312.i = and i32 %shl311.i, 2
  %shr314573.i = lshr i32 %sub11.i, 8
  %and316.i = and i32 %shr314573.i, 1
  %or309.i = or i32 %and312.i, %and308.i
  %or313.i = or i32 %or309.i, %and316.i
  %or317.i = or i32 %or313.i, %and305.i
  %conv318.i = trunc i32 %or317.i to i8
  %arrayidx320.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 45
  %144 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv318.i, ptr %arrayidx320.i, align 1
  %and323.i = and i32 %101, 64
  %145 = lshr i32 %vertStart.0.i, 7
  %and326.i = and i32 %145, 16
  %and330.i = and i32 %141, 4
  %shr332574.i = lshr i32 %sub27.i, 11
  %and334.i = and i32 %shr332574.i, 1
  %or327.i = or i32 %and334.i, %and330.i
  %or331.i = or i32 %or327.i, %and326.i
  %or335.i = or i32 %or331.i, %and323.i
  %conv336.i = trunc i32 %or335.i to i8
  %arrayidx338.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 65
  %146 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv336.i, ptr %arrayidx338.i, align 1
  %147 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags.i, align 4
  %and340.i = and i32 %148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340.i)
  %tobool341.not.i = icmp eq i32 %and340.i, 0
  br i1 %tobool341.not.i, label %if.end122.i.nv_crtc_mode_set_vga.exit_crit_edge, label %if.then342.i

if.end122.i.nv_crtc_mode_set_vga.exit_crit_edge:  ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv_crtc_mode_set_vga.exit

if.then342.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = lshr i32 %sub11.i, 1
  %150 = trunc i32 %149 to i8
  %conv345.i = and i8 %150, -2
  %151 = lshr i32 %sub11.i, 5
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 16
  %conv355.i = or i8 %153, %conv318.i
  %154 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv355.i, ptr %arrayidx320.i, align 1
  br label %nv_crtc_mode_set_vga.exit

nv_crtc_mode_set_vga.exit:                        ; preds = %if.then342.i, %if.end122.i.nv_crtc_mode_set_vga.exit_crit_edge
  %conv345.sink.i = phi i8 [ %conv345.i, %if.then342.i ], [ -1, %if.end122.i.nv_crtc_mode_set_vga.exit_crit_edge ]
  %155 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 1, i32 57
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv345.sink.i, ptr %155, align 1
  %Graphics.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 4
  %arrayidx370.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 4, i32 5
  %157 = call ptr @memset(ptr %Graphics.i, i32 0, i32 5)
  %158 = ptrtoint ptr %arrayidx370.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 64, ptr %arrayidx370.i, align 1
  %arrayidx372.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 4, i32 6
  %159 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 5, ptr %arrayidx372.i, align 2
  %arrayidx374.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 4, i32 7
  %160 = ptrtoint ptr %arrayidx374.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 15, ptr %arrayidx374.i, align 1
  %arrayidx376.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 4, i32 8
  %161 = ptrtoint ptr %arrayidx376.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -1, ptr %arrayidx376.i, align 2
  %Attribute.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5
  %162 = ptrtoint ptr %Attribute.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %Attribute.i, align 1
  %arrayidx379.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 1
  %163 = ptrtoint ptr %arrayidx379.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %arrayidx379.i, align 1
  %arrayidx381.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 2
  %164 = ptrtoint ptr %arrayidx381.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 2, ptr %arrayidx381.i, align 1
  %arrayidx383.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 3
  %165 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 3, ptr %arrayidx383.i, align 1
  %arrayidx385.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 4
  %166 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 4, ptr %arrayidx385.i, align 1
  %arrayidx387.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 5
  %167 = ptrtoint ptr %arrayidx387.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 5, ptr %arrayidx387.i, align 1
  %arrayidx389.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 6
  %168 = ptrtoint ptr %arrayidx389.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 6, ptr %arrayidx389.i, align 1
  %arrayidx391.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 7
  %169 = ptrtoint ptr %arrayidx391.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 7, ptr %arrayidx391.i, align 1
  %arrayidx393.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 8
  %170 = ptrtoint ptr %arrayidx393.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 8, ptr %arrayidx393.i, align 1
  %arrayidx395.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 9
  %171 = ptrtoint ptr %arrayidx395.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 9, ptr %arrayidx395.i, align 1
  %arrayidx397.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 10
  %172 = ptrtoint ptr %arrayidx397.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 10, ptr %arrayidx397.i, align 1
  %arrayidx399.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 11
  %173 = ptrtoint ptr %arrayidx399.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 11, ptr %arrayidx399.i, align 1
  %arrayidx401.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 12
  %174 = ptrtoint ptr %arrayidx401.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 12, ptr %arrayidx401.i, align 1
  %arrayidx403.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 13
  %175 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 13, ptr %arrayidx403.i, align 1
  %arrayidx405.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 14
  %176 = ptrtoint ptr %arrayidx405.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 14, ptr %arrayidx405.i, align 1
  %arrayidx407.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 15
  %177 = ptrtoint ptr %arrayidx407.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 15, ptr %arrayidx407.i, align 1
  %arrayidx409.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 16
  %178 = ptrtoint ptr %arrayidx409.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %arrayidx409.i, align 1
  %arrayidx411.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 17
  %179 = ptrtoint ptr %arrayidx411.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %arrayidx411.i, align 1
  %arrayidx413.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 18
  %180 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 15, ptr %arrayidx413.i, align 1
  %arrayidx415.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 19
  %181 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %arrayidx415.i, align 1
  %arrayidx417.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %22, i32 0, i32 %24, i32 5, i32 20
  %182 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %arrayidx417.i, align 1
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %183 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %184)
  %cmp = icmp eq i8 %184, 5
  br i1 %cmp, label %if.then19, label %nv_crtc_mode_set_vga.exit.if.end21_crit_edge

nv_crtc_mode_set_vga.exit.if.end21_crit_edge:     ; preds = %nv_crtc_mode_set_vga.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %nv_crtc_mode_set_vga.exit
  %185 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %186, i32 0, i32 19
  %187 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %display.i.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 8
  %sel_clk = getelementptr inbounds %struct.nv04_mode_state, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %sel_clk to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sel_clk, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %186, i32 0, i32 2, i32 3, i32 0, i32 6
  %193 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %194, null
  br i1 %tobool2.not.i, label %if.else.i41, label %do.body.i, !prof !76

do.body.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %195 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %196, i32 6817060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %192) #8, !srcloc !78
  br label %if.end21

if.else.i41:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %186, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef 6817060, i32 noundef %192) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else.i41, %do.body.i, %nv_crtc_mode_set_vga.exit.if.end21_crit_edge
  %197 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %crtc, align 8
  %dev_private.i.i42 = getelementptr inbounds %struct.drm_device, ptr %198, i32 0, i32 5
  %199 = ptrtoint ptr %dev_private.i.i42 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev_private.i.i42, align 4
  %display.i.i.i43 = getelementptr inbounds %struct.nouveau_drm, ptr %200, i32 0, i32 19
  %201 = ptrtoint ptr %display.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %display.i.i.i43, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 8
  %205 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %index16, align 8
  %saved_reg.i = getelementptr inbounds %struct.nv04_display, ptr %204, i32 0, i32 1
  %207 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %primary.i, align 4
  %fb8.i = getelementptr inbounds %struct.drm_plane, ptr %208, i32 0, i32 12
  %209 = ptrtoint ptr %fb8.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %fb8.i, align 4
  %encoder_list.i46 = getelementptr inbounds %struct.drm_device, ptr %198, i32 0, i32 30, i32 16
  %211 = ptrtoint ptr %encoder_list.i46 to i32
  call void @__asan_load4_noabort(i32 %211)
  %.pn338.i = load ptr, ptr %encoder_list.i46, align 4
  %cmp.not339.i = icmp eq ptr %.pn338.i, %encoder_list.i46
  br i1 %cmp.not339.i, label %if.end21.for.end.i56_crit_edge, label %if.end21.for.body.i47_crit_edge

if.end21.for.body.i47_crit_edge:                  ; preds = %if.end21
  br label %for.body.i47

if.end21.for.end.i56_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i56

for.body.i47:                                     ; preds = %cleanup.i.for.body.i47_crit_edge, %if.end21.for.body.i47_crit_edge
  %.pn344.i = phi ptr [ %.pn.i52, %cleanup.i.for.body.i47_crit_edge ], [ %.pn338.i, %if.end21.for.body.i47_crit_edge ]
  %off_chip_digital.0.off0343.i = phi i1 [ %off_chip_digital.2.off0.i, %cleanup.i.for.body.i47_crit_edge ], [ false, %if.end21.for.body.i47_crit_edge ]
  %tv_output.0.off0342.i = phi i1 [ %tv_output.2.off0.i, %cleanup.i.for.body.i47_crit_edge ], [ false, %if.end21.for.body.i47_crit_edge ]
  %tmds_output.0.off0341.i = phi i1 [ %tmds_output.2.off0.i, %cleanup.i.for.body.i47_crit_edge ], [ false, %if.end21.for.body.i47_crit_edge ]
  %lvds_output.0.off0340.i = phi i1 [ %lvds_output.2.off0.i, %cleanup.i.for.body.i47_crit_edge ], [ false, %if.end21.for.body.i47_crit_edge ]
  %crtc12.i = getelementptr i8, ptr %.pn344.i, i32 48
  %212 = ptrtoint ptr %crtc12.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %crtc12.i, align 4
  %cmp13.not.i = icmp eq ptr %213, %crtc
  br i1 %cmp13.not.i, label %if.end.i50, label %for.body.i47.cleanup.i_crit_edge

for.body.i47.cleanup.i_crit_edge:                 ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i50:                                       ; preds = %for.body.i47
  %dcb.i48 = getelementptr i8, ptr %.pn344.i, i32 80
  %214 = ptrtoint ptr %dcb.i48 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dcb.i48, align 4
  %type.i49 = getelementptr inbounds %struct.dcb_output, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %type.i49 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %type.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %217)
  %cmp14.i = icmp eq i32 %217, 3
  %spec.select.i = select i1 %cmp14.i, i1 true, i1 %lvds_output.0.off0340.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %217)
  %cmp19.i = icmp eq i32 %217, 1
  %tv_output.1.off0.i = select i1 %cmp19.i, i1 true, i1 %tv_output.0.off0342.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %217)
  %cmp24.i = icmp eq i32 %217, 2
  %tmds_output.1.off0.i = select i1 %cmp24.i, i1 true, i1 %tmds_output.0.off0341.i
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %215, i32 0, i32 8
  %218 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %cmp28.not.i = icmp eq i8 %219, 0
  br i1 %cmp28.not.i, label %if.end.i50.cleanup.i_crit_edge, label %land.lhs.true.i51

if.end.i50.cleanup.i_crit_edge:                   ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

land.lhs.true.i51:                                ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  %220 = and i32 %217, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %220)
  %221 = icmp eq i32 %220, 2
  %spec.select314.i = select i1 %221, i1 true, i1 %off_chip_digital.0.off0343.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i51, %if.end.i50.cleanup.i_crit_edge, %for.body.i47.cleanup.i_crit_edge
  %lvds_output.2.off0.i = phi i1 [ %lvds_output.0.off0340.i, %for.body.i47.cleanup.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i51 ], [ %spec.select.i, %if.end.i50.cleanup.i_crit_edge ]
  %tmds_output.2.off0.i = phi i1 [ %tmds_output.0.off0341.i, %for.body.i47.cleanup.i_crit_edge ], [ %tmds_output.1.off0.i, %land.lhs.true.i51 ], [ %tmds_output.1.off0.i, %if.end.i50.cleanup.i_crit_edge ]
  %tv_output.2.off0.i = phi i1 [ %tv_output.0.off0342.i, %for.body.i47.cleanup.i_crit_edge ], [ %tv_output.1.off0.i, %land.lhs.true.i51 ], [ %tv_output.1.off0.i, %if.end.i50.cleanup.i_crit_edge ]
  %off_chip_digital.2.off0.i = phi i1 [ %off_chip_digital.0.off0343.i, %for.body.i47.cleanup.i_crit_edge ], [ %spec.select314.i, %land.lhs.true.i51 ], [ %off_chip_digital.0.off0343.i, %if.end.i50.cleanup.i_crit_edge ]
  %222 = ptrtoint ptr %.pn344.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %.pn.i52 = load ptr, ptr %.pn344.i, align 4
  %cmp.not.i53 = icmp eq ptr %.pn.i52, %encoder_list.i46
  br i1 %cmp.not.i53, label %cleanup.i.for.end.i56_crit_edge, label %cleanup.i.for.body.i47_crit_edge

cleanup.i.for.body.i47_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i47

cleanup.i.for.end.i56_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i56

for.end.i56:                                      ; preds = %cleanup.i.for.end.i56_crit_edge, %if.end21.for.end.i56_crit_edge
  %lvds_output.0.off0.lcssa.i = phi i1 [ false, %if.end21.for.end.i56_crit_edge ], [ %lvds_output.2.off0.i, %cleanup.i.for.end.i56_crit_edge ]
  %tmds_output.0.off0.lcssa.i = phi i1 [ false, %if.end21.for.end.i56_crit_edge ], [ %tmds_output.2.off0.i, %cleanup.i.for.end.i56_crit_edge ]
  %tv_output.0.off0.lcssa.i = phi i1 [ false, %if.end21.for.end.i56_crit_edge ], [ %tv_output.2.off0.i, %cleanup.i.for.end.i56_crit_edge ]
  %off_chip_digital.0.off0.lcssa.i = phi i1 [ false, %if.end21.for.end.i56_crit_edge ], [ %off_chip_digital.2.off0.i, %cleanup.i.for.end.i56_crit_edge ]
  %arrayidx39.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg.i, i32 0, i32 %206, i32 1, i32 28
  %223 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx39.i, align 1
  %225 = and i8 %224, -33
  %arrayidx43.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 28
  %226 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %arrayidx43.i, align 1
  %crtc_eng_ctrl.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 14
  %227 = ptrtoint ptr %crtc_eng_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %crtc_eng_ctrl.i, align 4
  %228 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %index16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp45.i = icmp eq i32 %229, 0
  %spec.store.select.i54 = select i1 %cmp45.i, i32 16, i32 0
  %230 = ptrtoint ptr %crtc_eng_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %spec.store.select.i54, ptr %crtc_eng_ctrl.i, align 4
  %cursor_cfg.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 9
  %231 = ptrtoint ptr %cursor_cfg.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 67174656, ptr %cursor_cfg.i, align 4
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %200, i32 0, i32 2, i32 3, i32 1, i32 2
  %232 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %233)
  %cmp51.i = icmp ugt i16 %233, 16
  %spec.store.select317.i = select i1 %cmp51.i, i32 67178752, i32 67174656
  %234 = ptrtoint ptr %cursor_cfg.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %spec.store.select317.i, ptr %cursor_cfg.i, align 4
  %235 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flags.i, align 4
  %and57.i = and i32 %236, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %for.end.i56.if.end62.i_crit_edge, label %if.then59.i

for.end.i56.if.end62.i_crit_edge:                 ; preds = %for.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then59.i:                                      ; preds = %for.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  %or61.i = or i32 %spec.store.select317.i, 16
  %237 = ptrtoint ptr %cursor_cfg.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %or61.i, ptr %cursor_cfg.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %for.end.i56.if.end62.i_crit_edge
  %arrayidx64.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 83
  %238 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %arrayidx64.i, align 1
  %arrayidx66.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 84
  %239 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %arrayidx66.i, align 1
  %arrayidx70.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 59
  %..i57 = select i1 %tmds_output.0.off0.lcssa.i, i8 -120, i8 34
  %.sink.i58 = select i1 %lvds_output.0.off0.lcssa.i, i8 17, i8 %..i57
  %240 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %.sink.i58, ptr %arrayidx70.i, align 1
  %arrayidx81.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg.i, i32 0, i32 %206, i32 1, i32 60
  %241 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx81.i, align 1
  %arrayidx83.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 60
  %243 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx83.i, align 1
  %saturation.i = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 5
  %244 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %saturation.i, align 4
  %246 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %247, i32 0, i32 5
  %248 = ptrtoint ptr %dev_private.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev_private.i.i.i.i.i, align 4
  %display.i.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %249, i32 0, i32 19
  %250 = ptrtoint ptr %display.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %display.i.i.i.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 8
  %254 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %index16, align 8
  %arrayidx.i.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %253, i32 0, i32 %255
  %conv.i.i = trunc i32 %245 to i8
  %arrayidx3.i.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %253, i32 0, i32 %255, i32 1, i32 69
  %256 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv.i.i, ptr %arrayidx3.i.i, align 1
  %257 = load i32, ptr %saturation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool.not.i.i = icmp eq i32 %257, 0
  br i1 %tobool.not.i.i, label %if.end62.i.nv_crtc_set_digital_vibrance.exit.i_crit_edge, label %land.lhs.true.i.i

if.end62.i.nv_crtc_set_digital_vibrance.exit.i_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv_crtc_set_digital_vibrance.exit.i

land.lhs.true.i.i:                                ; preds = %if.end62.i
  %258 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i25.i.i = getelementptr inbounds %struct.drm_device, ptr %259, i32 0, i32 5
  %260 = ptrtoint ptr %dev_private.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev_private.i.i.i25.i.i, align 4
  %dev1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %259, i32 0, i32 2
  %262 = ptrtoint ptr %dev1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev1.i.i.i.i, align 4
  %device.i.i.i.i = getelementptr i8, ptr %263, i32 -102
  %264 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %device.i.i.i.i, align 2
  %266 = and i16 %265, 4080
  %family.i.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %261, i32 0, i32 2, i32 3, i32 1, i32 4
  %267 = ptrtoint ptr %family.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %family.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %268)
  %cmp.i.i.i.i = icmp ugt i8 %268, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %266)
  %cmp5.not.i.i.i.i = icmp ne i16 %266, 256
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i.i, i1 %cmp5.not.i.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %266)
  %cmp8.not.i.i.i.i = icmp ne i16 %266, 336
  %or.cond21.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %cmp8.not.i.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %266)
  %cmp11.not.i.i.i.i = icmp ne i16 %266, 416
  %or.cond22.i.i.i.i = select i1 %or.cond21.i.i.i.i, i1 %cmp11.not.i.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %266)
  %cmp14.not.i.i.i.i = icmp ne i16 %266, 512
  %or.cond23.i.i.i.i = select i1 %or.cond22.i.i.i.i, i1 %cmp14.not.i.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %266)
  %cmp.i.i.i = icmp ne i16 %266, 272
  %spec.select.i.i.i = select i1 %or.cond23.i.i.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %spec.select.i.i.i, label %if.then.i.i, label %land.lhs.true.i.i.nv_crtc_set_digital_vibrance.exit.i_crit_edge

land.lhs.true.i.i.nv_crtc_set_digital_vibrance.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv_crtc_set_digital_vibrance.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %269 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -128, ptr %arrayidx3.i.i, align 1
  %270 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %saturation.i, align 4
  %.tr.i.i = trunc i32 %271 to i8
  %conv11.i.i = shl i8 %.tr.i.i, 2
  %arrayidx13.i.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %253, i32 0, i32 %255, i32 1, i32 91
  %272 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %conv11.i.i, ptr %arrayidx13.i.i, align 1
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx.i.i, i32 noundef 91) #8
  br label %nv_crtc_set_digital_vibrance.exit.i

nv_crtc_set_digital_vibrance.exit.i:              ; preds = %if.then.i.i, %land.lhs.true.i.i.nv_crtc_set_digital_vibrance.exit.i_crit_edge, %if.end62.i.nv_crtc_set_digital_vibrance.exit.i_crit_edge
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx.i.i, i32 noundef 69) #8
  %273 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %index16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp85.i = icmp eq i32 %274, 0
  br i1 %cmp85.i, label %if.then87.i, label %nv_crtc_set_digital_vibrance.exit.i.if.end95.i_crit_edge

nv_crtc_set_digital_vibrance.exit.i.if.end95.i_crit_edge: ; preds = %nv_crtc_set_digital_vibrance.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.i

if.then87.i:                                      ; preds = %nv_crtc_set_digital_vibrance.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx89.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg.i, i32 0, i32 %206, i32 1, i32 75
  %275 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx89.i, align 1
  %277 = or i8 %276, -128
  %arrayidx94.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 75
  %278 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %277, ptr %arrayidx94.i, align 1
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then87.i, %nv_crtc_set_digital_vibrance.exit.i.if.end95.i_crit_edge
  %279 = ptrtoint ptr %dev_private.i.i42 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev_private.i.i42, align 4
  %display.i.i321.i = getelementptr inbounds %struct.nouveau_drm, ptr %280, i32 0, i32 19
  %281 = ptrtoint ptr %display.i.i321.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %display.i.i321.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 8
  %arrayidx101.i = getelementptr %struct.nv04_display, ptr %284, i32 0, i32 1, i32 0, i32 0, i32 1, i32 82
  %285 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx101.i, align 1
  %arrayidx103.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 82
  %287 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %286, ptr %arrayidx103.i, align 1
  %288 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %index16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool105.not.i = icmp eq i32 %289, 0
  br i1 %tobool105.not.i, label %if.then106.i, label %if.end95.i.if.end111.i_crit_edge

if.end95.i.if.end111.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111.i

if.then106.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i59 = add i8 %286, 4
  %290 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %add.i59, ptr %arrayidx103.i, align 1
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then106.i, %if.end95.i.if.end111.i_crit_edge
  %conv113.i = zext i1 %off_chip_digital.0.off0.lcssa.i to i8
  %arrayidx115.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 89
  %291 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %conv113.i, ptr %arrayidx115.i, align 1
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %200, i32 0, i32 2, i32 3, i32 1, i32 4
  %292 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %293)
  %cmp120.i = icmp ugt i8 %293, 3
  br i1 %cmp120.i, label %if.then122.i, label %if.end111.i.if.end128.i_crit_edge

if.end111.i.if.end128.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.then122.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv125.i = select i1 %off_chip_digital.0.off0.lcssa.i, i8 17, i8 1
  %arrayidx127.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 159
  %294 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %conv125.i, ptr %arrayidx127.i, align 1
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then122.i, %if.end111.i.if.end128.i_crit_edge
  %295 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv129.i = zext i16 %296 to i32
  %sub.i61 = add nsw i32 %conv129.i, -3
  %crtc_830.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 11
  %297 = ptrtoint ptr %crtc_830.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %sub.i61, ptr %crtc_830.i, align 4
  %298 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv131.i = zext i16 %298 to i32
  %sub132.i = add nsw i32 %conv131.i, -1
  %crtc_834.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 12
  %299 = ptrtoint ptr %crtc_834.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %sub132.i, ptr %crtc_834.i, align 4
  %300 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %301)
  %cmp138.i = icmp eq i8 %301, 5
  br i1 %cmp138.i, label %if.then140.i, label %if.end128.i.if.end142.i_crit_edge

if.end128.i.if.end142.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142.i

if.then140.i:                                     ; preds = %if.end128.i
  %302 = ptrtoint ptr %dev_private.i.i42 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dev_private.i.i42, align 4
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %303, i32 0, i32 2, i32 3, i32 0, i32 6
  %304 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %map.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %305, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then5.i.i, !prof !76

if.then5.i.i:                                     ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %305, i32 6293584
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  br label %NVReadCRTC.exit.i

if.else.i.i:                                      ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %303, i32 0, i32 2, i32 3
  %call10.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef 6293584) #8
  br label %NVReadCRTC.exit.i

NVReadCRTC.exit.i:                                ; preds = %if.else.i.i, %if.then5.i.i
  %_data.0.i.i = phi i32 [ %306, %if.then5.i.i ], [ %call10.i.i, %if.else.i.i ]
  %crtc_850.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 13
  %307 = ptrtoint ptr %crtc_850.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %_data.0.i.i, ptr %crtc_850.i, align 4
  %308 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %.pr.i = load i8, ptr %family.i, align 1
  br label %if.end142.i

if.end142.i:                                      ; preds = %NVReadCRTC.exit.i, %if.end128.i.if.end142.i_crit_edge
  %309 = phi i8 [ %.pr.i, %NVReadCRTC.exit.i ], [ %301, %if.end128.i.if.end142.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %309)
  %cmp148.i = icmp ugt i8 %309, 3
  br i1 %cmp148.i, label %if.then150.i, label %if.end142.i.if.end152.i_crit_edge

if.end142.i.if.end152.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

if.then150.i:                                     ; preds = %if.end142.i
  %310 = ptrtoint ptr %dev_private.i.i42 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev_private.i.i42, align 4
  %map.i323.i = getelementptr inbounds %struct.nouveau_drm, ptr %311, i32 0, i32 2, i32 3, i32 0, i32 6
  %312 = ptrtoint ptr %map.i323.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %map.i323.i, align 8
  %tobool2.not.i324.i = icmp eq ptr %313, null
  br i1 %tobool2.not.i324.i, label %if.else.i329.i, label %if.then5.i326.i, !prof !76

if.then5.i326.i:                                  ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i325.i = getelementptr i8, ptr %313, i32 6293532
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i325.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  br label %NVReadCRTC.exit331.i

if.else.i329.i:                                   ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i327.i = getelementptr inbounds %struct.nouveau_drm, ptr %311, i32 0, i32 2, i32 3
  %call10.i328.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i327.i, i32 noundef 4, i64 noundef 6293532) #8
  br label %NVReadCRTC.exit331.i

NVReadCRTC.exit331.i:                             ; preds = %if.else.i329.i, %if.then5.i326.i
  %_data.0.i330.i = phi i32 [ %314, %if.then5.i326.i ], [ %call10.i328.i, %if.else.i329.i ]
  %gpio_ext.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 10
  %315 = ptrtoint ptr %gpio_ext.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %_data.0.i330.i, ptr %gpio_ext.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %NVReadCRTC.exit331.i, %if.end142.i.if.end152.i_crit_edge
  %316 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %317)
  %cmp158.i = icmp ugt i8 %317, 1
  %spec.select348.i = select i1 %cmp158.i, i32 2, i32 4
  %318 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 8
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %spec.select348.i, ptr %318, align 4
  %320 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %321)
  %cmp169.i = icmp eq i8 %321, 5
  br i1 %cmp169.i, label %if.then171.i, label %if.end152.i.if.end176.i_crit_edge

if.end152.i.if.end176.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176.i

if.then171.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx173.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 133
  %322 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 -1, ptr %arrayidx173.i, align 1
  %arrayidx175.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 134
  %323 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 1, ptr %arrayidx175.i, align 1
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.then171.i, %if.end152.i.if.end176.i_crit_edge
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %210, i32 0, i32 4
  %324 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %format.i, align 8
  %depth.i = getelementptr inbounds %struct.drm_format_info, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %depth.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %depth.i, align 4
  %conv177.i = zext i8 %327 to i16
  %add178.i = add nuw nsw i16 %conv177.i, 1
  %div313.i = lshr i16 %add178.i, 3
  %conv179.i = trunc i16 %div313.i to i8
  %arrayidx181.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 1, i32 40
  %brmerge.i = select i1 %lvds_output.0.off0.lcssa.i, i1 true, i1 %tmds_output.0.off0.lcssa.i
  %brmerge315.i = select i1 %brmerge.i, i1 true, i1 %tv_output.0.off0.lcssa.i
  %328 = or i8 %conv179.i, -128
  %spec.select337.i = select i1 %brmerge315.i, i8 %328, i8 %conv179.i
  %329 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %spec.select337.i, ptr %arrayidx181.i, align 1
  %330 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %331)
  %cmp201.i = icmp ugt i8 %331, 1
  br i1 %cmp201.i, label %if.then203.i, label %if.end176.i.if.end204.i_crit_edge

if.end176.i.if.end204.i_crit_edge:                ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204.i

if.then203.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #10
  %nv10_cursync.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 15
  %332 = ptrtoint ptr %nv10_cursync.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 33554432, ptr %nv10_cursync.i, align 4
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.then203.i, %if.end176.i.if.end204.i_crit_edge
  %ramdac_gen_ctrl.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 17
  %333 = ptrtoint ptr %ramdac_gen_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 1048880, ptr %ramdac_gen_ctrl.i, align 4
  %334 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %format.i, align 8
  %depth206.i = getelementptr inbounds %struct.drm_format_info, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %depth206.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %depth206.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %337)
  %cmp208.i = icmp eq i8 %337, 16
  %spec.store.select316.i = select i1 %cmp208.i, i32 1052976, i32 1048880
  %338 = ptrtoint ptr %ramdac_gen_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %spec.store.select316.i, ptr %ramdac_gen_ctrl.i, align 4
  %339 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %340)
  %cmp219.i = icmp ugt i16 %340, 16
  br i1 %cmp219.i, label %if.then221.i, label %if.end204.i.if.end224.i_crit_edge

if.end204.i.if.end224.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224.i

if.then221.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #10
  %or223.i = or i32 %spec.store.select316.i, 536870912
  %341 = ptrtoint ptr %ramdac_gen_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %or223.i, ptr %ramdac_gen_ctrl.i, align 4
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.then221.i, %if.end204.i.if.end224.i_crit_edge
  %ramdac_630.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 18
  %342 = ptrtoint ptr %ramdac_630.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 0, ptr %ramdac_630.i, align 4
  %tv_setup.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 20
  %343 = ptrtoint ptr %tv_setup.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 0, ptr %tv_setup.i, align 4
  %sharpness.i = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 6
  %344 = ptrtoint ptr %sharpness.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %sharpness.i, align 8
  %346 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i332.i = getelementptr inbounds %struct.drm_device, ptr %347, i32 0, i32 5
  %348 = ptrtoint ptr %dev_private.i.i.i.i332.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev_private.i.i.i.i332.i, align 4
  %display.i.i.i333.i = getelementptr inbounds %struct.nouveau_drm, ptr %349, i32 0, i32 19
  %350 = ptrtoint ptr %display.i.i.i333.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %display.i.i.i333.i, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 8
  %354 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %index16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %cmp.i.i = icmp slt i32 %345, 0
  %add.i.i = add i32 %345, 64
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %345
  %ramdac_634.i.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %353, i32 0, i32 %355, i32 19
  %356 = ptrtoint ptr %ramdac_634.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %spec.select.i.i, ptr %ramdac_634.i.i, align 4
  %357 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %crtc, align 8
  %359 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %index16, align 8
  %dev_private.i.i.i335.i = getelementptr inbounds %struct.drm_device, ptr %358, i32 0, i32 5
  %361 = ptrtoint ptr %dev_private.i.i.i335.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %dev_private.i.i.i335.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool.not.i.i.i = icmp eq i32 %360, 0
  %spec.select.i.i336.i = select i1 %tobool.not.i.i.i, i32 6817332, i32 6825524
  %map.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %362, i32 0, i32 2, i32 3, i32 0, i32 6
  %363 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %map.i.i.i, align 8
  %tobool2.not.i.i.i = icmp eq ptr %364, null
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %do.body.i.i.i, !prof !76

do.body.i.i.i:                                    ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %365 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %map.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %366, i32 %spec.select.i.i336.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %spec.select.i.i) #8, !srcloc !78
  br label %nv_crtc_mode_set_regs.exit

if.else.i.i.i:                                    ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %362, i32 0, i32 2, i32 3
  %conv.i.i.i = zext i32 %spec.select.i.i336.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i.i.i, i32 noundef 4, i64 noundef %conv.i.i.i, i32 noundef %spec.select.i.i) #8
  br label %nv_crtc_mode_set_regs.exit

nv_crtc_mode_set_regs.exit:                       ; preds = %if.else.i.i.i, %do.body.i.i.i
  %ramdac_8c0.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 37
  %367 = ptrtoint ptr %ramdac_8c0.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 256, ptr %ramdac_8c0.i, align 4
  %ramdac_a20.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 38
  %368 = ptrtoint ptr %ramdac_a20.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 0, ptr %ramdac_a20.i, align 4
  %ramdac_a24.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 39
  %369 = ptrtoint ptr %ramdac_a24.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 1048575, ptr %ramdac_a24.i, align 4
  %ramdac_a34.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %204, i32 0, i32 %206, i32 40
  %370 = ptrtoint ptr %ramdac_a34.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 1, ptr %ramdac_a34.i, align 4
  %371 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %adjusted_mode, align 4
  %373 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %crtc, align 8
  %dev_private.i.i62 = getelementptr inbounds %struct.drm_device, ptr %374, i32 0, i32 5
  %375 = ptrtoint ptr %dev_private.i.i62 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dev_private.i.i62, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 2, i32 3, i32 0, i32 5
  %377 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %priv.i, align 4
  %device2.i = getelementptr inbounds %struct.anon.211, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %device2.i, align 8
  %bios3.i = getelementptr inbounds %struct.nvkm_device, ptr %380, i32 0, i32 21
  %381 = ptrtoint ptr %bios3.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %bios3.i, align 8
  %clk12.i = getelementptr inbounds %struct.nvkm_device, ptr %380, i32 0, i32 43
  %383 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %clk12.i, align 8
  %display.i.i.i63 = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 19
  %385 = ptrtoint ptr %display.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %display.i.i.i63, align 4
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %386, align 8
  %389 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %index16, align 8
  %pllvals.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %388, i32 0, i32 %390, i32 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll_lim.i) #8
  %391 = call ptr @memset(ptr %pll_lim.i, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %390)
  %tobool.not.i = icmp eq i32 %390, 0
  %cond.i = select i1 %tobool.not.i, i32 128, i32 129
  %call16.i = call i32 @nvbios_pll_parse(ptr noundef %382, i32 noundef %cond.i, ptr noundef nonnull %pll_lim.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end.i66, label %nv_crtc_mode_set_regs.exit.nv_crtc_calc_state_ext.exit_crit_edge

nv_crtc_mode_set_regs.exit.nv_crtc_calc_state_ext.exit_crit_edge: ; preds = %nv_crtc_mode_set_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv_crtc_calc_state_ext.exit

if.end.i66:                                       ; preds = %nv_crtc_mode_set_regs.exit
  %NM2.i = getelementptr inbounds %struct.anon.126, ptr %pllvals.i, i32 0, i32 1
  %392 = ptrtoint ptr %NM2.i to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 0, ptr %NM2.i, align 2
  %chipset.i65 = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 2, i32 3, i32 1, i32 2
  %393 = ptrtoint ptr %chipset.i65 to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %chipset.i65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %394)
  %cmp.i = icmp ugt i16 %394, 64
  br i1 %cmp.i, label %land.lhs.true.i67, label %if.end.i66.if.end24.i_crit_edge

if.end.i66.if.end24.i_crit_edge:                  ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

land.lhs.true.i67:                                ; preds = %if.end.i66
  %max_freq.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 7, i32 1
  %395 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %max_freq.i, align 4
  %div1.i = lshr i32 %396, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %372)
  %cmp21.not.i = icmp ult i32 %div1.i, %372
  br i1 %cmp21.not.i, label %land.lhs.true.i67.if.end24.i_crit_edge, label %if.then23.i

land.lhs.true.i67.if.end24.i_crit_edge:           ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then23.i:                                      ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #10
  %vco2.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 8
  %397 = call ptr @memset(ptr %vco2.i, i32 0, i32 20)
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %land.lhs.true.i67.if.end24.i_crit_edge, %if.end.i66.if.end24.i_crit_edge
  %pll_calc.i = getelementptr inbounds %struct.nvkm_clk, ptr %384, i32 0, i32 21
  %398 = ptrtoint ptr %pll_calc.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %pll_calc.i, align 4
  %call25.i = call i32 %399(ptr noundef %384, ptr noundef nonnull %pll_lim.i, i32 noundef %372, ptr noundef %pllvals.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.nv_crtc_calc_state_ext.exit_crit_edge, label %if.end28.i

if.end24.i.nv_crtc_calc_state_ext.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv_crtc_calc_state_ext.exit

if.end28.i:                                       ; preds = %if.end24.i
  %pllsel.i = getelementptr inbounds %struct.nv04_mode_state, ptr %388, i32 0, i32 1
  %400 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %pllsel.i, align 4
  %and.i68 = and i32 %401, 806291968
  store i32 %and.i68, ptr %pllsel.i, align 4
  %family.i69 = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 2, i32 3, i32 1, i32 4
  %402 = ptrtoint ptr %family.i69 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %family.i69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %403)
  %cmp33.i = icmp eq i8 %403, 5
  br i1 %cmp33.i, label %if.then35.i, label %if.end28.i.if.end37.i_crit_edge

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %and.i68, 4
  %404 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %or.i, ptr %pllsel.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end28.i.if.end37.i_crit_edge
  %405 = ptrtoint ptr %chipset.i65 to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %chipset.i65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %406)
  %cmp43.i = icmp ult i16 %406, 65
  br i1 %cmp43.i, label %if.then45.i, label %if.end37.i.if.end48.i_crit_edge

if.end37.i.if.end48.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %407 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %pllsel.i, align 4
  %or47.i = or i32 %408, 1280
  store i32 %or47.i, ptr %pllsel.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.end37.i.if.end48.i_crit_edge
  %409 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %index16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %tobool50.not.i = icmp eq i32 %410, 0
  %cond51.i = select i1 %tobool50.not.i, i32 268435968, i32 536872960
  %411 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %pllsel.i, align 4
  %or53.i = or i32 %cond51.i, %412
  store i32 %or53.i, ptr %pllsel.i, align 4
  %413 = ptrtoint ptr %NM2.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %NM2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %414)
  %tobool55.not.i = icmp eq i16 %414, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %415 = load i32, ptr @__drm_debug, align 4
  %and.i2.i = and i32 %415, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.i3.not.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool55.not.i, label %do.body74.i, label %do.body.i70

do.body.i70:                                      ; preds = %if.end48.i
  br i1 %tobool.i3.not.i, label %do.body.i70.if.end98.i_crit_edge, label %do.body59.i

do.body.i70.if.end98.i_crit_edge:                 ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

do.body59.i:                                      ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  %drm62.i = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 2, i32 1
  %416 = ptrtoint ptr %drm62.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %drm62.i, align 8
  %dev63.i = getelementptr inbounds %struct.nouveau_drm, ptr %417, i32 0, i32 3
  %418 = ptrtoint ptr %dev63.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev63.i, align 8
  %dev64.i = getelementptr inbounds %struct.drm_device, ptr %419, i32 0, i32 2
  %420 = ptrtoint ptr %dev64.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dev64.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 2, i32 12
  %422 = ptrtoint ptr %pllvals.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %pllvals.i, align 4
  %conv65.i = zext i8 %423 to i32
  %424 = ptrtoint ptr %NM2.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %NM2.i, align 2
  %conv66.i = zext i8 %425 to i32
  %M1.i = getelementptr inbounds %struct.anon.125, ptr %pllvals.i, i32 0, i32 1
  %426 = ptrtoint ptr %M1.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %M1.i, align 1
  %conv67.i = zext i8 %427 to i32
  %M2.i = getelementptr inbounds %struct.anon.125, ptr %pllvals.i, i32 0, i32 3
  %428 = ptrtoint ptr %M2.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %M2.i, align 1
  %conv68.i = zext i8 %429 to i32
  %log2P.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %388, i32 0, i32 %390, i32 16, i32 1
  %430 = ptrtoint ptr %log2P.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %log2P.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %421, ptr noundef nonnull @.str.24, ptr noundef %name.i, i32 noundef %conv65.i, i32 noundef %conv66.i, i32 noundef %conv67.i, i32 noundef %conv68.i, i32 noundef %431) #11
  br label %if.end98.i

do.body74.i:                                      ; preds = %if.end48.i
  br i1 %tobool.i3.not.i, label %do.body74.i.if.end98.i_crit_edge, label %do.body77.i

do.body74.i.if.end98.i_crit_edge:                 ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

do.body77.i:                                      ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #10
  %drm83.i = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 2, i32 1
  %432 = ptrtoint ptr %drm83.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %drm83.i, align 8
  %dev84.i = getelementptr inbounds %struct.nouveau_drm, ptr %433, i32 0, i32 3
  %434 = ptrtoint ptr %dev84.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %dev84.i, align 8
  %dev85.i = getelementptr inbounds %struct.drm_device, ptr %435, i32 0, i32 2
  %436 = ptrtoint ptr %dev85.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev85.i, align 4
  %name86.i = getelementptr inbounds %struct.nouveau_drm, ptr %376, i32 0, i32 2, i32 12
  %438 = ptrtoint ptr %pllvals.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %pllvals.i, align 4
  %conv89.i71 = zext i8 %439 to i32
  %M190.i = getelementptr inbounds %struct.anon.125, ptr %pllvals.i, i32 0, i32 1
  %440 = ptrtoint ptr %M190.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %M190.i, align 1
  %conv91.i = zext i8 %441 to i32
  %log2P92.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %388, i32 0, i32 %390, i32 16, i32 1
  %442 = ptrtoint ptr %log2P92.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %log2P92.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %437, ptr noundef nonnull @.str.27, ptr noundef %name86.i, i32 noundef %conv89.i71, i32 noundef %conv91.i, i32 noundef %443) #11
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.body77.i, %do.body74.i.if.end98.i_crit_edge, %do.body59.i, %do.body.i70.if.end98.i_crit_edge
  %set_offset.i = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 2
  %444 = ptrtoint ptr %set_offset.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %set_offset.i, align 8
  %offset.i = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 1
  %446 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %offset.i, align 4
  call void %445(ptr noundef %crtc, i32 noundef %447) #8
  br label %nv_crtc_calc_state_ext.exit

nv_crtc_calc_state_ext.exit:                      ; preds = %if.end98.i, %if.end24.i.nv_crtc_calc_state_ext.exit_crit_edge, %nv_crtc_mode_set_regs.exit.nv_crtc_calc_state_ext.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll_lim.i) #8
  br label %cleanup

cleanup:                                          ; preds = %nv_crtc_calc_state_ext.exit, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nv_crtc_calc_state_ext.exit ], [ %call13, %do.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_crtc_mode_set_base(ptr nocapture noundef %crtc, i32 noundef %x, i32 noundef %y, ptr nocapture noundef readonly %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nv_crtc_swap_fbs(ptr noundef %crtc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nv04_crtc_do_mode_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_crtc_mode_set_base_atomic(ptr nocapture noundef %crtc, ptr nocapture noundef readonly %fb, i32 noundef %x, i32 noundef %y, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dev2 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nouveau_fbcon_accel_save_disable(ptr noundef %5) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nouveau_fbcon_accel_restore(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @nv04_crtc_do_mode_set_base(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_crtc_disable(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
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
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %arrayidx = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %arrayidx8 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %13
  %tobool.not.i = icmp eq ptr %arrayidx8, null
  br i1 %tobool.not.i, label %if.end.nouveau_bo_ref.exit_crit_edge, label %if.end.i

if.end.nouveau_bo_ref.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nouveau_bo_ref.exit

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  store ptr null, ptr %arrayidx8, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.end.i.nouveau_bo_ref.exit_crit_edge, label %if.then6.i

if.end.i.nouveau_bo_ref.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nouveau_bo_ref.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ttm_bo_put(ptr noundef nonnull %15) #8
  br label %nouveau_bo_ref.exit

nouveau_bo_ref.exit:                              ; preds = %if.then6.i, %if.end.i.nouveau_bo_ref.exit_crit_edge, %if.end.nouveau_bo_ref.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_display_scanoutpos(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVBlankScreen(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nv_crtc_swap_fbs(ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
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
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %fb1 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb1, align 4
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj, align 4
  %call4 = tail call i32 @nouveau_bo_pin(ptr noundef %13, i32 noundef 2, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 8
  %arrayidx5 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %15
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %17) #8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 8
  %arrayidx13 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %19
  %tobool.not.i = icmp eq ptr %arrayidx13, null
  br i1 %tobool.not.i, label %if.end.if.end15_crit_edge, label %if.end.i

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i:                                         ; preds = %if.end
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx13, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  %kref.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then2.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !76

if.then2.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then2.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end4.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end4.i_crit_edge:          ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then2.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then2.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %13, ptr %arrayidx13, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end15_crit_edge, label %if.then6.i

if.end4.i.if.end15_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ttm_bo_put(ptr noundef nonnull %21) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then6.i, %if.end4.i.if.end15_crit_edge, %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crtc_wr_cio_state(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %crtcstate, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index1 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 8
  %arrayidx = getelementptr %struct.nv04_crtc_reg, ptr %crtcstate, i32 0, i32 1, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  %mul6.i = shl i32 %3, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !76

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %index to i8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #8, !srcloc !80
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i32 %add7.i to i64
  %conv8.i = and i32 %index, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef %conv8.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %11, null
  %add27.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then19.i, !prof !76

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i = getelementptr i8, ptr %11, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %5) #8, !srcloc !80
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %5 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #8
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv04_crtc_do_mode_set_base(ptr nocapture noundef %crtc, ptr nocapture noundef readonly %passed_fb, i32 noundef %x, i32 noundef %y, i1 noundef zeroext %atomic) unnamed_addr #0 align 64 {
entry:
  %arb_burst = alloca i32, align 4
  %arb_lwm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %arrayidx = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arb_burst) #8
  %10 = ptrtoint ptr %arb_burst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %arb_burst, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arb_lwm) #8
  %11 = ptrtoint ptr %arb_lwm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arb_lwm, align 4, !annotation !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %12 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end14_crit_edge, label %do.body5

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %9) #11
  br label %do.end14

do.end14:                                         ; preds = %do.body5, %entry.do.end14_crit_edge
  br i1 %atomic, label %do.end14.if.end41_crit_edge, label %land.lhs.true

do.end14.if.end41_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true:                                    ; preds = %do.end14
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %19 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fb, align 4
  %tobool15.not = icmp eq ptr %22, null
  br i1 %tobool15.not, label %do.body17, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.body17:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %23 = load i32, ptr @__drm_debug, align 4
  %and.i3 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.i4.not = icmp eq i32 %and.i3, 0
  br i1 %tobool.i4.not, label %do.body17.cleanup_crit_edge, label %do.body20

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %drm26 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %drm26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm26, align 8
  %dev27 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev27, align 8
  %dev28 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev28, align 4
  %name29 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.32, ptr noundef %name29) #11
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %do.end14.if.end41_crit_edge
  %drm_fb.0 = phi ptr [ %passed_fb, %do.end14.if.end41_crit_edge ], [ %22, %land.lhs.true.if.end41_crit_edge ]
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %drm_fb.0, i32 0, i32 15
  %30 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %obj, align 4
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offset, align 8
  %conv = trunc i64 %33 to i32
  %offset45 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %offset45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %offset45, align 8
  %lut = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 12
  %35 = ptrtoint ptr %lut to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lut, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %drm_fb.0, i32 0, i32 4
  %37 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %format, align 8
  %depth46 = getelementptr inbounds %struct.drm_format_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %depth46 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %depth46, align 4
  %conv47 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv47)
  %cmp.not = icmp eq i32 %36, %conv47
  br i1 %cmp.not, label %if.end41.if.end55_crit_edge, label %if.then49

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then49:                                        ; preds = %if.end41
  %41 = ptrtoint ptr %lut to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv47, ptr %lut, align 8
  %42 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %display.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index, align 8
  %DAC.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %49, i32 0, i32 %51, i32 6
  %gamma_store.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %52 = ptrtoint ptr %gamma_store.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gamma_store.i, align 4
  %gamma_size.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %54 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gamma_size.i, align 8
  %add.ptr.i = getelementptr i16, ptr %53, i32 %55
  %add.ptr4.i = getelementptr i16, ptr %add.ptr.i, i32 %55
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then49
  %i.043.i = phi i32 [ 0, %if.then49 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %b.042.i = phi ptr [ %add.ptr4.i, %if.then49 ], [ %incdec.ptr14.i, %for.body.i.for.body.i_crit_edge ]
  %g.041.i = phi ptr [ %add.ptr.i, %if.then49 ], [ %incdec.ptr8.i, %for.body.i.for.body.i_crit_edge ]
  %r.040.i = phi ptr [ %53, %if.then49 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %r.040.i, i32 1
  %56 = ptrtoint ptr %r.040.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %r.040.i, align 2
  %58 = lshr i16 %57, 8
  %conv5.i = trunc i16 %58 to i8
  %arrayidx6.i = getelementptr %struct.rgb, ptr %DAC.i, i32 %i.043.i
  %59 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %incdec.ptr8.i = getelementptr i16, ptr %g.041.i, i32 1
  %60 = ptrtoint ptr %g.041.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %g.041.i, align 2
  %62 = lshr i16 %61, 8
  %conv11.i = trunc i16 %62 to i8
  %g13.i = getelementptr %struct.rgb, ptr %DAC.i, i32 %i.043.i, i32 1
  %63 = ptrtoint ptr %g13.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv11.i, ptr %g13.i, align 1
  %incdec.ptr14.i = getelementptr i16, ptr %b.042.i, i32 1
  %64 = ptrtoint ptr %b.042.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %b.042.i, align 2
  %66 = lshr i16 %65, 8
  %conv17.i = trunc i16 %66 to i8
  %b19.i = getelementptr %struct.rgb, ptr %DAC.i, i32 %i.043.i, i32 2
  %67 = ptrtoint ptr %b19.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv17.i, ptr %b19.i, align 1
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %nv_crtc_gamma_load.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nv_crtc_gamma_load.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index, align 8
  %70 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i39.i = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 19
  %72 = ptrtoint ptr %display.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %display.i.i39.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  tail call void @nouveau_hw_load_state_palette(ptr noundef %43, i32 noundef %69, ptr noundef %75) #8
  br label %if.end55

if.end55:                                         ; preds = %nv_crtc_gamma_load.exit, %if.end41.if.end55_crit_edge
  %arrayidx56 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 40
  %76 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx56, align 1
  %78 = and i8 %77, -4
  store i8 %78, ptr %arrayidx56, align 1
  %79 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %format, align 8
  %depth60 = getelementptr inbounds %struct.drm_format_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %depth60 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %depth60, align 4
  %conv61 = zext i8 %82 to i16
  %add = add nuw nsw i16 %conv61, 1
  %div1 = lshr i16 %add, 3
  %83 = trunc i16 %div1 to i8
  %conv65 = or i8 %78, %83
  store i8 %conv65, ptr %arrayidx56, align 1
  %ramdac_gen_ctrl = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 17
  %84 = ptrtoint ptr %ramdac_gen_ctrl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ramdac_gen_ctrl, align 4
  %and66 = and i32 %85, -4097
  store i32 %and66, ptr %ramdac_gen_ctrl, align 4
  %86 = load ptr, ptr %format, align 8
  %depth68 = getelementptr inbounds %struct.drm_format_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %depth68 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %depth68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %88)
  %cmp70 = icmp eq i8 %88, 16
  br i1 %cmp70, label %if.then72, label %if.end55.if.end75_crit_edge

if.end55.if.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then72:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %or74 = or i32 %85, 4096
  %89 = ptrtoint ptr %ramdac_gen_ctrl to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or74, ptr %ramdac_gen_ctrl, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end55.if.end75_crit_edge
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx, i32 noundef 40)
  %90 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %index, align 8
  %92 = ptrtoint ptr %ramdac_gen_ctrl to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ramdac_gen_ctrl, align 4
  %94 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i = icmp eq i32 %91, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6817280, i32 6825472
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %95, i32 0, i32 2, i32 3, i32 0, i32 6
  %96 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %97, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !76

do.body.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %99, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %93) #8, !srcloc !78
  br label %NVWriteRAMDAC.exit

if.else.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %95, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %93) #8
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i, %do.body.i
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %drm_fb.0, i32 0, i32 6
  %100 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pitches, align 8
  %shr = lshr i32 %101, 3
  %conv79 = trunc i32 %shr to i8
  %arrayidx81 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 19
  %102 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv79, ptr %arrayidx81, align 1
  %103 = load i32, ptr %pitches, align 8
  %104 = lshr i32 %103, 6
  %105 = trunc i32 %104 to i8
  %conv87 = and i8 %105, -32
  %arrayidx89 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 25
  %106 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv87, ptr %arrayidx89, align 1
  %107 = load i32, ptr %pitches, align 8
  %108 = lshr i32 %107, 8
  %109 = trunc i32 %108 to i8
  %conv96 = and i8 %109, 64
  %arrayidx98 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 66
  %110 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv96, ptr %arrayidx98, align 1
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx, i32 noundef 25)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx, i32 noundef 19)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx, i32 noundef 66)
  %111 = ptrtoint ptr %offset45 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %offset45, align 8
  %and101 = and i32 %112, -4
  %fb_start = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 7
  %113 = ptrtoint ptr %fb_start to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and101, ptr %fb_start, align 4
  %114 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pitches, align 8
  %mul = mul i32 %115, %y
  %116 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %format, align 8
  %118 = getelementptr inbounds %struct.drm_format_info, ptr %117, i32 0, i32 3
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 2
  %conv106 = zext i8 %120 to i32
  %mul107 = mul i32 %conv106, %x
  %add108 = add i32 %mul, %and101
  %add110 = add i32 %add108, %mul107
  store i32 %add110, ptr %fb_start, align 4
  %121 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %index, align 8
  tail call fastcc void @nv_set_crtc_base(ptr noundef %1, i32 noundef %122, i32 noundef %add110)
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %123 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mode, align 4
  %125 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %format, align 8
  %127 = getelementptr inbounds %struct.drm_format_info, ptr %126, i32 0, i32 3
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 2
  %conv115 = zext i8 %129 to i32
  %mul116 = shl nuw nsw i32 %conv115, 3
  call void @nouveau_calc_arb(ptr noundef %1, i32 noundef %124, i32 noundef %mul116, ptr noundef nonnull %arb_burst, ptr noundef nonnull %arb_lwm) #8
  %130 = ptrtoint ptr %arb_burst to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arb_burst, align 4
  %conv117 = trunc i32 %131 to i8
  %arrayidx119 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 27
  %132 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv117, ptr %arrayidx119, align 1
  %133 = ptrtoint ptr %arb_lwm to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arb_lwm, align 4
  %conv121 = trunc i32 %134 to i8
  %arrayidx123 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 32
  %135 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv121, ptr %arrayidx123, align 1
  call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx, i32 noundef 27)
  call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx, i32 noundef 32)
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %136 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %137)
  %cmp126 = icmp ugt i8 %137, 2
  br i1 %cmp126, label %if.then128, label %NVWriteRAMDAC.exit.cleanup_crit_edge

NVWriteRAMDAC.exit.cleanup_crit_edge:             ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then128:                                       ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %arb_lwm to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arb_lwm, align 4
  %140 = lshr i32 %139, 8
  %conv130 = trunc i32 %140 to i8
  %arrayidx132 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 71
  %141 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv130, ptr %arrayidx132, align 1
  call fastcc void @crtc_wr_cio_state(ptr noundef %crtc, ptr noundef %arrayidx, i32 noundef 71)
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %NVWriteRAMDAC.exit.cleanup_crit_edge, %do.body20, %do.body17.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arb_lwm) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arb_burst) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_calc_arb(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_accel_save_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_accel_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1355, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1060, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv04_finish_page_flip._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv04_finish_page_flip._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1286, i32 17}
!12 = !{ptr @modeset_formats, !13, !"modeset_formats", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1272, i32 23}
!14 = !{ptr @nv04_crtc_funcs, !15, !"nv04_crtc_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1249, i32 36}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1214, i32 3}
!18 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.nv04_crtc_page_flip, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1215, i32 3}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1216, i32 3}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1217, i32 3}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!33 = !{ptr @__func__.nv04_page_flip_emit, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1129, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nv04_crtc_helper_funcs, !37, !"nv04_crtc_helper_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 1261, i32 43}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 183, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nv_crtc_dpms._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @nv_crtc_dpms._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 646, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nv_crtc_mode_set._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @nv_crtc_mode_set._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 165, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nv_crtc_calc_state_ext._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @nv_crtc_calc_state_ext._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 168, i32 3}
!56 = !{ptr @nv_crtc_calc_state_ext._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nv_crtc_calc_state_ext._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 836, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nv04_crtc_do_mode_set_base._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nv04_crtc_do_mode_set_base._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/dispnv04/crtc.c", i32 840, i32 3}
!65 = !{ptr @nv04_crtc_do_mode_set_base._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @nv04_crtc_do_mode_set_base._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2158015059}
!78 = !{i64 4528392}
!79 = !{i64 2152069540}
!80 = !{i64 4528195}
!81 = !{i64 4528590}
!82 = !{i64 2152067935}
!83 = !{i64 2148522926, i64 2148522958, i64 2148522987, i64 2148523021, i64 2148523052, i64 2148523075}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148610951}
!86 = !{i64 2148525391, i64 2148525423, i64 2148525452, i64 2148525486, i64 2148525517, i64 2148525540}
!87 = !{i64 2149914034}
!88 = !{!"auto-init"}
!89 = !{i64 4528810}
!90 = !{i64 2158016387}
!91 = !{i64 2158017448}
!92 = !{i64 2158013998}
