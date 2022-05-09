; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/clk_mgr/dce110/dce110_clk_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.state_dependent_clocks = type { i32, i32 }
%struct.clk_mgr_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.clk_mgr_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.72 }
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
%struct.anon.72 = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.70, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.33 }
%union.anon.33 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.34 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.34 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.25, i32, i32, i32, i32 }
%struct.anon.25 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.24 }
%struct.anon.24 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.70 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.4 }
%struct.anon.4 = type { i8 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%union.max_lane_count = type { %struct.anon.57 }
%struct.anon.57 = type { i8 }
%union.max_down_spread = type { %struct.anon.58 }
%struct.anon.58 = type { i8 }
%union.dprx_feature = type { %struct.anon.59 }
%struct.anon.59 = type { i8 }
%union.sink_count = type { %struct.anon.60 }
%struct.anon.60 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.61 }
%struct.anon.61 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.63 }
%struct.anon.63 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.64 }
%struct.anon.64 = type { i8 }
%union.dpia_info = type { %struct.anon.65 }
%struct.anon.65 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.66 }
%struct.anon.66 = type { i8, i8, %struct.anon.67 }
%struct.anon.67 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.68 }
%struct.anon.68 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.69 }
%struct.anon.69 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.encoder_feature_support = type { %union.anon.40, i32, i32, i8, i8, i8 }
%union.anon.40 = type { i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.6 }
%struct.anon.6 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.7, %struct.anon.8, %struct.anon.9, i32, i32 }
%struct.anon.7 = type { i8, [3 x i8] }
%struct.anon.8 = type { i32, i32, i32 }
%struct.anon.9 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.13, %struct.anon.14, i8, i8, i64 }
%struct.anon.13 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.14 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.54 }
%struct.anon.54 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.bw_calcs_vbios = type { i32, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, i8, %struct.bw_fixed, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed }
%struct.bw_fixed = type { i64 }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.clk_mgr_internal = type { %struct.clk_mgr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [9 x %struct.state_dependent_clocks], i8, i8, i32, i32, i8, i8, i32, i32, i32, i32, i8, [12 x i32], i8, ptr, i64 }
%struct.dm_pp_power_level_change_request = type { i32 }

@dce110_fill_display_configs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c\00", [55 x i8] zeroinitializer }, align 32
@dce110_max_clks_by_state = internal constant { [5 x %struct.state_dependent_clocks], [56 x i8] } { [5 x %struct.state_dependent_clocks] [%struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks { i32 352000, i32 330000 }, %struct.state_dependent_clocks { i32 352000, i32 330000 }, %struct.state_dependent_clocks { i32 467000, i32 400000 }, %struct.state_dependent_clocks { i32 643000, i32 400000 }], [56 x i8] zeroinitializer }, align 32
@disp_clk_regs = internal constant { %struct.clk_mgr_registers, [52 x i8] } { %struct.clk_mgr_registers { i32 280, i32 292, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@disp_clk_shift = internal constant { %struct.clk_mgr_shift, [20 x i8] } { %struct.clk_mgr_shift { i8 0, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@disp_clk_mask = internal constant { %struct.clk_mgr_mask, [60 x i8] } { %struct.clk_mgr_mask { i32 7, i32 2130706432, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dce110_funcs = internal global { %struct.clk_mgr_funcs, [36 x i8] } { %struct.clk_mgr_funcs { ptr @dce11_update_clocks, ptr @dce_get_dp_ref_freq_khz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@determine_sclk_from_bounding_box.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 140, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"dce110_max_clks_by_state\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 54, i32 44 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"disp_clk_regs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 42, i32 39 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"disp_clk_shift\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 46, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"disp_clk_mask\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 50, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"dce110_funcs\00", align 1
@___asan_gen_.17 = private constant [76 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 276, i32 29 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @dce110_max_clks_by_state, ptr @disp_clk_regs, ptr @disp_clk_shift, ptr @disp_clk_mask, ptr @dce110_funcs], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_max_clks_by_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_shift to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce110_get_min_vblank_time_us(ptr nocapture noundef readonly %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp25.not = icmp eq i8 %1, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %1 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %min_vertical_blank_time.026 = phi i32 [ -1, %for.body.preheader ], [ %14, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %context, i32 0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_total, align 8
  %adjust3 = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %adjust3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %adjust.sroa.0.0.copyload = load i32, ptr %adjust3, align 8
  %adjust.sroa.6.0.adjust3.sroa_idx = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %adjust.sroa.6.0.adjust3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %adjust.sroa.6.0.copyload = load i32, ptr %adjust.sroa.6.0.adjust3.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %adjust.sroa.6.0.copyload, i32 %adjust.sroa.0.0.copyload)
  %cmp4.not = icmp eq i32 %adjust.sroa.6.0.copyload, %adjust.sroa.0.0.copyload
  %spec.select = select i1 %cmp4.not, i32 %5, i32 %adjust.sroa.0.0.copyload
  %8 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timing, align 8
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v_addressable, align 8
  %sub = sub i32 %spec.select, %11
  %mul = mul i32 %9, 10000
  %mul9 = mul i32 %mul, %sub
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 12
  %12 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %mul9, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %min_vertical_blank_time.026, i32 %div)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %min_vertical_blank_time.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %14, %for.body.for.end_crit_edge ]
  ret i32 %min_vertical_blank_time.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_fill_display_configs(ptr noundef readonly %context, ptr nocapture noundef writeonly %pp_display_cfg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp150.not = icmp eq i8 %1, 0
  br i1 %cmp150.not, label %entry.for.end97_crit_edge, label %for.body.lr.ph

entry.for.end97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end97

for.body.lr.ph:                                   ; preds = %entry
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %stream9 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %stream9.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %stream9.2 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 2, i32 1
  %stream9.3 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 3, i32 1
  %stream9.4 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 4, i32 1
  %stream9.5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %j.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc96, %cleanup.for.body_crit_edge ]
  %num_cfgs.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %num_cfgs.1, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %context, i32 0, i32 %j.0152
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151
  %4 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream9, align 4
  %cmp10 = icmp eq ptr %3, %5
  br i1 %cmp10, label %for.body.do.body_crit_edge, label %for.inc

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.inc:                                          ; preds = %for.body
  %6 = ptrtoint ptr %stream9.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream9.1, align 4
  %cmp10.1 = icmp eq ptr %3, %7
  br i1 %cmp10.1, label %for.inc.do.body_crit_edge, label %for.inc.1

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %8 = ptrtoint ptr %stream9.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream9.2, align 4
  %cmp10.2 = icmp eq ptr %3, %9
  br i1 %cmp10.2, label %for.inc.1.do.body_crit_edge, label %for.inc.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %10 = ptrtoint ptr %stream9.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream9.3, align 4
  %cmp10.3 = icmp eq ptr %3, %11
  br i1 %cmp10.3, label %for.inc.2.do.body_crit_edge, label %for.inc.3

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.inc.3:                                        ; preds = %for.inc.2
  %12 = ptrtoint ptr %stream9.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream9.4, align 4
  %cmp10.4 = icmp eq ptr %3, %13
  br i1 %cmp10.4, label %for.inc.3.do.body_crit_edge, label %for.inc.4

for.inc.3.do.body_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.inc.4:                                        ; preds = %for.inc.3
  %14 = ptrtoint ptr %stream9.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream9.5, align 4
  %cmp10.5 = icmp eq ptr %3, %15
  br i1 %cmp10.5, label %for.inc.4.do.body_crit_edge, label %for.inc.4.land.rhs_crit_edge

for.inc.4.land.rhs_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.inc.4.do.body_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.inc.4.do.body_crit_edge, %for.inc.3.do.body_crit_edge, %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %for.body.do.body_crit_edge
  %k.0148.lcssa = phi i32 [ 0, %for.body.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 2, %for.inc.1.do.body_crit_edge ], [ 3, %for.inc.2.do.body_crit_edge ], [ 4, %for.inc.3.do.body_crit_edge ], [ 5, %for.inc.4.do.body_crit_edge ]
  %arrayidx8 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %k.0148.lcssa
  %cmp15.not = icmp eq ptr %arrayidx8, null
  br i1 %cmp15.not, label %do.body.land.rhs_crit_edge, label %do.body.do.end60_crit_edge

do.body.do.end60_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %do.body.land.rhs_crit_edge, %for.inc.4.land.rhs_crit_edge
  %.b141 = load i1, ptr @dce110_fill_display_configs.__already_done, align 1
  br i1 %.b141, label %land.rhs.if.then57_crit_edge, label %if.then25, !prof !24

land.rhs.if.then57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dce110_fill_display_configs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #6
  br label %if.then57

if.then57:                                        ; preds = %if.then25, %land.rhs.if.then57_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body.do.end60_crit_edge
  %pipe_ctx.0145 = phi ptr [ %arrayidx8, %do.body.do.end60_crit_edge ], [ null, %if.then57 ]
  %dpms_off = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 37
  %16 = ptrtoint ptr %dpms_off to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dpms_off, align 8, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool61.not = icmp eq i8 %17, 0
  br i1 %tobool61.not, label %if.end63, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  %inc64 = add i32 %num_cfgs.0151, 1
  %stream65 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx.0145, i32 0, i32 1
  %18 = ptrtoint ptr %stream65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream65, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %19, i32 0, i32 36
  %20 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal, align 4
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx2, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx.0145, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inst, align 4
  %conv67 = trunc i32 %26 to i8
  %pipe_idx = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 3
  %27 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv67, ptr %pipe_idx, align 2
  %height = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 10, i32 3
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %src_height = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 4
  %30 = ptrtoint ptr %src_height to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %src_height, align 4
  %width = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 10, i32 2
  %31 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width, align 8
  %src_width = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 5
  %33 = ptrtoint ptr %src_width to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %src_width, align 4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 4
  %ddi_channel_mapping = getelementptr inbounds %struct.dc_link, ptr %35, i32 0, i32 41
  %36 = ptrtoint ptr %ddi_channel_mapping to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ddi_channel_mapping, align 4
  %ddi_channel_mapping69 = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 2
  %38 = ptrtoint ptr %ddi_channel_mapping69 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %ddi_channel_mapping69, align 1
  %39 = load ptr, ptr %link, align 4
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %39, i32 0, i32 38
  %40 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link_enc, align 8
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %transmitter, align 4
  %conv71 = trunc i32 %43 to i8
  %transmitter72 = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 1
  %44 = ptrtoint ptr %transmitter72 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv71, ptr %transmitter72, align 4
  %45 = load ptr, ptr %link, align 4
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %45, i32 0, i32 21
  %46 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cur_link_settings, align 8
  %link_settings = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 8
  %48 = ptrtoint ptr %link_settings to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %link_settings, align 4
  %49 = load ptr, ptr %link, align 4
  %link_rate = getelementptr inbounds %struct.dc_link, ptr %49, i32 0, i32 21, i32 1
  %50 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %link_rate, align 4
  %link_rate78 = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 8, i32 1
  %52 = ptrtoint ptr %link_rate78 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %link_rate78, align 4
  %53 = load ptr, ptr %link, align 4
  %link_spread = getelementptr inbounds %struct.dc_link, ptr %53, i32 0, i32 21, i32 2
  %54 = ptrtoint ptr %link_spread to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %link_spread, align 8
  %link_spread82 = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 8, i32 2
  %56 = ptrtoint ptr %link_spread82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %link_spread82, align 4
  %phy_pix_clk = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 35
  %57 = ptrtoint ptr %phy_pix_clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %phy_pix_clk, align 8
  %sym_clock = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 7
  %59 = ptrtoint ptr %sym_clock to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sym_clock, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 12
  %60 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pix_clk_100hz, align 8
  %mul = mul i32 %61, 100
  %v_refresh = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %num_cfgs.0151, i32 6
  %62 = ptrtoint ptr %v_refresh to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul, ptr %v_refresh, align 4
  %63 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %timing, align 8
  %div = udiv i32 %mul, %64
  store i32 %div, ptr %v_refresh, align 4
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 6
  %65 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %v_total, align 8
  %div87140 = lshr i32 %66, 1
  %add = add i32 %div87140, %div
  %div90 = udiv i32 %add, %66
  store i32 %div90, ptr %v_refresh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end60.cleanup_crit_edge
  %num_cfgs.1 = phi i32 [ %inc64, %if.end63 ], [ %num_cfgs.0151, %do.end60.cleanup_crit_edge ]
  %inc96 = add nuw nsw i32 %j.0152, 1
  %67 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %68 to i32
  %cmp = icmp ult i32 %inc96, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end97_crit_edge

cleanup.for.end97_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end97

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end97:                                        ; preds = %cleanup.for.end97_crit_edge, %entry.for.end97_crit_edge
  %num_cfgs.0.lcssa = phi i32 [ 0, %entry.for.end97_crit_edge ], [ %num_cfgs.1, %cleanup.for.end97_crit_edge ]
  %conv98 = trunc i32 %num_cfgs.0.lcssa to i8
  %display_count = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 13
  %69 = ptrtoint ptr %display_count to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv98, ptr %display_count, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce11_pplib_apply_display_requirements(ptr nocapture noundef readonly %dc, ptr noundef %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pp_display_cfg1 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6
  %bw_vbios = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  %0 = ptrtoint ptr %bw_vbios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bw_vbios, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 295, i32 %3)
  %cmp = icmp eq i32 %3, 295
  %spec.select = select i1 %cmp, i32 2, i32 4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %memory_type_multiplier.0 = phi i32 [ 4, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %bw_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5
  %all_displays_in_sync = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 4
  %4 = ptrtoint ptr %all_displays_in_sync to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %all_displays_in_sync, align 4, !range !25
  %all_displays_in_sync4 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 12
  %6 = ptrtoint ptr %all_displays_in_sync4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %all_displays_in_sync4, align 4
  %nbp_state_change_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %nbp_state_change_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nbp_state_change_enable, align 1, !range !25
  %9 = xor i8 %8, 1
  %10 = ptrtoint ptr %pp_display_cfg1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pp_display_cfg1, align 4
  %11 = ptrtoint ptr %bw_ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bw_ctx, align 8, !range !25
  %cpu_cc6_disable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 1
  %13 = xor i8 %12, 1
  %14 = ptrtoint ptr %cpu_cc6_disable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cpu_cc6_disable, align 1
  %cpup_state_change_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %cpup_state_change_enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cpup_state_change_enable, align 1, !range !25
  %cpu_pstate_disable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 2
  %17 = xor i8 %16, 1
  %18 = ptrtoint ptr %cpu_pstate_disable to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %cpu_pstate_disable, align 2
  %blackout_recovery_time_us = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 13
  %19 = ptrtoint ptr %blackout_recovery_time_us to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blackout_recovery_time_us, align 8
  %cpu_pstate_separation_time = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 3
  %21 = ptrtoint ptr %cpu_pstate_separation_time to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cpu_pstate_separation_time, align 4
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %chip_family = getelementptr inbounds %struct.dc_context, ptr %23, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %25)
  %cmp27 = icmp eq i32 %25, 141
  br i1 %cmp27, label %land.lhs.true29, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true29:                                  ; preds = %if.end
  %hw_internal_rev = getelementptr inbounds %struct.dc_context, ptr %23, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %hw_internal_rev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_internal_rev, align 4
  %28 = add i32 %27, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %28)
  %29 = icmp ult i32 %28, 215
  br i1 %29, label %land.lhs.true40, label %land.lhs.true29.if.else_crit_edge

land.lhs.true29.if.else_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true40:                                  ; preds = %land.lhs.true29
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %30 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp42 = icmp ugt i8 %31, 1
  br i1 %cmp42, label %if.then44, label %land.lhs.true40.if.else_crit_edge

land.lhs.true40.if.else_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  %min_memory_clock_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 4
  %32 = ptrtoint ptr %min_memory_clock_khz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_memory_clock_khz, align 4
  %34 = ptrtoint ptr %bw_vbios to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bw_vbios, align 8
  %high_yclk = getelementptr inbounds %struct.bw_calcs_vbios, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %high_yclk to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %high_yclk, align 8
  %38 = zext i32 %memory_type_multiplier.0 to i64
  %call = tail call i64 @div64_s64(i64 noundef %37, i64 noundef %38) #6
  %call47 = tail call i64 @div64_s64(i64 noundef %call, i64 noundef 10000) #6
  %conv48 = trunc i64 %call47 to i32
  %39 = tail call i32 @llvm.umax.i32(i32 %33, i32 %conv48)
  %40 = ptrtoint ptr %min_memory_clock_khz to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %min_memory_clock_khz, align 4
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true40.if.else_crit_edge, %land.lhs.true29.if.else_crit_edge, %if.end.if.else_crit_edge
  %yclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 11
  %41 = ptrtoint ptr %yclk_khz to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %yclk_khz, align 8
  %div = sdiv i32 %42, %memory_type_multiplier.0
  %min_memory_clock_khz54 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 4
  %43 = ptrtoint ptr %min_memory_clock_khz54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div, ptr %min_memory_clock_khz54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then44
  %sclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 9
  %44 = ptrtoint ptr %sclk_khz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sclk_khz, align 8
  %sclk_lvls.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 14
  %46 = ptrtoint ptr %sclk_lvls.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sclk_lvls.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i = icmp eq i32 %47, 0
  br i1 %cmp.i, label %if.end55.determine_sclk_from_bounding_box.exit_crit_edge, label %if.end55.for.body.i_crit_edge

if.end55.for.body.i_crit_edge:                    ; preds = %if.end55
  br label %for.body.i

if.end55.determine_sclk_from_bounding_box.exit_crit_edge: ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %determine_sclk_from_bounding_box.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %47
  br i1 %exitcond.not.i, label %land.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end55.for.body.i_crit_edge
  %i.069.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end55.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 14, i32 1, i32 %i.069.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %45)
  %cmp5.not.i = icmp ult i32 %49, %45
  br i1 %cmp5.not.i, label %for.cond.i, label %for.body.i.determine_sclk_from_bounding_box.exit_crit_edge

for.body.i.determine_sclk_from_bounding_box.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %determine_sclk_from_bounding_box.exit

land.end.i:                                       ; preds = %for.cond.i
  %.b67.i = load i1, ptr @determine_sclk_from_bounding_box.__already_done, align 1
  br i1 %.b67.i, label %land.end.i.if.then47.i_crit_edge, label %if.then15.i, !prof !24

land.end.i.if.then47.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.then15.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @determine_sclk_from_bounding_box.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef null) #6
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.then15.i, %land.end.i.if.then47.i_crit_edge
  tail call void @kgdb_breakpoint() #6
  %50 = ptrtoint ptr %sclk_lvls.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sclk_lvls.i, align 8
  %sub.i = add i32 %51, -1
  %arrayidx55.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 14, i32 1, i32 %sub.i
  %52 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx55.i, align 4
  br label %determine_sclk_from_bounding_box.exit

determine_sclk_from_bounding_box.exit:            ; preds = %if.then47.i, %for.body.i.determine_sclk_from_bounding_box.exit_crit_edge, %if.end55.determine_sclk_from_bounding_box.exit_crit_edge
  %retval.0.i = phi i32 [ %53, %if.then47.i ], [ %45, %if.end55.determine_sclk_from_bounding_box.exit_crit_edge ], [ %49, %for.body.i.determine_sclk_from_bounding_box.exit_crit_edge ]
  %min_engine_clock_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 5
  %54 = ptrtoint ptr %min_engine_clock_khz to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i, ptr %min_engine_clock_khz, align 4
  %stream_count59 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %55 = ptrtoint ptr %stream_count59 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %stream_count59, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %56)
  %cmp61 = icmp ugt i8 %56, 4
  %spec.select136 = select i1 %cmp61, i32 %retval.0.i, i32 0
  %min_dcfclock_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 9
  %57 = ptrtoint ptr %min_dcfclock_khz to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.select136, ptr %min_dcfclock_khz, align 4
  %sclk_deep_sleep_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 10
  %58 = ptrtoint ptr %sclk_deep_sleep_khz to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sclk_deep_sleep_khz, align 4
  %min_engine_clock_deep_sleep_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 6
  %60 = ptrtoint ptr %min_engine_clock_deep_sleep_khz to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %min_engine_clock_deep_sleep_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp25.not.i = icmp eq i8 %56, 0
  br i1 %cmp25.not.i, label %determine_sclk_from_bounding_box.exit.dce110_get_min_vblank_time_us.exit_crit_edge, label %for.body.preheader.i

determine_sclk_from_bounding_box.exit.dce110_get_min_vblank_time_us.exit_crit_edge: ; preds = %determine_sclk_from_bounding_box.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce110_get_min_vblank_time_us.exit

for.body.preheader.i:                             ; preds = %determine_sclk_from_bounding_box.exit
  %wide.trip.count.i = zext i8 %56 to i32
  br label %for.body.i140

for.body.i140:                                    ; preds = %for.body.i140.for.body.i140_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i140.for.body.i140_crit_edge ]
  %min_vertical_blank_time.026.i = phi i32 [ -1, %for.body.preheader.i ], [ %73, %for.body.i140.for.body.i140_crit_edge ]
  %arrayidx.i137 = getelementptr [6 x ptr], ptr %context, i32 0, i32 %indvars.iv.i
  %61 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i137, align 4
  %timing.i = getelementptr inbounds %struct.dc_stream_state, ptr %62, i32 0, i32 5
  %v_total.i = getelementptr inbounds %struct.dc_stream_state, ptr %62, i32 0, i32 5, i32 6
  %63 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %v_total.i, align 8
  %adjust3.i = getelementptr inbounds %struct.dc_stream_state, ptr %62, i32 0, i32 6
  %65 = ptrtoint ptr %adjust3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %adjust.sroa.0.0.copyload.i = load i32, ptr %adjust3.i, align 8
  %adjust.sroa.6.0.adjust3.sroa_idx.i = getelementptr inbounds %struct.dc_stream_state, ptr %62, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %adjust.sroa.6.0.adjust3.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %adjust.sroa.6.0.copyload.i = load i32, ptr %adjust.sroa.6.0.adjust3.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %adjust.sroa.6.0.copyload.i, i32 %adjust.sroa.0.0.copyload.i)
  %cmp4.not.i = icmp eq i32 %adjust.sroa.6.0.copyload.i, %adjust.sroa.0.0.copyload.i
  %spec.select.i = select i1 %cmp4.not.i, i32 %64, i32 %adjust.sroa.0.0.copyload.i
  %67 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %timing.i, align 8
  %v_addressable.i = getelementptr inbounds %struct.dc_stream_state, ptr %62, i32 0, i32 5, i32 8
  %69 = ptrtoint ptr %v_addressable.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %v_addressable.i, align 8
  %sub.i138 = sub i32 %spec.select.i, %70
  %mul.i = mul i32 %68, 10000
  %mul9.i = mul i32 %mul.i, %sub.i138
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_stream_state, ptr %62, i32 0, i32 5, i32 12
  %71 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pix_clk_100hz.i, align 8
  %div.i = udiv i32 %mul9.i, %72
  %73 = tail call i32 @llvm.umin.i32(i32 %min_vertical_blank_time.026.i, i32 %div.i) #6
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i139 = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i139, label %for.body.i140.dce110_get_min_vblank_time_us.exit_crit_edge, label %for.body.i140.for.body.i140_crit_edge

for.body.i140.for.body.i140_crit_edge:            ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i140

for.body.i140.dce110_get_min_vblank_time_us.exit_crit_edge: ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce110_get_min_vblank_time_us.exit

dce110_get_min_vblank_time_us.exit:               ; preds = %for.body.i140.dce110_get_min_vblank_time_us.exit_crit_edge, %determine_sclk_from_bounding_box.exit.dce110_get_min_vblank_time_us.exit_crit_edge
  %min_vertical_blank_time.0.lcssa.i = phi i32 [ -1, %determine_sclk_from_bounding_box.exit.dce110_get_min_vblank_time_us.exit_crit_edge ], [ %73, %for.body.i140.dce110_get_min_vblank_time_us.exit_crit_edge ]
  %avail_mclk_switch_time_us = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 7
  %74 = ptrtoint ptr %avail_mclk_switch_time_us to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %min_vertical_blank_time.0.lcssa.i, ptr %avail_mclk_switch_time_us, align 4
  %avail_mclk_switch_time_in_disp_active_us = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 8
  %75 = ptrtoint ptr %avail_mclk_switch_time_in_disp_active_us to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %avail_mclk_switch_time_in_disp_active_us, align 4
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 13
  %76 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk_mgr, align 4
  %clks = getelementptr inbounds %struct.clk_mgr, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %clks, align 4
  %disp_clk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 11
  %80 = ptrtoint ptr %disp_clk_khz to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %disp_clk_khz, align 4
  tail call void @dce110_fill_display_configs(ptr noundef %context, ptr noundef %pp_display_cfg1)
  %display_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 13
  %81 = ptrtoint ptr %display_count to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %display_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp72 = icmp eq i8 %82, 1
  br i1 %cmp72, label %if.then74, label %dce110_get_min_vblank_time_us.exit.if.end78_crit_edge

dce110_get_min_vblank_time_us.exit.if.end78_crit_edge: ; preds = %dce110_get_min_vblank_time_us.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then74:                                        ; preds = %dce110_get_min_vblank_time_us.exit
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %context, align 8
  %timing75 = getelementptr inbounds %struct.dc_stream_state, ptr %84, i32 0, i32 5
  %pipe_idx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 14, i32 0, i32 3
  %85 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pipe_idx, align 2
  %crtc_index = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 15
  %87 = ptrtoint ptr %crtc_index to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %crtc_index, align 4
  %88 = ptrtoint ptr %timing75 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %timing75, align 4
  %mul = mul i32 %89, 10000
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %84, i32 0, i32 5, i32 12
  %90 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pix_clk_100hz, align 4
  %div77 = udiv i32 %mul, %91
  %line_time_in_us = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 16
  %92 = ptrtoint ptr %line_time_in_us to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div77, ptr %line_time_in_us, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %dce110_get_min_vblank_time_us.exit.if.end78_crit_edge
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %93 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %current_state, align 4
  %pp_display_cfg79 = getelementptr inbounds %struct.dc_state, ptr %94, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(292) %pp_display_cfg79, ptr noundef dereferenceable(292) %pp_display_cfg1, i32 292) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp81.not = icmp eq i32 %bcmp, 0
  br i1 %cmp81.not, label %if.end78.if.end86_crit_edge, label %if.then83

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctx, align 8
  %call85 = tail call zeroext i1 @dm_pp_apply_display_requirements(ptr noundef %96, ptr noundef %pp_display_cfg1) #6
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end78.if.end86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_display_requirements(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) #6
  %max_clks_by_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8
  %0 = call ptr @memcpy(ptr %max_clks_by_state, ptr @dce110_max_clks_by_state, i32 40)
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
  store ptr @dce110_funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce11_update_clocks(ptr noundef %clk_mgr_base, ptr noundef %context, i1 noundef zeroext %safe_to_lower) #2 align 64 {
entry:
  %level_change_req = alloca %struct.dm_pp_power_level_change_request, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level_change_req) #6
  %dispclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %0 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dispclk_khz, align 4
  %dfs_bypass_active = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 10
  %2 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dfs_bypass_active, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %mul = mul i32 %1, 115
  %div = sdiv i32 %mul, 100
  %patched_disp_clk.0 = select i1 %tobool.not, i32 %div, i32 %1
  %call = tail call i32 @dce_get_required_clocks_state(ptr noundef %clk_mgr_base, ptr noundef %context) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %entry
  %8 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mgr_base, align 4
  %call7 = call zeroext i1 @dm_pp_apply_power_level_change_request(ptr noundef %9, ptr noundef nonnull %level_change_req) #6
  br i1 %call7, label %if.then8, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %spec.select.i, label %if.then16, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call i32 @dce_set_clock(ptr noundef %clk_mgr_base, i32 noundef %patched_disp_clk.0) #6
  %15 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17, ptr %dispclk_khz, align 4
  %16 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %patched_disp_clk.0, ptr %clks, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end12.if.end23_crit_edge
  %17 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_mgr_base, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  call void @dce11_pplib_apply_display_requirements(ptr noundef %20, ptr noundef %context)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level_change_req) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_get_dp_ref_freq_khz(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_get_required_clocks_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_power_level_change_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c", i32 140, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c", i32 88, i32 2}
!5 = !{ptr @dce110_max_clks_by_state, !6, !"dce110_max_clks_by_state", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c", i32 54, i32 44}
!7 = !{ptr @disp_clk_regs, !8, !"disp_clk_regs", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c", i32 42, i32 39}
!9 = !{ptr @disp_clk_shift, !10, !"disp_clk_shift", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c", i32 46, i32 35}
!11 = !{ptr @disp_clk_mask, !12, !"disp_clk_mask", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c", i32 50, i32 34}
!13 = !{ptr @dce110_funcs, !14, !"dce110_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce110/dce110_clk_mgr.c", i32 276, i32 29}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i8 0, i8 2}
