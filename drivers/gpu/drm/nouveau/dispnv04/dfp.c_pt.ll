; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/dfp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/dfp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.94, i8 }
%union.anon.94 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.91 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.119, %struct.anon.120, %struct.anon.122, ptr, %struct.anon.123, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.124, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.130 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.119 = type { ptr, i32, i32, i8 }
%struct.anon.120 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.121] }
%struct.anon.121 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.122 = type { i64, i64 }
%struct.anon.123 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.103 }
%struct.anon.103 = type { ptr, i64 }
%struct.anon.124 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.anon.125 = type { i32 }
%struct.anon.126 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.127 = type { i16, i16 }
%struct.anon.128 = type { i16, i16, i16, %struct.anon.129, i16 }
%struct.anon.129 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.130 = type { ptr, %struct.mutex, i8 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.100, i32, i32 }
%union.anon.100 = type { %struct.anon.102 }
%struct.anon.102 = type { i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.104, %struct.anon.105, %struct.anon.106, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.104 = type { i32, i8, i32, i32 }
%struct.anon.105 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.107, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.108, %struct.anon.115, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.anon.107 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.115 = type { i8 }
%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.sil164_encoder_params = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.213 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.189, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.189 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.132, %struct.anon.133, %struct.anon.135, %union.anon.136 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.132 = type { i32, i32 }
%struct.anon.133 = type { i32, %struct.anon.134, i8 }
%struct.anon.134 = type { i32, i32, i32 }
%struct.anon.135 = type { i32, i32 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i8 }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.88, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.88 = type { [4 x i8] }
%struct.anon.96 = type { %struct.sor_conf, i8, i8, i8 }

@nv04_tmds_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @nv04_tmds_dpms, ptr null, ptr @nv04_dfp_mode_fixup, ptr @nv04_dfp_prepare, ptr @nv04_dfp_commit, ptr @nv04_dfp_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nv04_lvds_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @nv04_lvds_dpms, ptr null, ptr @nv04_dfp_mode_fixup, ptr @nv04_dfp_prepare, ptr @nv04_dfp_commit, ptr @nv04_dfp_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nv04_dfp_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv04_dfp_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nv04_tmds_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 572, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Setting dpms mode %d on tmds encoder (output %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv04_tmds_dpms\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/dispnv04/dfp.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_tmds_dpms._entry_ptr = internal global ptr @nv04_tmds_dpms._entry, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@nv04_dfp_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 483, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv04_dfp_commit\00", [16 x i8] zeroinitializer }, align 32
@nv04_dfp_commit._entry_ptr = internal global ptr @nv04_dfp_commit._entry, section ".printk_index", align 4
@nv04_dfp_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Output mode on CRTC %d:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv04_dfp_mode_set\00", [46 x i8] zeroinitializer }, align 32
@nv04_dfp_mode_set._entry_ptr = internal global ptr @nv04_dfp_mode_set._entry, section ".printk_index", align 4
@nv04_lvds_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Setting dpms mode %d on lvds encoder (output %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv04_lvds_dpms\00", [17 x i8] zeroinitializer }, align 32
@nv04_lvds_dpms._entry_ptr = internal global ptr @nv04_lvds_dpms._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sil164\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TMDS transmitter\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 34]
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"nv04_tmds_helper_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 665, i32 46 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"nv04_lvds_helper_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 656, i32 46 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"nv04_dfp_funcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 674, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 571, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 481, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 297, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 526, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 634, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/dfp.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 648, i32 33 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @nv04_dfp_commit._entry, ptr @nv04_dfp_commit._entry_ptr, ptr @nv04_dfp_mode_set._entry, ptr @nv04_dfp_mode_set._entry_ptr, ptr @nv04_lvds_dpms._entry, ptr @nv04_lvds_dpms._entry_ptr, ptr @nv04_tmds_dpms._entry, ptr @nv04_tmds_dpms._entry_ptr, ptr @nv04_tmds_helper_funcs, ptr @nv04_lvds_helper_funcs, ptr @nv04_dfp_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_tmds_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_lvds_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dfp_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_tmds_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dfp_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dfp_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_lvds_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_dfp_get_bound_head(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dcbent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %or = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 9
  %0 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %or, align 1
  %2 = lshr i8 %1, 2
  %3 = and i8 %2, 1
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6817968, i32 6826160
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !42

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65540) #6, !srcloc !44
  br label %NVWriteRAMDAC.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef 65540) #6
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i, %do.body.i
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i8 = select i1 %tobool.not.i, i32 6817972, i32 6826164
  %map.i9 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i9, align 8
  %tobool2.not.i10 = icmp eq ptr %13, null
  br i1 %tobool2.not.i10, label %if.else.i14, label %if.then5.i, !prof !42

if.then5.i:                                       ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i11 = getelementptr i8, ptr %13, i32 %spec.select.i8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %NVReadRAMDAC.exit

if.else.i14:                                      ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3
  %conv.i13 = zext i32 %spec.select.i8 to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i12, i32 noundef 4, i64 noundef %conv.i13) #6
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i14, %if.then5.i
  %_data.0.i = phi i32 [ %14, %if.then5.i ], [ %call10.i, %if.else.i14 ]
  %15 = zext i8 %3 to i32
  %and1 = lshr i32 %_data.0.i, 3
  %shr2 = and i32 %and1, 1
  %xor = xor i32 %shr2, %15
  ret i32 %xor
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_dfp_bind_head(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dcbent, i32 noundef %head, i1 noundef zeroext %dl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %or = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 9
  %0 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %or, align 1
  %2 = lshr i8 %1, 2
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %head)
  %cmp.not = icmp eq i32 %4, %head
  %spec.store.select = select i1 %cmp.not, i8 -128, i8 -120
  %type = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp2 = icmp eq i32 %6, 3
  %7 = zext i1 %cmp2 to i8
  %spec.select = or i8 %spec.store.select, %7
  %conv.i = zext i8 %spec.select to i32
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i.i.i, align 4
  %10 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %spec.select.i.v.i = select i1 %tobool.not.i.i, i32 6817972, i32 6826164
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %do.body.i.i, !prof !42

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %spec.select.i.v.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i) #6, !srcloc !44
  br label %NVWriteRAMDAC.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %conv.i.i = zext i32 %spec.select.i.v.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef %conv.i.i, i32 noundef %conv.i) #6
  br label %NVWriteRAMDAC.exit.i

NVWriteRAMDAC.exit.i:                             ; preds = %if.else.i.i, %do.body.i.i
  %15 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i.i.i, align 4
  %spec.select.i4.v.i = select i1 %tobool.not.i.i, i32 6817968, i32 6826160
  %map.i5.i = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = ptrtoint ptr %map.i5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i5.i, align 8
  %tobool2.not.i6.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i6.i, label %if.else.i11.i, label %do.body.i8.i, !prof !42

do.body.i8.i:                                     ; preds = %NVWriteRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %map.i5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i5.i, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %20, i32 %spec.select.i4.v.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 4) #6, !srcloc !44
  br label %nv_write_tmds.exit

if.else.i11.i:                                    ; preds = %NVWriteRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i9.i = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 2, i32 3
  %conv.i10.i = zext i32 %spec.select.i4.v.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i9.i, i32 noundef 4, i64 noundef %conv.i10.i, i32 noundef 4) #6
  br label %nv_write_tmds.exit

nv_write_tmds.exit:                               ; preds = %if.else.i11.i, %do.body.i8.i
  br i1 %dl, label %if.then11, label %nv_write_tmds.exit.if.end16_crit_edge

nv_write_tmds.exit.if.end16_crit_edge:            ; preds = %nv_write_tmds.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %nv_write_tmds.exit
  %21 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %or, align 1
  %23 = xor i8 %spec.select, 8
  %conv.i23 = zext i8 %23 to i32
  %24 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i.i.i, align 4
  %26 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i25 = icmp eq i8 %26, 0
  %spec.select.i.i = select i1 %tobool.not.i.i25, i32 6817980, i32 6826172
  %map.i.i27 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %27 = ptrtoint ptr %map.i.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i.i27, align 8
  %tobool2.not.i.i28 = icmp eq ptr %28, null
  br i1 %tobool2.not.i.i28, label %if.else.i.i33, label %do.body.i.i30, !prof !42

do.body.i.i30:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %map.i.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i.i27, align 8
  %add.ptr.i.i29 = getelementptr i8, ptr %30, i32 %spec.select.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %conv.i23) #6, !srcloc !44
  br label %NVWriteRAMDAC.exit.i37

if.else.i.i33:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i31 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  %conv.i.i32 = zext i32 %spec.select.i.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i.i31, i32 noundef 4, i64 noundef %conv.i.i32, i32 noundef %conv.i23) #6
  br label %NVWriteRAMDAC.exit.i37

NVWriteRAMDAC.exit.i37:                           ; preds = %if.else.i.i33, %do.body.i.i30
  %31 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private.i.i.i, align 4
  %spec.select.i4.i = select i1 %tobool.not.i.i25, i32 6817976, i32 6826168
  %map.i5.i35 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = ptrtoint ptr %map.i5.i35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i5.i35, align 8
  %tobool2.not.i6.i36 = icmp eq ptr %34, null
  br i1 %tobool2.not.i6.i36, label %if.else.i11.i42, label %do.body.i8.i39, !prof !42

do.body.i8.i39:                                   ; preds = %NVWriteRAMDAC.exit.i37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %map.i5.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i5.i35, align 8
  %add.ptr.i7.i38 = getelementptr i8, ptr %36, i32 %spec.select.i4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i38, i32 4) #6, !srcloc !44
  br label %if.end16

if.else.i11.i42:                                  ; preds = %NVWriteRAMDAC.exit.i37
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i9.i40 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3
  %conv.i10.i41 = zext i32 %spec.select.i4.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i9.i40, i32 noundef 4, i64 noundef %conv.i10.i41, i32 noundef 4) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else.i11.i42, %do.body.i8.i39, %nv_write_tmds.exit.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_dfp_disable(ptr nocapture noundef readonly %dev, i32 noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6817864, i32 6826056
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !42

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %spec.select.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i) #6
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %8, %if.then5.i ], [ %call10.i, %if.else.i ]
  %and = and i32 %_data.0.i, 268435473
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %NVReadRAMDAC.exit.if.end_crit_edge, label %if.then

NVReadRAMDAC.exit.if.end_crit_edge:               ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %NVReadRAMDAC.exit
  %9 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i15 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = ptrtoint ptr %map.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i15, align 8
  %tobool2.not.i16 = icmp eq ptr %12, null
  br i1 %tobool2.not.i16, label %if.else.i20, label %do.body.i, !prof !42

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %map.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i15, align 8
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 536870946) #6, !srcloc !44
  br label %NVWriteRAMDAC.exit

if.else.i20:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i18 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3
  %conv.i19 = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i18, i32 noundef 4, i64 noundef %conv.i19, i32 noundef 536870946) #6
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i20, %do.body.i
  tail call void @msleep(i32 noundef 50) #6
  br label %if.end

if.end:                                           ; preds = %NVWriteRAMDAC.exit, %NVReadRAMDAC.exit.if.end_crit_edge
  %fp_control = getelementptr %struct.nv04_crtc_reg, ptr %5, i32 %head, i32 31
  %15 = ptrtoint ptr %fp_control to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 536870946, ptr %fp_control, align 4
  %arrayidx3 = getelementptr %struct.nv04_crtc_reg, ptr %5, i32 %head, i32 1, i32 51
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3, align 1
  %18 = and i8 %17, -60
  store i8 %18, ptr %arrayidx3, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_dfp_update_fp_control(ptr nocapture noundef readonly %encoder, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %crtc2 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc2, align 4
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
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %fp_control = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 31
  %12 = ptrtoint ptr %fp_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fp_control, align 4
  %and.i = and i32 %13, 805306419
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870946, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 536870946
  br i1 %cmp.i, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dpms_saved_fp_control = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %dpms_saved_fp_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dpms_saved_fp_control, align 4
  %16 = ptrtoint ptr %fp_control to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fp_control, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %17 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dcb, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shl = shl nuw i32 1, %20
  %fp_users = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %fp_users to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fp_users, align 8
  %or = or i32 %22, %shl
  store i32 %or, ptr %fp_users, align 8
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 8
  %25 = ptrtoint ptr %fp_control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fp_control, align 4
  %27 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6817864, i32 6826056
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3, i32 0, i32 6
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !42

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %32, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #6, !srcloc !44
  br label %if.end37

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %26) #6
  br label %if.end37

if.else:                                          ; preds = %entry
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %33 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn78 = load ptr, ptr %crtc_list, align 4
  %cmp11.not79 = icmp eq ptr %.pn78, %crtc_list
  br i1 %cmp11.not79, label %if.else.if.end37_crit_edge, label %for.body.lr.ph

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.body.lr.ph:                                   ; preds = %if.else
  %dev_private.i.i.i63 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %dcb20 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn80 = phi ptr [ %.pn78, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %dev_private.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_private.i.i.i63, align 4
  %display.i.i64 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %display.i.i64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %display.i.i64, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %index16 = getelementptr i8, ptr %.pn80, i32 984
  %40 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index16, align 8
  %fp_control18 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %39, i32 0, i32 %41, i32 31
  %42 = ptrtoint ptr %dcb20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dcb20, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %shl22 = shl nuw i32 1, %45
  %neg = xor i32 %shl22, -1
  %fp_users23 = getelementptr i8, ptr %.pn80, i32 1072
  %46 = ptrtoint ptr %fp_users23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fp_users23, align 8
  %and = and i32 %47, %neg
  store i32 %and, ptr %fp_users23, align 8
  %48 = ptrtoint ptr %fp_control18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fp_control18, align 4
  %and.i65 = and i32 %49, 805306419
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870946, i32 %and.i65)
  %cmp.i66 = icmp ne i32 %and.i65, 536870946
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp.i66, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then26:                                        ; preds = %for.body
  %dpms_saved_fp_control27 = getelementptr i8, ptr %.pn80, i32 1068
  %50 = ptrtoint ptr %dpms_saved_fp_control27 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dpms_saved_fp_control27, align 4
  %51 = ptrtoint ptr %fp_control18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fp_control18, align 4
  %and28 = and i32 %52, -805306420
  %or29 = or i32 %and28, 536870946
  store i32 %or29, ptr %fp_control18, align 4
  %53 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index16, align 8
  %55 = ptrtoint ptr %dev_private.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_private.i.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i68 = icmp eq i32 %54, 0
  %spec.select.i69 = select i1 %tobool.not.i68, i32 6817864, i32 6826056
  %map.i70 = getelementptr inbounds %struct.nouveau_drm, ptr %56, i32 0, i32 2, i32 3, i32 0, i32 6
  %57 = ptrtoint ptr %map.i70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map.i70, align 8
  %tobool2.not.i71 = icmp eq ptr %58, null
  br i1 %tobool2.not.i71, label %if.else.i76, label %do.body.i73, !prof !42

do.body.i73:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %map.i70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map.i70, align 8
  %add.ptr.i72 = getelementptr i8, ptr %60, i32 %spec.select.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %or29) #6, !srcloc !44
  br label %for.inc

if.else.i76:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i74 = getelementptr inbounds %struct.nouveau_drm, ptr %56, i32 0, i32 2, i32 3
  %conv.i75 = zext i32 %spec.select.i69 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i74, i32 noundef 4, i64 noundef %conv.i75, i32 noundef %or29) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else.i76, %do.body.i73, %for.body.for.inc_crit_edge
  %61 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load ptr, ptr %.pn80, align 4
  %cmp11.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp11.not, label %for.inc.if.end37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %for.inc.if.end37_crit_edge, %if.else.if.end37_crit_edge, %if.else.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_dfp_create(ptr noundef %connector, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca [2 x %struct.nvkm_i2c_bus_probe], align 4
  %.compoundliteral.i = alloca %struct.sil164_encoder_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type2 = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type2, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %helper.0 = phi ptr [ @nv04_lvds_helper_funcs, %sw.bb3 ], [ @nv04_tmds_helper_funcs, %entry.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 416) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %enc_save = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 14
  %4 = ptrtoint ptr %enc_save to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nv04_dfp_save, ptr %enc_save, align 4
  %enc_restore = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %enc_restore to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nv04_dfp_restore, ptr %enc_restore, align 8
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry1, ptr %dcb, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 9
  %7 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %or, align 1
  %9 = tail call i8 @llvm.cttz.i8(i8 %8, i1 true), !range !47
  %10 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %iszero = icmp eq i8 %8, 0
  %sub = select i1 %iszero, i32 -1, i32 %10
  %or5 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %or5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %or5, align 8
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connector, align 8
  %call6 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %13, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nv04_dfp_funcs, i32 noundef %1, ptr noundef null) #6
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %helper.0, ptr %helper_private.i, align 4
  %heads = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 5
  %15 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %heads, align 1
  %conv7 = zext i8 %16 to i32
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv7, ptr %possible_crtcs, align 4
  %possible_clones = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %possible_clones, align 8
  %19 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %location = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 8
  %21 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp11.not = icmp eq i8 %22, 0
  br i1 %cmp11.not, label %land.lhs.true.if.end14_crit_edge, label %if.then13

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %.compoundliteral.i)
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dcb, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private.i.i, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3, i32 0, i32 5
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i, align 4
  %device4.i = getelementptr inbounds %struct.anon.213, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device4.i, align 8
  %i2c5.i = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 26
  %33 = ptrtoint ptr %i2c5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c5.i, align 4
  %call6.i = tail call ptr @nvkm_i2c_bus_find(ptr noundef %34, i32 noundef -1) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %info.i) #6
  %35 = getelementptr inbounds i8, ptr %info.i, i32 20
  %36 = call ptr @memset(ptr %35, i32 0, i32 100)
  %37 = call ptr @memcpy(ptr %info.i, ptr @.str.11, i32 20)
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 2
  %slave_addr.i = getelementptr inbounds %struct.dcb_output, ptr %26, i32 0, i32 13, i32 0, i32 1
  %38 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slave_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %cmp.i = icmp eq i32 %39, 7
  %conv.i = select i1 %cmp.i, i16 58, i16 56
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %addr.i, align 2
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 4
  %41 = getelementptr inbounds i8, ptr %.compoundliteral.i, i32 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 20)
  %43 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %.compoundliteral.i, align 4
  %44 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.compoundliteral.i, ptr %platform_data.i, align 4
  %45 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 2
  %47 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1.i.i.i, align 4
  %device.i.i.i = getelementptr i8, ptr %48, i32 -102
  %49 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %device.i.i.i, align 2
  %51 = and i16 %50, 4080
  %family.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3, i32 1, i32 4
  %52 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %family.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.i.i.i = icmp ult i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %51)
  %cmp5.not.i.i.i = icmp eq i16 %51, 256
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 true, i1 %cmp5.not.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %51)
  %cmp8.not.i.i.i = icmp eq i16 %51, 336
  %or.cond21.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %cmp8.not.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %51)
  %cmp11.not.i.i.i = icmp eq i16 %51, 416
  %or.cond22.i.i.i = select i1 %or.cond21.i.i.i, i1 true, i1 %cmp11.not.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %51)
  %cmp14.not.i.i.i = icmp eq i16 %51, 512
  %or.cond23.i.i.i = select i1 %or.cond22.i.i.i, i1 true, i1 %cmp14.not.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %51)
  %cmp.i.i = icmp eq i16 %51, 272
  %spec.select.i.i = select i1 %or.cond23.i.i.i, i1 true, i1 %cmp.i.i
  %tobool.not.i = icmp eq ptr %call6.i, null
  %or.cond.i = select i1 %spec.select.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.then13.nv04_tmds_slave_init.exit_crit_edge, label %lor.lhs.false11.i

if.then13.nv04_tmds_slave_init.exit_crit_edge:    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv04_tmds_slave_init.exit

lor.lhs.false11.i:                                ; preds = %if.then13
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %56 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dcb, align 4
  %type.i.i = getelementptr inbounds %struct.dcb_output, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.not.i.i = icmp eq i32 %59, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %lor.lhs.false11.i.if.end.i_crit_edge

lor.lhs.false11.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false11.i
  %location.i.i = getelementptr inbounds %struct.dcb_output, ptr %57, i32 0, i32 8
  %60 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp3.i.i = icmp eq i8 %61, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 30, i32 16
  %62 = ptrtoint ptr %encoder_list.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn42.i.i = load ptr, ptr %encoder_list.i.i, align 4
  %cmp7.not43.i.i = icmp eq ptr %.pn42.i.i, %encoder_list.i.i
  br i1 %cmp7.not43.i.i, label %if.end.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %slave_addr16.i.i = getelementptr inbounds %struct.dcb_output, ptr %57, i32 0, i32 13, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn44.i.i = phi ptr [ %.pn42.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %dcb10.i.i = getelementptr i8, ptr %.pn44.i.i, i32 80
  %63 = ptrtoint ptr %dcb10.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dcb10.i.i, align 4
  %type11.i.i = getelementptr inbounds %struct.dcb_output, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %type11.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp12.i.i = icmp eq i32 %66, 2
  br i1 %cmp12.i.i, label %land.lhs.true.i.i, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %slave_funcs.i.i.i = getelementptr i8, ptr %.pn44.i.i, i32 68
  %67 = ptrtoint ptr %slave_funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %slave_funcs.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge, label %land.lhs.true15.i.i

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

land.lhs.true15.i.i:                              ; preds = %land.lhs.true.i.i
  %slave_addr.i.i = getelementptr inbounds %struct.dcb_output, ptr %64, i32 0, i32 13, i32 0, i32 1
  %69 = ptrtoint ptr %slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %slave_addr.i.i, align 4
  %71 = ptrtoint ptr %slave_addr16.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %slave_addr16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp17.i.i = icmp eq i32 %70, %72
  br i1 %cmp17.i.i, label %get_tmds_slave.exit.i, label %land.lhs.true15.i.i.cleanup.i.i_crit_edge

land.lhs.true15.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true15.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %73 = ptrtoint ptr %.pn44.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn.i.i = load ptr, ptr %.pn44.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, %encoder_list.i.i
  br i1 %cmp7.not.i.i, label %cleanup.i.i.if.end.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

cleanup.i.i.if.end.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

get_tmds_slave.exit.i:                            ; preds = %land.lhs.true15.i.i
  %slave.0.le.i.i = getelementptr i8, ptr %.pn44.i.i, i32 -4
  %tobool13.not.i = icmp eq ptr %slave.0.le.i.i, null
  br i1 %tobool13.not.i, label %get_tmds_slave.exit.i.if.end.i_crit_edge, label %get_tmds_slave.exit.i.nv04_tmds_slave_init.exit_crit_edge

get_tmds_slave.exit.i.nv04_tmds_slave_init.exit_crit_edge: ; preds = %get_tmds_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv04_tmds_slave_init.exit

get_tmds_slave.exit.i.if.end.i_crit_edge:         ; preds = %get_tmds_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %get_tmds_slave.exit.i.if.end.i_crit_edge, %cleanup.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge, %lor.lhs.false11.i.if.end.i_crit_edge
  %call14.i = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %info.i, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end.i.nv04_tmds_slave_init.exit_crit_edge, label %if.end18.i

if.end.i.nv04_tmds_slave_init.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv04_tmds_slave_init.exit

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c20.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call6.i, i32 0, i32 5
  %arrayidx.i = getelementptr [2 x %struct.nvkm_i2c_bus_probe], ptr %info.i, i32 0, i32 %call14.i
  %call22.i = call i32 @drm_i2c_encoder_init(ptr noundef %24, ptr noundef nonnull %call7.i.i, ptr noundef %i2c20.i, ptr noundef %arrayidx.i) #6
  br label %nv04_tmds_slave_init.exit

nv04_tmds_slave_init.exit:                        ; preds = %if.end18.i, %if.end.i.nv04_tmds_slave_init.exit_crit_edge, %get_tmds_slave.exit.i.nv04_tmds_slave_init.exit_crit_edge, %if.then13.nv04_tmds_slave_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %info.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral.i)
  br label %if.end14

if.end14:                                         ; preds = %nv04_tmds_slave_init.exit, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dfp_save(ptr nocapture noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i, align 2
  %8 = and i16 %7, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp5.not.i = icmp ne i16 %8, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %8)
  %cmp8.not.i = icmp ne i16 %8, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %8)
  %cmp11.not.i = icmp ne i16 %8, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp14.not.i = icmp ne i16 %8, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %11 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb, align 4
  %call3 = tail call i32 @nv04_dfp_get_bound_head(ptr noundef %1, ptr noundef %12)
  %head = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3, ptr %head, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dfp_restore(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %head2 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head2, align 4
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %4 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %7, label %entry.if.end19_crit_edge [
    i32 3, label %if.then
    i32 2, label %if.then12
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @nv04_encoder_get_connector(ptr noundef %encoder) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then.if.end19_crit_edge, label %land.lhs.true

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then
  %native_mode = getelementptr inbounds %struct.nouveau_connector, ptr %call3, i32 0, i32 10
  %9 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %native_mode, align 8
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true.if.end19_crit_edge, label %if.then5

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %call8 = tail call i32 @call_lvds_script(ptr noundef %1, ptr noundef %12, i32 noundef %3, i32 noundef 5, i32 noundef %14) #6
  br label %if.end19

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %display.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %saved_reg = getelementptr inbounds %struct.nv04_display, ptr %20, i32 0, i32 1
  %pllvals = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %3, i32 16
  %call15 = tail call i32 @nouveau_hw_pllvals_to_clk(ptr noundef %pllvals) #6
  %21 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dcb, align 4
  %call17 = tail call i32 @run_tmds_table(ptr noundef %1, ptr noundef %22, i32 noundef %3, i32 noundef %call15) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.then5, %land.lhs.true.if.end19_crit_edge, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %last_dpms = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 10
  %23 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %last_dpms, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_tmds_dpms(ptr nocapture noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %last_dpms = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 10
  %4 = ptrtoint ptr %last_dpms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_dpms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mode)
  %cmp = icmp eq i32 %5, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mode, ptr %last_dpms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %7 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.do.end14_crit_edge, label %do.body5

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %14 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcb, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %mode, i32 noundef %17) #10
  br label %do.end14

do.end14:                                         ; preds = %do.body5, %if.end.do.end14_crit_edge
  tail call void @nv04_dfp_update_fp_control(ptr noundef %encoder, i32 noundef %mode)
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_dfp_mode_fixup(ptr noundef %encoder, ptr nocapture noundef readonly %mode, ptr nocapture noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @nv04_encoder_get_connector(ptr noundef %encoder) #6
  %native_mode = getelementptr inbounds %struct.nouveau_connector, ptr %call1, i32 0, i32 10
  %0 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %native_mode, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %scaling_mode = getelementptr inbounds %struct.nouveau_connector, ptr %call1, i32 0, i32 7
  %2 = ptrtoint ptr %scaling_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scaling_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %4 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay, align 4
  %hdisplay4 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %hdisplay4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp6 = icmp ugt i16 %5, %7
  br i1 %cmp6, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false8

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %8 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdisplay, align 2
  %vdisplay11 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp13 = icmp ugt i16 %9, %11
  br i1 %cmp13, label %lor.lhs.false8.if.then_crit_edge, label %if.else

lor.lhs.false8.if.then_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false8.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %mode15 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9
  %12 = call ptr @memcpy(ptr %mode15, ptr %adjusted_mode, i32 112)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  %mode16 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9
  %13 = call ptr @memcpy(ptr %mode16, ptr %1, i32 112)
  %14 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %native_mode, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %adjusted_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dfp_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %0 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %helper_private, align 4
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %display.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %arrayidx4 = getelementptr %struct.nv04_crtc_reg, ptr %13, i32 %7, i32 1, i32 51
  %xor = xor i32 %7, 1
  %arrayidx7 = getelementptr %struct.nv04_crtc_reg, ptr %13, i32 %xor, i32 1, i32 51
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void %15(ptr noundef %encoder, i32 noundef 3) #6
  %16 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %display.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %22 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dcb.i, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %or.i, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  %cond.i = select i1 %tobool.not.i, i32 262144, i32 65536
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %23, i32 0, i32 8
  %27 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.not.i = icmp eq i8 %28, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.nv04_dfp_prepare_sel_clk.exit_crit_edge

entry.nv04_dfp_prepare_sel_clk.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv04_dfp_prepare_sel_clk.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sel_clk.i = getelementptr inbounds %struct.nv04_mode_state, ptr %21, i32 0, i32 2
  %29 = ptrtoint ptr %sel_clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sel_clk.i, align 4
  %or6.i = or i32 %30, %cond.i
  store i32 %or6.i, ptr %sel_clk.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %cond.i, -1
  %sel_clk7.i = getelementptr inbounds %struct.nv04_mode_state, ptr %21, i32 0, i32 2
  %31 = ptrtoint ptr %sel_clk7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel_clk7.i, align 4
  %and8.i = and i32 %32, %neg.i
  store i32 %and8.i, ptr %sel_clk7.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then5.i
  %33 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dcb.i, align 4
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp11.i = icmp eq i32 %36, 3
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end9.i.nv04_dfp_prepare_sel_clk.exit_crit_edge

if.end9.i.nv04_dfp_prepare_sel_clk.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv04_dfp_prepare_sel_clk.exit

land.lhs.true.i:                                  ; preds = %if.end9.i
  %37 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i42.i = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %display.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %display.i.i42.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %sel_clk14.i = getelementptr inbounds %struct.nv04_display, ptr %42, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %sel_clk14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sel_clk14.i, align 4
  %and15.i = and i32 %44, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.nv04_dfp_prepare_sel_clk.exit_crit_edge, label %if.then17.i

land.lhs.true.i.nv04_dfp_prepare_sel_clk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv04_dfp_prepare_sel_clk.exit

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %and21.i = and i32 %44, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond23.i = zext i1 %tobool22.not.i to i32
  %sel_clk24.i = getelementptr inbounds %struct.nv04_mode_state, ptr %21, i32 0, i32 2
  %45 = ptrtoint ptr %sel_clk24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sel_clk24.i, align 4
  %and25.i = and i32 %46, -241
  %cond27.i = select i1 %tobool4.not.i, i32 16, i32 64
  %shl.i = shl nuw nsw i32 %cond27.i, %cond23.i
  %or29.i = or i32 %and25.i, %shl.i
  store i32 %or29.i, ptr %sel_clk24.i, align 4
  br label %nv04_dfp_prepare_sel_clk.exit

nv04_dfp_prepare_sel_clk.exit:                    ; preds = %if.then17.i, %land.lhs.true.i.nv04_dfp_prepare_sel_clk.exit_crit_edge, %if.end9.i.nv04_dfp_prepare_sel_clk.exit_crit_edge, %entry.nv04_dfp_prepare_sel_clk.exit_crit_edge
  %47 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4, align 1
  %49 = and i8 %48, -60
  %50 = or i8 %49, 3
  store i8 %50, ptr %arrayidx4, align 1
  %51 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_private.i.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %53 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %54, i32 -102
  %55 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %device.i, align 2
  %57 = and i16 %56, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 3, i32 1, i32 4
  %58 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i = icmp ugt i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %57)
  %cmp5.not.i = icmp ne i16 %57, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %57)
  %cmp8.not.i = icmp ne i16 %57, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %57)
  %cmp11.not.i = icmp ne i16 %57, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %57)
  %cmp14.not.i = icmp ne i16 %57, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %nv04_dfp_prepare_sel_clk.exit.if.end43_crit_edge

nv04_dfp_prepare_sel_clk.exit.if.end43_crit_edge: ; preds = %nv04_dfp_prepare_sel_clk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then:                                          ; preds = %nv04_dfp_prepare_sel_clk.exit
  %60 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dcb.i, align 4
  %location = getelementptr inbounds %struct.dcb_output, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp = icmp eq i8 %63, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i8 8, i8 0
  %or14 = or i8 %50, %cond
  %64 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %or14, ptr %arrayidx4, align 1
  br label %if.end43

if.else:                                          ; preds = %if.then
  %or17 = getelementptr inbounds %struct.dcb_output, ptr %61, i32 0, i32 9
  %65 = ptrtoint ptr %or17 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %or17, align 1
  %shl = shl i8 %66, 4
  %and19 = and i8 %shl, 48
  %or21 = or i8 %and19, %50
  %67 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %or21, ptr %arrayidx4, align 1
  %68 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dcb.i, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp24 = icmp eq i32 %71, 3
  br i1 %cmp24, label %if.then26, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %72 = or i8 %49, 51
  %73 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.else.if.end_crit_edge
  %74 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx4, align 1
  %76 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx7, align 1
  %78 = xor i8 %77, %75
  %79 = and i8 %78, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp34 = icmp eq i8 %79, 0
  br i1 %cmp34, label %if.then36, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then36:                                        ; preds = %if.end
  %and38 = and i8 %77, -49
  %80 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %and38, ptr %arrayidx7, align 1
  %81 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_private.i.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3, i32 0, i32 6
  %83 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map.i, align 8
  %tobool.not.i67 = icmp eq ptr %84, null
  %mul6.i = shl i32 %xor, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i67, label %if.else.i68, label %if.then.i, !prof !42

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %84, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 51) #6, !srcloc !49
  br label %if.end.i69

if.else.i68:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 51) #6
  br label %if.end.i69

if.end.i69:                                       ; preds = %if.else.i68, %if.then.i
  %85 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %86, null
  %add27.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then19.i, !prof !42

if.then19.i:                                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i = getelementptr i8, ptr %86, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %and38) #6, !srcloc !49
  br label %if.end43

if.else25.i:                                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %and38 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #6
  br label %if.end43

if.end43:                                         ; preds = %if.else25.i, %if.then19.i, %if.end.if.end43_crit_edge, %if.then12, %nv04_dfp_prepare_sel_clk.exit.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dfp_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %4 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper_private, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %8 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dcb, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %type = getelementptr inbounds %struct.dcb_output, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %13, label %entry.if.end13_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then9
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %call6 = tail call i32 @run_tmds_table(ptr noundef %1, ptr noundef %9, i32 noundef %11, i32 noundef %16) #6
  br label %if.end13

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mode10 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9
  %17 = ptrtoint ptr %mode10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode10, align 4
  %call12 = tail call i32 @call_lvds_script(ptr noundef %1, ptr noundef %9, i32 noundef %11, i32 noundef 2, i32 noundef %18) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then, %entry.if.end13_crit_edge
  %19 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6817864, i32 6826056
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3, i32 0, i32 6
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !42

if.then5.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %22, i32 %spec.select.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i) #6
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %23, %if.then5.i ], [ %call10.i, %if.else.i ]
  %24 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %display.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %fp_control = getelementptr [2 x %struct.nv04_crtc_reg], ptr %29, i32 0, i32 %11, i32 31
  %30 = ptrtoint ptr %fp_control to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %_data.0.i, ptr %fp_control, align 4
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %31 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %32)
  %cmp16 = icmp ult i16 %32, 68
  %call19 = tail call i32 @nv04_dac_output_offset(ptr noundef %encoder) #6
  %add = add i32 %call19, 6817288
  %33 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i, align 4
  %map.i81 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = ptrtoint ptr %map.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i81, align 8
  %tobool2.not.i82 = icmp eq ptr %36, null
  br i1 %cmp16, label %if.then18, label %if.else20

if.then18:                                        ; preds = %NVReadRAMDAC.exit
  br i1 %tobool2.not.i82, label %if.else.i86, label %do.body.i, !prof !42

do.body.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %map.i81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i81, align 8
  %add.ptr.i83 = getelementptr i8, ptr %38, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 -268435456) #6, !srcloc !44
  br label %if.end23

if.else.i86:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i84 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3
  %conv.i85 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i84, i32 noundef 4, i64 noundef %conv.i85, i32 noundef -268435456) #6
  br label %if.end23

if.else20:                                        ; preds = %NVReadRAMDAC.exit
  br i1 %tobool2.not.i82, label %if.else.i95, label %do.body.i92, !prof !42

do.body.i92:                                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %map.i81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i81, align 8
  %add.ptr.i91 = getelementptr i8, ptr %40, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 1048576) #6, !srcloc !44
  br label %if.end23

if.else.i95:                                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i93 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3
  %conv.i94 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i93, i32 noundef 4, i64 noundef %conv.i94, i32 noundef 1048576) #6
  br label %if.end23

if.end23:                                         ; preds = %if.else.i95, %do.body.i92, %if.else.i86, %do.body.i
  %41 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %encoder, align 4
  %43 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dcb, align 4
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.not.i = icmp eq i32 %46, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

lor.lhs.false.i:                                  ; preds = %if.end23
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %44, i32 0, i32 8
  %47 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp3.i = icmp eq i8 %48, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.if.end29_crit_edge, label %if.end.i

lor.lhs.false.i.if.end29_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i:                                         ; preds = %lor.lhs.false.i
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 30, i32 16
  %49 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn42.i = load ptr, ptr %encoder_list.i, align 4
  %cmp7.not43.i = icmp eq ptr %.pn42.i, %encoder_list.i
  br i1 %cmp7.not43.i, label %if.end.i.if.end29_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %slave_addr16.i = getelementptr inbounds %struct.dcb_output, ptr %44, i32 0, i32 13, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn44.i = phi ptr [ %.pn42.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %dcb10.i = getelementptr i8, ptr %.pn44.i, i32 80
  %50 = ptrtoint ptr %dcb10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dcb10.i, align 4
  %type11.i = getelementptr inbounds %struct.dcb_output, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %type11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp12.i = icmp eq i32 %53, 2
  br i1 %cmp12.i, label %land.lhs.true.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %slave_funcs.i.i = getelementptr i8, ptr %.pn44.i, i32 68
  %54 = ptrtoint ptr %slave_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slave_funcs.i.i, align 4
  %tobool.not.i97 = icmp eq ptr %55, null
  br i1 %tobool.not.i97, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %slave_addr.i = getelementptr inbounds %struct.dcb_output, ptr %51, i32 0, i32 13, i32 0, i32 1
  %56 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %slave_addr.i, align 4
  %58 = ptrtoint ptr %slave_addr16.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slave_addr16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp17.i = icmp eq i32 %57, %59
  br i1 %cmp17.i, label %get_tmds_slave.exit, label %land.lhs.true15.i.cleanup.i_crit_edge

land.lhs.true15.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true15.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %60 = ptrtoint ptr %.pn44.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i = load ptr, ptr %.pn44.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp7.not.i, label %cleanup.i.if.end29_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.if.end29_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

get_tmds_slave.exit:                              ; preds = %land.lhs.true15.i
  %slave.0.le.i = getelementptr i8, ptr %.pn44.i, i32 -4
  %tobool.not = icmp eq ptr %slave.0.le.i, null
  br i1 %tobool.not, label %get_tmds_slave.exit.if.end29_crit_edge, label %if.then25

get_tmds_slave.exit.if.end29_crit_edge:           ; preds = %get_tmds_slave.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %get_tmds_slave.exit
  call void @__sanitizer_cov_trace_pc() #8
  %slave_funcs.i.i.le = getelementptr i8, ptr %.pn44.i, i32 68
  %61 = ptrtoint ptr %slave_funcs.i.i.le to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %slave_funcs.i.i.le, align 4
  %mode_set = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %mode_set to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mode_set, align 4
  %mode27 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9
  tail call void %64(ptr noundef nonnull %slave.0.le.i, ptr noundef %mode27, ptr noundef %mode27) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %get_tmds_slave.exit.if.end29_crit_edge, %cleanup.i.if.end29_crit_edge, %if.end.i.if.end29_crit_edge, %lor.lhs.false.i.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 4
  tail call void %66(ptr noundef %encoder, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %67 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end29.do.end48_crit_edge, label %do.body32

if.end29.do.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

do.body32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %drm35 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %drm35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %drm35, align 8
  %dev36 = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev36, align 8
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev37, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %call38 = tail call ptr @nv04_encoder_get_connector(ptr noundef %encoder) #6
  %name39 = getelementptr inbounds %struct.drm_connector, ptr %call38, i32 0, i32 7
  %74 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name39, align 4
  %76 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index, align 8
  %78 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dcb, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %or, align 1
  %82 = tail call i8 @llvm.cttz.i8(i8 %81, i1 true), !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %iszero = icmp eq i8 %81, 0
  %narrow = add nuw nsw i8 %82, 65
  %narrow79 = select i1 %iszero, i8 64, i8 %narrow
  %add43 = zext i8 %narrow79 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %75, i32 noundef %77, i32 noundef %add43) #10
  br label %do.end48

do.end48:                                         ; preds = %do.body32, %if.end29.do.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dfp_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #0 align 64 {
entry:
  %conn_iter.i = alloca %struct.drm_connector_list_iter, align 4
  %duallink = alloca i8, align 1
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device2 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %display.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %saved_reg = getelementptr inbounds %struct.nv04_display, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter.i) #6
  %14 = ptrtoint ptr %conn_iter.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter.i, align 4, !annotation !50
  %15 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %15, align 4, !annotation !50
  call void @drm_connector_list_iter_begin(ptr noundef %13, ptr noundef nonnull %conn_iter.i) #6
  %call215.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter.i) #6
  %tobool.not16.i = icmp eq ptr %call215.i, null
  br i1 %tobool.not16.i, label %entry.nouveau_crtc_connector_get.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.nouveau_crtc_connector_get.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_crtc_connector_get.exit

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call217.i = phi ptr [ %call2.i, %if.end9.i.while.body.i_crit_edge ], [ %call215.i, %entry.while.body.i_crit_edge ]
  %connector_type.i.i = getelementptr inbounds %struct.drm_connector, ptr %call217.i, i32 0, i32 10
  %17 = ptrtoint ptr %connector_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connector_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %18)
  %cmp.not.i.i = icmp eq i32 %18, 10
  br i1 %cmp.not.i.i, label %if.end.i.i, label %while.body.i.if.else.i_crit_edge

while.body.i.if.else.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end.i.i:                                       ; preds = %while.body.i
  %call.i.i = call ptr @find_encoder(ptr noundef nonnull %call217.i, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.else.i_crit_edge, label %nouveau_connector_is_mst.exit.i

if.end.i.i.if.else.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

nouveau_connector_is_mst.exit.i:                  ; preds = %if.end.i.i
  %encoder_type.i.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %encoder_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %encoder_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp4.i.i = icmp eq i32 %20, 7
  br i1 %cmp4.i.i, label %nouveau_connector_is_mst.exit.i.if.end9.i_crit_edge, label %nouveau_connector_is_mst.exit.i.if.else.i_crit_edge

nouveau_connector_is_mst.exit.i.if.else.i_crit_edge: ; preds = %nouveau_connector_is_mst.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

nouveau_connector_is_mst.exit.i.if.end9.i_crit_edge: ; preds = %nouveau_connector_is_mst.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.else.i:                                        ; preds = %nouveau_connector_is_mst.exit.i.if.else.i_crit_edge, %if.end.i.i.if.else.i_crit_edge, %while.body.i.if.else.i_crit_edge
  %encoder.i = getelementptr inbounds %struct.drm_connector, ptr %call217.i, i32 0, i32 41
  %21 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encoder.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %if.else.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %crtc6.i = getelementptr inbounds %struct.drm_encoder, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %crtc6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc6.i, align 4
  %cmp.i = icmp eq ptr %24, %5
  br i1 %cmp.i, label %land.lhs.true.i.nouveau_crtc_connector_get.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i.nouveau_crtc_connector_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_crtc_connector_get.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge, %nouveau_connector_is_mst.exit.i.if.end9.i_crit_edge
  %call2.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter.i) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end9.i.nouveau_crtc_connector_get.exit_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end9.i.nouveau_crtc_connector_get.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_crtc_connector_get.exit

nouveau_crtc_connector_get.exit:                  ; preds = %if.end9.i.nouveau_crtc_connector_get.exit_crit_edge, %land.lhs.true.i.nouveau_crtc_connector_get.exit_crit_edge, %entry.nouveau_crtc_connector_get.exit_crit_edge
  %call2.lcssa.i = phi ptr [ null, %entry.nouveau_crtc_connector_get.exit_crit_edge ], [ null, %if.end9.i.nouveau_crtc_connector_get.exit_crit_edge ], [ %call217.i, %land.lhs.true.i.nouveau_crtc_connector_get.exit_crit_edge ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter.i) #6
  %mode12 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9
  %25 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %crtc, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %primary, align 4
  %fb14 = getelementptr inbounds %struct.drm_plane, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %fb14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %31 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %nouveau_crtc_connector_get.exit.do.end26_crit_edge, label %do.body16

nouveau_crtc_connector_get.exit.do.end26_crit_edge: ; preds = %nouveau_crtc_connector_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.body16:                                        ; preds = %nouveau_crtc_connector_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %drm19 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %drm19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drm19, align 8
  %dev20 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev20, align 8
  %dev21 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev21, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %39) #10
  br label %do.end26

do.end26:                                         ; preds = %do.body16, %nouveau_crtc_connector_get.exit.do.end26_crit_edge
  call void @drm_mode_debug_printmodeline(ptr noundef %mode12) #6
  %hdisplay = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %41 to i32
  %sub = add nsw i32 %conv, -1
  %fp_horiz_regs = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 28
  %42 = ptrtoint ptr %fp_horiz_regs to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %fp_horiz_regs, align 4
  %htotal = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 4
  %43 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %htotal, align 2
  %conv28 = zext i16 %44 to i32
  %sub29 = add nsw i32 %conv28, -1
  %arrayidx31 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 28, i32 1
  %45 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub29, ptr %arrayidx31, align 4
  %46 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_private.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %49, i32 -102
  %50 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %device.i.i, align 2
  %52 = and i16 %51, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 1, i32 4
  %53 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp.i.i = icmp ugt i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %52)
  %cmp5.not.i.i = icmp ne i16 %52, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %52)
  %cmp8.not.i.i = icmp ne i16 %52, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %52)
  %cmp11.not.i.i = icmp ne i16 %52, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %52)
  %cmp14.not.i.i = icmp ne i16 %52, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %52)
  %cmp.i486 = icmp ne i16 %52, 272
  %spec.select.i = select i1 %or.cond23.i.i, i1 %cmp.i486, i1 false
  br i1 %spec.select.i, label %lor.lhs.false, label %do.end26.if.then39_crit_edge

do.end26.if.then39_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

lor.lhs.false:                                    ; preds = %do.end26
  %hsync_start = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 2
  %55 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hsync_start, align 2
  %conv33 = zext i16 %56 to i32
  %57 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hdisplay, align 4
  %conv35 = zext i16 %58 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  %digital_min_front_porch = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 8
  %59 = ptrtoint ptr %digital_min_front_porch to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %digital_min_front_porch, align 4
  %conv37 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36, i32 %conv37)
  %cmp.not = icmp slt i32 %sub36, %conv37
  br i1 %cmp.not, label %if.else, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %do.end26.if.then39_crit_edge
  %61 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hdisplay, align 4
  %conv41 = zext i16 %62 to i32
  br label %if.end53

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %63 = xor i32 %conv37, -1
  %sub50 = add nsw i32 %63, %conv33
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then39
  %sub50.sink = phi i32 [ %sub50, %if.else ], [ %conv41, %if.then39 ]
  %arrayidx52 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 28, i32 2
  %64 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub50.sink, ptr %arrayidx52, align 4
  %hsync_start54 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 2
  %65 = ptrtoint ptr %hsync_start54 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hsync_start54, align 2
  %conv55 = zext i16 %66 to i32
  %sub56 = add nsw i32 %conv55, -1
  %arrayidx58 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 28, i32 3
  %67 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub56, ptr %arrayidx58, align 4
  %hsync_end = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 3
  %68 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hsync_end, align 4
  %conv59 = zext i16 %69 to i32
  %sub60 = add nsw i32 %conv59, -1
  %arrayidx62 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 28, i32 4
  %70 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub60, ptr %arrayidx62, align 4
  %hskew = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 5
  %71 = ptrtoint ptr %hskew to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %hskew, align 4
  %conv63 = zext i16 %72 to i32
  %arrayidx65 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 28, i32 5
  %73 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv63, ptr %arrayidx65, align 4
  %74 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hdisplay, align 4
  %conv67 = zext i16 %75 to i32
  %sub68 = add nsw i32 %conv67, -1
  %arrayidx70 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 28, i32 6
  %76 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub68, ptr %arrayidx70, align 4
  %vdisplay = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 6
  %77 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vdisplay, align 2
  %conv71 = zext i16 %78 to i32
  %sub72 = add nsw i32 %conv71, -1
  %fp_vert_regs = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 29
  %79 = ptrtoint ptr %fp_vert_regs to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub72, ptr %fp_vert_regs, align 4
  %vtotal = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 9
  %80 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vtotal, align 4
  %conv74 = zext i16 %81 to i32
  %sub75 = add nsw i32 %conv74, -1
  %arrayidx77 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 29, i32 1
  %82 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub75, ptr %arrayidx77, align 4
  %83 = load i16, ptr %vtotal, align 4
  %conv79 = zext i16 %83 to i32
  %sub81 = add nsw i32 %conv79, -6
  %arrayidx83 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 29, i32 2
  %84 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub81, ptr %arrayidx83, align 4
  %vsync_start = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 7
  %85 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %vsync_start, align 4
  %conv84 = zext i16 %86 to i32
  %sub85 = add nsw i32 %conv84, -1
  %arrayidx87 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 29, i32 3
  %87 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub85, ptr %arrayidx87, align 4
  %vsync_end = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 8
  %88 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vsync_end, align 2
  %conv88 = zext i16 %89 to i32
  %sub89 = add nsw i32 %conv88, -1
  %arrayidx91 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 29, i32 4
  %90 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub89, ptr %arrayidx91, align 4
  %arrayidx93 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 29, i32 5
  %91 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx93, align 4
  %92 = load i16, ptr %vdisplay, align 2
  %conv95 = zext i16 %92 to i32
  %sub96 = add nsw i32 %conv95, -1
  %arrayidx98 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 29, i32 6
  %93 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub96, ptr %arrayidx98, align 4
  %fp_control = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 31
  %94 = ptrtoint ptr %fp_control to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fp_control, align 4
  %and = and i32 %95, 68157440
  %or = or i32 %and, 268435456
  %fp_control99 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 31
  %96 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or, ptr %fp_control99, align 4
  %flags = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9, i32 11
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 4
  %and100 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool.not = icmp eq i32 %and100, 0
  br i1 %tobool.not, label %if.end53.if.end104_crit_edge, label %if.then101

if.end53.if.end104_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then101:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %or103 = or i32 %and, 268435457
  %99 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or103, ptr %fp_control99, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end53.if.end104_crit_edge
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 4
  %and106 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end104.if.end111_crit_edge, label %if.then108

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fp_control99, align 4
  %or110 = or i32 %103, 16
  store i32 %or110, ptr %fp_control99, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end104.if.end111_crit_edge
  %scaling_mode = getelementptr inbounds %struct.nouveau_connector, ptr %call2.lcssa.i, i32 0, i32 7
  %104 = ptrtoint ptr %scaling_mode to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %scaling_mode, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %105, label %if.else121 [
    i32 0, label %if.end111.if.end141.sink.split_crit_edge
    i32 2, label %if.end111.if.end141.sink.split_crit_edge505
  ]

if.end111.if.end141.sink.split_crit_edge505:      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.sink.split

if.end111.if.end141.sink.split_crit_edge:         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.sink.split

if.else121:                                       ; preds = %if.end111
  %hdisplay122 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %107 = ptrtoint ptr %hdisplay122 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hdisplay122, align 4
  %109 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %110)
  %cmp126 = icmp eq i16 %108, %110
  br i1 %cmp126, label %land.lhs.true, label %if.else121.if.end141_crit_edge

if.else121.if.end141_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

land.lhs.true:                                    ; preds = %if.else121
  %vdisplay128 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %111 = ptrtoint ptr %vdisplay128 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %vdisplay128, align 2
  %113 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %114)
  %cmp132 = icmp eq i16 %112, %114
  br i1 %cmp132, label %land.lhs.true.if.end141.sink.split_crit_edge, label %land.lhs.true.if.end141_crit_edge

land.lhs.true.if.end141_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

land.lhs.true.if.end141.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.sink.split

if.end141.sink.split:                             ; preds = %land.lhs.true.if.end141.sink.split_crit_edge, %if.end111.if.end141.sink.split_crit_edge, %if.end111.if.end141.sink.split_crit_edge505
  %.sink504 = phi i32 [ 256, %if.end111.if.end141.sink.split_crit_edge ], [ 256, %if.end111.if.end141.sink.split_crit_edge505 ], [ 512, %land.lhs.true.if.end141.sink.split_crit_edge ]
  %115 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fp_control99, align 4
  %or136 = or i32 %116, %.sink504
  store i32 %or136, ptr %fp_control99, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.end141.sink.split, %land.lhs.true.if.end141_crit_edge, %if.else121.if.end141_crit_edge
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %117 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %map, align 8
  %tobool142.not = icmp eq ptr %118, null
  br i1 %tobool142.not, label %if.else150, label %if.then145, !prof !42

if.then145:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %118, i32 1052672
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  br label %if.end152

if.else150:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  %call151 = call i32 @nvif_object_rd(ptr noundef %device2, i32 noundef 4, i64 noundef 1052672) #6
  br label %if.end152

if.end152:                                        ; preds = %if.else150, %if.then145
  %_data.0 = phi i32 [ %119, %if.then145 ], [ %call151, %if.else150 ]
  %and154 = and i32 %_data.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end159_crit_edge, label %if.then156

if.end152.if.end159_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fp_control99, align 4
  %or158 = or i32 %121, 16777216
  store i32 %or158, ptr %fp_control99, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end152.if.end159_crit_edge
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %122 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dcb, align 4
  %location = getelementptr inbounds %struct.dcb_output, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp161.not = icmp eq i8 %125, 0
  br i1 %cmp161.not, label %if.end159.if.end169_crit_edge, label %land.lhs.true163

if.end159.if.end169_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

land.lhs.true163:                                 ; preds = %if.end159
  %126 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %127)
  %cmp164 = icmp sgt i32 %127, 165000
  br i1 %cmp164, label %if.then166, label %land.lhs.true163.if.end169_crit_edge

land.lhs.true163.if.end169_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then166:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fp_control99, align 4
  %or168 = or i32 %129, 33554432
  store i32 %or168, ptr %fp_control99, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %land.lhs.true163.if.end169_crit_edge, %if.end159.if.end169_crit_edge
  %130 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp171 = icmp eq i32 %133, 3
  br i1 %cmp171, label %if.then173, label %if.else194

if.then173:                                       ; preds = %if.end169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %duallink) #6
  %134 = ptrtoint ptr %duallink to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %duallink, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #6
  %135 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %dummy, align 1, !annotation !50
  %edid = getelementptr inbounds %struct.nouveau_connector, ptr %call2.lcssa.i, i32 0, i32 9
  %136 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %edid, align 4
  %tobool174.not = icmp eq ptr %137, null
  br i1 %tobool174.not, label %if.then173.if.else185_crit_edge, label %land.lhs.true175

if.then173.if.else185_crit_edge:                  ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else185

land.lhs.true175:                                 ; preds = %if.then173
  %type176 = getelementptr inbounds %struct.nouveau_connector, ptr %call2.lcssa.i, i32 0, i32 1
  %138 = ptrtoint ptr %type176 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %type176, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %139)
  %cmp177 = icmp eq i32 %139, 65
  br i1 %cmp177, label %if.then179, label %land.lhs.true175.if.else185_crit_edge

land.lhs.true175.if.else185_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else185

if.then179:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx181 = getelementptr i8, ptr %137, i32 121
  %140 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx181, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %141)
  %cmp183 = icmp eq i8 %141, 2
  %frombool = zext i1 %cmp183 to i8
  br label %if.end188

if.else185:                                       ; preds = %land.lhs.true175.if.else185_crit_edge, %if.then173.if.else185_crit_edge
  %142 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mode12, align 4
  %call187 = call i32 @nouveau_bios_parse_lvds_table(ptr noundef %1, i32 noundef %143, ptr noundef nonnull %duallink, ptr noundef nonnull %dummy) #6
  %144 = ptrtoint ptr %duallink to i32
  call void @__asan_load1_noabort(i32 %144)
  %.pr = load i8, ptr %duallink, align 1
  br label %if.end188

if.end188:                                        ; preds = %if.else185, %if.then179
  %145 = phi i8 [ %.pr, %if.else185 ], [ %frombool, %if.then179 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool189.not = icmp eq i8 %145, 0
  br i1 %tobool189.not, label %if.end188.if.end193_crit_edge, label %if.then190

if.end188.if.end193_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

if.then190:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fp_control99, align 4
  %or192 = or i32 %147, -2147483648
  store i32 %or192, ptr %fp_control99, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.end188.if.end193_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %duallink) #6
  br label %if.end202

if.else194:                                       ; preds = %if.end169
  %148 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %149)
  %cmp196 = icmp sgt i32 %149, 165000
  br i1 %cmp196, label %if.then198, label %if.else194.if.end202_crit_edge

if.else194.if.end202_crit_edge:                   ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202

if.then198:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #8
  %150 = ptrtoint ptr %fp_control99 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fp_control99, align 4
  %or200 = or i32 %151, -2147483648
  store i32 %or200, ptr %fp_control99, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.else194.if.end202_crit_edge, %if.end193
  %fp_debug_0 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 33
  %152 = ptrtoint ptr %fp_debug_0 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 17830289, ptr %fp_debug_0, align 4
  %fp_debug_1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 34
  %153 = ptrtoint ptr %fp_debug_1 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %fp_debug_1, align 4
  %fp_debug_2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 35
  %154 = ptrtoint ptr %fp_debug_2 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %fp_debug_2, align 4
  %hdisplay203 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %155 = ptrtoint ptr %hdisplay203 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %hdisplay203, align 4
  %conv204 = zext i16 %156 to i32
  %mul = shl nuw nsw i32 %conv204, 12
  %vdisplay205 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %157 = ptrtoint ptr %vdisplay205 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %vdisplay205, align 2
  %conv206 = zext i16 %158 to i32
  %div = udiv i32 %mul, %conv206
  %159 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %hdisplay, align 4
  %conv208 = zext i16 %160 to i32
  %mul209 = shl nuw nsw i32 %conv208, 12
  %161 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %vdisplay, align 2
  %conv211 = zext i16 %162 to i32
  %div212 = udiv i32 %mul209, %conv211
  %163 = ptrtoint ptr %scaling_mode to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %scaling_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %164)
  %cmp214 = icmp ne i32 %164, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div212)
  %cmp217.not = icmp eq i32 %div, %div212
  %or.cond = select i1 %cmp214, i1 true, i1 %cmp217.not
  br i1 %or.cond, label %if.end202.if.end283_crit_edge, label %if.then219

if.end202.if.end283_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

if.then219:                                       ; preds = %if.end202
  %165 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev_private.i, align 4
  %167 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i489 = getelementptr i8, ptr %168, i32 -102
  %169 = ptrtoint ptr %device.i.i489 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %device.i.i489, align 2
  %171 = and i16 %170, 4080
  %family.i.i490 = getelementptr inbounds %struct.nouveau_drm, ptr %166, i32 0, i32 2, i32 3, i32 1, i32 4
  %172 = ptrtoint ptr %family.i.i490 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %family.i.i490, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %173)
  %cmp.i.i491 = icmp ugt i8 %173, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %171)
  %cmp5.not.i.i492 = icmp ne i16 %171, 256
  %or.cond.i.i493 = select i1 %cmp.i.i491, i1 %cmp5.not.i.i492, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %171)
  %cmp8.not.i.i494 = icmp ne i16 %171, 336
  %or.cond21.i.i495 = select i1 %or.cond.i.i493, i1 %cmp8.not.i.i494, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %171)
  %cmp11.not.i.i496 = icmp ne i16 %171, 416
  %or.cond22.i.i497 = select i1 %or.cond21.i.i495, i1 %cmp11.not.i.i496, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %171)
  %cmp14.not.i.i498 = icmp ne i16 %171, 512
  %or.cond23.i.i499 = select i1 %or.cond22.i.i497, i1 %cmp14.not.i.i498, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %171)
  %cmp.i500 = icmp ne i16 %171, 272
  %spec.select.i501 = select i1 %or.cond23.i.i499, i1 %cmp.i500, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div212)
  %cmp222 = icmp ult i32 %div, %div212
  br i1 %cmp222, label %if.then224, label %if.then219.if.end250_crit_edge

if.then219.if.end250_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end250

if.then224:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #8
  %mul227 = shl nuw nsw i32 %conv206, 12
  %div230 = udiv i32 %mul227, %conv211
  %conv232 = zext i1 %spec.select.i501 to i32
  %shr = lshr i32 %div230, %conv232
  %and233 = and i32 %shr, 4095
  %or234 = or i32 %and233, 4096
  %174 = ptrtoint ptr %fp_debug_1 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or234, ptr %fp_debug_1, align 4
  %175 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %hdisplay, align 4
  %conv237 = zext i16 %176 to i32
  %177 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %vdisplay, align 2
  %conv239 = zext i16 %178 to i32
  %mul240 = mul i32 %div, %conv239
  %div241480 = lshr i32 %mul240, 12
  %sub242 = sub nsw i32 %conv237, %div241480
  %div243481 = lshr i32 %sub242, 1
  %179 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx65, align 4
  %add = add i32 %div243481, %180
  store i32 %add, ptr %arrayidx65, align 4
  %181 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx70, align 4
  %sub249 = sub i32 %182, %div243481
  store i32 %sub249, ptr %arrayidx70, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then224, %if.then219.if.end250_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div212)
  %cmp251 = icmp ugt i32 %div, %div212
  br i1 %cmp251, label %if.then253, label %if.end250.if.end283_crit_edge

if.end250.if.end283_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

if.then253:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %hdisplay203 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %hdisplay203, align 4
  %conv255 = zext i16 %184 to i32
  %mul256 = shl nuw nsw i32 %conv255, 12
  %185 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %hdisplay, align 4
  %conv258 = zext i16 %186 to i32
  %div259 = udiv i32 %mul256, %conv258
  %conv261 = zext i1 %spec.select.i501 to i32
  %shr262 = lshr i32 %div259, %conv261
  %shl263 = shl i32 %shr262, 16
  %and264 = and i32 %shl263, 268369920
  %or265 = or i32 %and264, 268435456
  %187 = ptrtoint ptr %fp_debug_1 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or265, ptr %fp_debug_1, align 4
  %188 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %vdisplay, align 2
  %conv268 = zext i16 %189 to i32
  %190 = load i16, ptr %hdisplay, align 4
  %conv270 = zext i16 %190 to i32
  %mul271 = shl nuw nsw i32 %conv270, 12
  %div272 = udiv i32 %mul271, %div
  %sub273 = sub nsw i32 %conv268, %div272
  %div274479 = lshr i32 %sub273, 1
  %191 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx93, align 4
  %add277 = add i32 %div274479, %192
  store i32 %add277, ptr %arrayidx93, align 4
  %193 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx98, align 4
  %sub281 = sub i32 %194, %div274479
  store i32 %sub281, ptr %arrayidx98, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then253, %if.end250.if.end283_crit_edge, %if.end202.if.end283_crit_edge
  %dithering_mode = getelementptr inbounds %struct.nouveau_connector, ptr %call2.lcssa.i, i32 0, i32 6
  %195 = ptrtoint ptr %dithering_mode to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %dithering_mode, align 8
  %197 = zext i32 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %196, label %if.end283.if.else315_crit_edge [
    i32 1, label %if.end283.if.then295_crit_edge
    i32 34, label %land.lhs.true290
  ]

if.end283.if.then295_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then295

if.end283.if.else315_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else315

land.lhs.true290:                                 ; preds = %if.end283
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 4
  %198 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.drm_format_info, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %depth, align 4
  %conv291 = zext i8 %201 to i32
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %call2.lcssa.i, i32 0, i32 20, i32 2
  %202 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %bpc, align 8
  %mul292 = mul i32 %203, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul292, i32 %conv291)
  %cmp293 = icmp ult i32 %mul292, %conv291
  br i1 %cmp293, label %land.lhs.true290.if.then295_crit_edge, label %land.lhs.true290.if.else315_crit_edge

land.lhs.true290.if.else315_crit_edge:            ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else315

land.lhs.true290.if.then295_crit_edge:            ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then295

if.then295:                                       ; preds = %land.lhs.true290.if.then295_crit_edge, %if.end283.if.then295_crit_edge
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %204 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %205)
  %cmp299 = icmp eq i16 %205, 17
  %dither = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 30
  %206 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %dither, align 4
  br i1 %cmp299, label %if.then301, label %if.else304

if.then301:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #8
  %or302 = or i32 %207, 65536
  %dither303 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 30
  %208 = ptrtoint ptr %dither303 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %or302, ptr %dither303, align 4
  br label %if.end345

if.else304:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #8
  %or306 = or i32 %207, 1
  %dither307 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 30
  %209 = ptrtoint ptr %dither307 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %or306, ptr %dither307, align 4
  %arrayidx310 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 0
  %210 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -454761244, ptr %arrayidx310, align 4
  %arrayidx313 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 3
  %211 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 1145324612, ptr %arrayidx313, align 4
  %arrayidx310.1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 1
  %212 = ptrtoint ptr %arrayidx310.1 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -454761244, ptr %arrayidx310.1, align 4
  %arrayidx313.1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 4
  %213 = ptrtoint ptr %arrayidx313.1 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1145324612, ptr %arrayidx313.1, align 4
  %arrayidx310.2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 2
  %214 = ptrtoint ptr %arrayidx310.2 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -454761244, ptr %arrayidx310.2, align 4
  %arrayidx313.2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 5
  %215 = ptrtoint ptr %arrayidx313.2 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 1145324612, ptr %arrayidx313.2, align 4
  br label %if.end345

if.else315:                                       ; preds = %land.lhs.true290.if.else315_crit_edge, %if.end283.if.else315_crit_edge
  %chipset319 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %216 = ptrtoint ptr %chipset319 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %chipset319, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %217)
  %cmp321.not = icmp eq i16 %217, 17
  br i1 %cmp321.not, label %if.else315.if.end342_crit_edge, label %for.body328.preheader

if.else315.if.end342_crit_edge:                   ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

for.body328.preheader:                            ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx330 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 32, i32 0
  %218 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx330, align 4
  %arrayidx332 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 0
  %220 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %arrayidx332, align 4
  %arrayidx335 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 32, i32 3
  %221 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx335, align 4
  %arrayidx338 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 3
  %223 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %arrayidx338, align 4
  %arrayidx330.1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 32, i32 1
  %224 = ptrtoint ptr %arrayidx330.1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx330.1, align 4
  %arrayidx332.1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 1
  %226 = ptrtoint ptr %arrayidx332.1 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %arrayidx332.1, align 4
  %arrayidx335.1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 32, i32 4
  %227 = ptrtoint ptr %arrayidx335.1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx335.1, align 4
  %arrayidx338.1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 4
  %229 = ptrtoint ptr %arrayidx338.1 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %arrayidx338.1, align 4
  %arrayidx330.2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 32, i32 2
  %230 = ptrtoint ptr %arrayidx330.2 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx330.2, align 4
  %arrayidx332.2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 2
  %232 = ptrtoint ptr %arrayidx332.2 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %arrayidx332.2, align 4
  %arrayidx335.2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 32, i32 5
  %233 = ptrtoint ptr %arrayidx335.2 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx335.2, align 4
  %arrayidx338.2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 32, i32 5
  %235 = ptrtoint ptr %arrayidx338.2 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %arrayidx338.2, align 4
  br label %if.end342

if.end342:                                        ; preds = %for.body328.preheader, %if.else315.if.end342_crit_edge
  %dither343 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %saved_reg, i32 0, i32 %11, i32 30
  %236 = ptrtoint ptr %dither343 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %dither343, align 4
  %dither344 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 30
  %238 = ptrtoint ptr %dither344 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %dither344, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.end342, %if.else304, %if.then301
  %fp_margin_color = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 36
  %239 = ptrtoint ptr %fp_margin_color to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %fp_margin_color, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_tmds_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_lvds_script(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dac_output_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bios_parse_lvds_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_lvds_dpms(ptr nocapture noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc2 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc2, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %last_dpms = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 10
  %6 = ptrtoint ptr %last_dpms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_dpms, align 4
  %8 = and i32 %7, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mode)
  %cmp = icmp eq i32 %7, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode, ptr %last_dpms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %11 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.do.end18_crit_edge, label %do.body9

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %drm11 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %drm11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm11, align 8
  %dev12 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev12, align 8
  %dev13 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev13, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %18 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dcb, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %mode, i32 noundef %21) #10
  br label %do.end18

do.end18:                                         ; preds = %do.body9, %if.end.do.end18_crit_edge
  %22 = and i32 %mode, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp ne i32 %22, 0
  %or.cond = and i1 %23, %9
  br i1 %or.cond, label %do.end18.cleanup_crit_edge, label %if.end21

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %do.end18
  %dcb22 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %24 = ptrtoint ptr %dcb22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dcb22, align 4
  %26 = getelementptr inbounds %struct.dcb_output, ptr %25, i32 0, i32 13
  %use_power_scripts = getelementptr inbounds %struct.anon.96, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %use_power_scripts to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %use_power_scripts, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not = icmp eq i8 %28, 0
  br i1 %tobool23.not, label %if.end38, label %if.then24

if.then24:                                        ; preds = %if.end21
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %index27 = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %index27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 @nv04_dfp_get_bound_head(ptr noundef %1, ptr noundef %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %call29, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp30 = icmp eq i32 %mode, 0
  %31 = ptrtoint ptr %dcb22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dcb22, align 4
  br i1 %cmp30, label %if.end38.thread, label %if.end38.thread103

if.end38.thread:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %mode33 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 9
  %33 = ptrtoint ptr %mode33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode33, align 4
  %call34 = tail call i32 @call_lvds_script(ptr noundef %1, ptr noundef %32, i32 noundef %cond, i32 noundef 5, i32 noundef %34) #6
  tail call void @nv04_dfp_update_fp_control(ptr noundef %encoder, i32 noundef 0)
  br label %if.then40

if.end38.thread103:                               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 @call_lvds_script(ptr noundef %1, ptr noundef %32, i32 noundef %cond, i32 noundef 6, i32 noundef 0) #6
  tail call void @nv04_dfp_update_fp_control(ptr noundef %encoder, i32 noundef %mode)
  br label %if.else43

if.end38:                                         ; preds = %if.end21
  tail call void @nv04_dfp_update_fp_control(ptr noundef %encoder, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp39 = icmp eq i32 %mode, 0
  br i1 %cmp39, label %if.end38.if.then40_crit_edge, label %if.end38.if.else43_crit_edge

if.end38.if.else43_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else43

if.end38.if.then40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.then40:                                        ; preds = %if.end38.if.then40_crit_edge, %if.end38.thread
  %35 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %display.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = ptrtoint ptr %dcb22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dcb22, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %or.i, align 1
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  %cond.i = select i1 %tobool.not.i, i32 262144, i32 65536
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %42, i32 0, i32 8
  %46 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.not.i = icmp eq i8 %47, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then40.if.end49_crit_edge

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end.i:                                         ; preds = %if.then40
  %index42 = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %index42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.i = icmp eq i32 %49, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sel_clk.i = getelementptr inbounds %struct.nv04_mode_state, ptr %40, i32 0, i32 2
  %50 = ptrtoint ptr %sel_clk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sel_clk.i, align 4
  %or6.i = or i32 %51, %cond.i
  store i32 %or6.i, ptr %sel_clk.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %cond.i, -1
  %sel_clk7.i = getelementptr inbounds %struct.nv04_mode_state, ptr %40, i32 0, i32 2
  %52 = ptrtoint ptr %sel_clk7.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sel_clk7.i, align 4
  %and8.i = and i32 %53, %neg.i
  store i32 %and8.i, ptr %sel_clk7.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then5.i
  %54 = ptrtoint ptr %dcb22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dcb22, align 4
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp11.i = icmp eq i32 %57, 3
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end9.i.if.end49_crit_edge

if.end9.i.if.end49_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true.i:                                  ; preds = %if.end9.i
  %58 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_private.i, align 4
  %display.i.i42.i = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %display.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %display.i.i42.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %sel_clk14.i = getelementptr inbounds %struct.nv04_display, ptr %63, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %sel_clk14.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sel_clk14.i, align 4
  %and15.i = and i32 %65, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.end49_crit_edge, label %if.then17.i

land.lhs.true.i.if.end49_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %and21.i = and i32 %65, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond23.i = zext i1 %tobool22.not.i to i32
  %sel_clk24.i = getelementptr inbounds %struct.nv04_mode_state, ptr %40, i32 0, i32 2
  %66 = ptrtoint ptr %sel_clk24.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sel_clk24.i, align 4
  %and25.i = and i32 %67, -241
  %cond27.i = select i1 %tobool4.not.i, i32 16, i32 64
  %shl.i = shl nuw nsw i32 %cond27.i, %cond23.i
  %or29.i = or i32 %and25.i, %shl.i
  store i32 %or29.i, ptr %sel_clk24.i, align 4
  br label %if.end49

if.else43:                                        ; preds = %if.end38.if.else43_crit_edge, %if.end38.thread103
  %68 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 2, i32 3, i32 0, i32 6
  %70 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i, label %if.else.i91, label %if.then5.i90, !prof !42

if.then5.i90:                                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %71, i32 6817060
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %NVReadRAMDAC.exit

if.else.i91:                                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 2, i32 3
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef 6817060) #6
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i91, %if.then5.i90
  %_data.0.i = phi i32 [ %72, %if.then5.i90 ], [ %call10.i, %if.else.i91 ]
  %73 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 19
  %75 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %display.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %sel_clk = getelementptr inbounds %struct.nv04_mode_state, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %sel_clk to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %_data.0.i, ptr %sel_clk, align 4
  %80 = load ptr, ptr %dev_private.i, align 4
  %display.i.i93 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 19
  %81 = ptrtoint ptr %display.i.i93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %display.i.i93, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %sel_clk48 = getelementptr inbounds %struct.nv04_mode_state, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %sel_clk48 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sel_clk48, align 4
  %and = and i32 %86, -241
  store i32 %and, ptr %sel_clk48, align 4
  br label %if.end49

if.end49:                                         ; preds = %NVReadRAMDAC.exit, %if.then17.i, %land.lhs.true.i.if.end49_crit_edge, %if.end9.i.if.end49_crit_edge, %if.then40.if.end49_crit_edge
  %87 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_private.i, align 4
  %display.i.i95 = getelementptr inbounds %struct.nouveau_drm, ptr %88, i32 0, i32 19
  %89 = ptrtoint ptr %display.i.i95 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %display.i.i95, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %sel_clk52 = getelementptr inbounds %struct.nv04_mode_state, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %sel_clk52 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sel_clk52, align 4
  %map.i97 = getelementptr inbounds %struct.nouveau_drm, ptr %88, i32 0, i32 2, i32 3, i32 0, i32 6
  %95 = ptrtoint ptr %map.i97 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %map.i97, align 8
  %tobool2.not.i98 = icmp eq ptr %96, null
  br i1 %tobool2.not.i98, label %if.else.i101, label %do.body.i, !prof !42

do.body.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %map.i97 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map.i97, align 8
  %add.ptr.i99 = getelementptr i8, ptr %98, i32 6817060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %94) #6, !srcloc !44
  br label %cleanup

if.else.i101:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i100 = getelementptr inbounds %struct.nouveau_drm, ptr %88, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i100, i32 noundef 4, i64 noundef 6817060, i32 noundef %94) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else.i101, %do.body.i, %do.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_hw_pllvals_to_clk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dfp_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_funcs.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %destroy = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy, align 4
  tail call void %3(ptr noundef %encoder) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #6
  tail call void @kfree(ptr noundef %encoder) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_i2c_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !25, !26, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @nv04_tmds_helper_funcs, !1, !"nv04_tmds_helper_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 665, i32 46}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 571, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv04_tmds_dpms._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv04_tmds_dpms._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 481, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nv04_dfp_commit._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nv04_dfp_commit._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 297, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nv04_dfp_mode_set._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nv04_dfp_mode_set._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @nv04_lvds_helper_funcs, !21, !"nv04_lvds_helper_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 656, i32 46}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 526, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nv04_lvds_dpms._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nv04_lvds_dpms._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @nv04_dfp_funcs, !28, !"nv04_dfp_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 674, i32 39}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 634, i32 19}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dfp.c", i32 648, i32 33}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2157954265}
!44 = !{i64 4509557}
!45 = !{i64 4509975}
!46 = !{i64 2157953204}
!47 = !{i8 0, i8 9}
!48 = !{i64 2152050705}
!49 = !{i64 4509360}
!50 = !{!"auto-init"}
!51 = !{i64 2157985753}
!52 = !{i8 0, i8 2}
