; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/clk_mgr/clk_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/clk_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%union.dpcd_ieee_vendor_signature = type { %struct.anon.72 }
%struct.anon.72 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
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
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dc_clk_mgr_create = private unnamed_addr constant [18 x i8] c"dc_clk_mgr_create\00", align 1
@dc_clk_mgr_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/clk_mgr.c\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 110, i64 120, i64 125, i64 130, i64 135, i64 141]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 148, i32 4 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/clk_mgr.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 295, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clk_mgr_helper_get_active_display_cnt(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp10.not = icmp eq i8 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %display_count.012 = phi i32 [ %display_count.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.011 = phi i32 [ %inc4, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %dpms_off = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %dpms_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpms_off, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp2 = icmp eq i32 %7, 512
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %inc = add i32 %display_count.012, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %display_count.1 = phi i32 [ %inc, %if.then ], [ %display_count.012, %lor.lhs.false.if.end_crit_edge ]
  %inc4 = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc4, %conv
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %display_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %display_count.1, %if.end.for.end_crit_edge ]
  ret i32 %display_count.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clk_mgr_helper_get_active_plane_cnt(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp7.not = icmp eq i8 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %total_plane_count.09 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %stream_status.sroa.4.0.arrayidx.sroa_idx = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.08, i32 2
  %2 = ptrtoint ptr %stream_status.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %stream_status.sroa.4.0.copyload = load i32, ptr %stream_status.sroa.4.0.arrayidx.sroa_idx, align 8
  %add = add i32 %stream_status.sroa.4.0.copyload, %total_plane_count.09
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %total_plane_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %total_plane_count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_mgr_exit_optimized_pwr_state(ptr noundef %dc, ptr nocapture noundef writeonly %clk_mgr) local_unnamed_addr #3 align 64 {
entry:
  %edp_links = alloca [2 x ptr], align 4
  %allow_active = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links) #6
  %0 = ptrtoint ptr %edp_links to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links, align 4, !annotation !16
  %1 = getelementptr inbounds [2 x ptr], ptr %edp_links, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !16
  %link_count.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %3 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp26.not.i = icmp eq i8 %4, 0
  br i1 %cmp26.not.i, label %entry.get_edp_links.exit_crit_edge, label %for.body.i.preheader

entry.get_edp_links.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_links.exit

for.body.i.preheader:                             ; preds = %entry
  %conv.i = zext i8 %4 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %edp_num.0 = phi i32 [ %edp_num.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.027.i = phi i32 [ %inc15.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.027.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %8)
  %cmp4.i = icmp eq i32 %8, 128
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  %arrayidx9.i = getelementptr ptr, ptr %edp_links, i32 %edp_num.0
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %arrayidx9.i, align 4
  %inc.i = add i32 %edp_num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp10.i = icmp eq i32 %inc.i, 2
  br i1 %cmp10.i, label %if.then6.i.get_edp_links.exit_crit_edge, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then6.i.get_edp_links.exit_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_links.exit

for.inc.i:                                        ; preds = %if.then6.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %edp_num.1 = phi i32 [ %edp_num.0, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then6.i.for.inc.i_crit_edge ], [ %edp_num.0, %if.end.i.for.inc.i_crit_edge ]
  %inc15.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not = icmp eq i32 %inc15.i, %conv.i
  br i1 %exitcond.not, label %for.inc.i.get_edp_links.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.get_edp_links.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_links.exit

get_edp_links.exit:                               ; preds = %for.inc.i.get_edp_links.exit_crit_edge, %if.then6.i.get_edp_links.exit_crit_edge, %entry.get_edp_links.exit_crit_edge
  %edp_num.2 = phi i32 [ 0, %entry.get_edp_links.exit_crit_edge ], [ 2, %if.then6.i.get_edp_links.exit_crit_edge ], [ %edp_num.1, %for.inc.i.get_edp_links.exit_crit_edge ]
  %exit_optimized_pwr_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 62
  %10 = ptrtoint ptr %exit_optimized_pwr_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exit_optimized_pwr_state, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %get_edp_links.exit.if.end_crit_edge, label %if.then

get_edp_links.exit.if.end_crit_edge:              ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #8
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %12 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_state, align 4
  tail call void %11(ptr noundef %dc, ptr noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %get_edp_links.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_num.2)
  %tobool3.not.not = icmp eq i32 %edp_num.2, 0
  br i1 %tobool3.not.not, label %if.end.if.end10_crit_edge, label %for.body.lr.ph

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.body.lr.ph:                                   ; preds = %if.end
  %psr_allow_active_cache = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %panel_inst.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %allow_active) #6
  %14 = ptrtoint ptr %allow_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %allow_active, align 1
  %arrayidx = getelementptr [2 x ptr], ptr %edp_links, i32 0, i32 %panel_inst.023
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %16, i32 0, i32 50
  %17 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %psr_settings, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool5.not = icmp eq i8 %18, 0
  br i1 %tobool5.not, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %psr_allow_active = getelementptr inbounds %struct.dc_link, ptr %16, i32 0, i32 50, i32 1
  %19 = ptrtoint ptr %psr_allow_active to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %psr_allow_active, align 1, !range !15
  %21 = ptrtoint ptr %psr_allow_active_cache to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %psr_allow_active_cache, align 4
  %call = call zeroext i1 @dc_link_set_psr_allow_active(ptr noundef %16, ptr noundef nonnull %allow_active, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %allow_active) #6
  %inc = add nuw i32 %panel_inst.023, 1
  %exitcond24.not = icmp eq i32 %inc, %edp_num.2
  br i1 %exitcond24.not, label %cleanup.if.end10_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.if.end10_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %cleanup.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_set_psr_allow_active(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_mgr_optimize_pwr_state(ptr noundef %dc, ptr noundef %clk_mgr) local_unnamed_addr #3 align 64 {
entry:
  %edp_links = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links) #6
  %0 = ptrtoint ptr %edp_links to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links, align 4, !annotation !16
  %1 = getelementptr inbounds [2 x ptr], ptr %edp_links, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !16
  %link_count.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %3 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp26.not.i = icmp eq i8 %4, 0
  br i1 %cmp26.not.i, label %entry.if.end3_crit_edge, label %for.body.i.preheader

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

for.body.i.preheader:                             ; preds = %entry
  %conv.i = zext i8 %4 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %edp_num.0 = phi i32 [ %edp_num.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.027.i = phi i32 [ %inc15.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.027.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %8)
  %cmp4.i = icmp eq i32 %8, 128
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  %arrayidx9.i = getelementptr ptr, ptr %edp_links, i32 %edp_num.0
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %arrayidx9.i, align 4
  %inc.i = add i32 %edp_num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp10.i = icmp eq i32 %inc.i, 2
  br i1 %cmp10.i, label %if.then6.i.for.body.lr.ph_crit_edge, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then6.i.for.body.lr.ph_crit_edge:              ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

for.inc.i:                                        ; preds = %if.then6.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %edp_num.1 = phi i32 [ %edp_num.0, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then6.i.for.inc.i_crit_edge ], [ %edp_num.0, %if.end.i.for.inc.i_crit_edge ]
  %inc15.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not = icmp eq i32 %inc15.i, %conv.i
  br i1 %exitcond.not, label %get_edp_links.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

get_edp_links.exit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_num.1)
  %tobool.not.not = icmp eq i32 %edp_num.1, 0
  br i1 %tobool.not.not, label %get_edp_links.exit.if.end3_crit_edge, label %get_edp_links.exit.for.body.lr.ph_crit_edge

get_edp_links.exit.for.body.lr.ph_crit_edge:      ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

get_edp_links.exit.if.end3_crit_edge:             ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

for.body.lr.ph:                                   ; preds = %get_edp_links.exit.for.body.lr.ph_crit_edge, %if.then6.i.for.body.lr.ph_crit_edge
  %edp_num.226 = phi i32 [ %edp_num.1, %get_edp_links.exit.for.body.lr.ph_crit_edge ], [ 2, %if.then6.i.for.body.lr.ph_crit_edge ]
  %psr_allow_active_cache = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %panel_inst.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %edp_links, i32 0, i32 %panel_inst.022
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %11, i32 0, i32 50
  %12 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %psr_settings, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not = icmp eq i8 %13, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @dc_link_set_psr_allow_active(ptr noundef %11, ptr noundef %psr_allow_active_cache, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %panel_inst.022, 1
  %exitcond23.not = icmp eq i32 %inc, %edp_num.226
  br i1 %exitcond23.not, label %for.inc.if.end3_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end3_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3:                                          ; preds = %for.inc.if.end3_crit_edge, %get_edp_links.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %optimize_pwr_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 61
  %14 = ptrtoint ptr %optimize_pwr_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %optimize_pwr_state, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %16 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_state, align 4
  tail call void %15(ptr noundef %dc, ptr noundef %17) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_clk_mgr_create(ptr noundef %ctx, ptr nocapture noundef readnone %pp_smu, ptr nocapture noundef readnone %dccg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_id.sroa.4.0.asic_id1.sroa_idx = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %asic_id.sroa.4.0.asic_id1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %asic_id.sroa.4.0.copyload = load i32, ptr %asic_id.sroa.4.0.asic_id1.sroa_idx, align 4
  %asic_id.sroa.5152.0.asic_id1.sroa_idx = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 5, i32 3
  %1 = ptrtoint ptr %asic_id.sroa.5152.0.asic_id1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %asic_id.sroa.5152.0.copyload = load i32, ptr %asic_id.sroa.5152.0.asic_id1.sroa_idx, align 4
  %2 = zext i32 %asic_id.sroa.4.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asic_id.sroa.4.0.copyload, label %land.end [
    i32 110, label %sw.bb
    i32 120, label %entry.sw.bb2_crit_edge
    i32 125, label %entry.sw.bb2_crit_edge201
    i32 135, label %sw.bb13
    i32 130, label %sw.bb24
    i32 141, label %sw.bb71
  ]

entry.sw.bb2_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 432) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dc_clk_mgr_create, i32 noundef 148) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup132

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce60_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i) #6
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup132

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i192 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 432) #9
  %cmp5 = icmp eq ptr %call7.i.i192, null
  br i1 %cmp5, label %do.body7, label %if.end10

do.body7:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dc_clk_mgr_create, i32 noundef 161) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup132

if.end10:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i192) #6
  br label %cleanup132

sw.bb13:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i193 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 432) #9
  %cmp16 = icmp eq ptr %call7.i.i193, null
  br i1 %cmp16, label %do.body18, label %if.end21

do.body18:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dc_clk_mgr_create, i32 noundef 171) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup132

if.end21:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce110_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i193) #6
  br label %cleanup132

sw.bb24:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i194 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 432) #9
  %cmp27 = icmp eq ptr %call7.i.i194, null
  br i1 %cmp27, label %do.body29, label %if.end32

do.body29:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dc_clk_mgr_create, i32 noundef 181) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup132

if.end32:                                         ; preds = %sw.bb24
  %7 = add i32 %asic_id.sroa.5152.0.copyload, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %7)
  %8 = icmp ult i32 %7, 20
  %9 = add i32 %asic_id.sroa.5152.0.copyload, -60
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %9)
  %10 = icmp ult i32 %9, 20
  %or.cond = or i1 %8, %10
  br i1 %or.cond, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i194) #6
  br label %cleanup132

if.end43:                                         ; preds = %if.end32
  %11 = add i32 %asic_id.sroa.5152.0.copyload, -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %11)
  %12 = icmp ult i32 %11, 30
  br i1 %12, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce112_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i194) #6
  br label %cleanup132

if.end63:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %asic_id.sroa.5152.0.copyload)
  %cmp65 = icmp ugt i32 %asic_id.sroa.5152.0.copyload, 109
  br i1 %cmp65, label %if.then66, label %if.end63.cleanup132_crit_edge

if.end63.cleanup132_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup132

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce112_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i194) #6
  br label %cleanup132

sw.bb71:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i195 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 432) #9
  %cmp74 = icmp eq ptr %call7.i.i195, null
  br i1 %cmp74, label %do.body76, label %if.end79

do.body76:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dc_clk_mgr_create, i32 noundef 205) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup132

if.end79:                                         ; preds = %sw.bb71
  %14 = add i32 %asic_id.sroa.5152.0.copyload, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %14)
  %15 = icmp ult i32 %14, 215
  br i1 %15, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce121_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i195) #6
  br label %cleanup132

if.else:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dce120_clk_mgr_construct(ptr noundef %ctx, ptr noundef nonnull %call7.i.i195) #6
  br label %cleanup132

land.end:                                         ; preds = %entry
  %.b186 = load i1, ptr @dc_clk_mgr_create.__already_done, align 1
  br i1 %.b186, label %land.end.if.then128_crit_edge, label %if.then94, !prof !17

land.end.if.then128_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then128

if.then94:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_clk_mgr_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 295, i32 noundef 9, ptr noundef null) #6
  br label %if.then128

if.then128:                                       ; preds = %if.then94, %land.end.if.then128_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %cleanup132

cleanup132:                                       ; preds = %if.then128, %if.else, %if.then85, %do.body76, %if.then66, %if.end63.cleanup132_crit_edge, %if.then61, %if.then41, %do.body29, %if.end21, %do.body18, %if.end10, %do.body7, %if.end, %do.body
  %retval.5 = phi ptr [ null, %if.then128 ], [ null, %do.body ], [ %call7.i.i, %if.end ], [ null, %do.body7 ], [ %call7.i.i192, %if.end10 ], [ null, %do.body18 ], [ %call7.i.i193, %if.end21 ], [ null, %do.body29 ], [ %call7.i.i194, %if.then41 ], [ %call7.i.i194, %if.then61 ], [ %call7.i.i194, %if.then66 ], [ %call7.i.i194, %if.end63.cleanup132_crit_edge ], [ null, %do.body76 ], [ %call7.i.i195, %if.else ], [ %call7.i.i195, %if.then85 ]
  ret ptr %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce112_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce121_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce120_clk_mgr_construct(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_destroy_clk_mgr(ptr noundef %clk_mgr_base) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %clk_mgr_base) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/clk_mgr.c", i32 148, i32 4}
!2 = !{ptr @__func__.dc_clk_mgr_create, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/clk_mgr.c", i32 295, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 2000, i32 1}
