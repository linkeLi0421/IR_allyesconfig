; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_hdcp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mod_hdcp_display_query = type { ptr, ptr, ptr, i32 }
%struct.hdcp_workqueue = type { %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.mutex, %struct.mod_hdcp, %struct.mod_hdcp_output, %struct.mod_hdcp_display, %struct.mod_hdcp_link, i32, i8, ptr, ptr, i32, i32, %struct.bin_attribute }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mod_hdcp = type { %struct.mod_hdcp_config, %struct.mod_hdcp_connection, [6 x %struct.mod_hdcp_display], %struct.mod_hdcp_authentication, %struct.mod_hdcp_state, [2025 x i8] }
%struct.mod_hdcp_config = type { %struct.mod_hdcp_psp, %struct.mod_hdcp_ddc, i8 }
%struct.mod_hdcp_psp = type { ptr, ptr, %struct.mod_hdcp_psp_caps }
%struct.mod_hdcp_psp_caps = type { i8 }
%struct.mod_hdcp_ddc = type { ptr, %struct.anon.159 }
%struct.anon.159 = type { ptr, ptr, ptr, ptr }
%struct.mod_hdcp_connection = type { %struct.mod_hdcp_link, i8, i8, i8, i8, %struct.mod_hdcp_trace, i8, i8 }
%struct.mod_hdcp_trace = type { [10 x %struct.mod_hdcp_error], i8 }
%struct.mod_hdcp_error = type { i32, i8 }
%struct.mod_hdcp_authentication = type { i32, %union.mod_hdcp_message, %union.mod_hdcp_transition_input, %struct.mod_hdcp_auth_counters }
%union.mod_hdcp_message = type { %struct.mod_hdcp_message_hdcp2 }
%struct.mod_hdcp_message_hdcp2 = type { i8, [3 x i8], [2 x i8], [12 x i8], [534 x i8], [129 x i8], [33 x i8], [33 x i8], [17 x i8], [9 x i8], [33 x i8], [25 x i8], [177 x i8], i16, [17 x i8], [68 x i8], i16, [33 x i8], i8, [2 x i8] }
%union.mod_hdcp_transition_input = type { %struct.mod_hdcp_transition_input_hdcp2 }
%struct.mod_hdcp_transition_input_hdcp2 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mod_hdcp_auth_counters = type { i8 }
%struct.mod_hdcp_state = type { i8, i32 }
%struct.mod_hdcp_output = type { i8, i8, i8, i8, i16, i16, i8 }
%struct.mod_hdcp_display = type { i32, i8, i8, i8, i8, %union.anon.161, %struct.mod_hdcp_display_adjustment }
%union.anon.161 = type { i8 }
%struct.mod_hdcp_display_adjustment = type { i8 }
%struct.mod_hdcp_link = type { i32, i8, i8, i8, i8, i8, i8, %union.anon.160, %struct.mod_hdcp_link_adjustment }
%union.anon.160 = type { %struct.mod_hdcp_displayport }
%struct.mod_hdcp_displayport = type { i8, i8, i8, i8 }
%struct.mod_hdcp_link_adjustment = type { i8, %struct.mod_hdcp_link_adjustment_hdcp1, %struct.mod_hdcp_link_adjustment_hdcp2 }
%struct.mod_hdcp_link_adjustment_hdcp1 = type { i8 }
%struct.mod_hdcp_link_adjustment_hdcp2 = type { i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.psp_context = type { ptr, %struct.psp_ring, ptr, ptr, ptr, i64, ptr, ptr, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, ptr, i64, ptr, ptr, ptr, i64, ptr, ptr, i64, ptr, %struct.atomic_t, i8, i8, ptr, i32, %struct.ta_context, %struct.psp_xgmi_context, %struct.psp_ras_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.mutex, %struct.psp_memory_training_context, i32 }
%struct.psp_ring = type { i32, ptr, i64, ptr, i32, i32 }
%struct.psp_bin_desc = type { i32, i32, i32, ptr }
%struct.ta_context = type { i8, i32, %struct.ta_mem_context, %struct.psp_bin_desc, i32 }
%struct.ta_mem_context = type { ptr, i64, ptr, i32 }
%struct.psp_xgmi_context = type { %struct.ta_context, %struct.psp_xgmi_topology_info, i8 }
%struct.psp_xgmi_topology_info = type { i32, [64 x %struct.psp_xgmi_node_info] }
%struct.psp_xgmi_node_info = type { i64, i8, i8, i32, i8 }
%struct.psp_ras_context = type { %struct.ta_context, ptr }
%struct.ta_cp_context = type { %struct.ta_context, %struct.mutex }
%struct.psp_memory_training_context = type { i64, ptr, i64, i64, ptr, i32, i32, i8 }
%struct.ta_hdcp_shared_memory = type { i32, i32, i32, %union.ta_hdcp_cmd_input, %union.ta_hdcp_cmd_output }
%union.ta_hdcp_cmd_input = type { %struct.ta_hdcp_cmd_set_srm_input }
%struct.ta_hdcp_cmd_set_srm_input = type { i32, [5120 x i8] }
%union.ta_hdcp_cmd_output = type { %struct.ta_hdcp_cmd_get_srm_output }
%struct.ta_hdcp_cmd_get_srm_output = type { i32, i32, [5120 x i8] }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.103 }
%struct.anon.103 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.104, %struct.anon.105, %struct.anon.106, i32, i32 }
%struct.anon.104 = type { i8, [3 x i8] }
%struct.anon.105 = type { i32, i32, i32 }
%struct.anon.106 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.110, %struct.anon.111, i8, i8, i64 }
%struct.anon.110 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.111 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.139 }
%struct.anon.139 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.171, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.170], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.170 = type { i8, [7 x i8] }
%struct.amdgpu_xgmi = type { i64, i64, i64, i32, i32, %struct.list_head, i8, ptr, i8, i8, ptr }
%struct.amdgpu_gart = type { ptr, ptr, i32, i32, i32, i8, i64 }
%struct.amdgpu_vm_manager = type { [3 x %struct.amdgpu_vmid_mgr], i32, i8, i64, [28 x i32], i64, i32, i32, i32, i32, i64, ptr, [28 x ptr], i32, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.xarray }
%struct.amdgpu_vmid_mgr = type { %struct.mutex, i32, %struct.list_head, [16 x %struct.amdgpu_vmid], %struct.atomic_t }
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.166] }
%struct.anon.166 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.amdgpu_gtt_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.atomic64_t }
%struct.amdgpu_preempt_mgr = type { %struct.ttm_resource_manager, %struct.atomic64_t }
%struct.amdgpu_vram_scratch = type { ptr, ptr, i64 }
%struct.amdgpu_wb = type { ptr, ptr, i64, i32, [8 x i32] }
%struct.anon.171 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdgpu_sched = type { i32, [8 x ptr] }
%struct.amdgpu_irq = type { i8, i32, %struct.spinlock, [32 x %struct.amdgpu_irq_client], i8, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.amdgpu_irq_src, ptr, [256 x i32], i32 }
%struct.amdgpu_irq_client = type { ptr }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i8, i8, ptr, ptr, i64, i64, ptr, i64, ptr, i8, i32, %struct.amdgpu_ih_regs, %struct.wait_queue_head, i64 }
%struct.amdgpu_ih_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_powerplay = type { ptr, ptr }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.smu_table_context = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.smu_bios_boot_up_values, ptr, ptr, [15 x %struct.smu_table], %struct.smu_table, %struct.smu_table, %struct.smu_table, i8, ptr, ptr, ptr, i32, ptr }
%struct.smu_bios_boot_up_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.smu_table = type { i64, i32, i8, i64, ptr, ptr }
%struct.smu_dpm_context = type { i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, ptr }
%struct.smu_power_context = type { ptr, i32, %struct.smu_power_gate }
%struct.smu_power_gate = type { i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.mutex }
%struct.smu_feature = type { i32, [2 x i32], [2 x i32], [2 x i32], %struct.mutex }
%struct.smu_baco_context = type { %struct.mutex, i32, i8 }
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_umd_pstate_table = type { %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq }
%struct.pstates_clk_freq = type { i32, i32, i32, %struct.smu_freq_info, %struct.smu_freq_info }
%struct.smu_freq_info = type { i32, i32, i32 }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.amdgpu_pm = type { %struct.mutex, i32, i32, i32, i32, ptr, i8, i32, ptr, i8, i8, i8, i8, i8, i8, %struct.amdgpu_dpm, ptr, i32, i32, i32, %struct.amd_pp_display_configuration, i32, ptr, i8, i32, %struct.i2c_adapter, %struct.mutex, %struct.list_head, [14 x %struct.atomic_t], i32 }
%struct.amdgpu_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.amdgpu_dpm_dynamic_state, %struct.amdgpu_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, %struct.amdgpu_dpm_thermal, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.amdgpu_dpm_dynamic_state = type { %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_array, %struct.amdgpu_clock_array, %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits, i32, i32, i16, i16, %struct.amdgpu_cac_leakage_table, %struct.amdgpu_phase_shedding_limits_table, ptr, ptr }
%struct.amdgpu_uvd_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_vce_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_clock_voltage_dependency_table = type { i32, ptr }
%struct.amdgpu_clock_array = type { i32, ptr }
%struct.amdgpu_clock_and_voltage_limits = type { i32, i32, i16, i16 }
%struct.amdgpu_cac_leakage_table = type { i32, ptr }
%struct.amdgpu_phase_shedding_limits_table = type { i32, ptr }
%struct.amdgpu_dpm_fan = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i8 }
%struct.amdgpu_dpm_thermal = type { %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.amdgpu_irq_src }
%struct.amd_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [32 x %struct.single_display_configuration], i32, i32, i8, i32, i32, i8, i32, i32, i32, i32 }
%struct.single_display_configuration = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.amdgpu_nbio = type { ptr, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, ptr, ptr, ptr }
%struct.amdgpu_hdp = type { ptr, ptr, ptr }
%struct.amdgpu_smuio = type { ptr }
%struct.amdgpu_mmhub = type { ptr, ptr, ptr }
%struct.amdgpu_gfxhub = type { ptr }
%struct.amdgpu_gfx = type { %struct.mutex, %struct.amdgpu_gfx_config, %struct.amdgpu_rlc, %struct.amdgpu_pfp, %struct.amdgpu_ce, %struct.amdgpu_me, %struct.amdgpu_mec, %struct.amdgpu_kiq, %struct.amdgpu_scratch, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_ring], i32, [8 x %struct.amdgpu_ring], i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.sq_work, i32, i32, %struct.amdgpu_cu_info, ptr, i32, i32, i8, %struct.mutex, i32, %struct.delayed_work, %struct.mutex, [4 x i32], ptr, ptr }
%struct.amdgpu_gfx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], %struct.gb_addr_config, [4 x [2 x %struct.amdgpu_rb_config]], i32, i32, i32, i32, i32, i64 }
%struct.gb_addr_config = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_rb_config = type { i32, i32, i32, i32 }
%struct.amdgpu_rlc = type { ptr, i64, ptr, ptr, i32, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i64, ptr, ptr, i64, ptr }
%struct.amdgpu_pfp = type { ptr, i64, ptr }
%struct.amdgpu_ce = type { ptr, i64, ptr }
%struct.amdgpu_me = type { ptr, i64, ptr, i32, i32, i32, [2 x ptr], [4 x i32] }
%struct.amdgpu_mec = type { ptr, i64, ptr, i64, i32, i32, i32, [9 x ptr], [4 x i32] }
%struct.amdgpu_kiq = type { i64, ptr, %struct.spinlock, %struct.amdgpu_ring, %struct.amdgpu_irq_src, ptr }
%struct.amdgpu_ring = type { ptr, ptr, %struct.amdgpu_fence_driver, %struct.drm_gpu_scheduler, ptr, ptr, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, i64, ptr, i64, i32, i8, i8, i32, i32, i64, [16 x i8], i32, i32, i64, ptr, i32, i64, ptr, i32, ptr, i8, i8, i32 }
%struct.amdgpu_fence_driver = type { i64, ptr, i32, %struct.atomic_t, i8, ptr, i32, %struct.timer_list, i32, %struct.spinlock, ptr }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.amdgpu_scratch = type { i32, i32, i32 }
%struct.sq_work = type { %struct.work_struct, i32 }
%struct.amdgpu_cu_info = type { i32, i32, i32, i32, i32, i32, i32, [4 x [4 x i32]], [4 x [4 x i32]] }
%struct.amdgpu_sdma = type { [8 x %struct.amdgpu_sdma_instance], %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i32, i32, i8, ptr, ptr }
%struct.amdgpu_sdma_instance = type { ptr, i32, i32, %struct.amdgpu_ring, %struct.amdgpu_ring, i8 }
%struct.amdgpu_uvd = type { ptr, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_uvd_inst], [40 x ptr], [40 x %struct.atomic_t], %struct.drm_sched_entity, %struct.delayed_work, i32, i32, i32, ptr }
%struct.amdgpu_uvd_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [2 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32 }
%struct.amdgpu_vce = type { ptr, i64, ptr, ptr, i32, i32, [16 x %struct.atomic_t], [16 x ptr], [16 x i32], %struct.delayed_work, %struct.mutex, ptr, [3 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32, %struct.drm_sched_entity, i32, i32 }
%struct.amdgpu_vcn = type { i32, %struct.delayed_work, ptr, i32, i32, i8, i8, [2 x %struct.amdgpu_vcn_inst], [2 x i8], %struct.amdgpu_vcn_reg, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr }
%struct.amdgpu_vcn_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [3 x %struct.amdgpu_ring], %struct.atomic_t, %struct.amdgpu_irq_src, %struct.amdgpu_vcn_reg, ptr, %struct.dpg_pause_state, ptr, i64, ptr, %struct.atomic_t, ptr, i64 }
%struct.dpg_pause_state = type { i32, i32 }
%struct.amdgpu_vcn_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_jpeg = type { i8, [2 x %struct.amdgpu_jpeg_inst], %struct.amdgpu_jpeg_reg, i32, %struct.delayed_work, i32, %struct.mutex, %struct.atomic_t }
%struct.amdgpu_jpeg_inst = type { %struct.amdgpu_ring, %struct.amdgpu_irq_src, %struct.amdgpu_jpeg_reg }
%struct.amdgpu_jpeg_reg = type { i32 }
%struct.amdgpu_firmware = type { [35 x %struct.amdgpu_firmware_info], i32, ptr, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i64 }
%struct.amdgpu_firmware_info = type { i32, ptr, i64, ptr, i32, i32, i32 }
%struct.amdgpu_gds = type { i32, i32, i32, i32 }
%struct.amdgpu_kfd_dev = type { ptr, i64, i8 }
%struct.amdgpu_umc = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.amdgpu_display_manager = type { ptr, ptr, ptr, [5 x ptr], [5 x i8], ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, i16, %struct.drm_private_obj, %struct.mutex, %struct.mutex, ptr, i8, [99 x %struct.list_head], [99 x %struct.list_head], [7 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [1 x %struct.common_irq_params], [1 x %struct.common_irq_params], %struct.spinlock, [2 x ptr], [2 x ptr], i8, [2 x %struct.amdgpu_dm_backlight_caps], ptr, ptr, ptr, ptr, %struct.dm_compressor_info, ptr, i32, ptr, ptr, [6 x %struct.amdgpu_encoder], i8, i8, i8, %struct.list_head, %struct.completion, ptr, [2 x i32] }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.common_irq_params = type { ptr, i32, %struct.atomic64_t }
%struct.amdgpu_dm_backlight_caps = type { ptr, i32, i32, i32, i32, i8, i8 }
%struct.dm_compressor_info = type { ptr, ptr, i64 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_mes = type { ptr, i32, i32, i32, i64, i64, %struct.amdgpu_ring, ptr, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i32, [8 x i32], [2 x i32], [2 x i32], [5 x i32], i32, i64, ptr, i32, i64, ptr, ptr }
%struct.amdgpu_df = type { %struct.amdgpu_df_hash_status, ptr }
%struct.amdgpu_df_hash_status = type { i8, i8, i8 }
%struct.amdgpu_mca = type { ptr, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras }
%struct.amdgpu_mca_ras = type { ptr, ptr }
%struct.amdgpu_ip_block = type { %struct.amdgpu_ip_block_status, ptr }
%struct.amdgpu_ip_block_status = type { i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.174, i32, i32, i32, i32 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_commit = type { ptr, %struct.kref, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, ptr, i8 }
%struct.i2c_payload = type { i8, i8, i32, ptr }
%struct.i2c_command = type { ptr, i8, i32, i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.101 }
%struct.anon.101 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.145 }
%struct.anon.145 = type { i8 }
%union.max_lane_count = type { %struct.anon.146 }
%struct.anon.146 = type { i8 }
%union.max_down_spread = type { %struct.anon.147 }
%struct.anon.147 = type { i8 }
%union.dprx_feature = type { %struct.anon.148 }
%struct.anon.148 = type { i8 }
%union.sink_count = type { %struct.anon.149 }
%struct.anon.149 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.150 }
%struct.anon.150 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.151 }
%struct.anon.151 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
%struct.dpcd_dsc_support = type { i8 }
%struct.dpcd_dsc_algorithm_revision = type { i8 }
%struct.dpcd_dsc_rc_buffer_block_size = type { i8 }
%struct.dpcd_dsc_slice_capability1 = type { i8 }
%struct.dpcd_dsc_line_buffer_bit_depth = type { i8 }
%struct.dpcd_dsc_block_prediction_support = type { i8 }
%struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor = type { i8, i8, i8 }
%struct.dpcd_dsc_decoder_color_format_capabilities = type { i8 }
%struct.dpcd_dsc_decoder_color_depth_capabilities = type { i8 }
%struct.dpcd_peak_dsc_throughput_dsc_sink = type { i8 }
%struct.dpcd_dsc_slice_capabilities_2 = type { i8 }
%struct.dpcd_bits_per_pixel_increment = type { i8 }
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.153 }
%struct.anon.153 = type { i8 }
%union.dpia_info = type { %struct.anon.154 }
%struct.anon.154 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.155 }
%struct.anon.155 = type { i8, i8, %struct.anon.156 }
%struct.anon.156 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.157 }
%struct.anon.157 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.158 }
%struct.anon.158 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.cp_psp_stream_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8 }
%struct.amdgpu_dm_connector = type { %struct.drm_connector, i32, ptr, %struct.amdgpu_hpd, i32, ptr, ptr, ptr, %struct.drm_dp_mst_topology_mgr, %struct.amdgpu_dm_dp_aux, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.mutex, i8, i32, i32, i8, %struct.dsc_preferred_settings, %struct.drm_display_mode, i32 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_dm_dp_aux = type { %struct.drm_dp_aux, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.dsc_preferred_settings = type { i32, i32, i32, i32, i8 }
%struct.ta_dtm_shared_memory = type { i32, i32, i32, i32, %union.ta_dtm_cmd_input, %union.ta_dtm_cmd_output }
%union.ta_dtm_cmd_input = type { %struct.ta_dtm_topology_update_input_v3 }
%struct.ta_dtm_topology_update_input_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.ta_dtm_cmd_output = type { i32 }

@hdcp_create_workqueue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&hdcp_work[i].mutex\00", [44 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&hdcp_work[i].cpirq_work)\00", [52 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&hdcp_work[i].property_update_work)\00", [42 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(work_completion)(&(&hdcp_work[i].callback_dwork)->work)\00", [39 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&(&hdcp_work[i].callback_dwork)->timer\00", [57 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"(work_completion)(&(&hdcp_work[i].watchdog_timer_dwork)->work)\00", [33 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"&(&hdcp_work[i].watchdog_timer_dwork)->timer\00", [51 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"(work_completion)(&(&hdcp_work[i].property_validate_dwork)->work)\00", [62 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"&(&hdcp_work[i].property_validate_dwork)->timer\00", [48 x i8] zeroinitializer }, align 32
@data_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.31, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 5120, ptr null, ptr null, ptr @srm_data_read, ptr @srm_data_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hdcp_create_workqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014[drm] Failed to create device file hdcp_srm\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdcp_create_workqueue\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c\00", [63 x i8] zeroinitializer }, align 32
@hdcp_create_workqueue._entry_ptr = internal global ptr @hdcp_create_workqueue._entry, section ".printk_index", align 4
@psp_set_srm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.20, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014[drm] Failed to get hdcp srm. HDCP TA is not initialized.\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"psp_set_srm\00", [20 x i8] zeroinitializer }, align 32
@psp_set_srm._entry_ptr = internal global ptr @psp_set_srm._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HDCP state unknown! Setting it to DESIRED\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[HDCP_DM] display %d, CP %d, type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[HDCP_DM] display %d, CP 2 -> 1, type %u, DPMS %u\0A\00", [45 x i8] zeroinitializer }, align 32
@enable_assr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.20, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016[drm] Failed to enable ASSR, DTM TA is not initialized.\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_assr\00", [20 x i8] zeroinitializer }, align 32
@enable_assr._entry_ptr = internal global ptr @enable_assr._entry, section ".printk_index", align 4
@enable_assr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.20, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] Failed to enable ASSR\00", [34 x i8] zeroinitializer }, align 32
@enable_assr._entry_ptr.30 = internal global ptr @enable_assr._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdcp_srm\00", [23 x i8] zeroinitializer }, align 32
@psp_get_srm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.32, ptr @.str.20, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"psp_get_srm\00", [20 x i8] zeroinitializer }, align 32
@psp_get_srm._entry_ptr = internal global ptr @psp_get_srm._entry, section ".printk_index", align 4
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDCP SRM SET version 0x%X\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 657, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 659, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 660, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 661, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 662, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 663, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [10 x i8] c"data_attr\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 625, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 681, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 684, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 109, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 309, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 491, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 238, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 418, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 434, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 626, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 83, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [68 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 556, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @enable_assr._entry, ptr @enable_assr._entry.28, ptr @enable_assr._entry_ptr, ptr @enable_assr._entry_ptr.30, ptr @hdcp_create_workqueue._entry, ptr @hdcp_create_workqueue._entry_ptr, ptr @psp_get_srm._entry, ptr @psp_get_srm._entry_ptr, ptr @psp_set_srm._entry, ptr @psp_set_srm._entry_ptr, ptr @hdcp_create_workqueue.__key, ptr @.str, ptr @hdcp_create_workqueue.__key.1, ptr @.str.2, ptr @hdcp_create_workqueue.__key.3, ptr @.str.4, ptr @hdcp_create_workqueue.__key.5, ptr @.str.6, ptr @hdcp_create_workqueue.__key.7, ptr @.str.8, ptr @hdcp_create_workqueue.__key.9, ptr @.str.10, ptr @hdcp_create_workqueue.__key.11, ptr @.str.12, ptr @hdcp_create_workqueue.__key.13, ptr @.str.14, ptr @hdcp_create_workqueue.__key.15, ptr @.str.16, ptr @data_attr, ptr @hdcp_create_workqueue.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_create_workqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_set_srm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_assr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_assr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_get_srm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdcp_update_display(ptr noundef %hdcp_work, i32 noundef %link_index, ptr noundef %aconnector, i8 noundef zeroext %content_type, i1 noundef zeroext %enable_encryption) local_unnamed_addr #0 align 64 {
entry:
  %query = alloca %struct.mod_hdcp_display_query, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %display2 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %query) #7
  %mutex = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 6
  %0 = getelementptr inbounds i8, ptr %query, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %aconnector5 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 5
  %2 = ptrtoint ptr %aconnector5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %aconnector, ptr %aconnector5, align 4
  %3 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %query, align 4
  %hdcp = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 7
  %index = getelementptr inbounds %struct.drm_connector, ptr %aconnector, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %conv = trunc i32 %5 to i8
  %call = call i32 @mod_hdcp_query_display(ptr noundef %hdcp, i8 noundef zeroext %conv, ptr noundef nonnull %query) #7
  %6 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %query, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %entry.if.end70_crit_edge, label %if.then

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then:                                          ; preds = %entry
  %8 = call ptr @memcpy(ptr %display2, ptr %7, i32 12)
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %conv13 = trunc i32 %10 to i8
  %output = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 8
  %call14 = call i32 @mod_hdcp_remove_display(ptr noundef %hdcp, i8 noundef zeroext %conv13, ptr noundef %output) #7
  %hdcp2 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 10, i32 8, i32 2
  %11 = ptrtoint ptr %hdcp2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %hdcp2, align 2
  %bf.clear = and i8 %bf.load, -97
  %bf.set = or i8 %bf.clear, 32
  store i8 %bf.set, ptr %hdcp2, align 2
  br i1 %enable_encryption, label %if.then16, label %if.else62

if.then16:                                        ; preds = %if.then
  %srm_size = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 16
  %12 = ptrtoint ptr %srm_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srm_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17.not = icmp eq i32 %13, 0
  br i1 %cmp17.not, label %if.then16.if.end_crit_edge, label %if.then19

if.then16.if.end_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then19:                                        ; preds = %if.then16
  %hdcp20 = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 7
  %14 = ptrtoint ptr %hdcp20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdcp20, align 4
  %srm_version = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 15
  %hdcp_context.i = getelementptr inbounds %struct.psp_context, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %hdcp_context.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdcp_context.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %if.end

if.end.i:                                         ; preds = %if.then19
  %srm = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 13
  %18 = ptrtoint ptr %srm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %srm, align 4
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %15, i32 0, i32 35, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %shared_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shared_buf.i, align 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 10264)
  %in_msg.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %21, i32 0, i32 3
  %srm_buf.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %21, i32 0, i32 3, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %srm_buf.i, ptr %19, i32 %13)
  %24 = ptrtoint ptr %in_msg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %13, ptr %in_msg.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 18, ptr %21, align 4
  %call5.i = call i32 @psp_hdcp_invoke(ptr noundef %15, i32 noundef 18) #7
  %hdcp_status.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %hdcp_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdcp_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %out_msg.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %21, i32 0, i32 4
  %28 = ptrtoint ptr %out_msg.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %out_msg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp6.not.i = icmp eq i8 %29, 1
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %srm_version10.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %21, i32 0, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %srm_version10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %srm_version10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %31)
  %cmp11.i = icmp eq i32 %31, 65535
  br i1 %cmp11.i, label %lor.lhs.false8.i.if.end_crit_edge, label %if.end14.i

lor.lhs.false8.i.if.end_crit_edge:                ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end14.i:                                       ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %srm_version to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %srm_version, align 4
  br label %if.end

if.end:                                           ; preds = %if.end14.i, %lor.lhs.false8.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %do.end.i, %if.then16.if.end_crit_edge
  %adjust23 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 9, i32 6
  %33 = ptrtoint ptr %adjust23 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load24 = load i8, ptr %adjust23, align 1
  %bf.clear25 = and i8 %bf.load24, 63
  store i8 %bf.clear25, ptr %adjust23, align 1
  %34 = zext i8 %content_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %content_type, label %if.end.if.end59_crit_edge [
    i8 0, label %if.then30
    i8 1, label %if.then45
  ]

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hdcp1 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 10, i32 8, i32 1
  %35 = ptrtoint ptr %hdcp1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load33 = load i8, ptr %hdcp1, align 1
  %bf.clear34 = and i8 %bf.load33, 127
  store i8 %bf.clear34, ptr %hdcp1, align 1
  br label %if.end59.sink.split

if.then45:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hdcp148 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 10, i32 8, i32 1
  %36 = ptrtoint ptr %hdcp148 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load49 = load i8, ptr %hdcp148, align 1
  %bf.set51 = or i8 %bf.load49, -128
  store i8 %bf.set51, ptr %hdcp148, align 1
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then45, %if.then30
  %.sink = phi i8 [ 64, %if.then45 ], [ 32, %if.then30 ]
  %37 = ptrtoint ptr %hdcp2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load55 = load i8, ptr %hdcp2, align 2
  %bf.clear56 = and i8 %bf.load55, -97
  %bf.set57 = or i8 %bf.clear56, %.sink
  store i8 %bf.set57, ptr %hdcp2, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.end.if.end59_crit_edge
  %property_validate_dwork = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %property_validate_dwork, i32 noundef 205) #7
  br label %if.end69

if.else62:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %adjust63 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 9, i32 6
  %39 = ptrtoint ptr %adjust63 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load64 = load i8, ptr %adjust63, align 1
  %bf.clear65 = and i8 %bf.load64, 63
  %bf.set66 = or i8 %bf.clear65, 64
  store i8 %bf.set66, ptr %adjust63, align 1
  %encryption_status = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 11
  %40 = ptrtoint ptr %encryption_status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %encryption_status, align 4
  %property_validate_dwork67 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 4
  %call68 = call zeroext i1 @cancel_delayed_work(ptr noundef %property_validate_dwork67) #7
  br label %if.end69

if.end69:                                         ; preds = %if.else62, %if.end59
  %41 = ptrtoint ptr %display2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %display2, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %entry.if.end70_crit_edge
  %arrayidx = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index
  %link4 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 10
  %output72 = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 8
  %call73 = call i32 @mod_hdcp_add_display(ptr noundef %hdcp, ptr noundef %link4, ptr noundef %display2, ptr noundef %output72) #7
  call fastcc void @process_output(ptr noundef %arrayidx)
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %query) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_query_display(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_remove_display(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_add_display(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_output(ptr noundef %hdcp_work) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 8
  %0 = ptrtoint ptr %output1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %output.sroa.0.0.copyload21 = load i8, ptr %output1, align 4
  %output.sroa.5.0.output1.sroa_idx = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %output.sroa.5.0.output1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %output.sroa.5.0.copyload22 = load i8, ptr %output.sroa.5.0.output1.sroa_idx, align 1
  %output.sroa.6.0.output1.sroa_idx = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %output.sroa.6.0.output1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %output.sroa.6.0.copyload23 = load i8, ptr %output.sroa.6.0.output1.sroa_idx, align 2
  %output.sroa.7.0.output1.sroa_idx = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 8, i32 3
  %3 = ptrtoint ptr %output.sroa.7.0.output1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %output.sroa.7.0.copyload24 = load i8, ptr %output.sroa.7.0.output1.sroa_idx, align 1
  %output.sroa.8.0.output1.sroa_idx = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %output.sroa.8.0.output1.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %output.sroa.8.0.copyload25 = load i16, ptr %output.sroa.8.0.output1.sroa_idx, align 4
  %output.sroa.9.0.output1.sroa_idx = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 8, i32 5
  %5 = ptrtoint ptr %output.sroa.9.0.output1.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %output.sroa.9.0.copyload26 = load i16, ptr %output.sroa.9.0.output1.sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %output.sroa.5.0.copyload22)
  %tobool.not = icmp eq i8 %output.sroa.5.0.copyload22, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %callback_dwork = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %callback_dwork) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %output.sroa.0.0.copyload21)
  %tobool2.not = icmp eq i8 %output.sroa.0.0.copyload21, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %callback_dwork4 = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 2
  %conv = zext i16 %output.sroa.8.0.copyload25 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %callback_dwork4, i32 noundef %call2.i) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %output.sroa.7.0.copyload24)
  %tobool8.not = icmp eq i8 %output.sroa.7.0.copyload24, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_dwork = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 3
  %call10 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %watchdog_timer_dwork) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %output.sroa.6.0.copyload23)
  %tobool12.not = icmp eq i8 %output.sroa.6.0.copyload23, 0
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_dwork14 = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 3
  %conv15 = zext i16 %output.sroa.9.0.copyload26 to i32
  %call2.i35 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv15) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i41 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %watchdog_timer_dwork14, i32 noundef %call2.i35) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end11.if.end18_crit_edge
  %property_validate_dwork = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i42 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %property_validate_dwork, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdcp_reset_display(ptr noundef %hdcp_work, i32 noundef %link_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index
  %mutex = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %hdcp = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 7
  %output = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 8
  %call = tail call i32 @mod_hdcp_reset_connection(ptr noundef %hdcp, ptr noundef %output) #7
  %property_validate_dwork = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %property_validate_dwork) #7
  %encryption_status = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index, i32 11
  %0 = ptrtoint ptr %encryption_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %encryption_status, align 4
  tail call fastcc void @process_output(ptr noundef %arrayidx)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_reset_connection(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdcp_handle_cpirq(ptr noundef %hdcp_work, i32 noundef %link_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %link_index
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %arrayidx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdcp_destroy(ptr noundef %kobj, ptr noundef %hdcp_work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_link = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 12
  %0 = ptrtoint ptr %max_link to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp15.not = icmp eq i8 %1, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %callback_dwork = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %i.016, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %callback_dwork) #7
  %watchdog_timer_dwork = getelementptr %struct.hdcp_workqueue, ptr %hdcp_work, i32 %i.016, i32 3
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watchdog_timer_dwork) #7
  %inc = add nuw nsw i32 %i.016, 1
  %2 = ptrtoint ptr %max_link to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_link, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %attr = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 17
  tail call void @sysfs_remove_bin_file(ptr noundef %kobj, ptr noundef %attr) #7
  %srm = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 13
  %4 = ptrtoint ptr %srm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %srm, align 4
  tail call void @kfree(ptr noundef %5) #7
  %srm_temp = getelementptr inbounds %struct.hdcp_workqueue, ptr %hdcp_work, i32 0, i32 14
  %6 = ptrtoint ptr %srm_temp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srm_temp, align 4
  tail call void @kfree(ptr noundef %7) #7
  tail call void @kfree(ptr noundef %hdcp_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hdcp_create_workqueue(ptr noundef %adev, ptr nocapture noundef writeonly %cp_psp, ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_links = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %max_links to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_links, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4032) #7
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #11
  %cmp = icmp ult ptr %call8.i.i, inttoptr (i32 17 to ptr)
  br i1 %cmp, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i302 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 5120) #12
  %srm = getelementptr inbounds %struct.hdcp_workqueue, ptr %call8.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %srm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i302, ptr %srm, align 4
  %cmp3 = icmp eq ptr %call7.i.i.i302, null
  br i1 %cmp3, label %if.end.fail_alloc_context_crit_edge, label %if.end5

if.end.fail_alloc_context_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alloc_context

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i317 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 5120) #12
  %srm_temp = getelementptr inbounds %struct.hdcp_workqueue, ptr %call8.i.i, i32 0, i32 14
  %8 = ptrtoint ptr %srm_temp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i317, ptr %srm_temp, align 8
  %cmp8 = icmp eq ptr %call7.i.i.i317, null
  br i1 %cmp8, label %if.end5.fail_alloc_context_crit_edge, label %if.end10

if.end5.fail_alloc_context_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alloc_context

if.end10:                                         ; preds = %if.end5
  %conv = trunc i32 %1 to i8
  %max_link = getelementptr inbounds %struct.hdcp_workqueue, ptr %call8.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %max_link to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %max_link, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11327.not = icmp eq i32 %1, 0
  br i1 %cmp11327.not, label %if.end10.for.end_crit_edge, label %do.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %if.end10
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.end148.do.body_crit_edge, %do.body.lr.ph
  %i.0328 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end148.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328
  %mutex = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @hdcp_create_workqueue.__key) #7
  tail call void @__init_work(ptr noundef %arrayidx, i32 noundef 0) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %arrayidx, align 64
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %arrayidx, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @hdcp_create_workqueue.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry21 = getelementptr inbounds %struct.work_struct, ptr %arrayidx, i32 0, i32 1
  %11 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry21, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry21, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @event_cpirq, ptr %func, align 4
  %property_update_work = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 1
  tail call void @__init_work(ptr noundef %property_update_work, i32 noundef 0) #7
  %14 = ptrtoint ptr %property_update_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %property_update_work, align 4
  %lockdep_map35 = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35, ptr noundef nonnull @.str.4, ptr noundef nonnull @hdcp_create_workqueue.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry38 = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 1, i32 1
  %15 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry38, ptr %entry38, align 16
  %prev.i320 = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i320 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry38, ptr %prev.i320, align 4
  %func41 = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 1, i32 2
  %17 = ptrtoint ptr %func41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @event_property_update, ptr %func41, align 8
  %callback_dwork = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 2
  tail call void @__init_work(ptr noundef %callback_dwork, i32 noundef 0) #7
  %18 = ptrtoint ptr %callback_dwork to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %callback_dwork, align 8
  %lockdep_map56 = getelementptr inbounds %struct.work_struct, ptr %callback_dwork, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map56, ptr noundef nonnull @.str.6, ptr noundef nonnull @hdcp_create_workqueue.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry60 = getelementptr inbounds %struct.work_struct, ptr %callback_dwork, i32 0, i32 1
  %19 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i321 = getelementptr inbounds %struct.work_struct, ptr %callback_dwork, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i321 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry60, ptr %prev.i321, align 32
  %func64 = getelementptr inbounds %struct.work_struct, ptr %callback_dwork, i32 0, i32 2
  %21 = ptrtoint ptr %func64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @event_callback, ptr %func64, align 4
  %timer = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @hdcp_create_workqueue.__key.7) #7
  %watchdog_timer_dwork = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 3
  tail call void @__init_work(ptr noundef %watchdog_timer_dwork, i32 noundef 0) #7
  %22 = ptrtoint ptr %watchdog_timer_dwork to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %watchdog_timer_dwork, align 4
  %lockdep_map87 = getelementptr inbounds %struct.work_struct, ptr %watchdog_timer_dwork, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map87, ptr noundef nonnull @.str.10, ptr noundef nonnull @hdcp_create_workqueue.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry91 = getelementptr inbounds %struct.work_struct, ptr %watchdog_timer_dwork, i32 0, i32 1
  %23 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry91, ptr %entry91, align 64
  %prev.i322 = getelementptr inbounds %struct.work_struct, ptr %watchdog_timer_dwork, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i322 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry91, ptr %prev.i322, align 4
  %func95 = getelementptr inbounds %struct.work_struct, ptr %watchdog_timer_dwork, i32 0, i32 2
  %25 = ptrtoint ptr %func95 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @event_watchdog_timer, ptr %func95, align 8
  %timer101 = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer101, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @hdcp_create_workqueue.__key.11) #7
  %property_validate_dwork = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 4
  tail call void @__init_work(ptr noundef %property_validate_dwork, i32 noundef 0) #7
  %26 = ptrtoint ptr %property_validate_dwork to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %property_validate_dwork, align 32
  %lockdep_map119 = getelementptr inbounds %struct.work_struct, ptr %property_validate_dwork, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map119, ptr noundef nonnull @.str.14, ptr noundef nonnull @hdcp_create_workqueue.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry123 = getelementptr inbounds %struct.work_struct, ptr %property_validate_dwork, i32 0, i32 1
  %27 = ptrtoint ptr %entry123 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry123, ptr %entry123, align 4
  %prev.i323 = getelementptr inbounds %struct.work_struct, ptr %property_validate_dwork, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i323 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry123, ptr %prev.i323, align 8
  %func127 = getelementptr inbounds %struct.work_struct, ptr %property_validate_dwork, i32 0, i32 2
  %29 = ptrtoint ptr %func127 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @event_property_validate, ptr %func127, align 4
  %timer133 = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer133, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @hdcp_create_workqueue.__key.15) #7
  %hdcp = getelementptr %struct.hdcp_workqueue, ptr %call8.i.i, i32 %i.0328, i32 7
  %30 = ptrtoint ptr %hdcp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %psp, ptr %hdcp, align 4
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 8
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dce_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %34)
  %cmp140 = icmp eq i32 %34, 22
  br i1 %cmp140, label %if.then142, label %do.body.if.end148_crit_edge

do.body.if.end148_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then142:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %caps147 = getelementptr inbounds %struct.mod_hdcp_psp, ptr %hdcp, i32 0, i32 2
  %35 = ptrtoint ptr %caps147 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %caps147, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then142, %do.body.if.end148_crit_edge
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.0328
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %ddc = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1
  %38 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %ddc, align 16
  %funcs = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1
  %write_i2c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 1
  %39 = ptrtoint ptr %write_i2c to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @lp_write_i2c, ptr %write_i2c, align 8
  %40 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @lp_read_i2c, ptr %funcs, align 4
  %write_dpcd = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 3
  %41 = ptrtoint ptr %write_dpcd to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @lp_write_dpcd, ptr %write_dpcd, align 64
  %read_dpcd = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 1, i32 1, i32 2
  %42 = ptrtoint ptr %read_dpcd to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @lp_read_dpcd, ptr %read_dpcd, align 4
  %inc = add nuw nsw i32 %i.0328, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end148.for.end_crit_edge, label %if.end148.do.body_crit_edge

if.end148.do.body_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end148.for.end_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end148.for.end_crit_edge, %if.end10.for.end_crit_edge
  %funcs173 = getelementptr inbounds %struct.cp_psp, ptr %cp_psp, i32 0, i32 1
  %update_stream_config = getelementptr inbounds %struct.cp_psp, ptr %cp_psp, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %update_stream_config to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @update_config, ptr %update_stream_config, align 4
  %44 = ptrtoint ptr %funcs173 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @enable_assr, ptr %funcs173, align 4
  %45 = ptrtoint ptr %cp_psp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i.i, ptr %cp_psp, align 4
  %attr = getelementptr inbounds %struct.hdcp_workqueue, ptr %call8.i.i, i32 0, i32 17
  %46 = call ptr @memcpy(ptr %attr, ptr @data_attr, i32 44)
  %key = getelementptr inbounds %struct.hdcp_workqueue, ptr %call8.i.i, i32 0, i32 17, i32 0, i32 3
  %47 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @hdcp_create_workqueue.__key.17, ptr %key, align 4
  %48 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adev, align 8
  %call185 = tail call i32 @sysfs_create_bin_file(ptr noundef %49, ptr noundef %attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool.not = icmp eq i32 %call185, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.end189

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end189:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

fail_alloc_context:                               ; preds = %if.end5.fail_alloc_context_crit_edge, %if.end.fail_alloc_context_crit_edge
  %50 = ptrtoint ptr %srm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %srm, align 4
  tail call void @kfree(ptr noundef %51) #7
  %srm_temp193 = getelementptr inbounds %struct.hdcp_workqueue, ptr %call8.i.i, i32 0, i32 14
  %52 = ptrtoint ptr %srm_temp193 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %srm_temp193, align 8
  tail call void @kfree(ptr noundef %53) #7
  tail call void @kfree(ptr noundef %call8.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_alloc_context, %do.end189, %for.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail_alloc_context ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ %call8.i.i, %do.end189 ], [ %call8.i.i, %for.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_cpirq(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.hdcp_workqueue, ptr %work, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %hdcp = getelementptr inbounds %struct.hdcp_workqueue, ptr %work, i32 0, i32 7
  %output = getelementptr inbounds %struct.hdcp_workqueue, ptr %work, i32 0, i32 8
  %call = tail call i32 @mod_hdcp_process_event(ptr noundef %hdcp, i32 noundef 2, ptr noundef %output) #7
  tail call fastcc void @process_output(ptr noundef %work)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_property_update(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %aconnector1 = getelementptr i8, ptr %work, i32 344
  %0 = ptrtoint ptr %aconnector1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aconnector1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 1
  %call = tail call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #7
  %mutex = getelementptr i8, ptr %work, i32 348
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 52
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 8
  %commit = getelementptr inbounds %struct.drm_connector_state, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %commit, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %hw_done = getelementptr inbounds %struct.drm_crtc_commit, ptr %7, i32 0, i32 3
  %call8 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %hw_done, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #7
  %encryption_status = getelementptr i8, ptr %work, i32 3920
  %8 = ptrtoint ptr %encryption_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %encryption_status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %encryption_status11 = getelementptr i8, ptr %work, i32 3920
  %9 = ptrtoint ptr %encryption_status11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encryption_status11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12.not = icmp eq i32 %10, 0
  br i1 %cmp12.not, label %if.end10.if.end34.sink.split_crit_edge, label %if.then13

if.end10.if.end34.sink.split_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

if.then13:                                        ; preds = %if.end10
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 8
  %hdcp_content_type = getelementptr inbounds %struct.drm_connector_state, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %hdcp_content_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hdcp_content_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16 = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp18 = icmp ult i32 %10, 3
  %or.cond = select i1 %cmp16, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then13.if.end34.sink.split_crit_edge, label %if.else

if.then13.if.end34.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp24 = icmp eq i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp27 = icmp eq i32 %10, 3
  %or.cond53 = select i1 %cmp24, i1 %cmp27, i1 false
  br i1 %or.cond53, label %if.else.if.end34.sink.split_crit_edge, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else.if.end34.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else.if.end34.sink.split_crit_edge, %if.then13.if.end34.sink.split_crit_edge, %if.end10.if.end34.sink.split_crit_edge
  %.sink = phi i64 [ 2, %if.then13.if.end34.sink.split_crit_edge ], [ 2, %if.else.if.end34.sink.split_crit_edge ], [ 1, %if.end10.if.end34.sink.split_crit_edge ]
  tail call void @drm_hdcp_update_content_protection(ptr noundef %1, i64 noundef %.sink) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  tail call void @drm_modeset_unlock(ptr noundef %connection_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_callback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -88
  %mutex = getelementptr i8, ptr %work, i32 304
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #7
  %hdcp = getelementptr i8, ptr %work, i32 396
  %output = getelementptr i8, ptr %work, i32 3832
  %call2 = tail call i32 @mod_hdcp_process_event(ptr noundef %hdcp, i32 noundef 0, ptr noundef %output) #7
  tail call fastcc void @process_output(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_watchdog_timer(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  %mutex = getelementptr i8, ptr %work, i32 204
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #7
  %hdcp = getelementptr i8, ptr %work, i32 296
  %output = getelementptr i8, ptr %work, i32 3732
  %call2 = tail call i32 @mod_hdcp_process_event(ptr noundef %hdcp, i32 noundef 1, ptr noundef %output) #7
  tail call fastcc void @process_output(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_property_validate(ptr noundef %work) #0 align 64 {
entry:
  %query = alloca %struct.mod_hdcp_display_query, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %query) #7
  %aconnector1 = getelementptr i8, ptr %work, i32 100
  %0 = call ptr @memset(ptr %query, i32 255, i32 12)
  %1 = ptrtoint ptr %aconnector1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aconnector1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.mod_hdcp_display_query, ptr %query, i32 0, i32 3
  %mutex = getelementptr i8, ptr %work, i32 104
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %hdcp = getelementptr i8, ptr %work, i32 196
  %index = getelementptr inbounds %struct.drm_connector, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %conv = trunc i32 %6 to i8
  %call2 = call i32 @mod_hdcp_query_display(ptr noundef %hdcp, i8 noundef zeroext %conv, ptr noundef nonnull %query) #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %encryption_status4 = getelementptr i8, ptr %work, i32 3676
  %9 = ptrtoint ptr %encryption_status4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encryption_status4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %encryption_status4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %encryption_status4, align 4
  %property_update_work = getelementptr i8, ptr %work, i32 -244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %property_update_work) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %query) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @lp_write_i2c(ptr noundef %handle, i32 noundef %address, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %i2c_payloads = alloca [1 x %struct.i2c_payload], align 4
  %cmd = alloca %struct.i2c_command, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2c_payloads) #7
  %0 = ptrtoint ptr %i2c_payloads to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i2c_payloads, align 4
  store i8 1, ptr %i2c_payloads, align 4
  %address1 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 1
  %conv = trunc i32 %address to i8
  %1 = ptrtoint ptr %address1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %address1, align 1
  %length = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %length, align 4
  %data2 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 3
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %data2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #7
  %4 = getelementptr inbounds i8, ptr %cmd, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i2c_payloads, ptr %cmd, align 4
  %number_of_payloads = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %number_of_payloads, align 4
  %engine = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %engine, align 4
  %speed = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 3
  %dc = getelementptr inbounds %struct.dc_link, ptr %handle, i32 0, i32 35
  %9 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dc, align 4
  %i2c_speed_in_khz = getelementptr inbounds %struct.dc, ptr %10, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %i2c_speed_in_khz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_speed_in_khz, align 4
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %speed, align 4
  %ctx = getelementptr inbounds %struct.dc_link, ptr %handle, i32 0, i32 36
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %call = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %15, ptr noundef %handle, ptr noundef nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2c_payloads) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @lp_read_i2c(ptr noundef %handle, i32 noundef %address, i8 noundef zeroext %offset, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %offset.addr = alloca i8, align 1
  %i2c_payloads = alloca [2 x %struct.i2c_payload], align 4
  %cmd = alloca %struct.i2c_command, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i2c_payloads) #7
  %1 = call ptr @memset(ptr %i2c_payloads, i32 255, i32 16)
  %2 = ptrtoint ptr %i2c_payloads to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %i2c_payloads, align 4
  %address1 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 1
  %conv = trunc i32 %address to i8
  %3 = ptrtoint ptr %address1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %address1, align 1
  %length = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %length, align 4
  %data2 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 3
  %5 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %offset.addr, ptr %data2, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayinit.element, align 4
  %address4 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1, i32 1
  %7 = ptrtoint ptr %address4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %address4, align 1
  %length6 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1, i32 2
  %8 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %length6, align 4
  %data7 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1, i32 3
  %9 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %data7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #7
  %10 = getelementptr inbounds i8, ptr %cmd, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %i2c_payloads, ptr %cmd, align 4
  %number_of_payloads = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %number_of_payloads, align 4
  %engine = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %engine, align 4
  %speed = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 3
  %dc = getelementptr inbounds %struct.dc_link, ptr %handle, i32 0, i32 35
  %15 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dc, align 4
  %i2c_speed_in_khz = getelementptr inbounds %struct.dc, ptr %16, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %i2c_speed_in_khz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_speed_in_khz, align 4
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %speed, align 4
  %ctx = getelementptr inbounds %struct.dc_link, ptr %handle, i32 0, i32 36
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 8
  %call = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %21, ptr noundef %handle, ptr noundef nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_payloads) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @lp_write_dpcd(ptr noundef %handle, i32 noundef %address, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_link, ptr %handle, i32 0, i32 36
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef %1, ptr noundef %handle, i32 noundef %address, ptr noundef %data, i32 noundef %size) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @lp_read_dpcd(ptr noundef %handle, i32 noundef %address, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_link, ptr %handle, i32 0, i32 36
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef %1, ptr noundef %handle, i32 noundef %address, ptr noundef %data, i32 noundef %size) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_config(ptr noundef %handle, ptr nocapture noundef readonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_stream_ctx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 11
  %0 = ptrtoint ptr %dm_stream_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_stream_ctx, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_link, align 8
  %link_index1 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %link_index1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_index1, align 8
  %link4 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10
  %dpms_off = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 12
  %6 = ptrtoint ptr %dpms_off to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dpms_off, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 52
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 8
  %mutex.i = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %aconnector1.i = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 5
  %10 = ptrtoint ptr %aconnector1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %aconnector1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.hdcp_remove_display.exit_crit_edge, label %land.lhs.true.i

if.then.hdcp_remove_display.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdcp_remove_display.exit

land.lhs.true.i:                                  ; preds = %if.then
  %content_protection.i = getelementptr inbounds %struct.drm_connector_state, ptr %9, i32 0, i32 12
  %11 = ptrtoint ptr %content_protection.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %content_protection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.hdcp_remove_display.exit_crit_edge

land.lhs.true.i.hdcp_remove_display.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdcp_remove_display.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %content_protection.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %content_protection.i, align 4
  %index.i = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %hdcp_content_type.i = getelementptr inbounds %struct.drm_connector_state, ptr %9, i32 0, i32 10
  %16 = ptrtoint ptr %hdcp_content_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hdcp_content_type.i, align 4
  %dpms.i = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 34
  %18 = ptrtoint ptr %dpms.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpms.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %15, i32 noundef %17, i32 noundef %19) #7
  br label %hdcp_remove_display.exit

hdcp_remove_display.exit:                         ; preds = %if.then.i, %land.lhs.true.i.hdcp_remove_display.exit_crit_edge, %if.then.hdcp_remove_display.exit_crit_edge
  %arrayidx.i = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5
  %hdcp.i = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 7
  %index6.i = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %index6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index6.i, align 4
  %conv.i = trunc i32 %21 to i8
  %output.i = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 8
  %call.i = tail call i32 @mod_hdcp_remove_display(ptr noundef %hdcp.i, i8 noundef zeroext %conv.i, ptr noundef %output.i) #7
  tail call fastcc void @process_output(ptr noundef %arrayidx.i) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %display2 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 9
  %index = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 9
  %22 = call ptr @memset(ptr %display2, i32 0, i32 32)
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %conv = trunc i32 %24 to i8
  %index5 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 9, i32 1
  %25 = ptrtoint ptr %index5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %index5, align 4
  %26 = ptrtoint ptr %display2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %display2, align 4
  %dc_sink = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dc_sink, align 4
  %tobool6.not = icmp eq ptr %28, null
  br i1 %tobool6.not, label %if.end13, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.end13:                                         ; preds = %if.end
  %dc_em_sink = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %dc_em_sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc_em_sink, align 4
  %cmp.not = icmp eq ptr %30, null
  br i1 %cmp.not, label %if.end13.if.end16_crit_edge, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %sink.0127 = phi ptr [ %30, %if.end13.if.then15_crit_edge ], [ %28, %if.end.if.then15_crit_edge ]
  %31 = ptrtoint ptr %sink.0127 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sink.0127, align 4
  %call = tail call i32 @mod_hdcp_signal_type_to_operation_mode(i32 noundef %32) #7
  %33 = ptrtoint ptr %link4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call, ptr %link4, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %cmp.not130 = phi i1 [ false, %if.then15 ], [ true, %if.end13.if.end16_crit_edge ]
  %sink.0128 = phi ptr [ %sink.0127, %if.then15 ], [ null, %if.end13.if.end16_crit_edge ]
  %34 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %config, align 4
  %add = add i8 %35, 1
  %controller = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 9, i32 2
  %36 = ptrtoint ptr %controller to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add, ptr %controller, align 1
  %dig_fe = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 2
  %37 = ptrtoint ptr %dig_fe to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dig_fe, align 2
  %dig_fe19 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 9, i32 3
  %39 = ptrtoint ptr %dig_fe19 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %dig_fe19, align 2
  %dig_be = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 1
  %40 = ptrtoint ptr %dig_be to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dig_be, align 1
  %dig_be20 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 1
  %42 = ptrtoint ptr %dig_be20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %dig_be20, align 4
  %43 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dc_link, align 8
  %ddc_hw_inst = getelementptr inbounds %struct.dc_link, ptr %44, i32 0, i32 26
  %45 = ptrtoint ptr %ddc_hw_inst to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ddc_hw_inst, align 4
  %add23 = add i8 %46, 1
  %ddc_line = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 2
  %47 = ptrtoint ptr %ddc_line to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %add23, ptr %ddc_line, align 1
  %stream_enc_idx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 4
  %48 = ptrtoint ptr %stream_enc_idx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %stream_enc_idx, align 4
  %stream_enc_idx25 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 9, i32 4
  %50 = ptrtoint ptr %stream_enc_idx25 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %stream_enc_idx25, align 1
  %link_enc_idx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 3
  %51 = ptrtoint ptr %link_enc_idx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %link_enc_idx, align 1
  %link_enc_idx26 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 3
  %53 = ptrtoint ptr %link_enc_idx26 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %link_enc_idx26, align 2
  %phy_idx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 6
  %54 = ptrtoint ptr %phy_idx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %phy_idx, align 2
  %phy_idx27 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 4
  %56 = ptrtoint ptr %phy_idx27 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %phy_idx27, align 1
  br i1 %cmp.not130, label %if.end16.if.end33_crit_edge, label %if.then29

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dc_link, align 8
  %59 = ptrtoint ptr %sink.0128 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sink.0128, align 4
  %call32 = tail call zeroext i1 @dc_link_is_hdcp14(ptr noundef %58, i32 noundef %60) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end16.if.end33_crit_edge
  %link_is_hdcp14.0.off0 = phi i1 [ %call32, %if.then29 ], [ false, %if.end16.if.end33_crit_edge ]
  %conv35 = zext i1 %link_is_hdcp14.0.off0 to i8
  %hdcp_supported_informational = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 6
  %61 = ptrtoint ptr %hdcp_supported_informational to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv35, ptr %hdcp_supported_informational, align 1
  %62 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dc_link, align 8
  %dpcd_caps = getelementptr inbounds %struct.dc_link, ptr %63, i32 0, i32 43
  %64 = ptrtoint ptr %dpcd_caps to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dpcd_caps, align 4
  %66 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 7
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %65, ptr %66, align 2
  %assr_enabled = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 7
  %68 = ptrtoint ptr %assr_enabled to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %assr_enabled, align 1
  %assr_enabled37 = getelementptr inbounds %struct.mod_hdcp_displayport, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %assr_enabled37 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %assr_enabled37, align 1
  %mst_enabled = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 8
  %71 = ptrtoint ptr %mst_enabled to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mst_enabled, align 4
  %mst_enabled38 = getelementptr inbounds %struct.mod_hdcp_displayport, ptr %66, i32 0, i32 2
  %73 = ptrtoint ptr %mst_enabled38 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %mst_enabled38, align 2
  %adjust = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 9, i32 6
  %74 = ptrtoint ptr %adjust to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %adjust, align 1
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, 64
  store i8 %bf.set, ptr %adjust, align 1
  %adjust39 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 8
  %75 = ptrtoint ptr %adjust39 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %adjust39, align 2
  %hdcp1 = getelementptr %struct.hdcp_workqueue, ptr %handle, i32 %5, i32 10, i32 8, i32 1
  %76 = ptrtoint ptr %hdcp1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load41 = load i8, ptr %hdcp1, align 1
  %bf.clear42 = and i8 %bf.load41, 127
  store i8 %bf.clear42, ptr %hdcp1, align 1
  %state45 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 52
  %77 = ptrtoint ptr %state45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %state45, align 8
  %79 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index, align 4
  %tobool50.not = icmp eq ptr %78, null
  br i1 %tobool50.not, label %if.end33.cond.end60_crit_edge, label %cond.true56

if.end33.cond.end60_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end60

cond.true56:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %content_protection = getelementptr inbounds %struct.drm_connector_state, ptr %78, i32 0, i32 12
  %81 = ptrtoint ptr %content_protection to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %content_protection, align 4
  %hdcp_content_type = getelementptr inbounds %struct.drm_connector_state, ptr %78, i32 0, i32 10
  %83 = ptrtoint ptr %hdcp_content_type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hdcp_content_type, align 4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.true56, %if.end33.cond.end60_crit_edge
  %cond132 = phi i32 [ %82, %cond.true56 ], [ -1, %if.end33.cond.end60_crit_edge ]
  %cond61 = phi i32 [ %84, %cond.true56 ], [ -1, %if.end33.cond.end60_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %80, i32 noundef %cond132, i32 noundef %cond61) #7
  %hdcp_content_type62 = getelementptr inbounds %struct.drm_connector_state, ptr %78, i32 0, i32 10
  %85 = ptrtoint ptr %hdcp_content_type62 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hdcp_content_type62, align 4
  %conv63 = trunc i32 %86 to i8
  tail call void @hdcp_update_display(ptr noundef %handle, i32 noundef %5, ptr noundef %1, i8 noundef zeroext %conv63, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %cond.end60, %hdcp_remove_display.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @enable_assr(ptr nocapture noundef readonly %handle, ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdcp1 = getelementptr inbounds %struct.hdcp_workqueue, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %hdcp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %hdcp.sroa.0.0.copyload = load ptr, ptr %hdcp1, align 4
  %dtm_context = getelementptr inbounds %struct.psp_context, ptr %hdcp.sroa.0.0.copyload, i32 0, i32 36
  %1 = ptrtoint ptr %dtm_context to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dtm_context, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %hdcp.sroa.0.0.copyload, i32 0, i32 36, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shared_buf, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %hdcp.sroa.0.0.copyload, i32 0, i32 36, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 68)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %4, align 4
  %link_enc_hw_inst = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 28
  %8 = ptrtoint ptr %link_enc_hw_inst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %link_enc_hw_inst, align 2
  %conv = zext i8 %9 to i32
  %dtm_in_message = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %dtm_in_message to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %dtm_in_message, align 4
  %dtm_status = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %dtm_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %dtm_status, align 4
  %call8 = tail call i32 @psp_dtm_invoke(ptr noundef %hdcp.sroa.0.0.copyload, i32 noundef 3) #7
  %12 = ptrtoint ptr %dtm_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dtm_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %do.end14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end
  %retval.0 = phi i1 [ %cmp.not, %if.end17 ], [ false, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_hdcp_invoke(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_process_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdcp_update_content_protection(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_submit_i2c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_signal_type_to_operation_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_is_hdcp14(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_dtm_invoke(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srm_data_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobj, ptr noundef %bin_attr, ptr nocapture noundef writeonly %buffer, i64 noundef %pos, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bin_attr, i32 -3988
  %max_link.i = getelementptr i8, ptr %bin_attr, i32 -20
  %0 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp10.not.i = icmp eq i8 %1, 0
  br i1 %cmp10.not.i, label %entry.link_lock.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.link_lock.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %mutex.i = getelementptr %struct.hdcp_workqueue, ptr %add.ptr, i32 %i.011.i, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %2 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_link.i, align 4
  %conv.i = zext i8 %3 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.link_lock.exit_crit_edge

for.body.i.link_lock.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

link_lock.exit:                                   ; preds = %for.body.i.link_lock.exit_crit_edge, %entry.link_lock.exit_crit_edge
  %hdcp = getelementptr i8, ptr %bin_attr, i32 -3504
  %4 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdcp, align 4
  %hdcp_context.i = getelementptr inbounds %struct.psp_context, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %hdcp_context.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdcp_context.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %link_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %ret19

if.end.i:                                         ; preds = %link_lock.exit
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %5, i32 0, i32 35, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %shared_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shared_buf.i, align 8
  %10 = getelementptr inbounds i8, ptr %9, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 10260)
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 19, ptr %9, align 4
  %call4.i = tail call i32 @psp_hdcp_invoke(ptr noundef %5, i32 noundef 19) #7
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %psp_get_srm.exit, label %if.end.i.ret19_crit_edge

if.end.i.ret19_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret19

psp_get_srm.exit:                                 ; preds = %if.end.i
  %srm_buf_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %9, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %srm_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srm_buf_size.i, align 4
  %srm_buf.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %9, i32 0, i32 4, i32 0, i32 2
  %tobool.not = icmp eq ptr %srm_buf.i, null
  br i1 %tobool.not, label %psp_get_srm.exit.ret19_crit_edge, label %if.end

psp_get_srm.exit.ret19_crit_edge:                 ; preds = %psp_get_srm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret19

if.end:                                           ; preds = %psp_get_srm.exit
  %conv = zext i32 %16 to i64
  %sub = sub i64 %conv, %pos
  %conv5 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv5)
  %cmp6 = icmp slt i64 %sub, %conv5
  br i1 %cmp6, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %idx.ext = trunc i64 %pos to i32
  %add.ptr9 = getelementptr i8, ptr %srm_buf.i, i32 %idx.ext
  %conv12 = trunc i64 %sub to i32
  %17 = call ptr @memcpy(ptr %buffer, ptr %add.ptr9, i32 %conv12)
  %conv15 = sub i32 %16, %idx.ext
  br label %ret19

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %pos)
  %cmp.not = icmp sgt i64 %conv, %pos
  %spec.select = select i1 %cmp.not, i32 %count, i32 0
  %idx.ext17 = trunc i64 %pos to i32
  %add.ptr18 = getelementptr i8, ptr %srm_buf.i, i32 %idx.ext17
  %18 = call ptr @memcpy(ptr %buffer, ptr %add.ptr18, i32 %count)
  br label %ret19

ret19:                                            ; preds = %if.end16, %if.then8, %psp_get_srm.exit.ret19_crit_edge, %if.end.i.ret19_crit_edge, %do.end.i
  %ret.1 = phi i32 [ %conv15, %if.then8 ], [ %spec.select, %if.end16 ], [ -22, %psp_get_srm.exit.ret19_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end.i.ret19_crit_edge ]
  %19 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %max_link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp10.not.i33 = icmp eq i8 %20, 0
  br i1 %cmp10.not.i33, label %ret19.link_lock.exit40_crit_edge, label %ret19.for.body.i36_crit_edge

ret19.for.body.i36_crit_edge:                     ; preds = %ret19
  br label %for.body.i36

ret19.link_lock.exit40_crit_edge:                 ; preds = %ret19
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit40

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %ret19.for.body.i36_crit_edge
  %i.011.i34 = phi i32 [ %inc.i37, %for.body.i36.for.body.i36_crit_edge ], [ 0, %ret19.for.body.i36_crit_edge ]
  %mutex.i35 = getelementptr %struct.hdcp_workqueue, ptr %add.ptr, i32 %i.011.i34, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex.i35) #7
  %inc.i37 = add nuw nsw i32 %i.011.i34, 1
  %21 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_link.i, align 4
  %conv.i38 = zext i8 %22 to i32
  %cmp.i39 = icmp ult i32 %inc.i37, %conv.i38
  br i1 %cmp.i39, label %for.body.i36.for.body.i36_crit_edge, label %for.body.i36.link_lock.exit40_crit_edge

for.body.i36.link_lock.exit40_crit_edge:          ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit40

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i36

link_lock.exit40:                                 ; preds = %for.body.i36.link_lock.exit40_crit_edge, %ret19.link_lock.exit40_crit_edge
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srm_data_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobj, ptr noundef %bin_attr, ptr nocapture noundef readonly %buffer, i64 noundef %pos, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bin_attr, i32 -3988
  %max_link.i = getelementptr i8, ptr %bin_attr, i32 -20
  %0 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp10.not.i = icmp eq i8 %1, 0
  br i1 %cmp10.not.i, label %entry.link_lock.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.link_lock.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %mutex.i = getelementptr %struct.hdcp_workqueue, ptr %add.ptr, i32 %i.011.i, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %2 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_link.i, align 4
  %conv.i = zext i8 %3 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.link_lock.exit_crit_edge

for.body.i.link_lock.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

link_lock.exit:                                   ; preds = %for.body.i.link_lock.exit_crit_edge, %entry.link_lock.exit_crit_edge
  %srm_temp = getelementptr i8, ptr %bin_attr, i32 -12
  %4 = ptrtoint ptr %srm_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %srm_temp, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr1 = getelementptr i8, ptr %5, i32 %idx.ext
  %6 = call ptr @memcpy(ptr %add.ptr1, ptr %buffer, i32 %count)
  %hdcp = getelementptr i8, ptr %bin_attr, i32 -3504
  %7 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdcp, align 4
  %conv3 = add i32 %idx.ext, %count
  %hdcp_context.i = getelementptr inbounds %struct.psp_context, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %hdcp_context.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hdcp_context.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %link_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %if.end

if.end.i:                                         ; preds = %link_lock.exit
  %11 = ptrtoint ptr %srm_temp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %srm_temp, align 4
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %8, i32 0, i32 35, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %shared_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shared_buf.i, align 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 10264)
  %in_msg.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %14, i32 0, i32 3
  %srm_buf.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %14, i32 0, i32 3, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %srm_buf.i, ptr %12, i32 %conv3)
  %17 = ptrtoint ptr %in_msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv3, ptr %in_msg.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 18, ptr %14, align 4
  %call5.i = tail call i32 @psp_hdcp_invoke(ptr noundef %8, i32 noundef 18) #7
  %hdcp_status.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %hdcp_status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hdcp_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %out_msg.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %14, i32 0, i32 4
  %21 = ptrtoint ptr %out_msg.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %out_msg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp6.not.i = icmp eq i8 %22, 1
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %srm_version10.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %14, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %srm_version10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %srm_version10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %24)
  %cmp11.i = icmp eq i32 %24, 65535
  br i1 %cmp11.i, label %lor.lhs.false8.i.if.end_crit_edge, label %if.then

lor.lhs.false8.i.if.end_crit_edge:                ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %24) #7
  %srm = getelementptr i8, ptr %bin_attr, i32 -16
  %25 = ptrtoint ptr %srm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %srm, align 4
  %27 = ptrtoint ptr %srm_temp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %srm_temp, align 4
  %29 = call ptr @memcpy(ptr %26, ptr %28, i32 %conv3)
  %srm_size = getelementptr i8, ptr %bin_attr, i32 -4
  %30 = ptrtoint ptr %srm_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv3, ptr %srm_size, align 4
  %srm_version11 = getelementptr i8, ptr %bin_attr, i32 -8
  %31 = ptrtoint ptr %srm_version11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %24, ptr %srm_version11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false8.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %do.end.i
  %32 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp10.not.i28 = icmp eq i8 %33, 0
  br i1 %cmp10.not.i28, label %if.end.link_lock.exit35_crit_edge, label %if.end.for.body.i31_crit_edge

if.end.for.body.i31_crit_edge:                    ; preds = %if.end
  br label %for.body.i31

if.end.link_lock.exit35_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit35

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %if.end.for.body.i31_crit_edge
  %i.011.i29 = phi i32 [ %inc.i32, %for.body.i31.for.body.i31_crit_edge ], [ 0, %if.end.for.body.i31_crit_edge ]
  %mutex.i30 = getelementptr %struct.hdcp_workqueue, ptr %add.ptr, i32 %i.011.i29, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex.i30) #7
  %inc.i32 = add nuw nsw i32 %i.011.i29, 1
  %34 = ptrtoint ptr %max_link.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %max_link.i, align 4
  %conv.i33 = zext i8 %35 to i32
  %cmp.i34 = icmp ult i32 %inc.i32, %conv.i33
  br i1 %cmp.i34, label %for.body.i31.for.body.i31_crit_edge, label %for.body.i31.link_lock.exit35_crit_edge

for.body.i31.link_lock.exit35_crit_edge:          ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %link_lock.exit35

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i31

link_lock.exit35:                                 ; preds = %for.body.i31.link_lock.exit35_crit_edge, %if.end.link_lock.exit35_crit_edge
  ret i32 %count
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @hdcp_create_workqueue.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 657, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @hdcp_create_workqueue.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 659, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hdcp_create_workqueue.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 660, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hdcp_create_workqueue.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 661, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hdcp_create_workqueue.__key.7, !10, !"__key", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hdcp_create_workqueue.__key.9, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 662, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hdcp_create_workqueue.__key.11, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.12, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hdcp_create_workqueue.__key.13, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 663, i32 3}
!21 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hdcp_create_workqueue.__key.15, !20, !"__key", i1 false, i1 false}
!23 = !{ptr @.str.16, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hdcp_create_workqueue.__key.17, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 681, i32 2}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 684, i32 3}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hdcp_create_workqueue._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @hdcp_create_workqueue._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 109, i32 3}
!34 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @psp_set_srm._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @psp_set_srm._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 309, i32 4}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 491, i32 2}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 238, i32 3}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 418, i32 3}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @enable_assr._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @enable_assr._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 434, i32 3}
!50 = !{ptr @enable_assr._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @enable_assr._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 626, i32 19}
!54 = !{ptr @data_attr, !55, !"data_attr", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 625, i32 35}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 83, i32 3}
!58 = !{ptr @psp_get_srm._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @psp_get_srm._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_hdcp.c", i32 556, i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
!72 = !{!"branch_weights", i32 1, i32 2000}
