; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/dce112_clk_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce112/dce112_clk_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.state_dependent_clocks = type { i32, i32 }
%struct.clk_mgr_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.clk_mgr_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bp_set_dce_clock_parameters = type { i32, i32, i32, %struct.set_dce_clock_flags }
%struct.set_dce_clock_flags = type { i8, [3 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
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
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mgr_internal = type { %struct.clk_mgr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [9 x %struct.state_dependent_clocks], i8, i8, i32, i32, i8, i8, i32, i32, i32, i32, i8, [12 x i32], i8, ptr, i64 }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dm_pp_power_level_change_request = type { i32 }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.60 }
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
%struct.anon.60 = type { i32 }

@dce112_max_clks_by_state = internal constant { [5 x %struct.state_dependent_clocks], [56 x i8] } { [5 x %struct.state_dependent_clocks] [%struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks { i32 389189, i32 346672 }, %struct.state_dependent_clocks { i32 459000, i32 400000 }, %struct.state_dependent_clocks { i32 667000, i32 600000 }, %struct.state_dependent_clocks { i32 1132000, i32 600000 }], [56 x i8] zeroinitializer }, align 32
@disp_clk_regs = internal constant { %struct.clk_mgr_registers, [52 x i8] } { %struct.clk_mgr_registers { i32 280, i32 292, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@disp_clk_shift = internal constant { %struct.clk_mgr_shift, [20 x i8] } { %struct.clk_mgr_shift { i8 0, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@disp_clk_mask = internal constant { %struct.clk_mgr_mask, [60 x i8] } { %struct.clk_mgr_mask { i32 7, i32 2130706432, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dce112_funcs = internal global { %struct.clk_mgr_funcs, [36 x i8] } { %struct.clk_mgr_funcs { ptr @dce112_update_clocks, ptr @dce_get_dp_ref_freq_khz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"dce112_max_clks_by_state\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 56, i32 44 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"disp_clk_regs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 44, i32 39 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"disp_clk_shift\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 48, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"disp_clk_mask\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 52, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"dce112_funcs\00", align 1
@___asan_gen_.14 = private constant [76 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce112/dce112_clk_mgr.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 222, i32 29 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @dce112_max_clks_by_state, ptr @disp_clk_regs, ptr @disp_clk_shift, ptr @disp_clk_mask, ptr @dce112_funcs], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_max_clks_by_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_shift to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce112_set_clock(ptr nocapture noundef %clk_mgr_base, i32 noundef %requested_clk_khz) local_unnamed_addr #0 align 64 {
entry:
  %dce_clk_params = alloca %struct.bp_set_dce_clock_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dce_clk_params) #4
  %0 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 3
  %3 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_mgr_base, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dc_bios, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res_pool, align 8
  %dmcu3 = getelementptr inbounds %struct.resource_pool, ptr %10, i32 0, i32 38
  %11 = ptrtoint ptr %dmcu3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmcu3, align 4
  %13 = getelementptr inbounds i8, ptr %dce_clk_params, i32 12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %dentist_vco_freq_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 7
  %15 = ptrtoint ptr %dentist_vco_freq_khz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dentist_vco_freq_khz, align 4
  %div = sdiv i32 %16, 62
  %17 = tail call i32 @llvm.smax.i32(i32 %div, i32 %requested_clk_khz)
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %0, align 4
  %19 = ptrtoint ptr %dce_clk_params to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %dce_clk_params, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %1, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  %set_dce_clock = getelementptr inbounds %struct.dc_vbios_funcs, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %set_dce_clock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_dce_clock, align 4
  %call = call i32 %24(ptr noundef %6, ptr noundef nonnull %dce_clk_params) #4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6 = icmp eq i32 %17, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cur_min_clks_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 18
  %27 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %cur_min_clks_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %1, align 4
  %30 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_mgr_base, align 4
  %chip_family = getelementptr inbounds %struct.dc_context, ptr %31, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %33)
  %cmp10 = icmp eq i32 %33, 141
  br i1 %cmp10, label %land.lhs.true, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

land.lhs.true:                                    ; preds = %if.end
  %hw_internal_rev = getelementptr inbounds %struct.dc_context, ptr %31, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %hw_internal_rev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_internal_rev, align 4
  %36 = add i32 %35, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %36)
  %37 = icmp ult i32 %36, 215
  br i1 %37, label %if.else, label %land.lhs.true.if.then19_crit_edge

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %38 = ptrtoint ptr %dce_clk_params to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dce_clk_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %39)
  %cmp21 = icmp eq i32 %39, 15
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %2, align 4
  %bf.shl = select i1 %cmp21, i8 16, i8 0
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load23 = load i8, ptr %2, align 4
  %bf.clear24 = and i8 %bf.load23, -17
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then19
  %storemerge = phi i8 [ %bf.set, %if.then19 ], [ %bf.clear24, %if.else ]
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %storemerge, ptr %2, align 4
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %6, align 4
  %set_dce_clock28 = getelementptr inbounds %struct.dc_vbios_funcs, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %set_dce_clock28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_dce_clock28, align 4
  %call29 = call i32 %46(ptr noundef %6, ptr noundef nonnull %dce_clk_params) #4
  %ctx30 = getelementptr inbounds %struct.dc, ptr %8, i32 0, i32 7
  %47 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx30, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp31 = icmp eq i32 %50, 1
  %tobool.not = icmp eq ptr %12, null
  %or.cond75 = select i1 %cmp31, i1 true, i1 %tobool.not
  br i1 %or.cond75, label %if.end26.if.end47_crit_edge, label %land.lhs.true34

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

land.lhs.true34:                                  ; preds = %if.end26
  %funcs35 = getelementptr inbounds %struct.dmcu, ptr %12, i32 0, i32 1
  %51 = ptrtoint ptr %funcs35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %funcs35, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %is_dmcu_initialized, align 4
  %call36 = call zeroext i1 %54(ptr noundef nonnull %12) #4
  br i1 %call36, label %if.then38, label %land.lhs.true34.if.end47_crit_edge

land.lhs.true34.if.end47_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then38:                                        ; preds = %land.lhs.true34
  %dfs_bypass_disp_clk = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 12
  %55 = ptrtoint ptr %dfs_bypass_disp_clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dfs_bypass_disp_clk, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %26)
  %cmp39.not = icmp eq i32 %56, %26
  br i1 %cmp39.not, label %if.then38.if.end47_crit_edge, label %if.then41

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %funcs35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %funcs35, align 4
  %set_psr_wait_loop = getelementptr inbounds %struct.dmcu_funcs, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %set_psr_wait_loop to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_psr_wait_loop, align 4
  %div44 = sdiv i32 %26, 7000
  call void %60(ptr noundef nonnull %12, i32 noundef %div44) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.then38.if.end47_crit_edge, %land.lhs.true34.if.end47_crit_edge, %if.end26.if.end47_crit_edge
  %dfs_bypass_disp_clk48 = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 12
  %61 = ptrtoint ptr %dfs_bypass_disp_clk48 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %26, ptr %dfs_bypass_disp_clk48, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dce_clk_params) #4
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce112_set_dispclk(ptr nocapture noundef %clk_mgr, i32 noundef %requested_clk_khz) local_unnamed_addr #0 align 64 {
entry:
  %dce_clk_params = alloca %struct.bp_set_dce_clock_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dce_clk_params) #4
  %0 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 2
  %2 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_mgr, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_bios, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res_pool, align 8
  %dmcu4 = getelementptr inbounds %struct.resource_pool, ptr %9, i32 0, i32 38
  %10 = ptrtoint ptr %dmcu4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmcu4, align 4
  %12 = getelementptr inbounds i8, ptr %dce_clk_params, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_clk_khz)
  %cmp = icmp sgt i32 %requested_clk_khz, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dentist_vco_freq_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 7
  %14 = ptrtoint ptr %dentist_vco_freq_khz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dentist_vco_freq_khz, align 4
  %div = sdiv i32 %15, 62
  %16 = tail call i32 @llvm.smax.i32(i32 %div, i32 %requested_clk_khz)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %requested_clk_khz.addr.0 = phi i32 [ %requested_clk_khz, %entry.if.end_crit_edge ], [ %16, %if.then ]
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %requested_clk_khz.addr.0, ptr %0, align 4
  %18 = ptrtoint ptr %dce_clk_params to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %dce_clk_params, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %1, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %set_dce_clock = getelementptr inbounds %struct.dc_vbios_funcs, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %set_dce_clock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_dce_clock, align 4
  %call = call i32 %23(ptr noundef %5, ptr noundef nonnull %dce_clk_params) #4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_clk_khz.addr.0)
  %cmp8 = icmp eq i32 %requested_clk_khz.addr.0, 0
  br i1 %cmp8, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cur_min_clks_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 18
  %26 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %cur_min_clks_state, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %ctx11 = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 7
  %27 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx11, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp12 = icmp eq i32 %30, 1
  %tobool.not = icmp eq ptr %11, null
  %or.cond = select i1 %cmp12, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end10.if.end24_crit_edge, label %land.lhs.true

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end10
  %funcs14 = getelementptr inbounds %struct.dmcu, ptr %11, i32 0, i32 1
  %31 = ptrtoint ptr %funcs14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs14, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %is_dmcu_initialized, align 4
  %call15 = call zeroext i1 %34(ptr noundef nonnull %11) #4
  br i1 %call15, label %if.then16, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then16:                                        ; preds = %land.lhs.true
  %dfs_bypass_disp_clk = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 12
  %35 = ptrtoint ptr %dfs_bypass_disp_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dfs_bypass_disp_clk, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %25)
  %cmp17.not = icmp eq i32 %36, %25
  br i1 %cmp17.not, label %if.then16.if.end24_crit_edge, label %if.then18

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %funcs14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %funcs14, align 4
  %set_psr_wait_loop = getelementptr inbounds %struct.dmcu_funcs, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %set_psr_wait_loop to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_psr_wait_loop, align 4
  %div21 = sdiv i32 %25, 7000
  call void %40(ptr noundef nonnull %11, i32 noundef %div21) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then16.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %dfs_bypass_disp_clk25 = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 12
  %41 = ptrtoint ptr %dfs_bypass_disp_clk25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %25, ptr %dfs_bypass_disp_clk25, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dce_clk_params) #4
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce112_set_dprefclk(ptr nocapture noundef readonly %clk_mgr) local_unnamed_addr #0 align 64 {
entry:
  %dce_clk_params = alloca %struct.bp_set_dce_clock_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dce_clk_params) #4
  %0 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %dce_clk_params, i32 0, i32 3
  %3 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_mgr, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dc_bios, align 4
  %7 = getelementptr inbounds i8, ptr %dce_clk_params, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 12)
  %9 = ptrtoint ptr %dce_clk_params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %dce_clk_params, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load16 = load i8, ptr %2, align 4
  %storemerge = and i8 %bf.load16, -17
  store i8 %storemerge, ptr %2, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %set_dce_clock = getelementptr inbounds %struct.dc_vbios_funcs, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %set_dce_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_dce_clock, align 4
  %call = call i32 %15(ptr noundef %6, ptr noundef nonnull %dce_clk_params) #4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dce_clk_params) #4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce112_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) #4
  %max_clks_by_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8
  %0 = call ptr @memcpy(ptr %max_clks_by_state, ptr @dce112_max_clks_by_state, i32 40)
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
  store ptr @dce112_funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce112_update_clocks(ptr noundef %clk_mgr_base, ptr noundef %context, i1 noundef zeroext %safe_to_lower) #0 align 64 {
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
  %call17 = call i32 @dce112_set_clock(ptr noundef %clk_mgr_base, i32 noundef %patched_disp_clk.0)
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
  call void @dce11_pplib_apply_display_requirements(ptr noundef %19, ptr noundef %context) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level_change_req) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_get_dp_ref_freq_khz(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_get_required_clocks_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_power_level_change_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce11_pplib_apply_display_requirements(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @dce112_max_clks_by_state, !1, !"dce112_max_clks_by_state", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce112/dce112_clk_mgr.c", i32 56, i32 44}
!2 = !{ptr @disp_clk_regs, !3, !"disp_clk_regs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce112/dce112_clk_mgr.c", i32 44, i32 39}
!4 = !{ptr @disp_clk_shift, !5, !"disp_clk_shift", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce112/dce112_clk_mgr.c", i32 48, i32 35}
!6 = !{ptr @disp_clk_mask, !7, !"disp_clk_mask", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce112/dce112_clk_mgr.c", i32 52, i32 34}
!8 = !{ptr @dce112_funcs, !9, !"dce112_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce112/dce112_clk_mgr.c", i32 222, i32 29}
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
