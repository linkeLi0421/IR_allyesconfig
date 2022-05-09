; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/disp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_audio_component_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_dp_mst_topology_cbs = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nv50_disp_core_channel_dma_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.nv50_msto = type { %struct.drm_encoder, ptr, ptr, i8 }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.145, %struct.anon.146, %struct.anon.148, %union.anon.149 }
%struct.anon.145 = type { i32, i32 }
%struct.anon.146 = type { i32, %struct.anon.147, i8 }
%struct.anon.147 = type { i32, i32, i32 }
%struct.anon.148 = type { i32, i32 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i8 }
%struct.nv50_mstm = type { ptr, %struct.drm_dp_mst_topology_mgr, i8, i8, i8, i8, i8, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.100, %struct.anon.101, %struct.anon.106, ptr, %struct.anon.107, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.108, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.120 }
%struct.nvif_parent = type { ptr }
%struct.anon.100 = type { ptr, i32, i32, i8 }
%struct.anon.101 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.102] }
%struct.anon.102 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.106 = type { i64, i64 }
%struct.anon.107 = type { i32, i64 }
%struct.anon.108 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.109, i8 }
%union.anon.109 = type { %struct.anon.113 }
%struct.anon.113 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.115 = type { i32 }
%struct.anon.116 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.117 = type { i16, i16 }
%struct.anon.118 = type { i16, i16, i16, %struct.anon.119, i16 }
%struct.anon.119 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.91, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.99, ptr, i32, ptr, i8, i32 }
%struct.anon.91 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.99 = type { i32, ptr }
%struct.anon.165 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_dp_mst_link_v0 }
%struct.nv50_disp_mthd_v1 = type { i8, i8, i16, i16, [2 x i8] }
%struct.nv50_disp_sor_dp_mst_link_v0 = type { i8, i8, [6 x i8] }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.121, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.122, %struct.anon.129, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.anon.121 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.129 = type { i8 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.anon.244 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.217, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.217 = type { %struct.notifier_block }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.164, ptr, ptr, ptr, ptr, ptr }
%struct.anon.164 = type { ptr }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.161, %struct.anon.162, %struct.anon.163, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.anon.161 = type { i32, i8, i32, i32 }
%struct.anon.162 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.163 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.anon.250 = type { %struct.nvkm_object, ptr }
%struct.nv50_outp_func = type { ptr, ptr }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.anon.260 = type { %struct.nvkm_object, ptr }
%struct.anon.262 = type { %struct.nvkm_object, ptr }
%struct.drm_audio_component = type { ptr, ptr, ptr, %struct.completion }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.nv50_atom = type { %struct.drm_atomic_state, %struct.list_head, i8, i8 }
%struct.nv50_outp_atom = type { %struct.list_head, ptr, i8, %union.nv50_outp_atom_mask, %union.nv50_outp_atom_mask }
%union.nv50_outp_atom_mask = type { %struct.anon.246 }
%struct.anon.246 = type { i8 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.151, %struct.anon.152, [4 x i8], %struct.anon.153, %struct.anon.155, %struct.anon.156, %struct.anon.157, %struct.anon.158, %struct.anon.159, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.151 = type { i32, i16 }
%struct.anon.152 = type { i32, i16, i32, i32 }
%struct.anon.153 = type { i32, [4 x i8], %struct.anon.154 }
%struct.anon.154 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.155 = type { [12 x i32], i8 }
%struct.anon.156 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.157 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.158 = type { i16, i16 }
%struct.anon.159 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.160 }
%struct.anon.160 = type { i8 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.130, %struct.anon.131, %struct.nv50_head_mode, %struct.anon.134, %struct.anon.135, %struct.anon.136, %struct.anon.137, %struct.anon.138, %struct.anon.139, %struct.anon.140, %struct.anon.142, %struct.nv50_crc_atom, %struct.anon.143, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.anon.130 = type { i32, i32, i32 }
%struct.anon.131 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.132, %struct.anon.133 }
%struct.anon.132 = type { i16, i16, i16, i16 }
%struct.anon.133 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.134 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.135 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.136 = type { i8, i32, [6 x i8], i8 }
%struct.anon.137 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.138 = type { i8 }
%struct.anon.139 = type { i8 }
%struct.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i16, i16 }
%struct.anon.142 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.143 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.144 }
%struct.anon.144 = type { i16 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.248 = type { %struct.nv50_disp_mthd_v1 }
%struct.anon.247 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_dp_mst_vcpi_v0 }
%struct.nv50_disp_sor_dp_mst_vcpi_v0 = type { i8, [1 x i8], i8, i8, i16, i16 }
%struct.nv50_mstc = type { ptr, ptr, %struct.drm_connector, ptr, ptr }
%struct.drm_dp_mst_port = type { %struct.kref, %struct.kref, %struct.drm_dp_mst_topology_ref_history, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.list_head, ptr, %struct.drm_dp_aux, ptr, %struct.drm_dp_vcpi, ptr, ptr, ptr, i8, i8 }
%struct.drm_dp_mst_topology_ref_history = type { ptr, i32 }
%struct.drm_dp_vcpi = type { i32, i32, i32, i32 }
%struct.drm_dp_payload = type { i32, i32, i32, i32 }
%struct.anon.249 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_acquire_v0 }
%struct.nv50_disp_acquire_v0 = type { i8, i8, i8, i8, [4 x i8] }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.anon.252 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hdmi_pwr_v0 }
%struct.nv50_disp_sor_hdmi_pwr_v0 = type { i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.anon.251 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hda_eld_v0 }
%struct.nv50_disp_sor_hda_eld_v0 = type { i8, [7 x i8], [0 x i8] }
%struct.nouveau_backlight = type { ptr, %struct.drm_edp_backlight_info, i8, i32 }
%struct.drm_edp_backlight_info = type { i8, i8, i16, i8 }
%struct.drm_audio_component_audio_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.254 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hdmi_pwr_v0, [34 x i8] }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.anon.253 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_lvds_script_v0 }
%struct.nv50_disp_sor_lvds_script_v0 = type { i8, [1 x i8], i16, [4 x i8] }
%struct.anon.258 = type { %struct.anon.259, [128 x i8] }
%struct.anon.259 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hda_eld_v0 }
%struct.anon.261 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_dac_load_v0 }
%struct.nv50_disp_dac_load_v0 = type { i8, i8, [2 x i8], i32 }

@__UNIQUE_ID_kms_vram_pushbuf323 = internal constant [81 x i8] c"nouveau.parm=kms_vram_pushbuf:Place EVO/NVD push buffers in VRAM (default: auto)\00", section ".modinfo", align 1
@__param_str_kms_vram_pushbuf = internal constant [25 x i8] c"nouveau.kms_vram_pushbuf\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nv50_dmac_vram_pushbuf = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_kms_vram_pushbuf = internal constant %struct.kernel_param { ptr @__param_str_kms_vram_pushbuf, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.77 { ptr @nv50_dmac_vram_pushbuf } }, section "__param", align 4
@__UNIQUE_ID_kms_vram_pushbuftype324 = internal constant [38 x i8] c"nouveau.parmtype=kms_vram_pushbuf:int\00", section ".modinfo", align 1
@nv50_dmac_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dmac->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmsChanPush\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kmsSyncCtxDma\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kmsVramCtxDma\00", [18 x i8] zeroinitializer }, align 32
@nv50_mstm_service._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1487, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to handle ESI on %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_mstm_service\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/disp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_mstm_service._entry_ptr = internal global ptr @nv50_mstm_service._entry, section ".printk_index", align 4
@nv50_display_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&disp->mutex\00", [19 x i8] zeroinitializer }, align 32
@nv50_disp_func = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @nouveau_user_framebuffer_create, ptr null, ptr @nouveau_fbcon_output_poll_changed, ptr null, ptr @nv50_disp_atomic_check, ptr @nv50_disp_atomic_commit, ptr @nv50_disp_atomic_state_alloc, ptr @nv50_disp_atomic_state_clear, ptr @nv50_disp_atomic_state_free }, [60 x i8] zeroinitializer }, align 32
@wndwc57e_modifiers = external dso_local constant [0 x i64], align 8
@nv50_display_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 2847, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: failed to create encoder %d/%d/%d: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_display_create\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nv50_display_create._entry_ptr = internal global ptr @nv50_display_create._entry, section ".printk_index", align 4
@nv50_display_create._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.6, i32 2858, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: %s has no encoders, removing\0A\00", [62 x i8] zeroinitializer }, align 32
@nv50_display_create._entry_ptr.15 = internal global ptr @nv50_display_create._entry.13, section ".printk_index", align 4
@disp50xx_modifiers = dso_local constant { [20 x i64], [32 x i8] } { [20 x i64] [i64 216172782119526416, i64 216172782119526417, i64 216172782119526418, i64 216172782119526419, i64 216172782119526420, i64 216172782119526421, i64 216172782119518224, i64 216172782119518225, i64 216172782119518226, i64 216172782119518227, i64 216172782119518228, i64 216172782119518229, i64 216172782119485456, i64 216172782119485457, i64 216172782119485458, i64 216172782119485459, i64 216172782119485460, i64 216172782119485461, i64 0, i64 72057594037927935], [32 x i8] zeroinitializer }, align 32
@disp90xx_modifiers = dso_local constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 216172782119018512, i64 216172782119018513, i64 216172782119018514, i64 216172782119018515, i64 216172782119018516, i64 216172782119018517, i64 0, i64 72057594037927935], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s/%08x:%s] %08x: %08x jump 0x%08x - %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.nv50_dmac_wind = private unnamed_addr constant [15 x i8] c"nv50_dmac_wind\00", align 1
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmsChan\00", [24 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_audio_component_bind_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @nv50_audio_component_bind, ptr @nv50_audio_component_unbind }, [24 x i8] zeroinitializer }, align 32
@nv50_audio_component_ops = internal constant { %struct.drm_audio_component_ops, [36 x i8] } { %struct.drm_audio_component_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_audio_component_get_eld }, [36 x i8] zeroinitializer }, align 32
@nv50_wndw = external dso_local constant %struct.drm_plane_funcs, align 4
@nv50_disp_atomic_commit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&state->commit_work)\00", [57 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@nv50_disp_atomic_commit_tail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 2133, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: commit %d %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nv50_disp_atomic_commit_tail\00", [35 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr = internal global ptr @nv50_disp_atomic_commit_tail._entry, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 2149, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: clr %04x (set %04x)\0A\00", [35 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.28 = internal global ptr @nv50_disp_atomic_commit_tail._entry.26, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.6, i32 2168, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: clr %02x (set %02x)\0A\00", [35 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.31 = internal global ptr @nv50_disp_atomic_commit_tail._entry.29, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.6, i32 2184, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.33 = internal global ptr @nv50_disp_atomic_commit_tail._entry.32, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.6, i32 2223, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: set %02x (clr %02x)\0A\00", [35 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.36 = internal global ptr @nv50_disp_atomic_commit_tail._entry.34, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.6, i32 2240, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: set %04x (clr %04x)\0A\00", [35 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.39 = internal global ptr @nv50_disp_atomic_commit_tail._entry.37, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.6, i32 2291, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.41 = internal global ptr @nv50_disp_atomic_commit_tail._entry.40, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.6, i32 2305, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.43 = internal global ptr @nv50_disp_atomic_commit_tail._entry.42, section ".printk_index", align 4
@nv50_disp_atomic_commit_tail._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.6, i32 2335, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s: timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_tail._entry_ptr.47 = internal global ptr @nv50_disp_atomic_commit_tail._entry.44, section ".printk_index", align 4
@nv50_disp_atomic_commit_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 2075, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: commit core %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nv50_disp_atomic_commit_core\00", [35 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_core._entry_ptr = internal global ptr @nv50_disp_atomic_commit_core._entry, section ".printk_index", align 4
@nv50_disp_atomic_commit_core._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.6, i32 2089, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: core notifier timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_disp_atomic_commit_core._entry_ptr.52 = internal global ptr @nv50_disp_atomic_commit_core._entry.50, section ".printk_index", align 4
@nv50_mstm_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 1417, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: mstm prepare\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_mstm_prepare\00", [46 x i8] zeroinitializer }, align 32
@nv50_mstm_prepare._entry_ptr = internal global ptr @nv50_mstm_prepare._entry, section ".printk_index", align 4
@nv50_msto_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.6, i32 1019, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: msto prepare\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_msto_prepare\00", [46 x i8] zeroinitializer }, align 32
@nv50_msto_prepare._entry_ptr = internal global ptr @nv50_msto_prepare._entry, section ".printk_index", align 4
@nv50_msto_prepare._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.6, i32 1033, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s: %s: %02x %02x %04x %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@nv50_msto_prepare._entry_ptr.59 = internal global ptr @nv50_msto_prepare._entry.57, section ".printk_index", align 4
@nv50_msto_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 965, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s: vcpi %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_msto_payload\00", [46 x i8] zeroinitializer }, align 32
@nv50_msto_payload._entry_ptr = internal global ptr @nv50_msto_payload._entry, section ".printk_index", align 4
@nv50_msto_payload._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.6, i32 970, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: %s: %d: vcpi %d start 0x%02x slots 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@nv50_msto_payload._entry_ptr.64 = internal global ptr @nv50_msto_payload._entry.62, section ".printk_index", align 4
@nv50_mstm_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 1394, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: mstm cleanup\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_mstm_cleanup\00", [46 x i8] zeroinitializer }, align 32
@nv50_mstm_cleanup._entry_ptr = internal global ptr @nv50_mstm_cleanup._entry, section ".printk_index", align 4
@nv50_msto_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.6, i32 992, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: msto cleanup\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_msto_cleanup\00", [46 x i8] zeroinitializer }, align 32
@nv50_msto_cleanup._entry_ptr = internal global ptr @nv50_msto_cleanup._entry, section ".printk_index", align 4
@nv50_msto = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv50_msto_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mst-%d\00", [25 x i8] zeroinitializer }, align 32
@nv50_msto_help = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_msto_atomic_disable, ptr @nv50_msto_atomic_enable, ptr null, ptr null, ptr @nv50_msto_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate VCPI\0A\00", [39 x i8] zeroinitializer }, align 32
@nv50_outp_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 358, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: error acquiring output path: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_outp_acquire\00", [46 x i8] zeroinitializer }, align 32
@nv50_outp_acquire._entry_ptr = internal global ptr @nv50_outp_acquire._entry, section ".printk_index", align 4
@nv50_outp_atomic_check_view._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.6, i32 379, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %s atomic_check\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nv50_outp_atomic_check_view\00", [36 x i8] zeroinitializer }, align 32
@nv50_outp_atomic_check_view._entry_ptr = internal global ptr @nv50_outp_atomic_check_view._entry, section ".printk_index", align 4
@nv50_sor_func = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv50_sor_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sor-%04x-%04x\00", [18 x i8] zeroinitializer }, align 32
@nv50_sor_help = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_sor_atomic_disable, ptr @nv50_sor_atomic_enable, ptr null, ptr null, ptr @nv50_outp_atomic_check }, [44 x i8] zeroinitializer }, align 32
@nv50_sor_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&nv_encoder->dp.hpd_irq_lock\00", [35 x i8] zeroinitializer }, align 32
@nv50_sor_atomic_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 1678, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Failed to disable backlight on [CONNECTOR:%d:%s]: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nv50_sor_atomic_disable\00", [40 x i8] zeroinitializer }, align 32
@nv50_sor_atomic_disable._entry_ptr = internal global ptr @nv50_sor_atomic_disable._entry, section ".printk_index", align 4
@nv50_hdmi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 905, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failure to read SCDC_TMDS_CONFIG: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nv50_hdmi_enable\00", [47 x i8] zeroinitializer }, align 32
@nv50_hdmi_enable._entry_ptr = internal global ptr @nv50_hdmi_enable._entry, section ".printk_index", align 4
@nv50_hdmi_enable._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.6, i32 914, ptr @.str.46, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Failure to write SCDC_TMDS_CONFIG = 0x%02x: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nv50_hdmi_enable._entry_ptr.83 = internal global ptr @nv50_hdmi_enable._entry.81, section ".printk_index", align 4
@nv50_outp_dump_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.6, i32 318, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %s caps: dp_interlace=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_outp_dump_caps\00", [44 x i8] zeroinitializer }, align 32
@nv50_outp_dump_caps._entry_ptr = internal global ptr @nv50_outp_dump_caps._entry, section ".printk_index", align 4
@nv50_mstm = internal constant { %struct.drm_dp_mst_topology_cbs, [24 x i8] } { %struct.drm_dp_mst_topology_cbs { ptr @nv50_mstm_add_connector, ptr null }, [24 x i8] zeroinitializer }, align 32
@nv50_mstc = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @nouveau_conn_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @nv50_mstc_destroy, ptr @nouveau_conn_atomic_duplicate_state, ptr @nouveau_conn_atomic_destroy_state, ptr @nouveau_conn_atomic_set_property, ptr @nouveau_conn_atomic_get_property, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nv50_mstc_help = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @nv50_mstc_get_modes, ptr @nv50_mstc_detect, ptr @nv50_mstc_mode_valid, ptr null, ptr null, ptr @nv50_mstc_atomic_best_encoder, ptr @nv50_mstc_atomic_check, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@nv50_dac_func = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv50_dac_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dac-%04x-%04x\00", [18 x i8] zeroinitializer }, align 32
@nv50_dac_help = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_dac_detect, ptr @nv50_dac_atomic_disable, ptr @nv50_dac_atomic_enable, ptr null, ptr null, ptr @nv50_outp_atomic_check }, [44 x i8] zeroinitializer }, align 32
@nv50_pior_func = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv50_pior_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pior-%04x-%04x\00", [17 x i8] zeroinitializer }, align 32
@nv50_pior_help = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_pior_atomic_disable, ptr @nv50_pior_atomic_enable, ptr null, ptr null, ptr @nv50_pior_atomic_check }, [44 x i8] zeroinitializer }, align 32
@nv50_audio_component_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&drm->audio.lock\00", [47 x i8] zeroinitializer }, align 32
@switch.table.nv50_dac_atomic_enable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"nv50_dmac_vram_pushbuf\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 225, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 238, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 253, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 283, i32 43 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 295, i32 43 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1486, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2708, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"nv50_disp_func\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2607, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2845, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2857, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"disp50xx_modifiers\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2883, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"disp90xx_modifiers\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2912, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 184, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 93, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant [30 x i8] c"nv50_audio_component_bind_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 697, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant [25 x i8] c"nv50_audio_component_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 659, i32 45 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2394, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2133, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2148, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2167, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2183, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2222, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2239, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2290, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2304, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2335, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2075, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2089, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1417, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1019, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1030, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 965, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 968, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1394, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 992, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [10 x i8] c"nv50_msto\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1172, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1187, i32 35 }
@___asan_gen_.317 = private unnamed_addr constant [15 x i8] c"nv50_msto_help\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1157, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1123, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 358, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 379, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [14 x i8] c"nv50_sor_func\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1835, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1879, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"nv50_sor_help\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1815, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1891, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1677, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 905, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 913, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 317, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [10 x i8] c"nv50_mstm\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1452, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant [10 x i8] c"nv50_mstc\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1336, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant [15 x i8] c"nv50_mstc_help\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1316, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant [14 x i8] c"nv50_dac_func\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 571, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 598, i32 5 }
@___asan_gen_.404 = private unnamed_addr constant [14 x i8] c"nv50_dac_help\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 556, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant [15 x i8] c"nv50_pior_func\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2007, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2051, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant [15 x i8] c"nv50_pior_help\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1993, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/disp.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 709, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [36 x i8] c"switch.table.nv50_dac_atomic_enable\00", align 1
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_kms_vram_pushbuf323, ptr @__UNIQUE_ID_kms_vram_pushbuftype324, ptr @__param_kms_vram_pushbuf, ptr @nv50_disp_atomic_commit_core._entry, ptr @nv50_disp_atomic_commit_core._entry.50, ptr @nv50_disp_atomic_commit_core._entry_ptr, ptr @nv50_disp_atomic_commit_core._entry_ptr.52, ptr @nv50_disp_atomic_commit_tail._entry, ptr @nv50_disp_atomic_commit_tail._entry.26, ptr @nv50_disp_atomic_commit_tail._entry.29, ptr @nv50_disp_atomic_commit_tail._entry.32, ptr @nv50_disp_atomic_commit_tail._entry.34, ptr @nv50_disp_atomic_commit_tail._entry.37, ptr @nv50_disp_atomic_commit_tail._entry.40, ptr @nv50_disp_atomic_commit_tail._entry.42, ptr @nv50_disp_atomic_commit_tail._entry.44, ptr @nv50_disp_atomic_commit_tail._entry_ptr, ptr @nv50_disp_atomic_commit_tail._entry_ptr.28, ptr @nv50_disp_atomic_commit_tail._entry_ptr.31, ptr @nv50_disp_atomic_commit_tail._entry_ptr.33, ptr @nv50_disp_atomic_commit_tail._entry_ptr.36, ptr @nv50_disp_atomic_commit_tail._entry_ptr.39, ptr @nv50_disp_atomic_commit_tail._entry_ptr.41, ptr @nv50_disp_atomic_commit_tail._entry_ptr.43, ptr @nv50_disp_atomic_commit_tail._entry_ptr.47, ptr @nv50_display_create._entry, ptr @nv50_display_create._entry.13, ptr @nv50_display_create._entry_ptr, ptr @nv50_display_create._entry_ptr.15, ptr @nv50_hdmi_enable._entry, ptr @nv50_hdmi_enable._entry.81, ptr @nv50_hdmi_enable._entry_ptr, ptr @nv50_hdmi_enable._entry_ptr.83, ptr @nv50_mstm_cleanup._entry, ptr @nv50_mstm_cleanup._entry_ptr, ptr @nv50_mstm_prepare._entry, ptr @nv50_mstm_prepare._entry_ptr, ptr @nv50_mstm_service._entry, ptr @nv50_mstm_service._entry_ptr, ptr @nv50_msto_cleanup._entry, ptr @nv50_msto_cleanup._entry_ptr, ptr @nv50_msto_payload._entry, ptr @nv50_msto_payload._entry.62, ptr @nv50_msto_payload._entry_ptr, ptr @nv50_msto_payload._entry_ptr.64, ptr @nv50_msto_prepare._entry, ptr @nv50_msto_prepare._entry.57, ptr @nv50_msto_prepare._entry_ptr, ptr @nv50_msto_prepare._entry_ptr.59, ptr @nv50_outp_acquire._entry, ptr @nv50_outp_acquire._entry_ptr, ptr @nv50_outp_atomic_check_view._entry, ptr @nv50_outp_atomic_check_view._entry_ptr, ptr @nv50_outp_dump_caps._entry, ptr @nv50_outp_dump_caps._entry_ptr, ptr @nv50_sor_atomic_disable._entry, ptr @nv50_sor_atomic_disable._entry_ptr, ptr @nv50_dmac_vram_pushbuf, ptr @nv50_dmac_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nv50_display_create.__key, ptr @.str.9, ptr @nv50_disp_func, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @disp50xx_modifiers, ptr @disp90xx_modifiers, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @nv50_audio_component_bind_ops, ptr @nv50_audio_component_ops, ptr @nv50_disp_atomic_commit.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.35, ptr @.str.38, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @nv50_msto, ptr @.str.69, ptr @nv50_msto_help, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @nv50_sor_func, ptr @.str.75, ptr @nv50_sor_help, ptr @nv50_sor_create.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @nv50_mstm, ptr @nv50_mstc, ptr @nv50_mstc_help, ptr @nv50_dac_func, ptr @.str.86, ptr @nv50_dac_help, ptr @nv50_pior_func, ptr @.str.87, ptr @nv50_pior_help, ptr @nv50_audio_component_init.__key, ptr @.str.88, ptr @switch.table.nv50_dac_atomic_enable], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_dmac_vram_pushbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_dmac_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mstm_service._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_display_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_func to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_display_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_display_create._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp50xx_modifiers to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp90xx_modifiers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_audio_component_bind_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_audio_component_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_tail._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_atomic_commit_core._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mstm_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_msto_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_msto_prepare._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_msto_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_msto_payload._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mstm_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_msto_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_msto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_msto_help to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_outp_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_outp_atomic_check_view._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_sor_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_sor_help to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_sor_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_sor_atomic_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_hdmi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_hdmi_enable._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_outp_dump_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mstm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mstc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mstc_help to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_dac_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_dac_help to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_pior_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_pior_help to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_audio_component_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nv50_dac_atomic_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_dmac_destroy(ptr noundef %dmac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vram = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 5
  tail call void @nvif_object_dtor(ptr noundef %vram) #10
  %sync = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 4
  tail call void @nvif_object_dtor(ptr noundef %sync) #10
  tail call void @nvif_object_dtor(ptr noundef %dmac) #10
  %mem = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1, i32 2
  tail call void @nvif_mem_dtor(ptr noundef %mem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_dmac_create(ptr noundef %device, ptr noundef %disp, ptr nocapture noundef readonly %oclass, i8 noundef zeroext %head, ptr noundef %data, i32 noundef %size, i64 noundef %syncbuf, ptr noundef %dmac) local_unnamed_addr #0 align 64 {
entry:
  %sclass.i = alloca ptr, align 4
  %.compoundliteral = alloca %struct.nv_dma_v0, align 8
  %.compoundliteral53 = alloca %struct.nv_dma_v0, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvif_object, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %lock = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @nv50_dmac_create.__key) #10
  %2 = load i32, ptr @nv50_dmac_vram_pushbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %family = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp2 = icmp eq i8 %4, 10
  br i1 %cmp2, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %type.0 = phi i8 [ 65, %if.then ], [ 64, %land.lhs.true.if.end_crit_edge ], [ 64, %lor.lhs.false.if.end_crit_edge ]
  %mmu = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4
  %mem = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1, i32 2
  %call = tail call i32 @nvif_mem_ctor_map(ptr noundef %mmu, ptr noundef nonnull @.str.1, i8 noundef zeroext %type.0, i64 noundef 4096, ptr noundef %mem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %_push = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1
  %map = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1, i32 2, i32 0, i32 6
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 8
  %ptr11 = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 3
  %7 = ptrtoint ptr %ptr11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ptr11, align 4
  %8 = ptrtoint ptr %_push to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nv50_dmac_wait, ptr %_push, align 8
  %kick = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %kick to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nv50_dmac_kick, ptr %kick, align 4
  %push = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 2
  %10 = ptrtoint ptr %push to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %_push, ptr %push, align 8
  %bgn = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %bgn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %6, ptr %bgn, align 8
  %cur = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %cur, align 4
  %end = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %end, align 4
  %max = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 9
  %14 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1023, ptr %max, align 4
  %oclass27 = getelementptr inbounds %struct.nvif_object, ptr %disp, i32 0, i32 4
  %15 = ptrtoint ptr %oclass27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oclass27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50032, i32 %16)
  %cmp28 = icmp slt i32 %16, 50032
  %spec.store.select = select i1 %cmp28, i32 1011, i32 1023
  %17 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select, ptr %max, align 4
  %18 = ptrtoint ptr %mem to i32
  %conv36 = zext i32 %18 to i64
  %pushbuf = getelementptr inbounds %struct.nv50_disp_core_channel_dma_v0, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %pushbuf to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv36, ptr %pushbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass.i) #10
  %20 = ptrtoint ptr %sclass.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass.i, align 4, !annotation !212
  %device1.i = getelementptr inbounds %struct.nv50_chan, ptr %dmac, i32 0, i32 1
  %21 = ptrtoint ptr %device1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %device, ptr %device1.i, align 8
  %call.i = call i32 @nvif_object_sclass_get(ptr noundef %disp, ptr noundef nonnull %sclass.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nv50_chan_create.exit.thread, label %while.cond.preheader.i

nv50_chan_create.exit.thread:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass.i) #10
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.end7
  %22 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oclass, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not4.i = icmp eq i32 %23, 0
  br i1 %tobool.not4.i, label %while.cond.preheader.i.nv50_chan_create.exit.thread108_crit_edge, label %for.cond.preheader.lr.ph.i

while.cond.preheader.i.nv50_chan_create.exit.thread108_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_chan_create.exit.thread108

for.cond.preheader.lr.ph.i:                       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22.not.i = icmp eq i32 %call.i, 0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.lr.ph.i
  %24 = phi i32 [ %23, %for.cond.preheader.lr.ph.i ], [ %30, %for.end.i.for.cond.preheader.i_crit_edge ]
  %oclass.addr.05.i = phi ptr [ %oclass, %for.cond.preheader.lr.ph.i ], [ %incdec.ptr.i, %for.end.i.for.cond.preheader.i_crit_edge ]
  br i1 %cmp22.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %25 = ptrtoint ptr %sclass.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sclass.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.nvif_sclass, ptr %26, i32 %i.03.i
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp6.i = icmp eq i32 %28, %24
  br i1 %cmp6.i, label %if.then7.i, label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i
  %call9.i = call i32 @nvif_object_ctor(ptr noundef %disp, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %24, ptr noundef %data, i32 noundef %size, ptr noundef %dmac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end40, label %if.then7.i.nv50_chan_create.exit.thread108_crit_edge

if.then7.i.nv50_chan_create.exit.thread108_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_chan_create.exit.thread108

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %oclass.addr.05.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %for.end.i.nv50_chan_create.exit.thread108_crit_edge, label %for.end.i.for.cond.preheader.i_crit_edge

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i

for.end.i.nv50_chan_create.exit.thread108_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_chan_create.exit.thread108

nv50_chan_create.exit.thread108:                  ; preds = %for.end.i.nv50_chan_create.exit.thread108_crit_edge, %if.then7.i.nv50_chan_create.exit.thread108_crit_edge, %while.cond.preheader.i.nv50_chan_create.exit.thread108_crit_edge
  %retval.0.ph.i.ph = phi i32 [ -38, %while.cond.preheader.i.nv50_chan_create.exit.thread108_crit_edge ], [ %call9.i, %if.then7.i.nv50_chan_create.exit.thread108_crit_edge ], [ -38, %for.end.i.nv50_chan_create.exit.thread108_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass.i) #10
  br label %cleanup

if.end40:                                         ; preds = %if.then7.i
  %call13.i = call i32 @nvif_object_map(ptr noundef %dmac, ptr noundef null, i32 noundef 0) #10
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %syncbuf)
  %cmp41 = icmp slt i64 %syncbuf, 0
  br i1 %cmp41, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %31 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %.compoundliteral, align 8
  %target = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 1
  %32 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %target, align 1
  %access = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 2
  %33 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %access, align 2
  %pad03 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 3
  %34 = call ptr @memset(ptr %pad03, i32 0, i32 5)
  %start = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 4
  %35 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %syncbuf, ptr %start, align 8
  %limit = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 5
  %add46 = add nuw i64 %syncbuf, 4095
  %36 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add46, ptr %limit, align 8
  %sync = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 4
  %call47 = call i32 @nvif_object_ctor(ptr noundef %dmac, ptr noundef nonnull @.str.2, i32 noundef -268435456, i32 noundef 61, ptr noundef nonnull %.compoundliteral, i32 noundef 24, ptr noundef %sync) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %.compoundliteral53 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %.compoundliteral53, align 8
  %target55 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral53, i32 0, i32 1
  %38 = ptrtoint ptr %target55 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %target55, align 1
  %access56 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral53, i32 0, i32 2
  %39 = ptrtoint ptr %access56 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %access56, align 2
  %pad0357 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral53, i32 0, i32 3
  %limit59 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral53, i32 0, i32 5
  %ram_user = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 1, i32 7
  %40 = call ptr @memset(ptr %pad0357, i32 0, i32 13)
  %41 = ptrtoint ptr %ram_user to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ram_user, align 8
  %sub61 = add i64 %42, -1
  %43 = ptrtoint ptr %limit59 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %sub61, ptr %limit59, align 8
  %vram = getelementptr inbounds %struct.nv50_dmac, ptr %dmac, i32 0, i32 5
  %call62 = call i32 @nvif_object_ctor(ptr noundef %dmac, ptr noundef nonnull @.str.3, i32 noundef -268435455, i32 noundef 61, ptr noundef nonnull %.compoundliteral53, i32 noundef 24, ptr noundef %vram) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %nv50_chan_create.exit.thread108, %nv50_chan_create.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ %call47, %if.end44.cleanup_crit_edge ], [ %call62, %if.end50 ], [ %call.i, %nv50_chan_create.exit.thread ], [ %retval.0.ph.i.ph, %nv50_chan_create.exit.thread108 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_map(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_dmac_wait(ptr noundef %push, i32 noundef %size) #0 align 64 {
entry:
  %_wait.i = alloca %struct.nvif_timer_wait, align 8
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %push, i32 -48
  %max = getelementptr i8, ptr %push, i32 276
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp ult i32 %1, %size
  br i1 %cmp, label %do.end, label %if.end22, !prof !213

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 195, i32 noundef 9, ptr noundef null) #10
  br label %cleanup94

if.end22:                                         ; preds = %entry
  %cur = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 4
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %map = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 2, i32 0, i32 6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %cur23 = getelementptr i8, ptr %push, i32 268
  %6 = ptrtoint ptr %cur23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.div, ptr %cur23, align 4
  %add = add i32 %sub.ptr.div, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp26.not = icmp ult i32 %add, %1
  br i1 %cmp26.not, label %if.end22.if.end41_crit_edge, label %if.then27

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then27:                                        ; preds = %if.end22
  %map.i = getelementptr i8, ptr %push, i32 -24
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !213

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  br label %if.end.i

if.else.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @nvif_object_rd(ptr noundef %add.ptr, i32 noundef 4, i64 noundef 4) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %_data.0.i = phi i32 [ %9, %if.then.i ], [ %call6.i, %if.else.i ]
  %10 = and i32 %_data.0.i, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then10.i, label %if.end.i.do.body57.i_crit_edge

if.end.i.do.body57.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57.i

if.then10.i:                                      ; preds = %if.end.i
  %put.i = getelementptr i8, ptr %push, i32 272
  %11 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %put.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11.i = icmp eq i32 %12, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.then10.i.if.end14.i_crit_edge

if.then10.i.if.end14.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %push.i = getelementptr i8, ptr %push, i32 88
  %13 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %push.i, align 8
  tail call void @nv50_dmac_kick(ptr noundef %14) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.then10.i.if.end14.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i) #10
  %15 = call ptr @memset(ptr %_wait.i, i32 255, i32 40)
  %device.i = getelementptr i8, ptr %push, i32 -8
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 8
  call void @nvif_timer_wait_init(ptr noundef %17, i64 noundef 2000000000, ptr noundef nonnull %_wait.i) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end14.i
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i, align 8
  %tobool23.not.i = icmp eq ptr %19, null
  br i1 %tobool23.not.i, label %if.else37.i, label %if.then30.i, !prof !213

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr34.i = getelementptr i8, ptr %19, i32 4
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #10, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  br label %if.end39.i

if.else37.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call38.i = call i32 @nvif_object_rd(ptr noundef %add.ptr, i32 noundef 4, i64 noundef 4) #10
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else37.i, %if.then30.i
  %_data20.0.i = phi i32 [ %20, %if.then30.i ], [ %call38.i, %if.else37.i ]
  %21 = and i32 %_data20.0.i, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44.not.i = icmp eq i32 %21, 0
  br i1 %cmp44.not.i, label %do.cond.i, label %do.end.i

do.cond.i:                                        ; preds = %if.end39.i
  %call48.i = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait.i) #10
  %cmp49.i = icmp sgt i64 %call48.i, -1
  br i1 %cmp49.i, label %do.cond.i.do.body.i_crit_edge, label %nv50_dmac_wind.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #10
  br label %do.body57.i

do.body57.i:                                      ; preds = %do.end.i, %if.end.i.do.body57.i_crit_edge
  %push58.i = getelementptr i8, ptr %push, i32 88
  %22 = ptrtoint ptr %push58.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %push58.i, align 8
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %seg.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %25, i32 1
  store ptr %incdec.ptr.i, ptr %seg.i, align 8
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i, align 4
  %incdec.ptr59.i = getelementptr i32, ptr %27, i32 1
  store ptr %incdec.ptr59.i, ptr %end.i, align 4
  %28 = load ptr, ptr %push58.i, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %seg93.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %seg93.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seg93.i, align 8
  %cmp94.not.i = icmp ult ptr %30, %32
  br i1 %cmp94.not.i, label %do.body57.i.if.end119.i_crit_edge, label %do.end113.i, !prof !217

do.body57.i.if.end119.i_crit_edge:                ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

do.end113.i:                                      ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 184, i32 noundef 9, ptr noundef nonnull @.str.19) #10
  br label %if.end119.i

if.end119.i:                                      ; preds = %do.end113.i, %do.body57.i.if.end119.i_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %end132.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 6
  %35 = ptrtoint ptr %end132.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end132.i, align 4
  %cmp133.not.i = icmp ult ptr %34, %36
  br i1 %cmp133.not.i, label %if.end119.i.if.end30_crit_edge, label %do.end152.i, !prof !217

if.end119.i.if.end30_crit_edge:                   ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end152.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 184, i32 noundef 9, ptr noundef nonnull @.str.20) #10
  br label %if.end30

nv50_dmac_wind.exit:                              ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #10
  br label %cleanup94

if.end30:                                         ; preds = %do.end152.i, %if.end119.i.if.end30_crit_edge
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %mem.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 2
  %map170.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 2, i32 0, i32 6
  %39 = ptrtoint ptr %map170.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map170.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %41 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %client.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client.i, align 4
  %name.i = getelementptr inbounds %struct.nvif_object, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name.i, align 8
  %handle.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 2, i32 0, i32 3
  %51 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %handle.i, align 4
  %name177.i = getelementptr inbounds %struct.nvif_push, ptr %28, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %name177.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name177.i, align 8
  call void (ptr, ptr, ...) %46(ptr noundef %mem.i, ptr noundef nonnull @.str.21, ptr noundef %50, i32 noundef %52, ptr noundef %54, i32 noundef %sub.ptr.sub.i, i32 noundef 536870912, i32 noundef 0, ptr noundef nonnull @__func__.nv50_dmac_wind) #10
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur.i, align 4
  %incdec.ptr183.i = getelementptr i32, ptr %56, i32 1
  store ptr %incdec.ptr183.i, ptr %cur.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 536870912, ptr %56, align 4
  %58 = ptrtoint ptr %cur23 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %cur23, align 4
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 8
  %61 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %cur, align 4
  call void @nv50_dmac_kick(ptr noundef %push)
  br label %if.end41

if.end41:                                         ; preds = %if.end30, %if.end22.if.end41_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #10
  %62 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  %device = getelementptr i8, ptr %push, i32 -8
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 8
  call void @nvif_timer_wait_init(ptr noundef %64, i64 noundef 2000000000, ptr noundef nonnull %_wait) #10
  %map.i124 = getelementptr i8, ptr %push, i32 -24
  br label %do.body42

do.body42:                                        ; preds = %do.cond47.do.body42_crit_edge, %if.end41
  %65 = ptrtoint ptr %map.i124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map.i124, align 8
  %tobool.not.i125 = icmp eq ptr %66, null
  br i1 %tobool.not.i125, label %if.else.i129, label %if.then.i127, !prof !213

if.then.i127:                                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i126 = getelementptr i8, ptr %66, i32 4
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #10, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  br label %if.end.i133

if.else.i129:                                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i128 = call i32 @nvif_object_rd(ptr noundef %add.ptr, i32 noundef 4, i64 noundef 4) #10
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.else.i129, %if.then.i127
  %_data.0.i130 = phi i32 [ %67, %if.then.i127 ], [ %call6.i128, %if.else.i129 ]
  %shr.i = lshr i32 %_data.0.i130, 2
  %68 = and i32 %shr.i, 1023
  %69 = ptrtoint ptr %cur23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.i132 = icmp ugt i32 %68, %70
  br i1 %cmp.i132, label %if.then10.i134, label %if.end13.i

if.then10.i134:                                   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 -5, %70
  %sub12.i = add i32 %sub.i, %68
  br label %nv50_dmac_free.exit

if.end13.i:                                       ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max, align 4
  %sub15.i = sub i32 %72, %70
  br label %nv50_dmac_free.exit

nv50_dmac_free.exit:                              ; preds = %if.end13.i, %if.then10.i134
  %retval.0.i135 = phi i32 [ %sub12.i, %if.then10.i134 ], [ %sub15.i, %if.end13.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i135, i32 %size)
  %cmp44.not = icmp ult i32 %retval.0.i135, %size
  br i1 %cmp44.not, label %do.cond47, label %if.end80

do.cond47:                                        ; preds = %nv50_dmac_free.exit
  %call48 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #10
  %cmp49 = icmp sgt i64 %call48, -1
  br i1 %cmp49, label %do.cond47.do.body42_crit_edge, label %do.end66

do.cond47.do.body42_crit_edge:                    ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

do.end66:                                         ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 213, i32 noundef 9, ptr noundef null) #10
  br label %cleanup94

if.end80:                                         ; preds = %nv50_dmac_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #10
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %bgn = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 3
  %75 = ptrtoint ptr %cur23 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cur23, align 4
  %add.ptr88 = getelementptr i32, ptr %74, i32 %76
  %77 = ptrtoint ptr %bgn to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr88, ptr %bgn, align 8
  %78 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr88, ptr %cur, align 4
  %add.ptr93 = getelementptr i32, ptr %add.ptr88, i32 %retval.0.i135
  %end = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 6
  %79 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr93, ptr %end, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %if.end80, %do.end66, %nv50_dmac_wind.exit, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -110, %do.end66 ], [ 0, %if.end80 ], [ -110, %nv50_dmac_wind.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_dmac_kick(ptr noundef %push) #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %push, i32 -48
  %cur = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 4
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %map = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 2, i32 0, i32 6
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %cur1 = getelementptr i8, ptr %push, i32 268
  %4 = ptrtoint ptr %cur1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.ptr.div, ptr %cur1, align 4
  %put = getelementptr i8, ptr %push, i32 272
  %5 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %put, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub.ptr.div)
  %cmp.not = icmp eq i32 %6, %sub.ptr.div
  br i1 %cmp.not, label %entry.if.end81_crit_edge, label %if.then

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then:                                          ; preds = %entry
  %push3 = getelementptr i8, ptr %push, i32 88
  %7 = ptrtoint ptr %push3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %push3, align 8
  %type = getelementptr inbounds %struct.nvif_push, ptr %8, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 8
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then.if.end49_crit_edge, label %if.then5

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then5:                                         ; preds = %if.then
  %device6 = getelementptr i8, ptr %push, i32 -8
  %12 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device6, align 8
  %map8 = getelementptr inbounds %struct.nvif_object, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %map8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map8, align 8
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.else, label %do.body, !prof !213

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %map8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map8, align 8
  %add.ptr16 = getelementptr i8, ptr %17, i32 458752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 1) #10, !srcloc !220
  br label %if.end

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nvif_object_wr(ptr noundef %13, i32 noundef 4, i64 noundef 458752, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #10
  %18 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %13, i64 noundef 2000000000, ptr noundef nonnull %_wait) #10
  br label %do.body17

do.body17:                                        ; preds = %do.cond43.do.body17_crit_edge, %if.end
  %19 = ptrtoint ptr %map8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map8, align 8
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.else35, label %if.then30, !prof !213

if.then30:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr33 = getelementptr i8, ptr %20, i32 458752
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  br label %if.end37

if.else35:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef 458752) #10
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then30
  %_data.0 = phi i32 [ %21, %if.then30 ], [ %call36, %if.else35 ]
  %and39 = and i32 %_data.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.do.end47_crit_edge, label %do.cond43

if.end37.do.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.cond43:                                        ; preds = %if.end37
  %call44 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #10
  %cmp45 = icmp sgt i64 %call44, -1
  br i1 %cmp45, label %do.cond43.do.body17_crit_edge, label %do.cond43.do.end47_crit_edge

do.cond43.do.end47_crit_edge:                     ; preds = %do.cond43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.cond43.do.body17_crit_edge:                    ; preds = %do.cond43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.end47:                                         ; preds = %do.cond43.do.end47_crit_edge, %if.end37.do.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #10
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %if.then.if.end49_crit_edge
  %map52 = getelementptr i8, ptr %push, i32 -24
  %22 = ptrtoint ptr %map52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map52, align 8
  %tobool54.not = icmp eq ptr %23, null
  br i1 %tobool54.not, label %if.else72, label %do.body62, !prof !213

do.body62:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur1, align 4
  %26 = shl i32 %25, 2
  %27 = and i32 %26, 4092
  %28 = ptrtoint ptr %map52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map52, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #10, !srcloc !220
  br label %if.end78

if.else72:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur1, align 4
  %32 = shl i32 %31, 2
  %33 = and i32 %32, 4092
  call void @nvif_object_wr(ptr noundef %add.ptr, i32 noundef 4, i64 noundef 0, i32 noundef %33) #10
  br label %if.end78

if.end78:                                         ; preds = %if.else72, %do.body62
  %34 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur1, align 4
  %36 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %put, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end78, %entry.if.end81_crit_edge
  %37 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur, align 4
  %bgn = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 3
  %39 = ptrtoint ptr %bgn to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %bgn, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv50_outp_get_new_connector(ptr nocapture noundef readonly %state, ptr noundef readnone %outp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22 = icmp sgt i32 %1, 0
  br i1 %cmp22, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %3, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_connnectors_state, ptr %3, i32 %i.023, i32 3
  %6 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %best_encoder, align 4
  %cmp6 = icmp eq ptr %9, %outp
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %5, %land.lhs.true.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv50_outp_get_old_connector(ptr nocapture noundef readonly %state, ptr noundef readnone %outp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %3, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_connnectors_state, ptr %3, i32 %i.022, i32 2
  %6 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_state, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %best_encoder, align 4
  %cmp6 = icmp eq ptr %9, %outp
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %5, %land.lhs.true.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nv50_real_outp(ptr noundef readonly %encoder) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.not = icmp eq i32 %1, 7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mstc = getelementptr inbounds %struct.nv50_msto, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %mstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mstc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end2 ], [ null, %if.end.cleanup_crit_edge ], [ %encoder, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nv50_mstm_service(ptr noundef %drm, ptr noundef %nv_connector, ptr noundef %mstm) local_unnamed_addr #0 align 64 {
entry:
  %handled = alloca i8, align 1
  %esi = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.nouveau_connector, ptr %nv_connector, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %handled) #10
  %0 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %handled, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %esi) #10
  %1 = ptrtoint ptr %esi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %esi, align 8
  %mgr = getelementptr inbounds %struct.nv50_mstm, ptr %mstm, i32 0, i32 1
  %arrayidx = getelementptr inbounds [8 x i8], ptr %esi, i32 0, i32 1
  br label %while.body

while.condthread-pre-split:                       ; preds = %if.end6
  %2 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %2)
  %.pr = load i8, ptr %handled, align 1
  %tobool.not = icmp eq i8 %.pr, 0
  br i1 %tobool.not, label %while.condthread-pre-split.if.end26_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.condthread-pre-split.if.end26_crit_edge:    ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %entry
  %call = call i32 @drm_dp_dpcd_read(ptr noundef %aux1, i32 noundef 8194, ptr noundef nonnull %esi, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp.not = icmp eq i32 %call, 8
  br i1 %cmp.not, label %if.end, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %while.body
  %call3 = call i32 @drm_dp_mst_hpd_irq(ptr noundef %mgr, ptr noundef nonnull %esi, ptr noundef nonnull %handled) #10
  %3 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %handled, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.end.if.end26_crit_edge, label %if.end6

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @drm_dp_dpcd_write(ptr noundef %aux1, i32 noundef 8195, ptr noundef %arrayidx, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 3
  br i1 %cmp8.not, label %while.condthread-pre-split, label %if.end6.do.body_crit_edge

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %while.body.do.body_crit_edge
  %rc.1 = phi i32 [ %call, %while.body.do.body_crit_edge ], [ %call7, %if.end6.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %5 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.if.end26_crit_edge, label %do.body15

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %drm17 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %drm17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm17, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev18, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  %name20 = getelementptr inbounds %struct.drm_connector, ptr %nv_connector, i32 0, i32 7
  %12 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name20, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %13, i32 noundef %rc.1) #13
  br label %if.end26

if.end26:                                         ; preds = %do.body15, %do.body.if.end26_crit_edge, %if.end.if.end26_crit_edge, %while.condthread-pre-split.if.end26_crit_edge
  %ret.0.off036 = phi i1 [ false, %do.body.if.end26_crit_edge ], [ false, %do.body15 ], [ true, %if.end.if.end26_crit_edge ], [ true, %while.condthread-pre-split.if.end26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %esi) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #10
  ret i1 %ret.0.off036
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_hpd_irq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_mstm_remove(ptr noundef %mstm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_mst = getelementptr inbounds %struct.nv50_mstm, ptr %mstm, i32 0, i32 3
  %0 = ptrtoint ptr %is_mst to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_mst, align 1
  %mgr = getelementptr inbounds %struct.nv50_mstm, ptr %mstm, i32 0, i32 1
  %call = tail call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mgr, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_mstm_detect(ptr nocapture noundef readonly %outp) local_unnamed_addr #0 align 64 {
entry:
  %args.i29 = alloca %struct.anon.165, align 2
  %args.i = alloca %struct.anon.165, align 2
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nouveau_encoder, ptr %outp, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %can_mst = getelementptr inbounds %struct.nv50_mstm, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %can_mst to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %can_mst, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mgr = getelementptr inbounds %struct.nv50_mstm, ptr %2, i32 0, i32 1
  %aux3 = getelementptr inbounds %struct.nv50_mstm, ptr %2, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %aux3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aux3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %7 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %6, i32 noundef 273, ptr noundef nonnull %value.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #10
  %10 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %14 = getelementptr inbounds %struct.anon.165, ptr %args.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.anon.165, ptr %args.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.anon.165, ptr %args.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %args.i, align 2
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 37, ptr %10, align 1
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dcb.i, align 4
  %hasht2.i = getelementptr inbounds %struct.dcb_output, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %hasht2.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hasht2.i, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %11, align 2
  %hashm4.i = getelementptr inbounds %struct.dcb_output, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %hashm4.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hashm4.i, align 2
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %12, align 2
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %13, align 2
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %14, align 2
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %15, align 1
  %30 = call ptr @memset(ptr %16, i32 0, i32 6)
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %9, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %display.i, align 4
  %disp9.i = getelementptr inbounds %struct.nouveau_display, ptr %36, i32 0, i32 4
  %call10.i = call i32 @nvif_object_mthd(ptr noundef %disp9.i, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool7.not = icmp eq i32 %call10.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call11 = call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mgr, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i29) #10
  %39 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i29, i32 0, i32 1
  %40 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i29, i32 0, i32 2
  %41 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i29, i32 0, i32 3
  %42 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i29, i32 0, i32 4
  %43 = ptrtoint ptr %args.i29 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %args.i29, align 2
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 37, ptr %39, align 1
  %dcb.i30 = getelementptr inbounds %struct.nouveau_encoder, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %dcb.i30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dcb.i30, align 4
  %hasht2.i31 = getelementptr inbounds %struct.dcb_output, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %hasht2.i31 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hasht2.i31, align 4
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %40, align 2
  %hashm4.i32 = getelementptr inbounds %struct.dcb_output, ptr %46, i32 0, i32 2
  %50 = ptrtoint ptr %hashm4.i32 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hashm4.i32, align 2
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %41, align 2
  %53 = call ptr @memset(ptr %42, i32 0, i32 10)
  %54 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %38, align 4
  %dev_private.i.i33 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %dev_private.i.i33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_private.i.i33, align 4
  %display.i34 = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %display.i34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %display.i34, align 4
  %disp9.i35 = getelementptr inbounds %struct.nouveau_display, ptr %59, i32 0, i32 4
  %call10.i36 = call i32 @nvif_object_mthd(ptr noundef %disp9.i35, i32 noundef 0, ptr noundef nonnull %args.i29, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i29) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %is_mst = getelementptr inbounds %struct.nv50_mstm, ptr %2, i32 0, i32 3
  %60 = ptrtoint ptr %is_mst to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %is_mst, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ 1, %if.end15 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call10.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_display_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %ver.i.i = alloca i8, align 1
  %hdr.i.i = alloca i8, align 1
  %cnt.i.i = alloca i8, align 1
  %len.i.i = alloca i8, align 1
  %ver.i = alloca i8, align 1
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %device1.i = getelementptr inbounds %struct.anon.244, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1.i, align 8
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #10
  %8 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %ver.i, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #10
  %9 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %hdr.i, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #10
  %10 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %cnt.i, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #10
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %len.i, align 1, !annotation !212
  %call.i = call zeroext i16 @nvbios_dp_table(ptr noundef %7, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i) #10
  %conv.i = zext i16 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i385 = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i385, label %entry.nv50_has_mst.exit_crit_edge, label %land.lhs.true.i

entry.nv50_has_mst.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_has_mst.exit

land.lhs.true.i:                                  ; preds = %entry
  %12 = ptrtoint ptr %ver.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %13)
  %cmp.i = icmp ugt i8 %13, 63
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.nv50_has_mst.exit_crit_edge

land.lhs.true.i.nv50_has_mst.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_has_mst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw nsw i32 %conv.i, 8
  %call5.i = call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %add.i) #10
  %14 = and i8 %call5.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.i = icmp ne i8 %14, 0
  br label %nv50_has_mst.exit

nv50_has_mst.exit:                                ; preds = %land.rhs.i, %land.lhs.true.i.nv50_has_mst.exit_crit_edge, %entry.nv50_has_mst.exit_crit_edge
  %15 = phi i1 [ false, %land.lhs.true.i.nv50_has_mst.exit_crit_edge ], [ false, %entry.nv50_has_mst.exit_crit_edge ], [ %tobool7.i, %land.rhs.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 144) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %nv50_has_mst.exit.cleanup264_crit_edge, label %do.body

nv50_has_mst.exit.cleanup264_crit_edge:           ; preds = %nv50_has_mst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup264

do.body:                                          ; preds = %nv50_has_mst.exit
  %mutex = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @nv50_display_create.__key) #10
  %17 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_private.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %display.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %20, align 8
  %22 = load ptr, ptr %dev_private.i, align 4
  %display.i387 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %display.i387 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %display.i387, align 4
  %dtor = getelementptr inbounds %struct.nouveau_display, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dtor to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nv50_display_destroy, ptr %dtor, align 4
  %26 = load ptr, ptr %dev_private.i, align 4
  %display.i389 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %display.i389 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %display.i389, align 4
  %init = getelementptr inbounds %struct.nouveau_display, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nv50_display_init, ptr %init, align 8
  %30 = load ptr, ptr %dev_private.i, align 4
  %display.i391 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %display.i391 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %display.i391, align 4
  %fini = getelementptr inbounds %struct.nouveau_display, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %fini to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nv50_display_fini, ptr %fini, align 4
  %34 = load ptr, ptr %dev_private.i, align 4
  %display.i393 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %display.i393 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %display.i393, align 4
  %disp11 = getelementptr inbounds %struct.nouveau_display, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %disp11, ptr %call7.i.i, align 8
  %funcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %38 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nv50_disp_func, ptr %funcs, align 4
  %quirk_addfb_prefer_xbgr_30bpp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 94
  %39 = ptrtoint ptr %quirk_addfb_prefer_xbgr_30bpp to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %quirk_addfb_prefer_xbgr_30bpp, align 1
  %normalize_zpos = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 98
  %40 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %normalize_zpos, align 1
  %client15 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 3
  %call16 = call i32 @nouveau_bo_new(ptr noundef %client15, i64 noundef 4096, i32 noundef 4096, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %sync) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %do.body.if.then262_crit_edge

do.body.if.then262_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then262

if.then18:                                        ; preds = %do.body
  %41 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sync, align 8
  %call20 = call i32 @nouveau_bo_pin(ptr noundef %42, i32 noundef 2, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.then18.if.then32_crit_edge

if.then18.if.then32_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then22:                                        ; preds = %if.then18
  %43 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sync, align 8
  %call24 = call i32 @nouveau_bo_map(ptr noundef %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sync, align 8
  %call28 = call i32 @nouveau_bo_unpin(ptr noundef %46) #10
  br label %if.then32

if.then32:                                        ; preds = %if.then26, %if.then18.if.then32_crit_edge
  %ret.0.ph = phi i32 [ %call24, %if.then26 ], [ %call20, %if.then18.if.then32_crit_edge ]
  %tobool.not.i394 = icmp eq ptr %sync, null
  br i1 %tobool.not.i394, label %if.then32.if.then262_crit_edge, label %if.end.i

if.then32.if.then262_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then262

if.end.i:                                         ; preds = %if.then32
  %47 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sync, align 8
  store ptr null, ptr %sync, align 8
  %tobool5.not.i = icmp eq ptr %48, null
  br i1 %tobool5.not.i, label %if.end.i.if.then262_crit_edge, label %if.then6.i

if.end.i.if.then262_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then262

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ttm_bo_put(ptr noundef nonnull %48) #10
  br label %if.then262

if.end39:                                         ; preds = %if.then22
  %core = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 1
  %call40 = call i32 @nv50_core_new(ptr noundef %1, ptr noundef %core) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.if.then262_crit_edge

if.end39.if.then262_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then262

if.end43:                                         ; preds = %if.end39
  %49 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call47 = call i32 %54(ptr noundef %50) #10
  %55 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %core, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %caps_init = getelementptr inbounds %struct.nv50_core_func, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %caps_init to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %caps_init, align 4
  %tobool50.not = icmp eq ptr %60, null
  br i1 %tobool50.not, label %if.end43.if.end59_crit_edge, label %if.then51

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then51:                                        ; preds = %if.end43
  %call55 = call i32 %60(ptr noundef %1, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then51.if.end59_crit_edge, label %if.then51.if.then262_crit_edge

if.then51.if.then262_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then262

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.end59:                                         ; preds = %if.then51.if.end59_crit_edge, %if.end43.if.end59_crit_edge
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call7.i.i, align 8
  %oclass = getelementptr inbounds %struct.nvif_object, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50543, i32 %64)
  %cmp = icmp sgt i32 %64, 50543
  br i1 %cmp, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private.i, align 4
  %display.i396 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %display.i396 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %display.i396, align 4
  %format_modifiers = getelementptr inbounds %struct.nouveau_display, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %format_modifiers to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @wndwc57e_modifiers, ptr %format_modifiers, align 8
  br label %if.end74

if.else:                                          ; preds = %if.end59
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %70 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %71)
  %cmp65 = icmp ugt i8 %71, 6
  %72 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_private.i, align 4
  %display.i398 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 19
  %74 = ptrtoint ptr %display.i398 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %display.i398, align 4
  %format_modifiers69 = getelementptr inbounds %struct.nouveau_display, ptr %75, i32 0, i32 13
  br i1 %cmp65, label %if.then67, label %if.else70

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %format_modifiers69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @disp90xx_modifiers, ptr %format_modifiers69, align 8
  br label %if.end74

if.else70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %format_modifiers69 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @disp50xx_modifiers, ptr %format_modifiers69, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.else70, %if.then67, %if.then61
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call7.i.i, align 8
  %oclass77 = getelementptr inbounds %struct.nvif_object, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %oclass77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %oclass77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 37999, i32 %81)
  %cmp78 = icmp sgt i32 %81, 37999
  br i1 %cmp78, label %if.then80, label %if.else83

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %cursor_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 100
  %82 = ptrtoint ptr %cursor_width to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 256, ptr %cursor_width, align 4
  br label %if.end100

if.else83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 37231, i32 %81)
  %cmp87 = icmp sgt i32 %81, 37231
  %cursor_width91 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 100
  br i1 %cmp87, label %if.then89, label %if.else94

if.then89:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %cursor_width91 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 128, ptr %cursor_width91, align 4
  br label %if.end100

if.else94:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %cursor_width91 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 64, ptr %cursor_width91, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else94, %if.then89, %if.then80
  %.sink = phi i32 [ 128, %if.then89 ], [ 64, %if.else94 ], [ 256, %if.then80 ]
  %cursor_height93 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 101
  %85 = ptrtoint ptr %cursor_height93 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink, ptr %cursor_height93, align 4
  %86 = ptrtoint ptr %oclass77 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %oclass77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50031, i32 %87)
  %cmp104 = icmp sgt i32 %87, 50031
  br i1 %cmp104, label %if.then106, label %if.else121

if.then106:                                       ; preds = %if.end100
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %88 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map, align 8
  %tobool109.not = icmp eq ptr %89, null
  br i1 %tobool109.not, label %if.else117, label %if.then112, !prof !213

if.then112:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %89, i32 6357088
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  br label %if.end119

if.else117:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  %call118 = call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef 6357088) #10
  br label %if.end119

if.end119:                                        ; preds = %if.else117, %if.then112
  %_data.0 = phi i32 [ %90, %if.then112 ], [ %call118, %if.else117 ]
  %and = and i32 %_data.0, 255
  br label %if.end155

if.else121:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 36975, i32 %87)
  %cmp125 = icmp sgt i32 %87, 36975
  br i1 %cmp125, label %if.then127, label %if.else121.for.body.preheader_crit_edge

if.else121.for.body.preheader_crit_edge:          ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then127:                                       ; preds = %if.else121
  %map132 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %91 = ptrtoint ptr %map132 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %map132, align 8
  %tobool134.not = icmp eq ptr %92, null
  br i1 %tobool134.not, label %if.else148, label %if.then141, !prof !213

if.then141:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr145 = getelementptr i8, ptr %92, i32 6365188
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #10, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  br label %if.end150

if.else148:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  %call149 = call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef 6365188) #10
  br label %if.end150

if.end150:                                        ; preds = %if.else148, %if.then141
  %_data131.0 = phi i32 [ %93, %if.then141 ], [ %call149, %if.else148 ]
  %and152 = and i32 %_data131.0, 15
  br label %if.end155

if.end155:                                        ; preds = %if.end150, %if.end119
  %crtcs.0 = phi i32 [ %and, %if.end119 ], [ %and152, %if.end150 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtcs.0)
  %tobool.not.i = icmp eq i32 %crtcs.0, 0
  %94 = call i32 @llvm.ctlz.i32(i32 %crtcs.0, i1 true) #10, !range !226
  %sub.i = sub nuw nsw i32 32, %94
  br i1 %tobool.not.i, label %if.end155.for.end_crit_edge, label %if.end155.for.body.preheader_crit_edge

if.end155.for.body.preheader_crit_edge:           ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end155.for.end_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end155.for.body.preheader_crit_edge, %if.else121.for.body.preheader_crit_edge
  %sub.i516 = phi i32 [ %sub.i, %if.end155.for.body.preheader_crit_edge ], [ 2, %if.else121.for.body.preheader_crit_edge ]
  %crtcs.0515 = phi i32 [ %crtcs.0, %if.end155.for.body.preheader_crit_edge ], [ 3, %if.else121.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0494 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %shl = shl nuw i32 1, %i.0494
  %and159 = and i32 %shl, %crtcs.0515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %for.body.for.inc_crit_edge, label %if.end162

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end162:                                        ; preds = %for.body
  %call163 = call ptr @nv50_head_create(ptr noundef %dev, i32 noundef %i.0494) #10
  %cmp.i401 = icmp ugt ptr %call163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %if.end162.out_crit_edge, label %if.end167

if.end162.out_crit_edge:                          ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end167:                                        ; preds = %if.end162
  br i1 %15, label %if.then169, label %if.end167.for.inc_crit_edge

if.end167.for.inc_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then169:                                       ; preds = %if.end167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not.i402 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i402, label %nv50_msto_new.exit.thread, label %if.end.i403

nv50_msto_new.exit.thread:                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #12
  %msto478 = getelementptr inbounds %struct.nv50_head, ptr %call163, i32 0, i32 4
  %96 = ptrtoint ptr %msto478 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -12 to ptr), ptr %msto478, align 8
  br label %if.then173

if.end.i403:                                      ; preds = %if.then169
  %call2.i = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @nv50_msto, i32 noundef 7, ptr noundef nonnull @.str.69, i32 noundef %i.0494) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %97 = inttoptr i32 %call2.i to ptr
  br label %nv50_msto_new.exit

if.end6.i:                                        ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #12
  %helper_private.i.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i, i32 0, i32 11
  %98 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @nv50_msto_help, ptr %helper_private.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.nv50_head, ptr %call163, i32 0, i32 1, i32 0, i32 8
  %99 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %100
  %possible_crtcs.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i, i32 0, i32 6
  %101 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %shl.i.i, ptr %possible_crtcs.i, align 4
  %head11.i = getelementptr inbounds %struct.nv50_msto, ptr %call7.i.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %head11.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call163, ptr %head11.i, align 8
  br label %nv50_msto_new.exit

nv50_msto_new.exit:                               ; preds = %if.end6.i, %if.then4.i
  %retval.0.i = phi ptr [ %97, %if.then4.i ], [ %call7.i.i.i, %if.end6.i ]
  %msto = getelementptr inbounds %struct.nv50_head, ptr %call163, i32 0, i32 4
  %103 = ptrtoint ptr %msto to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %retval.0.i, ptr %msto, align 8
  %cmp.i404 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i404, label %if.then173.loopexit, label %if.end177

if.then173.loopexit:                              ; preds = %nv50_msto_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  %msto.le = getelementptr inbounds %struct.nv50_head, ptr %call163, i32 0, i32 4
  br label %if.then173

if.then173:                                       ; preds = %if.then173.loopexit, %nv50_msto_new.exit.thread
  %msto481 = phi ptr [ %msto478, %nv50_msto_new.exit.thread ], [ %msto.le, %if.then173.loopexit ]
  %retval.0.i480 = phi ptr [ inttoptr (i32 -12 to ptr), %nv50_msto_new.exit.thread ], [ %retval.0.i, %if.then173.loopexit ]
  %104 = ptrtoint ptr %msto481 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %msto481, align 8
  br label %out

if.end177:                                        ; preds = %nv50_msto_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 6
  %105 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %crtcs.0515, ptr %possible_crtcs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end177, %if.end167.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0494, 1
  %exitcond.not = icmp eq i32 %inc, %sub.i516
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end155.for.end_crit_edge
  %entries = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %106 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp182496 = icmp sgt i32 %107, 0
  br i1 %cmp182496, label %for.body184.lr.ph, label %for.end.for.end218_crit_edge

for.end.for.end218_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end218

for.body184.lr.ph:                                ; preds = %for.end
  %entry180 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2
  %drm206 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  br label %for.body184

for.body184:                                      ; preds = %for.inc216.for.body184_crit_edge, %for.body184.lr.ph
  %dcbe.0498 = phi ptr [ %entry180, %for.body184.lr.ph ], [ %incdec.ptr, %for.inc216.for.body184_crit_edge ]
  %i.1497 = phi i32 [ 0, %for.body184.lr.ph ], [ %inc217, %for.inc216.for.body184_crit_edge ]
  %call185 = call ptr @nouveau_connector_create(ptr noundef %dev, ptr noundef %dcbe.0498) #10
  %cmp.i405 = icmp ugt ptr %call185, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i405, label %for.body184.for.inc216_crit_edge, label %if.end188

for.body184.for.inc216_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc216

if.end188:                                        ; preds = %for.body184
  %location = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 8
  %108 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp190 = icmp eq i8 %109, 0
  br i1 %cmp190, label %if.then192, label %if.else196

if.then192:                                       ; preds = %if.end188
  %type = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 3
  %110 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i32 %111, label %if.then192.do.body201_crit_edge [
    i32 2, label %if.then192.sw.bb_crit_edge
    i32 3, label %if.then192.sw.bb_crit_edge528
    i32 6, label %if.then192.sw.bb_crit_edge529
    i32 0, label %sw.bb194
  ]

if.then192.sw.bb_crit_edge529:                    ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then192.sw.bb_crit_edge528:                    ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then192.sw.bb_crit_edge:                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then192.do.body201_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body201

sw.bb:                                            ; preds = %if.then192.sw.bb_crit_edge, %if.then192.sw.bb_crit_edge528, %if.then192.sw.bb_crit_edge529
  %113 = ptrtoint ptr %call185 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call185, align 8
  %dev_private.i.i406 = getelementptr inbounds %struct.drm_device, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %dev_private.i.i406 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_private.i.i406, align 4
  %priv.i407 = getelementptr inbounds %struct.nouveau_drm, ptr %116, i32 0, i32 2, i32 3, i32 0, i32 5
  %117 = ptrtoint ptr %priv.i407 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %priv.i407, align 4
  %device2.i = getelementptr inbounds %struct.anon.250, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device2.i, align 8
  %i2c3.i = getelementptr inbounds %struct.nvkm_device, ptr %120, i32 0, i32 26
  %121 = ptrtoint ptr %i2c3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c3.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %116, i32 0, i32 19
  %123 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %display.i.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i408 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3520, i32 noundef 416) #14
  %tobool.not.i409 = icmp eq ptr %call7.i.i.i408, null
  br i1 %tobool.not.i409, label %sw.bb.do.body201_crit_edge, label %if.end.i414

sw.bb.do.body201_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body201

if.end.i414:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cond66.i = icmp eq i32 %111, 3
  %..i = select i1 %cond66.i, i32 3, i32 2
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 1
  %128 = ptrtoint ptr %dcb.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %dcbe.0498, ptr %dcb.i, align 4
  %update.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 16
  %129 = ptrtoint ptr %update.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @nv50_sor_update, ptr %update.i, align 4
  %heads.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 5
  %130 = ptrtoint ptr %heads.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %heads.i, align 1
  %conv.i410 = zext i8 %131 to i32
  %possible_crtcs.i411 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i408, i32 0, i32 6
  %132 = ptrtoint ptr %possible_crtcs.i411 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv.i410, ptr %possible_crtcs.i411, align 4
  %possible_clones.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i408, i32 0, i32 7
  %133 = ptrtoint ptr %possible_clones.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %possible_clones.i, align 8
  %134 = ptrtoint ptr %call185 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call185, align 8
  %hasht.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 1
  %136 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %hasht.i, align 4
  %conv11.i = zext i16 %137 to i32
  %hashm.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 2
  %138 = ptrtoint ptr %hashm.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %hashm.i, align 2
  %conv12.i = zext i16 %139 to i32
  %call13.i = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %135, ptr noundef nonnull %call7.i.i.i408, ptr noundef nonnull @nv50_sor_func, i32 noundef %..i, ptr noundef nonnull @.str.75, i32 noundef %conv11.i, i32 noundef %conv12.i) #10
  %helper_private.i.i412 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i408, i32 0, i32 11
  %140 = ptrtoint ptr %helper_private.i.i412 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @nv50_sor_help, ptr %helper_private.i.i412, align 4
  %call14.i = call i32 @drm_connector_attach_encoder(ptr noundef %call185, ptr noundef nonnull %call7.i.i.i408) #10
  %core.i = getelementptr inbounds %struct.nv50_disp, ptr %126, i32 0, i32 1
  %141 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %core.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %sor.i = getelementptr inbounds %struct.nv50_core_func, ptr %144, i32 0, i32 10
  %145 = ptrtoint ptr %sor.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sor.i, align 4
  %get_caps.i = getelementptr inbounds %struct.nv50_outp_func, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %get_caps.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %get_caps.i, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 9
  %149 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %or.i, align 1
  %151 = call i8 @llvm.cttz.i8(i8 %150, i1 true) #10, !range !227
  %152 = zext i8 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %iszero.i = icmp eq i8 %150, 0
  %sub.i413 = select i1 %iszero.i, i32 -1, i32 %152
  call void %148(ptr noundef %126, ptr noundef nonnull %call7.i.i.i408, i32 noundef %sub.i413) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %153 = load i32, ptr @__drm_debug, align 4
  %and.i.i.i = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i414.nv50_outp_dump_caps.exit.i_crit_edge, label %do.body1.i.i

if.end.i414.nv50_outp_dump_caps.exit.i_crit_edge: ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_dump_caps.exit.i

do.body1.i.i:                                     ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #12
  %drm3.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %116, i32 0, i32 2, i32 1
  %154 = ptrtoint ptr %drm3.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %drm3.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i.i, align 8
  %dev4.i.i = getelementptr inbounds %struct.drm_device, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev4.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %116, i32 0, i32 2, i32 12
  %name6.i.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i408, i32 0, i32 3
  %160 = ptrtoint ptr %name6.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name6.i.i, align 8
  %caps.i.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 13
  %162 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load.i.i = load i8, ptr %caps.i.i, align 8
  %bf.load.lobit.i.i = lshr i8 %bf.load.i.i, 7
  %163 = zext i8 %bf.load.lobit.i.i to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.84, ptr noundef %name.i.i, ptr noundef %161, i32 noundef %163) #13
  br label %nv50_outp_dump_caps.exit.i

nv50_outp_dump_caps.exit.i:                       ; preds = %do.body1.i.i, %if.end.i414.nv50_outp_dump_caps.exit.i_crit_edge
  %164 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %165)
  %cmp.i415 = icmp eq i32 %165, 6
  %i2c_index.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 4
  %166 = ptrtoint ptr %i2c_index.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %i2c_index.i, align 4
  %conv19.i = zext i8 %167 to i32
  br i1 %cmp.i415, label %if.then18.i, label %if.else48.i

if.then18.i:                                      ; preds = %nv50_outp_dump_caps.exit.i
  %call20.i = call ptr @nvkm_i2c_aux_find(ptr noundef %122, i32 noundef %conv19.i) #10
  %168 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 12
  %hpd_irq_lock.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 12, i32 0, i32 3
  call void @__mutex_init(ptr noundef %hpd_irq_lock.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @nv50_sor_create.__key) #10
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then18.i.if.end34.i_crit_edge, label %if.then22.i

if.then18.i.if.end34.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %126, align 8
  %oclass.i = getelementptr inbounds %struct.nvif_object, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %oclass.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36976, i32 %172)
  %cmp25.i = icmp slt i32 %172, 36976
  %i2c28.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %call20.i, i32 0, i32 5
  %ddc.i = getelementptr inbounds %struct.nouveau_connector, ptr %call185, i32 0, i32 5, i32 1
  %ddc.sink.i = select i1 %cmp25.i, ptr %i2c28.i, ptr %ddc.i
  %173 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %ddc.sink.i, ptr %173, align 8
  %aux33.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 5
  %175 = ptrtoint ptr %aux33.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call20.i, ptr %aux33.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then22.i, %if.then18.i.if.end34.i_crit_edge
  %type35.i = getelementptr inbounds %struct.nouveau_connector, ptr %call185, i32 0, i32 1
  %176 = ptrtoint ptr %type35.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %type35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %177)
  %cmp36.not.i = icmp eq i32 %177, 71
  br i1 %cmp36.not.i, label %if.end34.i.for.inc216_crit_edge, label %land.lhs.true.i416

if.end34.i.for.inc216_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc216

land.lhs.true.i416:                               ; preds = %if.end34.i
  %178 = ptrtoint ptr %priv.i407 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %priv.i407, align 4
  %device1.i.i = getelementptr inbounds %struct.anon.244, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %device1.i.i, align 8
  %bios2.i.i = getelementptr inbounds %struct.nvkm_device, ptr %181, i32 0, i32 21
  %182 = ptrtoint ptr %bios2.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bios2.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i.i) #10
  %184 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -1, ptr %ver.i.i, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i.i) #10
  %185 = ptrtoint ptr %hdr.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -1, ptr %hdr.i.i, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i.i) #10
  %186 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -1, ptr %cnt.i.i, align 1, !annotation !212
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i.i) #10
  %187 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -1, ptr %len.i.i, align 1, !annotation !212
  %call.i.i = call zeroext i16 @nvbios_dp_table(ptr noundef %183, ptr noundef nonnull %ver.i.i, ptr noundef nonnull %hdr.i.i, ptr noundef nonnull %cnt.i.i, ptr noundef nonnull %len.i.i) #10
  %conv.i.i = zext i16 %call.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i416.nv50_has_mst.exit.thread.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i416.nv50_has_mst.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i416
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_has_mst.exit.thread.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i416
  %188 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %189)
  %cmp.i.i = icmp ugt i8 %189, 63
  br i1 %cmp.i.i, label %nv50_has_mst.exit.i, label %land.lhs.true.i.i.nv50_has_mst.exit.thread.i_crit_edge

land.lhs.true.i.i.nv50_has_mst.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_has_mst.exit.thread.i

nv50_has_mst.exit.thread.i:                       ; preds = %land.lhs.true.i.i.nv50_has_mst.exit.thread.i_crit_edge, %land.lhs.true.i416.nv50_has_mst.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i.i) #10
  br label %for.inc216

nv50_has_mst.exit.i:                              ; preds = %land.lhs.true.i.i
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  %call5.i.i = call zeroext i8 @nvbios_rd08(ptr noundef %183, i32 noundef %add.i.i) #10
  %190 = and i8 %call5.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool7.i.not.i = icmp eq i8 %190, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i.i) #10
  br i1 %tobool7.i.not.i, label %nv50_has_mst.exit.i.for.inc216_crit_edge, label %if.then40.i

nv50_has_mst.exit.i.for.inc216_crit_edge:         ; preds = %nv50_has_mst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc216

if.then40.i:                                      ; preds = %nv50_has_mst.exit.i
  %base42.i = getelementptr inbounds %struct.drm_connector, ptr %call185, i32 0, i32 6
  %191 = ptrtoint ptr %base42.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %base42.i, align 8
  %193 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dcb.i, align 4
  %heads.i.i = getelementptr inbounds %struct.dcb_output, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %heads.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %heads.i.i, align 1
  %conv75.i.i = zext i8 %196 to i32
  %call.i.i.i = call i32 @__sw_hweight8(i32 noundef %conv75.i.i) #10
  %197 = ptrtoint ptr %call7.i.i.i408 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %call7.i.i.i408, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %199 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %199, i32 noundef 3520, i32 noundef 1780) #14
  %200 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call7.i.i.i.i, ptr %168, align 4
  %tobool79.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool79.not.i.i, label %if.then40.i.do.body201_crit_edge, label %nv50_mstm_new.exit.i

if.then40.i.do.body201_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body201

nv50_mstm_new.exit.i:                             ; preds = %if.then40.i
  %aux41.i = getelementptr inbounds %struct.nouveau_connector, ptr %call185, i32 0, i32 5
  %201 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call7.i.i.i408, ptr %call7.i.i.i.i, align 8
  %mgr.i.i = getelementptr inbounds %struct.nv50_mstm, ptr %call7.i.i.i.i, i32 0, i32 1
  %cbs.i.i = getelementptr inbounds %struct.nv50_mstm, ptr %call7.i.i.i.i, i32 0, i32 1, i32 2
  %202 = ptrtoint ptr %cbs.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @nv50_mstm, ptr %cbs.i.i, align 4
  %203 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dcb.i, align 4
  %link_nr.i.i = getelementptr inbounds %struct.dcb_output, ptr %204, i32 0, i32 13, i32 0, i32 1
  %205 = ptrtoint ptr %link_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %link_nr.i.i, align 4
  %link_bw.i.i = getelementptr inbounds %struct.dcb_output, ptr %204, i32 0, i32 13, i32 0, i32 2
  %207 = ptrtoint ptr %link_bw.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %link_bw.i.i, align 4
  %conv84.i.i = trunc i32 %208 to i8
  %call85.i.i = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %conv84.i.i) #10
  %call86.i.i = call i32 @drm_dp_mst_topology_mgr_init(ptr noundef %mgr.i.i, ptr noundef %198, ptr noundef %aux41.i, i32 noundef 16, i32 noundef %call.i.i.i, i32 noundef %206, i32 noundef %call85.i.i, i32 noundef %192) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %tobool44.not.i = icmp eq i32 %call86.i.i, 0
  br i1 %tobool44.not.i, label %nv50_mstm_new.exit.i.for.inc216_crit_edge, label %nv50_mstm_new.exit.i.do.body201_crit_edge

nv50_mstm_new.exit.i.do.body201_crit_edge:        ; preds = %nv50_mstm_new.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body201

nv50_mstm_new.exit.i.for.inc216_crit_edge:        ; preds = %nv50_mstm_new.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc216

if.else48.i:                                      ; preds = %nv50_outp_dump_caps.exit.i
  %call51.i = call ptr @nvkm_i2c_bus_find(ptr noundef %122, i32 noundef %conv19.i) #10
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %if.else48.i.for.inc216_crit_edge, label %if.then53.i

if.else48.i.for.inc216_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc216

if.then53.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #12
  %i2c54.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call51.i, i32 0, i32 5
  %i2c55.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i408, i32 0, i32 4
  %209 = ptrtoint ptr %i2c55.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %i2c54.i, ptr %i2c55.i, align 8
  br label %for.inc216

sw.bb194:                                         ; preds = %if.then192
  %210 = ptrtoint ptr %call185 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %call185, align 8
  %dev_private.i.i417 = getelementptr inbounds %struct.drm_device, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %dev_private.i.i417 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev_private.i.i417, align 4
  %priv.i418 = getelementptr inbounds %struct.nouveau_drm, ptr %213, i32 0, i32 2, i32 3, i32 0, i32 5
  %214 = ptrtoint ptr %priv.i418 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %priv.i418, align 4
  %device1.i419 = getelementptr inbounds %struct.anon.260, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %device1.i419 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %device1.i419, align 8
  %i2c2.i = getelementptr inbounds %struct.nvkm_device, ptr %217, i32 0, i32 26
  %218 = ptrtoint ptr %i2c2.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %i2c2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %220 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i420 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3520, i32 noundef 416) #14
  %tobool.not.i421 = icmp eq ptr %call7.i.i.i420, null
  br i1 %tobool.not.i421, label %sw.bb194.do.body201_crit_edge, label %if.end.i426

sw.bb194.do.body201_crit_edge:                    ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body201

if.end.i426:                                      ; preds = %sw.bb194
  %dcb.i422 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i420, i32 0, i32 1
  %221 = ptrtoint ptr %dcb.i422 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %dcbe.0498, ptr %dcb.i422, align 4
  %i2c_index.i423 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 4
  %222 = ptrtoint ptr %i2c_index.i423 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %i2c_index.i423, align 4
  %conv.i424 = zext i8 %223 to i32
  %call4.i = call ptr @nvkm_i2c_bus_find(ptr noundef %219, i32 noundef %conv.i424) #10
  %tobool5.not.i425 = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i425, label %if.end.i426.if.end9.i_crit_edge, label %if.then6.i427

if.end.i426.if.end9.i_crit_edge:                  ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then6.i427:                                    ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #12
  %i2c7.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call4.i, i32 0, i32 5
  %i2c8.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i420, i32 0, i32 4
  %224 = ptrtoint ptr %i2c8.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %i2c7.i, ptr %i2c8.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i427, %if.end.i426.if.end9.i_crit_edge
  %heads.i428 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 5
  %225 = ptrtoint ptr %heads.i428 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %heads.i428, align 1
  %conv11.i429 = zext i8 %226 to i32
  %possible_crtcs.i430 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i420, i32 0, i32 6
  %227 = ptrtoint ptr %possible_crtcs.i430 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %conv11.i429, ptr %possible_crtcs.i430, align 4
  %possible_clones.i431 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i420, i32 0, i32 7
  %228 = ptrtoint ptr %possible_clones.i431 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %possible_clones.i431, align 8
  %229 = ptrtoint ptr %call185 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %call185, align 8
  %hasht.i432 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 1
  %231 = ptrtoint ptr %hasht.i432 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %hasht.i432, align 4
  %conv13.i = zext i16 %232 to i32
  %hashm.i433 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 2
  %233 = ptrtoint ptr %hashm.i433 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %hashm.i433, align 2
  %conv14.i = zext i16 %234 to i32
  %call15.i = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %230, ptr noundef nonnull %call7.i.i.i420, ptr noundef nonnull @nv50_dac_func, i32 noundef 1, ptr noundef nonnull @.str.86, i32 noundef %conv13.i, i32 noundef %conv14.i) #10
  %helper_private.i.i434 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i420, i32 0, i32 11
  %235 = ptrtoint ptr %helper_private.i.i434 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @nv50_dac_help, ptr %helper_private.i.i434, align 4
  %call16.i = call i32 @drm_connector_attach_encoder(ptr noundef %call185, ptr noundef nonnull %call7.i.i.i420) #10
  br label %for.inc216

if.else196:                                       ; preds = %if.end188
  %236 = ptrtoint ptr %call185 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %call185, align 8
  %dev_private.i.i436 = getelementptr inbounds %struct.drm_device, ptr %237, i32 0, i32 5
  %238 = ptrtoint ptr %dev_private.i.i436 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev_private.i.i436, align 4
  %display.i.i.i437 = getelementptr inbounds %struct.nouveau_drm, ptr %239, i32 0, i32 19
  %240 = ptrtoint ptr %display.i.i.i437 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %display.i.i.i437, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 8
  %priv.i438 = getelementptr inbounds %struct.nouveau_drm, ptr %239, i32 0, i32 2, i32 3, i32 0, i32 5
  %244 = ptrtoint ptr %priv.i438 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %priv.i438, align 4
  %device3.i = getelementptr inbounds %struct.anon.262, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %device3.i, align 8
  %i2c4.i = getelementptr inbounds %struct.nvkm_device, ptr %247, i32 0, i32 26
  %248 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %i2c4.i, align 4
  %type5.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 3
  %250 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %type5.i, align 4
  %252 = zext i32 %251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %251, label %if.else196.do.body201_crit_edge [
    i32 2, label %sw.bb.i
    i32 6, label %sw.bb8.i
  ]

if.else196.do.body201_crit_edge:                  ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body201

sw.bb.i:                                          ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #12
  %extdev.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 12
  %253 = ptrtoint ptr %extdev.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %extdev.i, align 4
  %conv.i439 = zext i8 %254 to i32
  %add.i440 = or i32 %conv.i439, 256
  %call6.i = call ptr @nvkm_i2c_bus_find(ptr noundef %249, i32 noundef %add.i440) #10
  %tobool.not.i441 = icmp eq ptr %call6.i, null
  %i2c7.i442 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call6.i, i32 0, i32 5
  %spec.select.i = select i1 %tobool.not.i441, ptr null, ptr %i2c7.i442
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #12
  %extdev9.i = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 12
  %255 = ptrtoint ptr %extdev9.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %extdev9.i, align 4
  %conv10.i = zext i8 %256 to i32
  %add11.i = or i32 %conv10.i, 256
  %call12.i = call ptr @nvkm_i2c_aux_find(ptr noundef %249, i32 noundef %add11.i) #10
  %tobool13.not.i = icmp eq ptr %call12.i, null
  %i2c15.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %call12.i, i32 0, i32 5
  %spec.select66.i = select i1 %tobool13.not.i, ptr null, ptr %i2c15.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb.i
  %aux.0.i = phi ptr [ %call12.i, %sw.bb8.i ], [ null, %sw.bb.i ]
  %ddc.0.i = phi ptr [ %spec.select66.i, %sw.bb8.i ], [ %spec.select.i, %sw.bb.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %257 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i443 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %257, i32 noundef 3520, i32 noundef 416) #14
  %tobool20.not.i = icmp eq ptr %call7.i.i.i443, null
  br i1 %tobool20.not.i, label %sw.epilog.i.do.body201_crit_edge, label %if.end.i458

sw.epilog.i.do.body201_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body201

if.end.i458:                                      ; preds = %sw.epilog.i
  %dcb.i444 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i443, i32 0, i32 1
  %258 = ptrtoint ptr %dcb.i444 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %dcbe.0498, ptr %dcb.i444, align 4
  %i2c21.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i443, i32 0, i32 4
  %259 = ptrtoint ptr %i2c21.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %ddc.0.i, ptr %i2c21.i, align 8
  %aux22.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i443, i32 0, i32 5
  %260 = ptrtoint ptr %aux22.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %aux.0.i, ptr %aux22.i, align 4
  %heads.i445 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 5
  %261 = ptrtoint ptr %heads.i445 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %heads.i445, align 1
  %conv24.i = zext i8 %262 to i32
  %possible_crtcs.i446 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i443, i32 0, i32 6
  %263 = ptrtoint ptr %possible_crtcs.i446 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %conv24.i, ptr %possible_crtcs.i446, align 4
  %possible_clones.i447 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i443, i32 0, i32 7
  %264 = ptrtoint ptr %possible_clones.i447 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %possible_clones.i447, align 8
  %265 = ptrtoint ptr %call185 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %call185, align 8
  %hasht.i448 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 1
  %267 = ptrtoint ptr %hasht.i448 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %hasht.i448, align 4
  %conv26.i = zext i16 %268 to i32
  %hashm.i449 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 2
  %269 = ptrtoint ptr %hashm.i449 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %hashm.i449, align 2
  %conv27.i = zext i16 %270 to i32
  %call28.i = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %266, ptr noundef nonnull %call7.i.i.i443, ptr noundef nonnull @nv50_pior_func, i32 noundef 2, ptr noundef nonnull @.str.87, i32 noundef %conv26.i, i32 noundef %conv27.i) #10
  %helper_private.i.i450 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i443, i32 0, i32 11
  %271 = ptrtoint ptr %helper_private.i.i450 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr @nv50_pior_help, ptr %helper_private.i.i450, align 4
  %call29.i = call i32 @drm_connector_attach_encoder(ptr noundef %call185, ptr noundef nonnull %call7.i.i.i443) #10
  %core.i451 = getelementptr inbounds %struct.nv50_disp, ptr %243, i32 0, i32 1
  %272 = ptrtoint ptr %core.i451 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %core.i451, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 8
  %pior.i = getelementptr inbounds %struct.nv50_core_func, ptr %275, i32 0, i32 9
  %276 = ptrtoint ptr %pior.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pior.i, align 4
  %get_caps.i452 = getelementptr inbounds %struct.nv50_outp_func, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %get_caps.i452 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %get_caps.i452, align 4
  %or.i453 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 9
  %280 = ptrtoint ptr %or.i453 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %or.i453, align 1
  %282 = call i8 @llvm.cttz.i8(i8 %281, i1 true) #10, !range !227
  %283 = zext i8 %282 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %iszero.i454 = icmp eq i8 %281, 0
  %sub.i455 = select i1 %iszero.i454, i32 -1, i32 %283
  call void %279(ptr noundef %243, ptr noundef nonnull %call7.i.i.i443, i32 noundef %sub.i455) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %284 = load i32, ptr @__drm_debug, align 4
  %and.i.i.i456 = and i32 %284, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i456)
  %tobool.i.not.i.i457 = icmp eq i32 %and.i.i.i456, 0
  br i1 %tobool.i.not.i.i457, label %if.end.i458.for.inc216_crit_edge, label %do.body1.i.i467

if.end.i458.for.inc216_crit_edge:                 ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc216

do.body1.i.i467:                                  ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #12
  %drm3.i.i459 = getelementptr inbounds %struct.nouveau_drm, ptr %239, i32 0, i32 2, i32 1
  %285 = ptrtoint ptr %drm3.i.i459 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %drm3.i.i459, align 8
  %dev.i.i460 = getelementptr inbounds %struct.nouveau_drm, ptr %286, i32 0, i32 3
  %287 = ptrtoint ptr %dev.i.i460 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev.i.i460, align 8
  %dev4.i.i461 = getelementptr inbounds %struct.drm_device, ptr %288, i32 0, i32 2
  %289 = ptrtoint ptr %dev4.i.i461 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev4.i.i461, align 4
  %name.i.i462 = getelementptr inbounds %struct.nouveau_drm, ptr %239, i32 0, i32 2, i32 12
  %name6.i.i463 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i443, i32 0, i32 3
  %291 = ptrtoint ptr %name6.i.i463 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %name6.i.i463, align 8
  %caps.i.i464 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i.i443, i32 0, i32 13
  %293 = ptrtoint ptr %caps.i.i464 to i32
  call void @__asan_load1_noabort(i32 %293)
  %bf.load.i.i465 = load i8, ptr %caps.i.i464, align 8
  %bf.load.lobit.i.i466 = lshr i8 %bf.load.i.i465, 7
  %294 = zext i8 %bf.load.lobit.i.i466 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %290, ptr noundef nonnull @.str.84, ptr noundef %name.i.i462, ptr noundef %292, i32 noundef %294) #13
  br label %for.inc216

do.body201:                                       ; preds = %sw.epilog.i.do.body201_crit_edge, %if.else196.do.body201_crit_edge, %sw.bb194.do.body201_crit_edge, %nv50_mstm_new.exit.i.do.body201_crit_edge, %if.then40.i.do.body201_crit_edge, %sw.bb.do.body201_crit_edge, %if.then192.do.body201_crit_edge
  %ret.6 = phi i32 [ -19, %if.then192.do.body201_crit_edge ], [ -12, %sw.bb.do.body201_crit_edge ], [ -12, %sw.bb194.do.body201_crit_edge ], [ -19, %if.else196.do.body201_crit_edge ], [ -12, %sw.epilog.i.do.body201_crit_edge ], [ %call86.i.i, %nv50_mstm_new.exit.i.do.body201_crit_edge ], [ -12, %if.then40.i.do.body201_crit_edge ]
  %295 = ptrtoint ptr %drm206 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %drm206, align 8
  %dev207 = getelementptr inbounds %struct.nouveau_drm, ptr %296, i32 0, i32 3
  %297 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev207, align 8
  %dev208 = getelementptr inbounds %struct.drm_device, ptr %298, i32 0, i32 2
  %299 = ptrtoint ptr %dev208 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev208, align 4
  %301 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %location, align 4
  %conv210 = zext i8 %302 to i32
  %type211 = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 3
  %303 = ptrtoint ptr %type211 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %type211, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %dcbe.0498, i32 0, i32 9
  %305 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %or, align 1
  %307 = call i8 @llvm.cttz.i8(i8 %306, i1 true), !range !227
  %308 = zext i8 %307 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %iszero = icmp eq i8 %306, 0
  %sub = select i1 %iszero, i32 -1, i32 %308
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %300, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv210, i32 noundef %304, i32 noundef %sub, i32 noundef %ret.6) #13
  br label %for.inc216

for.inc216:                                       ; preds = %do.body201, %do.body1.i.i467, %if.end.i458.for.inc216_crit_edge, %if.end9.i, %if.then53.i, %if.else48.i.for.inc216_crit_edge, %nv50_mstm_new.exit.i.for.inc216_crit_edge, %nv50_has_mst.exit.i.for.inc216_crit_edge, %nv50_has_mst.exit.thread.i, %if.end34.i.for.inc216_crit_edge, %for.body184.for.inc216_crit_edge
  %inc217 = add nuw nsw i32 %i.1497, 1
  %incdec.ptr = getelementptr %struct.dcb_output, ptr %dcbe.0498, i32 1
  %309 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %entries, align 4
  %cmp182 = icmp slt i32 %inc217, %310
  br i1 %cmp182, label %for.inc216.for.body184_crit_edge, label %for.inc216.for.end218_crit_edge

for.inc216.for.end218_crit_edge:                  ; preds = %for.inc216
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end218

for.inc216.for.body184_crit_edge:                 ; preds = %for.inc216
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body184

for.end218:                                       ; preds = %for.inc216.for.end218_crit_edge, %for.end.for.end218_crit_edge
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %311 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %connector_list, align 4
  %cmp231.not505 = icmp eq ptr %312, %connector_list
  br i1 %cmp231.not505, label %for.end218.for.end260_crit_edge, label %for.body235.lr.ph

for.end218.for.end260_crit_edge:                  ; preds = %for.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end260

for.body235.lr.ph:                                ; preds = %for.end218
  %drm245 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %name248 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  br label %for.body235

for.body235:                                      ; preds = %for.inc254.for.body235_crit_edge, %for.body235.lr.ph
  %.pn.in506 = phi ptr [ %312, %for.body235.lr.ph ], [ %.pn508, %for.inc254.for.body235_crit_edge ]
  %313 = ptrtoint ptr %.pn.in506 to i32
  call void @__asan_load4_noabort(i32 %313)
  %.pn508 = load ptr, ptr %.pn.in506, align 8
  %possible_encoders = getelementptr i8, ptr %.pn.in506, i32 800
  %314 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %possible_encoders, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %tobool236.not = icmp eq i32 %315, 0
  br i1 %tobool236.not, label %do.body239, label %for.body235.for.inc254_crit_edge

for.body235.for.inc254_crit_edge:                 ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc254

do.body239:                                       ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #12
  %connector.0507 = getelementptr i8, ptr %.pn.in506, i32 -16
  %316 = ptrtoint ptr %drm245 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %drm245, align 8
  %dev246 = getelementptr inbounds %struct.nouveau_drm, ptr %317, i32 0, i32 3
  %318 = ptrtoint ptr %dev246 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev246, align 8
  %dev247 = getelementptr inbounds %struct.drm_device, ptr %319, i32 0, i32 2
  %320 = ptrtoint ptr %dev247 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev247, align 4
  %name250 = getelementptr i8, ptr %.pn.in506, i32 36
  %322 = ptrtoint ptr %name250 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %name250, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %321, ptr noundef nonnull @.str.14, ptr noundef %name248, ptr noundef %323) #13
  %funcs253 = getelementptr i8, ptr %.pn.in506, i32 336
  %324 = ptrtoint ptr %funcs253 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %funcs253, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %325, i32 0, i32 8
  %326 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %destroy, align 4
  call void %327(ptr noundef %connector.0507) #10
  br label %for.inc254

for.inc254:                                       ; preds = %do.body239, %for.body235.for.inc254_crit_edge
  %cmp231.not = icmp eq ptr %.pn508, %connector_list
  br i1 %cmp231.not, label %for.inc254.for.end260_crit_edge, label %for.inc254.for.body235_crit_edge

for.inc254.for.body235_crit_edge:                 ; preds = %for.inc254
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body235

for.inc254.for.end260_crit_edge:                  ; preds = %for.inc254
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end260

for.end260:                                       ; preds = %for.inc254.for.end260_crit_edge, %for.end218.for.end260_crit_edge
  %vblank_disable_immediate = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 22
  %328 = ptrtoint ptr %vblank_disable_immediate to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 1, ptr %vblank_disable_immediate, align 4
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 3
  %329 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %330, i32 0, i32 2
  %331 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev1.i, align 4
  %call.i469 = call i32 @component_add(ptr noundef %332, ptr noundef nonnull @nv50_audio_component_bind_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i469)
  %tobool.not.i470 = icmp eq i32 %call.i469, 0
  br i1 %tobool.not.i470, label %if.end.i471, label %for.end260.cleanup264_crit_edge

for.end260.cleanup264_crit_edge:                  ; preds = %for.end260
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup264

if.end.i471:                                      ; preds = %for.end260
  call void @__sanitizer_cov_trace_pc() #12
  %component_registered.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 31, i32 2
  %333 = ptrtoint ptr %component_registered.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 1, ptr %component_registered.i, align 8
  %lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 31, i32 1
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @nv50_audio_component_init.__key) #10
  br label %cleanup264

out:                                              ; preds = %if.then173, %if.end162.out_crit_edge
  %ret.8.in = phi ptr [ %retval.0.i480, %if.then173 ], [ %call163, %if.end162.out_crit_edge ]
  %ret.8 = ptrtoint ptr %ret.8.in to i32
  br label %if.then262

if.then262:                                       ; preds = %out, %if.then51.if.then262_crit_edge, %if.end39.if.then262_crit_edge, %if.then6.i, %if.end.i.if.then262_crit_edge, %if.then32.if.then262_crit_edge, %do.body.if.then262_crit_edge
  %ret.8489 = phi i32 [ %ret.8, %out ], [ %call55, %if.then51.if.then262_crit_edge ], [ %call40, %if.end39.if.then262_crit_edge ], [ %ret.0.ph, %if.then6.i ], [ %ret.0.ph, %if.end.i.if.then262_crit_edge ], [ %ret.0.ph, %if.then32.if.then262_crit_edge ], [ %call16, %do.body.if.then262_crit_edge ]
  call void @nv50_display_destroy(ptr noundef %dev)
  br label %cleanup264

cleanup264:                                       ; preds = %if.then262, %if.end.i471, %for.end260.cleanup264_crit_edge, %nv50_has_mst.exit.cleanup264_crit_edge
  %retval.0 = phi i32 [ -12, %nv50_has_mst.exit.cleanup264_crit_edge ], [ %ret.8489, %if.then262 ], [ 0, %for.end260.cleanup264_crit_edge ], [ 0, %if.end.i471 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_display_destroy(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %component_registered.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 31, i32 2
  %6 = ptrtoint ptr %component_registered.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %component_registered.i, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.nv50_audio_component_fini.exit_crit_edge, label %if.end.i

entry.nv50_audio_component_fini.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_audio_component_fini.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  tail call void @component_del(ptr noundef %11, ptr noundef nonnull @nv50_audio_component_bind_ops) #10
  %12 = ptrtoint ptr %component_registered.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %component_registered.i, align 8
  %lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 31, i32 1
  tail call void @mutex_destroy(ptr noundef %lock.i) #10
  br label %nv50_audio_component_fini.exit

nv50_audio_component_fini.exit:                   ; preds = %if.end.i, %entry.nv50_audio_component_fini.exit_crit_edge
  %caps = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 2
  tail call void @nvif_object_unmap(ptr noundef %caps) #10
  tail call void @nvif_object_dtor(ptr noundef %caps) #10
  %core = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1
  tail call void @nv50_core_del(ptr noundef %core) #10
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sync, align 8
  tail call void @nouveau_bo_unmap(ptr noundef %14) #10
  %15 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sync, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %nv50_audio_component_fini.exit.if.end_crit_edge, label %if.then

nv50_audio_component_fini.exit.if.end_crit_edge:  ; preds = %nv50_audio_component_fini.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %nv50_audio_component_fini.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %16) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %nv50_audio_component_fini.exit.if.end_crit_edge
  %tobool.not.i18 = icmp eq ptr %sync, null
  br i1 %tobool.not.i18, label %if.end.nouveau_bo_ref.exit_crit_edge, label %if.end.i19

if.end.nouveau_bo_ref.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nouveau_bo_ref.exit

if.end.i19:                                       ; preds = %if.end
  %17 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sync, align 4
  store ptr null, ptr %sync, align 4
  %tobool5.not.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i, label %if.end.i19.nouveau_bo_ref.exit_crit_edge, label %if.then6.i

if.end.i19.nouveau_bo_ref.exit_crit_edge:         ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %nouveau_bo_ref.exit

if.then6.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ttm_bo_put(ptr noundef nonnull %18) #10
  br label %nouveau_bo_ref.exit

nouveau_bo_ref.exit:                              ; preds = %if.then6.i, %if.end.i19.nouveau_bo_ref.exit_crit_edge, %if.end.nouveau_bo_ref.exit_crit_edge
  %19 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %display.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %22, align 8
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_display_init(ptr noundef readonly %dev, i1 noundef zeroext %resume, i1 noundef zeroext %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %brmerge = or i1 %resume, %runtime
  br i1 %brmerge, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %core2 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core2, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call4 = tail call i32 %11(ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %12 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn58 = load ptr, ptr %encoder_list, align 4
  %cmp.not59 = icmp eq ptr %.pn58, %encoder_list
  br i1 %cmp.not59, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %lnot.i = xor i1 %runtime, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn60 = phi ptr [ %.pn58, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %encoder_type = getelementptr i8, ptr %.pn60, i32 32
  %13 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp7.not = icmp eq i32 %14, 7
  br i1 %cmp7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %15 = getelementptr i8, ptr %.pn60, i32 240
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then8.for.inc_crit_edge, label %if.end.i

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %if.then8
  %is_mst.i = getelementptr inbounds %struct.nv50_mstm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %is_mst.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_mst.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %mgr.i = getelementptr inbounds %struct.nv50_mstm, ptr %17, i32 0, i32 1
  %call.i = tail call i32 @drm_dp_mst_topology_mgr_resume(ptr noundef %mgr.i, i1 noundef zeroext %lnot.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.then3.i.if.end7.i_crit_edge

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %is_mst.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_mst.i, align 1
  %call.i.i = tail call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mgr.i, i1 noundef zeroext false) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then3.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %ret.0.i = phi i32 [ -1, %if.then5.i ], [ %call.i, %if.then3.i.if.end7.i_crit_edge ], [ 0, %if.end.i.if.end7.i_crit_edge ]
  %hpd_irq_lock.i = getelementptr i8, ptr %.pn60, i32 252
  tail call void @mutex_lock_nested(ptr noundef %hpd_irq_lock.i, i32 noundef 0) #10
  %suspended.i = getelementptr inbounds %struct.nv50_mstm, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %suspended.i, align 2
  tail call void @mutex_unlock(ptr noundef %hpd_irq_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp9.i = icmp eq i32 %ret.0.i, -1
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.for.inc_crit_edge

if.end7.i.for.inc_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.nv50_mstm, ptr %17, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %23) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then10.i, %if.end7.i.for.inc_crit_edge, %if.then8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18
  %25 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn5761 = load ptr, ptr %plane_list, align 4
  %cmp26.not62 = icmp eq ptr %.pn5761, %plane_list
  br i1 %cmp26.not62, label %for.end.for.end41_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.body28:                                       ; preds = %cleanup.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %.pn5763 = phi ptr [ %.pn57, %cleanup.for.body28_crit_edge ], [ %.pn5761, %for.end.for.body28_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn5763, i32 176
  %26 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs, align 4
  %cmp32.not = icmp eq ptr %27, @nv50_wndw
  br i1 %cmp32.not, label %if.end34, label %for.body28.cleanup_crit_edge

for.body28.cleanup_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr31 = getelementptr i8, ptr %.pn5763, i32 -44
  tail call void @nv50_wndw_init(ptr noundef %add.ptr31) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %for.body28.cleanup_crit_edge
  %28 = ptrtoint ptr %.pn5763 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn57 = load ptr, ptr %.pn5763, align 4
  %cmp26.not = icmp eq ptr %.pn57, %plane_list
  br i1 %cmp26.not, label %cleanup.for.end41_crit_edge, label %cleanup.for.body28_crit_edge

cleanup.for.body28_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

cleanup.for.end41_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.end41:                                        ; preds = %cleanup.for.end41_crit_edge, %for.end.for.end41_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_display_fini(ptr noundef readonly %dev, i1 noundef zeroext %runtime, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18
  %2 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn50 = load ptr, ptr %plane_list, align 4
  %cmp.not51 = icmp eq ptr %.pn50, %plane_list
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn52 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn50, %entry.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn52, i32 176
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %cmp7.not = icmp eq ptr %4, @nv50_wndw
  br i1 %cmp7.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr6 = getelementptr i8, ptr %.pn52, i32 -44
  tail call void @nv50_wndw_fini(ptr noundef %add.ptr6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %5 = ptrtoint ptr %.pn52 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn52, align 4
  %cmp.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %6 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn4953 = load ptr, ptr %encoder_list, align 4
  %cmp22.not54 = icmp eq ptr %.pn4953, %encoder_list
  br i1 %cmp22.not54, label %for.end.for.end35_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35

for.body24:                                       ; preds = %for.inc29.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn4955 = phi ptr [ %.pn49, %for.inc29.for.body24_crit_edge ], [ %.pn4953, %for.end.for.body24_crit_edge ]
  %encoder_type = getelementptr i8, ptr %.pn4955, i32 32
  %7 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp25.not = icmp eq i32 %8, 7
  br i1 %cmp25.not, label %for.body24.for.inc29_crit_edge, label %if.then26

for.body24.for.inc29_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

if.then26:                                        ; preds = %for.body24
  %9 = getelementptr i8, ptr %.pn4955, i32 240
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then26.for.inc29_crit_edge, label %if.end.i

if.then26.for.inc29_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

if.end.i:                                         ; preds = %if.then26
  %hpd_irq_lock.i = getelementptr i8, ptr %.pn4955, i32 252
  tail call void @mutex_lock_nested(ptr noundef %hpd_irq_lock.i, i32 noundef 0) #10
  %suspended.i = getelementptr inbounds %struct.nv50_mstm, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %suspended.i, align 2
  tail call void @mutex_unlock(ptr noundef %hpd_irq_lock.i) #10
  %is_mst.i = getelementptr inbounds %struct.nv50_mstm, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %is_mst.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_mst.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %if.end.i.for.inc29_crit_edge, label %if.then4.i

if.end.i.for.inc29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mgr.i = getelementptr inbounds %struct.nv50_mstm, ptr %11, i32 0, i32 1
  tail call void @drm_dp_mst_topology_mgr_suspend(ptr noundef %mgr.i) #10
  br label %for.inc29

for.inc29:                                        ; preds = %if.then4.i, %if.end.i.for.inc29_crit_edge, %if.then26.for.inc29_crit_edge, %for.body24.for.inc29_crit_edge
  %15 = ptrtoint ptr %.pn4955 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn49 = load ptr, ptr %.pn4955, align 4
  %cmp22.not = icmp eq ptr %.pn49, %encoder_list
  br i1 %cmp22.not, label %for.inc29.for.end35_crit_edge, label %for.inc29.for.body24_crit_edge

for.inc29.for.body24_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.inc29.for.end35_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35

for.end35:                                        ; preds = %for.inc29.for.end35_crit_edge, %for.end.for.end35_crit_edge
  br i1 %runtime, label %for.end35.if.end38_crit_edge, label %if.then36

for.end35.if.end38_crit_edge:                     ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then36:                                        ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #12
  %hpd_work = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20
  %call37 = tail call zeroext i1 @cancel_work_sync(ptr noundef %hpd_work) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %for.end35.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_core_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_head_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_connector_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_dp_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_core_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_audio_component_bind(ptr noundef %kdev, ptr noundef %hda_kdev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %call2 = tail call ptr @device_link_add(ptr noundef %hda_kdev, ptr noundef %kdev, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !213

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 671, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_modeset_lock_all(ptr noundef %1) #10
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nv50_audio_component_ops, ptr %ops, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %kdev, ptr %data, align 4
  %audio = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %audio, align 8
  tail call void @drm_modeset_unlock_all(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_audio_component_unbind(ptr nocapture noundef readonly %kdev, ptr nocapture noundef readnone %hda_kdev, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %1) #10
  %audio = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %audio, align 8
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ops, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data, align 4
  tail call void @drm_modeset_unlock_all(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_audio_component_get_eld(ptr nocapture noundef readonly %kdev, i32 noundef %port, i32 noundef %dev_id, ptr nocapture noundef writeonly %enabled, ptr nocapture noundef writeonly %buf, i32 noundef %max_bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 1
  %lock = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 31, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 16
  %7 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn61 = load ptr, ptr %encoder_list, align 4
  %cmp.not62 = icmp eq ptr %.pn61, %encoder_list
  br i1 %cmp.not62, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn63 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn61, %entry.for.body_crit_edge ]
  %encoder_type = getelementptr i8, ptr %.pn63, i32 32
  %8 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp5 = icmp eq i32 %9, 7
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %crtc = getelementptr i8, ptr %.pn63, i32 100
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %or = getelementptr i8, ptr %.pn63, i32 84
  %12 = ptrtoint ptr %or to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %or, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %port)
  %cmp10.not = icmp eq i32 %13, %port
  br i1 %cmp10.not, label %lor.lhs.false11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %dev_id)
  %cmp12.not = icmp eq i32 %15, %dev_id
  br i1 %cmp12.not, label %if.end14, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false11
  %audio7.le = getelementptr i8, ptr %.pn63, i32 108
  %connector.le = getelementptr i8, ptr %.pn63, i32 112
  %16 = ptrtoint ptr %connector.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connector.le, align 4
  %18 = ptrtoint ptr %audio7.le to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %audio7.le, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %enabled, align 1
  br i1 %tobool17.not, label %if.end14.for.end_crit_edge, label %if.then19

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %eld = getelementptr inbounds %struct.drm_connector, ptr %17, i32 0, i32 42
  %arrayidx.i = getelementptr %struct.drm_connector, ptr %17, i32 0, i32 42, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %22 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 4
  %23 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 %max_bytes)
  %24 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %23)
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %25 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn63, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then19, %if.end14.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.3 = phi i32 [ 0, %if.end14.for.end_crit_edge ], [ %add.i, %if.then19 ], [ 0, %entry.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_topology_mgr_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_user_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_output_poll_changed(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_atomic_check(ptr noundef %dev, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %core1 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core1, align 4
  %assign_windows = getelementptr inbounds %struct.nv50_core, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %assign_windows to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %assign_windows, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %head2 = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head2, align 4
  %static_wndw_map = getelementptr inbounds %struct.nv50_head_func, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %static_wndw_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %static_wndw_map, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %land.lhs.true.if.end28_crit_edge, label %if.then

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %land.lhs.true
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %16 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn191 = load ptr, ptr %crtc_list, align 4
  %cmp.not192 = icmp eq ptr %.pn191, %crtc_list
  br i1 %cmp.not192, label %if.then.if.end28_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn193 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn191, %if.then.for.body_crit_edge ]
  %crtc.0 = getelementptr i8, ptr %.pn193, i32 -8
  %call10 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef %crtc.0) #10
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add.ptr16 = getelementptr i8, ptr %.pn193, i32 -16
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 8
  %head21 = getelementptr inbounds %struct.nv50_core_func, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %head21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head21, align 4
  %static_wndw_map22 = getelementptr inbounds %struct.nv50_head_func, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %static_wndw_map22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %static_wndw_map22, align 4
  tail call void %23(ptr noundef %add.ptr16, ptr noundef %call10) #10
  %24 = ptrtoint ptr %.pn193 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn193, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %if.end.if.end28_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.end.if.end28_crit_edge, %if.then.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  %dev30 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %25 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev30, align 4
  %num_crtc194 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 30, i32 19
  %27 = ptrtoint ptr %num_crtc194 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_crtc194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp32195 = icmp sgt i32 %28, 0
  br i1 %cmp32195, label %for.body33.lr.ph, label %if.end28.for.end50_crit_edge

if.end28.for.end50_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50

for.body33.lr.ph:                                 ; preds = %if.end28
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body33

for.body33:                                       ; preds = %for.inc49.for.body33_crit_edge, %for.body33.lr.ph
  %i.0196 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc, %for.inc49.for.body33_crit_edge ]
  %29 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %30, i32 %i.0196
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 8
  %tobool34.not = icmp eq ptr %32, null
  br i1 %tobool34.not, label %for.body33.for.inc49_crit_edge, label %land.lhs.true35

for.body33.for.inc49_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

land.lhs.true35:                                  ; preds = %for.body33
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %30, i32 %i.0196, i32 3
  %33 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %new_state, align 4
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %36 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %bf.cast.not = icmp eq i8 %36, 0
  br i1 %bf.cast.not, label %land.lhs.true35.for.inc49_crit_edge, label %if.then42

land.lhs.true35.for.inc49_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

if.then42:                                        ; preds = %land.lhs.true35
  %call43 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %state, ptr noundef nonnull %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.for.inc49_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42.for.inc49_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

for.inc49:                                        ; preds = %if.then42.for.inc49_crit_edge, %land.lhs.true35.for.inc49_crit_edge, %for.body33.for.inc49_crit_edge
  %inc = add nuw nsw i32 %i.0196, 1
  %37 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev30, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 30, i32 19
  %39 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_crtc, align 4
  %cmp32 = icmp slt i32 %inc, %40
  br i1 %cmp32, label %for.inc49.for.body33_crit_edge, label %for.inc49.for.end50_crit_edge

for.inc49.for.end50_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50

for.inc49.for.body33_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

for.end50:                                        ; preds = %for.inc49.for.end50_crit_edge, %if.end28.for.end50_crit_edge
  %call51 = tail call i32 @drm_atomic_helper_check(ptr noundef %dev, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond55.preheader, label %for.end50.cleanup_crit_edge

for.end50.cleanup_crit_edge:                      ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond55.preheader:                             ; preds = %for.end50
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %41 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp56200 = icmp sgt i32 %42, 0
  br i1 %cmp56200, label %for.body57.lr.ph, label %for.cond55.preheader.for.end83_crit_edge

for.cond55.preheader.for.end83_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.body57.lr.ph:                                 ; preds = %for.cond55.preheader
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %crtcs.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %outp1.i.i = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 1
  %flush_disable14.i = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 3
  %lock_core.i = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 2
  br label %for.body57

for.body57:                                       ; preds = %for.inc81.for.body57_crit_edge, %for.body57.lr.ph
  %i.1201 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc82, %for.inc81.for.body57_crit_edge ]
  %43 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %connectors, align 4
  %arrayidx58 = getelementptr %struct.__drm_connnectors_state, ptr %44, i32 %i.1201
  %45 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx58, align 4
  %tobool60.not = icmp eq ptr %46, null
  br i1 %tobool60.not, label %for.body57.for.inc81_crit_edge, label %land.lhs.true61

for.body57.for.inc81_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

land.lhs.true61:                                  ; preds = %for.body57
  %old_state = getelementptr %struct.__drm_connnectors_state, ptr %44, i32 %i.1201, i32 2
  %47 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %old_state, align 4
  %new_state69 = getelementptr %struct.__drm_connnectors_state, ptr %44, i32 %i.1201, i32 3
  %49 = ptrtoint ptr %new_state69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %new_state69, align 4
  %best_encoder.i = getelementptr inbounds %struct.drm_connector_state, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %best_encoder.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %best_encoder.i, align 4
  %crtc1.i = getelementptr inbounds %struct.drm_connector_state, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %crtc1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %crtc1.i, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %land.lhs.true61.if.end75_crit_edge, label %if.end.i

land.lhs.true61.if.end75_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end.i:                                         ; preds = %land.lhs.true61
  %55 = ptrtoint ptr %crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crtcs.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %54, i32 0, i32 8
  %57 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index.i.i.i, align 4
  %old_state.i.i = getelementptr %struct.__drm_crtcs_state, ptr %56, i32 %58, i32 2
  %59 = ptrtoint ptr %old_state.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %old_state.i.i, align 8
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %active.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool4.not.i = icmp eq i8 %62, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end75_crit_edge, label %land.lhs.true.i

if.end.i.if.end75_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true.i:                                  ; preds = %if.end.i
  %new_state.i.i = getelementptr %struct.__drm_crtcs_state, ptr %56, i32 %58, i32 3
  %63 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %new_state.i.i, align 4
  %mode_changed.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %mode_changed.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i.i = load i8, ptr %mode_changed.i.i, align 2
  %66 = and i8 %bf.load.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %.not.i = icmp eq i8 %66, 0
  br i1 %.not.i, label %land.lhs.true.i.if.end75_crit_edge, label %land.lhs.true.i.for.cond.i.i_crit_edge

land.lhs.true.i.for.cond.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.cond.i.i

land.lhs.true.i.if.end75_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %land.lhs.true.i.for.cond.i.i_crit_edge
  %outp.0.in.i.i = phi ptr [ %outp.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %outp1.i.i, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %67 = ptrtoint ptr %outp.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %outp.0.i.i = load ptr, ptr %outp.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %outp.0.i.i, %outp1.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %encoder3.i.i = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.0.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %encoder3.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %encoder3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %69, %52
  br i1 %cmp4.i.i, label %for.body.i.i.nv50_disp_outp_atomic_add.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.nv50_disp_outp_atomic_add.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_disp_outp_atomic_add.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.cleanup.loopexit.split.loop.exit_crit_edge, label %if.end12.i.i

for.end.i.i.cleanup.loopexit.split.loop.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit.split.loop.exit

if.end12.i.i:                                     ; preds = %for.end.i.i
  %71 = ptrtoint ptr %outp1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %outp1.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %outp1.i.i, ptr noundef %72) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end12.i.i.list_add.exit.i.i_crit_edge

if.end12.i.i.list_add.exit.i.i_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %74 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %outp1.i.i, ptr %prev3.i.i.i.i, align 4
  %76 = ptrtoint ptr %outp1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %call7.i.i.i.i, ptr %outp1.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end12.i.i.list_add.exit.i.i_crit_edge
  %encoder15.i.i = getelementptr inbounds %struct.nv50_outp_atom, ptr %call7.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %encoder15.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %52, ptr %encoder15.i.i, align 8
  br label %nv50_disp_outp_atomic_add.exit.i

nv50_disp_outp_atomic_add.exit.i:                 ; preds = %list_add.exit.i.i, %for.body.i.i.nv50_disp_outp_atomic_add.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %list_add.exit.i.i ], [ %outp.0.i.i, %for.body.i.i.nv50_disp_outp_atomic_add.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nv50_disp_outp_atomic_add.exit.i.cleanup.loopexit.split.loop.exit_crit_edge, label %if.end11.i

nv50_disp_outp_atomic_add.exit.i.cleanup.loopexit.split.loop.exit_crit_edge: ; preds = %nv50_disp_outp_atomic_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit.split.loop.exit

if.end11.i:                                       ; preds = %nv50_disp_outp_atomic_add.exit.i
  %encoder12.i = getelementptr inbounds %struct.nv50_outp_atom, ptr %retval.0.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %encoder12.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %encoder12.i, align 4
  %encoder_type.i = getelementptr inbounds %struct.drm_encoder, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %81)
  %cmp.i146 = icmp eq i32 %81, 7
  br i1 %cmp.i146, label %if.then13.i, label %if.end11.i.if.end15.i_crit_edge

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %flush_disable.i = getelementptr inbounds %struct.nv50_outp_atom, ptr %retval.0.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %flush_disable.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %flush_disable.i, align 4
  %83 = ptrtoint ptr %flush_disable14.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %flush_disable14.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end15.i_crit_edge
  %clr.i = getelementptr inbounds %struct.nv50_outp_atom, ptr %retval.0.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %clr.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i = load i8, ptr %clr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %clr.i, align 2
  %85 = ptrtoint ptr %lock_core.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %lock_core.i, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end15.i, %land.lhs.true.i.if.end75_crit_edge, %if.end.i.if.end75_crit_edge, %land.lhs.true61.if.end75_crit_edge
  %best_encoder.i147 = getelementptr inbounds %struct.drm_connector_state, ptr %50, i32 0, i32 2
  %86 = ptrtoint ptr %best_encoder.i147 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %best_encoder.i147, align 4
  %crtc1.i148 = getelementptr inbounds %struct.drm_connector_state, ptr %50, i32 0, i32 1
  %88 = ptrtoint ptr %crtc1.i148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %crtc1.i148, align 4
  %tobool.not.i149 = icmp eq ptr %89, null
  br i1 %tobool.not.i149, label %if.end75.for.inc81_crit_edge, label %if.end.i154

if.end75.for.inc81_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

if.end.i154:                                      ; preds = %if.end75
  %90 = ptrtoint ptr %crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %crtcs.i.i, align 4
  %index.i.i.i151 = getelementptr inbounds %struct.drm_crtc, ptr %89, i32 0, i32 8
  %92 = ptrtoint ptr %index.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %index.i.i.i151, align 4
  %new_state.i.i152 = getelementptr %struct.__drm_crtcs_state, ptr %91, i32 %93, i32 3
  %94 = ptrtoint ptr %new_state.i.i152 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %new_state.i.i152, align 4
  %active.i153 = getelementptr inbounds %struct.drm_crtc_state, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %active.i153 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %active.i153, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool2.not.i = icmp eq i8 %97, 0
  br i1 %tobool2.not.i, label %if.end.i154.for.inc81_crit_edge, label %land.lhs.true.i158

if.end.i154.for.inc81_crit_edge:                  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

land.lhs.true.i158:                               ; preds = %if.end.i154
  %mode_changed.i.i155 = getelementptr inbounds %struct.drm_crtc_state, ptr %95, i32 0, i32 3
  %98 = ptrtoint ptr %mode_changed.i.i155 to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load.i.i156 = load i8, ptr %mode_changed.i.i155, align 2
  %99 = and i8 %bf.load.i.i156, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %.not.i157 = icmp eq i8 %99, 0
  br i1 %.not.i157, label %land.lhs.true.i158.for.inc81_crit_edge, label %land.lhs.true.i158.for.cond.i.i163_crit_edge

land.lhs.true.i158.for.cond.i.i163_crit_edge:     ; preds = %land.lhs.true.i158
  br label %for.cond.i.i163

land.lhs.true.i158.for.inc81_crit_edge:           ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

for.cond.i.i163:                                  ; preds = %for.body.i.i166.for.cond.i.i163_crit_edge, %land.lhs.true.i158.for.cond.i.i163_crit_edge
  %outp.0.in.i.i160 = phi ptr [ %outp.0.i.i161, %for.body.i.i166.for.cond.i.i163_crit_edge ], [ %outp1.i.i, %land.lhs.true.i158.for.cond.i.i163_crit_edge ]
  %100 = ptrtoint ptr %outp.0.in.i.i160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %outp.0.i.i161 = load ptr, ptr %outp.0.in.i.i160, align 4
  %cmp.not.i.i162 = icmp eq ptr %outp.0.i.i161, %outp1.i.i
  br i1 %cmp.not.i.i162, label %for.end.i.i169, label %for.body.i.i166

for.body.i.i166:                                  ; preds = %for.cond.i.i163
  %encoder3.i.i164 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.0.i.i161, i32 0, i32 1
  %101 = ptrtoint ptr %encoder3.i.i164 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %encoder3.i.i164, align 4
  %cmp4.i.i165 = icmp eq ptr %102, %87
  br i1 %cmp4.i.i165, label %for.body.i.i166.nv50_disp_outp_atomic_add.exit.i179_crit_edge, label %for.body.i.i166.for.cond.i.i163_crit_edge

for.body.i.i166.for.cond.i.i163_crit_edge:        ; preds = %for.body.i.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i163

for.body.i.i166.nv50_disp_outp_atomic_add.exit.i179_crit_edge: ; preds = %for.body.i.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_disp_outp_atomic_add.exit.i179

for.end.i.i169:                                   ; preds = %for.cond.i.i163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i167 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i.i168 = icmp eq ptr %call7.i.i.i.i167, null
  br i1 %tobool.not.i.i168, label %for.end.i.i169.cleanup.loopexit.split.loop.exit198_crit_edge, label %if.end12.i.i171

for.end.i.i169.cleanup.loopexit.split.loop.exit198_crit_edge: ; preds = %for.end.i.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit.split.loop.exit198

if.end12.i.i171:                                  ; preds = %for.end.i.i169
  %104 = ptrtoint ptr %outp1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %outp1.i.i, align 4
  %call.i.i.i.i170 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i167, ptr noundef %outp1.i.i, ptr noundef %105) #10
  br i1 %call.i.i.i.i170, label %if.end.i.i.i.i174, label %if.end12.i.i171.list_add.exit.i.i176_crit_edge

if.end12.i.i171.list_add.exit.i.i176_crit_edge:   ; preds = %if.end12.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i176

if.end.i.i.i.i174:                                ; preds = %if.end12.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i172 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i.i172 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i.i.i167, ptr %prev1.i.i.i.i172, align 4
  %107 = ptrtoint ptr %call7.i.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %105, ptr %call7.i.i.i.i167, align 8
  %prev3.i.i.i.i173 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i167, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %outp1.i.i, ptr %prev3.i.i.i.i173, align 4
  %109 = ptrtoint ptr %outp1.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %call7.i.i.i.i167, ptr %outp1.i.i, align 4
  br label %list_add.exit.i.i176

list_add.exit.i.i176:                             ; preds = %if.end.i.i.i.i174, %if.end12.i.i171.list_add.exit.i.i176_crit_edge
  %encoder15.i.i175 = getelementptr inbounds %struct.nv50_outp_atom, ptr %call7.i.i.i.i167, i32 0, i32 1
  %110 = ptrtoint ptr %encoder15.i.i175 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %87, ptr %encoder15.i.i175, align 8
  br label %nv50_disp_outp_atomic_add.exit.i179

nv50_disp_outp_atomic_add.exit.i179:              ; preds = %list_add.exit.i.i176, %for.body.i.i166.nv50_disp_outp_atomic_add.exit.i179_crit_edge
  %retval.0.i.i177 = phi ptr [ %call7.i.i.i.i167, %list_add.exit.i.i176 ], [ %outp.0.i.i161, %for.body.i.i166.nv50_disp_outp_atomic_add.exit.i179_crit_edge ]
  %cmp.i.i178 = icmp ugt ptr %retval.0.i.i177, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i178, label %nv50_disp_outp_atomic_add.exit.i179.cleanup.loopexit.split.loop.exit198_crit_edge, label %if.end9.i

nv50_disp_outp_atomic_add.exit.i179.cleanup.loopexit.split.loop.exit198_crit_edge: ; preds = %nv50_disp_outp_atomic_add.exit.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit.split.loop.exit198

if.end9.i:                                        ; preds = %nv50_disp_outp_atomic_add.exit.i179
  call void @__sanitizer_cov_trace_pc() #12
  %set.i = getelementptr inbounds %struct.nv50_outp_atom, ptr %retval.0.i.i177, i32 0, i32 3
  %111 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i180 = load i8, ptr %set.i, align 1
  %bf.set.i181 = or i8 %bf.load.i180, -128
  store i8 %bf.set.i181, ptr %set.i, align 1
  %112 = ptrtoint ptr %lock_core.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %lock_core.i, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %if.end9.i, %land.lhs.true.i158.for.inc81_crit_edge, %if.end.i154.for.inc81_crit_edge, %if.end75.for.inc81_crit_edge, %for.body57.for.inc81_crit_edge
  %inc82 = add nuw nsw i32 %i.1201, 1
  %113 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_connector, align 4
  %cmp56 = icmp slt i32 %inc82, %114
  br i1 %cmp56, label %for.inc81.for.body57_crit_edge, label %for.inc81.for.end83_crit_edge

for.inc81.for.end83_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.inc81.for.body57_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body57

for.end83:                                        ; preds = %for.inc81.for.end83_crit_edge, %for.cond55.preheader.for.end83_crit_edge
  %call84 = tail call i32 @drm_dp_mst_atomic_check(ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %for.end83.cleanup_crit_edge

for.end83.cleanup_crit_edge:                      ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end87:                                         ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nv50_crc_atomic_check_outp(ptr noundef %state) #10
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %nv50_disp_outp_atomic_add.exit.i.cleanup.loopexit.split.loop.exit_crit_edge, %for.end.i.i.cleanup.loopexit.split.loop.exit_crit_edge
  %retval.0.i35.i208 = phi ptr [ %retval.0.i.i, %nv50_disp_outp_atomic_add.exit.i.cleanup.loopexit.split.loop.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end.i.i.cleanup.loopexit.split.loop.exit_crit_edge ]
  %115 = ptrtoint ptr %retval.0.i35.i208 to i32
  br label %cleanup

cleanup.loopexit.split.loop.exit198:              ; preds = %nv50_disp_outp_atomic_add.exit.i179.cleanup.loopexit.split.loop.exit198_crit_edge, %for.end.i.i169.cleanup.loopexit.split.loop.exit198_crit_edge
  %retval.0.i22.i211 = phi ptr [ %retval.0.i.i177, %nv50_disp_outp_atomic_add.exit.i179.cleanup.loopexit.split.loop.exit198_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end.i.i169.cleanup.loopexit.split.loop.exit198_crit_edge ]
  %116 = ptrtoint ptr %retval.0.i22.i211 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit198, %cleanup.loopexit.split.loop.exit, %if.end87, %for.end83.cleanup_crit_edge, %for.end50.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then12
  %retval.0 = phi i32 [ %17, %if.then12 ], [ 0, %if.end87 ], [ %call51, %for.end50.cleanup_crit_edge ], [ %call84, %for.end83.cleanup_crit_edge ], [ %115, %cleanup.loopexit.split.loop.exit ], [ %116, %cleanup.loopexit.split.loop.exit198 ], [ %call43, %if.then42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_atomic_commit(ptr noundef %dev, ptr noundef %state, i1 noundef zeroext %nonblock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @drm_atomic_helper_setup_commit(ptr noundef %state, i1 noundef zeroext %nonblock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %commit_work = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 11
  tail call void @__init_work(ptr noundef %commit_work, i32 noundef 0) #10
  %2 = ptrtoint ptr %commit_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %commit_work, align 4
  %lockdep_map = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @nv50_disp_atomic_commit.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry12 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 11, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nv50_disp_atomic_commit_work, ptr %func, align 4
  %call14 = tail call i32 @drm_atomic_helper_prepare_planes(ptr noundef %dev, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %do.body
  br i1 %nonblock, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @drm_atomic_helper_wait_for_fences(ptr noundef %dev, ptr noundef %state, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.if.then54_crit_edge

if.then19.if.then54_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %call25 = tail call i32 @drm_atomic_helper_swap_state(ptr noundef %state, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond.preheader, label %if.end24.if.then54_crit_edge

if.end24.if.then54_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

for.cond.preheader:                               ; preds = %if.end24
  %dev29 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev29, align 4
  %num_total_plane105 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 17
  %8 = ptrtoint ptr %num_total_plane105 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_total_plane105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp30106 = icmp sgt i32 %9, 0
  br i1 %cmp30106, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %11, i32 %i.0107
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %land.lhs.true32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true32:                                  ; preds = %for.body
  %new_state = getelementptr %struct.__drm_planes_state, ptr %11, i32 %i.0107, i32 3
  %14 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new_state, align 4
  %set = getelementptr inbounds %struct.nv50_wndw_atom, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %set, align 1
  %17 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %bf.cast.not = icmp eq i8 %17, 0
  br i1 %bf.cast.not, label %land.lhs.true32.for.inc_crit_edge, label %if.then42

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then42:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr41 = getelementptr i8, ptr %13, i32 -40
  tail call void @nv50_wndw_ntfy_enable(ptr noundef %add.ptr41, ptr noundef %15) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %land.lhs.true32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0107, 1
  %18 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev29, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 17
  %20 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_total_plane, align 4
  %cmp30 = icmp slt i32 %inc, %21
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call fastcc void @drm_atomic_state_get(ptr noundef %state)
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !228
  br i1 %nonblock, label %if.then48, label %if.else51

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %25 = load ptr, ptr @system_unbound_wq, align 4
  %call.i101 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %commit_work) #10
  br label %cleanup

if.else51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nv50_disp_atomic_commit_tail(ptr noundef %state)
  br label %cleanup

if.then54:                                        ; preds = %if.end24.if.then54_crit_edge, %if.then19.if.then54_crit_edge
  %ret.0 = phi i32 [ %call25, %if.end24.if.then54_crit_edge ], [ %call20, %if.then19.if.then54_crit_edge ]
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %dev, ptr noundef %state) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.else51, %if.then48, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call14, %do.body.cleanup_crit_edge ], [ %ret.0, %if.then54 ], [ 0, %if.then48 ], [ 0, %if.else51 ]
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  %call.i102 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_disp_atomic_state_alloc(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 100) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @drm_atomic_state_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %outp = getelementptr inbounds %struct.nv50_atom, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %outp, ptr %outp, align 8
  %prev.i = getelementptr inbounds %struct.nv50_atom, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %outp, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call7.i.i, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_atomic_state_clear(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %outp2 = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %outp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outp2, align 4
  %cmp.not23 = icmp eq ptr %1, %outp2
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %outp.024 = phi ptr [ %outt.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %outp.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %outt.0 = load ptr, ptr %outp.024, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %outp.024) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %outp.024, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %outp.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %outp.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %outp.024 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %outp.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %outp.024, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %outp.024) #10
  %cmp.not = icmp eq ptr %outt.0, %outp2
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @drm_atomic_state_default_clear(ptr noundef %state) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_atomic_state_free(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_atomic_state_default_release(ptr noundef %state) #10
  tail call void @kfree(ptr noundef %state) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_atomic_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_check_outp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_setup_commit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_atomic_commit_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  tail call fastcc void @nv50_disp_atomic_commit_tail(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_prepare_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_wait_for_fences(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_swap_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_ntfy_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_atomic_state_get(ptr noundef %state) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 1, ptr elementtype(i32) %state) #10, !srcloc !229
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !213

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !217

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %state, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_atomic_commit_tail(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %interlock = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
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
  %core3 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %interlock) #10
  %10 = call ptr @memset(ptr %interlock, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %11 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end15_crit_edge, label %do.body5

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %lock_core = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 2
  %18 = ptrtoint ptr %lock_core to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lock_core, align 4, !range !223
  %20 = zext i8 %19 to i32
  %flush_disable = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 3
  %21 = ptrtoint ptr %flush_disable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flush_disable, align 1, !range !223
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %20, i32 noundef %23) #13
  br label %do.end15

do.end15:                                         ; preds = %do.body5, %entry.do.end15_crit_edge
  tail call void @nv50_crc_atomic_stop_reporting(ptr noundef %state) #10
  %call16 = tail call i32 @drm_atomic_helper_wait_for_fences(ptr noundef %1, ptr noundef %state, i1 noundef zeroext false) #10
  tail call void @drm_atomic_helper_wait_for_dependencies(ptr noundef %state) #10
  tail call void @drm_atomic_helper_update_legacy_modeset_state(ptr noundef %1, ptr noundef %state) #10
  tail call void @drm_atomic_helper_calc_timestamping_constants(ptr noundef %state) #10
  %lock_core17 = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 2
  %24 = ptrtoint ptr %lock_core17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lock_core17, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not = icmp eq i8 %25, 0
  br i1 %tobool18.not, label %do.end15.if.end20_crit_edge, label %if.then19

do.end15.if.end20_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.end15.if.end20_crit_edge
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  %num_crtc924 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 30, i32 19
  %28 = ptrtoint ptr %num_crtc924 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_crtc924, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp925 = icmp sgt i32 %29, 0
  br i1 %cmp925, label %for.body.lr.ph, label %if.end20.for.cond76.preheader_crit_edge

if.end20.for.cond76.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond76.preheader

for.body.lr.ph:                                   ; preds = %if.end20
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %drm47 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name50 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %dev66 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %flush_disable71 = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 3
  br label %for.body

for.cond76.preheader:                             ; preds = %for.inc.for.cond76.preheader_crit_edge, %if.end20.for.cond76.preheader_crit_edge
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  %num_total_plane928 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 30, i32 17
  %32 = ptrtoint ptr %num_total_plane928 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_total_plane928, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp79929 = icmp sgt i32 %33, 0
  br i1 %cmp79929, label %for.body81.lr.ph, label %for.cond76.preheader.for.end135_crit_edge

for.cond76.preheader.for.end135_crit_edge:        ; preds = %for.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end135

for.body81.lr.ph:                                 ; preds = %for.cond76.preheader
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %drm109 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name112 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %flush_disable129 = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 3
  br label %for.body81

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0926 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %35, i32 %i.0926
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 8
  %tobool23.not = icmp eq ptr %37, null
  br i1 %tobool23.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_crtcs_state, ptr %35, i32 %i.0926, i32 2
  %38 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %old_state, align 8
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %35, i32 %i.0926, i32 3
  %40 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %new_state, align 4
  %add.ptr37 = getelementptr i8, ptr %37, i32 -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %42 = load i32, ptr @__drm_debug, align 4
  %and.i850 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i850)
  %tobool.i851.not = icmp eq i32 %and.i850, 0
  br i1 %tobool.i851.not, label %land.lhs.true.do.end59_crit_edge, label %do.body41

land.lhs.true.do.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

do.body41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %drm47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %drm47, align 8
  %dev48 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev48, align 8
  %dev49 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev49, align 4
  %name52 = getelementptr inbounds %struct.drm_crtc, ptr %37, i32 0, i32 3
  %49 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name52, align 8
  %clr = getelementptr inbounds %struct.nv50_head_atom, ptr %41, i32 0, i32 15
  %51 = ptrtoint ptr %clr to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %clr, align 2
  %conv53 = zext i16 %52 to i32
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %41, i32 0, i32 14
  %53 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %set, align 8
  %conv54 = zext i16 %54 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.27, ptr noundef %name50, ptr noundef %50, i32 noundef %conv53, i32 noundef %conv54) #13
  br label %do.end59

do.end59:                                         ; preds = %do.body41, %land.lhs.true.do.end59_crit_edge
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 2
  %55 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %active, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool60.not = icmp eq i8 %56, 0
  br i1 %tobool60.not, label %do.end59.if.end67_crit_edge, label %land.lhs.true62

do.end59.if.end67_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

land.lhs.true62:                                  ; preds = %do.end59
  %active63 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 2
  %57 = ptrtoint ptr %active63 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %active63, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool64.not = icmp eq i8 %58, 0
  br i1 %tobool64.not, label %if.then65, label %land.lhs.true62.if.end67_crit_edge

land.lhs.true62.if.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %land.lhs.true62
  %59 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev66, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !231
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then65.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then65.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !232
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then65.pm_runtime_put_noidle.exit_crit_edge
  tail call void @drm_crtc_vblank_off(ptr noundef nonnull %37) #10
  br label %if.end67

if.end67:                                         ; preds = %pm_runtime_put_noidle.exit, %land.lhs.true62.if.end67_crit_edge, %do.end59.if.end67_crit_edge
  %clr68 = getelementptr inbounds %struct.nv50_head_atom, ptr %41, i32 0, i32 15
  %62 = ptrtoint ptr %clr68 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %clr68, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool69.not = icmp eq i16 %63, 0
  br i1 %tobool69.not, label %if.end67.for.inc_crit_edge, label %if.then70

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %flush_disable71 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flush_disable71, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool72 = icmp ne i8 %65, 0
  tail call void @nv50_head_flush_clr(ptr noundef %add.ptr37, ptr noundef %41, i1 noundef zeroext %tobool72) #10
  %66 = ptrtoint ptr %interlock to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %interlock, align 4
  %or = or i32 %67, 1
  store i32 %or, ptr %interlock, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then70, %if.end67.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0926, 1
  %68 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %69, i32 0, i32 30, i32 19
  %70 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %71
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond76.preheader_crit_edge

for.inc.for.cond76.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond76.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body81:                                       ; preds = %for.inc133.for.body81_crit_edge, %for.body81.lr.ph
  %i.1930 = phi i32 [ 0, %for.body81.lr.ph ], [ %inc134, %for.inc133.for.body81_crit_edge ]
  %72 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %planes, align 4
  %arrayidx82 = getelementptr %struct.__drm_planes_state, ptr %73, i32 %i.1930
  %74 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx82, align 4
  %tobool84.not = icmp eq ptr %75, null
  br i1 %tobool84.not, label %for.body81.for.inc133_crit_edge, label %land.lhs.true85

for.body81.for.inc133_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

land.lhs.true85:                                  ; preds = %for.body81
  %new_state91 = getelementptr %struct.__drm_planes_state, ptr %73, i32 %i.1930, i32 3
  %76 = ptrtoint ptr %new_state91 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %new_state91, align 4
  %add.ptr99 = getelementptr i8, ptr %75, i32 -40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %78 = load i32, ptr @__drm_debug, align 4
  %and.i852 = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i852)
  %tobool.i853.not = icmp eq i32 %and.i852, 0
  br i1 %tobool.i853.not, label %land.lhs.true85.do.end123_crit_edge, label %do.body103

land.lhs.true85.do.end123_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123

do.body103:                                       ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %drm109 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %drm109, align 8
  %dev110 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev110, align 8
  %dev111 = getelementptr inbounds %struct.drm_device, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev111, align 4
  %name114 = getelementptr inbounds %struct.drm_plane, ptr %75, i32 0, i32 2
  %85 = ptrtoint ptr %name114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name114, align 4
  %clr115 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %77, i32 0, i32 13
  %87 = ptrtoint ptr %clr115 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %clr115, align 4
  %conv116 = zext i8 %88 to i32
  %set117 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %77, i32 0, i32 12
  %89 = ptrtoint ptr %set117 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %set117, align 1
  %conv118 = zext i8 %90 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.30, ptr noundef %name112, ptr noundef %86, i32 noundef %conv116, i32 noundef %conv118) #13
  br label %do.end123

do.end123:                                        ; preds = %do.body103, %land.lhs.true85.do.end123_crit_edge
  %clr124 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %77, i32 0, i32 13
  %91 = ptrtoint ptr %clr124 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %clr124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool125.not = icmp eq i8 %92, 0
  br i1 %tobool125.not, label %do.end123.for.inc133_crit_edge, label %if.end127

do.end123.for.inc133_crit_edge:                   ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

if.end127:                                        ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %flush_disable129 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %flush_disable129, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool130 = icmp ne i8 %94, 0
  call void @nv50_wndw_flush_clr(ptr noundef %add.ptr99, ptr noundef nonnull %interlock, i1 noundef zeroext %tobool130, ptr noundef %77) #10
  br label %for.inc133

for.inc133:                                       ; preds = %if.end127, %do.end123.for.inc133_crit_edge, %for.body81.for.inc133_crit_edge
  %inc134 = add nuw nsw i32 %i.1930, 1
  %95 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev1, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %96, i32 0, i32 30, i32 17
  %97 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_total_plane, align 4
  %cmp79 = icmp slt i32 %inc134, %98
  br i1 %cmp79, label %for.inc133.for.body81_crit_edge, label %for.inc133.for.end135_crit_edge

for.inc133.for.end135_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end135

for.inc133.for.body81_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body81

for.end135:                                       ; preds = %for.inc133.for.end135_crit_edge, %for.cond76.preheader.for.end135_crit_edge
  %outp137 = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 1
  %99 = ptrtoint ptr %outp137 to i32
  call void @__asan_load4_noabort(i32 %99)
  %outp.0932 = load ptr, ptr %outp137, align 4
  %cmp143.not933 = icmp eq ptr %outp.0932, %outp137
  br i1 %cmp143.not933, label %for.end135.for.end190_crit_edge, label %for.body145.lr.ph

for.end135.for.end190_crit_edge:                  ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end190

for.body145.lr.ph:                                ; preds = %for.end135
  %drm156 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name159 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body145

for.body145:                                      ; preds = %if.end183.for.body145_crit_edge, %for.body145.lr.ph
  %outp.0935 = phi ptr [ %outp.0932, %for.body145.lr.ph ], [ %outp.0, %if.end183.for.body145_crit_edge ]
  %flushed.0.off0934 = phi i1 [ false, %for.body145.lr.ph ], [ %flushed.1.off0, %if.end183.for.body145_crit_edge ]
  %encoder146 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.0935, i32 0, i32 1
  %100 = ptrtoint ptr %encoder146 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %encoder146, align 4
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %helper_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %104 = load i32, ptr @__drm_debug, align 4
  %and.i854 = and i32 %104, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i854)
  %tobool.i855.not = icmp eq i32 %and.i854, 0
  br i1 %tobool.i855.not, label %for.body145.do.end170_crit_edge, label %do.body150

for.body145.do.end170_crit_edge:                  ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end170

do.body150:                                       ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %drm156 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %drm156, align 8
  %dev157 = getelementptr inbounds %struct.nouveau_drm, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev157, align 8
  %dev158 = getelementptr inbounds %struct.drm_device, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %dev158 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev158, align 4
  %name161 = getelementptr inbounds %struct.drm_encoder, ptr %101, i32 0, i32 3
  %111 = ptrtoint ptr %name161 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name161, align 4
  %clr162 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.0935, i32 0, i32 4
  %113 = ptrtoint ptr %clr162 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %clr162, align 2
  %conv163 = zext i8 %114 to i32
  %set164 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.0935, i32 0, i32 3
  %115 = ptrtoint ptr %set164 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %set164, align 1
  %conv165 = zext i8 %116 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.30, ptr noundef %name159, ptr noundef %112, i32 noundef %conv163, i32 noundef %conv165) #13
  br label %do.end170

do.end170:                                        ; preds = %do.body150, %for.body145.do.end170_crit_edge
  %clr171 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.0935, i32 0, i32 4
  %117 = ptrtoint ptr %clr171 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %clr171, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool172.not = icmp eq i8 %118, 0
  br i1 %tobool172.not, label %do.end170.if.end183_crit_edge, label %if.then173

do.end170.if.end183_crit_edge:                    ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then173:                                       ; preds = %do.end170
  %atomic_disable = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %103, i32 0, i32 8
  %119 = ptrtoint ptr %atomic_disable to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %atomic_disable, align 4
  call void %120(ptr noundef %101, ptr noundef %state) #10
  %121 = ptrtoint ptr %interlock to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %interlock, align 4
  %or175 = or i32 %122, 1
  store i32 %or175, ptr %interlock, align 4
  %flush_disable176 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.0935, i32 0, i32 2
  %123 = ptrtoint ptr %flush_disable176 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %flush_disable176, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool177.not = icmp eq i8 %124, 0
  br i1 %tobool177.not, label %if.then173.if.end183_crit_edge, label %if.then178

if.then173.if.end183_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then178:                                       ; preds = %if.then173
  %125 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev1, align 4
  %num_total_plane31.i = getelementptr inbounds %struct.drm_device, ptr %126, i32 0, i32 30, i32 17
  %127 = ptrtoint ptr %num_total_plane31.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_total_plane31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp32.i = icmp sgt i32 %128, 0
  br i1 %cmp32.i, label %if.then178.for.body.i_crit_edge, label %if.then178.nv50_disp_atomic_commit_wndw.exit_crit_edge

if.then178.nv50_disp_atomic_commit_wndw.exit_crit_edge: ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_disp_atomic_commit_wndw.exit

if.then178.for.body.i_crit_edge:                  ; preds = %if.then178
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then178.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then178.for.body.i_crit_edge ]
  %129 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %planes.i, align 4
  %arrayidx.i = getelementptr %struct.__drm_planes_state, ptr %130, i32 %i.033.i
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %132, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %132, i32 -40
  %interlock6.i = getelementptr i8, ptr %132, i32 -28
  %133 = ptrtoint ptr %interlock6.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %interlock6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %interlock, i32 %134
  %135 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx7.i, align 4
  %data.i = getelementptr i8, ptr %132, i32 -24
  %137 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %data.i, align 4
  %and.i856 = and i32 %138, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i856)
  %tobool9.not.i = icmp eq i32 %and.i856, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then10.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 8
  %update.i = getelementptr inbounds %struct.nv50_wndw_func, ptr %140, i32 0, i32 22
  %141 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %update.i, align 4
  %tobool11.not.i = icmp eq ptr %142, null
  br i1 %tobool11.not.i, label %if.then10.i.for.inc.i_crit_edge, label %if.then12.i

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 %142(ptr noundef %add.ptr.i, ptr noundef nonnull %interlock) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %if.then10.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %143 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev1, align 4
  %num_total_plane.i = getelementptr inbounds %struct.drm_device, ptr %144, i32 0, i32 30, i32 17
  %145 = ptrtoint ptr %num_total_plane.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_total_plane.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %146
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nv50_disp_atomic_commit_wndw.exit_crit_edge

for.inc.i.nv50_disp_atomic_commit_wndw.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_disp_atomic_commit_wndw.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

nv50_disp_atomic_commit_wndw.exit:                ; preds = %for.inc.i.nv50_disp_atomic_commit_wndw.exit_crit_edge, %if.then178.nv50_disp_atomic_commit_wndw.exit_crit_edge
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %state, ptr noundef nonnull %interlock)
  %147 = call ptr @memset(ptr %interlock, i32 0, i32 24)
  br label %if.end183

if.end183:                                        ; preds = %nv50_disp_atomic_commit_wndw.exit, %if.then173.if.end183_crit_edge, %do.end170.if.end183_crit_edge
  %flushed.1.off0 = phi i1 [ true, %nv50_disp_atomic_commit_wndw.exit ], [ %flushed.0.off0934, %if.then173.if.end183_crit_edge ], [ %flushed.0.off0934, %do.end170.if.end183_crit_edge ]
  %148 = ptrtoint ptr %outp.0935 to i32
  call void @__asan_load4_noabort(i32 %148)
  %outp.0 = load ptr, ptr %outp.0935, align 4
  %cmp143.not = icmp eq ptr %outp.0, %outp137
  br i1 %cmp143.not, label %if.end183.for.end190_crit_edge, label %if.end183.for.body145_crit_edge

if.end183.for.body145_crit_edge:                  ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body145

if.end183.for.end190_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end190

for.end190:                                       ; preds = %if.end183.for.end190_crit_edge, %for.end135.for.end190_crit_edge
  %flushed.0.off0.lcssa = phi i1 [ false, %for.end135.for.end190_crit_edge ], [ %flushed.1.off0, %if.end183.for.end190_crit_edge ]
  %149 = ptrtoint ptr %interlock to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %interlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool192.not = icmp eq i32 %150, 0
  br i1 %tobool192.not, label %for.end190.if.end201_crit_edge, label %if.then193

for.end190.if.end201_crit_edge:                   ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.then193:                                       ; preds = %for.end190
  %flush_disable194 = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 3
  %151 = ptrtoint ptr %flush_disable194 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %flush_disable194, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool195.not = icmp eq i8 %152, 0
  br i1 %tobool195.not, label %if.then193.if.end201_crit_edge, label %if.then196

if.then193.if.end201_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.then196:                                       ; preds = %if.then193
  %153 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev1, align 4
  %num_total_plane31.i858 = getelementptr inbounds %struct.drm_device, ptr %154, i32 0, i32 30, i32 17
  %155 = ptrtoint ptr %num_total_plane31.i858 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %num_total_plane31.i858, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp32.i859 = icmp sgt i32 %156, 0
  br i1 %cmp32.i859, label %for.body.lr.ph.i861, label %if.then196.if.end201.thread_crit_edge

if.then196.if.end201.thread_crit_edge:            ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201.thread

for.body.lr.ph.i861:                              ; preds = %if.then196
  %planes.i860 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body.i865

for.body.i865:                                    ; preds = %for.inc.i881.for.body.i865_crit_edge, %for.body.lr.ph.i861
  %i.033.i862 = phi i32 [ 0, %for.body.lr.ph.i861 ], [ %inc.i878, %for.inc.i881.for.body.i865_crit_edge ]
  %157 = ptrtoint ptr %planes.i860 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %planes.i860, align 4
  %arrayidx.i863 = getelementptr %struct.__drm_planes_state, ptr %158, i32 %i.033.i862
  %159 = ptrtoint ptr %arrayidx.i863 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i863, align 4
  %tobool.not.i864 = icmp eq ptr %160, null
  br i1 %tobool.not.i864, label %for.body.i865.for.inc.i881_crit_edge, label %land.lhs.true.i872

for.body.i865.for.inc.i881_crit_edge:             ; preds = %for.body.i865
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i881

land.lhs.true.i872:                               ; preds = %for.body.i865
  %add.ptr.i866 = getelementptr i8, ptr %160, i32 -40
  %interlock6.i867 = getelementptr i8, ptr %160, i32 -28
  %161 = ptrtoint ptr %interlock6.i867 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %interlock6.i867, align 4
  %arrayidx7.i868 = getelementptr i32, ptr %interlock, i32 %162
  %163 = ptrtoint ptr %arrayidx7.i868 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx7.i868, align 4
  %data.i869 = getelementptr i8, ptr %160, i32 -24
  %165 = ptrtoint ptr %data.i869 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data.i869, align 4
  %and.i870 = and i32 %166, %164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i870)
  %tobool9.not.i871 = icmp eq i32 %and.i870, 0
  br i1 %tobool9.not.i871, label %land.lhs.true.i872.for.inc.i881_crit_edge, label %if.then10.i875

land.lhs.true.i872.for.inc.i881_crit_edge:        ; preds = %land.lhs.true.i872
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i881

if.then10.i875:                                   ; preds = %land.lhs.true.i872
  %167 = ptrtoint ptr %add.ptr.i866 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i866, align 8
  %update.i873 = getelementptr inbounds %struct.nv50_wndw_func, ptr %168, i32 0, i32 22
  %169 = ptrtoint ptr %update.i873 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %update.i873, align 4
  %tobool11.not.i874 = icmp eq ptr %170, null
  br i1 %tobool11.not.i874, label %if.then10.i875.for.inc.i881_crit_edge, label %if.then12.i877

if.then10.i875.for.inc.i881_crit_edge:            ; preds = %if.then10.i875
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i881

if.then12.i877:                                   ; preds = %if.then10.i875
  call void @__sanitizer_cov_trace_pc() #12
  %call.i876 = call i32 %170(ptr noundef %add.ptr.i866, ptr noundef nonnull %interlock) #10
  br label %for.inc.i881

for.inc.i881:                                     ; preds = %if.then12.i877, %if.then10.i875.for.inc.i881_crit_edge, %land.lhs.true.i872.for.inc.i881_crit_edge, %for.body.i865.for.inc.i881_crit_edge
  %inc.i878 = add nuw nsw i32 %i.033.i862, 1
  %171 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev1, align 4
  %num_total_plane.i879 = getelementptr inbounds %struct.drm_device, ptr %172, i32 0, i32 30, i32 17
  %173 = ptrtoint ptr %num_total_plane.i879 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_total_plane.i879, align 4
  %cmp.i880 = icmp slt i32 %inc.i878, %174
  br i1 %cmp.i880, label %for.inc.i881.for.body.i865_crit_edge, label %for.inc.i881.if.end201.thread_crit_edge

for.inc.i881.if.end201.thread_crit_edge:          ; preds = %for.inc.i881
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201.thread

for.inc.i881.for.body.i865_crit_edge:             ; preds = %for.inc.i881
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i865

if.end201.thread:                                 ; preds = %for.inc.i881.if.end201.thread_crit_edge, %if.then196.if.end201.thread_crit_edge
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %state, ptr noundef nonnull %interlock)
  %175 = call ptr @memset(ptr %interlock, i32 0, i32 24)
  br label %if.then203

if.end201:                                        ; preds = %if.then193.if.end201_crit_edge, %for.end190.if.end201_crit_edge
  br i1 %flushed.0.off0.lcssa, label %if.end201.if.then203_crit_edge, label %if.end201.if.end204_crit_edge

if.end201.if.end204_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204

if.end201.if.then203_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then203

if.then203:                                       ; preds = %if.end201.if.then203_crit_edge, %if.end201.thread
  call void @nv50_crc_atomic_release_notifier_contexts(ptr noundef %state) #10
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %if.end201.if.end204_crit_edge
  %flushed.2.off0922 = phi i1 [ true, %if.then203 ], [ false, %if.end201.if.end204_crit_edge ]
  call void @nv50_crc_atomic_init_notifier_contexts(ptr noundef %state) #10
  %176 = ptrtoint ptr %outp137 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %outp137, align 4
  %cmp218.not937 = icmp eq ptr %177, %outp137
  br i1 %cmp218.not937, label %if.end204.for.cond263.preheader_crit_edge, label %for.body221.lr.ph

if.end204.for.cond263.preheader_crit_edge:        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond263.preheader

for.body221.lr.ph:                                ; preds = %if.end204
  %drm235 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name238 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  br label %for.body221

for.cond263.preheader:                            ; preds = %list_del.exit.for.cond263.preheader_crit_edge, %if.end204.for.cond263.preheader_crit_edge
  %178 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev1, align 4
  %num_crtc266941 = getelementptr inbounds %struct.drm_device, ptr %179, i32 0, i32 30, i32 19
  %180 = ptrtoint ptr %num_crtc266941 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %num_crtc266941, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp267942 = icmp sgt i32 %181, 0
  br i1 %cmp267942, label %for.body269.lr.ph, label %for.cond263.preheader.for.end339_crit_edge

for.cond263.preheader.for.end339_crit_edge:       ; preds = %for.cond263.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end339

for.body269.lr.ph:                                ; preds = %for.cond263.preheader
  %crtcs270 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %drm303 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name306 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %dev329 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  br label %for.body269

for.body221:                                      ; preds = %list_del.exit.for.body221_crit_edge, %for.body221.lr.ph
  %outp.1938 = phi ptr [ %177, %for.body221.lr.ph ], [ %outt.0940, %list_del.exit.for.body221_crit_edge ]
  %182 = ptrtoint ptr %outp.1938 to i32
  call void @__asan_load4_noabort(i32 %182)
  %outt.0940 = load ptr, ptr %outp.1938, align 4
  %encoder224 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.1938, i32 0, i32 1
  %183 = ptrtoint ptr %encoder224 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %encoder224, align 4
  %helper_private225 = getelementptr inbounds %struct.drm_encoder, ptr %184, i32 0, i32 11
  %185 = ptrtoint ptr %helper_private225 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %helper_private225, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %187 = load i32, ptr @__drm_debug, align 4
  %and.i883 = and i32 %187, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i883)
  %tobool.i884.not = icmp eq i32 %and.i883, 0
  br i1 %tobool.i884.not, label %for.body221.do.end249_crit_edge, label %do.body229

for.body221.do.end249_crit_edge:                  ; preds = %for.body221
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end249

do.body229:                                       ; preds = %for.body221
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %drm235 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %drm235, align 8
  %dev236 = getelementptr inbounds %struct.nouveau_drm, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %dev236 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev236, align 8
  %dev237 = getelementptr inbounds %struct.drm_device, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %dev237 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev237, align 4
  %name240 = getelementptr inbounds %struct.drm_encoder, ptr %184, i32 0, i32 3
  %194 = ptrtoint ptr %name240 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %name240, align 4
  %set241 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.1938, i32 0, i32 3
  %196 = ptrtoint ptr %set241 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %set241, align 1
  %conv242 = zext i8 %197 to i32
  %clr243 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.1938, i32 0, i32 4
  %198 = ptrtoint ptr %clr243 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %clr243, align 2
  %conv244 = zext i8 %199 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %193, ptr noundef nonnull @.str.35, ptr noundef %name238, ptr noundef %195, i32 noundef %conv242, i32 noundef %conv244) #13
  br label %do.end249

do.end249:                                        ; preds = %do.body229, %for.body221.do.end249_crit_edge
  %set250 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp.1938, i32 0, i32 3
  %200 = ptrtoint ptr %set250 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %set250, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool251.not = icmp eq i8 %201, 0
  br i1 %tobool251.not, label %do.end249.if.end254_crit_edge, label %if.then252

do.end249.if.end254_crit_edge:                    ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.then252:                                       ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #12
  %atomic_enable = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %186, i32 0, i32 9
  %202 = ptrtoint ptr %atomic_enable to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %atomic_enable, align 4
  call void %203(ptr noundef %184, ptr noundef %state) #10
  %204 = ptrtoint ptr %interlock to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1, ptr %interlock, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then252, %do.end249.if.end254_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %outp.1938) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end254.list_del.exit_crit_edge

if.end254.list_del.exit_crit_edge:                ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %outp.1938, i32 0, i32 1
  %205 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prev.i.i, align 4
  %207 = ptrtoint ptr %outp.1938 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %outp.1938, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %206, ptr %prev1.i.i.i, align 4
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %208, ptr %206, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end254.list_del.exit_crit_edge
  %211 = ptrtoint ptr %outp.1938 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr inttoptr (i32 256 to ptr), ptr %outp.1938, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %outp.1938, i32 0, i32 1
  %212 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %outp.1938) #10
  %cmp218.not = icmp eq ptr %outt.0940, %outp137
  br i1 %cmp218.not, label %list_del.exit.for.cond263.preheader_crit_edge, label %list_del.exit.for.body221_crit_edge

list_del.exit.for.body221_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body221

list_del.exit.for.cond263.preheader_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond263.preheader

for.body269:                                      ; preds = %for.inc337.for.body269_crit_edge, %for.body269.lr.ph
  %i.2943 = phi i32 [ 0, %for.body269.lr.ph ], [ %inc338, %for.inc337.for.body269_crit_edge ]
  %213 = ptrtoint ptr %crtcs270 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %crtcs270, align 4
  %arrayidx271 = getelementptr %struct.__drm_crtcs_state, ptr %214, i32 %i.2943
  %215 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx271, align 8
  %tobool273.not = icmp eq ptr %216, null
  br i1 %tobool273.not, label %for.body269.for.inc337_crit_edge, label %land.lhs.true274

for.body269.for.inc337_crit_edge:                 ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc337

land.lhs.true274:                                 ; preds = %for.body269
  %old_state280 = getelementptr %struct.__drm_crtcs_state, ptr %214, i32 %i.2943, i32 2
  %217 = ptrtoint ptr %old_state280 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %old_state280, align 8
  %new_state283 = getelementptr %struct.__drm_crtcs_state, ptr %214, i32 %i.2943, i32 3
  %219 = ptrtoint ptr %new_state283 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %new_state283, align 4
  %add.ptr293 = getelementptr i8, ptr %216, i32 -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %221 = load i32, ptr @__drm_debug, align 4
  %and.i885 = and i32 %221, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i885)
  %tobool.i886.not = icmp eq i32 %and.i885, 0
  br i1 %tobool.i886.not, label %land.lhs.true274.do.end317_crit_edge, label %do.body297

land.lhs.true274.do.end317_crit_edge:             ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end317

do.body297:                                       ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #12
  %222 = ptrtoint ptr %drm303 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %drm303, align 8
  %dev304 = getelementptr inbounds %struct.nouveau_drm, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %dev304 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev304, align 8
  %dev305 = getelementptr inbounds %struct.drm_device, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %dev305 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev305, align 4
  %name308 = getelementptr inbounds %struct.drm_crtc, ptr %216, i32 0, i32 3
  %228 = ptrtoint ptr %name308 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %name308, align 8
  %set309 = getelementptr inbounds %struct.nv50_head_atom, ptr %220, i32 0, i32 14
  %230 = ptrtoint ptr %set309 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %set309, align 8
  %conv310 = zext i16 %231 to i32
  %clr311 = getelementptr inbounds %struct.nv50_head_atom, ptr %220, i32 0, i32 15
  %232 = ptrtoint ptr %clr311 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %clr311, align 2
  %conv312 = zext i16 %233 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %227, ptr noundef nonnull @.str.38, ptr noundef %name306, ptr noundef %229, i32 noundef %conv310, i32 noundef %conv312) #13
  br label %do.end317

do.end317:                                        ; preds = %do.body297, %land.lhs.true274.do.end317_crit_edge
  %set318 = getelementptr inbounds %struct.nv50_head_atom, ptr %220, i32 0, i32 14
  %234 = ptrtoint ptr %set318 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %set318, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %235)
  %tobool319.not = icmp eq i16 %235, 0
  br i1 %tobool319.not, label %do.end317.if.end322_crit_edge, label %if.then320

do.end317.if.end322_crit_edge:                    ; preds = %do.end317
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end322

if.then320:                                       ; preds = %do.end317
  call void @__sanitizer_cov_trace_pc() #12
  call void @nv50_head_flush_set(ptr noundef %add.ptr293, ptr noundef %220) #10
  %236 = ptrtoint ptr %interlock to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 1, ptr %interlock, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.then320, %do.end317.if.end322_crit_edge
  %active323 = getelementptr inbounds %struct.drm_crtc_state, ptr %220, i32 0, i32 2
  %237 = ptrtoint ptr %active323 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %active323, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool324.not = icmp eq i8 %238, 0
  br i1 %tobool324.not, label %if.end322.for.inc337_crit_edge, label %if.then325

if.end322.for.inc337_crit_edge:                   ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc337

if.then325:                                       ; preds = %if.end322
  %active326 = getelementptr inbounds %struct.drm_crtc_state, ptr %218, i32 0, i32 2
  %239 = ptrtoint ptr %active326 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %active326, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool327.not = icmp eq i8 %240, 0
  br i1 %tobool327.not, label %if.then328, label %if.then325.if.end330_crit_edge

if.then325.if.end330_crit_edge:                   ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330

if.then328:                                       ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_crtc_vblank_on(ptr noundef nonnull %216) #10
  %241 = ptrtoint ptr %dev329 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev329, align 4
  %usage_count.i887 = getelementptr inbounds %struct.device, ptr %242, i32 0, i32 12, i32 13
  %call.i.i.i888 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i887, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage_count.i887, i32 1, i32 3, i32 1) #10
  %243 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i887, ptr %usage_count.i887, i32 1, ptr elementtype(i32) %usage_count.i887) #10, !srcloc !228
  br label %if.end330

if.end330:                                        ; preds = %if.then328, %if.then325.if.end330_crit_edge
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %220, i32 0, i32 18
  %244 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %event, align 4
  %tobool331.not = icmp eq ptr %245, null
  br i1 %tobool331.not, label %if.end330.for.inc337_crit_edge, label %if.then332

if.end330.for.inc337_crit_edge:                   ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc337

if.then332:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #12
  %call333 = call i32 @drm_crtc_vblank_get(ptr noundef nonnull %216) #10
  br label %for.inc337

for.inc337:                                       ; preds = %if.then332, %if.end330.for.inc337_crit_edge, %if.end322.for.inc337_crit_edge, %for.body269.for.inc337_crit_edge
  %inc338 = add nuw nsw i32 %i.2943, 1
  %246 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev1, align 4
  %num_crtc266 = getelementptr inbounds %struct.drm_device, ptr %247, i32 0, i32 30, i32 19
  %248 = ptrtoint ptr %num_crtc266 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %num_crtc266, align 4
  %cmp267 = icmp slt i32 %inc338, %249
  br i1 %cmp267, label %for.inc337.for.body269_crit_edge, label %for.inc337.for.end339_crit_edge

for.inc337.for.end339_crit_edge:                  ; preds = %for.inc337
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end339

for.inc337.for.body269_crit_edge:                 ; preds = %for.inc337
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body269

for.end339:                                       ; preds = %for.inc337.for.end339_crit_edge, %for.cond263.preheader.for.end339_crit_edge
  %assign_windows = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 2
  %250 = ptrtoint ptr %assign_windows to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %assign_windows, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool340.not = icmp eq i8 %251, 0
  br i1 %tobool340.not, label %for.end339.if.end347_crit_edge, label %if.then341

for.end339.if.end347_crit_edge:                   ; preds = %for.end339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end347

if.then341:                                       ; preds = %for.end339
  call void @__sanitizer_cov_trace_pc() #12
  %252 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %9, align 8
  %wndw342 = getelementptr inbounds %struct.nv50_core_func, ptr %253, i32 0, i32 5
  %254 = ptrtoint ptr %wndw342 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wndw342, align 4
  %call343 = call i32 %255(ptr noundef %9) #10
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %state, ptr noundef nonnull %interlock)
  %256 = ptrtoint ptr %assign_windows to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 0, ptr %assign_windows, align 8
  %257 = ptrtoint ptr %interlock to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %interlock, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.then341, %for.end339.if.end347_crit_edge
  %258 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev1, align 4
  %num_crtc351945 = getelementptr inbounds %struct.drm_device, ptr %259, i32 0, i32 30, i32 19
  %260 = ptrtoint ptr %num_crtc351945 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %num_crtc351945, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp352946 = icmp sgt i32 %261, 0
  br i1 %cmp352946, label %for.body354.lr.ph, label %if.end347.for.cond412.preheader_crit_edge

if.end347.for.cond412.preheader_crit_edge:        ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond412.preheader

for.body354.lr.ph:                                ; preds = %if.end347
  %crtcs355 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %drm388 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name391 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  br label %for.body354

for.cond412.preheader:                            ; preds = %for.inc409.for.cond412.preheader_crit_edge, %if.end347.for.cond412.preheader_crit_edge
  %262 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev1, align 4
  %num_total_plane415949 = getelementptr inbounds %struct.drm_device, ptr %263, i32 0, i32 30, i32 17
  %264 = ptrtoint ptr %num_total_plane415949 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %num_total_plane415949, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp416950 = icmp sgt i32 %265, 0
  br i1 %cmp416950, label %for.body418.lr.ph, label %for.cond412.preheader.nv50_disp_atomic_commit_wndw.exit918_crit_edge

for.cond412.preheader.nv50_disp_atomic_commit_wndw.exit918_crit_edge: ; preds = %for.cond412.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_disp_atomic_commit_wndw.exit918

for.body418.lr.ph:                                ; preds = %for.cond412.preheader
  %planes419 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %drm449 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name452 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %flush_disable469 = getelementptr inbounds %struct.nv50_atom, ptr %state, i32 0, i32 3
  br label %for.body418

for.body354:                                      ; preds = %for.inc409.for.body354_crit_edge, %for.body354.lr.ph
  %i.3947 = phi i32 [ 0, %for.body354.lr.ph ], [ %inc410, %for.inc409.for.body354_crit_edge ]
  %266 = ptrtoint ptr %crtcs355 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %crtcs355, align 4
  %arrayidx356 = getelementptr %struct.__drm_crtcs_state, ptr %267, i32 %i.3947
  %268 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx356, align 8
  %tobool358.not = icmp eq ptr %269, null
  br i1 %tobool358.not, label %for.body354.for.inc409_crit_edge, label %land.lhs.true359

for.body354.for.inc409_crit_edge:                 ; preds = %for.body354
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc409

land.lhs.true359:                                 ; preds = %for.body354
  %new_state368 = getelementptr %struct.__drm_crtcs_state, ptr %267, i32 %i.3947, i32 3
  %270 = ptrtoint ptr %new_state368 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %new_state368, align 4
  %add.ptr378 = getelementptr i8, ptr %269, i32 -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %272 = load i32, ptr @__drm_debug, align 4
  %and.i889 = and i32 %272, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i889)
  %tobool.i890.not = icmp eq i32 %and.i889, 0
  br i1 %tobool.i890.not, label %land.lhs.true359.do.end402_crit_edge, label %do.body382

land.lhs.true359.do.end402_crit_edge:             ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end402

do.body382:                                       ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #12
  %273 = ptrtoint ptr %drm388 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %drm388, align 8
  %dev389 = getelementptr inbounds %struct.nouveau_drm, ptr %274, i32 0, i32 3
  %275 = ptrtoint ptr %dev389 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev389, align 8
  %dev390 = getelementptr inbounds %struct.drm_device, ptr %276, i32 0, i32 2
  %277 = ptrtoint ptr %dev390 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev390, align 4
  %name393 = getelementptr inbounds %struct.drm_crtc, ptr %269, i32 0, i32 3
  %279 = ptrtoint ptr %name393 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %name393, align 8
  %set394 = getelementptr inbounds %struct.nv50_head_atom, ptr %271, i32 0, i32 14
  %281 = ptrtoint ptr %set394 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %set394, align 8
  %conv395 = zext i16 %282 to i32
  %clr396 = getelementptr inbounds %struct.nv50_head_atom, ptr %271, i32 0, i32 15
  %283 = ptrtoint ptr %clr396 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %clr396, align 2
  %conv397 = zext i16 %284 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %278, ptr noundef nonnull @.str.38, ptr noundef %name391, ptr noundef %280, i32 noundef %conv395, i32 noundef %conv397) #13
  br label %do.end402

do.end402:                                        ; preds = %do.body382, %land.lhs.true359.do.end402_crit_edge
  %set403 = getelementptr inbounds %struct.nv50_head_atom, ptr %271, i32 0, i32 14
  %285 = ptrtoint ptr %set403 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %set403, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %286)
  %tobool404.not = icmp eq i16 %286, 0
  br i1 %tobool404.not, label %do.end402.for.inc409_crit_edge, label %if.then405

do.end402.for.inc409_crit_edge:                   ; preds = %do.end402
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc409

if.then405:                                       ; preds = %do.end402
  call void @__sanitizer_cov_trace_pc() #12
  call void @nv50_head_flush_set_wndw(ptr noundef %add.ptr378, ptr noundef %271) #10
  %287 = ptrtoint ptr %interlock to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 1, ptr %interlock, align 4
  br label %for.inc409

for.inc409:                                       ; preds = %if.then405, %do.end402.for.inc409_crit_edge, %for.body354.for.inc409_crit_edge
  %inc410 = add nuw nsw i32 %i.3947, 1
  %288 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev1, align 4
  %num_crtc351 = getelementptr inbounds %struct.drm_device, ptr %289, i32 0, i32 30, i32 19
  %290 = ptrtoint ptr %num_crtc351 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %num_crtc351, align 4
  %cmp352 = icmp slt i32 %inc410, %291
  br i1 %cmp352, label %for.inc409.for.body354_crit_edge, label %for.inc409.for.cond412.preheader_crit_edge

for.inc409.for.cond412.preheader_crit_edge:       ; preds = %for.inc409
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond412.preheader

for.inc409.for.body354_crit_edge:                 ; preds = %for.inc409
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body354

for.body418:                                      ; preds = %for.inc480.for.body418_crit_edge, %for.body418.lr.ph
  %i.4951 = phi i32 [ 0, %for.body418.lr.ph ], [ %inc481, %for.inc480.for.body418_crit_edge ]
  %292 = ptrtoint ptr %planes419 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %planes419, align 4
  %arrayidx420 = getelementptr %struct.__drm_planes_state, ptr %293, i32 %i.4951
  %294 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx420, align 4
  %tobool422.not = icmp eq ptr %295, null
  br i1 %tobool422.not, label %for.body418.for.inc480_crit_edge, label %land.lhs.true423

for.body418.for.inc480_crit_edge:                 ; preds = %for.body418
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc480

land.lhs.true423:                                 ; preds = %for.body418
  %new_state429 = getelementptr %struct.__drm_planes_state, ptr %293, i32 %i.4951, i32 3
  %296 = ptrtoint ptr %new_state429 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %new_state429, align 4
  %add.ptr439 = getelementptr i8, ptr %295, i32 -40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %298 = load i32, ptr @__drm_debug, align 4
  %and.i891 = and i32 %298, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i891)
  %tobool.i892.not = icmp eq i32 %and.i891, 0
  br i1 %tobool.i892.not, label %land.lhs.true423.do.end463_crit_edge, label %do.body443

land.lhs.true423.do.end463_crit_edge:             ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end463

do.body443:                                       ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #12
  %299 = ptrtoint ptr %drm449 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %drm449, align 8
  %dev450 = getelementptr inbounds %struct.nouveau_drm, ptr %300, i32 0, i32 3
  %301 = ptrtoint ptr %dev450 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dev450, align 8
  %dev451 = getelementptr inbounds %struct.drm_device, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %dev451 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev451, align 4
  %name454 = getelementptr inbounds %struct.drm_plane, ptr %295, i32 0, i32 2
  %305 = ptrtoint ptr %name454 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %name454, align 4
  %set455 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %297, i32 0, i32 12
  %307 = ptrtoint ptr %set455 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %set455, align 1
  %conv456 = zext i8 %308 to i32
  %clr457 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %297, i32 0, i32 13
  %309 = ptrtoint ptr %clr457 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %clr457, align 4
  %conv458 = zext i8 %310 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %304, ptr noundef nonnull @.str.35, ptr noundef %name452, ptr noundef %306, i32 noundef %conv456, i32 noundef %conv458) #13
  br label %do.end463

do.end463:                                        ; preds = %do.body443, %land.lhs.true423.do.end463_crit_edge
  %set464 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %297, i32 0, i32 12
  %311 = ptrtoint ptr %set464 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %set464, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool465.not = icmp eq i8 %312, 0
  br i1 %tobool465.not, label %land.lhs.true466, label %do.end463.if.end473_crit_edge

do.end463.if.end473_crit_edge:                    ; preds = %do.end463
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end473

land.lhs.true466:                                 ; preds = %do.end463
  %clr467 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %297, i32 0, i32 13
  %313 = ptrtoint ptr %clr467 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %clr467, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool468.not = icmp eq i8 %314, 0
  br i1 %tobool468.not, label %land.lhs.true466.for.inc480_crit_edge, label %lor.lhs.false

land.lhs.true466.for.inc480_crit_edge:            ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc480

lor.lhs.false:                                    ; preds = %land.lhs.true466
  %315 = ptrtoint ptr %flush_disable469 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %flush_disable469, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool470.not = icmp eq i8 %316, 0
  br i1 %tobool470.not, label %lor.lhs.false.if.end473_crit_edge, label %lor.lhs.false.for.inc480_crit_edge

lor.lhs.false.for.inc480_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc480

lor.lhs.false.if.end473_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end473

if.end473:                                        ; preds = %lor.lhs.false.if.end473_crit_edge, %do.end463.if.end473_crit_edge
  call void @nv50_wndw_flush_set(ptr noundef %add.ptr439, ptr noundef nonnull %interlock, ptr noundef %297) #10
  br label %for.inc480

for.inc480:                                       ; preds = %if.end473, %lor.lhs.false.for.inc480_crit_edge, %land.lhs.true466.for.inc480_crit_edge, %for.body418.for.inc480_crit_edge
  %inc481 = add nuw nsw i32 %i.4951, 1
  %317 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev1, align 4
  %num_total_plane415 = getelementptr inbounds %struct.drm_device, ptr %318, i32 0, i32 30, i32 17
  %319 = ptrtoint ptr %num_total_plane415 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %num_total_plane415, align 4
  %cmp416 = icmp slt i32 %inc481, %320
  br i1 %cmp416, label %for.inc480.for.body418_crit_edge, label %for.end482

for.inc480.for.body418_crit_edge:                 ; preds = %for.inc480
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body418

for.end482:                                       ; preds = %for.inc480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %cmp32.i895 = icmp sgt i32 %320, 0
  br i1 %cmp32.i895, label %for.body.lr.ph.i897, label %for.end482.nv50_disp_atomic_commit_wndw.exit918_crit_edge

for.end482.nv50_disp_atomic_commit_wndw.exit918_crit_edge: ; preds = %for.end482
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_disp_atomic_commit_wndw.exit918

for.body.lr.ph.i897:                              ; preds = %for.end482
  %planes.i896 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body.i901

for.body.i901:                                    ; preds = %for.inc.i917.for.body.i901_crit_edge, %for.body.lr.ph.i897
  %i.033.i898 = phi i32 [ 0, %for.body.lr.ph.i897 ], [ %inc.i914, %for.inc.i917.for.body.i901_crit_edge ]
  %321 = ptrtoint ptr %planes.i896 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %planes.i896, align 4
  %arrayidx.i899 = getelementptr %struct.__drm_planes_state, ptr %322, i32 %i.033.i898
  %323 = ptrtoint ptr %arrayidx.i899 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %arrayidx.i899, align 4
  %tobool.not.i900 = icmp eq ptr %324, null
  br i1 %tobool.not.i900, label %for.body.i901.for.inc.i917_crit_edge, label %land.lhs.true.i908

for.body.i901.for.inc.i917_crit_edge:             ; preds = %for.body.i901
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i917

land.lhs.true.i908:                               ; preds = %for.body.i901
  %add.ptr.i902 = getelementptr i8, ptr %324, i32 -40
  %interlock6.i903 = getelementptr i8, ptr %324, i32 -28
  %325 = ptrtoint ptr %interlock6.i903 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %interlock6.i903, align 4
  %arrayidx7.i904 = getelementptr i32, ptr %interlock, i32 %326
  %327 = ptrtoint ptr %arrayidx7.i904 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx7.i904, align 4
  %data.i905 = getelementptr i8, ptr %324, i32 -24
  %329 = ptrtoint ptr %data.i905 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %data.i905, align 4
  %and.i906 = and i32 %330, %328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i906)
  %tobool9.not.i907 = icmp eq i32 %and.i906, 0
  br i1 %tobool9.not.i907, label %land.lhs.true.i908.for.inc.i917_crit_edge, label %if.then10.i911

land.lhs.true.i908.for.inc.i917_crit_edge:        ; preds = %land.lhs.true.i908
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i917

if.then10.i911:                                   ; preds = %land.lhs.true.i908
  %331 = ptrtoint ptr %add.ptr.i902 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %add.ptr.i902, align 8
  %update.i909 = getelementptr inbounds %struct.nv50_wndw_func, ptr %332, i32 0, i32 22
  %333 = ptrtoint ptr %update.i909 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %update.i909, align 4
  %tobool11.not.i910 = icmp eq ptr %334, null
  br i1 %tobool11.not.i910, label %if.then10.i911.for.inc.i917_crit_edge, label %if.then12.i913

if.then10.i911.for.inc.i917_crit_edge:            ; preds = %if.then10.i911
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i917

if.then12.i913:                                   ; preds = %if.then10.i911
  call void @__sanitizer_cov_trace_pc() #12
  %call.i912 = call i32 %334(ptr noundef %add.ptr.i902, ptr noundef nonnull %interlock) #10
  br label %for.inc.i917

for.inc.i917:                                     ; preds = %if.then12.i913, %if.then10.i911.for.inc.i917_crit_edge, %land.lhs.true.i908.for.inc.i917_crit_edge, %for.body.i901.for.inc.i917_crit_edge
  %inc.i914 = add nuw nsw i32 %i.033.i898, 1
  %335 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev1, align 4
  %num_total_plane.i915 = getelementptr inbounds %struct.drm_device, ptr %336, i32 0, i32 30, i32 17
  %337 = ptrtoint ptr %num_total_plane.i915 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %num_total_plane.i915, align 4
  %cmp.i916 = icmp slt i32 %inc.i914, %338
  br i1 %cmp.i916, label %for.inc.i917.for.body.i901_crit_edge, label %for.inc.i917.nv50_disp_atomic_commit_wndw.exit918_crit_edge

for.inc.i917.nv50_disp_atomic_commit_wndw.exit918_crit_edge: ; preds = %for.inc.i917
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_disp_atomic_commit_wndw.exit918

for.inc.i917.for.body.i901_crit_edge:             ; preds = %for.inc.i917
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i901

nv50_disp_atomic_commit_wndw.exit918:             ; preds = %for.inc.i917.nv50_disp_atomic_commit_wndw.exit918_crit_edge, %for.end482.nv50_disp_atomic_commit_wndw.exit918_crit_edge, %for.cond412.preheader.nv50_disp_atomic_commit_wndw.exit918_crit_edge
  %339 = ptrtoint ptr %interlock to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %interlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool485.not = icmp eq i32 %340, 0
  br i1 %tobool485.not, label %nv50_disp_atomic_commit_wndw.exit918.if.end506_crit_edge, label %if.then486

nv50_disp_atomic_commit_wndw.exit918.if.end506_crit_edge: ; preds = %nv50_disp_atomic_commit_wndw.exit918
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end506

if.then486:                                       ; preds = %nv50_disp_atomic_commit_wndw.exit918
  %arrayidx487 = getelementptr inbounds [6 x i32], ptr %interlock, i32 0, i32 2
  %341 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx487, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool488.not = icmp eq i32 %342, 0
  br i1 %tobool488.not, label %lor.lhs.false489, label %if.then486.if.then497_crit_edge

if.then486.if.then497_crit_edge:                  ; preds = %if.then486
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then497

lor.lhs.false489:                                 ; preds = %if.then486
  %arrayidx490 = getelementptr inbounds [6 x i32], ptr %interlock, i32 0, i32 3
  %343 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx490, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool491.not = icmp eq i32 %344, 0
  br i1 %tobool491.not, label %lor.lhs.false492, label %lor.lhs.false489.if.then497_crit_edge

lor.lhs.false489.if.then497_crit_edge:            ; preds = %lor.lhs.false489
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then497

lor.lhs.false492:                                 ; preds = %lor.lhs.false489
  %arrayidx493 = getelementptr inbounds [6 x i32], ptr %interlock, i32 0, i32 4
  %345 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx493, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool494.not = icmp eq i32 %346, 0
  br i1 %tobool494.not, label %lor.lhs.false495, label %lor.lhs.false492.if.then497_crit_edge

lor.lhs.false492.if.then497_crit_edge:            ; preds = %lor.lhs.false492
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then497

lor.lhs.false495:                                 ; preds = %lor.lhs.false492
  %legacy_cursor_update = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 2
  %347 = ptrtoint ptr %legacy_cursor_update to i32
  call void @__asan_load1_noabort(i32 %347)
  %bf.load = load i8, ptr %legacy_cursor_update, align 4
  %348 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %bf.cast.not = icmp eq i8 %348, 0
  br i1 %bf.cast.not, label %lor.lhs.false495.if.then497_crit_edge, label %if.else499

lor.lhs.false495.if.then497_crit_edge:            ; preds = %lor.lhs.false495
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then497

if.then497:                                       ; preds = %lor.lhs.false495.if.then497_crit_edge, %lor.lhs.false492.if.then497_crit_edge, %lor.lhs.false489.if.then497_crit_edge, %if.then486.if.then497_crit_edge
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %state, ptr noundef nonnull %interlock)
  br label %if.end506

if.else499:                                       ; preds = %lor.lhs.false495
  call void @__sanitizer_cov_trace_pc() #12
  %349 = ptrtoint ptr %core3 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %core3, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %350, align 8
  %update = getelementptr inbounds %struct.nv50_core_func, ptr %352, i32 0, i32 4
  %353 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %update, align 4
  %call504 = call i32 %354(ptr noundef %350, ptr noundef nonnull %interlock, i1 noundef zeroext false) #10
  br label %if.end506

if.end506:                                        ; preds = %if.else499, %if.then497, %nv50_disp_atomic_commit_wndw.exit918.if.end506_crit_edge
  %355 = ptrtoint ptr %lock_core17 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %lock_core17, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool508.not = icmp eq i8 %356, 0
  br i1 %tobool508.not, label %if.end506.if.end511_crit_edge, label %if.then509

if.end506.if.end511_crit_edge:                    ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end511

if.then509:                                       ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #12
  %mutex510 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %mutex510) #10
  br label %if.end511

if.end511:                                        ; preds = %if.then509, %if.end506.if.end511_crit_edge
  %357 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev1, align 4
  %num_total_plane515954 = getelementptr inbounds %struct.drm_device, ptr %358, i32 0, i32 30, i32 17
  %359 = ptrtoint ptr %num_total_plane515954 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %num_total_plane515954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %cmp516955 = icmp sgt i32 %360, 0
  br i1 %cmp516955, label %for.body518.lr.ph, label %if.end511.for.cond562.preheader_crit_edge

if.end511.for.cond562.preheader_crit_edge:        ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond562.preheader

for.body518.lr.ph:                                ; preds = %if.end511
  %planes519 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %drm549 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %name552 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  br label %for.body518

for.cond562.preheader:                            ; preds = %for.inc559.for.cond562.preheader_crit_edge, %if.end511.for.cond562.preheader_crit_edge
  %361 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %dev1, align 4
  %num_crtc565958 = getelementptr inbounds %struct.drm_device, ptr %362, i32 0, i32 30, i32 19
  %363 = ptrtoint ptr %num_crtc565958 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %num_crtc565958, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %cmp566959 = icmp sgt i32 %364, 0
  br i1 %cmp566959, label %for.body568.lr.ph, label %for.cond562.preheader.for.end614_crit_edge

for.cond562.preheader.for.end614_crit_edge:       ; preds = %for.cond562.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end614

for.body568.lr.ph:                                ; preds = %for.cond562.preheader
  %crtcs569 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body568

for.body518:                                      ; preds = %for.inc559.for.body518_crit_edge, %for.body518.lr.ph
  %i.5956 = phi i32 [ 0, %for.body518.lr.ph ], [ %inc560, %for.inc559.for.body518_crit_edge ]
  %365 = ptrtoint ptr %planes519 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %planes519, align 4
  %arrayidx520 = getelementptr %struct.__drm_planes_state, ptr %366, i32 %i.5956
  %367 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %arrayidx520, align 4
  %tobool522.not = icmp eq ptr %368, null
  br i1 %tobool522.not, label %for.body518.for.inc559_crit_edge, label %land.lhs.true523

for.body518.for.inc559_crit_edge:                 ; preds = %for.body518
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc559

land.lhs.true523:                                 ; preds = %for.body518
  %new_state529 = getelementptr %struct.__drm_planes_state, ptr %366, i32 %i.5956, i32 3
  %369 = ptrtoint ptr %new_state529 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %new_state529, align 4
  %add.ptr539 = getelementptr i8, ptr %368, i32 -40
  %call540 = call i32 @nv50_wndw_wait_armed(ptr noundef %add.ptr539, ptr noundef %370) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call540)
  %tobool541.not = icmp eq i32 %call540, 0
  br i1 %tobool541.not, label %land.lhs.true523.for.inc559_crit_edge, label %do.body543

land.lhs.true523.for.inc559_crit_edge:            ; preds = %land.lhs.true523
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc559

do.body543:                                       ; preds = %land.lhs.true523
  call void @__sanitizer_cov_trace_pc() #12
  %371 = ptrtoint ptr %drm549 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %drm549, align 8
  %dev550 = getelementptr inbounds %struct.nouveau_drm, ptr %372, i32 0, i32 3
  %373 = ptrtoint ptr %dev550 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %dev550, align 8
  %dev551 = getelementptr inbounds %struct.drm_device, ptr %374, i32 0, i32 2
  %375 = ptrtoint ptr %dev551 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dev551, align 4
  %name554 = getelementptr inbounds %struct.drm_plane, ptr %368, i32 0, i32 2
  %377 = ptrtoint ptr %name554 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %name554, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %376, ptr noundef nonnull @.str.45, ptr noundef %name552, ptr noundef %378) #13
  br label %for.inc559

for.inc559:                                       ; preds = %do.body543, %land.lhs.true523.for.inc559_crit_edge, %for.body518.for.inc559_crit_edge
  %inc560 = add nuw nsw i32 %i.5956, 1
  %379 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dev1, align 4
  %num_total_plane515 = getelementptr inbounds %struct.drm_device, ptr %380, i32 0, i32 30, i32 17
  %381 = ptrtoint ptr %num_total_plane515 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %num_total_plane515, align 4
  %cmp516 = icmp slt i32 %inc560, %382
  br i1 %cmp516, label %for.inc559.for.body518_crit_edge, label %for.inc559.for.cond562.preheader_crit_edge

for.inc559.for.cond562.preheader_crit_edge:       ; preds = %for.inc559
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond562.preheader

for.inc559.for.body518_crit_edge:                 ; preds = %for.inc559
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body518

for.body568:                                      ; preds = %for.inc612.for.body568_crit_edge, %for.body568.lr.ph
  %i.6960 = phi i32 [ 0, %for.body568.lr.ph ], [ %inc613, %for.inc612.for.body568_crit_edge ]
  %383 = ptrtoint ptr %crtcs569 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %crtcs569, align 4
  %arrayidx570 = getelementptr %struct.__drm_crtcs_state, ptr %384, i32 %i.6960
  %385 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %arrayidx570, align 8
  %tobool572.not = icmp eq ptr %386, null
  br i1 %tobool572.not, label %for.body568.for.inc612_crit_edge, label %land.lhs.true573

for.body568.for.inc612_crit_edge:                 ; preds = %for.body568
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc612

land.lhs.true573:                                 ; preds = %for.body568
  %new_state579 = getelementptr %struct.__drm_crtcs_state, ptr %384, i32 %i.6960, i32 3
  %387 = ptrtoint ptr %new_state579 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %new_state579, align 4
  %event582 = getelementptr inbounds %struct.drm_crtc_state, ptr %388, i32 0, i32 18
  %389 = ptrtoint ptr %event582 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %event582, align 4
  %tobool583.not = icmp eq ptr %390, null
  br i1 %tobool583.not, label %land.lhs.true573.for.inc612_crit_edge, label %if.then584

land.lhs.true573.for.inc612_crit_edge:            ; preds = %land.lhs.true573
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc612

if.then584:                                       ; preds = %land.lhs.true573
  %active585 = getelementptr inbounds %struct.drm_crtc_state, ptr %388, i32 0, i32 2
  %391 = ptrtoint ptr %active585 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %active585, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %tobool586.not = icmp eq i8 %392, 0
  br i1 %tobool586.not, label %if.then584.do.body591_crit_edge, label %if.then587

if.then584.do.body591_crit_edge:                  ; preds = %if.then584
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body591

if.then587:                                       ; preds = %if.then584
  call void @__sanitizer_cov_trace_pc() #12
  %call588 = call i64 @drm_crtc_accurate_vblank_count(ptr noundef nonnull %386) #10
  br label %do.body591

do.body591:                                       ; preds = %if.then587, %if.then584.do.body591_crit_edge
  %393 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %386, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %394, i32 0, i32 28
  %call597 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %395 = ptrtoint ptr %event582 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %event582, align 4
  call void @drm_crtc_send_vblank_event(ptr noundef nonnull %386, ptr noundef %396) #10
  %397 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %386, align 8
  %event_lock604 = getelementptr inbounds %struct.drm_device, ptr %398, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock604, i32 noundef %call597) #10
  %399 = ptrtoint ptr %event582 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr null, ptr %event582, align 4
  %400 = ptrtoint ptr %active585 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %active585, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %tobool607.not = icmp eq i8 %401, 0
  br i1 %tobool607.not, label %do.body591.for.inc612_crit_edge, label %if.then608

do.body591.for.inc612_crit_edge:                  ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc612

if.then608:                                       ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_crtc_vblank_put(ptr noundef nonnull %386) #10
  br label %for.inc612

for.inc612:                                       ; preds = %if.then608, %do.body591.for.inc612_crit_edge, %land.lhs.true573.for.inc612_crit_edge, %for.body568.for.inc612_crit_edge
  %inc613 = add nuw nsw i32 %i.6960, 1
  %402 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dev1, align 4
  %num_crtc565 = getelementptr inbounds %struct.drm_device, ptr %403, i32 0, i32 30, i32 19
  %404 = ptrtoint ptr %num_crtc565 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %num_crtc565, align 4
  %cmp566 = icmp slt i32 %inc613, %405
  br i1 %cmp566, label %for.inc612.for.body568_crit_edge, label %for.inc612.for.end614_crit_edge

for.inc612.for.end614_crit_edge:                  ; preds = %for.inc612
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end614

for.inc612.for.body568_crit_edge:                 ; preds = %for.inc612
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body568

for.end614:                                       ; preds = %for.inc612.for.end614_crit_edge, %for.cond562.preheader.for.end614_crit_edge
  call void @nv50_crc_atomic_start_reporting(ptr noundef %state) #10
  br i1 %flushed.2.off0922, label %for.end614.if.end617_crit_edge, label %if.then616

for.end614.if.end617_crit_edge:                   ; preds = %for.end614
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end617

if.then616:                                       ; preds = %for.end614
  call void @__sanitizer_cov_trace_pc() #12
  call void @nv50_crc_atomic_release_notifier_contexts(ptr noundef %state) #10
  br label %if.end617

if.end617:                                        ; preds = %if.then616, %for.end614.if.end617_crit_edge
  call void @drm_atomic_helper_commit_hw_done(ptr noundef %state) #10
  call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %state) #10
  call void @drm_atomic_helper_commit_cleanup_done(ptr noundef %state) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !233
  call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #10
  %406 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 1, ptr elementtype(i32) %state) #10, !srcloc !234
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %406, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end617
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.drm_atomic_state_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !217

if.end5.i.i.i.i.i.drm_atomic_state_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_atomic_state_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %state, i32 noundef 3) #10
  br label %drm_atomic_state_put.exit

if.then.i.i:                                      ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !235
  call void @__drm_atomic_state_free(ptr noundef %state) #10
  br label %drm_atomic_state_put.exit

drm_atomic_state_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.drm_atomic_state_put.exit_crit_edge
  %dev618 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %407 = ptrtoint ptr %dev618 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %dev618, align 4
  %call.i919 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %408, i32 0, i32 12, i32 22
  %409 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %409)
  store volatile i64 %call.i919, ptr %last_busy.i, align 8
  %410 = ptrtoint ptr %dev618 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dev618, align 4
  %call.i920 = call i32 @__pm_runtime_suspend(ptr noundef %411, i32 noundef 13) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %interlock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_stop_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_update_legacy_modeset_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_calc_timestamping_constants(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_head_flush_clr(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_flush_clr(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_atomic_commit_core(ptr nocapture noundef readonly %state, ptr noundef %interlock) unnamed_addr #0 align 64 {
entry:
  %args.i66.i = alloca %struct.anon.248, align 2
  %args.i.i = alloca %struct.anon.247, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dev1 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
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
  %core3 = getelementptr inbounds %struct.nv50_disp, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %core3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %14 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end13_crit_edge, label %do.body5

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %arrayidx = getelementptr i32, ptr %interlock, i32 2
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %22) #13
  br label %do.end13

do.end13:                                         ; preds = %do.body5, %entry.do.end13_crit_edge
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 16
  %25 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn148 = load ptr, ptr %encoder_list, align 4
  %cmp.not150 = icmp eq ptr %.pn148, %encoder_list
  br i1 %cmp.not150, label %do.end13.for.end_crit_edge, label %for.body.lr.ph

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end13
  %26 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i.i, i32 0, i32 4
  %30 = getelementptr inbounds %struct.anon.247, ptr %args.i.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.anon.247, ptr %args.i.i, i32 0, i32 1, i32 2
  %32 = getelementptr inbounds %struct.anon.247, ptr %args.i.i, i32 0, i32 1, i32 3
  %33 = getelementptr inbounds %struct.anon.247, ptr %args.i.i, i32 0, i32 1, i32 4
  %34 = getelementptr inbounds %struct.anon.247, ptr %args.i.i, i32 0, i32 1, i32 5
  %35 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i66.i, i32 0, i32 1
  %36 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i66.i, i32 0, i32 2
  %37 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i66.i, i32 0, i32 3
  %38 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i66.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn151 = phi ptr [ %.pn148, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %encoder_type = getelementptr i8, ptr %.pn151, i32 32
  %39 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %cmp18.not = icmp eq i32 %40, 7
  br i1 %cmp18.not, label %for.body.for.inc_crit_edge, label %if.then19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then19:                                        ; preds = %for.body
  %41 = getelementptr i8, ptr %.pn151, i32 240
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %if.then19.for.inc_crit_edge, label %land.lhs.true

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then19
  %modified = getelementptr inbounds %struct.nv50_mstm, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %modified, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool22.not = icmp eq i8 %45, 0
  br i1 %tobool22.not, label %land.lhs.true.for.inc_crit_edge, label %if.then23

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %46 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then23.do.end15.i_crit_edge, label %do.body3.i

if.then23.do.end15.i_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i

do.body3.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %43, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_private.i.i, align 4
  %drm5.i = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %drm5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %drm5.i, align 8
  %dev6.i = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev6.i, align 8
  %dev7.i = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev7.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 12
  %name11.i = getelementptr inbounds %struct.drm_encoder, ptr %48, i32 0, i32 3
  %59 = ptrtoint ptr %name11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name11.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.53, ptr noundef %name.i, ptr noundef %60) #13
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.body3.i, %if.then23.do.end15.i_crit_edge
  %mgr.i = getelementptr inbounds %struct.nv50_mstm, ptr %43, i32 0, i32 1
  %call16.i = call i32 @drm_dp_update_payload_part1(ptr noundef %mgr.i, i32 noundef 1) #10
  %61 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %43, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 30, i32 16
  %65 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn72.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not75.i = icmp eq ptr %.pn72.i, %encoder_list.i
  br i1 %cmp.not75.i, label %do.end15.i.for.end.i_crit_edge, label %for.body.i.preheader

do.end15.i.for.end.i_crit_edge:                   ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.preheader:                             ; preds = %do.end15.i
  %payload_lock.i.i = getelementptr inbounds %struct.nv50_mstm, ptr %43, i32 0, i32 1, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %.pn76.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn72.i, %for.body.i.preheader ]
  %encoder.077.i = getelementptr i8, ptr %.pn76.i, i32 -4
  %encoder_type.i = getelementptr i8, ptr %.pn76.i, i32 32
  %66 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %67)
  %cmp27.i = icmp eq i32 %67, 7
  br i1 %cmp27.i, label %if.then28.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then28.i:                                      ; preds = %for.body.i
  %mstc32.i = getelementptr i8, ptr %.pn76.i, i32 72
  %68 = ptrtoint ptr %mstc32.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mstc32.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %if.then28.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.then28.i.for.inc.i_crit_edge:                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then28.i
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %cmp34.i = icmp eq ptr %71, %43
  br i1 %cmp34.i, label %if.then35.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  %72 = ptrtoint ptr %encoder.077.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %encoder.077.i, align 4
  %dev_private.i.i.i116 = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %dev_private.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_private.i.i.i116, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i.i) #10
  %76 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %args.i.i, align 2
  %77 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 38, ptr %26, align 1
  %78 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %43, align 4
  %dcb.i.i = getelementptr inbounds %struct.nouveau_encoder, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %dcb.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dcb.i.i, align 4
  %hasht3.i.i = getelementptr inbounds %struct.dcb_output, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %hasht3.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hasht3.i.i, align 4
  %84 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %27, align 2
  %85 = load ptr, ptr %43, align 4
  %dcb5.i.i = getelementptr inbounds %struct.nouveau_encoder, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %dcb5.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dcb5.i.i, align 4
  %hashm6.i.i = getelementptr inbounds %struct.dcb_output, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %hashm6.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %hashm6.i.i, align 2
  %90 = and i16 %89, -3841
  %head.i.i = getelementptr i8, ptr %.pn76.i, i32 68
  %91 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.nv50_head, ptr %92, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %index.i.i, align 8
  %shl.i.i = shl i32 256, %94
  %95 = trunc i32 %shl.i.i to i16
  %conv8.i.i = or i16 %90, %95
  %96 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv8.i.i, ptr %28, align 2
  %97 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %29, align 2
  %98 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 0, ptr %30, align 2
  call void @mutex_lock_nested(ptr noundef %payload_lock.i.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %99 = load i32, ptr @__drm_debug, align 4
  %and.i.i.i = and i32 %99, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then35.i.do.end20.i.i_crit_edge, label %do.body10.i.i

if.then35.i.do.end20.i.i_crit_edge:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20.i.i

do.body10.i.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  %drm12.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %drm12.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %drm12.i.i, align 8
  %dev13.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %dev13.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev13.i.i, align 8
  %dev14.i.i = getelementptr inbounds %struct.drm_device, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev14.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 12
  %name16.i.i = getelementptr i8, ptr %.pn76.i, i32 28
  %106 = ptrtoint ptr %name16.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name16.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.55, ptr noundef %name.i.i, ptr noundef %107) #13
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %do.body10.i.i, %if.then35.i.do.end20.i.i_crit_edge
  %port.i.i = getelementptr inbounds %struct.nv50_mstc, ptr %69, i32 0, i32 1
  %108 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port.i.i, align 4
  %vcpi21.i.i = getelementptr inbounds %struct.drm_dp_mst_port, ptr %109, i32 0, i32 17
  %110 = ptrtoint ptr %vcpi21.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vcpi21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i.i = icmp sgt i32 %111, 0
  br i1 %cmp.i.i, label %if.then24.i.i, label %do.end20.i.i.do.body45.i.i_crit_edge

do.end20.i.i.do.body45.i.i_crit_edge:             ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.i.i

if.then24.i.i:                                    ; preds = %do.end20.i.i
  %112 = ptrtoint ptr %encoder.077.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %encoder.077.i, align 4
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %116 = ptrtoint ptr %mstc32.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mstc32.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %port.i.i.i = getelementptr inbounds %struct.nv50_mstc, ptr %117, i32 0, i32 1
  %120 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %port.i.i.i, align 4
  %vcpi3.i.i.i = getelementptr inbounds %struct.drm_dp_mst_port, ptr %121, i32 0, i32 17
  %122 = ptrtoint ptr %vcpi3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vcpi3.i.i.i, align 4
  %payload_lock.i.i.i = getelementptr inbounds %struct.nv50_mstm, ptr %119, i32 0, i32 1, i32 21
  %call5.i.i.i = call zeroext i1 @mutex_is_locked(ptr noundef %payload_lock.i.i.i) #10
  br i1 %call5.i.i.i, label %if.then24.i.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i, !prof !217

if.then24.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 963, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then24.i.i.if.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %124 = load i32, ptr @__drm_debug, align 4
  %and.i.i.i.i = and i32 %124, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.i.do.end41.i.i.i_crit_edge, label %do.body28.i.i.i

if.end.i.i.i.do.end41.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.i.i.i

do.body28.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %drm32.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %115, i32 0, i32 2, i32 1
  %125 = ptrtoint ptr %drm32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %drm32.i.i.i, align 8
  %dev33.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %dev33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev33.i.i.i, align 8
  %dev34.i.i.i = getelementptr inbounds %struct.drm_device, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %dev34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev34.i.i.i, align 4
  %name.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %115, i32 0, i32 2, i32 12
  %name36.i.i.i = getelementptr i8, ptr %.pn76.i, i32 28
  %131 = ptrtoint ptr %name36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name36.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %130, ptr noundef nonnull @.str.60, ptr noundef %name.i.i.i, ptr noundef %132, i32 noundef %123) #13
  br label %do.end41.i.i.i

do.end41.i.i.i:                                   ; preds = %do.body28.i.i.i, %if.end.i.i.i.do.end41.i.i.i_crit_edge
  %max_payloads.i.i.i = getelementptr inbounds %struct.nv50_mstm, ptr %119, i32 0, i32 1, i32 5
  %133 = ptrtoint ptr %max_payloads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_payloads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp111.i.i.i = icmp sgt i32 %134, 0
  br i1 %cmp111.i.i.i, label %for.body.lr.ph.i.i.i, label %do.end41.i.i.i.do.body45.i.i_crit_edge

do.end41.i.i.i.do.body45.i.i_crit_edge:           ; preds = %do.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.i.i

for.body.lr.ph.i.i.i:                             ; preds = %do.end41.i.i.i
  %payloads.i.i.i = getelementptr inbounds %struct.nv50_mstm, ptr %119, i32 0, i32 1, i32 23
  %drm53.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %115, i32 0, i32 2, i32 1
  %name56.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %115, i32 0, i32 2, i32 12
  br label %for.body.i.i.i

for.cond66.preheader.i.i.i:                       ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp69117.i.i.i = icmp sgt i32 %157, 0
  br i1 %cmp69117.i.i.i, label %for.body70.lr.ph.i.i.i, label %for.cond66.preheader.i.i.i.do.body45.i.i_crit_edge

for.cond66.preheader.i.i.i.do.body45.i.i_crit_edge: ; preds = %for.cond66.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.i.i

for.body70.lr.ph.i.i.i:                           ; preds = %for.cond66.preheader.i.i.i
  %135 = ptrtoint ptr %payloads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %payloads.i.i.i, align 4
  br label %for.body70.i.i.i

for.body.i.i.i:                                   ; preds = %do.end65.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0112.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %do.end65.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %137 = load i32, ptr @__drm_debug, align 4
  %and.i109.i.i.i = and i32 %137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109.i.i.i)
  %tobool.i110.not.i.i.i = icmp eq i32 %and.i109.i.i.i, 0
  br i1 %tobool.i110.not.i.i.i, label %for.body.i.i.i.do.end65.i.i.i_crit_edge, label %do.body47.i.i.i

for.body.i.i.i.do.end65.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

do.body47.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %payloads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %payloads.i.i.i, align 4
  %140 = ptrtoint ptr %drm53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %drm53.i.i.i, align 8
  %dev54.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %dev54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev54.i.i.i, align 8
  %dev55.i.i.i = getelementptr inbounds %struct.drm_device, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %dev55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev55.i.i.i, align 4
  %146 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %119, align 4
  %name59.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %name59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name59.i.i.i, align 4
  %vcpi60.i.i.i = getelementptr %struct.drm_dp_payload, ptr %139, i32 %i.0112.i.i.i, i32 3
  %150 = ptrtoint ptr %vcpi60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vcpi60.i.i.i, align 4
  %start_slot.i.i.i = getelementptr %struct.drm_dp_payload, ptr %139, i32 %i.0112.i.i.i, i32 1
  %152 = ptrtoint ptr %start_slot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %start_slot.i.i.i, align 4
  %num_slots.i.i.i = getelementptr %struct.drm_dp_payload, ptr %139, i32 %i.0112.i.i.i, i32 2
  %154 = ptrtoint ptr %num_slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %num_slots.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %145, ptr noundef nonnull @.str.63, ptr noundef %name56.i.i.i, ptr noundef %149, i32 noundef %i.0112.i.i.i, i32 noundef %151, i32 noundef %153, i32 noundef %155) #13
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %do.body47.i.i.i, %for.body.i.i.i.do.end65.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.0112.i.i.i, 1
  %156 = ptrtoint ptr %max_payloads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %max_payloads.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %157
  br i1 %cmp.i.i.i, label %do.end65.i.i.i.for.body.i.i.i_crit_edge, label %for.cond66.preheader.i.i.i

do.end65.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body70.i.i.i:                                 ; preds = %for.inc79.i.i.i.for.body70.i.i.i_crit_edge, %for.body70.lr.ph.i.i.i
  %i.1118.i.i.i = phi i32 [ 0, %for.body70.lr.ph.i.i.i ], [ %inc80.i.i.i, %for.inc79.i.i.i.for.body70.i.i.i_crit_edge ]
  %vcpi75.i.i.i = getelementptr %struct.drm_dp_payload, ptr %136, i32 %i.1118.i.i.i, i32 3
  %158 = ptrtoint ptr %vcpi75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %vcpi75.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %123)
  %cmp76.i.i.i = icmp eq i32 %159, %123
  br i1 %cmp76.i.i.i, label %nv50_msto_payload.exit.i.i, label %for.inc79.i.i.i

for.inc79.i.i.i:                                  ; preds = %for.body70.i.i.i
  %inc80.i.i.i = add nuw nsw i32 %i.1118.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc80.i.i.i, %157
  br i1 %exitcond.not.i.i.i, label %for.inc79.i.i.i.do.body45.i.i_crit_edge, label %for.inc79.i.i.i.for.body70.i.i.i_crit_edge

for.inc79.i.i.i.for.body70.i.i.i_crit_edge:       ; preds = %for.inc79.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body70.i.i.i

for.inc79.i.i.i.do.body45.i.i_crit_edge:          ; preds = %for.inc79.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.i.i

nv50_msto_payload.exit.i.i:                       ; preds = %for.body70.i.i.i
  %arrayidx74.le.i.i.i = getelementptr %struct.drm_dp_payload, ptr %136, i32 %i.1118.i.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx74.le.i.i.i, null
  br i1 %tobool.not.i.i, label %nv50_msto_payload.exit.i.i.do.body45.i.i_crit_edge, label %if.then26.i.i

nv50_msto_payload.exit.i.i.do.body45.i.i_crit_edge: ; preds = %nv50_msto_payload.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.i.i

if.then26.i.i:                                    ; preds = %nv50_msto_payload.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %start_slot.i.i = getelementptr %struct.drm_dp_payload, ptr %136, i32 %i.1118.i.i.i, i32 1
  %160 = ptrtoint ptr %start_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %start_slot.i.i, align 4
  %conv27.i.i = trunc i32 %161 to i8
  %162 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv27.i.i, ptr %31, align 2
  %num_slots.i.i = getelementptr %struct.drm_dp_payload, ptr %136, i32 %i.1118.i.i.i, i32 2
  %163 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_slots.i.i, align 4
  %conv30.i.i = trunc i32 %164 to i8
  %165 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv30.i.i, ptr %32, align 1
  %166 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %port.i.i, align 4
  %pbn.i.i = getelementptr inbounds %struct.drm_dp_mst_port, ptr %167, i32 0, i32 17, i32 1
  %168 = ptrtoint ptr %pbn.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pbn.i.i, align 4
  %conv35.i.i = trunc i32 %169 to i16
  %170 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv35.i.i, ptr %33, align 2
  %171 = load ptr, ptr %port.i.i, align 4
  %aligned_pbn.i.i = getelementptr inbounds %struct.drm_dp_mst_port, ptr %171, i32 0, i32 17, i32 2
  %172 = ptrtoint ptr %aligned_pbn.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %aligned_pbn.i.i, align 4
  %conv40.i.i = trunc i32 %173 to i16
  %174 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv40.i.i, ptr %34, align 2
  br label %do.body45.i.i

do.body45.i.i:                                    ; preds = %if.then26.i.i, %nv50_msto_payload.exit.i.i.do.body45.i.i_crit_edge, %for.inc79.i.i.i.do.body45.i.i_crit_edge, %for.cond66.preheader.i.i.i.do.body45.i.i_crit_edge, %do.end41.i.i.i.do.body45.i.i_crit_edge, %do.end20.i.i.do.body45.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %175 = load i32, ptr @__drm_debug, align 4
  %and.i103.i.i = and i32 %175, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103.i.i)
  %tobool.i104.not.i.i = icmp eq i32 %and.i103.i.i, 0
  br i1 %tobool.i104.not.i.i, label %do.body45.i.i.nv50_msto_prepare.exit.i_crit_edge, label %do.body48.i.i

do.body45.i.i.nv50_msto_prepare.exit.i_crit_edge: ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_msto_prepare.exit.i

do.body48.i.i:                                    ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %drm54.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 1
  %176 = ptrtoint ptr %drm54.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %drm54.i.i, align 8
  %dev55.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %dev55.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev55.i.i, align 8
  %dev56.i.i = getelementptr inbounds %struct.drm_device, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %dev56.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev56.i.i, align 4
  %name57.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 12
  %name60.i.i = getelementptr i8, ptr %.pn76.i, i32 28
  %182 = ptrtoint ptr %name60.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %name60.i.i, align 4
  %184 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %head.i.i, align 4
  %name64.i.i = getelementptr inbounds %struct.nv50_head, ptr %185, i32 0, i32 1, i32 0, i32 3
  %186 = ptrtoint ptr %name64.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %name64.i.i, align 8
  %188 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %31, align 2
  %conv67.i.i = zext i8 %189 to i32
  %190 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %32, align 1
  %conv70.i.i = zext i8 %191 to i32
  %192 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %33, align 2
  %conv73.i.i = zext i16 %193 to i32
  %194 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %34, align 2
  %conv76.i.i = zext i16 %195 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %181, ptr noundef nonnull @.str.58, ptr noundef %name57.i.i, ptr noundef %183, ptr noundef %187, i32 noundef %conv67.i.i, i32 noundef %conv70.i.i, i32 noundef %conv73.i.i, i32 noundef %conv76.i.i) #13
  br label %nv50_msto_prepare.exit.i

nv50_msto_prepare.exit.i:                         ; preds = %do.body48.i.i, %do.body45.i.i.nv50_msto_prepare.exit.i_crit_edge
  %display.i.i117 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 19
  %196 = ptrtoint ptr %display.i.i117 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %display.i.i117, align 4
  %disp.i.i = getelementptr inbounds %struct.nouveau_display, ptr %197, i32 0, i32 4
  %call82.i.i = call i32 @nvif_object_mthd(ptr noundef %disp.i.i, i32 noundef 0, ptr noundef nonnull %args.i.i, i32 noundef 16) #10
  call void @mutex_unlock(ptr noundef %payload_lock.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %nv50_msto_prepare.exit.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.then28.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %198 = ptrtoint ptr %.pn76.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %.pn.i = load ptr, ptr %.pn76.i, align 4
  %199 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %43, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %encoder_list26.i = getelementptr inbounds %struct.drm_device, ptr %202, i32 0, i32 30, i32 16
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list26.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end15.i.for.end.i_crit_edge
  %.lcssa71.i = phi ptr [ %62, %do.end15.i.for.end.i_crit_edge ], [ %200, %for.inc.i.for.end.i_crit_edge ]
  %.lcssa70.i = phi ptr [ %64, %do.end15.i.for.end.i_crit_edge ], [ %202, %for.inc.i.for.end.i_crit_edge ]
  %disabled.i = getelementptr inbounds %struct.nv50_mstm, ptr %43, i32 0, i32 6
  %203 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %disabled.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool43.not.i = icmp eq i8 %204, 0
  br i1 %tobool43.not.i, label %for.end.i.for.inc_crit_edge, label %if.then44.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then44.i:                                      ; preds = %for.end.i
  %links.i = getelementptr inbounds %struct.nv50_mstm, ptr %43, i32 0, i32 7
  %205 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool45.not.i = icmp eq i32 %206, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.then44.i.if.end48.i_crit_edge

if.then44.i.if.end48.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev_private.i.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %.lcssa70.i, i32 0, i32 5
  %207 = ptrtoint ptr %dev_private.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev_private.i.i.i.i.i, align 4
  %display.i.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %208, i32 0, i32 19
  %209 = ptrtoint ptr %display.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %display.i.i.i.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i66.i) #10
  %213 = ptrtoint ptr %args.i66.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %args.i66.i, align 2
  %214 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 2, ptr %35, align 1
  %dcb.i67.i = getelementptr inbounds %struct.nouveau_encoder, ptr %.lcssa71.i, i32 0, i32 1
  %215 = ptrtoint ptr %dcb.i67.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dcb.i67.i, align 4
  %hasht3.i68.i = getelementptr inbounds %struct.dcb_output, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %hasht3.i68.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %hasht3.i68.i, align 4
  %219 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %36, align 2
  %hashm5.i.i = getelementptr inbounds %struct.dcb_output, ptr %216, i32 0, i32 2
  %220 = ptrtoint ptr %hashm5.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %hashm5.i.i, align 2
  %222 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %37, align 2
  %223 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %38, align 2
  %224 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %212, align 8
  %call7.i.i = call i32 @nvif_object_mthd(ptr noundef %225, i32 noundef 0, ptr noundef nonnull %args.i66.i, i32 noundef 8) #10
  %or.i.i = getelementptr inbounds %struct.nouveau_encoder, ptr %.lcssa71.i, i32 0, i32 2
  %226 = ptrtoint ptr %or.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 -1, ptr %or.i.i, align 4
  %link.i.i = getelementptr inbounds %struct.nouveau_encoder, ptr %.lcssa71.i, i32 0, i32 3
  %227 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %link.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i66.i) #10
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.then44.i.if.end48.i_crit_edge
  %228 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %disabled.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end48.i, %for.end.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %229 = ptrtoint ptr %.pn151 to i32
  call void @__asan_load4_noabort(i32 %229)
  %.pn = load ptr, ptr %.pn151, align 4
  %230 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev1, align 8
  %encoder_list17 = getelementptr inbounds %struct.drm_device, ptr %231, i32 0, i32 30, i32 16
  %cmp.not = icmp eq ptr %.pn, %encoder_list17
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end13.for.end_crit_edge
  %232 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %13, align 8
  %ntfy_init = getelementptr inbounds %struct.nv50_core_func, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %ntfy_init to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ntfy_init, align 4
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %11, i32 0, i32 3
  %236 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %sync, align 8
  call void %235(ptr noundef %237, i32 noundef 0) #10
  %238 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %13, align 8
  %update = getelementptr inbounds %struct.nv50_core_func, ptr %239, i32 0, i32 4
  %240 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %update, align 4
  %call32 = call i32 %241(ptr noundef %13, ptr noundef %interlock, i1 noundef zeroext true) #10
  %242 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %13, align 8
  %ntfy_wait_done = getelementptr inbounds %struct.nv50_core_func, ptr %243, i32 0, i32 3
  %244 = ptrtoint ptr %ntfy_wait_done to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ntfy_wait_done, align 4
  %246 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sync, align 8
  %248 = ptrtoint ptr %core3 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %core3, align 4
  %device = getelementptr inbounds %struct.nv50_core, ptr %249, i32 0, i32 1, i32 0, i32 1
  %250 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %device, align 8
  %call36 = call i32 %245(ptr noundef %247, i32 noundef 0, ptr noundef %251) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.end.if.end52_crit_edge, label %do.body39

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %drm45 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %252 = ptrtoint ptr %drm45 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %drm45, align 8
  %dev46 = getelementptr inbounds %struct.nouveau_drm, ptr %253, i32 0, i32 3
  %254 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev46, align 8
  %dev47 = getelementptr inbounds %struct.drm_device, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev47, align 4
  %name48 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.51, ptr noundef %name48) #13
  br label %if.end52

if.end52:                                         ; preds = %do.body39, %for.end.if.end52_crit_edge
  %258 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev1, align 8
  %encoder_list56 = getelementptr inbounds %struct.drm_device, ptr %259, i32 0, i32 30, i32 16
  %260 = ptrtoint ptr %encoder_list56 to i32
  call void @__asan_load4_noabort(i32 %260)
  %.pn115152 = load ptr, ptr %encoder_list56, align 4
  %cmp65.not154 = icmp eq ptr %.pn115152, %encoder_list56
  br i1 %cmp65.not154, label %if.end52.for.end86_crit_edge, label %if.end52.for.body67_crit_edge

if.end52.for.body67_crit_edge:                    ; preds = %if.end52
  br label %for.body67

if.end52.for.end86_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end86

for.body67:                                       ; preds = %for.inc80.for.body67_crit_edge, %if.end52.for.body67_crit_edge
  %.pn115155 = phi ptr [ %.pn115, %for.inc80.for.body67_crit_edge ], [ %.pn115152, %if.end52.for.body67_crit_edge ]
  %encoder_type68 = getelementptr i8, ptr %.pn115155, i32 32
  %261 = ptrtoint ptr %encoder_type68 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %encoder_type68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %262)
  %cmp69.not = icmp eq i32 %262, 7
  br i1 %cmp69.not, label %for.body67.for.inc80_crit_edge, label %if.then70

for.body67.for.inc80_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80

if.then70:                                        ; preds = %for.body67
  %263 = getelementptr i8, ptr %.pn115155, i32 240
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %tobool73.not = icmp eq ptr %265, null
  br i1 %tobool73.not, label %if.then70.for.inc80_crit_edge, label %land.lhs.true74

if.then70.for.inc80_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80

land.lhs.true74:                                  ; preds = %if.then70
  %modified75 = getelementptr inbounds %struct.nv50_mstm, ptr %265, i32 0, i32 5
  %266 = ptrtoint ptr %modified75 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %modified75, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool76.not = icmp eq i8 %267, 0
  br i1 %tobool76.not, label %land.lhs.true74.for.inc80_crit_edge, label %if.then77

land.lhs.true74.for.inc80_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80

if.then77:                                        ; preds = %land.lhs.true74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %268 = load i32, ptr @__drm_debug, align 4
  %and.i.i118 = and i32 %268, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.i.not.i119 = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.i.not.i119, label %if.then77.do.end15.i130_crit_edge, label %do.body3.i126

if.then77.do.end15.i130_crit_edge:                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i130

do.body3.i126:                                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %269 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %265, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 4
  %dev_private.i.i120 = getelementptr inbounds %struct.drm_device, ptr %272, i32 0, i32 5
  %273 = ptrtoint ptr %dev_private.i.i120 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev_private.i.i120, align 4
  %drm5.i121 = getelementptr inbounds %struct.nouveau_drm, ptr %274, i32 0, i32 2, i32 1
  %275 = ptrtoint ptr %drm5.i121 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %drm5.i121, align 8
  %dev6.i122 = getelementptr inbounds %struct.nouveau_drm, ptr %276, i32 0, i32 3
  %277 = ptrtoint ptr %dev6.i122 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev6.i122, align 8
  %dev7.i123 = getelementptr inbounds %struct.drm_device, ptr %278, i32 0, i32 2
  %279 = ptrtoint ptr %dev7.i123 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev7.i123, align 4
  %name.i124 = getelementptr inbounds %struct.nouveau_drm, ptr %274, i32 0, i32 2, i32 12
  %name11.i125 = getelementptr inbounds %struct.drm_encoder, ptr %270, i32 0, i32 3
  %281 = ptrtoint ptr %name11.i125 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %name11.i125, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %280, ptr noundef nonnull @.str.65, ptr noundef %name.i124, ptr noundef %282) #13
  br label %do.end15.i130

do.end15.i130:                                    ; preds = %do.body3.i126, %if.then77.do.end15.i130_crit_edge
  %mgr.i127 = getelementptr inbounds %struct.nv50_mstm, ptr %265, i32 0, i32 1
  %call16.i128 = call i32 @drm_dp_check_act_status(ptr noundef %mgr.i127) #10
  %call18.i = call i32 @drm_dp_update_payload_part2(ptr noundef %mgr.i127) #10
  %283 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %265, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %284, align 4
  %encoder_list.i129 = getelementptr inbounds %struct.drm_device, ptr %286, i32 0, i32 30, i32 16
  %287 = ptrtoint ptr %encoder_list.i129 to i32
  call void @__asan_load4_noabort(i32 %287)
  %.pn58.i = load ptr, ptr %encoder_list.i129, align 4
  %cmp.not61.i = icmp eq ptr %.pn58.i, %encoder_list.i129
  br i1 %cmp.not61.i, label %do.end15.i130.nv50_mstm_cleanup.exit_crit_edge, label %do.end15.i130.for.body.i132_crit_edge

do.end15.i130.for.body.i132_crit_edge:            ; preds = %do.end15.i130
  br label %for.body.i132

do.end15.i130.nv50_mstm_cleanup.exit_crit_edge:   ; preds = %do.end15.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_mstm_cleanup.exit

for.body.i132:                                    ; preds = %for.inc.i143.for.body.i132_crit_edge, %do.end15.i130.for.body.i132_crit_edge
  %.pn62.i = phi ptr [ %.pn.i141, %for.inc.i143.for.body.i132_crit_edge ], [ %.pn58.i, %do.end15.i130.for.body.i132_crit_edge ]
  %encoder.063.i = getelementptr i8, ptr %.pn62.i, i32 -4
  %encoder_type.i131 = getelementptr i8, ptr %.pn62.i, i32 32
  %288 = ptrtoint ptr %encoder_type.i131 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %encoder_type.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %289)
  %cmp29.i = icmp eq i32 %289, 7
  br i1 %cmp29.i, label %if.then30.i, label %for.body.i132.for.inc.i143_crit_edge

for.body.i132.for.inc.i143_crit_edge:             ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i143

if.then30.i:                                      ; preds = %for.body.i132
  %mstc34.i = getelementptr i8, ptr %.pn62.i, i32 72
  %290 = ptrtoint ptr %mstc34.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mstc34.i, align 4
  %tobool.not.i133 = icmp eq ptr %291, null
  br i1 %tobool.not.i133, label %if.then30.i.for.inc.i143_crit_edge, label %land.lhs.true.i134

if.then30.i.for.inc.i143_crit_edge:               ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i143

land.lhs.true.i134:                               ; preds = %if.then30.i
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 8
  %cmp36.i = icmp eq ptr %293, %265
  br i1 %cmp36.i, label %if.then37.i, label %land.lhs.true.i134.for.inc.i143_crit_edge

land.lhs.true.i134.for.inc.i143_crit_edge:        ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i143

if.then37.i:                                      ; preds = %land.lhs.true.i134
  %294 = ptrtoint ptr %encoder.063.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %encoder.063.i, align 4
  %dev_private.i.i.i135 = getelementptr inbounds %struct.drm_device, ptr %295, i32 0, i32 5
  %296 = ptrtoint ptr %dev_private.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dev_private.i.i.i135, align 4
  %disabled.i.i = getelementptr i8, ptr %.pn62.i, i32 76
  %298 = ptrtoint ptr %disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %disabled.i.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool.not.i.i136 = icmp eq i8 %299, 0
  br i1 %tobool.not.i.i136, label %if.then37.i.for.inc.i143_crit_edge, label %do.body.i.i

if.then37.i.for.inc.i143_crit_edge:               ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i143

do.body.i.i:                                      ; preds = %if.then37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %300 = load i32, ptr @__drm_debug, align 4
  %and.i.i.i137 = and i32 %300, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i137)
  %tobool.i.not.i.i138 = icmp eq i32 %and.i.i.i137, 0
  br i1 %tobool.i.not.i.i138, label %do.body.i.i.do.end16.i.i_crit_edge, label %do.body5.i.i

do.body.i.i.do.end16.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i.i

do.body5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %drm7.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %297, i32 0, i32 2, i32 1
  %301 = ptrtoint ptr %drm7.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %drm7.i.i, align 8
  %dev8.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %302, i32 0, i32 3
  %303 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev8.i.i, align 8
  %dev9.i.i = getelementptr inbounds %struct.drm_device, ptr %304, i32 0, i32 2
  %305 = ptrtoint ptr %dev9.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dev9.i.i, align 4
  %name.i.i139 = getelementptr inbounds %struct.nouveau_drm, ptr %297, i32 0, i32 2, i32 12
  %name11.i.i = getelementptr i8, ptr %.pn62.i, i32 28
  %307 = ptrtoint ptr %name11.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name11.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %306, ptr noundef nonnull @.str.67, ptr noundef %name.i.i139, ptr noundef %308) #13
  br label %do.end16.i.i

do.end16.i.i:                                     ; preds = %do.body5.i.i, %do.body.i.i.do.end16.i.i_crit_edge
  %port.i.i140 = getelementptr inbounds %struct.nv50_mstc, ptr %291, i32 0, i32 1
  %309 = ptrtoint ptr %port.i.i140 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %port.i.i140, align 4
  call void @drm_dp_mst_deallocate_vcpi(ptr noundef %mgr.i127, ptr noundef %310) #10
  %311 = ptrtoint ptr %mstc34.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %mstc34.i, align 4
  %312 = ptrtoint ptr %disabled.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 0, ptr %disabled.i.i, align 4
  br label %for.inc.i143

for.inc.i143:                                     ; preds = %do.end16.i.i, %if.then37.i.for.inc.i143_crit_edge, %land.lhs.true.i134.for.inc.i143_crit_edge, %if.then30.i.for.inc.i143_crit_edge, %for.body.i132.for.inc.i143_crit_edge
  %313 = ptrtoint ptr %.pn62.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %.pn.i141 = load ptr, ptr %.pn62.i, align 4
  %314 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %265, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %315, align 4
  %encoder_list28.i = getelementptr inbounds %struct.drm_device, ptr %317, i32 0, i32 30, i32 16
  %cmp.not.i142 = icmp eq ptr %.pn.i141, %encoder_list28.i
  br i1 %cmp.not.i142, label %for.inc.i143.nv50_mstm_cleanup.exit_crit_edge, label %for.inc.i143.for.body.i132_crit_edge

for.inc.i143.for.body.i132_crit_edge:             ; preds = %for.inc.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i132

for.inc.i143.nv50_mstm_cleanup.exit_crit_edge:    ; preds = %for.inc.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_mstm_cleanup.exit

nv50_mstm_cleanup.exit:                           ; preds = %for.inc.i143.nv50_mstm_cleanup.exit_crit_edge, %do.end15.i130.nv50_mstm_cleanup.exit_crit_edge
  %318 = ptrtoint ptr %modified75 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 0, ptr %modified75, align 1
  br label %for.inc80

for.inc80:                                        ; preds = %nv50_mstm_cleanup.exit, %land.lhs.true74.for.inc80_crit_edge, %if.then70.for.inc80_crit_edge, %for.body67.for.inc80_crit_edge
  %319 = ptrtoint ptr %.pn115155 to i32
  call void @__asan_load4_noabort(i32 %319)
  %.pn115 = load ptr, ptr %.pn115155, align 4
  %320 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev1, align 8
  %encoder_list64 = getelementptr inbounds %struct.drm_device, ptr %321, i32 0, i32 30, i32 16
  %cmp65.not = icmp eq ptr %.pn115, %encoder_list64
  br i1 %cmp65.not, label %for.inc80.for.end86_crit_edge, label %for.inc80.for.body67_crit_edge

for.inc80.for.body67_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body67

for.inc80.for.end86_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end86

for.end86:                                        ; preds = %for.inc80.for.end86_crit_edge, %if.end52.for.end86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_release_notifier_contexts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_init_notifier_contexts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_head_flush_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_head_flush_set_wndw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_flush_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_wait_armed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_accurate_vblank_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_start_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_cleanup_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part1(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_check_act_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_deallocate_vcpi(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_state_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_default_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_default_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_msto_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #10
  tail call void @kfree(ptr noundef %encoder) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_msto_atomic_disable(ptr nocapture noundef %encoder, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mstc1 = getelementptr inbounds %struct.nv50_msto, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %mstc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mstc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mgr = getelementptr inbounds %struct.nv50_mstm, ptr %3, i32 0, i32 1
  %port = getelementptr inbounds %struct.nv50_mstc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  tail call void @drm_dp_mst_reset_vcpi_slots(ptr noundef %mgr, ptr noundef %5) #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %update = getelementptr inbounds %struct.nouveau_encoder, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update, align 4
  %head = getelementptr inbounds %struct.nv50_msto, ptr %encoder, i32 0, i32 1
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head, align 4
  %index = getelementptr inbounds %struct.nv50_head, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %conv = trunc i32 %13 to i8
  tail call void %9(ptr noundef %7, i8 noundef zeroext %conv, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %modified = getelementptr inbounds %struct.nv50_mstm, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %modified to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %modified, align 1
  %links = getelementptr inbounds %struct.nv50_mstm, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %links, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %disabled = getelementptr inbounds %struct.nv50_mstm, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %disabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %disabled4 = getelementptr inbounds %struct.nv50_msto, ptr %encoder, i32 0, i32 3
  %18 = ptrtoint ptr %disabled4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %disabled4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_msto_atomic_enable(ptr noundef %encoder, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %args.i = alloca %struct.anon.249, align 2
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.nv50_msto, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.nv50_head, ptr %1, i32 0, i32 1, i32 0, i32 8
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %3, i32 %5, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #10
  %8 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !212
  %9 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !212
  %11 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoder, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %12, ptr noundef nonnull %conn_iter) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call6 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %while.end.thread, label %while.body

while.end.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #10
  br label %do.end

while.body:                                       ; preds = %while.cond
  %state7 = getelementptr inbounds %struct.drm_connector, ptr %call6, i32 0, i32 52
  %13 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state7, align 8
  %best_encoder = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %best_encoder, align 4
  %cmp = icmp eq ptr %16, %encoder
  br i1 %cmp, label %while.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.body
  %add.ptr11 = getelementptr i8, ptr %call6, i32 -8
  %17 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr11, align 8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #10
  %tobool13.not = icmp eq ptr %add.ptr11, null
  br i1 %tobool13.not, label %while.end.do.end_crit_edge, label %if.end39, !prof !213

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %while.end.thread
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1118, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39:                                         ; preds = %while.end
  %mgr = getelementptr inbounds %struct.nv50_mstm, ptr %18, i32 0, i32 1
  %port = getelementptr i8, ptr %call6, i32 -4
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 4
  %dp = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 13
  %21 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dp, align 8
  %tu = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %tu to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %tu, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %conv = zext i8 %bf.lshr to i32
  %call41 = call zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef %mgr, ptr noundef %20, i32 noundef %22, i32 noundef %conv) #10
  br i1 %call41, label %if.end39.if.end44_crit_edge, label %if.then43

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.70) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end39.if.end44_crit_edge
  %links = getelementptr inbounds %struct.nv50_mstm, ptr %18, i32 0, i32 7
  %24 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %links, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool45.not = icmp eq i32 %25, 0
  br i1 %tobool45.not, label %if.then46, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then46:                                        ; preds = %if.end44
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %18, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2.i, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %display.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #10
  %40 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %42 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %43 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %44 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %args.i, align 2
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %40, align 1
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %27, i32 0, i32 1
  %46 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dcb.i, align 4
  %hasht5.i = getelementptr inbounds %struct.dcb_output, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %hasht5.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hasht5.i, align 4
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %41, align 2
  %hashm7.i = getelementptr inbounds %struct.dcb_output, ptr %47, i32 0, i32 2
  %51 = ptrtoint ptr %hashm7.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hashm7.i, align 2
  %53 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %42, align 2
  %54 = call ptr @memset(ptr %43, i32 0, i32 10)
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %39, align 8
  %call11.i = call i32 @nvif_object_mthd(ptr noundef %56, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %drm14.i = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %drm14.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %drm14.i, align 8
  %dev15.i = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev15.i, align 8
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev16.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.71, ptr noundef %name.i, i32 noundef %call11.i) #13
  br label %nv50_outp_acquire.exit

if.end.i:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %63 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 2
  %64 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv21.i = zext i8 %66 to i32
  %or22.i = getelementptr inbounds %struct.nouveau_encoder, ptr %27, i32 0, i32 2
  %67 = ptrtoint ptr %or22.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv21.i, ptr %or22.i, align 4
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %63, align 2
  %conv25.i = zext i8 %69 to i32
  %link26.i = getelementptr inbounds %struct.nouveau_encoder, ptr %27, i32 0, i32 3
  %70 = ptrtoint ptr %link26.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv25.i, ptr %link26.i, align 4
  br label %nv50_outp_acquire.exit

nv50_outp_acquire.exit:                           ; preds = %if.end.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #10
  br label %if.end48

if.end48:                                         ; preds = %nv50_outp_acquire.exit, %if.end44.if.end48_crit_edge
  %71 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %18, align 4
  %link = getelementptr inbounds %struct.nouveau_encoder, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %link, align 4
  %and = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  %. = select i1 %tobool50.not, i8 9, i8 8
  %update = getelementptr inbounds %struct.nouveau_encoder, ptr %72, i32 0, i32 16
  %75 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %update, align 4
  %index = getelementptr inbounds %struct.nv50_head, ptr %1, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %index, align 8
  %conv56 = trunc i32 %78 to i8
  %bpc = getelementptr inbounds %struct.nv50_head_atom, ptr %7, i32 0, i32 11, i32 1
  %79 = ptrtoint ptr %bpc to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bpc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %80)
  %switch.selectcmp.i = icmp eq i8 %80, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i8 5, i8 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %80)
  %switch.selectcmp3.i = icmp eq i8 %80, 6
  %switch.select4.i = select i1 %switch.selectcmp3.i, i8 2, i8 %switch.select.i
  call void %76(ptr noundef %72, i8 noundef zeroext %conv56, ptr noundef %7, i8 noundef zeroext %., i8 noundef zeroext %switch.select4.i) #10
  %mstc59 = getelementptr inbounds %struct.nv50_msto, ptr %encoder, i32 0, i32 2
  %81 = ptrtoint ptr %mstc59 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr11, ptr %mstc59, align 4
  %modified = getelementptr inbounds %struct.nv50_mstm, ptr %18, i32 0, i32 5
  %82 = ptrtoint ptr %modified to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %modified, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_msto_atomic_check(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr nocapture noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 20
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %2 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_state, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %native = getelementptr i8, ptr %3, i32 1040
  %6 = ptrtoint ptr %native to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %native, align 8
  tail call fastcc void @nv50_outp_atomic_check_view(ptr noundef %encoder, ptr noundef %crtc_state, ptr noundef %conn_state, ptr noundef %7)
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %8 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %mode_changed, align 2
  %9 = and i8 %bf.load, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  %duplicated = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %duplicated to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load13 = load i8, ptr %duplicated, align 4
  %12 = and i8 %bf.load13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %bf.cast16.not = icmp eq i8 %12, 0
  br i1 %bf.cast16.not, label %if.then17, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %13 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adjusted_mode, align 4
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 2
  %15 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bpc, align 8
  %conv = trunc i32 %16 to i8
  %bpc19 = getelementptr inbounds %struct.nv50_head_atom, ptr %crtc_state, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %bpc19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %bpc19, align 1
  %conv22 = and i32 %16, 255
  %mul = mul nuw nsw i32 %conv22, 3
  %call23 = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef %14, i32 noundef %mul, i1 noundef zeroext false) #10
  %dp = getelementptr inbounds %struct.nv50_head_atom, ptr %crtc_state, i32 0, i32 13
  %18 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call23, ptr %dp, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end12.if.end24_crit_edge
  %mgr = getelementptr inbounds %struct.nv50_mstm, ptr %5, i32 0, i32 1
  %port = getelementptr i8, ptr %3, i32 -4
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 4
  %dp25 = getelementptr inbounds %struct.nv50_head_atom, ptr %crtc_state, i32 0, i32 13
  %21 = ptrtoint ptr %dp25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dp25, align 8
  %call27 = tail call i32 @drm_dp_atomic_find_vcpi_slots(ptr noundef %1, ptr noundef %mgr, ptr noundef %20, i32 noundef %22, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %conv31 = trunc i32 %call27 to i8
  %tu = getelementptr inbounds %struct.nv50_head_atom, ptr %crtc_state, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %tu to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load33 = load i8, ptr %tu, align 4
  %bf.shl = shl i8 %conv31, 2
  %bf.clear34 = and i8 %bf.load33, 3
  %bf.set = or i8 %bf.clear34, %bf.shl
  store i8 %bf.set, ptr %tu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %call27, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_reset_vcpi_slots(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_outp_atomic_check_view(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr nocapture noundef %conn_state, ptr noundef %native_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adjusted_mode1 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %mode2 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %2 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end14_crit_edge, label %do.body5

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_private.i, align 4
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %name10 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 3
  %13 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.73, ptr noundef %name, ptr noundef %14) #13
  br label %do.end14

do.end14:                                         ; preds = %do.body5, %entry.do.end14_crit_edge
  %full = getelementptr inbounds %struct.nouveau_conn_atom, ptr %conn_state, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %full, align 4
  %tobool.not = icmp eq ptr %native_mode, null
  br i1 %tobool.not, label %do.end14.cleanup_crit_edge, label %if.end16

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %do.end14
  %scaler = getelementptr inbounds %struct.nouveau_conn_atom, ptr %conn_state, i32 0, i32 2
  %16 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scaler, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then19, label %if.end16.if.end36_crit_edge

if.end16.if.end36_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then19:                                        ; preds = %if.end16
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %connector_type, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %19, label %if.then19.if.end36_crit_edge [
    i32 7, label %if.then19.sw.bb_crit_edge
    i32 14, label %if.then19.sw.bb_crit_edge1
  ]

if.then19.sw.bb_crit_edge1:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then19.sw.bb_crit_edge:                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then19.if.end36_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

sw.bb:                                            ; preds = %if.then19.sw.bb_crit_edge, %if.then19.sw.bb_crit_edge1
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hdisplay, align 4
  %hdisplay20 = getelementptr inbounds %struct.drm_display_mode, ptr %native_mode, i32 0, i32 1
  %23 = ptrtoint ptr %hdisplay20 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hdisplay20, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp22 = icmp eq i16 %22, %24
  br i1 %cmp22, label %land.lhs.true, label %sw.bb.if.end33_crit_edge

sw.bb.if.end33_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %sw.bb
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay, align 2
  %vdisplay25 = getelementptr inbounds %struct.drm_display_mode, ptr %native_mode, i32 0, i32 6
  %27 = ptrtoint ptr %vdisplay25 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vdisplay25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp27 = icmp eq i16 %26, %28
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true29:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 28
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type, align 2
  %31 = and i8 %30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end33_crit_edge, label %land.lhs.true29.if.end36_crit_edge

land.lhs.true29.if.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true29.if.end33_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true29.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %sw.bb.if.end33_crit_edge
  %32 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %full, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %land.lhs.true29.if.end36_crit_edge, %if.then19.if.end36_crit_edge, %if.end16.if.end36_crit_edge
  %mode.0 = phi ptr [ %mode2, %if.then19.if.end36_crit_edge ], [ %mode2, %land.lhs.true29.if.end36_crit_edge ], [ %native_mode, %if.end33 ], [ %native_mode, %if.end16.if.end36_crit_edge ]
  %call37 = tail call zeroext i1 @drm_mode_equal(ptr noundef %adjusted_mode1, ptr noundef %mode.0) #10
  br i1 %call37, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_mode_copy(ptr noundef %adjusted_mode1, ptr noundef %mode.0) #10
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %33 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_calc_pbn_mode(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_atomic_find_vcpi_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_sor_update(ptr nocapture noundef %nv_encoder, i8 noundef zeroext %head, ptr noundef %asyh, i8 noundef zeroext %proto, i8 noundef zeroext %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nv_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nv_encoder, align 4
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
  %core2 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core2, align 4
  %tobool.not = icmp eq ptr %asyh, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %head to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %ctrl = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 7
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 4
  %and = and i32 %11, %neg
  %12 = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %spec.store.select = select i1 %cmp, i32 0, i32 %and
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %ctrl, align 4
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = and i8 %proto, 15
  %and10 = zext i8 %14 to i32
  %shl11 = shl nuw nsw i32 %and10, 8
  %ctrl12 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 7
  %15 = ptrtoint ptr %ctrl12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl12, align 4
  %conv15 = zext i8 %head to i32
  %shl16 = shl nuw i32 1, %conv15
  %or = or i32 %shl11, %shl16
  %or18 = or i32 %or, %16
  store i32 %or18, ptr %ctrl12, align 4
  %or19 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 11
  %17 = ptrtoint ptr %or19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %or19, align 8
  %bf.value = shl i8 %depth, 2
  %bf.shl = and i8 %bf.value, 60
  %bf.clear = and i8 %bf.load, -61
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %or19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 8
  %sor = getelementptr inbounds %struct.nv50_core_func, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %sor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sor, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %or22 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 2
  %24 = ptrtoint ptr %or22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %or22, align 4
  %ctrl23 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 7
  %26 = ptrtoint ptr %ctrl23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl23, align 4
  %call24 = tail call i32 %23(ptr noundef %9, i32 noundef %25, i32 noundef %27, ptr noundef %asyh) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_aux_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_sor_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.nv50_mstm_del.exit_crit_edge, label %if.then.i

entry.nv50_mstm_del.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_mstm_del.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mgr.i = getelementptr inbounds %struct.nv50_mstm, ptr %2, i32 0, i32 1
  tail call void @drm_dp_mst_topology_mgr_destroy(ptr noundef %mgr.i) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 4
  br label %nv50_mstm_del.exit

nv50_mstm_del.exit:                               ; preds = %if.then.i, %entry.nv50_mstm_del.exit_crit_edge
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #10
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp = icmp eq i32 %9, 6
  br i1 %cmp, label %if.then, label %nv50_mstm_del.exit.if.end_crit_edge

nv50_mstm_del.exit.if.end_crit_edge:              ; preds = %nv50_mstm_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %nv50_mstm_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hpd_irq_lock = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 12, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %hpd_irq_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %nv50_mstm_del.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %encoder) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_topology_mgr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_sor_atomic_disable(ptr noundef %encoder, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %args.i63 = alloca %struct.anon.248, align 2
  %args.i58 = alloca %struct.anon.252, align 2
  %args.i = alloca %struct.anon.251, align 2
  %value.addr.i = alloca i8, align 1
  %pwr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 6
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.i = icmp sgt i32 %3, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i, label %entry.nv50_outp_get_old_connector.exit_crit_edge

entry.nv50_outp_get_old_connector.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_old_connector.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %i.022.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %old_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %i.022.i, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 4
  %best_encoder.i = getelementptr inbounds %struct.drm_connector_state, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %best_encoder.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %best_encoder.i, align 4
  %cmp6.i = icmp eq ptr %11, %encoder
  br i1 %cmp6.i, label %land.lhs.true.i.nv50_outp_get_old_connector.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.nv50_outp_get_old_connector.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_old_connector.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.nv50_outp_get_old_connector.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.nv50_outp_get_old_connector.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_old_connector.exit

nv50_outp_get_old_connector.exit:                 ; preds = %for.inc.i.nv50_outp_get_old_connector.exit_crit_edge, %land.lhs.true.i.nv50_outp_get_old_connector.exit_crit_edge, %entry.nv50_outp_get_old_connector.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.nv50_outp_get_old_connector.exit_crit_edge ], [ null, %for.inc.i.nv50_outp_get_old_connector.exit_crit_edge ], [ %7, %land.lhs.true.i.nv50_outp_get_old_connector.exit_crit_edge ]
  %12 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i, align 4
  %backlight5 = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i, i32 0, i32 11
  %16 = ptrtoint ptr %backlight5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %backlight5, align 4
  %aux6 = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr) #10
  %18 = ptrtoint ptr %pwr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %pwr, align 1, !annotation !212
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %nv50_outp_get_old_connector.exit.if.end19_crit_edge, label %land.lhs.true

nv50_outp_get_old_connector.exit.if.end19_crit_edge: ; preds = %nv50_outp_get_old_connector.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %nv50_outp_get_old_connector.exit
  %uses_dpcd = getelementptr inbounds %struct.nouveau_backlight, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %uses_dpcd to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %uses_dpcd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.lhs.true.if.end19_crit_edge, label %if.then

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %edp_info = getelementptr inbounds %struct.nouveau_backlight, ptr %17, i32 0, i32 1
  %call7 = tail call i32 @drm_edp_backlight_disable(ptr noundef %aux6, ptr noundef %edp_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.body, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %drm10 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %drm10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drm10, align 8
  %dev11 = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11, align 8
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev12, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 12
  %base14 = getelementptr inbounds %struct.drm_connector, ptr %retval.0.i, i32 0, i32 6
  %26 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base14, align 8
  %name16 = getelementptr inbounds %struct.drm_connector, ptr %retval.0.i, i32 0, i32 7
  %28 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %27, ptr noundef %29, i32 noundef %call7) #13
  br label %if.end19

if.end19:                                         ; preds = %do.body, %if.then.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %nv50_outp_get_old_connector.exit.if.end19_crit_edge
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %30 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp20 = icmp eq i32 %33, 6
  br i1 %cmp20, label %if.then21, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then21:                                        ; preds = %if.end19
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux6, i32 noundef 1536, ptr noundef nonnull %pwr, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23 = icmp eq i32 %call.i, 0
  br i1 %cmp23, label %if.then24, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %pwr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pwr, align 1
  %36 = and i8 %35, -4
  %37 = or i8 %36, 2
  store i8 %37, ptr %pwr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %38 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %value.addr.i, align 1
  %call.i56 = call i32 @drm_dp_dpcd_write(ptr noundef %aux6, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.then21.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %update = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 16
  %39 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %update, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index, align 8
  %conv31 = trunc i32 %42 to i8
  call void %40(ptr noundef %encoder, i8 noundef zeroext %conv31, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %43 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %display.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #10
  %51 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %53 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %54 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %55 = getelementptr inbounds %struct.anon.251, ptr %args.i, i32 0, i32 1
  %56 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %args.i, align 2
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 33, ptr %51, align 1
  %58 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dcb, align 4
  %hasht4.i = getelementptr inbounds %struct.dcb_output, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %hasht4.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hasht4.i, align 4
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %52, align 2
  %hashm6.i = getelementptr inbounds %struct.dcb_output, ptr %59, i32 0, i32 2
  %63 = ptrtoint ptr %hashm6.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hashm6.i, align 2
  %65 = and i16 %64, -3841
  %66 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index, align 8
  %shl.i = shl i32 256, %67
  %68 = trunc i32 %shl.i to i16
  %conv7.i = or i16 %65, %68
  %69 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv7.i, ptr %53, align 2
  %70 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %54, align 2
  %71 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 0, ptr %55, align 2
  %lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 31, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %audio8.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 8
  %72 = ptrtoint ptr %audio8.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %audio8.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i57 = icmp eq i8 %73, 0
  br i1 %tobool.not.i57, label %if.end30.if.end.i_crit_edge, label %if.then.i

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %audio8.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %audio8.i, align 4
  %connector.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %connector.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %connector.i, align 4
  %76 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %50, align 8
  %call13.i = call i32 @nvif_object_mthd(ptr noundef %77, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 16) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end30.if.end.i_crit_edge
  %audio.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 31
  call void @mutex_unlock(ptr noundef %lock.i) #10
  %78 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %audio.i, align 8
  %or17.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %80 = ptrtoint ptr %or17.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %or17.i, align 4
  %82 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %index, align 8
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.end.i.nv50_audio_disable.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.nv50_audio_disable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_audio_disable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  %audio_ops.i.i = getelementptr inbounds %struct.drm_audio_component, ptr %79, i32 0, i32 2
  %84 = ptrtoint ptr %audio_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %audio_ops.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %85, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.nv50_audio_disable.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.nv50_audio_disable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_audio_disable.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %pin_eld_notify.i.i = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %pin_eld_notify.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pin_eld_notify.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %87, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.nv50_audio_disable.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.nv50_audio_disable.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_audio_disable.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  call void %87(ptr noundef %89, i32 noundef %81, i32 noundef %83) #10
  br label %nv50_audio_disable.exit

nv50_audio_disable.exit:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.nv50_audio_disable.exit_crit_edge, %land.lhs.true.i.i.nv50_audio_disable.exit_crit_edge, %if.end.i.nv50_audio_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #10
  %90 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i59 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 19
  %94 = ptrtoint ptr %display.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %display.i.i.i59, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i58) #10
  %98 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i58, i32 0, i32 1
  %99 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i58, i32 0, i32 2
  %100 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i58, i32 0, i32 3
  %101 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i58, i32 0, i32 4
  %102 = getelementptr inbounds %struct.anon.252, ptr %args.i58, i32 0, i32 1
  %103 = ptrtoint ptr %args.i58 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %args.i58, align 2
  %104 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 34, ptr %98, align 1
  %105 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dcb, align 4
  %hasht2.i = getelementptr inbounds %struct.dcb_output, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %hasht2.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hasht2.i, align 4
  %109 = ptrtoint ptr %99 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %99, align 2
  %hashm4.i = getelementptr inbounds %struct.dcb_output, ptr %106, i32 0, i32 2
  %110 = ptrtoint ptr %hashm4.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %hashm4.i, align 2
  %112 = and i16 %111, -3841
  %113 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %index, align 8
  %shl.i62 = shl i32 256, %114
  %115 = trunc i32 %shl.i62 to i16
  %conv5.i = or i16 %112, %115
  %116 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv5.i, ptr %100, align 2
  %117 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %101, align 2
  %118 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 8)
  store i64 0, ptr %102, align 2
  %119 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %97, align 8
  %call7.i = call i32 @nvif_object_mthd(ptr noundef %120, i32 noundef 0, ptr noundef nonnull %args.i58, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i58) #10
  %121 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i.i64 = getelementptr inbounds %struct.drm_device, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %dev_private.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_private.i.i.i.i64, align 4
  %display.i.i.i65 = getelementptr inbounds %struct.nouveau_drm, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %display.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %display.i.i.i65, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i63) #10
  %129 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i63, i32 0, i32 1
  %130 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i63, i32 0, i32 2
  %131 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i63, i32 0, i32 3
  %132 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i63, i32 0, i32 4
  %133 = ptrtoint ptr %args.i63 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %args.i63, align 2
  %134 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 2, ptr %129, align 1
  %135 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dcb, align 4
  %hasht3.i = getelementptr inbounds %struct.dcb_output, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %hasht3.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %hasht3.i, align 4
  %139 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %130, align 2
  %hashm5.i = getelementptr inbounds %struct.dcb_output, ptr %136, i32 0, i32 2
  %140 = ptrtoint ptr %hashm5.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %hashm5.i, align 2
  %142 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %131, align 2
  %143 = ptrtoint ptr %132 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %132, align 2
  %144 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %128, align 8
  %call7.i67 = call i32 @nvif_object_mthd(ptr noundef %145, i32 noundef 0, ptr noundef nonnull %args.i63, i32 noundef 8) #10
  %146 = ptrtoint ptr %or17.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 -1, ptr %or17.i, align 4
  %link.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %147 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %link.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i63) #10
  %148 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %crtc, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_sor_atomic_enable(ptr noundef %encoder, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %value.addr.i.i = alloca i8, align 1
  %args.i213 = alloca %struct.anon.254, align 2
  %avi_frame.i = alloca %union.hdmi_infoframe, align 4
  %vendor_frame.i = alloca %union.hdmi_infoframe, align 4
  %config.i = alloca i8, align 1
  %args.i = alloca %struct.anon.249, align 2
  %lvds = alloca %struct.anon.253, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 5
  %0 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %1
  %dev.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.i = icmp sgt i32 %5, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %entry.nv50_outp_get_new_crtc.exit_crit_edge

entry.nv50_outp_get_new_crtc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.024.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.024.i, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_mask.i, align 4
  %and.i = and i32 %13, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge

land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

nv50_outp_get_new_crtc.exit:                      ; preds = %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge, %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge, %entry.nv50_outp_get_new_crtc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.nv50_outp_get_new_crtc.exit_crit_edge ], [ null, %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge ], [ %9, %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge ]
  %crtcs.i201 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %crtcs.i201 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtcs.i201, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %retval.0.i, i32 0, i32 8
  %16 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i, align 4
  %new_state.i202 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %17, i32 3
  %18 = ptrtoint ptr %new_state.i202 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_state.i202, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lvds) #10
  %20 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %lvds, i32 0, i32 1
  %21 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %lvds, i32 0, i32 2
  %22 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %lvds, i32 0, i32 3
  %23 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %lvds, i32 0, i32 4
  %24 = getelementptr inbounds %struct.anon.253, ptr %lvds, i32 0, i32 1
  %25 = getelementptr inbounds %struct.anon.253, ptr %lvds, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %lvds to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %lvds, align 2
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 35, ptr %20, align 1
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %28 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcb, align 4
  %hasht5 = getelementptr inbounds %struct.dcb_output, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %hasht5 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hasht5, align 4
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %21, align 2
  %hashm7 = getelementptr inbounds %struct.dcb_output, ptr %29, i32 0, i32 2
  %33 = ptrtoint ptr %hashm7 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hashm7, align 2
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %22, align 2
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %23, align 2
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 0, ptr %24, align 2
  %38 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %display.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %46 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp22.i = icmp sgt i32 %47, 0
  br i1 %cmp22.i, label %for.body.lr.ph.i203, label %nv50_outp_get_new_crtc.exit.nv50_outp_get_new_connector.exit_crit_edge

nv50_outp_get_new_crtc.exit.nv50_outp_get_new_connector.exit_crit_edge: ; preds = %nv50_outp_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_connector.exit

for.body.lr.ph.i203:                              ; preds = %nv50_outp_get_new_crtc.exit
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %48 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %connectors.i, align 4
  br label %for.body.i206

for.body.i206:                                    ; preds = %for.inc.i211.for.body.i206_crit_edge, %for.body.lr.ph.i203
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i203 ], [ %inc.i209, %for.inc.i211.for.body.i206_crit_edge ]
  %arrayidx.i204 = getelementptr %struct.__drm_connnectors_state, ptr %49, i32 %i.023.i
  %50 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i204, align 4
  %tobool.not.i205 = icmp eq ptr %51, null
  br i1 %tobool.not.i205, label %for.body.i206.for.inc.i211_crit_edge, label %land.lhs.true.i208

for.body.i206.for.inc.i211_crit_edge:             ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i211

land.lhs.true.i208:                               ; preds = %for.body.i206
  %new_state.i207 = getelementptr %struct.__drm_connnectors_state, ptr %49, i32 %i.023.i, i32 3
  %52 = ptrtoint ptr %new_state.i207 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %new_state.i207, align 4
  %best_encoder.i = getelementptr inbounds %struct.drm_connector_state, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %best_encoder.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %best_encoder.i, align 4
  %cmp6.i = icmp eq ptr %55, %encoder
  br i1 %cmp6.i, label %land.lhs.true.i208.nv50_outp_get_new_connector.exit_crit_edge, label %land.lhs.true.i208.for.inc.i211_crit_edge

land.lhs.true.i208.for.inc.i211_crit_edge:        ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i211

land.lhs.true.i208.nv50_outp_get_new_connector.exit_crit_edge: ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_connector.exit

for.inc.i211:                                     ; preds = %land.lhs.true.i208.for.inc.i211_crit_edge, %for.body.i206.for.inc.i211_crit_edge
  %inc.i209 = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i210 = icmp eq i32 %inc.i209, %47
  br i1 %exitcond.not.i210, label %for.inc.i211.nv50_outp_get_new_connector.exit_crit_edge, label %for.inc.i211.for.body.i206_crit_edge

for.inc.i211.for.body.i206_crit_edge:             ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i206

for.inc.i211.nv50_outp_get_new_connector.exit_crit_edge: ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_connector.exit

nv50_outp_get_new_connector.exit:                 ; preds = %for.inc.i211.nv50_outp_get_new_connector.exit_crit_edge, %land.lhs.true.i208.nv50_outp_get_new_connector.exit_crit_edge, %nv50_outp_get_new_crtc.exit.nv50_outp_get_new_connector.exit_crit_edge
  %retval.0.i212 = phi ptr [ null, %nv50_outp_get_new_crtc.exit.nv50_outp_get_new_connector.exit_crit_edge ], [ null, %for.inc.i211.nv50_outp_get_new_connector.exit_crit_edge ], [ %51, %land.lhs.true.i208.nv50_outp_get_new_connector.exit_crit_edge ]
  %crtc = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 6
  %56 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %retval.0.i, ptr %crtc, align 4
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %45, align 8
  %oclass = getelementptr inbounds %struct.nvif_object, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34160, i32 %60)
  %cmp = icmp eq i32 %60, 34160
  call void @__sanitizer_cov_trace_const_cmp4(i32 36975, i32 %60)
  %cmp19 = icmp sgt i32 %60, 36975
  %or.cond = or i1 %cmp, %cmp19
  br i1 %or.cond, label %land.lhs.true, label %nv50_outp_get_new_connector.exit.if.end_crit_edge

nv50_outp_get_new_connector.exit.if.end_crit_edge: ; preds = %nv50_outp_get_new_connector.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %nv50_outp_get_new_connector.exit
  call void @__sanitizer_cov_trace_pc() #12
  %edid = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i212, i32 0, i32 9
  %61 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %edid, align 4
  %call20 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %62) #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %nv50_outp_get_new_connector.exit.if.end_crit_edge
  %hda.0.off0 = phi i1 [ false, %nv50_outp_get_new_connector.exit.if.end_crit_edge ], [ %call20, %land.lhs.true ]
  %frombool.i = zext i1 %hda.0.off0 to i8
  %63 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev2.i, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %display.i.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #10
  %75 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %76 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %77 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %78 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %79 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 3
  %80 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 4
  %81 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %args.i, align 2
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %75, align 1
  %83 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dcb, align 4
  %hasht5.i = getelementptr inbounds %struct.dcb_output, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %hasht5.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %hasht5.i, align 4
  %87 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %76, align 2
  %hashm7.i = getelementptr inbounds %struct.dcb_output, ptr %84, i32 0, i32 2
  %88 = ptrtoint ptr %hashm7.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %hashm7.i, align 2
  %90 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %77, align 2
  %91 = call ptr @memset(ptr %78, i32 0, i32 5)
  %92 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %frombool.i, ptr %79, align 1
  %93 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 0, ptr %80, align 2
  %94 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %74, align 8
  %call11.i = call i32 @nvif_object_mthd(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %drm14.i = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 1
  %96 = ptrtoint ptr %drm14.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %drm14.i, align 8
  %dev15.i = getelementptr inbounds %struct.nouveau_drm, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev15.i, align 8
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev16.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.71, ptr noundef %name.i, i32 noundef %call11.i) #13
  br label %nv50_outp_acquire.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %102 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 2
  %103 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %103, align 1
  %conv21.i = zext i8 %105 to i32
  %or22.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %106 = ptrtoint ptr %or22.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv21.i, ptr %or22.i, align 4
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %102, align 2
  %conv25.i = zext i8 %108 to i32
  %link26.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %109 = ptrtoint ptr %link26.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv25.i, ptr %link26.i, align 4
  br label %nv50_outp_acquire.exit

nv50_outp_acquire.exit:                           ; preds = %if.end.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #10
  %110 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %113, label %do.body [
    i32 2, label %sw.bb
    i32 3, label %sw.bb37
    i32 6, label %sw.bb129
  ]

sw.bb:                                            ; preds = %nv50_outp_acquire.exit
  %link = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %115 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %link, align 4
  %and = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %sw.bb.if.end34_crit_edge, label %if.then24

sw.bb.if.end34_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then24:                                        ; preds = %sw.bb
  %117 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 164999, i32 %118)
  %cmp25 = icmp sgt i32 %118, 164999
  br i1 %cmp25, label %land.lhs.true26, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true26:                                  ; preds = %if.then24
  %duallink_possible = getelementptr inbounds %struct.dcb_output, ptr %111, i32 0, i32 11
  %119 = ptrtoint ptr %duallink_possible to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %duallink_possible, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool28.not = icmp eq i8 %120, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.if.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  %edid30 = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i212, i32 0, i32 9
  %121 = ptrtoint ptr %edid30 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %edid30, align 4
  %call31 = call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %122) #10
  %spec.select200 = select i1 %call31, i8 1, i8 5
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true29, %land.lhs.true26.if.end34_crit_edge, %if.then24.if.end34_crit_edge, %sw.bb.if.end34_crit_edge
  %proto.0 = phi i8 [ 1, %land.lhs.true26.if.end34_crit_edge ], [ 1, %if.then24.if.end34_crit_edge ], [ %spec.select200, %land.lhs.true29 ], [ 2, %sw.bb.if.end34_crit_edge ]
  %123 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %encoder, align 4
  %dev_private.i.i214 = getelementptr inbounds %struct.drm_device, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %dev_private.i.i214 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev_private.i.i214, align 4
  %display.i.i.i215 = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 19
  %127 = ptrtoint ptr %display.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %display.i.i.i215, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %args.i213) #10
  %131 = getelementptr inbounds i8, ptr %args.i213, i32 6
  %132 = call ptr @memset(ptr %131, i32 0, i32 44)
  %133 = ptrtoint ptr %args.i213 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %args.i213, align 2
  %method.i = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i213, i32 0, i32 1
  %134 = ptrtoint ptr %method.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 34, ptr %method.i, align 1
  %hasht.i = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i213, i32 0, i32 2
  %135 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dcb, align 4
  %hasht4.i = getelementptr inbounds %struct.dcb_output, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %hasht4.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %hasht4.i, align 4
  %139 = ptrtoint ptr %hasht.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %hasht.i, align 2
  %hashm.i = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i213, i32 0, i32 3
  %hashm6.i = getelementptr inbounds %struct.dcb_output, ptr %136, i32 0, i32 2
  %140 = ptrtoint ptr %hashm6.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %hashm6.i, align 2
  %142 = and i16 %141, -3841
  %index.i = getelementptr inbounds %struct.nouveau_crtc, ptr %retval.0.i, i32 0, i32 1
  %143 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %index.i, align 8
  %shl.i = shl i32 256, %144
  %145 = trunc i32 %shl.i to i16
  %conv7.i = or i16 %142, %145
  %146 = ptrtoint ptr %hashm.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv7.i, ptr %hashm.i, align 2
  %state9.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 1
  %147 = ptrtoint ptr %state9.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %state9.i, align 1
  %rekey.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 3
  %148 = ptrtoint ptr %rekey.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 56, ptr %rekey.i, align 1
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %avi_frame.i) #10
  %149 = call ptr @memset(ptr %avi_frame.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %vendor_frame.i) #10
  %150 = call ptr @memset(ptr %vendor_frame.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config.i) #10
  %151 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -1, ptr %config.i, align 1, !annotation !212
  %edid.i = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i212, i32 0, i32 9
  %152 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %edid.i, align 4
  %call10.i = call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %153) #10
  br i1 %call10.i, label %if.end.i218, label %if.end34.nv50_hdmi_enable.exit_crit_edge

if.end34.nv50_hdmi_enable.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_hdmi_enable.exit

if.end.i218:                                      ; preds = %if.end34
  %call14.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %avi_frame.i, ptr noundef %retval.0.i212, ptr noundef %adjusted_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i217 = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i217, label %if.then15.i, label %if.end.i218.if.end20.i_crit_edge

if.end.i218.if.end20.i_crit_edge:                 ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_hdmi_avi_infoframe_quant_range(ptr noundef nonnull %avi_frame.i, ptr noundef %retval.0.i212, ptr noundef %adjusted_mode, i32 noundef 2) #10
  %infoframes.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 2
  %call17.i = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %avi_frame.i, ptr noundef %infoframes.i, i32 noundef 17) #10
  %conv18.i = trunc i32 %call17.i to i8
  %avi_infoframe_length.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 4
  %154 = ptrtoint ptr %avi_infoframe_length.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv18.i, ptr %avi_infoframe_length.i, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end.i218.if.end20.i_crit_edge
  %call22.i = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %vendor_frame.i, ptr noundef %retval.0.i212, ptr noundef %adjusted_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end20.i.if.end33.i_crit_edge

if.end20.i.if.end33.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %infoframes25.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 2
  %avi_infoframe_length28.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 4
  %155 = ptrtoint ptr %avi_infoframe_length28.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %avi_infoframe_length28.i, align 2
  %conv29.i = zext i8 %156 to i32
  %add.ptr.i = getelementptr i8, ptr %infoframes25.i, i32 %conv29.i
  %call30.i = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %vendor_frame.i, ptr noundef %add.ptr.i, i32 noundef 17) #10
  %conv31.i = trunc i32 %call30.i to i8
  %vendor_infoframe_length.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 5
  %157 = ptrtoint ptr %vendor_infoframe_length.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv31.i, ptr %vendor_infoframe_length.i, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then24.i, %if.end20.i.if.end33.i_crit_edge
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 4
  %158 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %htotal.i, align 2
  %conv34.i = zext i16 %159 to i32
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7, i32 1
  %160 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %hdisplay.i, align 4
  %conv35.i = zext i16 %161 to i32
  %162 = ptrtoint ptr %rekey.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %rekey.i, align 1
  %conv38.i = zext i8 %163 to i32
  %.neg = add nuw nsw i32 %conv34.i, 8174
  %164 = add nuw nsw i32 %conv35.i, %conv38.i
  %sub40.i = sub nsw i32 %.neg, %164
  %div1.i = lshr i32 %sub40.i, 5
  %conv41.i = trunc i32 %div1.i to i8
  %max_ac_packet43.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 2
  %165 = ptrtoint ptr %max_ac_packet43.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv41.i, ptr %max_ac_packet43.i, align 2
  %scrambling44.i = getelementptr inbounds %struct.drm_connector, ptr %retval.0.i212, i32 0, i32 20, i32 16, i32 0, i32 2
  %166 = ptrtoint ptr %scrambling44.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %scrambling44.i, align 2, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool45.not.i = icmp eq i8 %167, 0
  br i1 %tobool45.not.i, label %if.end33.i.if.end55.i_crit_edge, label %if.then46.i

if.end33.i.if.end55.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then46.i:                                      ; preds = %if.end33.i
  %168 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %169)
  %cmp.i = icmp sgt i32 %169, 340000
  br i1 %cmp.i, label %if.then46.i.if.end55.i_crit_edge, label %lor.rhs.i

if.then46.i.if.end55.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

lor.rhs.i:                                        ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #12
  %low_rates.i = getelementptr inbounds %struct.drm_connector, ptr %retval.0.i212, i32 0, i32 20, i32 16, i32 0, i32 2, i32 1
  %170 = ptrtoint ptr %low_rates.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %low_rates.i, align 1, !range !223
  br label %if.end55.i

if.end55.i:                                       ; preds = %lor.rhs.i, %if.then46.i.if.end55.i_crit_edge, %if.end33.i.if.end55.i_crit_edge
  %high_tmds_clock_ratio.0.off0.i = phi i8 [ 0, %if.end33.i.if.end55.i_crit_edge ], [ 0, %lor.rhs.i ], [ 2, %if.then46.i.if.end55.i_crit_edge ]
  %scrambling.0.off0.i = phi i8 [ 0, %if.end33.i.if.end55.i_crit_edge ], [ %171, %lor.rhs.i ], [ 1, %if.then46.i.if.end55.i_crit_edge ]
  %or61.i = or i8 %scrambling.0.off0.i, %high_tmds_clock_ratio.0.off0.i
  %scdc64.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 6
  %172 = ptrtoint ptr %scdc64.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %or61.i, ptr %scdc64.i, align 2
  %avi_infoframe_length66.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 4
  %173 = ptrtoint ptr %avi_infoframe_length66.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %avi_infoframe_length66.i, align 2
  %conv67.i = zext i8 %174 to i32
  %add.i = add nuw nsw i32 %conv67.i, 16
  %vendor_infoframe_length69.i = getelementptr inbounds %struct.anon.254, ptr %args.i213, i32 0, i32 1, i32 5
  %175 = ptrtoint ptr %vendor_infoframe_length69.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %vendor_infoframe_length69.i, align 1
  %conv70.i = zext i8 %176 to i32
  %add71.i = add nuw nsw i32 %add.i, %conv70.i
  %177 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %130, align 8
  %call73.i = call i32 @nvif_object_mthd(ptr noundef %178, i32 noundef 0, ptr noundef nonnull %args.i213, i32 noundef %add71.i) #10
  call fastcc void @nv50_audio_enable(ptr noundef %encoder, ptr noundef %retval.0.i, ptr noundef %retval.0.i212) #10
  %179 = ptrtoint ptr %scrambling44.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %scrambling44.i, align 2, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool77.not.i = icmp eq i8 %180, 0
  br i1 %tobool77.not.i, label %if.end55.i.nv50_hdmi_enable.exit_crit_edge, label %if.end79.i

if.end55.i.nv50_hdmi_enable.exit_crit_edge:       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_hdmi_enable.exit

if.end79.i:                                       ; preds = %if.end55.i
  %i2c.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 4
  %181 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i2c.i, align 4
  %call.i.i = call i32 @drm_scdc_read(ptr noundef %182, i8 noundef zeroext 32, ptr noundef nonnull %config.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp81.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp81.i, label %do.body.i220, label %if.end91.i

do.body.i220:                                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  %drm85.i = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 1
  %183 = ptrtoint ptr %drm85.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %drm85.i, align 8
  %dev86.i = getelementptr inbounds %struct.nouveau_drm, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %dev86.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev86.i, align 8
  %dev87.i = getelementptr inbounds %struct.drm_device, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev87.i, align 4
  %name.i219 = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.79, ptr noundef %name.i219, i32 noundef %call.i.i) #13
  br label %nv50_hdmi_enable.exit

if.end91.i:                                       ; preds = %if.end79.i
  %189 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %config.i, align 1
  %191 = and i8 %190, -4
  %conv106.i = or i8 %191, %or61.i
  store i8 %conv106.i, ptr %config.i, align 1
  %192 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  %194 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv106.i, ptr %value.addr.i.i, align 1
  %call.i2.i = call i32 @drm_scdc_write(ptr noundef %193, i8 noundef zeroext 32, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp109.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp109.i, label %do.body112.i, label %if.end91.i.nv50_hdmi_enable.exit_crit_edge

if.end91.i.nv50_hdmi_enable.exit_crit_edge:       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_hdmi_enable.exit

do.body112.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  %drm118.i = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 1
  %195 = ptrtoint ptr %drm118.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %drm118.i, align 8
  %dev119.i = getelementptr inbounds %struct.nouveau_drm, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %dev119.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev119.i, align 8
  %dev120.i = getelementptr inbounds %struct.drm_device, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %dev120.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev120.i, align 4
  %name121.i = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 12
  %201 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %config.i, align 1
  %conv123.i = zext i8 %202 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.82, ptr noundef %name121.i, i32 noundef %conv123.i, i32 noundef %call.i2.i) #13
  br label %nv50_hdmi_enable.exit

nv50_hdmi_enable.exit:                            ; preds = %do.body112.i, %if.end91.i.nv50_hdmi_enable.exit_crit_edge, %do.body.i220, %if.end55.i.nv50_hdmi_enable.exit_crit_edge, %if.end34.nv50_hdmi_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %vendor_frame.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %avi_frame.i) #10
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %args.i213) #10
  br label %sw.epilog

sw.bb37:                                          ; preds = %nv50_outp_acquire.exit
  %fp_no_ddc = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 18, i32 9
  %203 = ptrtoint ptr %fp_no_ddc to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %fp_no_ddc, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool38.not = icmp eq i8 %204, 0
  br i1 %tobool38.not, label %if.else54, label %if.then39

if.then39:                                        ; preds = %sw.bb37
  %dual_link = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 18, i32 24, i32 9
  %205 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %dual_link, align 2, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool40.not = icmp eq i8 %206, 0
  br i1 %tobool40.not, label %if.then39.if.end44_crit_edge, label %if.then41

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %207 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %25, align 2
  %209 = or i16 %208, 256
  store i16 %209, ptr %25, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then39.if.end44_crit_edge
  %if_is_24bit = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 18, i32 24, i32 11
  %210 = ptrtoint ptr %if_is_24bit to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %if_is_24bit, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool46.not = icmp eq i8 %211, 0
  br i1 %tobool46.not, label %if.end44.if.end125_crit_edge, label %if.end44.if.end125.sink.split_crit_edge

if.end44.if.end125.sink.split_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.sink.split

if.end44.if.end125_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.else54:                                        ; preds = %sw.bb37
  %type55 = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i212, i32 0, i32 1
  %212 = ptrtoint ptr %type55 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %type55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %213)
  %cmp56 = icmp eq i32 %213, 65
  br i1 %cmp56, label %if.then58, label %if.else70

if.then58:                                        ; preds = %if.else54
  %edid59 = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i212, i32 0, i32 9
  %214 = ptrtoint ptr %edid59 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %edid59, align 4
  %arrayidx = getelementptr i8, ptr %215, i32 121
  %216 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %217)
  %cmp61 = icmp eq i8 %217, 2
  br i1 %cmp61, label %if.then58.if.end82.sink.split_crit_edge, label %if.then58.if.end82_crit_edge

if.then58.if.end82_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then58.if.end82.sink.split_crit_edge:          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.sink.split

if.else70:                                        ; preds = %if.else54
  %218 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %adjusted_mode, align 4
  %duallink_transition_clk = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 18, i32 24, i32 12
  %220 = ptrtoint ptr %duallink_transition_clk to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %duallink_transition_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %221)
  %cmp73.not = icmp slt i32 %219, %221
  br i1 %cmp73.not, label %if.else70.if.end82_crit_edge, label %if.else70.if.end82.sink.split_crit_edge

if.else70.if.end82.sink.split_crit_edge:          ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.sink.split

if.else70.if.end82_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end82.sink.split:                              ; preds = %if.else70.if.end82.sink.split_crit_edge, %if.then58.if.end82.sink.split_crit_edge
  %222 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %25, align 2
  %224 = or i16 %223, 256
  store i16 %224, ptr %25, align 2
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %if.else70.if.end82_crit_edge, %if.then58.if.end82_crit_edge
  %225 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %25, align 2
  %227 = and i16 %226, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %227)
  %tobool87.not = icmp eq i16 %227, 0
  %strapless_is_24bit102 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 18, i32 24, i32 13
  %228 = ptrtoint ptr %strapless_is_24bit102 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %strapless_is_24bit102, align 4
  br i1 %tobool87.not, label %if.else100, label %if.then88

if.then88:                                        ; preds = %if.end82
  %230 = and i8 %229, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool92.not = icmp eq i8 %230, 0
  br i1 %tobool92.not, label %if.then88.if.end113_crit_edge, label %if.then88.if.end113.sink.split_crit_edge

if.then88.if.end113.sink.split_crit_edge:         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

if.then88.if.end113_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.else100:                                       ; preds = %if.end82
  %231 = and i8 %229, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool105.not = icmp eq i8 %231, 0
  br i1 %tobool105.not, label %if.else100.if.end113_crit_edge, label %if.else100.if.end113.sink.split_crit_edge

if.else100.if.end113.sink.split_crit_edge:        ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

if.else100.if.end113_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.end113.sink.split:                             ; preds = %if.else100.if.end113.sink.split_crit_edge, %if.then88.if.end113.sink.split_crit_edge
  %or110 = or i16 %226, 512
  %232 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %or110, ptr %25, align 2
  br label %if.end113

if.end113:                                        ; preds = %if.end113.sink.split, %if.else100.if.end113_crit_edge, %if.then88.if.end113_crit_edge
  %bpc = getelementptr inbounds %struct.nv50_head_atom, ptr %19, i32 0, i32 11, i32 1
  %233 = ptrtoint ptr %bpc to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bpc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %234)
  %cmp116 = icmp eq i8 %234, 8
  br i1 %cmp116, label %if.end113.if.end125.sink.split_crit_edge, label %if.end113.if.end125_crit_edge

if.end113.if.end125_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.end113.if.end125.sink.split_crit_edge:         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.sink.split

if.end125.sink.split:                             ; preds = %if.end113.if.end125.sink.split_crit_edge, %if.end44.if.end125.sink.split_crit_edge
  %235 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %25, align 2
  %237 = or i16 %236, 512
  store i16 %237, ptr %25, align 2
  br label %if.end125

if.end125:                                        ; preds = %if.end125.sink.split, %if.end113.if.end125_crit_edge, %if.end44.if.end125_crit_edge
  %238 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %45, align 8
  %call128 = call i32 @nvif_object_mthd(ptr noundef %239, i32 noundef 0, ptr noundef nonnull %lvds, i32 noundef 16) #10
  br label %sw.epilog

sw.bb129:                                         ; preds = %nv50_outp_acquire.exit
  %bpc131 = getelementptr inbounds %struct.nv50_head_atom, ptr %19, i32 0, i32 11, i32 1
  %240 = ptrtoint ptr %bpc131 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %bpc131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %241)
  %switch.selectcmp.i = icmp eq i8 %241, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i8 5, i8 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %241)
  %switch.selectcmp3.i = icmp eq i8 %241, 6
  %switch.select4.i = select i1 %switch.selectcmp3.i, i8 2, i8 %switch.select.i
  %link134 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %242 = ptrtoint ptr %link134 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %link134, align 4
  %and135 = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %. = select i1 %tobool136.not, i8 9, i8 8
  call fastcc void @nv50_audio_enable(ptr noundef %encoder, ptr noundef %retval.0.i, ptr noundef %retval.0.i212)
  %backlight140 = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i212, i32 0, i32 11
  %244 = ptrtoint ptr %backlight140 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %backlight140, align 4
  %tobool141.not = icmp eq ptr %245, null
  br i1 %tobool141.not, label %sw.bb129.sw.epilog_crit_edge, label %land.lhs.true142

sw.bb129.sw.epilog_crit_edge:                     ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true142:                                 ; preds = %sw.bb129
  %uses_dpcd = getelementptr inbounds %struct.nouveau_backlight, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %uses_dpcd to i32
  call void @__asan_load1_noabort(i32 %246)
  %bf.load = load i8, ptr %uses_dpcd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.lhs.true142.sw.epilog_crit_edge, label %if.then144

land.lhs.true142.sw.epilog_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #12
  %aux = getelementptr inbounds %struct.nouveau_connector, ptr %retval.0.i212, i32 0, i32 5
  %edp_info = getelementptr inbounds %struct.nouveau_backlight, ptr %245, i32 0, i32 1
  %247 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %245, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %248, align 8
  %conv146 = trunc i32 %250 to i16
  %call147 = call i32 @drm_edp_backlight_enable(ptr noundef %aux, ptr noundef %edp_info, i16 noundef zeroext %conv146) #10
  br label %sw.epilog

do.body:                                          ; preds = %nv50_outp_acquire.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/dispnv50/disp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1807, 0\0A.popsection", ""() #10, !srcloc !236
  unreachable

sw.epilog:                                        ; preds = %if.then144, %land.lhs.true142.sw.epilog_crit_edge, %sw.bb129.sw.epilog_crit_edge, %if.end125, %nv50_hdmi_enable.exit
  %proto.2 = phi i8 [ %., %if.then144 ], [ %., %land.lhs.true142.sw.epilog_crit_edge ], [ %., %sw.bb129.sw.epilog_crit_edge ], [ 0, %if.end125 ], [ %proto.0, %nv50_hdmi_enable.exit ]
  %depth.0 = phi i8 [ %switch.select4.i, %if.then144 ], [ %switch.select4.i, %land.lhs.true142.sw.epilog_crit_edge ], [ %switch.select4.i, %sw.bb129.sw.epilog_crit_edge ], [ 0, %if.end125 ], [ 0, %nv50_hdmi_enable.exit ]
  %update = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 16
  %251 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %update, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %retval.0.i, i32 0, i32 1
  %253 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %index, align 8
  %conv152 = trunc i32 %254 to i8
  call void %252(ptr noundef %encoder, i8 noundef zeroext %conv152, ptr noundef %19, i8 noundef zeroext %proto.2, i8 noundef zeroext %depth.0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lvds) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_outp_atomic_check(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr nocapture noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  %native_mode = getelementptr inbounds %struct.nouveau_connector, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %native_mode, align 8
  tail call fastcc void @nv50_outp_atomic_check_view(ptr noundef %encoder, ptr noundef %crtc_state, ptr noundef %conn_state, ptr noundef %3)
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %4 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %mode_changed, align 2
  %5 = and i8 %bf.load, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %entry.cleanup_crit_edge, label %if.then7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  %7 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpc, align 8
  %conv = trunc i32 %8 to i8
  %bpc8 = getelementptr inbounds %struct.nv50_head_atom, ptr %crtc_state, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %bpc8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %bpc8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_audio_enable(ptr nocapture noundef %encoder, ptr nocapture noundef readonly %nv_crtc, ptr noundef %nv_connector) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.anon.258, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
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
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %args) #10
  %8 = getelementptr inbounds i8, ptr %args, i32 6
  %9 = call ptr @memset(ptr %8, i32 0, i32 10)
  %10 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %args, align 1
  %method = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args, i32 0, i32 1
  %11 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %method, align 1
  %hasht = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args, i32 0, i32 2
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %12 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dcb, align 4
  %hasht4 = getelementptr inbounds %struct.dcb_output, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %hasht4 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hasht4, align 4
  %16 = ptrtoint ptr %hasht to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %hasht, align 1
  %hashm = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args, i32 0, i32 3
  %hashm6 = getelementptr inbounds %struct.dcb_output, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %hashm6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hashm6, align 2
  %19 = and i16 %18, -3841
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %nv_crtc, i32 0, i32 1
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 8
  %shl = shl i32 256, %21
  %22 = trunc i32 %shl to i16
  %conv7 = or i16 %19, %22
  %23 = ptrtoint ptr %hashm to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %conv7, ptr %hashm, align 1
  %edid = getelementptr inbounds %struct.nouveau_connector, ptr %nv_connector, i32 0, i32 9
  %24 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edid, align 4
  %call8 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %25) #10
  br i1 %call8, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %audio = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 31
  %lock = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 31, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %data = getelementptr inbounds %struct.anon.258, ptr %args, i32 0, i32 1
  %eld = getelementptr inbounds %struct.drm_connector, ptr %nv_connector, i32 0, i32 42
  %26 = call ptr @memcpy(ptr %data, ptr %eld, i32 128)
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 8
  %arrayidx.i = getelementptr inbounds %struct.anon.258, ptr %args, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %30 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add = add nuw nsw i32 %mul.i, 20
  %call15 = call i32 @nvif_object_mthd(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %args, i32 noundef %add) #10
  %audio16 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 8
  %31 = ptrtoint ptr %audio16 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %audio16, align 4
  %connector = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %nv_connector, ptr %connector, align 4
  call void @mutex_unlock(ptr noundef %lock) #10
  %33 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %audio, align 8
  %or22 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %35 = ptrtoint ptr %or22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %or22, align 4
  %37 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %audio_ops.i = getelementptr inbounds %struct.drm_audio_component, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %audio_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %audio_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %40, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %pin_eld_notify.i = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pin_eld_notify.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pin_eld_notify.i, align 4
  %tobool4.not.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.cleanup_crit_edge, label %if.then.i

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  call void %42(ptr noundef %44, i32 noundef %36, i32 noundef %38) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %args) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_enable(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_quant_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_scdc_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_scdc_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_mstm_add_connector(ptr noundef %mgr, ptr noundef %port, ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mgr, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1056) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %call7.i.i.i, align 8
  %port4.i = getelementptr inbounds %struct.nv50_mstc, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %port4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %port, ptr %port4.i, align 4
  %connector.i = getelementptr inbounds %struct.nv50_mstc, ptr %call7.i.i.i, i32 0, i32 2
  %call5.i = tail call i32 @drm_connector_init(ptr noundef %3, ptr noundef %connector.i, ptr noundef nonnull @nv50_mstc, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %helper_private.i.i = getelementptr inbounds %struct.nv50_mstc, ptr %call7.i.i.i, i32 0, i32 2, i32 35
  %7 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nv50_mstc_help, ptr %helper_private.i.i, align 4
  %funcs.i = getelementptr inbounds %struct.nv50_mstc, ptr %call7.i.i.i, i32 0, i32 2, i32 21
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 8
  %reset.i = getelementptr inbounds %struct.drm_connector_funcs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset.i, align 4
  tail call void %11(ptr noundef %connector.i) #10
  tail call void @nouveau_conn_attach_properties(ptr noundef %connector.i) #10
  %crtc_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %12 = ptrtoint ptr %crtc_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn64.i = load ptr, ptr %crtc_list.i, align 4
  %cmp.not65.i = icmp eq ptr %.pn64.i, %crtc_list.i
  br i1 %cmp.not65.i, label %if.end8.i.if.end_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %.pn66.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn64.i, %if.end8.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dcb.i, align 4
  %heads.i = getelementptr inbounds %struct.dcb_output, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %heads.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %heads.i, align 1
  %conv.i = zext i8 %18 to i32
  %index.i.i.i = getelementptr i8, ptr %.pn66.i, i32 148
  %19 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %20
  %and.i = and i32 %shl.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end19.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end19.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %msto.i = getelementptr i8, ptr %.pn66.i, i32 1608
  %21 = ptrtoint ptr %msto.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msto.i, align 8
  %call24.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector.i, ptr noundef %22) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end19.i, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn66.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn66.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end8.i.if.end_crit_edge
  %base31.i = getelementptr inbounds %struct.nv50_mstc, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %path_property.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 37
  %24 = ptrtoint ptr %path_property.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base31.i, ptr noundef %25, i64 noundef 0) #10
  %tile_property.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 38
  %26 = ptrtoint ptr %tile_property.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tile_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base31.i, ptr noundef %27, i64 noundef 0) #10
  %call37.i = tail call i32 @drm_connector_set_path_property(ptr noundef %connector.i, ptr noundef %path) #10
  tail call void @drm_dp_mst_get_port_malloc(ptr noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %connector.i, %if.end ], [ null, %if.then7.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_conn_attach_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_path_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_get_port_malloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_conn_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_mstc_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  tail call void @drm_connector_cleanup(ptr noundef %connector) #10
  %port = getelementptr i8, ptr %connector, i32 -4
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call void @drm_dp_mst_put_port_malloc(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_conn_atomic_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_conn_atomic_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_conn_atomic_set_property(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_conn_atomic_get_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_put_port_malloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_mstc_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %connector, i32 -4
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %mgr = getelementptr inbounds %struct.drm_dp_mst_port, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 8
  %call = tail call ptr @drm_dp_mst_get_edid(ptr noundef %connector, ptr noundef %3, ptr noundef %1) #10
  %edid = getelementptr i8, ptr %connector, i32 1044
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %edid, align 4
  %call5 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call) #10
  %5 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edid, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %6) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %7 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 6)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 8)
  %storemerge = select i1 %tobool10.not, i32 8, i32 %10
  %11 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %bpc, align 8
  %native = getelementptr i8, ptr %connector, i32 1040
  %12 = ptrtoint ptr %native to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %native, align 8
  %tobool26.not = icmp eq ptr %13, null
  br i1 %tobool26.not, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %connector, align 8
  tail call void @drm_mode_destroy(ptr noundef %15, ptr noundef nonnull %13) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge
  %call32 = tail call ptr @nouveau_conn_native_mode(ptr noundef %connector) #10
  %16 = ptrtoint ptr %native to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32, ptr %native, align 8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_mstc_detect(ptr noundef %connector, ptr noundef %ctx, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %registration_state.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 16
  %0 = ptrtoint ptr %registration_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %registration_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %if.end8, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr i8, ptr %connector, i32 -4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %mgr = getelementptr inbounds %struct.drm_dp_mst_port, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mgr, align 8
  %call10 = tail call i32 @drm_dp_mst_detect_port(ptr noundef %connector, ptr noundef %ctx, ptr noundef %9, ptr noundef %7) #10
  %10 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connector, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 4
  %call.i30 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i30, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call10, %if.end8 ], [ 2, %if.end.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connector, align 8
  %dev17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17, align 4
  %call.i31 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_mstc_mode_valid(ptr noundef %connector, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @nv50_dp_mode_valid(ptr noundef %connector, ptr noundef %3, ptr noundef %mode, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nv50_mstc_atomic_best_encoder(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  %crtc1 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc1, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcb, align 4
  %heads = getelementptr inbounds %struct.dcb_output, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %heads, align 1
  %conv = zext i8 %17 to i32
  %index.i.i10 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %index.i.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i10, align 4
  %shl.i = shl nuw i32 1, %19
  %and = and i32 %shl.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge, label %if.end

drm_atomic_get_new_connector_state.exit.cleanup_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %msto = getelementptr i8, ptr %9, i32 1616
  %20 = ptrtoint ptr %msto to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msto, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.end ], [ null, %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_mstc_atomic_check(ptr nocapture noundef readonly %connector, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %mgr1 = getelementptr inbounds %struct.nv50_mstm, ptr %1, i32 0, i32 1
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %4 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp slt i32 %3, %5
  br i1 %cmp.not.i, label %if.end.i33, label %entry.drm_atomic_get_old_connector_state.exit_crit_edge

entry.drm_atomic_get_old_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_atomic_get_old_connector_state.exit

if.end.i33:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %6 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %7, i32 %3, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %old_state.i = getelementptr %struct.__drm_connnectors_state, ptr %7, i32 %3, i32 2
  %10 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state.i, align 4
  br label %drm_atomic_get_old_connector_state.exit

drm_atomic_get_old_connector_state.exit:          ; preds = %if.end.i33, %entry.drm_atomic_get_old_connector_state.exit_crit_edge
  %retval.0.i38 = phi ptr [ %9, %if.end.i33 ], [ null, %entry.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %retval.0.i34 = phi ptr [ %11, %if.end.i33 ], [ null, %entry.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i38, i32 0, i32 1
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 4
  %crtc3 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i34, i32 0, i32 1
  %14 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc3, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %drm_atomic_get_old_connector_state.exit.cleanup_crit_edge, label %if.end

drm_atomic_get_old_connector_state.exit.cleanup_crit_edge: ; preds = %drm_atomic_get_old_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %drm_atomic_get_old_connector_state.exit
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs.i, align 4
  %index.i.i35 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %index.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i35, align 4
  %new_state.i36 = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %19, i32 3
  %20 = ptrtoint ptr %new_state.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_state.i36, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %lor.lhs.false

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then5
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %23 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %.not = icmp eq i8 %23, 0
  br i1 %.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not = icmp eq i8 %25, 0
  br i1 %tobool10.not, label %lor.lhs.false9.if.end13_crit_edge, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false9.if.end13_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %lor.lhs.false9.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %port = getelementptr i8, ptr %connector, i32 -4
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %call14 = tail call i32 @drm_dp_atomic_release_vcpi_slots(ptr noundef %state, ptr noundef %mgr1, ptr noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %drm_atomic_get_old_connector_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ 0, %drm_atomic_get_old_connector_state.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false9.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dp_mst_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_conn_native_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_detect_port(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dp_mode_valid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_atomic_release_vcpi_slots(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_dac_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #10
  tail call void @kfree(ptr noundef %encoder) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_dac_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %connector) #0 align 64 {
entry:
  %args = alloca %struct.anon.261, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #10
  %8 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args, i32 0, i32 3
  %11 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args, i32 0, i32 4
  %12 = getelementptr inbounds %struct.anon.261, ptr %args, i32 0, i32 1
  %13 = getelementptr inbounds %struct.anon.261, ptr %args, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %args, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 17, ptr %8, align 1
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %16 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dcb, align 4
  %hasht2 = getelementptr inbounds %struct.dcb_output, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %hasht2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hasht2, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %9, align 2
  %hashm4 = getelementptr inbounds %struct.dcb_output, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %hashm4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hashm4, align 2
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %10, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %11, align 2
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %12, align 4
  %dactestval = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 6
  %26 = ptrtoint ptr %dactestval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dactestval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  %spec.select = select i1 %cmp, i32 340, i32 %27
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select, ptr %13, align 4
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 8
  %call13 = call i32 @nvif_object_mthd(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %args, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %31 = getelementptr inbounds %struct.anon.261, ptr %args, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool16.not = icmp eq i8 %33, 0
  %spec.select25 = select i1 %tobool16.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %spec.select25, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_dac_atomic_disable(ptr nocapture noundef %encoder, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %args.i = alloca %struct.anon.248, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
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
  %core2 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core2, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dac = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dac, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %or = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %16 = ptrtoint ptr %or to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %or, align 4
  %call4 = tail call i32 %15(ptr noundef %9, i32 noundef %17, i32 noundef 0, ptr noundef null) #10
  %crtc = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 6
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %crtc, align 4
  %19 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %display.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i) #10
  %27 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %args.i, align 2
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %27, align 1
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %33 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dcb.i, align 4
  %hasht3.i = getelementptr inbounds %struct.dcb_output, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %hasht3.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hasht3.i, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %28, align 2
  %hashm5.i = getelementptr inbounds %struct.dcb_output, ptr %34, i32 0, i32 2
  %38 = ptrtoint ptr %hashm5.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hashm5.i, align 2
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %29, align 2
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %30, align 2
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %26, align 8
  %call7.i = call i32 @nvif_object_mthd(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 8) #10
  %44 = ptrtoint ptr %or to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %or, align 4
  %link.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %45 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %link.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_dac_atomic_enable(ptr nocapture noundef %encoder, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %args.i = alloca %struct.anon.249, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 5
  %0 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %1
  %dev.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.i = icmp sgt i32 %5, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %entry.nv50_outp_get_new_crtc.exit_crit_edge

entry.nv50_outp_get_new_crtc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.024.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.024.i, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_mask.i, align 4
  %and.i = and i32 %13, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge

land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

nv50_outp_get_new_crtc.exit:                      ; preds = %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge, %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge, %entry.nv50_outp_get_new_crtc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.nv50_outp_get_new_crtc.exit_crit_edge ], [ null, %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge ], [ %9, %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge ]
  %crtcs.i57 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %crtcs.i57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtcs.i57, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %retval.0.i, i32 0, i32 8
  %16 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i, align 4
  %new_state.i58 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %17, i32 3
  %18 = ptrtoint ptr %new_state.i58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_state.i58, align 4
  %20 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %display.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %core4 = getelementptr inbounds %struct.nv50_disp, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %core4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core4, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %retval.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %switch.lookup, label %do.end

do.end:                                           ; preds = %nv50_outp_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 514, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %nv50_outp_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nv50_dac_atomic_enable, i32 0, i32 %31
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %ctrl.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  %34 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_private.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2.i, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %display.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #10
  %46 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %47 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %48 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %49 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %50 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %args.i, align 2
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %46, align 1
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %52 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dcb.i, align 4
  %hasht5.i = getelementptr inbounds %struct.dcb_output, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %hasht5.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hasht5.i, align 4
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %47, align 2
  %hashm7.i = getelementptr inbounds %struct.dcb_output, ptr %53, i32 0, i32 2
  %57 = ptrtoint ptr %hashm7.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hashm7.i, align 2
  %59 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %48, align 2
  %60 = call ptr @memset(ptr %49, i32 0, i32 10)
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %45, align 8
  %call11.i = call i32 @nvif_object_mthd(ptr noundef %62, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %drm14.i = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %drm14.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drm14.i, align 8
  %dev15.i = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev15.i, align 8
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev16.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.71, ptr noundef %name.i, i32 noundef %call11.i) #13
  br label %nv50_outp_acquire.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %69 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 2
  %70 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv21.i = zext i8 %72 to i32
  %or22.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %73 = ptrtoint ptr %or22.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv21.i, ptr %or22.i, align 4
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %69, align 2
  %conv25.i = zext i8 %75 to i32
  %link26.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %76 = ptrtoint ptr %link26.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv25.i, ptr %link26.i, align 4
  br label %nv50_outp_acquire.exit

nv50_outp_acquire.exit:                           ; preds = %if.end.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #10
  %77 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %29, align 8
  %dac = getelementptr inbounds %struct.nv50_core_func, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dac, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %or38 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %83 = ptrtoint ptr %or38 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %or38, align 4
  %call39 = call i32 %82(ptr noundef %29, i32 noundef %84, i32 noundef %ctrl.0, ptr noundef %19) #10
  %or40 = getelementptr inbounds %struct.nv50_head_atom, ptr %19, i32 0, i32 11
  %85 = ptrtoint ptr %or40 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load = load i8, ptr %or40, align 8
  %bf.clear = and i8 %bf.load, -61
  store i8 %bf.clear, ptr %or40, align 8
  %crtc = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 6
  %86 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %retval.0.i, ptr %crtc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_pior_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #10
  tail call void @kfree(ptr noundef %encoder) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_pior_atomic_disable(ptr nocapture noundef %encoder, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %args.i = alloca %struct.anon.248, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
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
  %core2 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core2, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %pior = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %pior to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pior, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %or = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %16 = ptrtoint ptr %or to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %or, align 4
  %call4 = tail call i32 %15(ptr noundef %9, i32 noundef %17, i32 noundef 0, ptr noundef null) #10
  %crtc = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 6
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %crtc, align 4
  %19 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %display.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i) #10
  %27 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %args.i, align 2
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %27, align 1
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %33 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dcb.i, align 4
  %hasht3.i = getelementptr inbounds %struct.dcb_output, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %hasht3.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hasht3.i, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %28, align 2
  %hashm5.i = getelementptr inbounds %struct.dcb_output, ptr %34, i32 0, i32 2
  %38 = ptrtoint ptr %hashm5.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hashm5.i, align 2
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %29, align 2
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %30, align 2
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %26, align 8
  %call7.i = call i32 @nvif_object_mthd(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 8) #10
  %44 = ptrtoint ptr %or to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %or, align 4
  %link.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %45 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %link.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_pior_atomic_enable(ptr nocapture noundef %encoder, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %args.i = alloca %struct.anon.249, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 5
  %0 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %1
  %dev.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.i = icmp sgt i32 %5, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %entry.nv50_outp_get_new_crtc.exit_crit_edge

entry.nv50_outp_get_new_crtc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.024.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.024.i, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_mask.i, align 4
  %and.i = and i32 %13, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge

land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_get_new_crtc.exit

nv50_outp_get_new_crtc.exit:                      ; preds = %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge, %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge, %entry.nv50_outp_get_new_crtc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.nv50_outp_get_new_crtc.exit_crit_edge ], [ null, %for.inc.i.nv50_outp_get_new_crtc.exit_crit_edge ], [ %9, %land.lhs.true.i.nv50_outp_get_new_crtc.exit_crit_edge ]
  %crtcs.i80 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %crtcs.i80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtcs.i80, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %retval.0.i, i32 0, i32 8
  %16 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i, align 4
  %new_state.i81 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %17, i32 3
  %18 = ptrtoint ptr %new_state.i81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_state.i81, align 4
  %20 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %display.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %core4 = getelementptr inbounds %struct.nv50_disp, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %core4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core4, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %retval.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %31, label %do.end [
    i32 0, label %nv50_outp_get_new_crtc.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb6
  ]

nv50_outp_get_new_crtc.exit.sw.epilog_crit_edge:  ; preds = %nv50_outp_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %nv50_outp_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %nv50_outp_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1965, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb6, %nv50_outp_get_new_crtc.exit.sw.epilog_crit_edge
  %ctrl.0 = phi i32 [ 0, %do.end ], [ 2, %sw.bb6 ], [ 1, %nv50_outp_get_new_crtc.exit.sw.epilog_crit_edge ]
  %33 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev2.i, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %display.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #10
  %45 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 1
  %46 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 2
  %47 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 3
  %48 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %args.i, i32 0, i32 4
  %49 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %args.i, align 2
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %45, align 1
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %51 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dcb.i, align 4
  %hasht5.i = getelementptr inbounds %struct.dcb_output, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %hasht5.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %hasht5.i, align 4
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %46, align 2
  %hashm7.i = getelementptr inbounds %struct.dcb_output, ptr %52, i32 0, i32 2
  %56 = ptrtoint ptr %hashm7.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hashm7.i, align 2
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %47, align 2
  %59 = call ptr @memset(ptr %48, i32 0, i32 10)
  %60 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %44, align 8
  %call11.i = call i32 @nvif_object_mthd(ptr noundef %61, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %drm14.i = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %drm14.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %drm14.i, align 8
  %dev15.i = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev15.i, align 8
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev16.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.71, ptr noundef %name.i, i32 noundef %call11.i) #13
  br label %nv50_outp_acquire.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %68 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 2
  %69 = getelementptr inbounds %struct.anon.249, ptr %args.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv21.i = zext i8 %71 to i32
  %or22.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %72 = ptrtoint ptr %or22.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv21.i, ptr %or22.i, align 4
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %68, align 2
  %conv25.i = zext i8 %74 to i32
  %link26.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 3
  %75 = ptrtoint ptr %link26.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv25.i, ptr %link26.i, align 4
  br label %nv50_outp_acquire.exit

nv50_outp_acquire.exit:                           ; preds = %if.end.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #10
  %or26 = getelementptr inbounds %struct.nv50_head_atom, ptr %19, i32 0, i32 11
  %bpc = getelementptr inbounds %struct.nv50_head_atom, ptr %19, i32 0, i32 11, i32 1
  %76 = ptrtoint ptr %bpc to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bpc, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %77, label %sw.default40 [
    i8 10, label %sw.bb28
    i8 8, label %sw.bb30
    i8 6, label %sw.bb35
  ]

sw.bb28:                                          ; preds = %nv50_outp_acquire.exit
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %or26 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %or26, align 8
  %bf.clear = and i8 %bf.load, -61
  %bf.set = or i8 %bf.clear, 24
  br label %sw.epilog45

sw.bb30:                                          ; preds = %nv50_outp_acquire.exit
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %or26 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load32 = load i8, ptr %or26, align 8
  %bf.clear33 = and i8 %bf.load32, -61
  %bf.set34 = or i8 %bf.clear33, 20
  br label %sw.epilog45

sw.bb35:                                          ; preds = %nv50_outp_acquire.exit
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %or26 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load37 = load i8, ptr %or26, align 8
  %bf.clear38 = and i8 %bf.load37, -61
  %bf.set39 = or i8 %bf.clear38, 8
  br label %sw.epilog45

sw.default40:                                     ; preds = %nv50_outp_acquire.exit
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %or26 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load42 = load i8, ptr %or26, align 8
  %bf.clear43 = and i8 %bf.load42, -61
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %sw.default40, %sw.bb35, %sw.bb30, %sw.bb28
  %bf.clear43.sink = phi i8 [ %bf.clear43, %sw.default40 ], [ %bf.set39, %sw.bb35 ], [ %bf.set34, %sw.bb30 ], [ %bf.set, %sw.bb28 ]
  %83 = ptrtoint ptr %or26 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %bf.clear43.sink, ptr %or26, align 8
  %84 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dcb.i, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %87, label %do.body51 [
    i32 2, label %sw.epilog45.sw.bb46_crit_edge
    i32 6, label %sw.epilog45.sw.bb46_crit_edge82
  ]

sw.epilog45.sw.bb46_crit_edge82:                  ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog45.sw.bb46_crit_edge:                    ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.epilog45.sw.bb46_crit_edge, %sw.epilog45.sw.bb46_crit_edge82
  %89 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %29, align 8
  %pior = getelementptr inbounds %struct.nv50_core_func, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %pior to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pior, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %or59 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 2
  %95 = ptrtoint ptr %or59 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %or59, align 4
  %call60 = call i32 %94(ptr noundef %29, i32 noundef %96, i32 noundef %ctrl.0, ptr noundef %19) #10
  %crtc = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 6
  %97 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %retval.0.i, ptr %crtc, align 4
  ret void

do.body51:                                        ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/dispnv50/disp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #10, !srcloc !237
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_pior_atomic_check(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr nocapture noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  %native_mode.i = getelementptr inbounds %struct.nouveau_connector, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %native_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %native_mode.i, align 8
  tail call fastcc void @nv50_outp_atomic_check_view(ptr noundef %encoder, ptr noundef %crtc_state, ptr noundef %conn_state, ptr noundef %3) #10
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %4 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %5 = and i8 %bf.load.i, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %entry.nv50_outp_atomic_check.exit_crit_edge, label %if.then7.i

entry.nv50_outp_atomic_check.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv50_outp_atomic_check.exit

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bpc.i = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  %7 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpc.i, align 8
  %conv.i = trunc i32 %8 to i8
  %bpc8.i = getelementptr inbounds %struct.nv50_head_atom, ptr %crtc_state, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %bpc8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %bpc8.i, align 1
  br label %nv50_outp_atomic_check.exit

nv50_outp_atomic_check.exit:                      ; preds = %if.then7.i, %entry.nv50_outp_atomic_check.exit_crit_edge
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %10 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adjusted_mode, align 4
  %mul = shl i32 %11, 1
  store i32 %mul, ptr %adjusted_mode, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !42, !44, !45, !46, !47, !48, !50, !52, !54, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !158, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__UNIQUE_ID_kms_vram_pushbuf323, !1, !"__UNIQUE_ID_kms_vram_pushbuf323", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 224, i32 1}
!2 = !{ptr @__param_kms_vram_pushbuf, !3, !"__param_kms_vram_pushbuf", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 226, i32 1}
!4 = !{ptr @__UNIQUE_ID_kms_vram_pushbuftype324, !3, !"__UNIQUE_ID_kms_vram_pushbuftype324", i1 false, i1 false}
!5 = !{ptr @nv50_dmac_create.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 238, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 253, i32 37}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 283, i32 43}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 295, i32 43}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1486, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nv50_mstm_service._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @nv50_mstm_service._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @nv50_display_create.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2708, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2845, i32 4}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nv50_display_create._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @nv50_display_create._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2857, i32 3}
!33 = !{ptr @nv50_display_create._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nv50_display_create._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @disp50xx_modifiers, !36, !"disp50xx_modifiers", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2883, i32 11}
!37 = !{ptr @disp90xx_modifiers, !38, !"disp90xx_modifiers", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2912, i32 11}
!39 = !{ptr @__param_str_kms_vram_pushbuf, !3, !"__param_str_kms_vram_pushbuf", i1 false, i1 false}
!40 = !{ptr @nv50_dmac_vram_pushbuf, !41, !"nv50_dmac_vram_pushbuf", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 225, i32 12}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 184, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__func__.nv50_dmac_wind, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 93, i32 34}
!50 = !{ptr @nv50_audio_component_bind_ops, !51, !"nv50_audio_component_bind_ops", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 697, i32 35}
!52 = !{ptr @nv50_audio_component_ops, !53, !"nv50_audio_component_ops", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 659, i32 45}
!54 = !{ptr @nv50_disp_func, !55, !"nv50_disp_func", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2607, i32 1}
!56 = !{ptr @nv50_disp_atomic_commit.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2394, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2133, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @nv50_disp_atomic_commit_tail._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2148, i32 3}
!66 = !{ptr @nv50_disp_atomic_commit_tail._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2167, i32 3}
!70 = !{ptr @nv50_disp_atomic_commit_tail._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @nv50_disp_atomic_commit_tail._entry.32, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2183, i32 3}
!74 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2222, i32 3}
!77 = !{ptr @nv50_disp_atomic_commit_tail._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2239, i32 3}
!81 = !{ptr @nv50_disp_atomic_commit_tail._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @nv50_disp_atomic_commit_tail._entry.40, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2290, i32 3}
!85 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @nv50_disp_atomic_commit_tail._entry.42, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2304, i32 3}
!88 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2335, i32 4}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @nv50_disp_atomic_commit_tail._entry.44, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @nv50_disp_atomic_commit_tail._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2075, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nv50_disp_atomic_commit_core._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @nv50_disp_atomic_commit_core._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2089, i32 3}
!101 = !{ptr @nv50_disp_atomic_commit_core._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @nv50_disp_atomic_commit_core._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1417, i32 2}
!105 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nv50_mstm_prepare._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nv50_mstm_prepare._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1019, i32 2}
!110 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nv50_msto_prepare._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @nv50_msto_prepare._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1030, i32 2}
!115 = !{ptr @nv50_msto_prepare._entry.57, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @nv50_msto_prepare._entry_ptr.59, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 965, i32 2}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nv50_msto_payload._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @nv50_msto_payload._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 968, i32 3}
!124 = !{ptr @nv50_msto_payload._entry.62, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @nv50_msto_payload._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1394, i32 2}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @nv50_mstm_cleanup._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @nv50_mstm_cleanup._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 992, i32 2}
!133 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @nv50_msto_cleanup._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @nv50_msto_cleanup._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1187, i32 35}
!138 = !{ptr @nv50_msto, !139, !"nv50_msto", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1172, i32 1}
!140 = !{ptr @nv50_msto_help, !141, !"nv50_msto_help", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1157, i32 1}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1123, i32 3}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 358, i32 3}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @nv50_outp_acquire._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @nv50_outp_acquire._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 379, i32 2}
!151 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @nv50_outp_atomic_check_view._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @nv50_outp_atomic_check_view._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1879, i32 5}
!156 = !{ptr @nv50_sor_create.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1891, i32 3}
!158 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @nv50_sor_func, !160, !"nv50_sor_func", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1835, i32 1}
!161 = !{ptr @nv50_sor_help, !162, !"nv50_sor_help", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1815, i32 1}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1677, i32 4}
!165 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @nv50_sor_atomic_disable._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @nv50_sor_atomic_disable._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 905, i32 3}
!170 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @nv50_hdmi_enable._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @nv50_hdmi_enable._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 913, i32 3}
!175 = !{ptr @nv50_hdmi_enable._entry.81, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @nv50_hdmi_enable._entry_ptr.83, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 317, i32 2}
!179 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @nv50_outp_dump_caps._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @nv50_outp_dump_caps._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @nv50_mstm, !183, !"nv50_mstm", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1452, i32 1}
!184 = !{ptr @nv50_mstc, !185, !"nv50_mstc", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1336, i32 1}
!186 = !{ptr @nv50_mstc_help, !187, !"nv50_mstc_help", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1316, i32 1}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 598, i32 5}
!190 = !{ptr @nv50_dac_func, !191, !"nv50_dac_func", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 571, i32 1}
!192 = !{ptr @nv50_dac_help, !193, !"nv50_dac_help", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 556, i32 1}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2051, i32 5}
!196 = !{ptr @nv50_pior_func, !197, !"nv50_pior_func", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 2007, i32 1}
!198 = !{ptr @nv50_pior_help, !199, !"nv50_pior_help", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 1993, i32 1}
!200 = !{ptr @nv50_audio_component_init.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/nouveau/dispnv50/disp.c", i32 709, i32 2}
!202 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"auto-init"}
!213 = !{!"branch_weights", i32 1, i32 2000}
!214 = !{i64 5465941}
!215 = !{i64 2158139622}
!216 = !{i64 2158144848}
!217 = !{!"branch_weights", i32 2000, i32 1}
!218 = !{i64 2158136797}
!219 = !{i64 2158128836}
!220 = !{i64 5465523}
!221 = !{i64 2158131494}
!222 = !{i64 2158134097}
!223 = !{i8 0, i8 2}
!224 = !{i64 2158407543}
!225 = !{i64 2158408672}
!226 = !{i32 0, i32 33}
!227 = !{i8 0, i8 9}
!228 = !{i64 2148424379, i64 2148424405, i64 2148424434, i64 2148424468, i64 2148424499, i64 2148424522}
!229 = !{i64 2148425909, i64 2148425941, i64 2148425970, i64 2148426004, i64 2148426035, i64 2148426058}
!230 = !{i64 2148423798}
!231 = !{i64 909418, i64 909443, i64 909465, i64 909481, i64 909493, i64 909513, i64 909537, i64 909553, i64 909565}
!232 = !{i64 2148423986}
!233 = !{i64 2148513934}
!234 = !{i64 2148428374, i64 2148428406, i64 2148428435, i64 2148428469, i64 2148428500, i64 2148428523}
!235 = !{i64 2150124829}
!236 = !{i64 2158278332, i64 2158278837, i64 2158278369, i64 2158278425, i64 2158278459, i64 2158278483, i64 2158278524, i64 2158278545, i64 2158278573, i64 2158278607}
!237 = !{i64 2158289963, i64 2158290468, i64 2158290000, i64 2158290056, i64 2158290090, i64 2158290114, i64 2158290155, i64 2158290176, i64 2158290204, i64 2158290238}
