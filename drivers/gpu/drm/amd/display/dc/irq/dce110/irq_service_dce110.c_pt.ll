; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/irq/dce110/irq_service_dce110.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_service_funcs = type { ptr }
%struct.irq_source_info_funcs = type { ptr, ptr }
%struct.irq_source_info = type { i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, ptr }
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
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
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
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_service = type { ptr, ptr, ptr }

@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: called for non-implemented irq source, src_id=%u, ext_id=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.dal_irq_service_dummy_set = private unnamed_addr constant [26 x i8] c"dal_irq_service_dummy_set\00", align 1
@__func__.dal_irq_service_dummy_ack = private unnamed_addr constant [26 x i8] c"dal_irq_service_dummy_ack\00", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get VBLANK!\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irq_service_funcs_dce110 = internal constant { %struct.irq_service_funcs, [28 x i8] } { %struct.irq_service_funcs { ptr @to_dal_irq_source_dce110 }, [28 x i8] zeroinitializer }, align 32
@dummy_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr @dal_irq_service_dummy_set, ptr @dal_irq_service_dummy_ack }, [24 x i8] zeroinitializer }, align 32
@hpd_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr null, ptr @hpd_ack }, [24 x i8] zeroinitializer }, align 32
@hpd_rx_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@pflip_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@vupdate_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@vblank_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr @dce110_vblank_set, ptr null }, [24 x i8] zeroinitializer }, align 32
@irq_source_info_dce110 = internal constant { <{ [84 x %struct.irq_source_info], [15 x %struct.irq_source_info] }>, [1116 x i8] } { <{ [84 x %struct.irq_source_info], [15 x %struct.irq_source_info] }> <{ [84 x %struct.irq_source_info] [%struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6297, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6297, i32 1, i32 1, i32 6296, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6305, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6305, i32 1, i32 1, i32 6304, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6313, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6313, i32 1, i32 1, i32 6312, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6321, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6321, i32 1, i32 1, i32 6320, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6329, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6329, i32 1, i32 1, i32 6328, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6337, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6337, i32 1, i32 1, i32 6336, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6297, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6297, i32 1048576, i32 1048576, i32 6296, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6305, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6305, i32 1048576, i32 1048576, i32 6304, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6313, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6313, i32 1048576, i32 1048576, i32 6312, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6321, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6321, i32 1048576, i32 1048576, i32 6320, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6329, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6329, i32 1048576, i32 1048576, i32 6328, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6337, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6337, i32 1048576, i32 1048576, i32 6336, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6679, i32 1, [2 x i32] [i32 1, i32 -2], i32 6678, i32 256, i32 256, i32 6678, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7191, i32 1, [2 x i32] [i32 1, i32 -2], i32 7190, i32 256, i32 256, i32 7190, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7703, i32 1, [2 x i32] [i32 1, i32 -2], i32 7702, i32 256, i32 256, i32 7702, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 16407, i32 1, [2 x i32] [i32 1, i32 -2], i32 16406, i32 256, i32 256, i32 16406, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 16919, i32 1, [2 x i32] [i32 1, i32 -2], i32 16918, i32 256, i32 256, i32 16918, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17431, i32 1, [2 x i32] [i32 1, i32 -2], i32 17430, i32 256, i32 256, i32 17430, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7092, i32 16, [2 x i32] [i32 16, i32 -17], i32 7108, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7604, i32 16, [2 x i32] [i32 16, i32 -17], i32 7620, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 8116, i32 16, [2 x i32] [i32 16, i32 -17], i32 8132, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 16820, i32 16, [2 x i32] [i32 16, i32 -17], i32 16836, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17332, i32 16, [2 x i32] [i32 16, i32 -17], i32 17348, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17844, i32 16, [2 x i32] [i32 16, i32 -17], i32 17860, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 19, i32 0, i32 7119, i32 256, [2 x i32] [i32 256, i32 -257], i32 7119, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 20, i32 0, i32 7631, i32 256, [2 x i32] [i32 256, i32 -257], i32 7631, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 21, i32 0, i32 8143, i32 256, [2 x i32] [i32 256, i32 -257], i32 8143, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 22, i32 0, i32 16847, i32 256, [2 x i32] [i32 256, i32 -257], i32 16847, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 23, i32 0, i32 17359, i32 256, [2 x i32] [i32 256, i32 -257], i32 17359, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 24, i32 0, i32 17871, i32 256, [2 x i32] [i32 256, i32 -257], i32 17871, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }], [15 x %struct.irq_source_info] zeroinitializer }>, [1116 x i8] zeroinitializer }, align 32
@__func__.hpd_ack = private unnamed_addr constant [8 x i8] c"hpd_ack\00", align 1
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 42]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 188, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 221, i32 4 }
@___asan_gen_.10 = private unnamed_addr constant [25 x i8] c"irq_service_funcs_dce110\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 404, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"dummy_irq_info_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 230, i32 43 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"hpd_irq_info_funcs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 66, i32 43 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"hpd_rx_irq_info_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 71, i32 43 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"pflip_irq_info_funcs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 76, i32 43 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"vupdate_irq_info_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 86, i32 43 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"vblank_irq_info_funcs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 81, i32 43 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"irq_source_info_dce110\00", align 1
@___asan_gen_.32 = private constant [76 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 236, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @irq_service_funcs_dce110, ptr @dummy_irq_info_funcs, ptr @hpd_irq_info_funcs, ptr @hpd_rx_irq_info_funcs, ptr @pflip_irq_info_funcs, ptr @vupdate_irq_info_funcs, ptr @vblank_irq_info_funcs, ptr @irq_source_info_dce110], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_service_funcs_dce110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_rx_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pflip_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vupdate_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vblank_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_source_info_dce110 to i32), i32 4356, i32 5472, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_irq_service_dummy_set(ptr nocapture readnone %irq_service, ptr nocapture noundef readonly %info, i1 zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %ext_id = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %ext_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ext_id, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_irq_service_dummy_set, i32 noundef %1, i32 noundef %3) #4
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_irq_service_dummy_ack(ptr nocapture readnone %irq_service, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %ext_id = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %ext_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ext_id, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_irq_service_dummy_ack, i32 noundef %1, i32 noundef %3) #4
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_vblank_set(ptr noundef %irq_service, ptr noundef %info, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_service, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %ext_id = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %ext_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ext_id, align 4
  %call = tail call i32 @dc_interrupt_to_irq_source(ptr noundef %3, i32 noundef %5, i32 noundef %7) #4
  %conv = add i32 %call, 178
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %9, i32 0, i32 4
  %idxprom = and i32 %conv, 255
  %tg5 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom, i32 3, i32 2
  %10 = ptrtoint ptr %tg5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tg5, align 8
  br i1 %enable, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.then.do.body_crit_edge, label %lor.lhs.false

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arm_vert_intr = getelementptr inbounds %struct.timing_generator_funcs, ptr %13, i32 0, i32 41
  %14 = ptrtoint ptr %arm_vert_intr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arm_vert_intr, align 4
  %call7 = tail call zeroext i1 %15(ptr noundef nonnull %11, i8 noundef zeroext 2) #4
  br i1 %call7, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false.if.end9_crit_edge, %entry.if.end9_crit_edge
  tail call void @dal_irq_service_set_generic(ptr noundef %irq_service, ptr noundef %info, i1 noundef zeroext %enable) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.body
  %retval.0 = phi i1 [ true, %if.end9 ], [ false, %do.body ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_interrupt_to_irq_source(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_set_generic(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @to_dal_irq_source_dce110(ptr nocapture readnone %irq_service, i32 noundef %src_id, i32 noundef %ext_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %src_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src_id, label %sw.default31 [
    i32 19, label %entry.return_crit_edge
    i32 20, label %sw.bb1
    i32 21, label %sw.bb2
    i32 22, label %sw.bb3
    i32 23, label %sw.bb4
    i32 24, label %sw.bb5
    i32 7, label %sw.bb6
    i32 9, label %sw.bb7
    i32 11, label %sw.bb8
    i32 13, label %sw.bb9
    i32 15, label %sw.bb10
    i32 17, label %sw.bb11
    i32 8, label %sw.bb12
    i32 10, label %sw.bb13
    i32 12, label %sw.bb14
    i32 14, label %sw.bb15
    i32 16, label %sw.bb16
    i32 18, label %sw.bb17
    i32 42, label %sw.bb18
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %ext_id)
  %1 = icmp ult i32 %ext_id, 12
  %switch.offset = add i32 %ext_id, 1
  %spec.select = select i1 %1, i32 %switch.offset, i32 0
  br label %return

sw.default31:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %sw.default31, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default31 ], [ 31, %sw.bb17 ], [ 30, %sw.bb16 ], [ 29, %sw.bb15 ], [ 28, %sw.bb14 ], [ 27, %sw.bb13 ], [ 26, %sw.bb12 ], [ 77, %sw.bb11 ], [ 76, %sw.bb10 ], [ 75, %sw.bb9 ], [ 74, %sw.bb8 ], [ 73, %sw.bb7 ], [ 72, %sw.bb6 ], [ 83, %sw.bb5 ], [ 82, %sw.bb4 ], [ 81, %sw.bb3 ], [ 80, %sw.bb2 ], [ 79, %sw.bb1 ], [ 78, %entry.return_crit_edge ], [ %spec.select, %sw.bb18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_irq_service_dce110_create(ptr noundef %init_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dal_irq_service_construct(ptr noundef nonnull %call7.i.i, ptr noundef %init_data) #4
  %info.i = getelementptr inbounds %struct.irq_service, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @irq_source_info_dce110, ptr %info.i, align 4
  %funcs.i = getelementptr inbounds %struct.irq_service, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irq_service_funcs_dce110, ptr %funcs.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_construct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hpd_ack(ptr noundef %irq_service, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %status_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_reg, align 4
  %2 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_service, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %1, ptr noundef nonnull @__func__.hpd_ack) #4
  tail call void @dal_irq_service_ack_generic(ptr noundef %irq_service, ptr noundef %info) #4
  %4 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_service, align 4
  %enable_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_reg, align 4
  %call3 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %7, ptr noundef nonnull @__func__.hpd_ack) #4
  %and.i15 = and i32 %call3, -257
  %8 = shl i32 %call, 4
  %9 = and i32 %8, 256
  %10 = or i32 %and.i15, %9
  %or.i = xor i32 %10, 256
  %11 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_service, align 4
  %13 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_reg, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %14, i32 noundef %or.i, ptr noundef nonnull @__func__.hpd_ack) #4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_ack_generic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 188, i32 2}
!2 = !{ptr @__func__.dal_irq_service_dummy_set, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dal_irq_service_dummy_ack, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 197, i32 2}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 221, i32 4}
!7 = !{ptr @irq_source_info_dce110, !8, !"irq_source_info_dce110", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 236, i32 1}
!9 = !{ptr @dummy_irq_info_funcs, !10, !"dummy_irq_info_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 230, i32 43}
!11 = !{ptr @hpd_irq_info_funcs, !12, !"hpd_irq_info_funcs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 66, i32 43}
!13 = !{ptr @__func__.hpd_ack, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 48, i32 19}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!17 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hpd_rx_irq_info_funcs, !19, !"hpd_rx_irq_info_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 71, i32 43}
!20 = !{ptr @pflip_irq_info_funcs, !21, !"pflip_irq_info_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 76, i32 43}
!22 = !{ptr @vupdate_irq_info_funcs, !23, !"vupdate_irq_info_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 86, i32 43}
!24 = !{ptr @vblank_irq_info_funcs, !25, !"vblank_irq_info_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 81, i32 43}
!26 = !{ptr @irq_service_funcs_dce110, !27, !"irq_service_funcs_dce110", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce110/irq_service_dce110.c", i32 404, i32 39}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
