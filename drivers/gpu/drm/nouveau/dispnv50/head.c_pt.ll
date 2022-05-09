; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/head.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.93, %struct.anon.94, %struct.nv50_head_mode, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.105, %struct.nv50_crc_atom, %struct.anon.106, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
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
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
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
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.145, ptr, ptr, ptr, ptr, ptr }
%struct.anon.145 = type { ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.155, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.155 = type { ptr, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.156, %struct.anon.157, %struct.anon.159, %union.anon.160 }
%struct.anon.156 = type { i32, i32 }
%struct.anon.157 = type { i32, %struct.anon.158, i8 }
%struct.anon.158 = type { i32, i32, i32 }
%struct.anon.159 = type { i32, i32 }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type { i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nv50_atom = type { %struct.drm_atomic_state, %struct.list_head, i8, i8 }

@nv50_head_func = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @nv50_head_reset, ptr null, ptr null, ptr null, ptr null, ptr @nv50_head_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @nv50_head_atomic_duplicate_state, ptr @nv50_head_atomic_destroy_state, ptr null, ptr null, ptr @nv50_head_late_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_vblank_enable, ptr @nouveau_display_vblank_disable, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@nvd9_head_func = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @nv50_head_reset, ptr null, ptr null, ptr null, ptr null, ptr @nv50_head_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @nv50_head_atomic_duplicate_state, ptr @nv50_head_atomic_destroy_state, ptr null, ptr null, ptr @nv50_head_late_register, ptr null, ptr @nv50_crc_set_source, ptr @nv50_crc_verify_source, ptr @nv50_crc_get_sources, ptr null, ptr null, ptr @nouveau_display_vblank_enable, ptr @nouveau_display_vblank_disable, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"head-%d\00", [24 x i8] zeroinitializer }, align 32
@nv50_head_help = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_head_atomic_check, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_scanoutpos }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kmsVbl\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head.c\00", [56 x i8] zeroinitializer }, align 32
@nv50_head_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s atomic_check %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nv50_head_atomic_check\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_head_atomic_check._entry_ptr = internal global ptr @nv50_head_atomic_check._entry, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@nv50_head_atomic_check_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Invalid size %d for degamma on [CRTC:%d:%s]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nv50_head_atomic_check_lut\00", [37 x i8] zeroinitializer }, align 32
@nv50_head_atomic_check_lut._entry_ptr = internal global ptr @nv50_head_atomic_check_lut._entry, section ".printk_index", align 4
@nv50_head_atomic_check_lut._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Invalid size %d for gamma on [CRTC:%d:%s]\0A\00", [49 x i8] zeroinitializer }, align 32
@nv50_head_atomic_check_lut._entry_ptr.11 = internal global ptr @nv50_head_atomic_check_lut._entry.9, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 34]
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"nv50_head_func\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 527, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"nvd9_head_func\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 541, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 611, i32 14 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"nv50_head_help\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 455, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 627, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 500, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 351, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 241, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/head.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 273, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @nv50_head_atomic_check._entry, ptr @nv50_head_atomic_check._entry_ptr, ptr @nv50_head_atomic_check_lut._entry, ptr @nv50_head_atomic_check_lut._entry.9, ptr @nv50_head_atomic_check_lut._entry_ptr, ptr @nv50_head_atomic_check_lut._entry_ptr.11, ptr @nv50_head_func, ptr @nvd9_head_func, ptr @.str, ptr @nv50_head_help, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_head_func to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvd9_head_func to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_head_help to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_head_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_head_atomic_check_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_head_atomic_check_lut._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_head_flush_clr(ptr noundef %head, ptr nocapture noundef readonly %asyh, i1 noundef zeroext %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clr1 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 15
  %0 = ptrtoint ptr %clr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %clr1, align 2
  br i1 %flush, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %2 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %set, align 8
  %phi.bo = xor i16 %3, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %phi.bo, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  %and = and i16 %cond, %1
  %4 = and i16 %and, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %bf.cast.not = icmp eq i16 %4, 0
  br i1 %bf.cast.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nv50_crc_atomic_clr(ptr noundef %head) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and)
  %bf.cast7.not = icmp sgt i16 %and, -1
  br i1 %bf.cast7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head, align 8
  %olut_clr = getelementptr inbounds %struct.nv50_head_func, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %olut_clr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %olut_clr, align 4
  %call = tail call i32 %8(ptr noundef %head) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %9 = and i16 %and, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast13.not = icmp eq i16 %9, 0
  br i1 %bf.cast13.not, label %if.end9.if.end17_crit_edge, label %if.then14

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head, align 8
  %core_clr = getelementptr inbounds %struct.nv50_head_func, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %core_clr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_clr, align 4
  %call16 = tail call i32 %13(ptr noundef %head) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end9.if.end17_crit_edge
  %14 = and i16 %and, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %bf.cast21.not = icmp eq i16 %14, 0
  br i1 %bf.cast21.not, label %if.end17.if.end25_crit_edge, label %if.then22

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head, align 8
  %curs_clr = getelementptr inbounds %struct.nv50_head_func, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %curs_clr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %curs_clr, align 4
  %call24 = tail call i32 %18(ptr noundef %head) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end17.if.end25_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_clr(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_head_flush_set_wndw(ptr noundef %head, ptr noundef %asyh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %set, align 8
  %1 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not = icmp eq i16 %1, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 8
  %curs_set = getelementptr inbounds %struct.nv50_head_func, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %curs_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curs_set, align 4
  %call = tail call i32 %5(ptr noundef %head, ptr noundef %asyh) #7
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load2.pr = load i16, ptr %set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bf.load2 = phi i16 [ %bf.load2.pr, %if.then ], [ %bf.load, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load2)
  %bf.cast4.not = icmp sgt i16 %bf.load2, -1
  br i1 %bf.cast4.not, label %if.end.if.end19_crit_edge, label %if.then5

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %olut = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 3
  %buffer = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %7, i32 6)
  %bf.load7 = load i48, ptr %buffer, align 8
  %8 = trunc i48 %bf.load7 to i32
  %9 = lshr i32 %8, 7
  %conv = and i32 %9, 1
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 12
  %10 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gamma_lut, align 8
  %load = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %load, align 8
  %call12 = tail call i32 @nv50_lut_load(ptr noundef %olut, i32 noundef %conv, ptr noundef %11, ptr noundef %13) #7
  %14 = zext i32 %call12 to i48
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %15, i32 6)
  %bf.load15 = load i48, ptr %buffer, align 8
  %bf.shl = shl nuw nsw i48 %14, 8
  %bf.clear16 = and i48 %bf.load15, 255
  %bf.set = or i48 %bf.clear16, %bf.shl
  store i48 %bf.set, ptr %buffer, align 8
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head, align 8
  %olut_set = getelementptr inbounds %struct.nv50_head_func, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %olut_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %olut_set, align 4
  %call18 = tail call i32 %19(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_load(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_head_flush_set(ptr noundef %head, ptr noundef %asyh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %set, align 8
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not = icmp eq i16 %1, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load2 = load i16, ptr %set, align 8
  %7 = and i16 %bf.load2, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %bf.cast5.not = icmp eq i16 %7, 0
  br i1 %bf.cast5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head, align 8
  %mode = getelementptr inbounds %struct.nv50_head_func, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode, align 4
  %call8 = tail call i32 %11(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %12 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load11 = load i16, ptr %set, align 8
  %13 = and i16 %bf.load11, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast14.not = icmp eq i16 %13, 0
  br i1 %bf.cast14.not, label %if.end9.if.end18_crit_edge, label %if.then15

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head, align 8
  %core_set = getelementptr inbounds %struct.nv50_head_func, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %core_set to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core_set, align 4
  %call17 = tail call i32 %17(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end9.if.end18_crit_edge
  %18 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load20 = load i16, ptr %set, align 8
  %19 = and i16 %bf.load20, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %bf.cast23.not = icmp eq i16 %19, 0
  br i1 %bf.cast23.not, label %if.end18.if.end27_crit_edge, label %if.then24

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head, align 8
  %base = getelementptr inbounds %struct.nv50_head_func, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %call26 = tail call i32 %23(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end18.if.end27_crit_edge
  %24 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load29 = load i16, ptr %set, align 8
  %25 = and i16 %bf.load29, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %bf.cast32.not = icmp eq i16 %25, 0
  br i1 %bf.cast32.not, label %if.end27.if.end36_crit_edge, label %if.then33

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head, align 8
  %ovly = getelementptr inbounds %struct.nv50_head_func, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %ovly to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ovly, align 4
  %call35 = tail call i32 %29(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end27.if.end36_crit_edge
  %30 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load38 = load i16, ptr %set, align 8
  %31 = and i16 %bf.load38, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %bf.cast41.not = icmp eq i16 %31, 0
  br i1 %bf.cast41.not, label %if.end36.if.end45_crit_edge, label %if.then42

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head, align 8
  %dither = getelementptr inbounds %struct.nv50_head_func, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dither, align 4
  %call44 = tail call i32 %35(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end36.if.end45_crit_edge
  %36 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load47 = load i16, ptr %set, align 8
  %37 = and i16 %bf.load47, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %bf.cast50.not = icmp eq i16 %37, 0
  br i1 %bf.cast50.not, label %if.end45.if.end54_crit_edge, label %if.then51

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head, align 8
  %procamp = getelementptr inbounds %struct.nv50_head_func, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %procamp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %procamp, align 4
  %call53 = tail call i32 %41(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end45.if.end54_crit_edge
  %42 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load56 = load i16, ptr %set, align 8
  %43 = and i16 %bf.load56, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %bf.cast59.not = icmp eq i16 %43, 0
  br i1 %bf.cast59.not, label %if.end54.if.end61_crit_edge, label %if.then60

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nv50_crc_atomic_set(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end54.if.end61_crit_edge
  %44 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load63 = load i16, ptr %set, align 8
  %45 = and i16 %bf.load63, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %bf.cast66.not = icmp eq i16 %45, 0
  br i1 %bf.cast66.not, label %if.end61.if.end70_crit_edge, label %if.then67

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head, align 8
  %or = getelementptr inbounds %struct.nv50_head_func, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %or to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %or, align 4
  %call69 = tail call i32 %49(ptr noundef %head, ptr noundef %asyh) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end61.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv50_head_create(ptr noundef %dev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %base = alloca ptr, align 4
  %ovly = alloca ptr, align 4
  %curs = alloca ptr, align 4
  %.compoundliteral = alloca %struct.nvif_notify_head_req_v0, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #7
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %base, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ovly) #7
  %7 = ptrtoint ptr %ovly to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %ovly, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curs) #7
  %8 = ptrtoint ptr %curs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %curs, align 4, !annotation !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1632) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %head4 = getelementptr inbounds %struct.nv50_core_func, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %head4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head4, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call7.i.i, align 8
  %base6 = getelementptr inbounds %struct.nv50_head, ptr %call7.i.i, i32 0, i32 1
  %index7 = getelementptr inbounds %struct.nv50_head, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %index7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %index, ptr %index7, align 8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  %oclass = getelementptr inbounds %struct.nvif_object, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36976, i32 %21)
  %cmp = icmp slt i32 %21, 36976
  %nv50_head_func.nvd9_head_func = select i1 %cmp, ptr @nv50_head_func, ptr @nvd9_head_func
  call void @__sanitizer_cov_trace_const_cmp4(i32 50032, i32 %21)
  %cmp14 = icmp slt i32 %21, 50032
  br i1 %cmp14, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 @nv50_base_new(ptr noundef %1, i32 noundef %index, ptr noundef nonnull %base) #7
  %22 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index7, align 8
  %call21 = call i32 @nv50_ovly_new(ptr noundef %1, i32 noundef %23, ptr noundef nonnull %ovly) #7
  br label %if.end31

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %index, 1
  %call25 = call i32 @nv50_wndw_new(ptr noundef %1, i32 noundef 1, i32 noundef %mul, ptr noundef nonnull %base) #7
  %24 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index7, align 8
  %mul28 = shl i32 %25, 1
  %add29 = or i32 %mul28, 1
  %call30 = call i32 @nv50_wndw_new(ptr noundef %1, i32 noundef 0, i32 noundef %add29, ptr noundef nonnull %ovly) #7
  br label %if.end31

if.end31:                                         ; preds = %if.else22, %if.then15
  %ret.0 = phi i32 [ %call21, %if.then15 ], [ %call30, %if.else22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp32 = icmp eq i32 %ret.0, 0
  br i1 %cmp32, label %if.end37, label %if.end31.if.then39_crit_edge

if.end31.if.then39_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.end37:                                         ; preds = %if.end31
  %26 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index7, align 8
  %call36 = call i32 @nv50_curs_new(ptr noundef %1, i32 noundef %27, ptr noundef nonnull %curs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool38.not = icmp eq i32 %call36, 0
  br i1 %tobool38.not, label %if.end41, label %if.end37.if.then39_crit_edge

if.end37.if.then39_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then39:                                        ; preds = %if.end37.if.then39_crit_edge, %if.end31.if.then39_crit_edge
  %ret.1122 = phi i32 [ %call36, %if.end37.if.then39_crit_edge ], [ %ret.0, %if.end31.if.then39_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %28 = inttoptr i32 %ret.1122 to ptr
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %plane = getelementptr inbounds %struct.nv50_wndw, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %curs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %curs, align 4
  %plane44 = getelementptr inbounds %struct.nv50_wndw, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index7, align 8
  %call47 = call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef %base6, ptr noundef %plane, ptr noundef %plane44, ptr noundef nonnull %nv50_head_func.nvd9_head_func, ptr noundef nonnull @.str, i32 noundef %34) #7
  %helper_private.i = getelementptr inbounds %struct.nv50_head, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 19
  %35 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @nv50_head_help, ptr %helper_private.i, align 8
  %call48 = call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %base6, i32 noundef 256) #7
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %ilut_size = getelementptr inbounds %struct.nv50_wndw_func, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %ilut_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ilut_size, align 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 8
  %oclass52 = getelementptr inbounds %struct.nvif_object, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %oclass52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oclass52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36975, i32 %45)
  %cmp53 = icmp sgt i32 %45, 36975
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  %olut_size = getelementptr inbounds %struct.nv50_head_func, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %olut_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %olut_size, align 4
  call void @drm_crtc_enable_color_mgmt(ptr noundef %base6, i32 noundef %41, i1 noundef zeroext %cmp53, i32 noundef %49) #7
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  %olut_set = getelementptr inbounds %struct.nv50_head_func, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %olut_set to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %olut_set, align 4
  %tobool56.not = icmp eq ptr %53, null
  br i1 %tobool56.not, label %if.end41.if.end63_crit_edge, label %if.then57

if.end41.if.end63_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then57:                                        ; preds = %if.end41
  %mmu = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 4
  %olut = getelementptr %struct.nv50_head, ptr %call7.i.i, i32 0, i32 3
  %call58 = call i32 @nv50_lut_init(ptr noundef %5, ptr noundef %mmu, ptr noundef %olut) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.if.end63_crit_edge, label %if.then60

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %vblank.i = getelementptr inbounds %struct.nv50_head, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call.i = call i32 @nvif_notify_dtor(ptr noundef %vblank.i) #7
  call void @nv50_lut_fini(ptr noundef %olut) #7
  call void @drm_crtc_cleanup(ptr noundef %base6) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %54 = inttoptr i32 %call58 to ptr
  br label %cleanup

if.end63:                                         ; preds = %if.then57.if.end63_crit_edge, %if.end41.if.end63_crit_edge
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 8
  %57 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %.compoundliteral, align 1
  %head66 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %.compoundliteral, i32 0, i32 1
  %58 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index7, align 8
  %conv = trunc i32 %59 to i8
  %60 = ptrtoint ptr %head66 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv, ptr %head66, align 1
  %pad02 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %.compoundliteral, i32 0, i32 2
  %61 = call ptr @memset(ptr %pad02, i32 0, i32 6)
  %vblank = getelementptr inbounds %struct.nv50_head, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call68 = call i32 @nvif_notify_ctor(ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef nonnull @nv50_head_vblank_handler, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral, i32 noundef 8, i32 noundef 8, ptr noundef %vblank) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %62 = inttoptr i32 %call68 to ptr
  %spec.select = select i1 %tobool69.not, ptr %call7.i.i, ptr %62
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then60, %if.then39, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %28, %if.then39 ], [ %54, %if.then60 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ovly) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_base_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_ovly_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_curs_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_head_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %vblank = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 2
  %call = tail call i32 @nvif_notify_dtor(ptr noundef %vblank) #7
  %olut = getelementptr i8, ptr %crtc, i32 1488
  tail call void @nv50_lut_fini(ptr noundef %olut) #7
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_head_vblank_handler(ptr noundef %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notify, i32 -996
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %add.ptr) #7
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4 = getelementptr i8, ptr %notify, i32 -1004
  tail call void @nv50_crc_handle_vblank(ptr noundef %add.ptr4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_head_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 448) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 500, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %2) #7
  tail call void @kfree(ptr noundef nonnull %2) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_head_atomic_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 448) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i) #7
  %wndw = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 1
  %wndw2 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %wndw, ptr %wndw2, i32 12)
  %view = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 2
  %view3 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %view3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %view3, align 8
  %6 = ptrtoint ptr %view to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %view, align 8
  %mode = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 3
  %mode4 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %mode, ptr %mode4, i32 32)
  %olut = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 4
  %olut5 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %olut, ptr %olut5, i32 24)
  %core = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 5
  %core6 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5
  %9 = call ptr @memcpy(ptr %core, ptr %core6, i32 32)
  %curs = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 6
  %curs7 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6
  %10 = call ptr @memcpy(ptr %curs, ptr %curs7, i32 16)
  %base = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 7
  %base8 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %base, ptr %base8, i32 10)
  %ovly = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 8
  %ovly9 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %ovly9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ovly9, align 2
  %14 = ptrtoint ptr %ovly to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ovly, align 2
  %dither = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 9
  %dither10 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %dither10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dither10, align 1
  %17 = ptrtoint ptr %dither to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %dither, align 1
  %procamp = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 10
  %procamp11 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %procamp11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %procamp11, align 4
  %20 = ptrtoint ptr %procamp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %procamp, align 4
  %crc = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 12
  %crc12 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %crc12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crc12, align 4
  %23 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %crc, align 4
  %or = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 11
  %or13 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %or13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %or13, align 8
  %26 = ptrtoint ptr %or to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %or, align 8
  %dp = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 13
  %dp14 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %dp14 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dp14, align 8
  %29 = ptrtoint ptr %dp to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %dp, align 8
  %clr = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 15
  %30 = ptrtoint ptr %clr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %clr, align 2
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %call7.i, i32 0, i32 14
  %31 = ptrtoint ptr %set to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %set, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_head_atomic_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #7
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_head_late_register(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %call = tail call i32 @nv50_head_crc_late_register(ptr noundef %add.ptr) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_vblank_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_vblank_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_crc_late_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_crc_set_source(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_crc_verify_source(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_crc_get_sources(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_head_atomic_check(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %omode_hdisplay.i = alloca i32, align 4
  %omode_vdisplay.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i, align 4
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %13 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast.not = icmp eq i8 %13, 0
  br i1 %bf.cast.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wndw = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 1
  %wndw10 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %wndw, ptr noundef dereferenceable(12) %wndw10, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool = icmp ne i32 %bcmp, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %14 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool, %lor.rhs ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %15 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.end.do.end24_crit_edge, label %do.body13

lor.end.do.end24_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.body13:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %drm15 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %drm15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drm15, align 8
  %dev16 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev16, align 8
  %dev17 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev17, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 12
  %name18 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %22 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name18, align 8
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %active, align 1, !range !39
  %26 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %23, i32 noundef %26) #12
  br label %do.end24

do.end24:                                         ; preds = %do.body13, %lor.end.do.end24_crit_edge
  br i1 %14, label %if.then26, label %do.end24.if.end31_crit_edge

do.end24.if.end31_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %do.end24
  %27 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %display.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 12
  %35 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gamma_lut.i, align 8
  %degamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 10
  %37 = ptrtoint ptr %degamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %degamma_lut.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.then26.if.end24.i_crit_edge, label %if.then.i

if.then26.if.end24.i_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then.i:                                        ; preds = %if.then26
  %length.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i.i, align 4
  %div1.i.i = lshr i32 %40, 3
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %ilut_check.i = getelementptr inbounds %struct.nv50_head_func, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %ilut_check.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ilut_check.i, align 4
  %call8.i = tail call zeroext i1 %44(i32 noundef %div1.i.i) #7
  br i1 %call8.i, label %if.then.i.if.end24.i_crit_edge, label %do.body.i

if.then.i.if.end24.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.body.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %45 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body.i.cleanup_crit_edge, label %do.body12.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %drm14.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %drm14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %drm14.i, align 8
  %dev15.i = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev15.i, align 8
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev16.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 12
  %base17.i = getelementptr i8, ptr %crtc, i32 128
  %52 = ptrtoint ptr %base17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base17.i, align 8
  %name18.i = getelementptr i8, ptr %crtc, i32 16
  %54 = ptrtoint ptr %name18.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name18.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %div1.i.i, i32 noundef %53, ptr noundef %55) #12
  br label %cleanup

if.end24.i:                                       ; preds = %if.then.i.if.end24.i_crit_edge, %if.then26.if.end24.i_crit_edge
  %tobool25.not.i = icmp eq ptr %36, null
  br i1 %tobool25.not.i, label %if.end24.i.if.then38.i_crit_edge, label %if.then26.i

if.end24.i.if.then38.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.then26.i:                                      ; preds = %if.end24.i
  %olut27.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %olut27.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %olut27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool28.not.i = icmp eq i32 %57, 0
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then26.i
  %wndw.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 1
  %58 = ptrtoint ptr %wndw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wndw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.not.i = icmp eq i32 %57, %59
  br i1 %cmp.not.i, label %if.then29.i.if.then38.i_crit_edge, label %if.then29.i.cleanup_crit_edge

if.then29.i.cleanup_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29.i.if.then38.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then29.i.if.then38.i_crit_edge, %if.end24.i.if.then38.i_crit_edge
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 8
  %olut_identity.i = getelementptr inbounds %struct.nv50_head_func, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %olut_identity.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %olut_identity.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool40.not.i = icmp eq i8 %63, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.then38.i.if.end45.i_crit_edge

if.then38.i.if.end45.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  %handle.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %handle.i, align 4
  br label %if.end31

if.else.i:                                        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %length.i117.i = getelementptr inbounds %struct.drm_property_blob, ptr %36, i32 0, i32 4
  %65 = ptrtoint ptr %length.i117.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i117.i, align 4
  %div1.i118.i = lshr i32 %66, 3
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.then38.i.if.end45.i_crit_edge
  %size.0.i = phi i32 [ %div1.i118.i, %if.else.i ], [ 0, %if.then38.i.if.end45.i_crit_edge ]
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 8
  %olut47.i = getelementptr inbounds %struct.nv50_head_func, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %olut47.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %olut47.i, align 4
  %call48.i = tail call zeroext i1 %70(ptr noundef %add.ptr, ptr noundef %7, i32 noundef %size.0.i) #7
  br i1 %call48.i, label %if.end72.i, label %do.body50.i

do.body50.i:                                      ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %71 = load i32, ptr @__drm_debug, align 4
  %and.i119.i = and i32 %71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119.i)
  %tobool.i120.not.i = icmp eq i32 %and.i119.i, 0
  br i1 %tobool.i120.not.i, label %do.body50.i.cleanup_crit_edge, label %do.body53.i

do.body50.i.cleanup_crit_edge:                    ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body53.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  %drm59.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %drm59.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %drm59.i, align 8
  %dev60.i = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %dev60.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev60.i, align 8
  %dev61.i = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev61.i, align 4
  %name62.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 12
  %base64.i = getelementptr i8, ptr %crtc, i32 128
  %78 = ptrtoint ptr %base64.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base64.i, align 8
  %name66.i = getelementptr i8, ptr %crtc, i32 16
  %80 = ptrtoint ptr %name66.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name66.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.10, ptr noundef %name62.i, i32 noundef %size.0.i, i32 noundef %79, ptr noundef %81) #12
  br label %cleanup

if.end72.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %core.i = getelementptr inbounds %struct.nv50_disp, ptr %34, i32 0, i32 1
  %82 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %core.i, align 4
  %handle73.i = getelementptr inbounds %struct.nv50_core, ptr %83, i32 0, i32 1, i32 5, i32 3
  %84 = ptrtoint ptr %handle73.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %handle73.i, align 4
  %handle75.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %handle75.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %handle75.i, align 4
  %buffer.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4, i32 2
  %87 = ptrtoint ptr %buffer.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 6)
  %bf.load.i = load i48, ptr %buffer.i, align 8
  %bf.set.i = xor i48 %bf.load.i, 128
  store i48 %bf.set.i, ptr %buffer.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end72.i, %if.then41.i, %do.end24.if.end31_crit_edge
  %active33 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 2
  %88 = ptrtoint ptr %active33 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %active33, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool34.not = icmp eq i8 %89, 0
  br i1 %tobool34.not, label %if.else188, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end31
  %state37 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 20
  %90 = ptrtoint ptr %state37 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %state37, align 8
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp532 = icmp sgt i32 %93, 0
  br i1 %cmp532, label %for.body.lr.ph, label %for.cond.preheader.for.end.thread_crit_edge

for.cond.preheader.for.end.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %91, i32 0, i32 6
  %94 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0533 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %95, i32 %i.0533
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %97, null
  br i1 %tobool41.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_connnectors_state, ptr %95, i32 %i.0533, i32 3
  %98 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %new_state, align 4
  %crtc52 = getelementptr inbounds %struct.drm_connector_state, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %crtc52 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %crtc52, align 4
  %cmp53 = icmp eq ptr %101, %crtc
  br i1 %cmp53, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0533, 1
  %exitcond.not = icmp eq i32 %inc, %93
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %active62 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %102 = ptrtoint ptr %active62 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %active62, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool63.not = icmp eq i8 %103, 0
  %tobool90.not = icmp eq ptr %99, null
  br i1 %tobool63.not, label %if.else89, label %if.then64

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %for.cond.preheader.for.end.thread_crit_edge
  %active62518 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %104 = ptrtoint ptr %active62518 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %active62518, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool63.not519 = icmp eq i8 %105, 0
  br i1 %tobool63.not519, label %for.end.thread.if.end93_crit_edge, label %for.end.thread.if.end102_crit_edge

for.end.thread.if.end102_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

for.end.thread.if.end93_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then64:                                        ; preds = %for.end
  br i1 %tobool90.not, label %if.then64.if.end102_crit_edge, label %if.then66

if.then64.if.end102_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then66:                                        ; preds = %if.then64
  %106 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load68 = load i8, ptr %color_mgmt_changed, align 2
  %107 = and i8 %bf.load68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %bf.cast71.not = icmp eq i8 %107, 0
  br i1 %bf.cast71.not, label %if.then66.if.end75_crit_edge, label %if.then72

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %set = getelementptr inbounds %struct.nouveau_conn_atom, ptr %99, i32 0, i32 4
  %108 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load73 = load i8, ptr %set, align 4
  %bf.set = or i8 %bf.load73, 64
  store i8 %bf.set, ptr %set, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.then66.if.end75_crit_edge
  %base = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 7
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %base, align 8
  %base77 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 7
  %111 = ptrtoint ptr %base77 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %base77, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %112)
  %cmp80.not = icmp eq i8 %110, %112
  br i1 %cmp80.not, label %if.end75.if.end102_crit_edge, label %if.then82

if.end75.if.end102_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then82:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %set83 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %99, i32 0, i32 4
  %113 = ptrtoint ptr %set83 to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load84 = load i8, ptr %set83, align 4
  %bf.set86 = or i8 %bf.load84, -128
  store i8 %bf.set86, ptr %set83, align 4
  br label %if.end102

if.else89:                                        ; preds = %for.end
  br i1 %tobool90.not, label %if.else89.if.end93_crit_edge, label %if.then91

if.else89.if.end93_crit_edge:                     ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then91:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  %set92 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %99, i32 0, i32 4
  %114 = ptrtoint ptr %set92 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %set92, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.else89.if.end93_crit_edge, %for.end.thread.if.end93_crit_edge
  %asyc.0522531 = phi ptr [ %99, %if.then91 ], [ null, %if.else89.if.end93_crit_edge ], [ null, %for.end.thread.if.end93_crit_edge ]
  %set94 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %115 = ptrtoint ptr %set94 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -1, ptr %set94, align 8
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr, align 8
  %or = getelementptr inbounds %struct.nv50_head_func, ptr %117, i32 0, i32 19
  %118 = ptrtoint ptr %or to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %or, align 4
  %cmp95.not = icmp eq ptr %119, null
  %bf.set100 = select i1 %cmp95.not, i16 -33, i16 -1
  store i16 %bf.set100, ptr %set94, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.end93, %if.then82, %if.end75.if.end102_crit_edge, %if.then64.if.end102_crit_edge, %for.end.thread.if.end102_crit_edge
  %asyc.0521 = phi ptr [ null, %if.then64.if.end102_crit_edge ], [ %99, %if.then82 ], [ %99, %if.end75.if.end102_crit_edge ], [ %asyc.0522531, %if.end93 ], [ null, %for.end.thread.if.end102_crit_edge ]
  %120 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load105 = load i8, ptr %color_mgmt_changed, align 2
  %121 = and i8 %bf.load105, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %if.end102.if.end117_crit_edge, label %if.then116

if.end102.if.end117_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then116:                                       ; preds = %if.end102
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode.i, i32 noundef 3) #7
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 18
  %123 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %crtc_htotal.i, align 2
  %h.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 2
  %125 = ptrtoint ptr %h.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %h.i, align 4
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 17
  %126 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %crtc_hsync_end.i, align 4
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 16
  %128 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %crtc_hsync_start.i, align 2
  %130 = xor i16 %129, -1
  %sub3.i = add i16 %127, %130
  %synce.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 2, i32 1
  %131 = ptrtoint ptr %synce.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %sub3.i, ptr %synce.i, align 2
  %crtc_hblank_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 15
  %132 = ptrtoint ptr %crtc_hblank_end.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %crtc_hblank_end.i, align 4
  %sub10.i = add i16 %133, %130
  %blanke.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 2, i32 2
  %134 = ptrtoint ptr %blanke.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %sub10.i, ptr %blanke.i, align 4
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 13
  %135 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %crtc_hdisplay.i, align 4
  %add.i = add i16 %136, %sub10.i
  %blanks.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 2, i32 3
  %137 = ptrtoint ptr %blanks.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %add.i, ptr %blanks.i, align 2
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 25
  %138 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %crtc_vtotal.i, align 4
  %conv19.i = zext i16 %139 to i32
  %v.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 3
  %140 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv19.i, ptr %v.i, align 4
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 24
  %141 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %crtc_vsync_end.i, align 2
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 23
  %143 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %crtc_vsync_start.i, align 4
  %145 = xor i16 %144, -1
  %sub24.i = add i16 %142, %145
  %synce27.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 3, i32 1
  %146 = ptrtoint ptr %synce27.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %sub24.i, ptr %synce27.i, align 4
  %crtc_vblank_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 22
  %147 = ptrtoint ptr %crtc_vblank_end.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %crtc_vblank_end.i, align 2
  %sub32.i = add i16 %148, %145
  %blanke35.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 3, i32 2
  %149 = ptrtoint ptr %blanke35.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %sub32.i, ptr %blanke35.i, align 2
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 20
  %150 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %crtc_vdisplay.i, align 2
  %add40.i = add i16 %151, %sub32.i
  %blanks43.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 3, i32 3
  %152 = ptrtoint ptr %blanks43.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %add40.i, ptr %blanks43.i, align 4
  %conv47.i = zext i16 %151 to i32
  %sub48.i = add nsw i32 %conv19.i, -2
  %sub49.i = sub nsw i32 %sub48.i, %conv47.i
  %conv52.i = zext i16 %124 to i32
  %mul.i = mul nuw nsw i32 %conv52.i, 1000
  %mul53.i = mul i32 %mul.i, %sub49.i
  %crtc_clock.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 12
  %153 = ptrtoint ptr %crtc_clock.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %crtc_clock.i, align 4
  %div.i = udiv i32 %mul53.i, %154
  %conv54.i = trunc i32 %div.i to i16
  %blankus56.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 3, i32 6
  %155 = ptrtoint ptr %blankus56.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv54.i, ptr %blankus56.i, align 2
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 11
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i, align 4
  %and.i481 = and i32 %157, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i481)
  %tobool.not.i482 = icmp eq i32 %and.i481, 0
  br i1 %tobool.not.i482, label %if.then116.nv50_head_atomic_check_mode.exit_crit_edge, label %if.then.i483

if.then116.nv50_head_atomic_check_mode.exit_crit_edge: ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_head_atomic_check_mode.exit

if.then.i483:                                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %conv63.i = add i16 %sub32.i, %139
  %add70.i = add i16 %conv63.i, %151
  %mul75.i = shl nuw nsw i32 %conv19.i, 1
  %add76.i = or i32 %mul75.i, 1
  %158 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add76.i, ptr %v.i, align 4
  br label %nv50_head_atomic_check_mode.exit

nv50_head_atomic_check_mode.exit:                 ; preds = %if.then.i483, %if.then116.nv50_head_atomic_check_mode.exit_crit_edge
  %conv63.sink.i = phi i16 [ %conv63.i, %if.then.i483 ], [ 0, %if.then116.nv50_head_atomic_check_mode.exit_crit_edge ]
  %add70.sink.i = phi i16 [ %add70.i, %if.then.i483 ], [ 1, %if.then116.nv50_head_atomic_check_mode.exit_crit_edge ]
  %storemerge.i = phi i8 [ 1, %if.then.i483 ], [ 0, %if.then116.nv50_head_atomic_check_mode.exit_crit_edge ]
  %159 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 3, i32 5
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv63.sink.i, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 3, i32 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %add70.sink.i, ptr %161, align 2
  %mode1.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3
  %163 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %storemerge.i, ptr %mode1.i, align 4
  %clock.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 3, i32 1
  %164 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %154, ptr %clock.i, align 4
  %165 = trunc i32 %157 to i8
  %or.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 11
  %166 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load.i484 = load i8, ptr %or.i, align 8
  %167 = shl i8 %165, 6
  %bf.clear.i = and i8 %bf.load.i484, 63
  %168 = shl i8 %165, 3
  %bf.shl101.i = and i8 %168, 64
  %.masked.i = and i8 %167, -128
  %bf.clear102.i = or i8 %bf.shl101.i, %.masked.i
  %bf.set103.i = or i8 %bf.clear102.i, %bf.clear.i
  store i8 %bf.set103.i, ptr %or.i, align 8
  %169 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr, align 8
  %or104.i = getelementptr inbounds %struct.nv50_head_func, ptr %170, i32 0, i32 19
  %171 = ptrtoint ptr %or104.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %or104.i, align 4
  %cmp.not.i485 = icmp eq ptr %172, null
  %set.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %173 = ptrtoint ptr %set.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %bf.load106.i = load i16, ptr %set.i, align 8
  %bf.clear108.i = and i16 %bf.load106.i, -2081
  %bf.set109.i = select i1 %cmp.not.i485, i16 2048, i16 2080
  %bf.set114.i = or i16 %bf.set109.i, %bf.clear108.i
  store i16 %bf.set114.i, ptr %set.i, align 8
  br label %if.end117

if.end117:                                        ; preds = %nv50_head_atomic_check_mode.exit, %if.end102.if.end117_crit_edge
  br i1 %14, label %if.then119, label %if.end117.if.end124_crit_edge

if.end117.if.end124_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %olut = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4
  %handle = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4, i32 1
  %174 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp120 = icmp ne i32 %175, 0
  %frombool123 = zext i1 %cmp120 to i8
  %176 = ptrtoint ptr %olut to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %frombool123, ptr %olut, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %if.end117.if.end124_crit_edge
  %tobool125.not = icmp eq ptr %asyc.0521, null
  br i1 %tobool125.not, label %if.end124.if.end147_crit_edge, label %if.then126

if.end124.if.end147_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then126:                                       ; preds = %if.end124
  %set127 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 4
  %177 = ptrtoint ptr %set127 to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load128 = load i8, ptr %set127, align 4
  %178 = and i8 %bf.load128, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %bf.cast131.not = icmp eq i8 %178, 0
  br i1 %bf.cast131.not, label %if.then126.if.end133_crit_edge, label %if.then132

if.then126.if.end133_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then132:                                       ; preds = %if.then126
  %179 = ptrtoint ptr %asyc.0521 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %asyc.0521, align 4
  %adjusted_mode.i486 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7
  %mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 8
  %scaler.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 2
  %181 = ptrtoint ptr %scaler.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %scaler.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %omode_hdisplay.i) #7
  %183 = ptrtoint ptr %omode_hdisplay.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -1, ptr %omode_hdisplay.i, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %omode_vdisplay.i) #7
  %184 = ptrtoint ptr %omode_vdisplay.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %omode_vdisplay.i, align 4, !annotation !37
  %edid_blob_ptr.i = getelementptr inbounds %struct.drm_connector, ptr %180, i32 0, i32 22
  %185 = ptrtoint ptr %edid_blob_ptr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %edid_blob_ptr.i, align 4
  %tobool.not.i487 = icmp eq ptr %186, null
  br i1 %tobool.not.i487, label %if.then132.if.end.i_crit_edge, label %if.then.i488

if.then132.if.end.i_crit_edge:                    ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i488:                                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i488, %if.then132.if.end.i_crit_edge
  %edid.0.i = phi ptr [ %188, %if.then.i488 ], [ null, %if.then132.if.end.i_crit_edge ]
  %full.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 2, i32 2
  %189 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %full.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool8.not.i = icmp eq i8 %190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp.i = icmp eq i32 %182, 0
  %mode4.0.i = select i1 %tobool8.not.i, i32 %182, i32 1
  %191 = select i1 %tobool8.not.i, i1 %cmp.i, i1 false
  %omode.0.i = select i1 %191, ptr %mode.i, ptr %adjusted_mode.i486
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 8, i32 6
  %192 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %vdisplay.i, align 2
  %flags.i489 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 8, i32 11
  %194 = ptrtoint ptr %flags.i489 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %flags.i489, align 4
  %and.i490 = and i32 %195, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and.i490)
  %cmp14.i = icmp eq i32 %and.i490, 16384
  br i1 %cmp14.i, label %if.then16.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 8, i32 9
  %196 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %vtotal.i, align 4
  %add.i491 = add i16 %197, %193
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i.if.end18.i_crit_edge
  %umode_vdisplay.0.i = phi i16 [ %add.i491, %if.then16.i ], [ %193, %if.end.i.if.end18.i_crit_edge ]
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 8, i32 1
  %198 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %hdisplay.i, align 4
  %view.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 2
  %200 = ptrtoint ptr %view.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %view.i, align 8
  %iH.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 2, i32 1
  %201 = ptrtoint ptr %iH.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %umode_vdisplay.0.i, ptr %iH.i, align 2
  call void @drm_mode_get_hv_timing(ptr noundef %omode.0.i, ptr noundef nonnull %omode_hdisplay.i, ptr noundef nonnull %omode_vdisplay.i) #7
  %202 = ptrtoint ptr %omode_hdisplay.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %omode_hdisplay.i, align 4
  %conv21.i = trunc i32 %203 to i16
  %oW.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 2, i32 2
  %204 = ptrtoint ptr %oW.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv21.i, ptr %oW.i, align 4
  %205 = ptrtoint ptr %omode_vdisplay.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %omode_vdisplay.i, align 4
  %conv23.i = trunc i32 %206 to i16
  %oH.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 2, i32 3
  %207 = ptrtoint ptr %oH.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv23.i, ptr %oH.i, align 2
  %underscan.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 2, i32 1
  %208 = ptrtoint ptr %underscan.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %underscan.i, align 4
  %210 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values)
  switch i32 %209, label %if.end18.i.if.end103.i_crit_edge [
    i32 1, label %if.end18.i.if.then35.i_crit_edge
    i32 2, label %land.lhs.true.i
  ]

if.end18.i.if.then35.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.end18.i.if.end103.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %call.i = call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %edid.0.i) #7
  br i1 %call.i, label %land.lhs.true.i.if.then35.i_crit_edge, label %land.lhs.true.i.if.end103.i_crit_edge

land.lhs.true.i.if.end103.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.i

land.lhs.true.i.if.then35.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.then35.i:                                      ; preds = %land.lhs.true.i.if.then35.i_crit_edge, %if.end18.i.if.then35.i_crit_edge
  %hborder.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 2, i32 1, i32 1
  %211 = ptrtoint ptr %hborder.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %hborder.i, align 4
  %vborder.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 2, i32 1, i32 2
  %213 = ptrtoint ptr %vborder.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %vborder.i, align 4
  %215 = ptrtoint ptr %oH.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %oH.i, align 2
  %conv42.i = zext i16 %216 to i32
  %shl.i = shl i32 %conv42.i, 19
  %217 = ptrtoint ptr %oW.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %oW.i, align 4
  %conv45.i = zext i16 %218 to i32
  %div.i492 = sdiv i32 %shl.i, %conv45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool46.not.i = icmp eq i32 %212, 0
  br i1 %tobool46.not.i, label %if.else71.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then35.i
  %219 = trunc i32 %212 to i16
  %220 = mul i16 %219, -2
  %conv51.i = add i16 %218, %220
  %221 = ptrtoint ptr %oW.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %conv51.i, ptr %oW.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool52.not.i = icmp eq i32 %214, 0
  br i1 %tobool52.not.i, label %if.else60.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  %222 = trunc i32 %214 to i16
  %223 = mul i16 %222, -2
  %conv59.i = add i16 %223, %216
  br label %if.end103.sink.split.i

if.else60.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv63.i493 = zext i16 %conv51.i to i32
  %mul64.i = mul i32 %div.i492, %conv63.i493
  %div654.i = lshr i32 %div.i492, 1
  %add66.i = add i32 %mul64.i, %div654.i
  %shr.i = lshr i32 %add66.i, 19
  %conv67.i = trunc i32 %shr.i to i16
  br label %if.end103.sink.split.i

if.else71.i:                                      ; preds = %if.then35.i
  %224 = lshr i16 %218, 4
  %add76.neg.i = add i16 %218, -32
  %sub80.i = sub i16 %add76.neg.i, %224
  %225 = ptrtoint ptr %oW.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %sub80.i, ptr %oW.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool82.not.i = icmp eq i32 %214, 0
  br i1 %tobool82.not.i, label %if.else90.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #9
  %226 = trunc i32 %214 to i16
  %227 = mul i16 %226, -2
  %conv89.i = add i16 %227, %216
  br label %if.end103.sink.split.i

if.else90.i:                                      ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv93.i = zext i16 %sub80.i to i32
  %mul94.i = mul i32 %div.i492, %conv93.i
  %div953.i = lshr i32 %div.i492, 1
  %add96.i = add i32 %mul94.i, %div953.i
  %shr97.i = lshr i32 %add96.i, 19
  %conv98.i = trunc i32 %shr97.i to i16
  br label %if.end103.sink.split.i

if.end103.sink.split.i:                           ; preds = %if.else90.i, %if.then83.i, %if.else60.i, %if.then53.i
  %conv67.sink.i = phi i16 [ %conv67.i, %if.else60.i ], [ %conv59.i, %if.then53.i ], [ %conv98.i, %if.else90.i ], [ %conv89.i, %if.then83.i ]
  %228 = ptrtoint ptr %oH.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %conv67.sink.i, ptr %oH.i, align 2
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.end103.sink.split.i, %land.lhs.true.i.if.end103.i_crit_edge, %if.end18.i.if.end103.i_crit_edge
  %229 = zext i32 %mode4.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %mode4.0.i, label %if.end103.i.nv50_head_atomic_check_view.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb135.i
  ]

if.end103.i.nv50_head_atomic_check_view.exit_crit_edge: ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_head_atomic_check_view.exit

sw.bb.i:                                          ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %view.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %view.i, align 8
  %232 = ptrtoint ptr %oW.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %oW.i, align 4
  %234 = call i16 @llvm.umin.i16(i16 %231, i16 %233) #7
  %235 = ptrtoint ptr %oW.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %234, ptr %oW.i, align 4
  %236 = ptrtoint ptr %iH.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %iH.i, align 2
  %238 = ptrtoint ptr %oH.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %oH.i, align 2
  %240 = call i16 @llvm.umin.i16(i16 %237, i16 %239) #7
  %241 = ptrtoint ptr %oH.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %oH.i, align 2
  br label %nv50_head_atomic_check_view.exit

sw.bb135.i:                                       ; preds = %if.end103.i
  %242 = ptrtoint ptr %oW.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %oW.i, align 4
  %conv138.i = zext i16 %243 to i32
  %244 = ptrtoint ptr %iH.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %iH.i, align 2
  %conv141.i = zext i16 %245 to i32
  %mul142.i = mul nuw i32 %conv141.i, %conv138.i
  %246 = ptrtoint ptr %view.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %view.i, align 8
  %conv145.i = zext i16 %247 to i32
  %248 = ptrtoint ptr %oH.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %oH.i, align 2
  %conv148.i = zext i16 %249 to i32
  %mul149.i = mul nuw i32 %conv148.i, %conv145.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul142.i, i32 %mul149.i)
  %cmp150.i = icmp sgt i32 %mul142.i, %mul149.i
  br i1 %cmp150.i, label %if.then152.i, label %if.else172.i

if.then152.i:                                     ; preds = %sw.bb135.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl157.i = shl i32 %conv145.i, 19
  %div161.i = sdiv i32 %shl157.i, %conv141.i
  %mul165.i = mul i32 %div161.i, %conv148.i
  %div1662.i = lshr i32 %div161.i, 1
  %add167.i = add i32 %mul165.i, %div1662.i
  %shr168.i = lshr i32 %add167.i, 19
  %conv169.i = trunc i32 %shr168.i to i16
  %250 = ptrtoint ptr %oW.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv169.i, ptr %oW.i, align 4
  br label %nv50_head_atomic_check_view.exit

if.else172.i:                                     ; preds = %sw.bb135.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl177.i = shl i32 %conv141.i, 19
  %div181.i = sdiv i32 %shl177.i, %conv145.i
  %mul185.i = mul i32 %div181.i, %conv138.i
  %div1861.i = lshr i32 %div181.i, 1
  %add187.i = add i32 %mul185.i, %div1861.i
  %shr188.i = lshr i32 %add187.i, 19
  %conv189.i = trunc i32 %shr188.i to i16
  %251 = ptrtoint ptr %oH.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv189.i, ptr %oH.i, align 2
  br label %nv50_head_atomic_check_view.exit

nv50_head_atomic_check_view.exit:                 ; preds = %if.else172.i, %if.then152.i, %sw.bb.i, %if.end103.i.nv50_head_atomic_check_view.exit_crit_edge
  %set.i494 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %252 = ptrtoint ptr %set.i494 to i32
  call void @__asan_load2_noabort(i32 %252)
  %bf.load.i495 = load i16, ptr %set.i494, align 8
  %bf.set.i496 = or i16 %bf.load.i495, 4096
  store i16 %bf.set.i496, ptr %set.i494, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %omode_vdisplay.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %omode_hdisplay.i) #7
  %253 = ptrtoint ptr %set127 to i32
  call void @__asan_load1_noabort(i32 %253)
  %bf.load135.pr = load i8, ptr %set127, align 4
  br label %if.end133

if.end133:                                        ; preds = %nv50_head_atomic_check_view.exit, %if.then126.if.end133_crit_edge
  %bf.load135 = phi i8 [ %bf.load135.pr, %nv50_head_atomic_check_view.exit ], [ %bf.load128, %if.then126.if.end133_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load135)
  %bf.cast137.not = icmp sgt i8 %bf.load135, -1
  br i1 %bf.cast137.not, label %if.end133.if.end139_crit_edge, label %if.then138

if.end133.if.end139_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then138:                                       ; preds = %if.end133
  %dither.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 1
  %254 = ptrtoint ptr %dither.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dither.i, align 4
  %256 = zext i32 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %255, label %if.then138.if.end11.i_crit_edge [
    i32 0, label %if.then138.nv50_head_atomic_check_dither.exit_crit_edge
    i32 34, label %if.then4.i
  ]

if.then138.nv50_head_atomic_check_dither.exit_crit_edge: ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_head_atomic_check_dither.exit

if.then138.if.end11.i_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  %base.i497 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 7
  %257 = ptrtoint ptr %base.i497 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %base.i497, align 8
  %conv.i = zext i8 %258 to i32
  %bpc.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 11, i32 1
  %259 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %bpc.i, align 1
  %conv5.i = zext i8 %260 to i32
  %mul.i498 = mul nuw nsw i32 %conv5.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i498, i32 %conv.i)
  %cmp6.i = icmp ult i32 %mul.i498, %conv.i
  %spec.select.i = select i1 %cmp6.i, i32 17, i32 0
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then4.i, %if.then138.if.end11.i_crit_edge
  %mode.0.i = phi i32 [ %spec.select.i, %if.then4.i ], [ %255, %if.then138.if.end11.i_crit_edge ]
  %depth13.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 1, i32 1
  %261 = ptrtoint ptr %depth13.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %depth13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %262)
  %cmp14.i499 = icmp eq i32 %262, 3
  br i1 %cmp14.i499, label %if.then16.i500, label %if.else25.i

if.then16.i500:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %bpc18.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 11, i32 1
  %263 = ptrtoint ptr %bpc18.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %bpc18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %264)
  %cmp20.i = icmp ugt i8 %264, 7
  %or23.i = or i32 %mode.0.i, 2
  %spec.select1.i = select i1 %cmp20.i, i32 %or23.i, i32 %mode.0.i
  br label %nv50_head_atomic_check_dither.exit

if.else25.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %or28.i = or i32 %262, %mode.0.i
  br label %nv50_head_atomic_check_dither.exit

nv50_head_atomic_check_dither.exit:               ; preds = %if.else25.i, %if.then16.i500, %if.then138.nv50_head_atomic_check_dither.exit_crit_edge
  %mode.1.i = phi i32 [ %or28.i, %if.else25.i ], [ %255, %if.then138.nv50_head_atomic_check_dither.exit_crit_edge ], [ %spec.select1.i, %if.then16.i500 ]
  %dither33.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 9
  %265 = trunc i32 %mode.1.i to i8
  %266 = ptrtoint ptr %dither33.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %bf.load.i501 = load i8, ptr %dither33.i, align 1
  %bf.shl.i = shl i8 %265, 7
  %bf.clear.i502 = and i8 %bf.load.i501, 1
  %bf.set.i503 = or i8 %bf.clear.i502, %bf.shl.i
  %267 = shl i8 %265, 4
  %bf.shl41.i = and i8 %267, 96
  %bf.set43.i = or i8 %bf.set.i503, %bf.shl41.i
  %268 = lshr i8 %265, 2
  %bf.shl51.i = and i8 %268, 30
  %bf.set53.i = or i8 %bf.set43.i, %bf.shl51.i
  store i8 %bf.set53.i, ptr %dither33.i, align 1
  %set.i504 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %269 = ptrtoint ptr %set.i504 to i32
  call void @__asan_load2_noabort(i32 %269)
  %bf.load54.i = load i16, ptr %set.i504, align 8
  %bf.set56.i = or i16 %bf.load54.i, 256
  store i16 %bf.set56.i, ptr %set.i504, align 8
  br label %if.end139

if.end139:                                        ; preds = %nv50_head_atomic_check_dither.exit, %if.end133.if.end139_crit_edge
  %270 = ptrtoint ptr %set127 to i32
  call void @__asan_load1_noabort(i32 %270)
  %bf.load141 = load i8, ptr %set127, align 4
  %271 = and i8 %bf.load141, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %bf.cast144.not = icmp eq i8 %271, 0
  br i1 %bf.cast144.not, label %if.end139.if.end147_crit_edge, label %if.then145

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then145:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %procamp.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 3
  %272 = ptrtoint ptr %procamp.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %procamp.i, align 4
  %sub.i = add i32 %273, -100
  %vibrant_hue.i = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0521, i32 0, i32 3, i32 1
  %274 = ptrtoint ptr %vibrant_hue.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %vibrant_hue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i505 = icmp sgt i32 %sub.i, 0
  %cond.i = select i1 %cmp.i505, i32 50, i32 0
  %mul.i506 = mul i32 %sub.i, 2047
  %add.i507 = add i32 %cond.i, %mul.i506
  %div.i508 = sdiv i32 %add.i507, 100
  %276 = trunc i32 %div.i508 to i16
  %procamp3.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 10
  %277 = ptrtoint ptr %procamp3.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %bf.load.i509 = load i16, ptr %procamp3.i, align 4
  %bf.shl.i510 = shl i16 %276, 4
  %bf.clear.i511 = and i16 %bf.load.i509, 15
  %bf.set.i512 = or i16 %bf.shl.i510, %bf.clear.i511
  store i16 %bf.set.i512, ptr %procamp3.i, align 4
  %278 = mul i32 %275, 2047
  %mul4.i = add i32 %278, -184230
  %div5.i = sdiv i32 %mul4.i, 100
  %279 = trunc i32 %div5.i to i16
  %sin.i = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 10, i32 0, i32 1
  %280 = ptrtoint ptr %sin.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %bf.load10.i = load i16, ptr %sin.i, align 2
  %bf.shl12.i = shl i16 %279, 4
  %bf.clear13.i = and i16 %bf.load10.i, 15
  %bf.set14.i = or i16 %bf.shl12.i, %bf.clear13.i
  store i16 %bf.set14.i, ptr %sin.i, align 2
  %set.i513 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %281 = ptrtoint ptr %set.i513 to i32
  call void @__asan_load2_noabort(i32 %281)
  %bf.load15.i = load i16, ptr %set.i513, align 8
  %bf.set17.i = or i16 %bf.load15.i, 128
  store i16 %bf.set17.i, ptr %set.i513, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.end139.if.end147_crit_edge, %if.end124.if.end147_crit_edge
  %282 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %add.ptr, align 8
  %core_calc = getelementptr inbounds %struct.nv50_head_func, ptr %283, i32 0, i32 8
  %284 = ptrtoint ptr %core_calc to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %core_calc, align 4
  %tobool149.not = icmp eq ptr %285, null
  br i1 %tobool149.not, label %if.end147.if.end159_crit_edge, label %if.then150

if.end147.if.end159_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then150:                                       ; preds = %if.end147
  call void %285(ptr noundef %add.ptr, ptr noundef %7) #7
  %core = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 5
  %286 = ptrtoint ptr %core to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %core, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool154.not = icmp eq i8 %287, 0
  br i1 %tobool154.not, label %if.then155, label %if.then150.if.end159_crit_edge

if.then150.if.end159_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then155:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  %olut156 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4
  %288 = ptrtoint ptr %olut156 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 0, ptr %olut156, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %if.then150.if.end159_crit_edge, %if.end147.if.end159_crit_edge
  %cpp = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 7, i32 1
  %289 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %cpp, align 1
  %cpp163 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 7, i32 1
  %291 = ptrtoint ptr %cpp163 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %cpp163, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %290, i8 %292)
  %cmp165.not = icmp eq i8 %290, %292
  %set167 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %293 = ptrtoint ptr %set167 to i32
  call void @__asan_load2_noabort(i32 %293)
  %bf.load168 = load i16, ptr %set167, align 8
  %bf.shl169 = select i1 %cmp165.not, i16 0, i16 1024
  %bf.clear170 = and i16 %bf.load168, -1025
  %bf.set171 = or i16 %bf.clear170, %bf.shl169
  store i16 %bf.set171, ptr %set167, align 8
  %ovly = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 8
  %294 = ptrtoint ptr %ovly to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %ovly, align 2
  %ovly176 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 8
  %296 = ptrtoint ptr %ovly176 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %ovly176, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %295, i8 %297)
  %cmp179.not = icmp eq i8 %295, %297
  %bf.shl183 = select i1 %cmp179.not, i16 0, i16 512
  %bf.clear184 = and i16 %bf.set171, -513
  %bf.set185 = or i16 %bf.shl183, %bf.clear184
  %298 = ptrtoint ptr %set167 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %bf.set185, ptr %set167, align 8
  br label %if.end198

if.else188:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %olut189 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4
  %299 = ptrtoint ptr %olut189 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 0, ptr %olut189, align 8
  %core191 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 5
  %300 = ptrtoint ptr %core191 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 0, ptr %core191, align 8
  %curs = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 6
  %301 = ptrtoint ptr %curs to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 0, ptr %curs, align 8
  %cpp195 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 7, i32 1
  %302 = ptrtoint ptr %cpp195 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 0, ptr %cpp195, align 1
  %ovly196 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 8
  %303 = ptrtoint ptr %ovly196 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 0, ptr %ovly196, align 2
  br label %if.end198

if.end198:                                        ; preds = %if.else188, %if.end159
  %304 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %304)
  %bf.load.i514 = load i8, ptr %color_mgmt_changed, align 2
  %305 = and i8 %bf.load.i514, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %.not = icmp eq i8 %305, 0
  br i1 %.not, label %if.then201, label %if.else276

if.then201:                                       ; preds = %if.end198
  %core202 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 5
  %306 = ptrtoint ptr %core202 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %core202, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool204.not = icmp eq i8 %307, 0
  %core217 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 5
  br i1 %tobool204.not, label %if.else216, label %if.then205

if.then205:                                       ; preds = %if.then201
  %bcmp478 = call i32 @bcmp(ptr noundef dereferenceable(32) %core217, ptr noundef dereferenceable(32) %core202, i32 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp478)
  %tobool209.not = icmp eq i32 %bcmp478, 0
  br i1 %tobool209.not, label %if.then205.if.end225_crit_edge, label %if.then210

if.then205.if.end225_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.then210:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #9
  %set211 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %308 = ptrtoint ptr %set211 to i32
  call void @__asan_load2_noabort(i32 %308)
  %bf.load212 = load i16, ptr %set211, align 8
  %bf.set214 = or i16 %bf.load212, 16384
  store i16 %bf.set214, ptr %set211, align 8
  br label %if.end225

if.else216:                                       ; preds = %if.then201
  %309 = ptrtoint ptr %core217 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %core217, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool219.not = icmp eq i8 %310, 0
  br i1 %tobool219.not, label %if.else216.if.end225_crit_edge, label %if.then220

if.else216.if.end225_crit_edge:                   ; preds = %if.else216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.then220:                                       ; preds = %if.else216
  call void @__sanitizer_cov_trace_pc() #9
  %clr = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 15
  %311 = ptrtoint ptr %clr to i32
  call void @__asan_load2_noabort(i32 %311)
  %bf.load221 = load i16, ptr %clr, align 2
  %bf.set223 = or i16 %bf.load221, 16384
  store i16 %bf.set223, ptr %clr, align 2
  br label %if.end225

if.end225:                                        ; preds = %if.then220, %if.else216.if.end225_crit_edge, %if.then210, %if.then205.if.end225_crit_edge
  %curs226 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 6
  %312 = ptrtoint ptr %curs226 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %curs226, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool228.not = icmp eq i8 %313, 0
  %curs241 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 6
  br i1 %tobool228.not, label %if.else240, label %if.then229

if.then229:                                       ; preds = %if.end225
  %bcmp477 = call i32 @bcmp(ptr noundef dereferenceable(16) %curs241, ptr noundef dereferenceable(16) %curs226, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp477)
  %tobool233.not = icmp eq i32 %bcmp477, 0
  br i1 %tobool233.not, label %if.then229.if.end250_crit_edge, label %if.then234

if.then229.if.end250_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.then234:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #9
  %set235 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %314 = ptrtoint ptr %set235 to i32
  call void @__asan_load2_noabort(i32 %314)
  %bf.load236 = load i16, ptr %set235, align 8
  %bf.set238 = or i16 %bf.load236, 8192
  store i16 %bf.set238, ptr %set235, align 8
  br label %if.end250

if.else240:                                       ; preds = %if.end225
  %315 = ptrtoint ptr %curs241 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %curs241, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool243.not = icmp eq i8 %316, 0
  br i1 %tobool243.not, label %if.else240.if.end250_crit_edge, label %if.then244

if.else240.if.end250_crit_edge:                   ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.then244:                                       ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #9
  %clr245 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 15
  %317 = ptrtoint ptr %clr245 to i32
  call void @__asan_load2_noabort(i32 %317)
  %bf.load246 = load i16, ptr %clr245, align 2
  %bf.set248 = or i16 %bf.load246, 8192
  store i16 %bf.set248, ptr %clr245, align 2
  br label %if.end250

if.end250:                                        ; preds = %if.then244, %if.else240.if.end250_crit_edge, %if.then234, %if.then229.if.end250_crit_edge
  %olut251 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4
  %318 = ptrtoint ptr %olut251 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %olut251, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool253.not = icmp eq i8 %319, 0
  %olut266 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 4
  br i1 %tobool253.not, label %if.else265, label %if.then254

if.then254:                                       ; preds = %if.end250
  %bcmp476 = call i32 @bcmp(ptr noundef dereferenceable(24) %olut266, ptr noundef dereferenceable(24) %olut251, i32 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp476)
  %tobool258.not = icmp eq i32 %bcmp476, 0
  br i1 %tobool258.not, label %if.then254.if.end337_crit_edge, label %if.then259

if.then254.if.end337_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337

if.then259:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #9
  %set260 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %320 = ptrtoint ptr %set260 to i32
  call void @__asan_load2_noabort(i32 %320)
  %bf.load261 = load i16, ptr %set260, align 8
  %bf.set263 = or i16 %bf.load261, -32768
  store i16 %bf.set263, ptr %set260, align 8
  br label %if.end337

if.else265:                                       ; preds = %if.end250
  %321 = ptrtoint ptr %olut266 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %olut266, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool268.not = icmp eq i8 %322, 0
  br i1 %tobool268.not, label %if.else265.if.end337_crit_edge, label %if.then269

if.else265.if.end337_crit_edge:                   ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337

if.then269:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #9
  %clr270 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 15
  %323 = ptrtoint ptr %clr270 to i32
  call void @__asan_load2_noabort(i32 %323)
  %bf.load271 = load i16, ptr %clr270, align 2
  %bf.set273 = or i16 %bf.load271, -32768
  store i16 %bf.set273, ptr %clr270, align 2
  br label %if.end337

if.else276:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  %olut277 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 4
  %324 = ptrtoint ptr %olut277 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %olut277, align 8, !range !39
  %clr280 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 15
  %326 = zext i8 %325 to i16
  %327 = ptrtoint ptr %clr280 to i32
  call void @__asan_load2_noabort(i32 %327)
  %bf.load281 = load i16, ptr %clr280, align 2
  %bf.shl282 = shl nuw i16 %326, 15
  %bf.clear283 = and i16 %bf.load281, 32767
  %bf.set284 = or i16 %bf.clear283, %bf.shl282
  store i16 %bf.set284, ptr %clr280, align 2
  %core287 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 5
  %328 = ptrtoint ptr %core287 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %core287, align 8, !range !39
  %330 = zext i8 %329 to i16
  %bf.shl292 = shl nuw nsw i16 %330, 14
  %bf.clear293 = and i16 %bf.set284, -16385
  %bf.set294 = or i16 %bf.shl292, %bf.clear293
  store i16 %bf.set294, ptr %clr280, align 2
  %curs297 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 6
  %331 = ptrtoint ptr %curs297 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %curs297, align 8, !range !39
  %333 = zext i8 %332 to i16
  %bf.shl302 = shl nuw nsw i16 %333, 13
  %bf.clear303 = and i16 %bf.set294, -8193
  %bf.set304 = or i16 %bf.clear303, %bf.shl302
  store i16 %bf.set304, ptr %clr280, align 2
  %olut307 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 4
  %334 = ptrtoint ptr %olut307 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %olut307, align 8, !range !39
  %set310 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %336 = zext i8 %335 to i16
  %337 = ptrtoint ptr %set310 to i32
  call void @__asan_load2_noabort(i32 %337)
  %bf.load311 = load i16, ptr %set310, align 8
  %bf.shl312 = shl nuw i16 %336, 15
  %bf.clear313 = and i16 %bf.load311, 8191
  %bf.set314 = or i16 %bf.clear313, %bf.shl312
  %core317 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 5
  %338 = ptrtoint ptr %core317 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %core317, align 8, !range !39
  %340 = zext i8 %339 to i16
  %bf.shl322 = shl nuw nsw i16 %340, 14
  %bf.set324 = or i16 %bf.shl322, %bf.set314
  %curs327 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 6
  %341 = ptrtoint ptr %curs327 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %curs327, align 8, !range !39
  %343 = zext i8 %342 to i16
  %bf.shl332 = shl nuw nsw i16 %343, 13
  %bf.set334 = or i16 %bf.set324, %bf.shl332
  store i16 %bf.set334, ptr %set310, align 8
  br label %if.end337

if.end337:                                        ; preds = %if.else276, %if.then269, %if.else265.if.end337_crit_edge, %if.then259, %if.then254.if.end337_crit_edge
  %call338 = call i32 @nv50_crc_atomic_check_head(ptr noundef %add.ptr, ptr noundef %7, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %if.end341, label %if.end337.cleanup_crit_edge

if.end337.cleanup_crit_edge:                      ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end341:                                        ; preds = %if.end337
  %clr342 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 15
  %344 = ptrtoint ptr %clr342 to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %clr342, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %345)
  %tobool344.not = icmp eq i16 %345, 0
  br i1 %tobool344.not, label %lor.lhs.false345, label %if.end341.if.then349_crit_edge

if.end341.if.then349_crit_edge:                   ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then349

lor.lhs.false345:                                 ; preds = %if.end341
  %set346 = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 14
  %346 = ptrtoint ptr %set346 to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %set346, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %347)
  %tobool348.not = icmp eq i16 %347, 0
  br i1 %tobool348.not, label %lor.lhs.false345.cleanup_crit_edge, label %lor.lhs.false345.if.then349_crit_edge

lor.lhs.false345.if.then349_crit_edge:            ; preds = %lor.lhs.false345
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then349

lor.lhs.false345.cleanup_crit_edge:               ; preds = %lor.lhs.false345
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then349:                                       ; preds = %lor.lhs.false345.if.then349_crit_edge, %if.end341.if.then349_crit_edge
  %state352 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 20
  %348 = ptrtoint ptr %state352 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %state352, align 8
  %lock_core = getelementptr inbounds %struct.nv50_atom, ptr %349, i32 0, i32 2
  %350 = ptrtoint ptr %lock_core to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 1, ptr %lock_core, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then349, %lor.lhs.false345.cleanup_crit_edge, %if.end337.cleanup_crit_edge, %do.body53.i, %do.body50.i.cleanup_crit_edge, %if.then29.i.cleanup_crit_edge, %do.body12.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call338, %if.end337.cleanup_crit_edge ], [ 0, %if.then349 ], [ 0, %lor.lhs.false345.cleanup_crit_edge ], [ -22, %do.body12.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then29.i.cleanup_crit_edge ], [ -22, %do.body53.i ], [ -22, %do.body50.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_display_scanoutpos(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_crc_atomic_check_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_get_hv_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_lut_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 611, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 627, i32 46}
!4 = !{ptr @nv50_head_func, !5, !"nv50_head_func", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 527, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 500, i32 6}
!8 = !{ptr @nvd9_head_func, !9, !"nvd9_head_func", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 541, i32 1}
!10 = !{ptr @nv50_head_help, !11, !"nv50_head_help", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 455, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 351, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nv50_head_atomic_check._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @nv50_head_atomic_check._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 241, i32 4}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nv50_head_atomic_check_lut._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nv50_head_atomic_check_lut._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head.c", i32 273, i32 3}
!26 = !{ptr @nv50_head_atomic_check_lut._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nv50_head_atomic_check_lut._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i8 0, i8 2}
