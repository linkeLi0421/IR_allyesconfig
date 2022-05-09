; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/clk_mgr/dce120/dce120_clk_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce120/dce120_clk_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.state_dependent_clocks = type { i32, i32 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mgr_internal = type { %struct.clk_mgr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [9 x %struct.state_dependent_clocks], i8, i8, i32, i32, i8, i8, i32, i32, i32, i32, i8, [12 x i32], i8, ptr, i64 }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.spread_spectrum_info = type { %struct.spread_spectrum_type, i32, i32, i32, %union.anon.37 }
%struct.spread_spectrum_type = type { i8 }
%union.anon.37 = type { %struct.step_and_delay_info }
%struct.step_and_delay_info = type { i32, i32, i32 }
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
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dm_pp_clock_for_voltage_req = type { i32, i32 }
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

@dce120_max_clks_by_state = internal constant { [5 x %struct.state_dependent_clocks], [56 x i8] } { [5 x %struct.state_dependent_clocks] [%struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks { i32 460000, i32 400000 }, %struct.state_dependent_clocks { i32 670000, i32 600000 }, %struct.state_dependent_clocks { i32 1133000, i32 600000 }], [56 x i8] zeroinitializer }, align 32
@dce120_funcs = internal global { %struct.clk_mgr_funcs, [36 x i8] } { %struct.clk_mgr_funcs { ptr @dce12_update_clocks, ptr @dce12_get_dp_ref_freq_khz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"dce120_max_clks_by_state\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 35, i32 44 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"dce120_funcs\00", align 1
@___asan_gen_.5 = private constant [76 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce120/dce120_clk_mgr.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 123, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @dce120_max_clks_by_state, ptr @dce120_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce120_max_clks_by_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce120_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce120_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) #3
  %max_clks_by_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8
  %0 = call ptr @memcpy(ptr %max_clks_by_state, ptr @dce120_max_clks_by_state, i32 40)
  %dprefclk_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 6
  %1 = ptrtoint ptr %dprefclk_khz to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 600000, ptr %dprefclk_khz, align 8
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce120_funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce121_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.spread_spectrum_info, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) #3
  %max_clks_by_state.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8
  %0 = call ptr @memcpy(ptr %max_clks_by_state.i, ptr @dce120_max_clks_by_state, i32 40)
  %dprefclk_khz.i = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 6
  %funcs.i = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 1
  %1 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dce120_funcs, ptr %funcs.i, align 4
  %2 = ptrtoint ptr %dprefclk_khz.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 625000, ptr %dprefclk_khz.i, align 8
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 8
  %hwseq = getelementptr inbounds %struct.dc, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwseq, align 4
  %call = tail call zeroext i1 @dce121_xgmi_enabled(ptr noundef %6) #3
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i) #3
  %7 = call ptr @memset(ptr %info.i, i32 0, i32 28)
  %8 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mgr, align 8
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dc_bios.i, align 4
  %xgmi_enabled.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 14
  %12 = ptrtoint ptr %xgmi_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %xgmi_enabled.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 4
  %get_spread_spectrum_info.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %get_spread_spectrum_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_spread_spectrum_info.i, align 4
  %call.i = call i32 %16(ptr noundef %11, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %info.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.dce121_clock_patch_xgmi_ss_info.exit_crit_edge

if.then.dce121_clock_patch_xgmi_ss_info.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %dce121_clock_patch_xgmi_ss_info.exit

land.lhs.true.i:                                  ; preds = %if.then
  %spread_spectrum_percentage.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %info.i, i32 0, i32 1
  %17 = ptrtoint ptr %spread_spectrum_percentage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %spread_spectrum_percentage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.not.i = icmp eq i32 %18, 0
  br i1 %cmp1.not.i, label %land.lhs.true.i.dce121_clock_patch_xgmi_ss_info.exit_crit_edge, label %if.then.i

land.lhs.true.i.dce121_clock_patch_xgmi_ss_info.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dce121_clock_patch_xgmi_ss_info.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %xgmi_enabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %xgmi_enabled.i, align 1
  %ss_on_dprefclk.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 13
  %20 = ptrtoint ptr %ss_on_dprefclk.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ss_on_dprefclk.i, align 4
  %spread_percentage_divider.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %info.i, i32 0, i32 2
  %21 = ptrtoint ptr %spread_percentage_divider.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spread_percentage_divider.i, align 4
  %dprefclk_ss_divider.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 16
  %23 = ptrtoint ptr %dprefclk_ss_divider.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dprefclk_ss_divider.i, align 4
  %24 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp3.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.dce121_clock_patch_xgmi_ss_info.exit_crit_edge

if.then.i.dce121_clock_patch_xgmi_ss_info.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dce121_clock_patch_xgmi_ss_info.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %dprefclk_ss_percentage.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 15
  %25 = ptrtoint ptr %dprefclk_ss_percentage.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %18, ptr %dprefclk_ss_percentage.i, align 8
  br label %dce121_clock_patch_xgmi_ss_info.exit

dce121_clock_patch_xgmi_ss_info.exit:             ; preds = %if.then5.i, %if.then.i.dce121_clock_patch_xgmi_ss_info.exit_crit_edge, %land.lhs.true.i.dce121_clock_patch_xgmi_ss_info.exit_crit_edge, %if.then.dce121_clock_patch_xgmi_ss_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #3
  br label %if.end

if.end:                                           ; preds = %dce121_clock_patch_xgmi_ss_info.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce121_xgmi_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce12_update_clocks(ptr noundef %clk_mgr_base, ptr noundef %context, i1 noundef zeroext %safe_to_lower) #0 align 64 {
entry:
  %clock_voltage_req = alloca %struct.dm_pp_clock_for_voltage_req, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_voltage_req) #3
  %0 = ptrtoint ptr %clock_voltage_req to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %clock_voltage_req, align 8
  %call = tail call i32 @dce_get_max_pixel_clock_for_all_paths(ptr noundef %context) #3
  %dispclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %1 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dispclk_khz, align 4
  %dfs_bypass_active = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 10
  %3 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dfs_bypass_active, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %mul = mul i32 %2, 115
  %div = sdiv i32 %mul, 100
  %patched_disp_clk.0 = select i1 %tobool.not, i32 %div, i32 %2
  %clks = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 2
  %5 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %patched_disp_clk.0, i32 %6)
  %cmp.i = icmp slt i32 %patched_disp_clk.0, %6
  %or.cond.i = and i1 %cmp.i, %safe_to_lower
  call void @__sanitizer_cov_trace_cmp4(i32 %patched_disp_clk.0, i32 %6)
  %cmp1.i = icmp sgt i32 %patched_disp_clk.0, %6
  %spec.select.i = or i1 %cmp1.i, %or.cond.i
  br i1 %spec.select.i, label %if.then4, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then4:                                         ; preds = %entry
  %7 = ptrtoint ptr %clock_voltage_req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %clock_voltage_req, align 8
  %xgmi_enabled = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 14
  %8 = ptrtoint ptr %xgmi_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %xgmi_enabled, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then4.if.end8_crit_edge, label %if.then6

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @dce_adjust_dp_ref_freq_for_ss(ptr noundef %clk_mgr_base, i32 noundef %patched_disp_clk.0) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4.if.end8_crit_edge
  %patched_disp_clk.1 = phi i32 [ %call7, %if.then6 ], [ %patched_disp_clk.0, %if.then4.if.end8_crit_edge ]
  %clocks_in_khz = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, ptr %clock_voltage_req, i32 0, i32 1
  %10 = ptrtoint ptr %clocks_in_khz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %patched_disp_clk.1, ptr %clocks_in_khz, align 4
  %call9 = tail call i32 @dce112_set_clock(ptr noundef %clk_mgr_base, i32 noundef %patched_disp_clk.1) #3
  %11 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %clks, align 4
  %12 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_mgr_base, align 4
  %call12 = call zeroext i1 @dm_pp_apply_clock_for_voltage_request(ptr noundef %13, ptr noundef nonnull %clock_voltage_req) #3
  br label %if.end13

if.end13:                                         ; preds = %if.end8, %entry.if.end13_crit_edge
  %phyclk_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %phyclk_khz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phyclk_khz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %15)
  %cmp.i45 = icmp slt i32 %call, %15
  %or.cond.i46 = and i1 %cmp.i45, %safe_to_lower
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %15)
  %cmp1.i47 = icmp sgt i32 %call, %15
  %spec.select.i48 = or i1 %cmp1.i47, %or.cond.i46
  br i1 %spec.select.i48, label %if.then17, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %clock_voltage_req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %clock_voltage_req, align 8
  %clocks_in_khz19 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, ptr %clock_voltage_req, i32 0, i32 1
  %17 = ptrtoint ptr %clocks_in_khz19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call, ptr %clocks_in_khz19, align 4
  %18 = ptrtoint ptr %phyclk_khz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %phyclk_khz, align 4
  %19 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_mgr_base, align 4
  %call23 = call zeroext i1 @dm_pp_apply_clock_for_voltage_request(ptr noundef %20, ptr noundef nonnull %clock_voltage_req) #3
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end13.if.end24_crit_edge
  %21 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_mgr_base, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  call void @dce11_pplib_apply_display_requirements(ptr noundef %24, ptr noundef %context) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_voltage_req) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce12_get_dp_ref_freq_khz(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_get_max_pixel_clock_for_all_paths(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_adjust_dp_ref_freq_for_ss(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce112_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_clock_for_voltage_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce11_pplib_apply_display_requirements(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @dce120_max_clks_by_state, !1, !"dce120_max_clks_by_state", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce120/dce120_clk_mgr.c", i32 35, i32 44}
!2 = !{ptr @dce120_funcs, !3, !"dce120_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce120/dce120_clk_mgr.c", i32 123, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
