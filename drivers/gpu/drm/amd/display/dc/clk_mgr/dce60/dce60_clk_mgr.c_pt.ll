; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/clk_mgr/dce60/dce60_clk_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.state_dependent_clocks = type { i32, i32 }
%struct.clk_mgr_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.clk_mgr_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mgr_internal = type { %struct.clk_mgr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [9 x %struct.state_dependent_clocks], i8, i8, i32, i32, i8, i8, i32, i32, i32, i32, i8, [12 x i32], i8, ptr, i64 }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.dm_pp_power_level_change_request = type { i32 }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.63 }
%struct.dc_stream_status = type { i32, i32, i32, i32, %struct.timing_sync_info, [4 x ptr], i8 }
%struct.timing_sync_info = type { i32, i32, i8 }
%struct.resource_context = type { [6 x %struct.pipe_ctx], [12 x i8], [6 x i8], [7 x i8], i8, [6 x i8], %struct.link_enc_cfg_context }
%struct.pipe_ctx = type { ptr, ptr, %struct.plane_resource, %struct.stream_resource, %struct.link_resource, ptr, %struct.pll_settings, i8, i8, ptr, ptr, ptr, ptr, %union.pipe_update_flags, ptr, ptr, i8 }
%struct.plane_resource = type { %struct.scaler_data, ptr, ptr, ptr, ptr, ptr, i8, %struct.dcn_fe_bandwidth }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i64 }
%struct.scl_inits = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.sharpness_adj = type { i32, i32 }
%struct.line_buffer_params = type { i8, i8, i8, i32, i32 }
%struct.dcn_fe_bandwidth = type { i32 }
%struct.stream_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.pixel_clk_params, %struct.encoder_info_frame, ptr, i8 }
%struct.pixel_clk_params = type { i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, %struct.csdp_ref_clk_ds_params, i32, %struct.pixel_clk_flags }
%struct.graphics_object_id = type { i32 }
%struct.csdp_ref_clk_ds_params = type { i8, i32, i32, i32 }
%struct.pixel_clk_flags = type { i8, [3 x i8] }
%struct.encoder_info_frame = type { %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.link_resource = type { ptr }
%struct.pll_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.pipe_update_flags = type { i32 }
%struct.link_enc_cfg_context = type { i32, [6 x %struct.link_enc_assignment], [7 x i32], [6 x %struct.link_enc_assignment] }
%struct.link_enc_assignment = type { i8, %struct.display_endpoint_id, i32, ptr }
%struct.display_endpoint_id = type { %struct.graphics_object_id, i32 }
%struct.bw_context = type { %union.bw_output, %struct.display_mode_lib }
%union.bw_output = type { %struct.dce_bw_output }
%struct.dce_bw_output = type { i8, i8, i8, i8, i8, [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], i32, i32, i32, i32, i32 }
%struct.dce_watermarks = type { i32, i32, i32, i32 }
%struct.display_mode_lib = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, %struct.vba_vars_st, ptr, %struct.dml_funcs, [6 x %struct._vcs_dpi_display_e2e_pipe_params_st] }
%struct._vcs_dpi_ip_params_st = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, double, double, double, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_soc_bounding_box_st = type { [9 x %struct._vcs_dpi_voltage_scaling_st], i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, double, double, i32, double, i8, double, double, i8, i8, i32 }
%struct._vcs_dpi_voltage_scaling_st = type { i32, double, double, double, double, double, double, double, double, double, double, double }
%struct.vba_vars_st = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, i8, double, double, double, double, double, double, double, double, double, i8, double, i32, i32, double, double, double, double, double, double, double, i32, double, double, double, [8 x double], double, double, double, double, i32, i8, i8, i8, i8, i32, double, double, double, double, i8, i32, i8, i32, i32, i32, i32, [8 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i8, double, i32, [8 x i32], double, i32, i32, i32, double, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, double, i32, i8, double, double, double, double, double, double, double, double, double, double, double, double, i8, i32, double, double, double, double, double, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x double], double, [8 x i32], [8 x double], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], i8, [8 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [8 x i8], [8 x i8], i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, double, i32, i32, i32, double, [9 x [2 x i32]], [9 x [2 x i32]], i32, i32, i8, double, i8, [8 x i8], double, double, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x i32], [8 x double], [8 x double], i32, double, [8 x %struct._vcs_dpi_display_e2e_pipe_params_st], i32, [8 x i32], i8, double, double, i32, i8, i8, [9 x double], [9 x [2 x double]], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], i32, i8, i8, double, i8, i8, i8, i8, [9 x i8], i32, double, double, [9 x [2 x [8 x i8]]], i8, i8, i8, i8, i8, i8, i8, [9 x i32], double, double, double, double, double, double, double, double, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [9 x [2 x double]], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i32, double, double, double, double, double, double, [9 x [2 x double]], double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [9 x [2 x double]], [9 x [2 x [8 x i32]]], [8 x i32], [9 x [8 x i32]], [8 x double], [9 x [2 x [8 x i32]]], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x double], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i32]], [9 x [2 x i32]], [9 x [2 x i8]], [9 x [2 x double]], [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x double], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [8 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [8 x i8]], [9 x [8 x i32]], [9 x [8 x double]], [9 x [8 x double]], [9 x [8 x double]], [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i8]], [9 x [8 x double]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i32]], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x i8]]], [8 x double], double, double, [8 x double], [8 x double], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], double, double, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i8, [8 x i8], double, double, [9 x [2 x i32]], i8, [9 x i8], [8 x i32], [8 x double], [8 x i8], [8 x double], [8 x double], [9 x [2 x i32]], i32, i32, i32, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, i32, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], i32, i32, double, [8 x double], [8 x double], [8 x double], i32, [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], double, [8 x i8], i32, double, double, double, [8 x i32], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [8 x double], [9 x double], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [8 x double], [8 x double], [8 x double], double, i32, double, i8, double, double, double, double, double, i8, [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], i8, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], double, double, double, [8 x i8], i32, i8, double, double, [8 x double], [8 x double], [9 x double], i8, i8, i32, [8 x i32], [8 x i32], i32, [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [9 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], double, i32, i8, i8, i8, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i8], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [9 x [2 x i32]] }
%struct._vcs_dpi_display_e2e_pipe_params_st = type { %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_output_params_st, %struct._vcs_dpi_display_clocks_and_cfg_st }
%struct._vcs_dpi_display_pipe_params_st = type { %struct._vcs_dpi_display_pipe_source_params_st, %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_scaler_ratio_depth_st, %struct._vcs_dpi_scaler_taps_st }
%struct._vcs_dpi_display_pipe_source_params_st = type { i32, double, double, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, %struct._vcs_dpi_display_xfc_params_st, i8, i8 }
%struct._vcs_dpi_display_xfc_params_st = type { double, double, double, i32 }
%struct._vcs_dpi_display_pipe_dest_params_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, double, i8, i8, i32, i8, i32, i32 }
%struct._vcs_dpi_scaler_ratio_depth_st = type { double, double, double, double, double, double, double, double, i32, i32 }
%struct._vcs_dpi_scaler_taps_st = type { i32, i32, i32, i32 }
%struct._vcs_dpi_display_output_params_st = type { i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.writeback_st }
%struct.writeback_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double }
%struct._vcs_dpi_display_clocks_and_cfg_st = type { i32, double, double, double, double, double }
%struct.dml_funcs = type { ptr, ptr, ptr, ptr }
%struct.dm_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [6 x %struct.dm_pp_single_disp_config], i8, i32 }
%struct.dm_pp_single_disp_config = type { i32, i8, i8, i8, i32, i32, i32, i32, %struct.dc_link_settings }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.63 = type { i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.1, %struct.anon.2, %struct.anon.3, i32, i32 }
%struct.anon.1 = type { i8, [3 x i8] }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.6, %struct.anon.7, i8, i8, i64 }
%struct.anon.6 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.7 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.72 }
%struct.anon.72 = type { [3 x i8], [6 x i8], i8, [2 x i8] }

@dce60_max_clks_by_state = internal constant { [5 x %struct.state_dependent_clocks], [56 x i8] } { [5 x %struct.state_dependent_clocks] [%struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks { i32 352000, i32 330000 }, %struct.state_dependent_clocks { i32 600000, i32 400000 }, %struct.state_dependent_clocks { i32 600000, i32 400000 }], [56 x i8] zeroinitializer }, align 32
@disp_clk_regs = internal constant { %struct.clk_mgr_registers, [52 x i8] } { %struct.clk_mgr_registers { i32 0, i32 292, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@disp_clk_shift = internal constant { %struct.clk_mgr_shift, [20 x i8] } { %struct.clk_mgr_shift { i8 0, i8 0, i8 0, i8 19, i8 0, i8 0, i8 0, i8 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@disp_clk_mask = internal constant { %struct.clk_mgr_mask, [60 x i8] } { %struct.clk_mgr_mask { i32 0, i32 0, i32 127, i32 524288, i32 0, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dce60_funcs = internal global { %struct.clk_mgr_funcs, [36 x i8] } { %struct.clk_mgr_funcs { ptr @dce60_update_clocks, ptr @dce60_get_dp_ref_freq_khz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"dce60_max_clks_by_state\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 71, i32 44 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"disp_clk_regs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 57, i32 39 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"disp_clk_shift\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 61, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"disp_clk_mask\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 65, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"dce60_funcs\00", align 1
@___asan_gen_.14 = private constant [74 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 154, i32 29 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @dce60_max_clks_by_state, ptr @disp_clk_regs, ptr @disp_clk_shift, ptr @disp_clk_mask, ptr @dce60_funcs], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_max_clks_by_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_shift to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce60_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) #4
  %max_clks_by_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8
  %0 = call ptr @memcpy(ptr %max_clks_by_state, ptr @dce60_max_clks_by_state, i32 40)
  %regs = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 5
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @disp_clk_regs, ptr %regs, align 4
  %clk_mgr_shift = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 6
  %2 = ptrtoint ptr %clk_mgr_shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @disp_clk_shift, ptr %clk_mgr_shift, align 8
  %clk_mgr_mask = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 7
  %3 = ptrtoint ptr %clk_mgr_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @disp_clk_mask, ptr %clk_mgr_mask, align 4
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dce60_funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_update_clocks(ptr noundef %clk_mgr_base, ptr noundef %context, i1 noundef zeroext %safe_to_lower) #0 align 64 {
entry:
  %level_change_req = alloca %struct.dm_pp_power_level_change_request, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level_change_req) #4
  %dispclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %0 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dispclk_khz, align 4
  %dfs_bypass_active = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 10
  %2 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dfs_bypass_active, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %mul = mul i32 %1, 115
  %div = sdiv i32 %mul, 100
  %patched_disp_clk.0 = select i1 %tobool.not, i32 %div, i32 %1
  %call = tail call i32 @dce_get_required_clocks_state(ptr noundef %clk_mgr_base, ptr noundef %context) #4
  %4 = ptrtoint ptr %level_change_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %level_change_req, align 4
  %cur_min_clks_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 18
  %5 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_min_clks_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp = icmp ult i32 %call, %6
  %7 = and i1 %cmp, %safe_to_lower
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp5 = icmp ugt i32 %call, %6
  %or.cond = or i1 %cmp5, %7
  br i1 %or.cond, label %if.then6, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then6:                                         ; preds = %entry
  %8 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mgr_base, align 4
  %call7 = call zeroext i1 @dm_pp_apply_power_level_change_request(ptr noundef %9, ptr noundef nonnull %level_change_req) #4
  br i1 %call7, label %if.then8, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %level_change_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level_change_req, align 4
  %12 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cur_min_clks_state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then6.if.end12_crit_edge, %entry.if.end12_crit_edge
  %clks = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 2
  %13 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %patched_disp_clk.0, i32 %14)
  %cmp.i = icmp slt i32 %patched_disp_clk.0, %14
  %or.cond.i = and i1 %cmp.i, %safe_to_lower
  call void @__sanitizer_cov_trace_cmp4(i32 %patched_disp_clk.0, i32 %14)
  %cmp1.i = icmp sgt i32 %patched_disp_clk.0, %14
  %spec.select.i = or i1 %cmp1.i, %or.cond.i
  br i1 %spec.select.i, label %if.then16, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = call i32 @dce_set_clock(ptr noundef %clk_mgr_base, i32 noundef %patched_disp_clk.0) #4
  %15 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17, ptr %clks, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end12.if.end20_crit_edge
  %16 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_mgr_base, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %pp_display_cfg1.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6
  %call.i = call i32 @dce110_get_min_vblank_time_us(ptr noundef %context) #4
  %avail_mclk_switch_time_us.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 7
  %20 = ptrtoint ptr %avail_mclk_switch_time_us.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %avail_mclk_switch_time_us.i, align 4
  call void @dce110_fill_display_configs(ptr noundef %context, ptr noundef %pp_display_cfg1.i) #4
  %current_state.i = getelementptr inbounds %struct.dc, ptr %19, i32 0, i32 11
  %21 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_state.i, align 4
  %pp_display_cfg2.i = getelementptr inbounds %struct.dc_state, ptr %22, i32 0, i32 6
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(292) %pp_display_cfg2.i, ptr noundef dereferenceable(292) %pp_display_cfg1.i, i32 292) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %if.end20.dce60_pplib_apply_display_requirements.exit_crit_edge, label %if.then.i

if.end20.dce60_pplib_apply_display_requirements.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce60_pplib_apply_display_requirements.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %ctx.i = getelementptr inbounds %struct.dc, ptr %19, i32 0, i32 7
  %23 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx.i, align 8
  %call4.i = call zeroext i1 @dm_pp_apply_display_requirements(ptr noundef %24, ptr noundef %pp_display_cfg1.i) #4
  br label %dce60_pplib_apply_display_requirements.exit

dce60_pplib_apply_display_requirements.exit:      ; preds = %if.then.i, %if.end20.dce60_pplib_apply_display_requirements.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level_change_req) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce60_get_dp_ref_freq_khz(ptr noundef %clk_mgr_base) #0 align 64 {
entry:
  %dprefclk_wdivider = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dprefclk_wdivider) #4
  %0 = ptrtoint ptr %dprefclk_wdivider to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dprefclk_wdivider, align 4, !annotation !20
  %1 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_mgr_base, align 8
  %regs = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %DENTIST_DISPCLK_CNTL = getelementptr inbounds %struct.clk_mgr_registers, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %DENTIST_DISPCLK_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DENTIST_DISPCLK_CNTL, align 4
  %clk_mgr_shift = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 6
  %7 = ptrtoint ptr %clk_mgr_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_mgr_shift, align 8
  %DENTIST_DPREFCLK_WDIVIDER = getelementptr inbounds %struct.clk_mgr_shift, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %DENTIST_DPREFCLK_WDIVIDER to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DENTIST_DPREFCLK_WDIVIDER, align 1
  %clk_mgr_mask = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 7
  %11 = ptrtoint ptr %clk_mgr_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_mgr_mask, align 4
  %DENTIST_DPREFCLK_WDIVIDER1 = getelementptr inbounds %struct.clk_mgr_mask, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %DENTIST_DPREFCLK_WDIVIDER1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DENTIST_DPREFCLK_WDIVIDER1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %dprefclk_wdivider) #4
  %15 = ptrtoint ptr %dprefclk_wdivider to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dprefclk_wdivider, align 4
  %call2 = call i32 @dentist_get_divider_from_did(i32 noundef %16) #4
  %dentist_vco_freq_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 7
  %17 = ptrtoint ptr %dentist_vco_freq_khz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dentist_vco_freq_khz, align 4
  %mul = shl i32 %18, 2
  %div = sdiv i32 %mul, %call2
  %call4 = call i32 @dce_adjust_dp_ref_freq_for_ss(ptr noundef %clk_mgr_base, i32 noundef %div) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dprefclk_wdivider) #4
  ret i32 %call4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_get_required_clocks_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_power_level_change_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce110_get_min_vblank_time_us(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_fill_display_configs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_display_requirements(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dentist_get_divider_from_did(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_adjust_dp_ref_freq_for_ss(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @dce60_max_clks_by_state, !1, !"dce60_max_clks_by_state", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c", i32 71, i32 44}
!2 = !{ptr @disp_clk_regs, !3, !"disp_clk_regs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c", i32 57, i32 39}
!4 = !{ptr @disp_clk_shift, !5, !"disp_clk_shift", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c", i32 61, i32 35}
!6 = !{ptr @disp_clk_mask, !7, !"disp_clk_mask", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c", i32 65, i32 34}
!8 = !{ptr @dce60_funcs, !9, !"dce60_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c", i32 154, i32 29}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{!"auto-init"}
