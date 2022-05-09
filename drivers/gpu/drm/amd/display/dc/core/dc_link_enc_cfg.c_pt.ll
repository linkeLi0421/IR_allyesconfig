; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_link_enc_cfg.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dc_phy_addr_space_config = type { %struct.anon.55, %struct.anon.56, i8, i8, i64 }
%struct.anon.55 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.36, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.18 }
%union.anon.18 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.19 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.19 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.24, i32, i32, i32, i32 }
%struct.anon.24 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.25 }
%struct.anon.25 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.36 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.16 }
%struct.anon.16 = type { i8 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.41 }
%struct.anon.41 = type { i8 }
%union.max_lane_count = type { %struct.anon.42 }
%struct.anon.42 = type { i8 }
%union.max_down_spread = type { %struct.anon.43 }
%struct.anon.43 = type { i8 }
%union.dprx_feature = type { %struct.anon.44 }
%struct.anon.44 = type { i8 }
%union.sink_count = type { %struct.anon.45 }
%struct.anon.45 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.47 }
%struct.anon.47 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.48 }
%struct.anon.48 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.49 }
%struct.anon.49 = type { i8 }
%union.dpia_info = type { %struct.anon.50 }
%struct.anon.50 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.51 }
%struct.anon.51 = type { i8, i8, %struct.anon.52 }
%struct.anon.52 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.53 }
%struct.anon.53 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.54 }
%struct.anon.54 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.encoder_feature_support = type { %union.anon.39, i32, i32, i8, i8, i8 }
%union.anon.39 = type { i32 }

@link_enc_cfg_link_encs_assign.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c\00", [32 x i8] zeroinitializer }, align 32
@link_enc_cfg_link_encs_assign.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@link_enc_cfg_link_encs_assign.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@link_enc_cfg_validate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid link encoder assignments: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@add_link_enc_assignment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 284, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 632, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.5], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @link_enc_cfg_init(ptr nocapture noundef readonly %dc, ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx.i, align 4
  %eng_id.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %eng_id.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %eng_id.i, align 4
  %stream.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream.i, align 4
  %cmp9.not.i = icmp eq ptr %3, null
  br i1 %cmp9.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_stream_release(ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stream.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.1.i, align 4
  %eng_id.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 2
  %6 = ptrtoint ptr %eng_id.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %eng_id.1.i, align 4
  %stream.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 3
  %7 = ptrtoint ptr %stream.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream.1.i, align 4
  %cmp9.not.1.i = icmp eq ptr %8, null
  br i1 %cmp9.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_stream_release(ptr noundef nonnull %8) #5
  %9 = ptrtoint ptr %stream.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %stream.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.2.i, align 4
  %eng_id.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 2
  %11 = ptrtoint ptr %eng_id.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %eng_id.2.i, align 4
  %stream.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 3
  %12 = ptrtoint ptr %stream.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream.2.i, align 4
  %cmp9.not.2.i = icmp eq ptr %13, null
  br i1 %cmp9.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_stream_release(ptr noundef nonnull %13) #5
  %14 = ptrtoint ptr %stream.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %stream.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.3.i, align 4
  %eng_id.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 2
  %16 = ptrtoint ptr %eng_id.3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %eng_id.3.i, align 4
  %stream.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 3
  %17 = ptrtoint ptr %stream.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream.3.i, align 4
  %cmp9.not.3.i = icmp eq ptr %18, null
  br i1 %cmp9.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_stream_release(ptr noundef nonnull %18) #5
  %19 = ptrtoint ptr %stream.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %stream.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.4.i, align 4
  %eng_id.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 2
  %21 = ptrtoint ptr %eng_id.4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %eng_id.4.i, align 4
  %stream.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 3
  %22 = ptrtoint ptr %stream.4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream.4.i, align 4
  %cmp9.not.4.i = icmp eq ptr %23, null
  br i1 %cmp9.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_stream_release(ptr noundef nonnull %23) #5
  %24 = ptrtoint ptr %stream.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %stream.4.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx.5.i, align 4
  %eng_id.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 2
  %26 = ptrtoint ptr %eng_id.5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %eng_id.5.i, align 4
  %stream.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 3
  %27 = ptrtoint ptr %stream.5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream.5.i, align 4
  %cmp9.not.5.i = icmp eq ptr %28, null
  br i1 %cmp9.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_stream_release(ptr noundef nonnull %28) #5
  %29 = ptrtoint ptr %stream.5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %stream.5.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %30 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %res_pool.i, align 8
  %res_cap57.i = getelementptr inbounds %struct.resource_pool, ptr %31, i32 0, i32 41
  %32 = ptrtoint ptr %res_cap57.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %res_cap57.i, align 4
  %num_dig_link_enc58.i = getelementptr inbounds %struct.resource_caps, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %num_dig_link_enc58.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_dig_link_enc58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp2159.not.i = icmp eq i32 %35, 0
  br i1 %cmp2159.not.i, label %for.inc.5.i.clear_enc_assignments.exit_crit_edge, label %for.inc.5.i.for.body22.i_crit_edge

for.inc.5.i.for.body22.i_crit_edge:               ; preds = %for.inc.5.i
  br label %for.body22.i

for.inc.5.i.clear_enc_assignments.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clear_enc_assignments.exit

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.inc.5.i.for.body22.i_crit_edge
  %36 = phi ptr [ %42, %for.body22.i.for.body22.i_crit_edge ], [ %31, %for.inc.5.i.for.body22.i_crit_edge ]
  %i.160.i = phi i32 [ %inc35.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %for.inc.5.i.for.body22.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.resource_pool, ptr %36, i32 0, i32 22, i32 %i.160.i
  %37 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx24.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  %spec.select.i = select i1 %tobool.not.i, i32 -1, i32 %i.160.i
  %39 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %i.160.i
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select.i, ptr %39, align 4
  %inc35.i = add nuw i32 %i.160.i, 1
  %41 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %res_pool.i, align 8
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %42, i32 0, i32 41
  %43 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %res_cap.i, align 4
  %num_dig_link_enc.i = getelementptr inbounds %struct.resource_caps, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %num_dig_link_enc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_dig_link_enc.i, align 4
  %cmp21.i = icmp ult i32 %inc35.i, %46
  br i1 %cmp21.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.clear_enc_assignments.exit_crit_edge

for.body22.i.clear_enc_assignments.exit_crit_edge: ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clear_enc_assignments.exit

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22.i

clear_enc_assignments.exit:                       ; preds = %for.body22.i.clear_enc_assignments.exit_crit_edge, %for.inc.5.i.clear_enc_assignments.exit_crit_edge
  %link_enc_cfg_ctx = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 4, i32 6
  %47 = ptrtoint ptr %link_enc_cfg_ctx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %link_enc_cfg_ctx, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @link_enc_cfg_link_encs_assign(ptr nocapture noundef readonly %dc, ptr noundef %state, ptr nocapture noundef readonly %streams, i8 noundef zeroext %stream_count) local_unnamed_addr #0 align 64 {
entry:
  %link_settings.i444 = alloca %struct.dc_link_settings, align 4
  %link_settings.i409 = alloca %struct.dc_link_settings, align 4
  %link_settings.i = alloca %struct.dc_link_settings, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count1 = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count1, align 8
  %conv2 = zext i8 %stream_count to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %stream_count)
  %cmp.not = icmp eq i8 %1, %stream_count
  br i1 %cmp.not, label %entry.do.end45_crit_edge, label %land.rhs

entry.do.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

land.rhs:                                         ; preds = %entry
  %.b405 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done, align 1
  br i1 %.b405, label %land.rhs.if.then42_crit_edge, label %if.then, !prof !22

land.rhs.if.then42_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef null) #5
  br label %if.then42

if.then42:                                        ; preds = %if.then, %land.rhs.if.then42_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %entry.do.end45_crit_edge
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state, align 4
  %stream_count46494 = getelementptr inbounds %struct.dc_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %stream_count46494 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stream_count46494, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp48496.not = icmp eq i8 %5, 0
  br i1 %cmp48496.not, label %do.end45.for.cond52.preheader_crit_edge, label %for.body.lr.ph

do.end45.for.cond52.preheader_crit_edge:          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond52.preheader

for.body.lr.ph:                                   ; preds = %do.end45
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  br label %for.body

for.cond52.preheader:                             ; preds = %for.body.for.cond52.preheader_crit_edge, %do.end45.for.cond52.preheader_crit_edge
  %arrayidx58 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx58, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp61.not = icmp eq i8 %7, 0
  br i1 %cmp61.not, label %for.cond52.preheader.for.inc123_crit_edge, label %land.rhs72

for.cond52.preheader.for.inc123_crit_edge:        ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %3, %for.body.lr.ph ], [ %18, %for.body.for.body_crit_edge ]
  %i.0497 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %10, i32 0, i32 40
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs, align 4
  %link_enc_unassign = getelementptr inbounds %struct.resource_funcs, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %link_enc_unassign to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link_enc_unassign, align 4
  %arrayidx = getelementptr [6 x ptr], ptr %8, i32 0, i32 %i.0497
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void %14(ptr noundef %state, ptr noundef %16) #5
  %inc = add nuw nsw i32 %i.0497, 1
  %17 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %current_state, align 4
  %stream_count46 = getelementptr inbounds %struct.dc_state, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %stream_count46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %stream_count46, align 8
  %conv47 = zext i8 %20 to i32
  %cmp48 = icmp ult i32 %inc, %conv47
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %for.body.for.cond52.preheader_crit_edge

for.body.for.cond52.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond52.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body130.lr.ph:                                ; preds = %for.inc123.5
  %link_rate.i = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings.i, i32 0, i32 1
  br label %for.body130

land.rhs72:                                       ; preds = %for.cond52.preheader
  %.b401404 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  br i1 %.b401404, label %land.rhs72.if.then119_crit_edge, label %if.then83, !prof !22

land.rhs72.if.then119_crit_edge:                  ; preds = %land.rhs72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then119

if.then83:                                        ; preds = %land.rhs72
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #5
  br label %if.then119

if.then119:                                       ; preds = %if.then83, %land.rhs72.if.then119_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %for.inc123

for.inc123:                                       ; preds = %if.then119, %for.cond52.preheader.for.inc123_crit_edge
  %arrayidx58.1 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx58.1, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp61.not.1 = icmp eq i8 %22, 0
  br i1 %cmp61.not.1, label %for.inc123.for.inc123.1_crit_edge, label %land.rhs72.1

for.inc123.for.inc123.1_crit_edge:                ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123.1

land.rhs72.1:                                     ; preds = %for.inc123
  %.b401404.1 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  br i1 %.b401404.1, label %land.rhs72.1.if.then119.1_crit_edge, label %if.then83.1, !prof !22

land.rhs72.1.if.then119.1_crit_edge:              ; preds = %land.rhs72.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then119.1

if.then83.1:                                      ; preds = %land.rhs72.1
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #5
  br label %if.then119.1

if.then119.1:                                     ; preds = %if.then83.1, %land.rhs72.1.if.then119.1_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %for.inc123.1

for.inc123.1:                                     ; preds = %if.then119.1, %for.inc123.for.inc123.1_crit_edge
  %arrayidx58.2 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx58.2, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp61.not.2 = icmp eq i8 %24, 0
  br i1 %cmp61.not.2, label %for.inc123.1.for.inc123.2_crit_edge, label %land.rhs72.2

for.inc123.1.for.inc123.2_crit_edge:              ; preds = %for.inc123.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123.2

land.rhs72.2:                                     ; preds = %for.inc123.1
  %.b401404.2 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  br i1 %.b401404.2, label %land.rhs72.2.if.then119.2_crit_edge, label %if.then83.2, !prof !22

land.rhs72.2.if.then119.2_crit_edge:              ; preds = %land.rhs72.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then119.2

if.then83.2:                                      ; preds = %land.rhs72.2
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #5
  br label %if.then119.2

if.then119.2:                                     ; preds = %if.then83.2, %land.rhs72.2.if.then119.2_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %for.inc123.2

for.inc123.2:                                     ; preds = %if.then119.2, %for.inc123.1.for.inc123.2_crit_edge
  %arrayidx58.3 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx58.3, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp61.not.3 = icmp eq i8 %26, 0
  br i1 %cmp61.not.3, label %for.inc123.2.for.inc123.3_crit_edge, label %land.rhs72.3

for.inc123.2.for.inc123.3_crit_edge:              ; preds = %for.inc123.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123.3

land.rhs72.3:                                     ; preds = %for.inc123.2
  %.b401404.3 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  br i1 %.b401404.3, label %land.rhs72.3.if.then119.3_crit_edge, label %if.then83.3, !prof !22

land.rhs72.3.if.then119.3_crit_edge:              ; preds = %land.rhs72.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then119.3

if.then83.3:                                      ; preds = %land.rhs72.3
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #5
  br label %if.then119.3

if.then119.3:                                     ; preds = %if.then83.3, %land.rhs72.3.if.then119.3_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %for.inc123.3

for.inc123.3:                                     ; preds = %if.then119.3, %for.inc123.2.for.inc123.3_crit_edge
  %arrayidx58.4 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx58.4, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp61.not.4 = icmp eq i8 %28, 0
  br i1 %cmp61.not.4, label %for.inc123.3.for.inc123.4_crit_edge, label %land.rhs72.4

for.inc123.3.for.inc123.4_crit_edge:              ; preds = %for.inc123.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123.4

land.rhs72.4:                                     ; preds = %for.inc123.3
  %.b401404.4 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  br i1 %.b401404.4, label %land.rhs72.4.if.then119.4_crit_edge, label %if.then83.4, !prof !22

land.rhs72.4.if.then119.4_crit_edge:              ; preds = %land.rhs72.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then119.4

if.then83.4:                                      ; preds = %land.rhs72.4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #5
  br label %if.then119.4

if.then119.4:                                     ; preds = %if.then83.4, %land.rhs72.4.if.then119.4_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %for.inc123.4

for.inc123.4:                                     ; preds = %if.then119.4, %for.inc123.3.for.inc123.4_crit_edge
  %arrayidx58.5 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5
  %29 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx58.5, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp61.not.5 = icmp eq i8 %30, 0
  br i1 %cmp61.not.5, label %for.inc123.4.for.inc123.5_crit_edge, label %land.rhs72.5

for.inc123.4.for.inc123.5_crit_edge:              ; preds = %for.inc123.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123.5

land.rhs72.5:                                     ; preds = %for.inc123.4
  %.b401404.5 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  br i1 %.b401404.5, label %land.rhs72.5.if.then119.5_crit_edge, label %if.then83.5, !prof !22

land.rhs72.5.if.then119.5_crit_edge:              ; preds = %land.rhs72.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then119.5

if.then83.5:                                      ; preds = %land.rhs72.5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #5
  br label %if.then119.5

if.then119.5:                                     ; preds = %if.then83.5, %land.rhs72.5.if.then119.5_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %for.inc123.5

for.inc123.5:                                     ; preds = %if.then119.5, %for.inc123.4.for.inc123.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %stream_count)
  %cmp128499.not = icmp eq i8 %stream_count, 0
  br i1 %cmp128499.not, label %for.inc123.5.for.end307_crit_edge, label %for.body130.lr.ph

for.inc123.5.for.end307_crit_edge:                ; preds = %for.inc123.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end307

for.body130:                                      ; preds = %cleanup.for.body130_crit_edge, %for.body130.lr.ph
  %i.2500 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc140, %cleanup.for.body130_crit_edge ]
  %arrayidx131 = getelementptr ptr, ptr %streams, i32 %i.2500
  %31 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx131, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.body130.cleanup_crit_edge, label %for.cond.preheader.i

for.body130.cleanup_crit_edge:                    ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %for.body130
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %32, i32 0, i32 32
  %33 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %res_pool30.i = getelementptr inbounds %struct.dc, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %res_pool30.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %res_pool30.i, align 8
  %res_cap31.i = getelementptr inbounds %struct.resource_pool, ptr %38, i32 0, i32 41
  %39 = ptrtoint ptr %res_cap31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %res_cap31.i, align 4
  %num_dig_link_enc32.i = getelementptr inbounds %struct.resource_caps, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %num_dig_link_enc32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_dig_link_enc32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp33.not.i = icmp eq i32 %42, 0
  br i1 %cmp33.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %32, i32 0, i32 1
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %32, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %43 = phi ptr [ %38, %for.body.lr.ph.i ], [ %65, %for.inc.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %43, i32 0, i32 22, i32 %i.034.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %46 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link.i, align 4
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %connector_signal.i, align 8
  %output_signals.i = getelementptr inbounds %struct.link_encoder, ptr %45, i32 0, i32 5
  %50 = ptrtoint ptr %output_signals.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %output_signals.i, align 4
  %and.i = and i32 %51, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %52 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %signal.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %if.then6.i.if.end133_crit_edge [
    i32 32, label %if.then6.i.if.then7.i_crit_edge
    i32 128, label %if.then6.i.if.then7.i_crit_edge525
    i32 64, label %if.then6.i.if.then7.i_crit_edge526
  ]

if.then6.i.if.then7.i_crit_edge526:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.then7.i_crit_edge525:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.then7.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.end133_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then7.i:                                       ; preds = %if.then6.i.if.then7.i_crit_edge, %if.then6.i.if.then7.i_crit_edge525, %if.then6.i.if.then7.i_crit_edge526
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_settings.i) #5
  %55 = call ptr @memset(ptr %link_settings.i, i32 0, i32 16)
  call void @decide_link_settings(ptr noundef nonnull %32, ptr noundef nonnull %link_settings.i) #5
  %56 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %link_rate.i, align 4
  %58 = add i32 %57, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %58)
  %59 = icmp ult i32 %58, 25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_settings.i) #5
  br i1 %59, label %if.then7.i.if.end133_crit_edge, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then7.i.if.end133_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

for.inc.i:                                        ; preds = %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.034.i, 1
  %60 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %res_pool.i, align 8
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %65, i32 0, i32 41
  %66 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %res_cap.i, align 4
  %num_dig_link_enc.i = getelementptr inbounds %struct.resource_caps, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %num_dig_link_enc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_dig_link_enc.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %69
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end133:                                        ; preds = %if.then7.i.if.end133_crit_edge, %if.then6.i.if.end133_crit_edge
  %70 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %link.i, align 4
  %is_dig_mapping_flexible = getelementptr inbounds %struct.dc_link, ptr %71, i32 0, i32 15
  %72 = ptrtoint ptr %is_dig_mapping_flexible to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_dig_mapping_flexible, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool134.not = icmp eq i8 %73, 0
  br i1 %tobool134.not, label %if.then135, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %eng_id137 = getelementptr inbounds %struct.dc_link, ptr %71, i32 0, i32 29
  %74 = ptrtoint ptr %eng_id137 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %eng_id137, align 8
  call fastcc void @add_link_enc_assignment(ptr noundef %state, ptr noundef nonnull %32, i32 noundef %75)
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %if.end133.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %for.body130.cleanup_crit_edge
  %inc140 = add nuw nsw i32 %i.2500, 1
  %exitcond.not = icmp eq i32 %inc140, %conv2
  br i1 %exitcond.not, label %for.end141, label %cleanup.for.body130_crit_edge

cleanup.for.body130_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body130

for.end141:                                       ; preds = %cleanup
  %76 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %current_state, align 4
  %cmp143.not.not = icmp eq ptr %77, %state
  br i1 %cmp143.not.not, label %for.end141.if.end204_crit_edge, label %for.body151.lr.ph

for.end141.if.end204_crit_edge:                   ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

for.body151.lr.ph:                                ; preds = %for.end141
  %link_rate.i419 = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings.i409, i32 0, i32 1
  %stream_count164 = getelementptr inbounds %struct.dc_state, ptr %77, i32 0, i32 2
  br label %for.body151

for.body151:                                      ; preds = %cleanup198.for.body151_crit_edge, %for.body151.lr.ph
  %i.3506 = phi i32 [ 0, %for.body151.lr.ph ], [ %inc202, %cleanup198.for.body151_crit_edge ]
  %arrayidx154 = getelementptr [6 x ptr], ptr %state, i32 0, i32 %i.3506
  %78 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx154, align 4
  %tobool.not.i410 = icmp eq ptr %79, null
  br i1 %tobool.not.i410, label %for.body151.cleanup198_crit_edge, label %for.cond.preheader.i416

for.body151.cleanup198_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198

for.cond.preheader.i416:                          ; preds = %for.body151
  %ctx.i411 = getelementptr inbounds %struct.dc_stream_state, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %ctx.i411 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx.i411, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %res_pool30.i412 = getelementptr inbounds %struct.dc, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %res_pool30.i412 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %res_pool30.i412, align 8
  %res_cap31.i413 = getelementptr inbounds %struct.resource_pool, ptr %85, i32 0, i32 41
  %86 = ptrtoint ptr %res_cap31.i413 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %res_cap31.i413, align 4
  %num_dig_link_enc32.i414 = getelementptr inbounds %struct.resource_caps, ptr %87, i32 0, i32 10
  %88 = ptrtoint ptr %num_dig_link_enc32.i414 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_dig_link_enc32.i414, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp33.not.i415 = icmp eq i32 %89, 0
  br i1 %cmp33.not.i415, label %for.cond.preheader.i416.cleanup198_crit_edge, label %for.body.lr.ph.i420

for.cond.preheader.i416.cleanup198_crit_edge:     ; preds = %for.cond.preheader.i416
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198

for.body.lr.ph.i420:                              ; preds = %for.cond.preheader.i416
  %link.i417 = getelementptr inbounds %struct.dc_stream_state, ptr %79, i32 0, i32 1
  %signal.i418 = getelementptr inbounds %struct.dc_stream_state, ptr %79, i32 0, i32 36
  br label %for.body.i424

for.body.i424:                                    ; preds = %for.inc.i437.for.body.i424_crit_edge, %for.body.lr.ph.i420
  %90 = phi ptr [ %85, %for.body.lr.ph.i420 ], [ %112, %for.inc.i437.for.body.i424_crit_edge ]
  %i.034.i421 = phi i32 [ 0, %for.body.lr.ph.i420 ], [ %inc.i432, %for.inc.i437.for.body.i424_crit_edge ]
  %arrayidx.i422 = getelementptr %struct.resource_pool, ptr %90, i32 0, i32 22, i32 %i.034.i421
  %91 = ptrtoint ptr %arrayidx.i422 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i422, align 4
  %tobool4.not.i423 = icmp eq ptr %92, null
  br i1 %tobool4.not.i423, label %for.body.i424.for.inc.i437_crit_edge, label %land.lhs.true.i429

for.body.i424.for.inc.i437_crit_edge:             ; preds = %for.body.i424
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i437

land.lhs.true.i429:                               ; preds = %for.body.i424
  %93 = ptrtoint ptr %link.i417 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %link.i417, align 4
  %connector_signal.i425 = getelementptr inbounds %struct.dc_link, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %connector_signal.i425 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %connector_signal.i425, align 8
  %output_signals.i426 = getelementptr inbounds %struct.link_encoder, ptr %92, i32 0, i32 5
  %97 = ptrtoint ptr %output_signals.i426 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %output_signals.i426, align 4
  %and.i427 = and i32 %98, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i427)
  %tobool5.not.i428 = icmp eq i32 %and.i427, 0
  br i1 %tobool5.not.i428, label %land.lhs.true.i429.for.inc.i437_crit_edge, label %if.then6.i430

land.lhs.true.i429.for.inc.i437_crit_edge:        ; preds = %land.lhs.true.i429
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i437

if.then6.i430:                                    ; preds = %land.lhs.true.i429
  %99 = ptrtoint ptr %signal.i418 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %signal.i418, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %100, label %if.then6.i430.if.end157_crit_edge [
    i32 32, label %if.then6.i430.if.then7.i431_crit_edge
    i32 128, label %if.then6.i430.if.then7.i431_crit_edge527
    i32 64, label %if.then6.i430.if.then7.i431_crit_edge528
  ]

if.then6.i430.if.then7.i431_crit_edge528:         ; preds = %if.then6.i430
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i431

if.then6.i430.if.then7.i431_crit_edge527:         ; preds = %if.then6.i430
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i431

if.then6.i430.if.then7.i431_crit_edge:            ; preds = %if.then6.i430
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i431

if.then6.i430.if.end157_crit_edge:                ; preds = %if.then6.i430
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157

if.then7.i431:                                    ; preds = %if.then6.i430.if.then7.i431_crit_edge, %if.then6.i430.if.then7.i431_crit_edge527, %if.then6.i430.if.then7.i431_crit_edge528
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_settings.i409) #5
  %102 = call ptr @memset(ptr %link_settings.i409, i32 0, i32 16)
  call void @decide_link_settings(ptr noundef nonnull %79, ptr noundef nonnull %link_settings.i409) #5
  %103 = ptrtoint ptr %link_rate.i419 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %link_rate.i419, align 4
  %105 = add i32 %104, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %105)
  %106 = icmp ult i32 %105, 25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_settings.i409) #5
  br i1 %106, label %if.then7.i431.if.end157_crit_edge, label %if.then7.i431.for.inc.i437_crit_edge

if.then7.i431.for.inc.i437_crit_edge:             ; preds = %if.then7.i431
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i437

if.then7.i431.if.end157_crit_edge:                ; preds = %if.then7.i431
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157

for.inc.i437:                                     ; preds = %if.then7.i431.for.inc.i437_crit_edge, %land.lhs.true.i429.for.inc.i437_crit_edge, %for.body.i424.for.inc.i437_crit_edge
  %inc.i432 = add nuw i32 %i.034.i421, 1
  %107 = ptrtoint ptr %ctx.i411 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ctx.i411, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %res_pool.i433 = getelementptr inbounds %struct.dc, ptr %110, i32 0, i32 12
  %111 = ptrtoint ptr %res_pool.i433 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %res_pool.i433, align 8
  %res_cap.i434 = getelementptr inbounds %struct.resource_pool, ptr %112, i32 0, i32 41
  %113 = ptrtoint ptr %res_cap.i434 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %res_cap.i434, align 4
  %num_dig_link_enc.i435 = getelementptr inbounds %struct.resource_caps, ptr %114, i32 0, i32 10
  %115 = ptrtoint ptr %num_dig_link_enc.i435 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_dig_link_enc.i435, align 4
  %cmp.i436 = icmp ult i32 %inc.i432, %116
  br i1 %cmp.i436, label %for.inc.i437.for.body.i424_crit_edge, label %for.inc.i437.cleanup198_crit_edge

for.inc.i437.cleanup198_crit_edge:                ; preds = %for.inc.i437
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198

for.inc.i437.for.body.i424_crit_edge:             ; preds = %for.inc.i437
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i424

if.end157:                                        ; preds = %if.then7.i431.if.end157_crit_edge, %if.then6.i430.if.end157_crit_edge
  %117 = ptrtoint ptr %link.i417 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %link.i417, align 4
  %is_dig_mapping_flexible159 = getelementptr inbounds %struct.dc_link, ptr %118, i32 0, i32 15
  %119 = ptrtoint ptr %is_dig_mapping_flexible159 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %is_dig_mapping_flexible159, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool160.not = icmp eq i8 %120, 0
  br i1 %tobool160.not, label %if.end157.cleanup198_crit_edge, label %for.cond163.preheader

if.end157.cleanup198_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198

for.cond163.preheader:                            ; preds = %if.end157
  %121 = ptrtoint ptr %stream_count164 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %stream_count164, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp166502.not = icmp eq i8 %122, 0
  br i1 %cmp166502.not, label %for.cond163.preheader.cleanup198_crit_edge, label %for.cond163.preheader.for.body168_crit_edge

for.cond163.preheader.for.body168_crit_edge:      ; preds = %for.cond163.preheader
  br label %for.body168

for.cond163.preheader.cleanup198_crit_edge:       ; preds = %for.cond163.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198

for.body168:                                      ; preds = %if.end194.for.body168_crit_edge, %for.cond163.preheader.for.body168_crit_edge
  %j.0503 = phi i32 [ %inc196, %if.end194.for.body168_crit_edge ], [ 0, %for.cond163.preheader.for.body168_crit_edge ]
  %arrayidx170 = getelementptr [6 x ptr], ptr %77, i32 0, i32 %j.0503
  %123 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx170, align 4
  %cmp171 = icmp eq ptr %79, %124
  br i1 %cmp171, label %land.lhs.true177, label %for.body168.if.end194_crit_edge

for.body168.if.end194_crit_edge:                  ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

land.lhs.true177:                                 ; preds = %for.body168
  %125 = ptrtoint ptr %link.i417 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %link.i417, align 4
  %arrayidx181 = getelementptr %struct.dc_state, ptr %77, i32 0, i32 4, i32 6, i32 1, i32 %j.0503
  %127 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx181, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool183.not = icmp eq i8 %128, 0
  br i1 %tobool183.not, label %land.lhs.true177.if.end194_crit_edge, label %if.then185

land.lhs.true177.if.end194_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

if.then185:                                       ; preds = %land.lhs.true177
  %eng_id190 = getelementptr %struct.dc_state, ptr %77, i32 0, i32 4, i32 6, i32 1, i32 %j.0503, i32 2
  %129 = ptrtoint ptr %eng_id190 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %eng_id190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %130)
  %cmp.not.i = icmp eq i32 %130, -1
  br i1 %cmp.not.i, label %if.then185.if.else.i_crit_edge, label %land.lhs.true.i441

if.then185.if.else.i_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i441:                               ; preds = %if.then185
  %arrayidx.i440 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %130
  %131 = ptrtoint ptr %arrayidx.i440 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %132)
  %cmp1.not.i = icmp eq i32 %132, -1
  br i1 %cmp1.not.i, label %land.lhs.true.i441.if.else.i_crit_edge, label %land.lhs.true.i441.if.then192_crit_edge

land.lhs.true.i441.if.then192_crit_edge:          ; preds = %land.lhs.true.i441
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then192

land.lhs.true.i441.if.else.i_crit_edge:           ; preds = %land.lhs.true.i441
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i441.if.else.i_crit_edge, %if.then185.if.else.i_crit_edge
  %133 = ptrtoint ptr %stream_count1 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %stream_count1, align 8
  %conv.i.i = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp25.not.i.i = icmp eq i8 %134, 0
  br i1 %cmp25.not.i.i, label %if.else.i.if.end194_crit_edge, label %if.else.i.for.body.i.i_crit_edge

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

if.else.i.if.end194_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %i.026.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 %i.026.i.i
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %assignment.sroa.0.0.copyload11.i.i = load i8, ptr %arrayidx.i.i, align 4
  %136 = and i8 %assignment.sroa.0.0.copyload11.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i.i = icmp eq i8 %136, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %assignment.sroa.512.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 12
  %137 = ptrtoint ptr %assignment.sroa.512.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %assignment.sroa.512.0.copyload13.i.i = load i32, ptr %assignment.sroa.512.0.arrayidx.sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.i.i, i32 %130)
  %cmp6.i.i = icmp eq i32 %assignment.sroa.512.0.copyload13.i.i, %130
  br i1 %cmp6.i.i, label %get_stream_using_link_enc.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end194_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.end194_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

get_stream_using_link_enc.exit.i:                 ; preds = %land.lhs.true.i.i
  %arrayidx8.i.i = getelementptr [6 x ptr], ptr %state, i32 0, i32 %i.026.i.i
  %138 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx8.i.i, align 4
  %tobool.not.i442 = icmp eq ptr %139, null
  %cmp3.not.i = icmp eq ptr %139, %79
  %or.cond.i = or i1 %tobool.not.i442, %cmp3.not.i
  br i1 %or.cond.i, label %get_stream_using_link_enc.exit.i.if.end194_crit_edge, label %is_avail_link_enc.exit

get_stream_using_link_enc.exit.i.if.end194_crit_edge: ; preds = %get_stream_using_link_enc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

is_avail_link_enc.exit:                           ; preds = %get_stream_using_link_enc.exit.i
  %link5.i = getelementptr inbounds %struct.dc_stream_state, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %link5.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %link5.i, align 4
  %cmp6.i = icmp eq ptr %126, %141
  br i1 %cmp6.i, label %is_avail_link_enc.exit.if.then192_crit_edge, label %is_avail_link_enc.exit.if.end194_crit_edge

is_avail_link_enc.exit.if.end194_crit_edge:       ; preds = %is_avail_link_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

is_avail_link_enc.exit.if.then192_crit_edge:      ; preds = %is_avail_link_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then192

if.then192:                                       ; preds = %is_avail_link_enc.exit.if.then192_crit_edge, %land.lhs.true.i441.if.then192_crit_edge
  call fastcc void @add_link_enc_assignment(ptr noundef %state, ptr noundef nonnull %79, i32 noundef %130)
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %is_avail_link_enc.exit.if.end194_crit_edge, %get_stream_using_link_enc.exit.i.if.end194_crit_edge, %for.inc.i.i.if.end194_crit_edge, %if.else.i.if.end194_crit_edge, %land.lhs.true177.if.end194_crit_edge, %for.body168.if.end194_crit_edge
  %inc196 = add nuw nsw i32 %j.0503, 1
  %142 = ptrtoint ptr %stream_count164 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %stream_count164, align 8
  %conv165 = zext i8 %143 to i32
  %cmp166 = icmp ult i32 %inc196, %conv165
  br i1 %cmp166, label %if.end194.for.body168_crit_edge, label %if.end194.cleanup198_crit_edge

if.end194.cleanup198_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup198

if.end194.for.body168_crit_edge:                  ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body168

cleanup198:                                       ; preds = %if.end194.cleanup198_crit_edge, %for.cond163.preheader.cleanup198_crit_edge, %if.end157.cleanup198_crit_edge, %for.inc.i437.cleanup198_crit_edge, %for.cond.preheader.i416.cleanup198_crit_edge, %for.body151.cleanup198_crit_edge
  %inc202 = add nuw nsw i32 %i.3506, 1
  %exitcond512.not = icmp eq i32 %inc202, %conv2
  br i1 %exitcond512.not, label %cleanup198.if.end204_crit_edge, label %cleanup198.for.body151_crit_edge

cleanup198.for.body151_crit_edge:                 ; preds = %cleanup198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body151

cleanup198.if.end204_crit_edge:                   ; preds = %cleanup198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

if.end204:                                        ; preds = %cleanup198.if.end204_crit_edge, %for.end141.if.end204_crit_edge
  br i1 %cmp128499.not, label %if.end204.for.end307_crit_edge, label %for.body209.lr.ph

if.end204.for.end307_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end307

for.body209.lr.ph:                                ; preds = %if.end204
  %link_rate.i454 = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings.i444, i32 0, i32 1
  %assignment.sroa.514.0.arrayidx.sroa_idx.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 1
  %assignment.sroa.6.0.arrayidx.sroa_idx.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 1, i32 1
  %assignment.sroa.7.0.arrayidx.sroa_idx.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 2
  %assignment.sroa.514.0.arrayidx.sroa_idx.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 1
  %assignment.sroa.6.0.arrayidx.sroa_idx.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 1, i32 1
  %assignment.sroa.7.0.arrayidx.sroa_idx.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 2
  %assignment.sroa.514.0.arrayidx.sroa_idx.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 1
  %assignment.sroa.6.0.arrayidx.sroa_idx.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 1, i32 1
  %assignment.sroa.7.0.arrayidx.sroa_idx.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 2
  %assignment.sroa.514.0.arrayidx.sroa_idx.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 1
  %assignment.sroa.6.0.arrayidx.sroa_idx.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 1, i32 1
  %assignment.sroa.7.0.arrayidx.sroa_idx.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 2
  %assignment.sroa.514.0.arrayidx.sroa_idx.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 1
  %assignment.sroa.6.0.arrayidx.sroa_idx.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 1, i32 1
  %assignment.sroa.7.0.arrayidx.sroa_idx.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 2
  %assignment.sroa.514.0.arrayidx.sroa_idx.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 1
  %assignment.sroa.6.0.arrayidx.sroa_idx.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 1, i32 1
  %assignment.sroa.7.0.arrayidx.sroa_idx.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 2
  br label %for.body209

for.body209:                                      ; preds = %cleanup302.for.body209_crit_edge, %for.body209.lr.ph
  %i.4508 = phi i32 [ 0, %for.body209.lr.ph ], [ %inc306, %cleanup302.for.body209_crit_edge ]
  %arrayidx211 = getelementptr ptr, ptr %streams, i32 %i.4508
  %144 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx211, align 4
  %tobool.not.i445 = icmp eq ptr %145, null
  br i1 %tobool.not.i445, label %for.body209.do.body214_crit_edge, label %for.cond.preheader.i451

for.body209.do.body214_crit_edge:                 ; preds = %for.body209
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body214

for.cond.preheader.i451:                          ; preds = %for.body209
  %ctx.i446 = getelementptr inbounds %struct.dc_stream_state, ptr %145, i32 0, i32 32
  %146 = ptrtoint ptr %ctx.i446 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ctx.i446, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %res_pool30.i447 = getelementptr inbounds %struct.dc, ptr %149, i32 0, i32 12
  %150 = ptrtoint ptr %res_pool30.i447 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %res_pool30.i447, align 8
  %res_cap31.i448 = getelementptr inbounds %struct.resource_pool, ptr %151, i32 0, i32 41
  %152 = ptrtoint ptr %res_cap31.i448 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %res_cap31.i448, align 4
  %num_dig_link_enc32.i449 = getelementptr inbounds %struct.resource_caps, ptr %153, i32 0, i32 10
  %154 = ptrtoint ptr %num_dig_link_enc32.i449 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %num_dig_link_enc32.i449, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp33.not.i450 = icmp eq i32 %155, 0
  br i1 %cmp33.not.i450, label %for.cond.preheader.i451.do.body214_crit_edge, label %for.body.lr.ph.i455

for.cond.preheader.i451.do.body214_crit_edge:     ; preds = %for.cond.preheader.i451
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body214

for.body.lr.ph.i455:                              ; preds = %for.cond.preheader.i451
  %link.i452 = getelementptr inbounds %struct.dc_stream_state, ptr %145, i32 0, i32 1
  %signal.i453 = getelementptr inbounds %struct.dc_stream_state, ptr %145, i32 0, i32 36
  br label %for.body.i459

for.body.i459:                                    ; preds = %for.inc.i472.for.body.i459_crit_edge, %for.body.lr.ph.i455
  %156 = phi ptr [ %151, %for.body.lr.ph.i455 ], [ %178, %for.inc.i472.for.body.i459_crit_edge ]
  %i.034.i456 = phi i32 [ 0, %for.body.lr.ph.i455 ], [ %inc.i467, %for.inc.i472.for.body.i459_crit_edge ]
  %arrayidx.i457 = getelementptr %struct.resource_pool, ptr %156, i32 0, i32 22, i32 %i.034.i456
  %157 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i457, align 4
  %tobool4.not.i458 = icmp eq ptr %158, null
  br i1 %tobool4.not.i458, label %for.body.i459.for.inc.i472_crit_edge, label %land.lhs.true.i464

for.body.i459.for.inc.i472_crit_edge:             ; preds = %for.body.i459
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i472

land.lhs.true.i464:                               ; preds = %for.body.i459
  %159 = ptrtoint ptr %link.i452 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %link.i452, align 4
  %connector_signal.i460 = getelementptr inbounds %struct.dc_link, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %connector_signal.i460 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %connector_signal.i460, align 8
  %output_signals.i461 = getelementptr inbounds %struct.link_encoder, ptr %158, i32 0, i32 5
  %163 = ptrtoint ptr %output_signals.i461 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %output_signals.i461, align 4
  %and.i462 = and i32 %164, %162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i462)
  %tobool5.not.i463 = icmp eq i32 %and.i462, 0
  br i1 %tobool5.not.i463, label %land.lhs.true.i464.for.inc.i472_crit_edge, label %if.then6.i465

land.lhs.true.i464.for.inc.i472_crit_edge:        ; preds = %land.lhs.true.i464
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i472

if.then6.i465:                                    ; preds = %land.lhs.true.i464
  %165 = ptrtoint ptr %signal.i453 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %signal.i453, align 4
  %167 = zext i32 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %166, label %if.then6.i465.if.end282_crit_edge [
    i32 32, label %if.then6.i465.if.then7.i466_crit_edge
    i32 128, label %if.then6.i465.if.then7.i466_crit_edge529
    i32 64, label %if.then6.i465.if.then7.i466_crit_edge530
  ]

if.then6.i465.if.then7.i466_crit_edge530:         ; preds = %if.then6.i465
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i466

if.then6.i465.if.then7.i466_crit_edge529:         ; preds = %if.then6.i465
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i466

if.then6.i465.if.then7.i466_crit_edge:            ; preds = %if.then6.i465
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i466

if.then6.i465.if.end282_crit_edge:                ; preds = %if.then6.i465
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

if.then7.i466:                                    ; preds = %if.then6.i465.if.then7.i466_crit_edge, %if.then6.i465.if.then7.i466_crit_edge529, %if.then6.i465.if.then7.i466_crit_edge530
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_settings.i444) #5
  %168 = call ptr @memset(ptr %link_settings.i444, i32 0, i32 16)
  call void @decide_link_settings(ptr noundef nonnull %145, ptr noundef nonnull %link_settings.i444) #5
  %169 = ptrtoint ptr %link_rate.i454 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %link_rate.i454, align 4
  %171 = add i32 %170, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %171)
  %172 = icmp ult i32 %171, 25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_settings.i444) #5
  br i1 %172, label %if.then7.i466.if.end282_crit_edge, label %if.then7.i466.for.inc.i472_crit_edge

if.then7.i466.for.inc.i472_crit_edge:             ; preds = %if.then7.i466
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i472

if.then7.i466.if.end282_crit_edge:                ; preds = %if.then7.i466
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

for.inc.i472:                                     ; preds = %if.then7.i466.for.inc.i472_crit_edge, %land.lhs.true.i464.for.inc.i472_crit_edge, %for.body.i459.for.inc.i472_crit_edge
  %inc.i467 = add nuw i32 %i.034.i456, 1
  %173 = ptrtoint ptr %ctx.i446 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ctx.i446, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 8
  %res_pool.i468 = getelementptr inbounds %struct.dc, ptr %176, i32 0, i32 12
  %177 = ptrtoint ptr %res_pool.i468 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %res_pool.i468, align 8
  %res_cap.i469 = getelementptr inbounds %struct.resource_pool, ptr %178, i32 0, i32 41
  %179 = ptrtoint ptr %res_cap.i469 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %res_cap.i469, align 4
  %num_dig_link_enc.i470 = getelementptr inbounds %struct.resource_caps, ptr %180, i32 0, i32 10
  %181 = ptrtoint ptr %num_dig_link_enc.i470 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %num_dig_link_enc.i470, align 4
  %cmp.i471 = icmp ult i32 %inc.i467, %182
  br i1 %cmp.i471, label %for.inc.i472.for.body.i459_crit_edge, label %for.inc.i472.do.body214_crit_edge

for.inc.i472.do.body214_crit_edge:                ; preds = %for.inc.i472
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body214

for.inc.i472.for.body.i459_crit_edge:             ; preds = %for.inc.i472
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i459

do.body214:                                       ; preds = %for.inc.i472.do.body214_crit_edge, %for.cond.preheader.i451.do.body214_crit_edge, %for.body209.do.body214_crit_edge
  %link216 = getelementptr inbounds %struct.dc_stream_state, ptr %145, i32 0, i32 1
  %183 = ptrtoint ptr %link216 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %link216, align 4
  %is_dig_mapping_flexible217 = getelementptr inbounds %struct.dc_link, ptr %184, i32 0, i32 15
  %185 = ptrtoint ptr %is_dig_mapping_flexible217 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %is_dig_mapping_flexible217, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %186)
  %cmp220.not = icmp eq i8 %186, 1
  br i1 %cmp220.not, label %land.rhs231, label %do.body214.cleanup302_crit_edge

do.body214.cleanup302_crit_edge:                  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup302

land.rhs231:                                      ; preds = %do.body214
  %.b402403 = load i1, ptr @link_enc_cfg_link_encs_assign.__already_done.2, align 1
  br i1 %.b402403, label %land.rhs231.if.then278_crit_edge, label %if.then242, !prof !22

land.rhs231.if.then278_crit_edge:                 ; preds = %land.rhs231
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then278

if.then242:                                       ; preds = %land.rhs231
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_link_encs_assign.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 345, i32 noundef 9, ptr noundef null) #5
  br label %if.then278

if.then278:                                       ; preds = %if.then242, %land.rhs231.if.then278_crit_edge
  call void @kgdb_breakpoint() #5
  br label %cleanup302

if.end282:                                        ; preds = %if.then7.i466.if.end282_crit_edge, %if.then6.i465.if.end282_crit_edge
  %187 = ptrtoint ptr %link.i452 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %link.i452, align 4
  %is_dig_mapping_flexible284 = getelementptr inbounds %struct.dc_link, ptr %188, i32 0, i32 15
  %189 = ptrtoint ptr %is_dig_mapping_flexible284 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %is_dig_mapping_flexible284, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool285.not = icmp eq i8 %190, 0
  br i1 %tobool285.not, label %if.end282.cleanup302_crit_edge, label %if.then286

if.end282.cleanup302_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup302

if.then286:                                       ; preds = %if.end282
  %link_enc287 = getelementptr inbounds %struct.dc_stream_state, ptr %145, i32 0, i32 2
  %191 = ptrtoint ptr %link_enc287 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %link_enc287, align 8
  %tobool288.not = icmp eq ptr %192, null
  br i1 %tobool288.not, label %if.end290, label %if.then286.cleanup302_crit_edge

if.then286.cleanup302_crit_edge:                  ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup302

if.end290:                                        ; preds = %if.then286
  %link_id1.i = getelementptr inbounds %struct.dc_link, ptr %188, i32 0, i32 39
  %193 = ptrtoint ptr %link_id1.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %.compoundliteral.sroa.0.0.copyload8.i = load i32, ptr %link_id1.i, align 4
  %ep_type2.i = getelementptr inbounds %struct.dc_link, ptr %188, i32 0, i32 40
  %194 = ptrtoint ptr %ep_type2.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ep_type2.i, align 8
  %dc.i = getelementptr inbounds %struct.dc_link, ptr %188, i32 0, i32 35
  %196 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %196)
  %assignment.sroa.0.0.copyload13.i = load i8, ptr %arrayidx58, align 4
  %197 = ptrtoint ptr %assignment.sroa.514.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %assignment.sroa.514.0.copyload15.i = load i32, ptr %assignment.sroa.514.0.arrayidx.sroa_idx.i, align 4
  %198 = ptrtoint ptr %assignment.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %assignment.sroa.6.0.copyload16.i = load i32, ptr %assignment.sroa.6.0.arrayidx.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload13.i)
  %tobool.not.i476 = icmp ne i8 %assignment.sroa.0.0.copyload13.i, 0
  %cmp.unshifted.i.i = xor i32 %assignment.sroa.514.0.copyload15.i, %.compoundliteral.sroa.0.0.copyload8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.i)
  %199 = icmp ult i32 %cmp.unshifted.i.i, 65536
  %or.cond.i477 = select i1 %tobool.not.i476, i1 %199, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload16.i, i32 %195)
  %cmp24.i.i = icmp eq i32 %assignment.sroa.6.0.copyload16.i, %195
  %or.cond20.i = select i1 %or.cond.i477, i1 %cmp24.i.i, i1 false
  br i1 %or.cond20.i, label %if.then.i, label %if.end290.if.end.i_crit_edge

if.end290.if.end.i_crit_edge:                     ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #7
  %200 = ptrtoint ptr %assignment.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %assignment.sroa.7.0.copyload17.i = load i32, ptr %assignment.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %201 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dc.i, align 4
  %res_pool.i478 = getelementptr inbounds %struct.dc, ptr %202, i32 0, i32 12
  %203 = ptrtoint ptr %res_pool.i478 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %res_pool.i478, align 8
  %arrayidx7.i = getelementptr %struct.resource_pool, ptr %204, i32 0, i32 22, i32 %assignment.sroa.7.0.copyload17.i
  %205 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx7.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end290.if.end.i_crit_edge
  %link_enc.1.i = phi ptr [ %206, %if.then.i ], [ null, %if.end290.if.end.i_crit_edge ]
  %207 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load1_noabort(i32 %207)
  %assignment.sroa.0.0.copyload13.1.i = load i8, ptr %arrayidx58.1, align 4
  %208 = ptrtoint ptr %assignment.sroa.514.0.arrayidx.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %assignment.sroa.514.0.copyload15.1.i = load i32, ptr %assignment.sroa.514.0.arrayidx.sroa_idx.1.i, align 4
  %209 = ptrtoint ptr %assignment.sroa.6.0.arrayidx.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %assignment.sroa.6.0.copyload16.1.i = load i32, ptr %assignment.sroa.6.0.arrayidx.sroa_idx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload13.1.i)
  %tobool.not.1.i = icmp ne i8 %assignment.sroa.0.0.copyload13.1.i, 0
  %cmp.unshifted.i.1.i = xor i32 %assignment.sroa.514.0.copyload15.1.i, %.compoundliteral.sroa.0.0.copyload8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.1.i)
  %210 = icmp ult i32 %cmp.unshifted.i.1.i, 65536
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 %210, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload16.1.i, i32 %195)
  %cmp24.i.1.i = icmp eq i32 %assignment.sroa.6.0.copyload16.1.i, %195
  %or.cond20.1.i = select i1 %or.cond.1.i, i1 %cmp24.i.1.i, i1 false
  br i1 %or.cond20.1.i, label %if.then.1.i, label %if.end.i.if.end.1.i_crit_edge

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %211 = ptrtoint ptr %assignment.sroa.7.0.arrayidx.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %assignment.sroa.7.0.copyload17.1.i = load i32, ptr %assignment.sroa.7.0.arrayidx.sroa_idx.1.i, align 4
  %212 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dc.i, align 4
  %res_pool.1.i = getelementptr inbounds %struct.dc, ptr %213, i32 0, i32 12
  %214 = ptrtoint ptr %res_pool.1.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %res_pool.1.i, align 8
  %arrayidx7.1.i = getelementptr %struct.resource_pool, ptr %215, i32 0, i32 22, i32 %assignment.sroa.7.0.copyload17.1.i
  %216 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx7.1.i, align 4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %link_enc.1.1.i = phi ptr [ %217, %if.then.1.i ], [ %link_enc.1.i, %if.end.i.if.end.1.i_crit_edge ]
  %218 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load1_noabort(i32 %218)
  %assignment.sroa.0.0.copyload13.2.i = load i8, ptr %arrayidx58.2, align 4
  %219 = ptrtoint ptr %assignment.sroa.514.0.arrayidx.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %assignment.sroa.514.0.copyload15.2.i = load i32, ptr %assignment.sroa.514.0.arrayidx.sroa_idx.2.i, align 4
  %220 = ptrtoint ptr %assignment.sroa.6.0.arrayidx.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %assignment.sroa.6.0.copyload16.2.i = load i32, ptr %assignment.sroa.6.0.arrayidx.sroa_idx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload13.2.i)
  %tobool.not.2.i = icmp ne i8 %assignment.sroa.0.0.copyload13.2.i, 0
  %cmp.unshifted.i.2.i = xor i32 %assignment.sroa.514.0.copyload15.2.i, %.compoundliteral.sroa.0.0.copyload8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.2.i)
  %221 = icmp ult i32 %cmp.unshifted.i.2.i, 65536
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 %221, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload16.2.i, i32 %195)
  %cmp24.i.2.i = icmp eq i32 %assignment.sroa.6.0.copyload16.2.i, %195
  %or.cond20.2.i = select i1 %or.cond.2.i, i1 %cmp24.i.2.i, i1 false
  br i1 %or.cond20.2.i, label %if.then.2.i, label %if.end.1.i.if.end.2.i_crit_edge

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %222 = ptrtoint ptr %assignment.sroa.7.0.arrayidx.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %assignment.sroa.7.0.copyload17.2.i = load i32, ptr %assignment.sroa.7.0.arrayidx.sroa_idx.2.i, align 4
  %223 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dc.i, align 4
  %res_pool.2.i = getelementptr inbounds %struct.dc, ptr %224, i32 0, i32 12
  %225 = ptrtoint ptr %res_pool.2.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %res_pool.2.i, align 8
  %arrayidx7.2.i = getelementptr %struct.resource_pool, ptr %226, i32 0, i32 22, i32 %assignment.sroa.7.0.copyload17.2.i
  %227 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx7.2.i, align 4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %link_enc.1.2.i = phi ptr [ %228, %if.then.2.i ], [ %link_enc.1.1.i, %if.end.1.i.if.end.2.i_crit_edge ]
  %229 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load1_noabort(i32 %229)
  %assignment.sroa.0.0.copyload13.3.i = load i8, ptr %arrayidx58.3, align 4
  %230 = ptrtoint ptr %assignment.sroa.514.0.arrayidx.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %assignment.sroa.514.0.copyload15.3.i = load i32, ptr %assignment.sroa.514.0.arrayidx.sroa_idx.3.i, align 4
  %231 = ptrtoint ptr %assignment.sroa.6.0.arrayidx.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %assignment.sroa.6.0.copyload16.3.i = load i32, ptr %assignment.sroa.6.0.arrayidx.sroa_idx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload13.3.i)
  %tobool.not.3.i = icmp ne i8 %assignment.sroa.0.0.copyload13.3.i, 0
  %cmp.unshifted.i.3.i = xor i32 %assignment.sroa.514.0.copyload15.3.i, %.compoundliteral.sroa.0.0.copyload8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.3.i)
  %232 = icmp ult i32 %cmp.unshifted.i.3.i, 65536
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 %232, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload16.3.i, i32 %195)
  %cmp24.i.3.i = icmp eq i32 %assignment.sroa.6.0.copyload16.3.i, %195
  %or.cond20.3.i = select i1 %or.cond.3.i, i1 %cmp24.i.3.i, i1 false
  br i1 %or.cond20.3.i, label %if.then.3.i, label %if.end.2.i.if.end.3.i_crit_edge

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %233 = ptrtoint ptr %assignment.sroa.7.0.arrayidx.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %assignment.sroa.7.0.copyload17.3.i = load i32, ptr %assignment.sroa.7.0.arrayidx.sroa_idx.3.i, align 4
  %234 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dc.i, align 4
  %res_pool.3.i = getelementptr inbounds %struct.dc, ptr %235, i32 0, i32 12
  %236 = ptrtoint ptr %res_pool.3.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %res_pool.3.i, align 8
  %arrayidx7.3.i = getelementptr %struct.resource_pool, ptr %237, i32 0, i32 22, i32 %assignment.sroa.7.0.copyload17.3.i
  %238 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx7.3.i, align 4
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %link_enc.1.3.i = phi ptr [ %239, %if.then.3.i ], [ %link_enc.1.2.i, %if.end.2.i.if.end.3.i_crit_edge ]
  %240 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_load1_noabort(i32 %240)
  %assignment.sroa.0.0.copyload13.4.i = load i8, ptr %arrayidx58.4, align 4
  %241 = ptrtoint ptr %assignment.sroa.514.0.arrayidx.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %assignment.sroa.514.0.copyload15.4.i = load i32, ptr %assignment.sroa.514.0.arrayidx.sroa_idx.4.i, align 4
  %242 = ptrtoint ptr %assignment.sroa.6.0.arrayidx.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %assignment.sroa.6.0.copyload16.4.i = load i32, ptr %assignment.sroa.6.0.arrayidx.sroa_idx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload13.4.i)
  %tobool.not.4.i = icmp ne i8 %assignment.sroa.0.0.copyload13.4.i, 0
  %cmp.unshifted.i.4.i = xor i32 %assignment.sroa.514.0.copyload15.4.i, %.compoundliteral.sroa.0.0.copyload8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.4.i)
  %243 = icmp ult i32 %cmp.unshifted.i.4.i, 65536
  %or.cond.4.i = select i1 %tobool.not.4.i, i1 %243, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload16.4.i, i32 %195)
  %cmp24.i.4.i = icmp eq i32 %assignment.sroa.6.0.copyload16.4.i, %195
  %or.cond20.4.i = select i1 %or.cond.4.i, i1 %cmp24.i.4.i, i1 false
  br i1 %or.cond20.4.i, label %if.then.4.i, label %if.end.3.i.if.end.4.i_crit_edge

if.end.3.i.if.end.4.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.4.i

if.then.4.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %244 = ptrtoint ptr %assignment.sroa.7.0.arrayidx.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %assignment.sroa.7.0.copyload17.4.i = load i32, ptr %assignment.sroa.7.0.arrayidx.sroa_idx.4.i, align 4
  %245 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dc.i, align 4
  %res_pool.4.i = getelementptr inbounds %struct.dc, ptr %246, i32 0, i32 12
  %247 = ptrtoint ptr %res_pool.4.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %res_pool.4.i, align 8
  %arrayidx7.4.i = getelementptr %struct.resource_pool, ptr %248, i32 0, i32 22, i32 %assignment.sroa.7.0.copyload17.4.i
  %249 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arrayidx7.4.i, align 4
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %if.then.4.i, %if.end.3.i.if.end.4.i_crit_edge
  %link_enc.1.4.i = phi ptr [ %250, %if.then.4.i ], [ %link_enc.1.3.i, %if.end.3.i.if.end.4.i_crit_edge ]
  %251 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_load1_noabort(i32 %251)
  %assignment.sroa.0.0.copyload13.5.i = load i8, ptr %arrayidx58.5, align 4
  %252 = ptrtoint ptr %assignment.sroa.514.0.arrayidx.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %assignment.sroa.514.0.copyload15.5.i = load i32, ptr %assignment.sroa.514.0.arrayidx.sroa_idx.5.i, align 4
  %253 = ptrtoint ptr %assignment.sroa.6.0.arrayidx.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %assignment.sroa.6.0.copyload16.5.i = load i32, ptr %assignment.sroa.6.0.arrayidx.sroa_idx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload13.5.i)
  %tobool.not.5.i = icmp ne i8 %assignment.sroa.0.0.copyload13.5.i, 0
  %cmp.unshifted.i.5.i = xor i32 %assignment.sroa.514.0.copyload15.5.i, %.compoundliteral.sroa.0.0.copyload8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.5.i)
  %254 = icmp ult i32 %cmp.unshifted.i.5.i, 65536
  %or.cond.5.i = select i1 %tobool.not.5.i, i1 %254, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload16.5.i, i32 %195)
  %cmp24.i.5.i = icmp eq i32 %assignment.sroa.6.0.copyload16.5.i, %195
  %or.cond20.5.i = select i1 %or.cond.5.i, i1 %cmp24.i.5.i, i1 false
  br i1 %or.cond20.5.i, label %if.then.5.i, label %if.end.4.i.get_link_enc_used_by_link.exit_crit_edge

if.end.4.i.get_link_enc_used_by_link.exit_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_link_enc_used_by_link.exit

if.then.5.i:                                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #7
  %255 = ptrtoint ptr %assignment.sroa.7.0.arrayidx.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %assignment.sroa.7.0.copyload17.5.i = load i32, ptr %assignment.sroa.7.0.arrayidx.sroa_idx.5.i, align 4
  %256 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dc.i, align 4
  %res_pool.5.i = getelementptr inbounds %struct.dc, ptr %257, i32 0, i32 12
  %258 = ptrtoint ptr %res_pool.5.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %res_pool.5.i, align 8
  %arrayidx7.5.i = getelementptr %struct.resource_pool, ptr %259, i32 0, i32 22, i32 %assignment.sroa.7.0.copyload17.5.i
  %260 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx7.5.i, align 4
  br label %get_link_enc_used_by_link.exit

get_link_enc_used_by_link.exit:                   ; preds = %if.then.5.i, %if.end.4.i.get_link_enc_used_by_link.exit_crit_edge
  %link_enc.1.5.i = phi ptr [ %261, %if.then.5.i ], [ %link_enc.1.4.i, %if.end.4.i.get_link_enc_used_by_link.exit_crit_edge ]
  %cmp293 = icmp eq ptr %link_enc.1.5.i, null
  br i1 %cmp293, label %if.then295, label %if.else

if.then295:                                       ; preds = %get_link_enc_used_by_link.exit
  %262 = ptrtoint ptr %ctx.i446 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ctx.i446, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 8
  %res_pool.i479 = getelementptr inbounds %struct.dc, ptr %265, i32 0, i32 12
  %266 = ptrtoint ptr %res_pool.i479 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %res_pool.i479, align 8
  %res_cap.i480 = getelementptr inbounds %struct.resource_pool, ptr %267, i32 0, i32 41
  %268 = ptrtoint ptr %res_cap.i480 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %res_cap.i480, align 4
  %num_dig_link_enc.i481 = getelementptr inbounds %struct.resource_caps, ptr %269, i32 0, i32 10
  %270 = ptrtoint ptr %num_dig_link_enc.i481 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %num_dig_link_enc.i481, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp5.not.i = icmp eq i32 %271, 0
  br i1 %cmp5.not.i, label %if.then295.if.end297_crit_edge, label %if.then295.for.body.i485_crit_edge

if.then295.for.body.i485_crit_edge:               ; preds = %if.then295
  br label %for.body.i485

if.then295.if.end297_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end297

for.cond.i:                                       ; preds = %for.body.i485
  %inc.i482 = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i482, %271
  br i1 %exitcond.not.i, label %for.cond.i.if.end297_crit_edge, label %for.cond.i.for.body.i485_crit_edge

for.cond.i.for.body.i485_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i485

for.cond.i.if.end297_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end297

for.body.i485:                                    ; preds = %for.cond.i.for.body.i485_crit_edge, %if.then295.for.body.i485_crit_edge
  %i.06.i = phi i32 [ %inc.i482, %for.cond.i.for.body.i485_crit_edge ], [ 0, %if.then295.for.body.i485_crit_edge ]
  %arrayidx.i483 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %i.06.i
  %272 = ptrtoint ptr %arrayidx.i483 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx.i483, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %273)
  %cmp1.not.i484 = icmp eq i32 %273, -1
  br i1 %cmp1.not.i484, label %for.cond.i, label %for.body.i485.if.end297_crit_edge

for.body.i485.if.end297_crit_edge:                ; preds = %for.body.i485
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end297

if.else:                                          ; preds = %get_link_enc_used_by_link.exit
  call void @__sanitizer_cov_trace_pc() #7
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %link_enc.1.5.i, i32 0, i32 6
  %274 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %preferred_engine, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.else, %for.body.i485.if.end297_crit_edge, %for.cond.i.if.end297_crit_edge, %if.then295.if.end297_crit_edge
  %eng_id.0 = phi i32 [ %275, %if.else ], [ -1, %if.then295.if.end297_crit_edge ], [ -1, %for.cond.i.if.end297_crit_edge ], [ %273, %for.body.i485.if.end297_crit_edge ]
  call fastcc void @add_link_enc_assignment(ptr noundef %state, ptr noundef nonnull %145, i32 noundef %eng_id.0)
  br label %cleanup302

cleanup302:                                       ; preds = %if.end297, %if.then286.cleanup302_crit_edge, %if.end282.cleanup302_crit_edge, %if.then278, %do.body214.cleanup302_crit_edge
  %inc306 = add nuw nsw i32 %i.4508, 1
  %exitcond513.not = icmp eq i32 %inc306, %conv2
  br i1 %exitcond513.not, label %cleanup302.for.end307_crit_edge, label %cleanup302.for.body209_crit_edge

cleanup302.for.body209_crit_edge:                 ; preds = %cleanup302
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body209

cleanup302.for.end307_crit_edge:                  ; preds = %cleanup302
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end307

for.end307:                                       ; preds = %cleanup302.for.end307_crit_edge, %if.end204.for.end307_crit_edge, %for.inc123.5.for.end307_crit_edge
  %call308 = call zeroext i1 @link_enc_cfg_validate(ptr noundef %dc, ptr noundef %state)
  %276 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %current_state, align 4
  %arrayidx316 = getelementptr %struct.dc_state, ptr %277, i32 0, i32 4, i32 6, i32 3, i32 0
  %278 = call ptr @memcpy(ptr %arrayidx316, ptr %arrayidx58, i32 20)
  %279 = load ptr, ptr %current_state, align 4
  %arrayidx316.1 = getelementptr %struct.dc_state, ptr %279, i32 0, i32 4, i32 6, i32 3, i32 1
  %280 = call ptr @memcpy(ptr %arrayidx316.1, ptr %arrayidx58.1, i32 20)
  %281 = load ptr, ptr %current_state, align 4
  %arrayidx316.2 = getelementptr %struct.dc_state, ptr %281, i32 0, i32 4, i32 6, i32 3, i32 2
  %282 = call ptr @memcpy(ptr %arrayidx316.2, ptr %arrayidx58.2, i32 20)
  %283 = load ptr, ptr %current_state, align 4
  %arrayidx316.3 = getelementptr %struct.dc_state, ptr %283, i32 0, i32 4, i32 6, i32 3, i32 3
  %284 = call ptr @memcpy(ptr %arrayidx316.3, ptr %arrayidx58.3, i32 20)
  %285 = load ptr, ptr %current_state, align 4
  %arrayidx316.4 = getelementptr %struct.dc_state, ptr %285, i32 0, i32 4, i32 6, i32 3, i32 4
  %286 = call ptr @memcpy(ptr %arrayidx316.4, ptr %arrayidx58.4, i32 20)
  %287 = load ptr, ptr %current_state, align 4
  %arrayidx316.5 = getelementptr %struct.dc_state, ptr %287, i32 0, i32 4, i32 6, i32 3, i32 5
  %288 = call ptr @memcpy(ptr %arrayidx316.5, ptr %arrayidx58.5, i32 20)
  %link_enc_cfg_ctx325 = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 4, i32 6
  %289 = ptrtoint ptr %link_enc_cfg_ctx325 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %link_enc_cfg_ctx325, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_link_enc_assignment(ptr nocapture noundef %state, ptr noundef %stream, i32 noundef %eng_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %eng_id)
  %cmp.not = icmp eq i32 %eng_id, -1
  br i1 %cmp.not, label %entry.if.end64_crit_edge, label %for.cond.preheader

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

for.cond.preheader:                               ; preds = %entry
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp191.not = icmp eq i8 %1, 0
  br i1 %cmp191.not, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %state, i32 0, i32 %i.092
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %3, %stream
  br i1 %cmp3, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 %i.092
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %link_id7 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %link_id7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_id7, align 4
  %ep_type9 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 40
  %8 = ptrtoint ptr %ep_type9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep_type9, align 8
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx6, align 4
  %.compoundliteral.sroa.2.sroa.1.0..compoundliteral.sroa.2.0.arrayidx6.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6, i32 4
  %11 = ptrtoint ptr %.compoundliteral.sroa.2.sroa.1.0..compoundliteral.sroa.2.0.arrayidx6.sroa_idx.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %7, ptr %.compoundliteral.sroa.2.sroa.1.0..compoundliteral.sroa.2.0.arrayidx6.sroa_idx.sroa_idx, align 1
  %.compoundliteral.sroa.3.0.arrayidx6.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6, i32 8
  %12 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %.compoundliteral.sroa.3.0.arrayidx6.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.arrayidx6.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6, i32 12
  %13 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %eng_id, ptr %.compoundliteral.sroa.4.0.arrayidx6.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.arrayidx6.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6, i32 16
  %14 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %stream, ptr %.compoundliteral.sroa.5.0.arrayidx6.sroa_idx, align 4
  tail call void @dc_stream_retain(ptr noundef %stream) #5
  %arrayidx14 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %eng_id
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %arrayidx14, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res_pool, align 8
  %arrayidx15 = getelementptr %struct.resource_pool, ptr %21, i32 0, i32 22, i32 %eng_id
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15, align 4
  %link_enc = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 2
  %24 = ptrtoint ptr %link_enc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %link_enc, align 8
  br label %do.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.then5, %for.cond.preheader.do.body_crit_edge
  %i.089 = phi i32 [ %i.092, %if.then5 ], [ 0, %for.cond.preheader.do.body_crit_edge ], [ %conv, %for.inc.do.body_crit_edge ]
  %25 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stream_count, align 8
  %conv17 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.089, i32 %conv17)
  %cmp18.not = icmp eq i32 %i.089, %conv17
  br i1 %cmp18.not, label %land.rhs, label %do.body.if.end64_crit_edge

do.body.if.end64_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

land.rhs:                                         ; preds = %do.body
  %.b84 = load i1, ptr @add_link_enc_assignment.__already_done, align 1
  br i1 %.b84, label %land.rhs.if.then60_crit_edge, label %if.then28, !prof !22

land.rhs.if.then60_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @add_link_enc_assignment.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #5
  br label %if.then60

if.then60:                                        ; preds = %if.then28, %land.rhs.if.then60_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %do.body.if.end64_crit_edge, %entry.if.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @link_enc_cfg_validate(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  %link_settings.i319 = alloca %struct.dc_link_settings, align 4
  %link_settings.i = alloca %struct.dc_link_settings, align 4
  %eng_ids_per_ep_id = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eng_ids_per_ep_id) #5
  %0 = call ptr @memset(ptr %eng_ids_per_ep_id, i32 0, i32 24)
  %link_rate.i = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %is_dig_link_enc_stream.exit.thread.for.body_crit_edge, %entry
  %i.0368 = phi i32 [ 0, %entry ], [ %inc5, %is_dig_link_enc_stream.exit.thread.for.body_crit_edge ]
  %valid_count.0367 = phi i8 [ 0, %entry ], [ %spec.select, %is_dig_link_enc_stream.exit.thread.for.body_crit_edge ]
  %dig_stream_count.0365 = phi i8 [ 0, %entry ], [ %43, %is_dig_link_enc_stream.exit.thread.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 %i.0368
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %assignment.sroa.0.0.copyload250 = load i8, ptr %arrayidx, align 4
  %2 = and i8 %assignment.sroa.0.0.copyload250, 1
  %spec.select = add i8 %2, %valid_count.0367
  %arrayidx1 = getelementptr [6 x ptr], ptr %state, i32 0, i32 %i.0368
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.is_dig_link_enc_stream.exit.thread_crit_edge, label %for.cond.preheader.i

for.body.is_dig_link_enc_stream.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_dig_link_enc_stream.exit.thread

for.cond.preheader.i:                             ; preds = %for.body
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %4, i32 0, i32 32
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %res_pool30.i = getelementptr inbounds %struct.dc, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %res_pool30.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res_pool30.i, align 8
  %res_cap31.i = getelementptr inbounds %struct.resource_pool, ptr %10, i32 0, i32 41
  %11 = ptrtoint ptr %res_cap31.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res_cap31.i, align 4
  %num_dig_link_enc32.i = getelementptr inbounds %struct.resource_caps, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %num_dig_link_enc32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_dig_link_enc32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp33.not.i = icmp eq i32 %14, 0
  br i1 %cmp33.not.i, label %for.cond.preheader.i.is_dig_link_enc_stream.exit.thread_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.is_dig_link_enc_stream.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_dig_link_enc_stream.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %4, i32 0, i32 1
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %4, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %15 = phi ptr [ %10, %for.body.lr.ph.i ], [ %37, %for.inc.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %15, i32 0, i32 22, i32 %i.034.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %18 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.i, align 4
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %connector_signal.i, align 8
  %output_signals.i = getelementptr inbounds %struct.link_encoder, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %output_signals.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %output_signals.i, align 4
  %and.i = and i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %24 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signal.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %25, label %if.then6.i._crit_edge [
    i32 32, label %if.then6.i.if.then7.i_crit_edge
    i32 128, label %if.then6.i.if.then7.i_crit_edge399
    i32 64, label %if.then6.i.if.then7.i_crit_edge400
  ]

if.then6.i.if.then7.i_crit_edge400:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.then7.i_crit_edge399:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.then7.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i._crit_edge:                            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %42

if.then7.i:                                       ; preds = %if.then6.i.if.then7.i_crit_edge, %if.then6.i.if.then7.i_crit_edge399, %if.then6.i.if.then7.i_crit_edge400
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_settings.i) #5
  %27 = call ptr @memset(ptr %link_settings.i, i32 0, i32 16)
  call void @decide_link_settings(ptr noundef nonnull %4, ptr noundef nonnull %link_settings.i) #5
  %28 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_rate.i, align 4
  %30 = add i32 %29, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %30)
  %31 = icmp ult i32 %30, 25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_settings.i) #5
  br i1 %31, label %if.then7.i._crit_edge, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then7.i._crit_edge:                            ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %42

for.inc.i:                                        ; preds = %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.034.i, 1
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %res_pool.i, align 8
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %37, i32 0, i32 41
  %38 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %res_cap.i, align 4
  %num_dig_link_enc.i = getelementptr inbounds %struct.resource_caps, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %num_dig_link_enc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_dig_link_enc.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.is_dig_link_enc_stream.exit.thread_crit_edge

for.inc.i.is_dig_link_enc_stream.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_dig_link_enc_stream.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

42:                                               ; preds = %if.then7.i._crit_edge, %if.then6.i._crit_edge
  %inc3 = add i8 %dig_stream_count.0365, 1
  br label %is_dig_link_enc_stream.exit.thread

is_dig_link_enc_stream.exit.thread:               ; preds = %42, %for.inc.i.is_dig_link_enc_stream.exit.thread_crit_edge, %for.cond.preheader.i.is_dig_link_enc_stream.exit.thread_crit_edge, %for.body.is_dig_link_enc_stream.exit.thread_crit_edge
  %43 = phi i8 [ %inc3, %42 ], [ %dig_stream_count.0365, %for.body.is_dig_link_enc_stream.exit.thread_crit_edge ], [ %dig_stream_count.0365, %for.cond.preheader.i.is_dig_link_enc_stream.exit.thread_crit_edge ], [ %dig_stream_count.0365, %for.inc.i.is_dig_link_enc_stream.exit.thread_crit_edge ]
  %inc5 = add nuw nsw i32 %i.0368, 1
  %exitcond.not = icmp eq i32 %inc5, 6
  br i1 %exitcond.not, label %for.end, label %is_dig_link_enc_stream.exit.thread.for.body_crit_edge

is_dig_link_enc_stream.exit.thread.for.body_crit_edge: ; preds = %is_dig_link_enc_stream.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %is_dig_link_enc_stream.exit.thread
  %arrayidx19 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0
  %44 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %44)
  %assignment15.sroa.0.0.copyload247 = load i8, ptr %arrayidx19, align 4
  %45 = and i8 %assignment15.sroa.0.0.copyload247, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool21.not = icmp eq i8 %45, 0
  br i1 %tobool21.not, label %for.end.if.end30_crit_edge, label %if.then22

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %assignment15.sroa.5248.0.arrayidx19.sroa_idx = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %assignment15.sroa.5248.0.copyload249 = load ptr, ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx, align 4
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state, align 4
  %cmp25 = icmp eq ptr %assignment15.sroa.5248.0.copyload249, %48
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %for.end.if.end30_crit_edge
  %valid_stream_ptrs.1.off0 = phi i1 [ true, %for.end.if.end30_crit_edge ], [ %cmp25, %if.then22 ]
  %arrayidx19.1 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %assignment15.sroa.0.0.copyload247.1 = load i8, ptr %arrayidx19.1, align 4
  %50 = and i8 %assignment15.sroa.0.0.copyload247.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool21.not.1 = icmp eq i8 %50, 0
  br i1 %tobool21.not.1, label %if.end30.if.end30.1_crit_edge, label %if.then22.1

if.end30.if.end30.1_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.1

if.then22.1:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %assignment15.sroa.5248.0.arrayidx19.sroa_idx.1 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 3
  %51 = ptrtoint ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %assignment15.sroa.5248.0.copyload249.1 = load ptr, ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.1, align 4
  %arrayidx24.1 = getelementptr [6 x ptr], ptr %state, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx24.1, align 4
  %cmp25.1 = icmp eq ptr %assignment15.sroa.5248.0.copyload249.1, %53
  %spec.select316.1 = select i1 %cmp25.1, i1 %valid_stream_ptrs.1.off0, i1 false
  br label %if.end30.1

if.end30.1:                                       ; preds = %if.then22.1, %if.end30.if.end30.1_crit_edge
  %valid_stream_ptrs.1.off0.1 = phi i1 [ %valid_stream_ptrs.1.off0, %if.end30.if.end30.1_crit_edge ], [ %spec.select316.1, %if.then22.1 ]
  %arrayidx19.2 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2
  %54 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %assignment15.sroa.0.0.copyload247.2 = load i8, ptr %arrayidx19.2, align 4
  %55 = and i8 %assignment15.sroa.0.0.copyload247.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool21.not.2 = icmp eq i8 %55, 0
  br i1 %tobool21.not.2, label %if.end30.1.if.end30.2_crit_edge, label %if.then22.2

if.end30.1.if.end30.2_crit_edge:                  ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.2

if.then22.2:                                      ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #7
  %assignment15.sroa.5248.0.arrayidx19.sroa_idx.2 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 3
  %56 = ptrtoint ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %assignment15.sroa.5248.0.copyload249.2 = load ptr, ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.2, align 4
  %arrayidx24.2 = getelementptr [6 x ptr], ptr %state, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx24.2, align 4
  %cmp25.2 = icmp eq ptr %assignment15.sroa.5248.0.copyload249.2, %58
  %spec.select316.2 = select i1 %cmp25.2, i1 %valid_stream_ptrs.1.off0.1, i1 false
  br label %if.end30.2

if.end30.2:                                       ; preds = %if.then22.2, %if.end30.1.if.end30.2_crit_edge
  %valid_stream_ptrs.1.off0.2 = phi i1 [ %valid_stream_ptrs.1.off0.1, %if.end30.1.if.end30.2_crit_edge ], [ %spec.select316.2, %if.then22.2 ]
  %arrayidx19.3 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3
  %59 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %assignment15.sroa.0.0.copyload247.3 = load i8, ptr %arrayidx19.3, align 4
  %60 = and i8 %assignment15.sroa.0.0.copyload247.3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool21.not.3 = icmp eq i8 %60, 0
  br i1 %tobool21.not.3, label %if.end30.2.if.end30.3_crit_edge, label %if.then22.3

if.end30.2.if.end30.3_crit_edge:                  ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.3

if.then22.3:                                      ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #7
  %assignment15.sroa.5248.0.arrayidx19.sroa_idx.3 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 3
  %61 = ptrtoint ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %assignment15.sroa.5248.0.copyload249.3 = load ptr, ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.3, align 4
  %arrayidx24.3 = getelementptr [6 x ptr], ptr %state, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx24.3, align 4
  %cmp25.3 = icmp eq ptr %assignment15.sroa.5248.0.copyload249.3, %63
  %spec.select316.3 = select i1 %cmp25.3, i1 %valid_stream_ptrs.1.off0.2, i1 false
  br label %if.end30.3

if.end30.3:                                       ; preds = %if.then22.3, %if.end30.2.if.end30.3_crit_edge
  %valid_stream_ptrs.1.off0.3 = phi i1 [ %valid_stream_ptrs.1.off0.2, %if.end30.2.if.end30.3_crit_edge ], [ %spec.select316.3, %if.then22.3 ]
  %arrayidx19.4 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4
  %64 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load1_noabort(i32 %64)
  %assignment15.sroa.0.0.copyload247.4 = load i8, ptr %arrayidx19.4, align 4
  %65 = and i8 %assignment15.sroa.0.0.copyload247.4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool21.not.4 = icmp eq i8 %65, 0
  br i1 %tobool21.not.4, label %if.end30.3.if.end30.4_crit_edge, label %if.then22.4

if.end30.3.if.end30.4_crit_edge:                  ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.4

if.then22.4:                                      ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #7
  %assignment15.sroa.5248.0.arrayidx19.sroa_idx.4 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 3
  %66 = ptrtoint ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %assignment15.sroa.5248.0.copyload249.4 = load ptr, ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.4, align 4
  %arrayidx24.4 = getelementptr [6 x ptr], ptr %state, i32 0, i32 4
  %67 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx24.4, align 4
  %cmp25.4 = icmp eq ptr %assignment15.sroa.5248.0.copyload249.4, %68
  %spec.select316.4 = select i1 %cmp25.4, i1 %valid_stream_ptrs.1.off0.3, i1 false
  br label %if.end30.4

if.end30.4:                                       ; preds = %if.then22.4, %if.end30.3.if.end30.4_crit_edge
  %valid_stream_ptrs.1.off0.4 = phi i1 [ %valid_stream_ptrs.1.off0.3, %if.end30.3.if.end30.4_crit_edge ], [ %spec.select316.4, %if.then22.4 ]
  %arrayidx19.5 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5
  %69 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_load1_noabort(i32 %69)
  %assignment15.sroa.0.0.copyload247.5 = load i8, ptr %arrayidx19.5, align 4
  %70 = and i8 %assignment15.sroa.0.0.copyload247.5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool21.not.5 = icmp eq i8 %70, 0
  br i1 %tobool21.not.5, label %if.end30.4.if.end30.5_crit_edge, label %if.then22.5

if.end30.4.if.end30.5_crit_edge:                  ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.5

if.then22.5:                                      ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #7
  %assignment15.sroa.5248.0.arrayidx19.sroa_idx.5 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 3
  %71 = ptrtoint ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %assignment15.sroa.5248.0.copyload249.5 = load ptr, ptr %assignment15.sroa.5248.0.arrayidx19.sroa_idx.5, align 4
  %arrayidx24.5 = getelementptr [6 x ptr], ptr %state, i32 0, i32 5
  %72 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx24.5, align 4
  %cmp25.5 = icmp eq ptr %assignment15.sroa.5248.0.copyload249.5, %73
  %spec.select316.5 = select i1 %cmp25.5, i1 %valid_stream_ptrs.1.off0.4, i1 false
  br label %if.end30.5

if.end30.5:                                       ; preds = %if.then22.5, %if.end30.4.if.end30.5_crit_edge
  %valid_stream_ptrs.1.off0.5 = phi i1 [ %valid_stream_ptrs.1.off0.4, %if.end30.4.if.end30.5_crit_edge ], [ %spec.select316.5, %if.then22.5 ]
  %assignment_j.sroa.6.0.arrayidx54.sroa_idx = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 2
  %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 1
  %assignment_j.sroa.6.0.arrayidx54.sroa_idx.1 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 2
  %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.1 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 1
  %assignment_j.sroa.6.0.arrayidx54.sroa_idx.2 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 2
  %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.2 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 1
  %assignment_j.sroa.6.0.arrayidx54.sroa_idx.3 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 2
  %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.3 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 1
  %assignment_j.sroa.6.0.arrayidx54.sroa_idx.4 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 2
  %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.4 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 1
  %assignment_j.sroa.6.0.arrayidx54.sroa_idx.5 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 2
  %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.5 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 1
  br label %for.body37

for.cond80.preheader:                             ; preds = %if.end76
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %74)
  %assignment84.sroa.0.0.copyload237 = load i8, ptr %arrayidx19, align 4
  %assignment84.sroa.5238.0.arrayidx88.sroa_idx = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 2
  %75 = ptrtoint ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %assignment84.sroa.5238.0.copyload239 = load i32, ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx, align 4
  %76 = and i8 %assignment84.sroa.0.0.copyload237, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool90.not = icmp eq i8 %76, 0
  br i1 %tobool90.not, label %for.cond80.preheader.if.end107_crit_edge, label %for.cond92.preheader

for.cond80.preheader.if.end107_crit_edge:         ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

for.body37:                                       ; preds = %if.end76.for.body37_crit_edge, %if.end30.5
  %valid_uniqueness.0.off0377 = phi i1 [ true, %if.end30.5 ], [ %valid_uniqueness.5.off0, %if.end76.for.body37_crit_edge ]
  %i.2375 = phi i32 [ 0, %if.end30.5 ], [ %inc78, %if.end76.for.body37_crit_edge ]
  %arrayidx41 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 %i.2375
  %77 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %77)
  %assignment_i.sroa.0.0.copyload244 = load i8, ptr %arrayidx41, align 4
  %assignment_i.sroa.6.0.arrayidx41.sroa_idx = getelementptr inbounds i8, ptr %arrayidx41, i32 12
  %78 = ptrtoint ptr %assignment_i.sroa.6.0.arrayidx41.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %78)
  %assignment_i.sroa.6.0.copyload245 = load i32, ptr %assignment_i.sroa.6.0.arrayidx41.sroa_idx, align 4
  %79 = and i8 %assignment_i.sroa.0.0.copyload244, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool43.not = icmp eq i8 %79, 0
  br i1 %tobool43.not, label %for.body37.if.end76_crit_edge, label %if.then44

for.body37.if.end76_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then44:                                        ; preds = %for.body37
  %assignment_i.sroa.5.sroa.4.0.assignment_i.sroa.5.0.arrayidx41.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx41, i32 4
  %80 = ptrtoint ptr %assignment_i.sroa.5.sroa.4.0.assignment_i.sroa.5.0.arrayidx41.sroa_idx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %assignment_i.sroa.5.sroa.4.0.copyload351 = load i64, ptr %assignment_i.sroa.5.sroa.4.0.assignment_i.sroa.5.0.arrayidx41.sroa_idx.sroa_idx, align 1
  %ep_id_i.sroa.5.0.extract.trunc = trunc i64 %assignment_i.sroa.5.sroa.4.0.copyload351 to i32
  %arrayidx45 = getelementptr [6 x i32], ptr %eng_ids_per_ep_id, i32 0, i32 %i.2375
  %81 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx45, align 4
  %inc46 = add i32 %82, 1
  store i32 %inc46, ptr %arrayidx45, align 4
  %83 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %83)
  %assignment_j.sroa.0.0.copyload241 = load i8, ptr %arrayidx19, align 4
  %84 = ptrtoint ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %84)
  %assignment_j.sroa.6.0.copyload242 = load i32, ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2375)
  %cmp55 = icmp eq i32 %i.2375, 0
  %85 = and i8 %assignment_j.sroa.0.0.copyload241, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool60.not = icmp eq i8 %85, 0
  %or.cond317 = select i1 %cmp55, i1 true, i1 %tobool60.not
  br i1 %or.cond317, label %if.then44.cleanup_crit_edge, label %if.then61

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then61:                                        ; preds = %if.then44
  %86 = ptrtoint ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %assignment_j.sroa.5.sroa.4.0.copyload350 = load i64, ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx, align 1
  %ep_id_j.sroa.0.0.extract.shift364 = xor i64 %assignment_j.sroa.5.sroa.4.0.copyload350, %assignment_i.sroa.5.sroa.4.0.copyload351
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %ep_id_j.sroa.0.0.extract.shift364)
  %87 = icmp ult i64 %ep_id_j.sroa.0.0.extract.shift364, 281474976710656
  br i1 %87, label %are_ep_ids_equal.exit, label %if.then61.cleanup_crit_edge

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

are_ep_ids_equal.exit:                            ; preds = %if.then61
  %ep_id_j.sroa.5.0.extract.trunc = trunc i64 %assignment_j.sroa.5.sroa.4.0.copyload350 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_id_i.sroa.5.0.extract.trunc, i32 %ep_id_j.sroa.5.0.extract.trunc)
  %cmp24.i = icmp ne i32 %ep_id_i.sroa.5.0.extract.trunc, %ep_id_j.sroa.5.0.extract.trunc
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment_i.sroa.6.0.copyload245, i32 %assignment_j.sroa.6.0.copyload242)
  %cmp66.not = icmp eq i32 %assignment_i.sroa.6.0.copyload245, %assignment_j.sroa.6.0.copyload242
  %or.cond = select i1 %cmp24.i, i1 true, i1 %cmp66.not
  br i1 %or.cond, label %are_ep_ids_equal.exit.cleanup_crit_edge, label %if.then68

are_ep_ids_equal.exit.cleanup_crit_edge:          ; preds = %are_ep_ids_equal.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then68:                                        ; preds = %are_ep_ids_equal.exit
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx45, align 4
  %inc70 = add i32 %89, 1
  store i32 %inc70, ptr %arrayidx45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %are_ep_ids_equal.exit.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.then44.cleanup_crit_edge
  %valid_uniqueness.4.off0 = phi i1 [ %valid_uniqueness.0.off0377, %if.then44.cleanup_crit_edge ], [ false, %if.then68 ], [ %valid_uniqueness.0.off0377, %are_ep_ids_equal.exit.cleanup_crit_edge ], [ %valid_uniqueness.0.off0377, %if.then61.cleanup_crit_edge ]
  %90 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %assignment_j.sroa.0.0.copyload241.1 = load i8, ptr %arrayidx19.1, align 4
  %91 = ptrtoint ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %assignment_j.sroa.6.0.copyload242.1 = load i32, ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.2375)
  %cmp55.1 = icmp eq i32 %i.2375, 1
  %92 = and i8 %assignment_j.sroa.0.0.copyload241.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool60.not.1 = icmp eq i8 %92, 0
  %or.cond317.1 = select i1 %cmp55.1, i1 true, i1 %tobool60.not.1
  br i1 %or.cond317.1, label %cleanup.cleanup.1_crit_edge, label %if.then61.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.then61.1:                                      ; preds = %cleanup
  %93 = ptrtoint ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.1 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %assignment_j.sroa.5.sroa.4.0.copyload350.1 = load i64, ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.1, align 1
  %ep_id_j.sroa.0.0.extract.shift364.1 = xor i64 %assignment_j.sroa.5.sroa.4.0.copyload350.1, %assignment_i.sroa.5.sroa.4.0.copyload351
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %ep_id_j.sroa.0.0.extract.shift364.1)
  %94 = icmp ult i64 %ep_id_j.sroa.0.0.extract.shift364.1, 281474976710656
  br i1 %94, label %are_ep_ids_equal.exit.1, label %if.then61.1.cleanup.1_crit_edge

if.then61.1.cleanup.1_crit_edge:                  ; preds = %if.then61.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

are_ep_ids_equal.exit.1:                          ; preds = %if.then61.1
  %ep_id_j.sroa.5.0.extract.trunc.1 = trunc i64 %assignment_j.sroa.5.sroa.4.0.copyload350.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_id_i.sroa.5.0.extract.trunc, i32 %ep_id_j.sroa.5.0.extract.trunc.1)
  %cmp24.i.1 = icmp ne i32 %ep_id_i.sroa.5.0.extract.trunc, %ep_id_j.sroa.5.0.extract.trunc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment_i.sroa.6.0.copyload245, i32 %assignment_j.sroa.6.0.copyload242.1)
  %cmp66.not.1 = icmp eq i32 %assignment_i.sroa.6.0.copyload245, %assignment_j.sroa.6.0.copyload242.1
  %or.cond.1 = select i1 %cmp24.i.1, i1 true, i1 %cmp66.not.1
  br i1 %or.cond.1, label %are_ep_ids_equal.exit.1.cleanup.1_crit_edge, label %if.then68.1

are_ep_ids_equal.exit.1.cleanup.1_crit_edge:      ; preds = %are_ep_ids_equal.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.then68.1:                                      ; preds = %are_ep_ids_equal.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx45, align 4
  %inc70.1 = add i32 %96, 1
  store i32 %inc70.1, ptr %arrayidx45, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then68.1, %are_ep_ids_equal.exit.1.cleanup.1_crit_edge, %if.then61.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %valid_uniqueness.4.off0.1 = phi i1 [ %valid_uniqueness.4.off0, %cleanup.cleanup.1_crit_edge ], [ false, %if.then68.1 ], [ %valid_uniqueness.4.off0, %are_ep_ids_equal.exit.1.cleanup.1_crit_edge ], [ %valid_uniqueness.4.off0, %if.then61.1.cleanup.1_crit_edge ]
  %97 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %97)
  %assignment_j.sroa.0.0.copyload241.2 = load i8, ptr %arrayidx19.2, align 4
  %98 = ptrtoint ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %assignment_j.sroa.6.0.copyload242.2 = load i32, ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.2375)
  %cmp55.2 = icmp eq i32 %i.2375, 2
  %99 = and i8 %assignment_j.sroa.0.0.copyload241.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool60.not.2 = icmp eq i8 %99, 0
  %or.cond317.2 = select i1 %cmp55.2, i1 true, i1 %tobool60.not.2
  br i1 %or.cond317.2, label %cleanup.1.cleanup.2_crit_edge, label %if.then61.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.2

if.then61.2:                                      ; preds = %cleanup.1
  %100 = ptrtoint ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.2 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %assignment_j.sroa.5.sroa.4.0.copyload350.2 = load i64, ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.2, align 1
  %ep_id_j.sroa.0.0.extract.shift364.2 = xor i64 %assignment_j.sroa.5.sroa.4.0.copyload350.2, %assignment_i.sroa.5.sroa.4.0.copyload351
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %ep_id_j.sroa.0.0.extract.shift364.2)
  %101 = icmp ult i64 %ep_id_j.sroa.0.0.extract.shift364.2, 281474976710656
  br i1 %101, label %are_ep_ids_equal.exit.2, label %if.then61.2.cleanup.2_crit_edge

if.then61.2.cleanup.2_crit_edge:                  ; preds = %if.then61.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.2

are_ep_ids_equal.exit.2:                          ; preds = %if.then61.2
  %ep_id_j.sroa.5.0.extract.trunc.2 = trunc i64 %assignment_j.sroa.5.sroa.4.0.copyload350.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_id_i.sroa.5.0.extract.trunc, i32 %ep_id_j.sroa.5.0.extract.trunc.2)
  %cmp24.i.2 = icmp ne i32 %ep_id_i.sroa.5.0.extract.trunc, %ep_id_j.sroa.5.0.extract.trunc.2
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment_i.sroa.6.0.copyload245, i32 %assignment_j.sroa.6.0.copyload242.2)
  %cmp66.not.2 = icmp eq i32 %assignment_i.sroa.6.0.copyload245, %assignment_j.sroa.6.0.copyload242.2
  %or.cond.2 = select i1 %cmp24.i.2, i1 true, i1 %cmp66.not.2
  br i1 %or.cond.2, label %are_ep_ids_equal.exit.2.cleanup.2_crit_edge, label %if.then68.2

are_ep_ids_equal.exit.2.cleanup.2_crit_edge:      ; preds = %are_ep_ids_equal.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.2

if.then68.2:                                      ; preds = %are_ep_ids_equal.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx45, align 4
  %inc70.2 = add i32 %103, 1
  store i32 %inc70.2, ptr %arrayidx45, align 4
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then68.2, %are_ep_ids_equal.exit.2.cleanup.2_crit_edge, %if.then61.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %valid_uniqueness.4.off0.2 = phi i1 [ %valid_uniqueness.4.off0.1, %cleanup.1.cleanup.2_crit_edge ], [ false, %if.then68.2 ], [ %valid_uniqueness.4.off0.1, %are_ep_ids_equal.exit.2.cleanup.2_crit_edge ], [ %valid_uniqueness.4.off0.1, %if.then61.2.cleanup.2_crit_edge ]
  %104 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load1_noabort(i32 %104)
  %assignment_j.sroa.0.0.copyload241.3 = load i8, ptr %arrayidx19.3, align 4
  %105 = ptrtoint ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %assignment_j.sroa.6.0.copyload242.3 = load i32, ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.2375)
  %cmp55.3 = icmp eq i32 %i.2375, 3
  %106 = and i8 %assignment_j.sroa.0.0.copyload241.3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool60.not.3 = icmp eq i8 %106, 0
  %or.cond317.3 = select i1 %cmp55.3, i1 true, i1 %tobool60.not.3
  br i1 %or.cond317.3, label %cleanup.2.cleanup.3_crit_edge, label %if.then61.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.3

if.then61.3:                                      ; preds = %cleanup.2
  %107 = ptrtoint ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.3 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %assignment_j.sroa.5.sroa.4.0.copyload350.3 = load i64, ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.3, align 1
  %ep_id_j.sroa.0.0.extract.shift364.3 = xor i64 %assignment_j.sroa.5.sroa.4.0.copyload350.3, %assignment_i.sroa.5.sroa.4.0.copyload351
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %ep_id_j.sroa.0.0.extract.shift364.3)
  %108 = icmp ult i64 %ep_id_j.sroa.0.0.extract.shift364.3, 281474976710656
  br i1 %108, label %are_ep_ids_equal.exit.3, label %if.then61.3.cleanup.3_crit_edge

if.then61.3.cleanup.3_crit_edge:                  ; preds = %if.then61.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.3

are_ep_ids_equal.exit.3:                          ; preds = %if.then61.3
  %ep_id_j.sroa.5.0.extract.trunc.3 = trunc i64 %assignment_j.sroa.5.sroa.4.0.copyload350.3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_id_i.sroa.5.0.extract.trunc, i32 %ep_id_j.sroa.5.0.extract.trunc.3)
  %cmp24.i.3 = icmp ne i32 %ep_id_i.sroa.5.0.extract.trunc, %ep_id_j.sroa.5.0.extract.trunc.3
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment_i.sroa.6.0.copyload245, i32 %assignment_j.sroa.6.0.copyload242.3)
  %cmp66.not.3 = icmp eq i32 %assignment_i.sroa.6.0.copyload245, %assignment_j.sroa.6.0.copyload242.3
  %or.cond.3 = select i1 %cmp24.i.3, i1 true, i1 %cmp66.not.3
  br i1 %or.cond.3, label %are_ep_ids_equal.exit.3.cleanup.3_crit_edge, label %if.then68.3

are_ep_ids_equal.exit.3.cleanup.3_crit_edge:      ; preds = %are_ep_ids_equal.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.3

if.then68.3:                                      ; preds = %are_ep_ids_equal.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx45, align 4
  %inc70.3 = add i32 %110, 1
  store i32 %inc70.3, ptr %arrayidx45, align 4
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then68.3, %are_ep_ids_equal.exit.3.cleanup.3_crit_edge, %if.then61.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %valid_uniqueness.4.off0.3 = phi i1 [ %valid_uniqueness.4.off0.2, %cleanup.2.cleanup.3_crit_edge ], [ false, %if.then68.3 ], [ %valid_uniqueness.4.off0.2, %are_ep_ids_equal.exit.3.cleanup.3_crit_edge ], [ %valid_uniqueness.4.off0.2, %if.then61.3.cleanup.3_crit_edge ]
  %111 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load1_noabort(i32 %111)
  %assignment_j.sroa.0.0.copyload241.4 = load i8, ptr %arrayidx19.4, align 4
  %112 = ptrtoint ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %assignment_j.sroa.6.0.copyload242.4 = load i32, ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.2375)
  %cmp55.4 = icmp eq i32 %i.2375, 4
  %113 = and i8 %assignment_j.sroa.0.0.copyload241.4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool60.not.4 = icmp eq i8 %113, 0
  %or.cond317.4 = select i1 %cmp55.4, i1 true, i1 %tobool60.not.4
  br i1 %or.cond317.4, label %cleanup.3.cleanup.4_crit_edge, label %if.then61.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.4

if.then61.4:                                      ; preds = %cleanup.3
  %114 = ptrtoint ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.4 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 8)
  %assignment_j.sroa.5.sroa.4.0.copyload350.4 = load i64, ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.4, align 1
  %ep_id_j.sroa.0.0.extract.shift364.4 = xor i64 %assignment_j.sroa.5.sroa.4.0.copyload350.4, %assignment_i.sroa.5.sroa.4.0.copyload351
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %ep_id_j.sroa.0.0.extract.shift364.4)
  %115 = icmp ult i64 %ep_id_j.sroa.0.0.extract.shift364.4, 281474976710656
  br i1 %115, label %are_ep_ids_equal.exit.4, label %if.then61.4.cleanup.4_crit_edge

if.then61.4.cleanup.4_crit_edge:                  ; preds = %if.then61.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.4

are_ep_ids_equal.exit.4:                          ; preds = %if.then61.4
  %ep_id_j.sroa.5.0.extract.trunc.4 = trunc i64 %assignment_j.sroa.5.sroa.4.0.copyload350.4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_id_i.sroa.5.0.extract.trunc, i32 %ep_id_j.sroa.5.0.extract.trunc.4)
  %cmp24.i.4 = icmp ne i32 %ep_id_i.sroa.5.0.extract.trunc, %ep_id_j.sroa.5.0.extract.trunc.4
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment_i.sroa.6.0.copyload245, i32 %assignment_j.sroa.6.0.copyload242.4)
  %cmp66.not.4 = icmp eq i32 %assignment_i.sroa.6.0.copyload245, %assignment_j.sroa.6.0.copyload242.4
  %or.cond.4 = select i1 %cmp24.i.4, i1 true, i1 %cmp66.not.4
  br i1 %or.cond.4, label %are_ep_ids_equal.exit.4.cleanup.4_crit_edge, label %if.then68.4

are_ep_ids_equal.exit.4.cleanup.4_crit_edge:      ; preds = %are_ep_ids_equal.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.4

if.then68.4:                                      ; preds = %are_ep_ids_equal.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx45, align 4
  %inc70.4 = add i32 %117, 1
  store i32 %inc70.4, ptr %arrayidx45, align 4
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.then68.4, %are_ep_ids_equal.exit.4.cleanup.4_crit_edge, %if.then61.4.cleanup.4_crit_edge, %cleanup.3.cleanup.4_crit_edge
  %valid_uniqueness.4.off0.4 = phi i1 [ %valid_uniqueness.4.off0.3, %cleanup.3.cleanup.4_crit_edge ], [ false, %if.then68.4 ], [ %valid_uniqueness.4.off0.3, %are_ep_ids_equal.exit.4.cleanup.4_crit_edge ], [ %valid_uniqueness.4.off0.3, %if.then61.4.cleanup.4_crit_edge ]
  %118 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_load1_noabort(i32 %118)
  %assignment_j.sroa.0.0.copyload241.5 = load i8, ptr %arrayidx19.5, align 4
  %119 = ptrtoint ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %assignment_j.sroa.6.0.copyload242.5 = load i32, ptr %assignment_j.sroa.6.0.arrayidx54.sroa_idx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.2375)
  %cmp55.5 = icmp eq i32 %i.2375, 5
  %120 = and i8 %assignment_j.sroa.0.0.copyload241.5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool60.not.5 = icmp eq i8 %120, 0
  %or.cond317.5 = select i1 %cmp55.5, i1 true, i1 %tobool60.not.5
  br i1 %or.cond317.5, label %cleanup.4.if.end76_crit_edge, label %if.then61.5

cleanup.4.if.end76_crit_edge:                     ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then61.5:                                      ; preds = %cleanup.4
  %121 = ptrtoint ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.5 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %assignment_j.sroa.5.sroa.4.0.copyload350.5 = load i64, ptr %assignment_j.sroa.5.sroa.4.0.assignment_j.sroa.5.0.arrayidx54.sroa_idx.sroa_idx.5, align 1
  %ep_id_j.sroa.0.0.extract.shift364.5 = xor i64 %assignment_j.sroa.5.sroa.4.0.copyload350.5, %assignment_i.sroa.5.sroa.4.0.copyload351
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %ep_id_j.sroa.0.0.extract.shift364.5)
  %122 = icmp ult i64 %ep_id_j.sroa.0.0.extract.shift364.5, 281474976710656
  br i1 %122, label %are_ep_ids_equal.exit.5, label %if.then61.5.if.end76_crit_edge

if.then61.5.if.end76_crit_edge:                   ; preds = %if.then61.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

are_ep_ids_equal.exit.5:                          ; preds = %if.then61.5
  %ep_id_j.sroa.5.0.extract.trunc.5 = trunc i64 %assignment_j.sroa.5.sroa.4.0.copyload350.5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_id_i.sroa.5.0.extract.trunc, i32 %ep_id_j.sroa.5.0.extract.trunc.5)
  %cmp24.i.5 = icmp ne i32 %ep_id_i.sroa.5.0.extract.trunc, %ep_id_j.sroa.5.0.extract.trunc.5
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment_i.sroa.6.0.copyload245, i32 %assignment_j.sroa.6.0.copyload242.5)
  %cmp66.not.5 = icmp eq i32 %assignment_i.sroa.6.0.copyload245, %assignment_j.sroa.6.0.copyload242.5
  %or.cond.5 = select i1 %cmp24.i.5, i1 true, i1 %cmp66.not.5
  br i1 %or.cond.5, label %are_ep_ids_equal.exit.5.if.end76_crit_edge, label %if.then68.5

are_ep_ids_equal.exit.5.if.end76_crit_edge:       ; preds = %are_ep_ids_equal.exit.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then68.5:                                      ; preds = %are_ep_ids_equal.exit.5
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx45, align 4
  %inc70.5 = add i32 %124, 1
  store i32 %inc70.5, ptr %arrayidx45, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then68.5, %are_ep_ids_equal.exit.5.if.end76_crit_edge, %if.then61.5.if.end76_crit_edge, %cleanup.4.if.end76_crit_edge, %for.body37.if.end76_crit_edge
  %valid_uniqueness.5.off0 = phi i1 [ %valid_uniqueness.0.off0377, %for.body37.if.end76_crit_edge ], [ %valid_uniqueness.4.off0.4, %cleanup.4.if.end76_crit_edge ], [ false, %if.then68.5 ], [ %valid_uniqueness.4.off0.4, %are_ep_ids_equal.exit.5.if.end76_crit_edge ], [ %valid_uniqueness.4.off0.4, %if.then61.5.if.end76_crit_edge ]
  %inc78 = add nuw nsw i32 %i.2375, 1
  %exitcond390.not = icmp eq i32 %inc78, 6
  br i1 %exitcond390.not, label %for.cond80.preheader, label %if.end76.for.body37_crit_edge

if.end76.for.body37_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37

for.body115.lr.ph:                                ; preds = %if.end107.5
  %link_rate.i329 = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings.i319, i32 0, i32 1
  br label %for.body115

for.cond92.preheader:                             ; preds = %for.cond80.preheader
  %125 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %res_pool, align 8
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %126, i32 0, i32 41
  %127 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %res_cap, align 4
  %num_dig_link_enc = getelementptr inbounds %struct.resource_caps, ptr %128, i32 0, i32 10
  %129 = ptrtoint ptr %num_dig_link_enc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_dig_link_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp93378.not = icmp eq i32 %130, 0
  br i1 %cmp93378.not, label %for.cond92.preheader.if.end107_crit_edge, label %for.cond92.preheader.for.body95_crit_edge

for.cond92.preheader.for.body95_crit_edge:        ; preds = %for.cond92.preheader
  br label %for.body95

for.cond92.preheader.if.end107_crit_edge:         ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %for.cond92.preheader.for.body95_crit_edge
  %j.1379 = phi i32 [ %inc105, %for.body95.for.body95_crit_edge ], [ 0, %for.cond92.preheader.for.body95_crit_edge ]
  %arrayidx98 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %j.1379
  %131 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %assignment84.sroa.5238.0.copyload239)
  %cmp100 = icmp eq i32 %132, %assignment84.sroa.5238.0.copyload239
  %inc105 = add nuw i32 %j.1379, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc105, i32 %130)
  %exitcond391.not = icmp eq i32 %inc105, %130
  %or.cond398 = select i1 %cmp100, i1 true, i1 %exitcond391.not
  br i1 %or.cond398, label %if.end107.loopexit, label %for.body95.for.body95_crit_edge

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95

if.end107.loopexit:                               ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #7
  %133 = xor i1 %cmp100, true
  br label %if.end107

if.end107:                                        ; preds = %if.end107.loopexit, %for.cond92.preheader.if.end107_crit_edge, %for.cond80.preheader.if.end107_crit_edge
  %valid_avail.1.off0 = phi i1 [ true, %for.cond80.preheader.if.end107_crit_edge ], [ true, %for.cond92.preheader.if.end107_crit_edge ], [ %133, %if.end107.loopexit ]
  %134 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %134)
  %assignment84.sroa.0.0.copyload237.1 = load i8, ptr %arrayidx19.1, align 4
  %assignment84.sroa.5238.0.arrayidx88.sroa_idx.1 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 2
  %135 = ptrtoint ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %assignment84.sroa.5238.0.copyload239.1 = load i32, ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.1, align 4
  %136 = and i8 %assignment84.sroa.0.0.copyload237.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool90.not.1 = icmp eq i8 %136, 0
  br i1 %tobool90.not.1, label %if.end107.if.end107.1_crit_edge, label %for.cond92.preheader.1

if.end107.if.end107.1_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.1

for.cond92.preheader.1:                           ; preds = %if.end107
  %137 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %res_pool, align 8
  %res_cap.1 = getelementptr inbounds %struct.resource_pool, ptr %138, i32 0, i32 41
  %139 = ptrtoint ptr %res_cap.1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %res_cap.1, align 4
  %num_dig_link_enc.1 = getelementptr inbounds %struct.resource_caps, ptr %140, i32 0, i32 10
  %141 = ptrtoint ptr %num_dig_link_enc.1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_dig_link_enc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp93378.not.1 = icmp eq i32 %142, 0
  br i1 %cmp93378.not.1, label %for.cond92.preheader.1.if.end107.1_crit_edge, label %for.cond92.preheader.1.for.body95.1_crit_edge

for.cond92.preheader.1.for.body95.1_crit_edge:    ; preds = %for.cond92.preheader.1
  br label %for.body95.1

for.cond92.preheader.1.if.end107.1_crit_edge:     ; preds = %for.cond92.preheader.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.1

for.body95.1:                                     ; preds = %for.cond92.1.for.body95.1_crit_edge, %for.cond92.preheader.1.for.body95.1_crit_edge
  %j.1379.1 = phi i32 [ %inc105.1, %for.cond92.1.for.body95.1_crit_edge ], [ 0, %for.cond92.preheader.1.for.body95.1_crit_edge ]
  %arrayidx98.1 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %j.1379.1
  %143 = ptrtoint ptr %arrayidx98.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx98.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %assignment84.sroa.5238.0.copyload239.1)
  %cmp100.1 = icmp eq i32 %144, %assignment84.sroa.5238.0.copyload239.1
  br i1 %cmp100.1, label %for.body95.1.if.end107.1_crit_edge, label %for.cond92.1

for.body95.1.if.end107.1_crit_edge:               ; preds = %for.body95.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.1

for.cond92.1:                                     ; preds = %for.body95.1
  %inc105.1 = add nuw i32 %j.1379.1, 1
  %exitcond391.1.not = icmp eq i32 %inc105.1, %142
  br i1 %exitcond391.1.not, label %for.cond92.1.if.end107.1_crit_edge, label %for.cond92.1.for.body95.1_crit_edge

for.cond92.1.for.body95.1_crit_edge:              ; preds = %for.cond92.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95.1

for.cond92.1.if.end107.1_crit_edge:               ; preds = %for.cond92.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.1

if.end107.1:                                      ; preds = %for.cond92.1.if.end107.1_crit_edge, %for.body95.1.if.end107.1_crit_edge, %for.cond92.preheader.1.if.end107.1_crit_edge, %if.end107.if.end107.1_crit_edge
  %valid_avail.1.off0.1 = phi i1 [ %valid_avail.1.off0, %if.end107.if.end107.1_crit_edge ], [ %valid_avail.1.off0, %for.cond92.preheader.1.if.end107.1_crit_edge ], [ %valid_avail.1.off0, %for.cond92.1.if.end107.1_crit_edge ], [ false, %for.body95.1.if.end107.1_crit_edge ]
  %145 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %145)
  %assignment84.sroa.0.0.copyload237.2 = load i8, ptr %arrayidx19.2, align 4
  %assignment84.sroa.5238.0.arrayidx88.sroa_idx.2 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 2
  %146 = ptrtoint ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %assignment84.sroa.5238.0.copyload239.2 = load i32, ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.2, align 4
  %147 = and i8 %assignment84.sroa.0.0.copyload237.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool90.not.2 = icmp eq i8 %147, 0
  br i1 %tobool90.not.2, label %if.end107.1.if.end107.2_crit_edge, label %for.cond92.preheader.2

if.end107.1.if.end107.2_crit_edge:                ; preds = %if.end107.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.2

for.cond92.preheader.2:                           ; preds = %if.end107.1
  %148 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %res_pool, align 8
  %res_cap.2 = getelementptr inbounds %struct.resource_pool, ptr %149, i32 0, i32 41
  %150 = ptrtoint ptr %res_cap.2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %res_cap.2, align 4
  %num_dig_link_enc.2 = getelementptr inbounds %struct.resource_caps, ptr %151, i32 0, i32 10
  %152 = ptrtoint ptr %num_dig_link_enc.2 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_dig_link_enc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp93378.not.2 = icmp eq i32 %153, 0
  br i1 %cmp93378.not.2, label %for.cond92.preheader.2.if.end107.2_crit_edge, label %for.cond92.preheader.2.for.body95.2_crit_edge

for.cond92.preheader.2.for.body95.2_crit_edge:    ; preds = %for.cond92.preheader.2
  br label %for.body95.2

for.cond92.preheader.2.if.end107.2_crit_edge:     ; preds = %for.cond92.preheader.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.2

for.body95.2:                                     ; preds = %for.cond92.2.for.body95.2_crit_edge, %for.cond92.preheader.2.for.body95.2_crit_edge
  %j.1379.2 = phi i32 [ %inc105.2, %for.cond92.2.for.body95.2_crit_edge ], [ 0, %for.cond92.preheader.2.for.body95.2_crit_edge ]
  %arrayidx98.2 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %j.1379.2
  %154 = ptrtoint ptr %arrayidx98.2 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx98.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %assignment84.sroa.5238.0.copyload239.2)
  %cmp100.2 = icmp eq i32 %155, %assignment84.sroa.5238.0.copyload239.2
  br i1 %cmp100.2, label %for.body95.2.if.end107.2_crit_edge, label %for.cond92.2

for.body95.2.if.end107.2_crit_edge:               ; preds = %for.body95.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.2

for.cond92.2:                                     ; preds = %for.body95.2
  %inc105.2 = add nuw i32 %j.1379.2, 1
  %exitcond391.2.not = icmp eq i32 %inc105.2, %153
  br i1 %exitcond391.2.not, label %for.cond92.2.if.end107.2_crit_edge, label %for.cond92.2.for.body95.2_crit_edge

for.cond92.2.for.body95.2_crit_edge:              ; preds = %for.cond92.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95.2

for.cond92.2.if.end107.2_crit_edge:               ; preds = %for.cond92.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.2

if.end107.2:                                      ; preds = %for.cond92.2.if.end107.2_crit_edge, %for.body95.2.if.end107.2_crit_edge, %for.cond92.preheader.2.if.end107.2_crit_edge, %if.end107.1.if.end107.2_crit_edge
  %valid_avail.1.off0.2 = phi i1 [ %valid_avail.1.off0.1, %if.end107.1.if.end107.2_crit_edge ], [ %valid_avail.1.off0.1, %for.cond92.preheader.2.if.end107.2_crit_edge ], [ %valid_avail.1.off0.1, %for.cond92.2.if.end107.2_crit_edge ], [ false, %for.body95.2.if.end107.2_crit_edge ]
  %156 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load1_noabort(i32 %156)
  %assignment84.sroa.0.0.copyload237.3 = load i8, ptr %arrayidx19.3, align 4
  %assignment84.sroa.5238.0.arrayidx88.sroa_idx.3 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 2
  %157 = ptrtoint ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %assignment84.sroa.5238.0.copyload239.3 = load i32, ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.3, align 4
  %158 = and i8 %assignment84.sroa.0.0.copyload237.3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool90.not.3 = icmp eq i8 %158, 0
  br i1 %tobool90.not.3, label %if.end107.2.if.end107.3_crit_edge, label %for.cond92.preheader.3

if.end107.2.if.end107.3_crit_edge:                ; preds = %if.end107.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.3

for.cond92.preheader.3:                           ; preds = %if.end107.2
  %159 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %res_pool, align 8
  %res_cap.3 = getelementptr inbounds %struct.resource_pool, ptr %160, i32 0, i32 41
  %161 = ptrtoint ptr %res_cap.3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %res_cap.3, align 4
  %num_dig_link_enc.3 = getelementptr inbounds %struct.resource_caps, ptr %162, i32 0, i32 10
  %163 = ptrtoint ptr %num_dig_link_enc.3 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_dig_link_enc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp93378.not.3 = icmp eq i32 %164, 0
  br i1 %cmp93378.not.3, label %for.cond92.preheader.3.if.end107.3_crit_edge, label %for.cond92.preheader.3.for.body95.3_crit_edge

for.cond92.preheader.3.for.body95.3_crit_edge:    ; preds = %for.cond92.preheader.3
  br label %for.body95.3

for.cond92.preheader.3.if.end107.3_crit_edge:     ; preds = %for.cond92.preheader.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.3

for.body95.3:                                     ; preds = %for.cond92.3.for.body95.3_crit_edge, %for.cond92.preheader.3.for.body95.3_crit_edge
  %j.1379.3 = phi i32 [ %inc105.3, %for.cond92.3.for.body95.3_crit_edge ], [ 0, %for.cond92.preheader.3.for.body95.3_crit_edge ]
  %arrayidx98.3 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %j.1379.3
  %165 = ptrtoint ptr %arrayidx98.3 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx98.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %assignment84.sroa.5238.0.copyload239.3)
  %cmp100.3 = icmp eq i32 %166, %assignment84.sroa.5238.0.copyload239.3
  br i1 %cmp100.3, label %for.body95.3.if.end107.3_crit_edge, label %for.cond92.3

for.body95.3.if.end107.3_crit_edge:               ; preds = %for.body95.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.3

for.cond92.3:                                     ; preds = %for.body95.3
  %inc105.3 = add nuw i32 %j.1379.3, 1
  %exitcond391.3.not = icmp eq i32 %inc105.3, %164
  br i1 %exitcond391.3.not, label %for.cond92.3.if.end107.3_crit_edge, label %for.cond92.3.for.body95.3_crit_edge

for.cond92.3.for.body95.3_crit_edge:              ; preds = %for.cond92.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95.3

for.cond92.3.if.end107.3_crit_edge:               ; preds = %for.cond92.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.3

if.end107.3:                                      ; preds = %for.cond92.3.if.end107.3_crit_edge, %for.body95.3.if.end107.3_crit_edge, %for.cond92.preheader.3.if.end107.3_crit_edge, %if.end107.2.if.end107.3_crit_edge
  %valid_avail.1.off0.3 = phi i1 [ %valid_avail.1.off0.2, %if.end107.2.if.end107.3_crit_edge ], [ %valid_avail.1.off0.2, %for.cond92.preheader.3.if.end107.3_crit_edge ], [ %valid_avail.1.off0.2, %for.cond92.3.if.end107.3_crit_edge ], [ false, %for.body95.3.if.end107.3_crit_edge ]
  %167 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load1_noabort(i32 %167)
  %assignment84.sroa.0.0.copyload237.4 = load i8, ptr %arrayidx19.4, align 4
  %assignment84.sroa.5238.0.arrayidx88.sroa_idx.4 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 2
  %168 = ptrtoint ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %168)
  %assignment84.sroa.5238.0.copyload239.4 = load i32, ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.4, align 4
  %169 = and i8 %assignment84.sroa.0.0.copyload237.4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool90.not.4 = icmp eq i8 %169, 0
  br i1 %tobool90.not.4, label %if.end107.3.if.end107.4_crit_edge, label %for.cond92.preheader.4

if.end107.3.if.end107.4_crit_edge:                ; preds = %if.end107.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.4

for.cond92.preheader.4:                           ; preds = %if.end107.3
  %170 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %res_pool, align 8
  %res_cap.4 = getelementptr inbounds %struct.resource_pool, ptr %171, i32 0, i32 41
  %172 = ptrtoint ptr %res_cap.4 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %res_cap.4, align 4
  %num_dig_link_enc.4 = getelementptr inbounds %struct.resource_caps, ptr %173, i32 0, i32 10
  %174 = ptrtoint ptr %num_dig_link_enc.4 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_dig_link_enc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp93378.not.4 = icmp eq i32 %175, 0
  br i1 %cmp93378.not.4, label %for.cond92.preheader.4.if.end107.4_crit_edge, label %for.cond92.preheader.4.for.body95.4_crit_edge

for.cond92.preheader.4.for.body95.4_crit_edge:    ; preds = %for.cond92.preheader.4
  br label %for.body95.4

for.cond92.preheader.4.if.end107.4_crit_edge:     ; preds = %for.cond92.preheader.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.4

for.body95.4:                                     ; preds = %for.cond92.4.for.body95.4_crit_edge, %for.cond92.preheader.4.for.body95.4_crit_edge
  %j.1379.4 = phi i32 [ %inc105.4, %for.cond92.4.for.body95.4_crit_edge ], [ 0, %for.cond92.preheader.4.for.body95.4_crit_edge ]
  %arrayidx98.4 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %j.1379.4
  %176 = ptrtoint ptr %arrayidx98.4 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx98.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %assignment84.sroa.5238.0.copyload239.4)
  %cmp100.4 = icmp eq i32 %177, %assignment84.sroa.5238.0.copyload239.4
  br i1 %cmp100.4, label %for.body95.4.if.end107.4_crit_edge, label %for.cond92.4

for.body95.4.if.end107.4_crit_edge:               ; preds = %for.body95.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.4

for.cond92.4:                                     ; preds = %for.body95.4
  %inc105.4 = add nuw i32 %j.1379.4, 1
  %exitcond391.4.not = icmp eq i32 %inc105.4, %175
  br i1 %exitcond391.4.not, label %for.cond92.4.if.end107.4_crit_edge, label %for.cond92.4.for.body95.4_crit_edge

for.cond92.4.for.body95.4_crit_edge:              ; preds = %for.cond92.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95.4

for.cond92.4.if.end107.4_crit_edge:               ; preds = %for.cond92.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.4

if.end107.4:                                      ; preds = %for.cond92.4.if.end107.4_crit_edge, %for.body95.4.if.end107.4_crit_edge, %for.cond92.preheader.4.if.end107.4_crit_edge, %if.end107.3.if.end107.4_crit_edge
  %valid_avail.1.off0.4 = phi i1 [ %valid_avail.1.off0.3, %if.end107.3.if.end107.4_crit_edge ], [ %valid_avail.1.off0.3, %for.cond92.preheader.4.if.end107.4_crit_edge ], [ %valid_avail.1.off0.3, %for.cond92.4.if.end107.4_crit_edge ], [ false, %for.body95.4.if.end107.4_crit_edge ]
  %178 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_load1_noabort(i32 %178)
  %assignment84.sroa.0.0.copyload237.5 = load i8, ptr %arrayidx19.5, align 4
  %assignment84.sroa.5238.0.arrayidx88.sroa_idx.5 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 2
  %179 = ptrtoint ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %179)
  %assignment84.sroa.5238.0.copyload239.5 = load i32, ptr %assignment84.sroa.5238.0.arrayidx88.sroa_idx.5, align 4
  %180 = and i8 %assignment84.sroa.0.0.copyload237.5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool90.not.5 = icmp eq i8 %180, 0
  br i1 %tobool90.not.5, label %if.end107.4.if.end107.5_crit_edge, label %for.cond92.preheader.5

if.end107.4.if.end107.5_crit_edge:                ; preds = %if.end107.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.5

for.cond92.preheader.5:                           ; preds = %if.end107.4
  %181 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %res_pool, align 8
  %res_cap.5 = getelementptr inbounds %struct.resource_pool, ptr %182, i32 0, i32 41
  %183 = ptrtoint ptr %res_cap.5 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %res_cap.5, align 4
  %num_dig_link_enc.5 = getelementptr inbounds %struct.resource_caps, ptr %184, i32 0, i32 10
  %185 = ptrtoint ptr %num_dig_link_enc.5 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %num_dig_link_enc.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp93378.not.5 = icmp eq i32 %186, 0
  br i1 %cmp93378.not.5, label %for.cond92.preheader.5.if.end107.5_crit_edge, label %for.cond92.preheader.5.for.body95.5_crit_edge

for.cond92.preheader.5.for.body95.5_crit_edge:    ; preds = %for.cond92.preheader.5
  br label %for.body95.5

for.cond92.preheader.5.if.end107.5_crit_edge:     ; preds = %for.cond92.preheader.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.5

for.body95.5:                                     ; preds = %for.cond92.5.for.body95.5_crit_edge, %for.cond92.preheader.5.for.body95.5_crit_edge
  %j.1379.5 = phi i32 [ %inc105.5, %for.cond92.5.for.body95.5_crit_edge ], [ 0, %for.cond92.preheader.5.for.body95.5_crit_edge ]
  %arrayidx98.5 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %j.1379.5
  %187 = ptrtoint ptr %arrayidx98.5 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx98.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %assignment84.sroa.5238.0.copyload239.5)
  %cmp100.5 = icmp eq i32 %188, %assignment84.sroa.5238.0.copyload239.5
  br i1 %cmp100.5, label %for.body95.5.if.end107.5_crit_edge, label %for.cond92.5

for.body95.5.if.end107.5_crit_edge:               ; preds = %for.body95.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.5

for.cond92.5:                                     ; preds = %for.body95.5
  %inc105.5 = add nuw i32 %j.1379.5, 1
  %exitcond391.5.not = icmp eq i32 %inc105.5, %186
  br i1 %exitcond391.5.not, label %for.cond92.5.if.end107.5_crit_edge, label %for.cond92.5.for.body95.5_crit_edge

for.cond92.5.for.body95.5_crit_edge:              ; preds = %for.cond92.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95.5

for.cond92.5.if.end107.5_crit_edge:               ; preds = %for.cond92.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.5

if.end107.5:                                      ; preds = %for.cond92.5.if.end107.5_crit_edge, %for.body95.5.if.end107.5_crit_edge, %for.cond92.preheader.5.if.end107.5_crit_edge, %if.end107.4.if.end107.5_crit_edge
  %valid_avail.1.off0.5 = phi i1 [ %valid_avail.1.off0.4, %if.end107.4.if.end107.5_crit_edge ], [ %valid_avail.1.off0.4, %for.cond92.preheader.5.if.end107.5_crit_edge ], [ %valid_avail.1.off0.4, %for.cond92.5.if.end107.5_crit_edge ], [ false, %for.body95.5.if.end107.5_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select, i8 %43)
  %cmp7.not = icmp eq i8 %spec.select, %43
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 2
  %189 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %cmp113384.not = icmp eq i8 %190, 0
  br i1 %cmp113384.not, label %if.end107.5.for.end131_crit_edge, label %for.body115.lr.ph

if.end107.5.for.end131_crit_edge:                 ; preds = %if.end107.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end131

for.body115:                                      ; preds = %for.inc129.for.body115_crit_edge, %for.body115.lr.ph
  %i.4385 = phi i32 [ 0, %for.body115.lr.ph ], [ %inc130, %for.inc129.for.body115_crit_edge ]
  %arrayidx118 = getelementptr [6 x ptr], ptr %state, i32 0, i32 %i.4385
  %191 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx118, align 4
  %tobool.not.i320 = icmp eq ptr %192, null
  br i1 %tobool.not.i320, label %for.body115.for.inc129_crit_edge, label %for.cond.preheader.i326

for.body115.for.inc129_crit_edge:                 ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc129

for.cond.preheader.i326:                          ; preds = %for.body115
  %ctx.i321 = getelementptr inbounds %struct.dc_stream_state, ptr %192, i32 0, i32 32
  %193 = ptrtoint ptr %ctx.i321 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ctx.i321, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 8
  %res_pool30.i322 = getelementptr inbounds %struct.dc, ptr %196, i32 0, i32 12
  %197 = ptrtoint ptr %res_pool30.i322 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %res_pool30.i322, align 8
  %res_cap31.i323 = getelementptr inbounds %struct.resource_pool, ptr %198, i32 0, i32 41
  %199 = ptrtoint ptr %res_cap31.i323 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %res_cap31.i323, align 4
  %num_dig_link_enc32.i324 = getelementptr inbounds %struct.resource_caps, ptr %200, i32 0, i32 10
  %201 = ptrtoint ptr %num_dig_link_enc32.i324 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %num_dig_link_enc32.i324, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp33.not.i325 = icmp eq i32 %202, 0
  br i1 %cmp33.not.i325, label %for.cond.preheader.i326.for.inc129_crit_edge, label %for.body.lr.ph.i330

for.cond.preheader.i326.for.inc129_crit_edge:     ; preds = %for.cond.preheader.i326
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc129

for.body.lr.ph.i330:                              ; preds = %for.cond.preheader.i326
  %link.i327 = getelementptr inbounds %struct.dc_stream_state, ptr %192, i32 0, i32 1
  %signal.i328 = getelementptr inbounds %struct.dc_stream_state, ptr %192, i32 0, i32 36
  br label %for.body.i334

for.body.i334:                                    ; preds = %for.inc.i347.for.body.i334_crit_edge, %for.body.lr.ph.i330
  %203 = phi ptr [ %198, %for.body.lr.ph.i330 ], [ %225, %for.inc.i347.for.body.i334_crit_edge ]
  %i.034.i331 = phi i32 [ 0, %for.body.lr.ph.i330 ], [ %inc.i342, %for.inc.i347.for.body.i334_crit_edge ]
  %arrayidx.i332 = getelementptr %struct.resource_pool, ptr %203, i32 0, i32 22, i32 %i.034.i331
  %204 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx.i332, align 4
  %tobool4.not.i333 = icmp eq ptr %205, null
  br i1 %tobool4.not.i333, label %for.body.i334.for.inc.i347_crit_edge, label %land.lhs.true.i339

for.body.i334.for.inc.i347_crit_edge:             ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i347

land.lhs.true.i339:                               ; preds = %for.body.i334
  %206 = ptrtoint ptr %link.i327 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %link.i327, align 4
  %connector_signal.i335 = getelementptr inbounds %struct.dc_link, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %connector_signal.i335 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %connector_signal.i335, align 8
  %output_signals.i336 = getelementptr inbounds %struct.link_encoder, ptr %205, i32 0, i32 5
  %210 = ptrtoint ptr %output_signals.i336 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %output_signals.i336, align 4
  %and.i337 = and i32 %211, %209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i337)
  %tobool5.not.i338 = icmp eq i32 %and.i337, 0
  br i1 %tobool5.not.i338, label %land.lhs.true.i339.for.inc.i347_crit_edge, label %if.then6.i340

land.lhs.true.i339.for.inc.i347_crit_edge:        ; preds = %land.lhs.true.i339
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i347

if.then6.i340:                                    ; preds = %land.lhs.true.i339
  %212 = ptrtoint ptr %signal.i328 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %signal.i328, align 4
  %214 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %213, label %if.then6.i340.land.lhs.true121_crit_edge [
    i32 32, label %if.then6.i340.if.then7.i341_crit_edge
    i32 128, label %if.then6.i340.if.then7.i341_crit_edge401
    i32 64, label %if.then6.i340.if.then7.i341_crit_edge402
  ]

if.then6.i340.if.then7.i341_crit_edge402:         ; preds = %if.then6.i340
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i341

if.then6.i340.if.then7.i341_crit_edge401:         ; preds = %if.then6.i340
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i341

if.then6.i340.if.then7.i341_crit_edge:            ; preds = %if.then6.i340
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i341

if.then6.i340.land.lhs.true121_crit_edge:         ; preds = %if.then6.i340
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true121

if.then7.i341:                                    ; preds = %if.then6.i340.if.then7.i341_crit_edge, %if.then6.i340.if.then7.i341_crit_edge401, %if.then6.i340.if.then7.i341_crit_edge402
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_settings.i319) #5
  %215 = call ptr @memset(ptr %link_settings.i319, i32 0, i32 16)
  call void @decide_link_settings(ptr noundef nonnull %192, ptr noundef nonnull %link_settings.i319) #5
  %216 = ptrtoint ptr %link_rate.i329 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %link_rate.i329, align 4
  %218 = add i32 %217, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %218)
  %219 = icmp ult i32 %218, 25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_settings.i319) #5
  br i1 %219, label %if.then7.i341.land.lhs.true121_crit_edge, label %if.then7.i341.for.inc.i347_crit_edge

if.then7.i341.for.inc.i347_crit_edge:             ; preds = %if.then7.i341
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i347

if.then7.i341.land.lhs.true121_crit_edge:         ; preds = %if.then7.i341
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true121

for.inc.i347:                                     ; preds = %if.then7.i341.for.inc.i347_crit_edge, %land.lhs.true.i339.for.inc.i347_crit_edge, %for.body.i334.for.inc.i347_crit_edge
  %inc.i342 = add nuw i32 %i.034.i331, 1
  %220 = ptrtoint ptr %ctx.i321 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ctx.i321, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 8
  %res_pool.i343 = getelementptr inbounds %struct.dc, ptr %223, i32 0, i32 12
  %224 = ptrtoint ptr %res_pool.i343 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %res_pool.i343, align 8
  %res_cap.i344 = getelementptr inbounds %struct.resource_pool, ptr %225, i32 0, i32 41
  %226 = ptrtoint ptr %res_cap.i344 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %res_cap.i344, align 4
  %num_dig_link_enc.i345 = getelementptr inbounds %struct.resource_caps, ptr %227, i32 0, i32 10
  %228 = ptrtoint ptr %num_dig_link_enc.i345 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %num_dig_link_enc.i345, align 4
  %cmp.i346 = icmp ult i32 %inc.i342, %229
  br i1 %cmp.i346, label %for.inc.i347.for.body.i334_crit_edge, label %for.inc.i347.for.inc129_crit_edge

for.inc.i347.for.inc129_crit_edge:                ; preds = %for.inc.i347
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc129

for.inc.i347.for.body.i334_crit_edge:             ; preds = %for.inc.i347
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i334

land.lhs.true121:                                 ; preds = %if.then7.i341.land.lhs.true121_crit_edge, %if.then6.i340.land.lhs.true121_crit_edge
  %link_enc = getelementptr inbounds %struct.dc_stream_state, ptr %192, i32 0, i32 2
  %230 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %link_enc, align 8
  %cmp122 = icmp eq ptr %231, null
  br i1 %cmp122, label %land.lhs.true121.land.rhs151_crit_edge, label %land.lhs.true121.for.inc129_crit_edge

land.lhs.true121.for.inc129_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc129

land.lhs.true121.land.rhs151_crit_edge:           ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs151

for.inc129:                                       ; preds = %land.lhs.true121.for.inc129_crit_edge, %for.inc.i347.for.inc129_crit_edge, %for.cond.preheader.i326.for.inc129_crit_edge, %for.body115.for.inc129_crit_edge
  %inc130 = add nuw nsw i32 %i.4385, 1
  %232 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %stream_count, align 8
  %conv112 = zext i8 %233 to i32
  %cmp113 = icmp ult i32 %inc130, %conv112
  br i1 %cmp113, label %for.inc129.for.body115_crit_edge, label %for.inc129.for.end131_crit_edge

for.inc129.for.end131_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end131

for.inc129.for.body115_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body115

for.end131:                                       ; preds = %for.inc129.for.end131_crit_edge, %if.end107.5.for.end131_crit_edge
  %234 = select i1 %cmp7.not, i1 %valid_stream_ptrs.1.off0.5, i1 false
  %235 = select i1 %234, i1 %valid_uniqueness.5.off0, i1 false
  %236 = select i1 %235, i1 %valid_avail.1.off0.5, i1 false
  br i1 %236, label %for.end131.if.end219_crit_edge, label %for.end131.land.rhs151_crit_edge

for.end131.land.rhs151_crit_edge:                 ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs151

for.end131.if.end219_crit_edge:                   ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

land.rhs151:                                      ; preds = %for.end131.land.rhs151_crit_edge, %land.lhs.true121.land.rhs151_crit_edge
  %cmp113.lcssa395 = phi i32 [ 16, %for.end131.land.rhs151_crit_edge ], [ 0, %land.lhs.true121.land.rhs151_crit_edge ]
  %.b311 = load i1, ptr @link_enc_cfg_validate.__already_done, align 1
  br i1 %.b311, label %land.rhs151.if.then190_crit_edge, label %if.then158, !prof !22

land.rhs151.if.then190_crit_edge:                 ; preds = %land.rhs151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then190

if.then158:                                       ; preds = %land.rhs151
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @link_enc_cfg_validate.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 623, i32 noundef 9, ptr noundef null) #5
  br label %if.then190

if.then190:                                       ; preds = %if.then158, %land.rhs151.if.then190_crit_edge
  call void @kgdb_breakpoint() #5
  %conv200 = zext i1 %cmp7.not to i32
  %shl = select i1 %valid_stream_ptrs.1.off0.5, i32 2, i32 0
  %or = or i32 %shl, %conv200
  %shl207 = select i1 %valid_uniqueness.5.off0, i32 4, i32 0
  %or208 = or i32 %or, %shl207
  %shl212 = select i1 %valid_avail.1.off0.5, i32 8, i32 0
  %or213 = or i32 %or208, %shl212
  %or218 = or i32 %or213, %cmp113.lcssa395
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %or218) #5
  br label %if.end219

if.end219:                                        ; preds = %if.then190, %for.end131.if.end219_crit_edge
  %spec.select318397 = phi i1 [ true, %for.end131.if.end219_crit_edge ], [ false, %if.then190 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eng_ids_per_ep_id) #5
  ret i1 %spec.select318397
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @link_enc_cfg_link_enc_unassign(ptr nocapture noundef %state, ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  %link_settings.i = alloca %struct.dc_link_settings, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %stream, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %res_pool30.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool30.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool30.i, align 8
  %res_cap31.i = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %res_cap31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_cap31.i, align 4
  %num_dig_link_enc32.i = getelementptr inbounds %struct.resource_caps, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %num_dig_link_enc32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_dig_link_enc32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp33.not.i = icmp eq i32 %9, 0
  br i1 %cmp33.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %link_rate.i = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %10 = phi ptr [ %5, %for.body.lr.ph.i ], [ %32, %for.inc.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %10, i32 0, i32 22, i32 %i.034.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %13 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link.i, align 4
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connector_signal.i, align 8
  %output_signals.i = getelementptr inbounds %struct.link_encoder, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %output_signals.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %output_signals.i, align 4
  %and.i = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %signal.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %20, label %if.then6.i.if.end_crit_edge [
    i32 32, label %if.then6.i.if.then7.i_crit_edge
    i32 128, label %if.then6.i.if.then7.i_crit_edge21
    i32 64, label %if.then6.i.if.then7.i_crit_edge22
  ]

if.then6.i.if.then7.i_crit_edge22:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.then7.i_crit_edge21:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.then7.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7.i:                                       ; preds = %if.then6.i.if.then7.i_crit_edge, %if.then6.i.if.then7.i_crit_edge21, %if.then6.i.if.then7.i_crit_edge22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_settings.i) #5
  %22 = call ptr @memset(ptr %link_settings.i, i32 0, i32 16)
  call void @decide_link_settings(ptr noundef nonnull %stream, ptr noundef nonnull %link_settings.i) #5
  %23 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_rate.i, align 4
  %25 = add i32 %24, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %25)
  %26 = icmp ult i32 %25, 25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_settings.i) #5
  br i1 %26, label %if.then7.i.if.end_crit_edge, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then7.i.if.end_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.i:                                        ; preds = %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.034.i, 1
  %27 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res_pool.i, align 8
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %32, i32 0, i32 41
  %33 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %res_cap.i, align 4
  %num_dig_link_enc.i = getelementptr inbounds %struct.resource_caps, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %num_dig_link_enc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_dig_link_enc.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %36
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end:                                           ; preds = %if.then7.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge
  %link_enc = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 2
  %37 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %link_enc, align 8
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %preferred_engine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.not.i = icmp eq i32 %40, -1
  br i1 %cmp.not.i, label %if.end3.cleanup_crit_edge, label %for.body.preheader.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end3
  %arrayidx.i7 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0
  %41 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %assignment.sroa.0.0.copyload27.i = load i8, ptr %arrayidx.i7, align 4
  %42 = and i8 %assignment.sroa.0.0.copyload27.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i8 = icmp eq i8 %42, 0
  br i1 %tobool.not.i8, label %for.body.preheader.i.for.inc.i10_crit_edge, label %land.lhs.true.i9

for.body.preheader.i.for.inc.i10_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i10

land.lhs.true.i9:                                 ; preds = %for.body.preheader.i
  %assignment.sroa.528.0.arrayidx.sroa_idx.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %assignment.sroa.528.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %assignment.sroa.528.0.copyload29.i = load ptr, ptr %assignment.sroa.528.0.arrayidx.sroa_idx.i, align 4
  %cmp3.i = icmp eq ptr %assignment.sroa.528.0.copyload29.i, %stream
  br i1 %cmp3.i, label %land.lhs.true.i9.if.then4.i_crit_edge, label %land.lhs.true.i9.for.inc.i10_crit_edge

land.lhs.true.i9.for.inc.i10_crit_edge:           ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i10

land.lhs.true.i9.if.then4.i_crit_edge:            ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then4.i:                                       ; preds = %land.lhs.true.5.i.if.then4.i_crit_edge, %land.lhs.true.4.i.if.then4.i_crit_edge, %land.lhs.true.3.i.if.then4.i_crit_edge, %land.lhs.true.2.i.if.then4.i_crit_edge, %land.lhs.true.1.i.if.then4.i_crit_edge, %land.lhs.true.i9.if.then4.i_crit_edge
  %i.050.lcssa.i = phi i32 [ 0, %land.lhs.true.i9.if.then4.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.then4.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.then4.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.then4.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.then4.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.then4.i_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i7, %land.lhs.true.i9.if.then4.i_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.if.then4.i_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.if.then4.i_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.if.then4.i_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.if.then4.i_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.if.then4.i_crit_edge ]
  %44 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx.lcssa.i, align 4
  %stream_count.i.i = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 2
  %45 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %stream_count.i.i, align 8
  %conv.i.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp25.not.i.i = icmp eq i8 %46, 0
  br i1 %cmp25.not.i.i, label %if.then4.i.if.then11.i_crit_edge, label %if.then4.i.for.body.i.i_crit_edge

if.then4.i.for.body.i.i_crit_edge:                ; preds = %if.then4.i
  br label %for.body.i.i

if.then4.i.if.then11.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then4.i.for.body.i.i_crit_edge
  %i.026.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 %i.026.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %assignment.sroa.0.0.copyload11.i.i = load i8, ptr %arrayidx.i.i, align 4
  %48 = and i8 %assignment.sroa.0.0.copyload11.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %assignment.sroa.512.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 12
  %49 = ptrtoint ptr %assignment.sroa.512.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %assignment.sroa.512.0.copyload13.i.i = load i32, ptr %assignment.sroa.512.0.arrayidx.sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.i.i, i32 %40)
  %cmp6.i.i = icmp eq i32 %assignment.sroa.512.0.copyload13.i.i, %40
  br i1 %cmp6.i.i, label %get_stream_using_link_enc.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then11.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.then11.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

get_stream_using_link_enc.exit.i:                 ; preds = %land.lhs.true.i.i
  %arrayidx8.i.i = getelementptr [6 x ptr], ptr %state, i32 0, i32 %i.026.i.i
  %50 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx8.i.i, align 4
  %cmp10.i = icmp eq ptr %51, null
  br i1 %cmp10.i, label %get_stream_using_link_enc.exit.i.if.then11.i_crit_edge, label %get_stream_using_link_enc.exit.i.cleanup.i_crit_edge

get_stream_using_link_enc.exit.i.cleanup.i_crit_edge: ; preds = %get_stream_using_link_enc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

get_stream_using_link_enc.exit.i.if.then11.i_crit_edge: ; preds = %get_stream_using_link_enc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.then11.i:                                      ; preds = %get_stream_using_link_enc.exit.i.if.then11.i_crit_edge, %for.inc.i.i.if.then11.i_crit_edge, %if.then4.i.if.then11.i_crit_edge
  %arrayidx14.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 2, i32 %40
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %40, ptr %arrayidx14.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then11.i, %get_stream_using_link_enc.exit.i.cleanup.i_crit_edge
  %53 = ptrtoint ptr %link_enc to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %link_enc, align 8
  %eng_id19.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 %i.050.lcssa.i, i32 2
  %54 = ptrtoint ptr %eng_id19.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %eng_id19.i, align 4
  %stream24.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 %i.050.lcssa.i, i32 3
  %55 = ptrtoint ptr %stream24.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %stream24.i, align 4
  br label %cleanup

for.inc.i10:                                      ; preds = %land.lhs.true.i9.for.inc.i10_crit_edge, %for.body.preheader.i.for.inc.i10_crit_edge
  %arrayidx.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %assignment.sroa.0.0.copyload27.1.i = load i8, ptr %arrayidx.1.i, align 4
  %57 = and i8 %assignment.sroa.0.0.copyload27.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.1.i = icmp eq i8 %57, 0
  br i1 %tobool.not.1.i, label %for.inc.i10.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i10.for.inc.1.i_crit_edge:                ; preds = %for.inc.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i10
  %assignment.sroa.528.0.arrayidx.sroa_idx.1.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 1, i32 3
  %58 = ptrtoint ptr %assignment.sroa.528.0.arrayidx.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %assignment.sroa.528.0.copyload29.1.i = load ptr, ptr %assignment.sroa.528.0.arrayidx.sroa_idx.1.i, align 4
  %cmp3.1.i = icmp eq ptr %assignment.sroa.528.0.copyload29.1.i, %stream
  br i1 %cmp3.1.i, label %land.lhs.true.1.i.if.then4.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

land.lhs.true.1.i.if.then4.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i10.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %assignment.sroa.0.0.copyload27.2.i = load i8, ptr %arrayidx.2.i, align 4
  %60 = and i8 %assignment.sroa.0.0.copyload27.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.2.i = icmp eq i8 %60, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %assignment.sroa.528.0.arrayidx.sroa_idx.2.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 2, i32 3
  %61 = ptrtoint ptr %assignment.sroa.528.0.arrayidx.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %assignment.sroa.528.0.copyload29.2.i = load ptr, ptr %assignment.sroa.528.0.arrayidx.sroa_idx.2.i, align 4
  %cmp3.2.i = icmp eq ptr %assignment.sroa.528.0.copyload29.2.i, %stream
  br i1 %cmp3.2.i, label %land.lhs.true.2.i.if.then4.i_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

land.lhs.true.2.i.if.then4.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3
  %62 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %assignment.sroa.0.0.copyload27.3.i = load i8, ptr %arrayidx.3.i, align 4
  %63 = and i8 %assignment.sroa.0.0.copyload27.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.3.i = icmp eq i8 %63, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %assignment.sroa.528.0.arrayidx.sroa_idx.3.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 3, i32 3
  %64 = ptrtoint ptr %assignment.sroa.528.0.arrayidx.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %assignment.sroa.528.0.copyload29.3.i = load ptr, ptr %assignment.sroa.528.0.arrayidx.sroa_idx.3.i, align 4
  %cmp3.3.i = icmp eq ptr %assignment.sroa.528.0.copyload29.3.i, %stream
  br i1 %cmp3.3.i, label %land.lhs.true.3.i.if.then4.i_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

land.lhs.true.3.i.if.then4.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4
  %65 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %assignment.sroa.0.0.copyload27.4.i = load i8, ptr %arrayidx.4.i, align 4
  %66 = and i8 %assignment.sroa.0.0.copyload27.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.4.i = icmp eq i8 %66, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %assignment.sroa.528.0.arrayidx.sroa_idx.4.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 4, i32 3
  %67 = ptrtoint ptr %assignment.sroa.528.0.arrayidx.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %assignment.sroa.528.0.copyload29.4.i = load ptr, ptr %assignment.sroa.528.0.arrayidx.sroa_idx.4.i, align 4
  %cmp3.4.i = icmp eq ptr %assignment.sroa.528.0.copyload29.4.i, %stream
  br i1 %cmp3.4.i, label %land.lhs.true.4.i.if.then4.i_crit_edge, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

land.lhs.true.4.i.if.then4.i_crit_edge:           ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5
  %68 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %assignment.sroa.0.0.copyload27.5.i = load i8, ptr %arrayidx.5.i, align 4
  %69 = and i8 %assignment.sroa.0.0.copyload27.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.5.i = icmp eq i8 %69, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.cleanup_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %assignment.sroa.528.0.arrayidx.sroa_idx.5.i = getelementptr %struct.dc_state, ptr %state, i32 0, i32 4, i32 6, i32 1, i32 5, i32 3
  %70 = ptrtoint ptr %assignment.sroa.528.0.arrayidx.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %assignment.sroa.528.0.copyload29.5.i = load ptr, ptr %assignment.sroa.528.0.arrayidx.sroa_idx.5.i, align 4
  %cmp3.5.i = icmp eq ptr %assignment.sroa.528.0.copyload29.5.i, %stream
  br i1 %cmp3.5.i, label %land.lhs.true.5.i.if.then4.i_crit_edge, label %land.lhs.true.5.i.cleanup_crit_edge

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.5.i.if.then4.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

cleanup:                                          ; preds = %land.lhs.true.5.i.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge, %cleanup.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @link_enc_cfg_is_transmitter_mappable(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %link_enc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %link_enc, i32 0, i32 6
  %0 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %preferred_engine, align 4
  %current_state.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %2 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state.i.i, align 4, !noalias !24
  %link_enc_cfg_ctx.i.i = getelementptr inbounds %struct.dc_state, ptr %3, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %link_enc_cfg_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_enc_cfg_ctx.i.i, align 8, !noalias !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  %arrayidx7.i.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 1, i32 0
  %arrayidx.i.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 3, i32 0
  %arrayidx7.sink.i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i, ptr %arrayidx7.i.i
  %6 = ptrtoint ptr %arrayidx7.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %assignment.sroa.0.0.copyload11.i = load i8, ptr %arrayidx7.sink.i.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.i, i32 12
  %7 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %assignment.sroa.512.0.copyload13.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.i)
  %tobool.not.i = icmp ne i8 %assignment.sroa.0.0.copyload11.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.i, i32 %1)
  %cmp4.i = icmp eq i32 %assignment.sroa.512.0.copyload13.i, %1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.i

entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.i:                                       ; preds = %entry
  %arrayidx7.i.1.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 1, i32 1
  %arrayidx.i.1.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 3, i32 1
  %arrayidx7.sink.i.1.i = select i1 %cmp.i.i, ptr %arrayidx.i.1.i, ptr %arrayidx7.i.1.i
  %8 = ptrtoint ptr %arrayidx7.sink.i.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %assignment.sroa.0.0.copyload11.1.i = load i8, ptr %arrayidx7.sink.i.1.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1.i, i32 12
  %9 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %assignment.sroa.512.0.copyload13.1.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.1.i)
  %tobool.not.1.i = icmp ne i8 %assignment.sroa.0.0.copyload11.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.1.i, i32 %1)
  %cmp4.1.i = icmp eq i32 %assignment.sroa.512.0.copyload13.1.i, %1
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 %cmp4.1.i, i1 false
  br i1 %or.cond.1.i, label %for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.1.i

for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx7.i.2.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 1, i32 2
  %arrayidx.i.2.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 3, i32 2
  %arrayidx7.sink.i.2.i = select i1 %cmp.i.i, ptr %arrayidx.i.2.i, ptr %arrayidx7.i.2.i
  %10 = ptrtoint ptr %arrayidx7.sink.i.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %assignment.sroa.0.0.copyload11.2.i = load i8, ptr %arrayidx7.sink.i.2.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2.i, i32 12
  %11 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %assignment.sroa.512.0.copyload13.2.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.2.i)
  %tobool.not.2.i = icmp ne i8 %assignment.sroa.0.0.copyload11.2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.2.i, i32 %1)
  %cmp4.2.i = icmp eq i32 %assignment.sroa.512.0.copyload13.2.i, %1
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 %cmp4.2.i, i1 false
  br i1 %or.cond.2.i, label %for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx7.i.3.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 1, i32 3
  %arrayidx.i.3.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 3, i32 3
  %arrayidx7.sink.i.3.i = select i1 %cmp.i.i, ptr %arrayidx.i.3.i, ptr %arrayidx7.i.3.i
  %12 = ptrtoint ptr %arrayidx7.sink.i.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %assignment.sroa.0.0.copyload11.3.i = load i8, ptr %arrayidx7.sink.i.3.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3.i, i32 12
  %13 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %assignment.sroa.512.0.copyload13.3.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.3.i)
  %tobool.not.3.i = icmp ne i8 %assignment.sroa.0.0.copyload11.3.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.3.i, i32 %1)
  %cmp4.3.i = icmp eq i32 %assignment.sroa.512.0.copyload13.3.i, %1
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 %cmp4.3.i, i1 false
  br i1 %or.cond.3.i, label %for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx7.i.4.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 1, i32 4
  %arrayidx.i.4.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 3, i32 4
  %arrayidx7.sink.i.4.i = select i1 %cmp.i.i, ptr %arrayidx.i.4.i, ptr %arrayidx7.i.4.i
  %14 = ptrtoint ptr %arrayidx7.sink.i.4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %assignment.sroa.0.0.copyload11.4.i = load i8, ptr %arrayidx7.sink.i.4.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4.i, i32 12
  %15 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %assignment.sroa.512.0.copyload13.4.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.4.i)
  %tobool.not.4.i = icmp ne i8 %assignment.sroa.0.0.copyload11.4.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.4.i, i32 %1)
  %cmp4.4.i = icmp eq i32 %assignment.sroa.512.0.copyload13.4.i, %1
  %or.cond.4.i = select i1 %tobool.not.4.i, i1 %cmp4.4.i, i1 false
  br i1 %or.cond.4.i, label %for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx7.i.5.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 1, i32 5
  %arrayidx.i.5.i = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 6, i32 3, i32 5
  %arrayidx7.sink.i.5.i = select i1 %cmp.i.i, ptr %arrayidx.i.5.i, ptr %arrayidx7.i.5.i
  %16 = ptrtoint ptr %arrayidx7.sink.i.5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %assignment.sroa.0.0.copyload11.5.i = load i8, ptr %arrayidx7.sink.i.5.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5.i, i32 12
  %17 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %assignment.sroa.512.0.copyload13.5.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.5.i)
  %tobool.not.5.i = icmp ne i8 %assignment.sroa.0.0.copyload11.5.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.5.i, i32 %1)
  %cmp4.5.i = icmp eq i32 %assignment.sroa.512.0.copyload13.5.i, %1
  %or.cond.5.i = select i1 %tobool.not.5.i, i1 %cmp4.5.i, i1 false
  br i1 %or.cond.5.i, label %for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.4.i.if.end_crit_edge

for.cond.4.i.if.end_crit_edge:                    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

link_enc_cfg_get_stream_using_link_enc.exit:      ; preds = %for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge
  %arrayidx7.sink.i.lcssa.i = phi ptr [ %arrayidx7.sink.i.i, %entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.1.i, %for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.2.i, %for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.3.i, %for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.4.i, %for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.5.i, %for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ]
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.lcssa.i, i32 16
  %18 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %assignment.sroa.6.0.copyload14.i = load ptr, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.i, align 4
  %tobool.not = icmp eq ptr %assignment.sroa.6.0.copyload14.i, null
  br i1 %tobool.not, label %link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge, label %if.then

link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge: ; preds = %link_enc_cfg_get_stream_using_link_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %link_enc_cfg_get_stream_using_link_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %assignment.sroa.6.0.copyload14.i, i32 0, i32 1
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %is_dig_mapping_flexible = getelementptr inbounds %struct.dc_link, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %is_dig_mapping_flexible to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_dig_mapping_flexible, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1 = icmp ne i8 %22, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge, %for.cond.4.i.if.end_crit_edge
  %is_mappable.0.off0 = phi i1 [ %tobool1, %if.then ], [ false, %link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge ], [ false, %for.cond.4.i.if.end_crit_edge ]
  ret i1 %is_mappable.0.off0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @link_enc_cfg_get_stream_using_link_enc(ptr nocapture noundef readonly %dc, i32 noundef %eng_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state.i, align 4, !noalias !27
  %link_enc_cfg_ctx.i = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %link_enc_cfg_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_enc_cfg_ctx.i, align 8, !noalias !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %arrayidx7.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 0
  %arrayidx.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 0
  %arrayidx7.sink.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx7.i
  %4 = ptrtoint ptr %arrayidx7.sink.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %assignment.sroa.0.0.copyload11 = load i8, ptr %arrayidx7.sink.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i, i32 12
  %5 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %assignment.sroa.512.0.copyload13 = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11)
  %tobool.not = icmp ne i8 %assignment.sroa.0.0.copyload11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13, i32 %eng_id)
  %cmp4 = icmp eq i32 %assignment.sroa.512.0.copyload13, %eng_id
  %or.cond = select i1 %tobool.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx7.i.1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 1
  %arrayidx.i.1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 1
  %arrayidx7.sink.i.1 = select i1 %cmp.i, ptr %arrayidx.i.1, ptr %arrayidx7.i.1
  %6 = ptrtoint ptr %arrayidx7.sink.i.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %assignment.sroa.0.0.copyload11.1 = load i8, ptr %arrayidx7.sink.i.1, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1, i32 12
  %7 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %assignment.sroa.512.0.copyload13.1 = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.1)
  %tobool.not.1 = icmp ne i8 %assignment.sroa.0.0.copyload11.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.1, i32 %eng_id)
  %cmp4.1 = icmp eq i32 %assignment.sroa.512.0.copyload13.1, %eng_id
  %or.cond.1 = select i1 %tobool.not.1, i1 %cmp4.1, i1 false
  br i1 %or.cond.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx7.i.2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 2
  %arrayidx.i.2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 2
  %arrayidx7.sink.i.2 = select i1 %cmp.i, ptr %arrayidx.i.2, ptr %arrayidx7.i.2
  %8 = ptrtoint ptr %arrayidx7.sink.i.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %assignment.sroa.0.0.copyload11.2 = load i8, ptr %arrayidx7.sink.i.2, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2, i32 12
  %9 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %assignment.sroa.512.0.copyload13.2 = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.2)
  %tobool.not.2 = icmp ne i8 %assignment.sroa.0.0.copyload11.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.2, i32 %eng_id)
  %cmp4.2 = icmp eq i32 %assignment.sroa.512.0.copyload13.2, %eng_id
  %or.cond.2 = select i1 %tobool.not.2, i1 %cmp4.2, i1 false
  br i1 %or.cond.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx7.i.3 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 3
  %arrayidx.i.3 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 3
  %arrayidx7.sink.i.3 = select i1 %cmp.i, ptr %arrayidx.i.3, ptr %arrayidx7.i.3
  %10 = ptrtoint ptr %arrayidx7.sink.i.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %assignment.sroa.0.0.copyload11.3 = load i8, ptr %arrayidx7.sink.i.3, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3, i32 12
  %11 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %assignment.sroa.512.0.copyload13.3 = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.3)
  %tobool.not.3 = icmp ne i8 %assignment.sroa.0.0.copyload11.3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.3, i32 %eng_id)
  %cmp4.3 = icmp eq i32 %assignment.sroa.512.0.copyload13.3, %eng_id
  %or.cond.3 = select i1 %tobool.not.3, i1 %cmp4.3, i1 false
  br i1 %or.cond.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx7.i.4 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 4
  %arrayidx.i.4 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 4
  %arrayidx7.sink.i.4 = select i1 %cmp.i, ptr %arrayidx.i.4, ptr %arrayidx7.i.4
  %12 = ptrtoint ptr %arrayidx7.sink.i.4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %assignment.sroa.0.0.copyload11.4 = load i8, ptr %arrayidx7.sink.i.4, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4, i32 12
  %13 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %assignment.sroa.512.0.copyload13.4 = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.4)
  %tobool.not.4 = icmp ne i8 %assignment.sroa.0.0.copyload11.4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.4, i32 %eng_id)
  %cmp4.4 = icmp eq i32 %assignment.sroa.512.0.copyload13.4, %eng_id
  %or.cond.4 = select i1 %tobool.not.4, i1 %cmp4.4, i1 false
  br i1 %or.cond.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx7.i.5 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 5
  %arrayidx.i.5 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 5
  %arrayidx7.sink.i.5 = select i1 %cmp.i, ptr %arrayidx.i.5, ptr %arrayidx7.i.5
  %14 = ptrtoint ptr %arrayidx7.sink.i.5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %assignment.sroa.0.0.copyload11.5 = load i8, ptr %arrayidx7.sink.i.5, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5, i32 12
  %15 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %assignment.sroa.512.0.copyload13.5 = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.5)
  %tobool.not.5 = icmp ne i8 %assignment.sroa.0.0.copyload11.5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.5, i32 %eng_id)
  %cmp4.5 = icmp eq i32 %assignment.sroa.512.0.copyload13.5, %eng_id
  %or.cond.5 = select i1 %tobool.not.5, i1 %cmp4.5, i1 false
  br i1 %or.cond.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %arrayidx7.sink.i.lcssa = phi ptr [ %arrayidx7.sink.i, %entry.cleanup_crit_edge ], [ %arrayidx7.sink.i.1, %for.cond.cleanup_crit_edge ], [ %arrayidx7.sink.i.2, %for.cond.1.cleanup_crit_edge ], [ %arrayidx7.sink.i.3, %for.cond.2.cleanup_crit_edge ], [ %arrayidx7.sink.i.4, %for.cond.3.cleanup_crit_edge ], [ %arrayidx7.sink.i.5, %for.cond.4.cleanup_crit_edge ]
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i.lcssa, i32 16
  %16 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %assignment.sroa.6.0.copyload14 = load ptr, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx, align 4
  br label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.4.for.end_crit_edge
  %stream.2 = phi ptr [ %assignment.sroa.6.0.copyload14, %cleanup ], [ null, %for.cond.4.for.end_crit_edge ]
  ret ptr %stream.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @link_enc_cfg_get_link_using_link_enc(ptr nocapture noundef readonly %dc, i32 noundef %eng_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state.i.i, align 4, !noalias !30
  %link_enc_cfg_ctx.i.i = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %link_enc_cfg_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_enc_cfg_ctx.i.i, align 8, !noalias !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 1
  %arrayidx7.i.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 0
  %arrayidx.i.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 0
  %arrayidx7.sink.i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i, ptr %arrayidx7.i.i
  %4 = ptrtoint ptr %arrayidx7.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %assignment.sroa.0.0.copyload11.i = load i8, ptr %arrayidx7.sink.i.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.i, i32 12
  %5 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %assignment.sroa.512.0.copyload13.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.i)
  %tobool.not.i = icmp ne i8 %assignment.sroa.0.0.copyload11.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.i, i32 %eng_id)
  %cmp4.i = icmp eq i32 %assignment.sroa.512.0.copyload13.i, %eng_id
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.i

entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.i:                                       ; preds = %entry
  %arrayidx7.i.1.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 1
  %arrayidx.i.1.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 1
  %arrayidx7.sink.i.1.i = select i1 %cmp.i.i, ptr %arrayidx.i.1.i, ptr %arrayidx7.i.1.i
  %6 = ptrtoint ptr %arrayidx7.sink.i.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %assignment.sroa.0.0.copyload11.1.i = load i8, ptr %arrayidx7.sink.i.1.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1.i, i32 12
  %7 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %assignment.sroa.512.0.copyload13.1.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.1.i)
  %tobool.not.1.i = icmp ne i8 %assignment.sroa.0.0.copyload11.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.1.i, i32 %eng_id)
  %cmp4.1.i = icmp eq i32 %assignment.sroa.512.0.copyload13.1.i, %eng_id
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 %cmp4.1.i, i1 false
  br i1 %or.cond.1.i, label %for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.1.i

for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx7.i.2.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 2
  %arrayidx.i.2.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 2
  %arrayidx7.sink.i.2.i = select i1 %cmp.i.i, ptr %arrayidx.i.2.i, ptr %arrayidx7.i.2.i
  %8 = ptrtoint ptr %arrayidx7.sink.i.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %assignment.sroa.0.0.copyload11.2.i = load i8, ptr %arrayidx7.sink.i.2.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2.i, i32 12
  %9 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %assignment.sroa.512.0.copyload13.2.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.2.i)
  %tobool.not.2.i = icmp ne i8 %assignment.sroa.0.0.copyload11.2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.2.i, i32 %eng_id)
  %cmp4.2.i = icmp eq i32 %assignment.sroa.512.0.copyload13.2.i, %eng_id
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 %cmp4.2.i, i1 false
  br i1 %or.cond.2.i, label %for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx7.i.3.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 3
  %arrayidx.i.3.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 3
  %arrayidx7.sink.i.3.i = select i1 %cmp.i.i, ptr %arrayidx.i.3.i, ptr %arrayidx7.i.3.i
  %10 = ptrtoint ptr %arrayidx7.sink.i.3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %assignment.sroa.0.0.copyload11.3.i = load i8, ptr %arrayidx7.sink.i.3.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3.i, i32 12
  %11 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %assignment.sroa.512.0.copyload13.3.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.3.i)
  %tobool.not.3.i = icmp ne i8 %assignment.sroa.0.0.copyload11.3.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.3.i, i32 %eng_id)
  %cmp4.3.i = icmp eq i32 %assignment.sroa.512.0.copyload13.3.i, %eng_id
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 %cmp4.3.i, i1 false
  br i1 %or.cond.3.i, label %for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx7.i.4.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 4
  %arrayidx.i.4.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 4
  %arrayidx7.sink.i.4.i = select i1 %cmp.i.i, ptr %arrayidx.i.4.i, ptr %arrayidx7.i.4.i
  %12 = ptrtoint ptr %arrayidx7.sink.i.4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %assignment.sroa.0.0.copyload11.4.i = load i8, ptr %arrayidx7.sink.i.4.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4.i, i32 12
  %13 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %assignment.sroa.512.0.copyload13.4.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.4.i)
  %tobool.not.4.i = icmp ne i8 %assignment.sroa.0.0.copyload11.4.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.4.i, i32 %eng_id)
  %cmp4.4.i = icmp eq i32 %assignment.sroa.512.0.copyload13.4.i, %eng_id
  %or.cond.4.i = select i1 %tobool.not.4.i, i1 %cmp4.4.i, i1 false
  br i1 %or.cond.4.i, label %for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx7.i.5.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 5
  %arrayidx.i.5.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 5
  %arrayidx7.sink.i.5.i = select i1 %cmp.i.i, ptr %arrayidx.i.5.i, ptr %arrayidx7.i.5.i
  %14 = ptrtoint ptr %arrayidx7.sink.i.5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %assignment.sroa.0.0.copyload11.5.i = load i8, ptr %arrayidx7.sink.i.5.i, align 4
  %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5.i, i32 12
  %15 = ptrtoint ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %assignment.sroa.512.0.copyload13.5.i = load i32, ptr %assignment.sroa.512.0.arrayidx7.sink.i.sroa_idx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload11.5.i)
  %tobool.not.5.i = icmp ne i8 %assignment.sroa.0.0.copyload11.5.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.512.0.copyload13.5.i, i32 %eng_id)
  %cmp4.5.i = icmp eq i32 %assignment.sroa.512.0.copyload13.5.i, %eng_id
  %or.cond.5.i = select i1 %tobool.not.5.i, i1 %cmp4.5.i, i1 false
  br i1 %or.cond.5.i, label %for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, label %for.cond.4.i.if.end_crit_edge

for.cond.4.i.if.end_crit_edge:                    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %link_enc_cfg_get_stream_using_link_enc.exit

link_enc_cfg_get_stream_using_link_enc.exit:      ; preds = %for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge, %entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge
  %arrayidx7.sink.i.lcssa.i = phi ptr [ %arrayidx7.sink.i.i, %entry.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.1.i, %for.cond.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.2.i, %for.cond.1.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.3.i, %for.cond.2.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.4.i, %for.cond.3.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ], [ %arrayidx7.sink.i.5.i, %for.cond.4.i.link_enc_cfg_get_stream_using_link_enc.exit_crit_edge ]
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx7.sink.i.lcssa.i, i32 16
  %16 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %assignment.sroa.6.0.copyload14.i = load ptr, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.i, align 4
  %tobool.not = icmp eq ptr %assignment.sroa.6.0.copyload14.i, null
  br i1 %tobool.not, label %link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge, label %if.then

link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge: ; preds = %link_enc_cfg_get_stream_using_link_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %link_enc_cfg_get_stream_using_link_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %assignment.sroa.6.0.copyload14.i, i32 0, i32 1
  %17 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge, %for.cond.4.i.if.end_crit_edge
  %link.0 = phi ptr [ %18, %if.then ], [ null, %link_enc_cfg_get_stream_using_link_enc.exit.if.end_crit_edge ], [ null, %for.cond.4.i.if.end_crit_edge ]
  ret ptr %link.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @link_enc_cfg_get_link_enc_used_by_link(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %link) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link_id1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %0 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.compoundliteral.sroa.0.0.copyload11 = load i32, ptr %link_id1, align 4
  %ep_type2 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 40
  %1 = ptrtoint ptr %ep_type2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ep_type2, align 8
  %current_state.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %3 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %current_state.i, align 4, !noalias !33
  %link_enc_cfg_ctx.i = getelementptr inbounds %struct.dc_state, ptr %4, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %link_enc_cfg_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_enc_cfg_ctx.i, align 8, !noalias !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  %arrayidx7.i = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 1, i32 0
  %arrayidx.i = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 3, i32 0
  %arrayidx7.sink.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx7.i
  %7 = ptrtoint ptr %arrayidx7.sink.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %assignment.sroa.0.0.copyload16 = load i8, ptr %arrayidx7.sink.i, align 4
  %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i, i32 4
  %8 = ptrtoint ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %assignment.sroa.517.0.copyload18 = load i32, ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i, i32 8
  %9 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %assignment.sroa.6.0.copyload19 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload16)
  %tobool.not = icmp ne i8 %assignment.sroa.0.0.copyload16, 0
  %cmp.unshifted.i = xor i32 %assignment.sroa.517.0.copyload18, %.compoundliteral.sroa.0.0.copyload11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i)
  %10 = icmp ult i32 %cmp.unshifted.i, 65536
  %or.cond = select i1 %tobool.not, i1 %10, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload19, i32 %2)
  %cmp24.i = icmp eq i32 %assignment.sroa.6.0.copyload19, %2
  %or.cond27 = select i1 %or.cond, i1 %cmp24.i, i1 false
  br i1 %or.cond27, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx7.i.1 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 1, i32 1
  %arrayidx.i.1 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 3, i32 1
  %arrayidx7.sink.i.1 = select i1 %cmp.i, ptr %arrayidx.i.1, ptr %arrayidx7.i.1
  %11 = ptrtoint ptr %arrayidx7.sink.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %assignment.sroa.0.0.copyload16.1 = load i8, ptr %arrayidx7.sink.i.1, align 4
  %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1, i32 4
  %12 = ptrtoint ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %assignment.sroa.517.0.copyload18.1 = load i32, ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.1, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1, i32 8
  %13 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %assignment.sroa.6.0.copyload19.1 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload16.1)
  %tobool.not.1 = icmp ne i8 %assignment.sroa.0.0.copyload16.1, 0
  %cmp.unshifted.i.1 = xor i32 %assignment.sroa.517.0.copyload18.1, %.compoundliteral.sroa.0.0.copyload11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.1)
  %14 = icmp ult i32 %cmp.unshifted.i.1, 65536
  %or.cond.1 = select i1 %tobool.not.1, i1 %14, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload19.1, i32 %2)
  %cmp24.i.1 = icmp eq i32 %assignment.sroa.6.0.copyload19.1, %2
  %or.cond27.1 = select i1 %or.cond.1, i1 %cmp24.i.1, i1 false
  br i1 %or.cond27.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx7.i.2 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 1, i32 2
  %arrayidx.i.2 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 3, i32 2
  %arrayidx7.sink.i.2 = select i1 %cmp.i, ptr %arrayidx.i.2, ptr %arrayidx7.i.2
  %15 = ptrtoint ptr %arrayidx7.sink.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %assignment.sroa.0.0.copyload16.2 = load i8, ptr %arrayidx7.sink.i.2, align 4
  %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2, i32 4
  %16 = ptrtoint ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %assignment.sroa.517.0.copyload18.2 = load i32, ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.2, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2, i32 8
  %17 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %assignment.sroa.6.0.copyload19.2 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload16.2)
  %tobool.not.2 = icmp ne i8 %assignment.sroa.0.0.copyload16.2, 0
  %cmp.unshifted.i.2 = xor i32 %assignment.sroa.517.0.copyload18.2, %.compoundliteral.sroa.0.0.copyload11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.2)
  %18 = icmp ult i32 %cmp.unshifted.i.2, 65536
  %or.cond.2 = select i1 %tobool.not.2, i1 %18, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload19.2, i32 %2)
  %cmp24.i.2 = icmp eq i32 %assignment.sroa.6.0.copyload19.2, %2
  %or.cond27.2 = select i1 %or.cond.2, i1 %cmp24.i.2, i1 false
  br i1 %or.cond27.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx7.i.3 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 1, i32 3
  %arrayidx.i.3 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 3, i32 3
  %arrayidx7.sink.i.3 = select i1 %cmp.i, ptr %arrayidx.i.3, ptr %arrayidx7.i.3
  %19 = ptrtoint ptr %arrayidx7.sink.i.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %assignment.sroa.0.0.copyload16.3 = load i8, ptr %arrayidx7.sink.i.3, align 4
  %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3, i32 4
  %20 = ptrtoint ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %assignment.sroa.517.0.copyload18.3 = load i32, ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.3, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3, i32 8
  %21 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %assignment.sroa.6.0.copyload19.3 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload16.3)
  %tobool.not.3 = icmp ne i8 %assignment.sroa.0.0.copyload16.3, 0
  %cmp.unshifted.i.3 = xor i32 %assignment.sroa.517.0.copyload18.3, %.compoundliteral.sroa.0.0.copyload11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.3)
  %22 = icmp ult i32 %cmp.unshifted.i.3, 65536
  %or.cond.3 = select i1 %tobool.not.3, i1 %22, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload19.3, i32 %2)
  %cmp24.i.3 = icmp eq i32 %assignment.sroa.6.0.copyload19.3, %2
  %or.cond27.3 = select i1 %or.cond.3, i1 %cmp24.i.3, i1 false
  br i1 %or.cond27.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx7.i.4 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 1, i32 4
  %arrayidx.i.4 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 3, i32 4
  %arrayidx7.sink.i.4 = select i1 %cmp.i, ptr %arrayidx.i.4, ptr %arrayidx7.i.4
  %23 = ptrtoint ptr %arrayidx7.sink.i.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %assignment.sroa.0.0.copyload16.4 = load i8, ptr %arrayidx7.sink.i.4, align 4
  %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.4 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4, i32 4
  %24 = ptrtoint ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %assignment.sroa.517.0.copyload18.4 = load i32, ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.4, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.4 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4, i32 8
  %25 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %assignment.sroa.6.0.copyload19.4 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload16.4)
  %tobool.not.4 = icmp ne i8 %assignment.sroa.0.0.copyload16.4, 0
  %cmp.unshifted.i.4 = xor i32 %assignment.sroa.517.0.copyload18.4, %.compoundliteral.sroa.0.0.copyload11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.4)
  %26 = icmp ult i32 %cmp.unshifted.i.4, 65536
  %or.cond.4 = select i1 %tobool.not.4, i1 %26, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload19.4, i32 %2)
  %cmp24.i.4 = icmp eq i32 %assignment.sroa.6.0.copyload19.4, %2
  %or.cond27.4 = select i1 %or.cond.4, i1 %cmp24.i.4, i1 false
  br i1 %or.cond27.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx7.i.5 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 1, i32 5
  %arrayidx.i.5 = getelementptr %struct.dc_state, ptr %4, i32 0, i32 4, i32 6, i32 3, i32 5
  %arrayidx7.sink.i.5 = select i1 %cmp.i, ptr %arrayidx.i.5, ptr %arrayidx7.i.5
  %27 = ptrtoint ptr %arrayidx7.sink.i.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %assignment.sroa.0.0.copyload16.5 = load i8, ptr %arrayidx7.sink.i.5, align 4
  %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.5 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5, i32 4
  %28 = ptrtoint ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %assignment.sroa.517.0.copyload18.5 = load i32, ptr %assignment.sroa.517.0.arrayidx7.sink.i.sroa_idx.5, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.5 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5, i32 8
  %29 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %assignment.sroa.6.0.copyload19.5 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload16.5)
  %tobool.not.5 = icmp ne i8 %assignment.sroa.0.0.copyload16.5, 0
  %cmp.unshifted.i.5 = xor i32 %assignment.sroa.517.0.copyload18.5, %.compoundliteral.sroa.0.0.copyload11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.5)
  %30 = icmp ult i32 %cmp.unshifted.i.5, 65536
  %or.cond.5 = select i1 %tobool.not.5, i1 %30, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.6.0.copyload19.5, i32 %2)
  %cmp24.i.5 = icmp eq i32 %assignment.sroa.6.0.copyload19.5, %2
  %or.cond27.5 = select i1 %or.cond.5, i1 %cmp24.i.5, i1 false
  br i1 %or.cond27.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %arrayidx7.sink.i.lcssa = phi ptr [ %arrayidx7.sink.i, %entry.cleanup_crit_edge ], [ %arrayidx7.sink.i.1, %for.cond.cleanup_crit_edge ], [ %arrayidx7.sink.i.2, %for.cond.1.cleanup_crit_edge ], [ %arrayidx7.sink.i.3, %for.cond.2.cleanup_crit_edge ], [ %arrayidx7.sink.i.4, %for.cond.3.cleanup_crit_edge ], [ %arrayidx7.sink.i.5, %for.cond.4.cleanup_crit_edge ]
  %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i.lcssa, i32 12
  %31 = ptrtoint ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %assignment.sroa.7.0.copyload20 = load i32, ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx, align 4
  %dc7 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %32 = ptrtoint ptr %dc7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dc7, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %res_pool, align 8
  %arrayidx = getelementptr %struct.resource_pool, ptr %35, i32 0, i32 22, i32 %assignment.sroa.7.0.copyload20
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  br label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.4.for.end_crit_edge
  %link_enc.2 = phi ptr [ %37, %cleanup ], [ null, %for.cond.4.for.end_crit_edge ]
  ret ptr %link_enc.2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @link_enc_cfg_get_next_avail_link_enc(ptr nocapture noundef readonly %dc) local_unnamed_addr #4 align 64 {
entry:
  %encs_assigned = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %encs_assigned) #5
  %current_state.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = call ptr @memset(ptr %encs_assigned, i32 255, i32 28)
  %1 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_state.i, align 4, !noalias !36
  %link_enc_cfg_ctx.i = getelementptr inbounds %struct.dc_state, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %link_enc_cfg_ctx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_enc_cfg_ctx.i, align 8, !noalias !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  %arrayidx7.i = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 1, i32 0
  %arrayidx.i = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 3, i32 0
  %arrayidx7.sink.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx7.i
  %5 = ptrtoint ptr %arrayidx7.sink.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %assignment.sroa.0.0.copyload32 = load i8, ptr %arrayidx7.sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload32)
  %tobool.not = icmp eq i8 %assignment.sroa.0.0.copyload32, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i, i32 12
  %6 = ptrtoint ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %assignment.sroa.533.0.copyload34 = load i32, ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx, align 4
  %arrayidx5 = getelementptr [7 x i32], ptr %encs_assigned, i32 0, i32 %assignment.sroa.533.0.copyload34
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %assignment.sroa.533.0.copyload34, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx7.i.1 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 1, i32 1
  %arrayidx.i.1 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 3, i32 1
  %arrayidx7.sink.i.1 = select i1 %cmp.i, ptr %arrayidx.i.1, ptr %arrayidx7.i.1
  %8 = ptrtoint ptr %arrayidx7.sink.i.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %assignment.sroa.0.0.copyload32.1 = load i8, ptr %arrayidx7.sink.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload32.1)
  %tobool.not.1 = icmp eq i8 %assignment.sroa.0.0.copyload32.1, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1, i32 12
  %9 = ptrtoint ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %assignment.sroa.533.0.copyload34.1 = load i32, ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.1, align 4
  %arrayidx5.1 = getelementptr [7 x i32], ptr %encs_assigned, i32 0, i32 %assignment.sroa.533.0.copyload34.1
  %10 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %assignment.sroa.533.0.copyload34.1, ptr %arrayidx5.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx7.i.2 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 1, i32 2
  %arrayidx.i.2 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 3, i32 2
  %arrayidx7.sink.i.2 = select i1 %cmp.i, ptr %arrayidx.i.2, ptr %arrayidx7.i.2
  %11 = ptrtoint ptr %arrayidx7.sink.i.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %assignment.sroa.0.0.copyload32.2 = load i8, ptr %arrayidx7.sink.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload32.2)
  %tobool.not.2 = icmp eq i8 %assignment.sroa.0.0.copyload32.2, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2, i32 12
  %12 = ptrtoint ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %assignment.sroa.533.0.copyload34.2 = load i32, ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.2, align 4
  %arrayidx5.2 = getelementptr [7 x i32], ptr %encs_assigned, i32 0, i32 %assignment.sroa.533.0.copyload34.2
  %13 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %assignment.sroa.533.0.copyload34.2, ptr %arrayidx5.2, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx7.i.3 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 1, i32 3
  %arrayidx.i.3 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 3, i32 3
  %arrayidx7.sink.i.3 = select i1 %cmp.i, ptr %arrayidx.i.3, ptr %arrayidx7.i.3
  %14 = ptrtoint ptr %arrayidx7.sink.i.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %assignment.sroa.0.0.copyload32.3 = load i8, ptr %arrayidx7.sink.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload32.3)
  %tobool.not.3 = icmp eq i8 %assignment.sroa.0.0.copyload32.3, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3, i32 12
  %15 = ptrtoint ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %assignment.sroa.533.0.copyload34.3 = load i32, ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.3, align 4
  %arrayidx5.3 = getelementptr [7 x i32], ptr %encs_assigned, i32 0, i32 %assignment.sroa.533.0.copyload34.3
  %16 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %assignment.sroa.533.0.copyload34.3, ptr %arrayidx5.3, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %arrayidx7.i.4 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 1, i32 4
  %arrayidx.i.4 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 3, i32 4
  %arrayidx7.sink.i.4 = select i1 %cmp.i, ptr %arrayidx.i.4, ptr %arrayidx7.i.4
  %17 = ptrtoint ptr %arrayidx7.sink.i.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %assignment.sroa.0.0.copyload32.4 = load i8, ptr %arrayidx7.sink.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload32.4)
  %tobool.not.4 = icmp eq i8 %assignment.sroa.0.0.copyload32.4, 0
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.4 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4, i32 12
  %18 = ptrtoint ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %assignment.sroa.533.0.copyload34.4 = load i32, ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.4, align 4
  %arrayidx5.4 = getelementptr [7 x i32], ptr %encs_assigned, i32 0, i32 %assignment.sroa.533.0.copyload34.4
  %19 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %assignment.sroa.533.0.copyload34.4, ptr %arrayidx5.4, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %arrayidx7.i.5 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 1, i32 5
  %arrayidx.i.5 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 6, i32 3, i32 5
  %arrayidx7.sink.i.5 = select i1 %cmp.i, ptr %arrayidx.i.5, ptr %arrayidx7.i.5
  %20 = ptrtoint ptr %arrayidx7.sink.i.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %assignment.sroa.0.0.copyload32.5 = load i8, ptr %arrayidx7.sink.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload32.5)
  %tobool.not.5 = icmp eq i8 %assignment.sroa.0.0.copyload32.5, 0
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.5 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5, i32 12
  %21 = ptrtoint ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %assignment.sroa.533.0.copyload34.5 = load i32, ptr %assignment.sroa.533.0.arrayidx7.sink.i.sroa_idx.5, align 4
  %arrayidx5.5 = getelementptr [7 x i32], ptr %encs_assigned, i32 0, i32 %assignment.sroa.533.0.copyload34.5
  %22 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %assignment.sroa.533.0.copyload34.5, ptr %arrayidx5.5, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %23 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res_pool, align 8
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %24, i32 0, i32 41
  %25 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res_cap, align 4
  %num_dig_link_enc = getelementptr inbounds %struct.resource_caps, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %num_dig_link_enc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_dig_link_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1040.not = icmp eq i32 %28, 0
  br i1 %cmp1040.not, label %if.end.5.for.end20_crit_edge, label %if.end.5.for.body11_crit_edge

if.end.5.for.body11_crit_edge:                    ; preds = %if.end.5
  br label %for.body11

if.end.5.for.end20_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.body11:                                       ; preds = %for.inc18.for.body11_crit_edge, %if.end.5.for.body11_crit_edge
  %i.241 = phi i32 [ %inc19, %for.inc18.for.body11_crit_edge ], [ 0, %if.end.5.for.body11_crit_edge ]
  %arrayidx12 = getelementptr [7 x i32], ptr %encs_assigned, i32 0, i32 %i.241
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp13 = icmp eq i32 %30, -1
  br i1 %cmp13, label %if.then14, label %for.inc18

if.then14:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16 = getelementptr %struct.resource_pool, ptr %24, i32 0, i32 22, i32 %i.241
  %31 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx16, align 4
  br label %for.end20

for.inc18:                                        ; preds = %for.body11
  %inc19 = add nuw i32 %i.241, 1
  %exitcond.not = icmp eq i32 %inc19, %28
  br i1 %exitcond.not, label %for.inc18.for.end20_crit_edge, label %for.inc18.for.body11_crit_edge

for.inc18.for.body11_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %if.then14, %if.end.5.for.end20_crit_edge
  %link_enc.0 = phi ptr [ %32, %if.then14 ], [ null, %if.end.5.for.end20_crit_edge ], [ null, %for.inc18.for.end20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %encs_assigned) #5
  ret ptr %link_enc.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %stream) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %call = tail call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %dc, ptr noundef %1)
  ret ptr %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @link_enc_cfg_is_link_enc_avail(ptr nocapture noundef readonly %dc, i32 noundef %eng_id, ptr nocapture noundef readonly %link) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state.i, align 4, !noalias !39
  %link_enc_cfg_ctx.i = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %link_enc_cfg_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_enc_cfg_ctx.i, align 8, !noalias !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %ep_type2 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 40
  %link_id1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %arrayidx7.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 0
  %arrayidx.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 0
  %arrayidx7.sink.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx7.i
  %4 = ptrtoint ptr %arrayidx7.sink.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %assignment.sroa.0.0.copyload17 = load i8, ptr %arrayidx7.sink.i, align 4
  %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i, i32 12
  %5 = ptrtoint ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %assignment.sroa.7.0.copyload21 = load i32, ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload17)
  %tobool.not = icmp ne i8 %assignment.sroa.0.0.copyload17, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.7.0.copyload21, i32 %eng_id)
  %cmp4 = icmp eq i32 %assignment.sroa.7.0.copyload21, %eng_id
  %or.cond = select i1 %tobool.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %land.lhs.true5, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true5:                                   ; preds = %entry
  %6 = ptrtoint ptr %ep_type2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep_type2, align 8
  %8 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_id1, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i, i32 8
  %10 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %assignment.sroa.6.0.copyload20 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx, align 4
  %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx7.sink.i, i32 4
  %11 = ptrtoint ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %assignment.sroa.518.0.copyload19 = load i32, ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx, align 4
  %cmp.unshifted.i = xor i32 %assignment.sroa.518.0.copyload19, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i)
  %12 = icmp ult i32 %cmp.unshifted.i, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %assignment.sroa.6.0.copyload20)
  %cmp24.i = icmp eq i32 %7, %assignment.sroa.6.0.copyload20
  %or.cond27 = select i1 %12, i1 %cmp24.i, i1 false
  br i1 %or.cond27, label %land.lhs.true5.for.inc_crit_edge, label %land.lhs.true5.for.end_crit_edge

land.lhs.true5.for.end_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx7.i.1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 1
  %arrayidx.i.1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 1
  %arrayidx7.sink.i.1 = select i1 %cmp.i, ptr %arrayidx.i.1, ptr %arrayidx7.i.1
  %13 = ptrtoint ptr %arrayidx7.sink.i.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %assignment.sroa.0.0.copyload17.1 = load i8, ptr %arrayidx7.sink.i.1, align 4
  %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1, i32 12
  %14 = ptrtoint ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %assignment.sroa.7.0.copyload21.1 = load i32, ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload17.1)
  %tobool.not.1 = icmp ne i8 %assignment.sroa.0.0.copyload17.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.7.0.copyload21.1, i32 %eng_id)
  %cmp4.1 = icmp eq i32 %assignment.sroa.7.0.copyload21.1, %eng_id
  %or.cond.1 = select i1 %tobool.not.1, i1 %cmp4.1, i1 false
  br i1 %or.cond.1, label %land.lhs.true5.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %for.inc
  %15 = ptrtoint ptr %ep_type2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep_type2, align 8
  %17 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_id1, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1, i32 8
  %19 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %assignment.sroa.6.0.copyload20.1 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.1, align 4
  %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.1, i32 4
  %20 = ptrtoint ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %assignment.sroa.518.0.copyload19.1 = load i32, ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.1, align 4
  %cmp.unshifted.i.1 = xor i32 %assignment.sroa.518.0.copyload19.1, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.1)
  %21 = icmp ult i32 %cmp.unshifted.i.1, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %assignment.sroa.6.0.copyload20.1)
  %cmp24.i.1 = icmp eq i32 %16, %assignment.sroa.6.0.copyload20.1
  %or.cond27.1 = select i1 %21, i1 %cmp24.i.1, i1 false
  br i1 %or.cond27.1, label %land.lhs.true5.1.for.inc.1_crit_edge, label %land.lhs.true5.1.for.end_crit_edge

land.lhs.true5.1.for.end_crit_edge:               ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx7.i.2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 2
  %arrayidx.i.2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 2
  %arrayidx7.sink.i.2 = select i1 %cmp.i, ptr %arrayidx.i.2, ptr %arrayidx7.i.2
  %22 = ptrtoint ptr %arrayidx7.sink.i.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %assignment.sroa.0.0.copyload17.2 = load i8, ptr %arrayidx7.sink.i.2, align 4
  %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2, i32 12
  %23 = ptrtoint ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %assignment.sroa.7.0.copyload21.2 = load i32, ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload17.2)
  %tobool.not.2 = icmp ne i8 %assignment.sroa.0.0.copyload17.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.7.0.copyload21.2, i32 %eng_id)
  %cmp4.2 = icmp eq i32 %assignment.sroa.7.0.copyload21.2, %eng_id
  %or.cond.2 = select i1 %tobool.not.2, i1 %cmp4.2, i1 false
  br i1 %or.cond.2, label %land.lhs.true5.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %for.inc.1
  %24 = ptrtoint ptr %ep_type2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ep_type2, align 8
  %26 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_id1, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2, i32 8
  %28 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %assignment.sroa.6.0.copyload20.2 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.2, align 4
  %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.2, i32 4
  %29 = ptrtoint ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %assignment.sroa.518.0.copyload19.2 = load i32, ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.2, align 4
  %cmp.unshifted.i.2 = xor i32 %assignment.sroa.518.0.copyload19.2, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.2)
  %30 = icmp ult i32 %cmp.unshifted.i.2, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %assignment.sroa.6.0.copyload20.2)
  %cmp24.i.2 = icmp eq i32 %25, %assignment.sroa.6.0.copyload20.2
  %or.cond27.2 = select i1 %30, i1 %cmp24.i.2, i1 false
  br i1 %or.cond27.2, label %land.lhs.true5.2.for.inc.2_crit_edge, label %land.lhs.true5.2.for.end_crit_edge

land.lhs.true5.2.for.end_crit_edge:               ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx7.i.3 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 3
  %arrayidx.i.3 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 3
  %arrayidx7.sink.i.3 = select i1 %cmp.i, ptr %arrayidx.i.3, ptr %arrayidx7.i.3
  %31 = ptrtoint ptr %arrayidx7.sink.i.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %assignment.sroa.0.0.copyload17.3 = load i8, ptr %arrayidx7.sink.i.3, align 4
  %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3, i32 12
  %32 = ptrtoint ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %assignment.sroa.7.0.copyload21.3 = load i32, ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload17.3)
  %tobool.not.3 = icmp ne i8 %assignment.sroa.0.0.copyload17.3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.7.0.copyload21.3, i32 %eng_id)
  %cmp4.3 = icmp eq i32 %assignment.sroa.7.0.copyload21.3, %eng_id
  %or.cond.3 = select i1 %tobool.not.3, i1 %cmp4.3, i1 false
  br i1 %or.cond.3, label %land.lhs.true5.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %for.inc.2
  %33 = ptrtoint ptr %ep_type2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ep_type2, align 8
  %35 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link_id1, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3, i32 8
  %37 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %assignment.sroa.6.0.copyload20.3 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.3, align 4
  %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.3, i32 4
  %38 = ptrtoint ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %assignment.sroa.518.0.copyload19.3 = load i32, ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.3, align 4
  %cmp.unshifted.i.3 = xor i32 %assignment.sroa.518.0.copyload19.3, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.3)
  %39 = icmp ult i32 %cmp.unshifted.i.3, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %assignment.sroa.6.0.copyload20.3)
  %cmp24.i.3 = icmp eq i32 %34, %assignment.sroa.6.0.copyload20.3
  %or.cond27.3 = select i1 %39, i1 %cmp24.i.3, i1 false
  br i1 %or.cond27.3, label %land.lhs.true5.3.for.inc.3_crit_edge, label %land.lhs.true5.3.for.end_crit_edge

land.lhs.true5.3.for.end_crit_edge:               ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx7.i.4 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 4
  %arrayidx.i.4 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 4
  %arrayidx7.sink.i.4 = select i1 %cmp.i, ptr %arrayidx.i.4, ptr %arrayidx7.i.4
  %40 = ptrtoint ptr %arrayidx7.sink.i.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %assignment.sroa.0.0.copyload17.4 = load i8, ptr %arrayidx7.sink.i.4, align 4
  %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.4 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4, i32 12
  %41 = ptrtoint ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %assignment.sroa.7.0.copyload21.4 = load i32, ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload17.4)
  %tobool.not.4 = icmp ne i8 %assignment.sroa.0.0.copyload17.4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.7.0.copyload21.4, i32 %eng_id)
  %cmp4.4 = icmp eq i32 %assignment.sroa.7.0.copyload21.4, %eng_id
  %or.cond.4 = select i1 %tobool.not.4, i1 %cmp4.4, i1 false
  br i1 %or.cond.4, label %land.lhs.true5.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %for.inc.3
  %42 = ptrtoint ptr %ep_type2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ep_type2, align 8
  %44 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_id1, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.4 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4, i32 8
  %46 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %assignment.sroa.6.0.copyload20.4 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.4, align 4
  %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.4 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.4, i32 4
  %47 = ptrtoint ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %assignment.sroa.518.0.copyload19.4 = load i32, ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.4, align 4
  %cmp.unshifted.i.4 = xor i32 %assignment.sroa.518.0.copyload19.4, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.4)
  %48 = icmp ult i32 %cmp.unshifted.i.4, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %assignment.sroa.6.0.copyload20.4)
  %cmp24.i.4 = icmp eq i32 %43, %assignment.sroa.6.0.copyload20.4
  %or.cond27.4 = select i1 %48, i1 %cmp24.i.4, i1 false
  br i1 %or.cond27.4, label %land.lhs.true5.4.for.inc.4_crit_edge, label %land.lhs.true5.4.for.end_crit_edge

land.lhs.true5.4.for.end_crit_edge:               ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx7.i.5 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 1, i32 5
  %arrayidx.i.5 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 6, i32 3, i32 5
  %arrayidx7.sink.i.5 = select i1 %cmp.i, ptr %arrayidx.i.5, ptr %arrayidx7.i.5
  %49 = ptrtoint ptr %arrayidx7.sink.i.5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %assignment.sroa.0.0.copyload17.5 = load i8, ptr %arrayidx7.sink.i.5, align 4
  %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.5 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5, i32 12
  %50 = ptrtoint ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %assignment.sroa.7.0.copyload21.5 = load i32, ptr %assignment.sroa.7.0.arrayidx7.sink.i.sroa_idx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignment.sroa.0.0.copyload17.5)
  %tobool.not.5 = icmp ne i8 %assignment.sroa.0.0.copyload17.5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %assignment.sroa.7.0.copyload21.5, i32 %eng_id)
  %cmp4.5 = icmp eq i32 %assignment.sroa.7.0.copyload21.5, %eng_id
  %or.cond.5 = select i1 %tobool.not.5, i1 %cmp4.5, i1 false
  br i1 %or.cond.5, label %land.lhs.true5.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %for.inc.4
  %51 = ptrtoint ptr %ep_type2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ep_type2, align 8
  %53 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %link_id1, align 4
  %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.5 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5, i32 8
  %55 = ptrtoint ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %assignment.sroa.6.0.copyload20.5 = load i32, ptr %assignment.sroa.6.0.arrayidx7.sink.i.sroa_idx.5, align 4
  %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.5 = getelementptr inbounds i8, ptr %arrayidx7.sink.i.5, i32 4
  %56 = ptrtoint ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %assignment.sroa.518.0.copyload19.5 = load i32, ptr %assignment.sroa.518.0.arrayidx7.sink.i.sroa_idx.5, align 4
  %cmp.unshifted.i.5 = xor i32 %assignment.sroa.518.0.copyload19.5, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.unshifted.i.5)
  %57 = icmp ult i32 %cmp.unshifted.i.5, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %assignment.sroa.6.0.copyload20.5)
  %cmp24.i.5 = icmp eq i32 %52, %assignment.sroa.6.0.copyload20.5
  %or.cond27.5 = select i1 %57, i1 %cmp24.i.5, i1 false
  br i1 %or.cond27.5, label %land.lhs.true5.5.for.inc.5_crit_edge, label %land.lhs.true5.5.for.end_crit_edge

land.lhs.true5.5.for.end_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true5.5.for.inc.5_crit_edge:             ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true5.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %land.lhs.true5.5.for.end_crit_edge, %land.lhs.true5.4.for.end_crit_edge, %land.lhs.true5.3.for.end_crit_edge, %land.lhs.true5.2.for.end_crit_edge, %land.lhs.true5.1.for.end_crit_edge, %land.lhs.true5.for.end_crit_edge
  %cmp.lcssa = phi i1 [ false, %land.lhs.true5.for.end_crit_edge ], [ false, %land.lhs.true5.1.for.end_crit_edge ], [ false, %land.lhs.true5.2.for.end_crit_edge ], [ false, %land.lhs.true5.3.for.end_crit_edge ], [ false, %land.lhs.true5.4.for.end_crit_edge ], [ false, %land.lhs.true5.5.for.end_crit_edge ], [ true, %for.inc.5 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_stream_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @decide_link_settings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_stream_retain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c", i32 284, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c", i32 291, i32 3}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c", i32 345, i32 4}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c", i32 623, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c", i32 632, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_enc_cfg.c", i32 162, i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i8 0, i8 2}
!24 = !{!25}
!25 = distinct !{!25, !26, !"get_assignment: %agg.result"}
!26 = distinct !{!26, !"get_assignment"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"get_assignment: %agg.result"}
!29 = distinct !{!29, !"get_assignment"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"get_assignment: %agg.result"}
!32 = distinct !{!32, !"get_assignment"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"get_assignment: %agg.result"}
!35 = distinct !{!35, !"get_assignment"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"get_assignment: %agg.result"}
!38 = distinct !{!38, !"get_assignment"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"get_assignment: %agg.result"}
!41 = distinct !{!41, !"get_assignment"}
