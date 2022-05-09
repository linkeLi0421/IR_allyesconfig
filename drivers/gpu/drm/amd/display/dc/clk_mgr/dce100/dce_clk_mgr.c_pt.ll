; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/dce_clk_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.state_dependent_clocks = type { i32, i32 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mgr_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.clk_mgr_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fixed31_32 = type { i64 }
%struct.clk_mgr_internal = type { %struct.clk_mgr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [9 x %struct.state_dependent_clocks], i8, i8, i32, i32, i8, i8, i32, i32, i32, i32, i8, [12 x i32], i8, ptr, i64 }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
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
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.34, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.16 }
%union.anon.16 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.17 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.17 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.22, i32, i32, i32, i32 }
%struct.anon.22 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.23 }
%struct.anon.23 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.34 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.bp_pixel_clock_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, %struct.program_pixel_clock_flags }
%struct.program_pixel_clock_flags = type { i8, [3 x i8] }
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
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spread_spectrum_info = type { %struct.spread_spectrum_type, i32, i32, i32, %union.anon.37 }
%struct.spread_spectrum_type = type { i8 }
%union.anon.37 = type { %struct.step_and_delay_info }
%struct.step_and_delay_info = type { i32, i32, i32 }
%struct.dm_pp_static_clock_info = type { i32, i32, i32 }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.integrated_info = type { [4 x %struct.clock_voltage_caps], %struct.display_connection_info, [5 x %struct.available_s_clk_list], i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i32, %struct.edp_info, %struct.edp_info }
%struct.clock_voltage_caps = type { i32, i32 }
%struct.display_connection_info = type { [7 x %struct.external_display_path], [16 x i8], i8, i8 }
%struct.external_display_path = type { i32, i32, %struct.graphics_object_id, i8, i8, %struct.graphics_object_id, %union.ddi_channel_mapping, i16 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.available_s_clk_list = type { i32, i32, i32 }
%struct.i2c_reg_info = type { i8, i8 }
%struct.edp_info = type { i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.dm_pp_power_level_change_request = type { i32 }

@dce_get_dp_ref_freq_khz.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c\00", [58 x i8] zeroinitializer }, align 32
@dce80_max_clks_by_state = internal constant { [5 x %struct.state_dependent_clocks], [56 x i8] } { [5 x %struct.state_dependent_clocks] [%struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks zeroinitializer, %struct.state_dependent_clocks { i32 352000, i32 330000 }, %struct.state_dependent_clocks { i32 600000, i32 400000 }, %struct.state_dependent_clocks { i32 600000, i32 400000 }], [56 x i8] zeroinitializer }, align 32
@dce_funcs = internal global { %struct.clk_mgr_funcs, [36 x i8] } { %struct.clk_mgr_funcs { ptr @dce_update_clocks, ptr @dce_get_dp_ref_freq_khz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@disp_clk_regs = internal constant { %struct.clk_mgr_registers, [52 x i8] } { %struct.clk_mgr_registers { i32 280, i32 292, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@disp_clk_shift = internal constant { %struct.clk_mgr_shift, [20 x i8] } { %struct.clk_mgr_shift { i8 0, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@disp_clk_mask = internal constant { %struct.clk_mgr_mask, [60 x i8] } { %struct.clk_mgr_mask { i32 7, i32 2130706432, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dc_fixpt_sub.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 139, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"dce80_max_clks_by_state\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 67, i32 44 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"dce_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 429, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"disp_clk_regs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 53, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"disp_clk_shift\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 57, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"disp_clk_mask\00", align 1
@___asan_gen_.23 = private constant [73 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 61, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 274, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @dce80_max_clks_by_state, ptr @dce_funcs, ptr @disp_clk_regs, ptr @disp_clk_shift, ptr @disp_clk_mask, ptr @.str.1], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce80_max_clks_by_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_shift to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_clk_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dentist_get_divider_from_did(i32 noundef %did) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %did, i32 8)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp4 = icmp ult i32 %1, 64
  br i1 %cmp4, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %1)
  %cmp6 = icmp ult i32 %1, 96
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub8 = shl nuw nsw i32 %1, 1
  %add10 = add nsw i32 %sub8, -64
  br label %return

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %1)
  %cmp12 = icmp ult i32 %1, 126
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  %sub14 = shl nuw nsw i32 %1, 2
  %add16 = add nsw i32 %sub14, -256
  br label %return

if.else17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  %2 = mul nuw nsw i32 %1, 264
  %add20 = add nsw i32 %2, -33016
  br label %return

return:                                           ; preds = %if.else17, %if.then13, %if.then7, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add10, %if.then7 ], [ %add16, %if.then13 ], [ %add20, %if.else17 ], [ %1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce_adjust_dp_ref_freq_for_ss(ptr nocapture noundef readonly %clk_mgr_dce, i32 noundef %dp_ref_clk_khz) local_unnamed_addr #1 align 64 {
entry:
  %ss_percentage = alloca %struct.fixed31_32, align 8
  %agg.tmp = alloca %struct.fixed31_32, align 8
  %tmp4 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ss_on_dprefclk = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 13
  %0 = ptrtoint ptr %ss_on_dprefclk to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ss_on_dprefclk, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dprefclk_ss_divider = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 16
  %2 = ptrtoint ptr %dprefclk_ss_divider to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dprefclk_ss_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ss_percentage) #7
  %4 = ptrtoint ptr %ss_percentage to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ss_percentage, align 8, !annotation !28
  %dprefclk_ss_percentage = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 15
  %5 = ptrtoint ptr %dprefclk_ss_percentage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dprefclk_ss_percentage, align 8
  %conv = sext i32 %6 to i64
  %conv2 = sext i32 %3 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, i64 noundef %conv, i64 noundef %conv2) #7
  %7 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.0.load = load i64, ptr %agg.tmp, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %ss_percentage, i64 noundef %.fca.0.load, i64 noundef 858993459200) #7
  %8 = ptrtoint ptr %ss_percentage to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.0.load9 = load i64, ptr %ss_percentage, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808511, i64 %.fca.0.load9)
  %9 = icmp slt i64 %.fca.0.load9, -9223372032559808511
  br i1 %9, label %land.rhs13.i, label %if.then.dc_fixpt_sub.exit_crit_edge

if.then.dc_fixpt_sub.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %if.then
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !29
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !32

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef null) #7, !noalias !29
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  call void @kgdb_breakpoint() #7, !noalias !29
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %if.then.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 4294967296, %.fca.0.load9
  %10 = ptrtoint ptr %ss_percentage to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %sub.i, ptr %ss_percentage, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp4) #7
  %.fca.0.insert13 = insertvalue [1 x i64] poison, i64 %sub.i, 0
  %conv1.i.i = zext i32 %dp_ref_clk_khz to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %shl.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp4, [1 x i64] %.fca.0.insert13, [1 x i64] %.fca.0.insert.i) #7
  %11 = ptrtoint ptr %tmp4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %adj_dp_ref_clk_khz.sroa.0.0.copyload = load i64, ptr %tmp4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp4) #7
  %12 = call i64 @llvm.abs.i64(i64 %adj_dp_ref_clk_khz.sroa.0.0.copyload, i1 false) #7
  %extract12.i = lshr i64 %12, 32
  %extract.t13.i = trunc i64 %extract12.i to i32
  %sub7.i = sub i32 0, %extract.t13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %adj_dp_ref_clk_khz.sroa.0.0.copyload)
  %cmp414.i = icmp slt i64 %adj_dp_ref_clk_khz.sroa.0.0.copyload, 0
  %retval.0.i = select i1 %cmp414.i, i32 %sub7.i, i32 %extract.t13.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ss_percentage) #7
  br label %if.end

if.end:                                           ; preds = %dc_fixpt_sub.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dp_ref_clk_khz.addr.0 = phi i32 [ %retval.0.i, %dc_fixpt_sub.exit ], [ %dp_ref_clk_khz, %land.lhs.true.if.end_crit_edge ], [ %dp_ref_clk_khz, %entry.if.end_crit_edge ]
  ret i32 %dp_ref_clk_khz.addr.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce_get_dp_ref_freq_khz(ptr nocapture noundef readonly %clk_mgr_base) #1 align 64 {
entry:
  %dprefclk_wdivider = alloca i32, align 4
  %dprefclk_src_sel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dprefclk_wdivider) #7
  %0 = ptrtoint ptr %dprefclk_wdivider to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dprefclk_wdivider, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dprefclk_src_sel) #7
  %1 = ptrtoint ptr %dprefclk_src_sel to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dprefclk_src_sel, align 4, !annotation !28
  %2 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_mgr_base, align 8
  %regs = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %clk_mgr_shift = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 6
  %8 = ptrtoint ptr %clk_mgr_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mgr_shift, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %clk_mgr_mask = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 7
  %12 = ptrtoint ptr %clk_mgr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_mgr_mask, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call = call i32 @generic_reg_get(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %11, i32 noundef %15, ptr noundef nonnull %dprefclk_src_sel) #7
  %16 = ptrtoint ptr %dprefclk_src_sel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dprefclk_src_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %entry.do.end43_crit_edge, label %land.rhs

entry.do.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

land.rhs:                                         ; preds = %entry
  %.b65 = load i1, ptr @dce_get_dp_ref_freq_khz.__already_done, align 1
  br i1 %.b65, label %land.rhs.if.then40_crit_edge, label %if.then, !prof !32

land.rhs.if.then40_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dce_get_dp_ref_freq_khz.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #7
  br label %if.then40

if.then40:                                        ; preds = %if.then, %land.rhs.if.then40_crit_edge
  call void @kgdb_breakpoint() #7
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %entry.do.end43_crit_edge
  %18 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_mgr_base, align 8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %DENTIST_DISPCLK_CNTL = getelementptr inbounds %struct.clk_mgr_registers, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %DENTIST_DISPCLK_CNTL to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DENTIST_DISPCLK_CNTL, align 4
  %24 = ptrtoint ptr %clk_mgr_shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_mgr_shift, align 8
  %DENTIST_DPREFCLK_WDIVIDER = getelementptr inbounds %struct.clk_mgr_shift, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %DENTIST_DPREFCLK_WDIVIDER to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %DENTIST_DPREFCLK_WDIVIDER, align 1
  %28 = ptrtoint ptr %clk_mgr_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_mgr_mask, align 4
  %DENTIST_DPREFCLK_WDIVIDER49 = getelementptr inbounds %struct.clk_mgr_mask, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %DENTIST_DPREFCLK_WDIVIDER49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DENTIST_DPREFCLK_WDIVIDER49, align 4
  %call50 = call i32 @generic_reg_get(ptr noundef %19, i32 noundef %23, i8 noundef zeroext %27, i32 noundef %31, ptr noundef nonnull %dprefclk_wdivider) #7
  %32 = ptrtoint ptr %dprefclk_wdivider to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dprefclk_wdivider, align 4
  %34 = call i32 @llvm.smax.i32(i32 %33, i32 8) #7
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %35)
  %cmp4.i = icmp ult i32 %35, 64
  br i1 %cmp4.i, label %do.end43.dentist_get_divider_from_did.exit_crit_edge, label %if.else.i

do.end43.dentist_get_divider_from_did.exit_crit_edge: ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %dentist_get_divider_from_did.exit

if.else.i:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %35)
  %cmp6.i = icmp ult i32 %35, 96
  br i1 %cmp6.i, label %if.then7.i, label %if.else11.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i = shl nuw nsw i32 %35, 1
  %add10.i = add nsw i32 %sub8.i, -64
  br label %dentist_get_divider_from_did.exit

if.else11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %35)
  %cmp12.i = icmp ult i32 %35, 126
  br i1 %cmp12.i, label %if.then13.i, label %if.else17.i

if.then13.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub14.i = shl nuw nsw i32 %35, 2
  %add16.i = add nsw i32 %sub14.i, -256
  br label %dentist_get_divider_from_did.exit

if.else17.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = mul nuw nsw i32 %35, 264
  %add20.i = add nsw i32 %36, -33016
  br label %dentist_get_divider_from_did.exit

dentist_get_divider_from_did.exit:                ; preds = %if.else17.i, %if.then13.i, %if.then7.i, %do.end43.dentist_get_divider_from_did.exit_crit_edge
  %retval.0.i = phi i32 [ %add10.i, %if.then7.i ], [ %add16.i, %if.then13.i ], [ %add20.i, %if.else17.i ], [ %35, %do.end43.dentist_get_divider_from_did.exit_crit_edge ]
  %dentist_vco_freq_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 7
  %37 = ptrtoint ptr %dentist_vco_freq_khz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dentist_vco_freq_khz, align 4
  %mul = shl i32 %38, 2
  %div = sdiv i32 %mul, %retval.0.i
  %call53 = call i32 @dce_adjust_dp_ref_freq_for_ss(ptr noundef %clk_mgr_base, i32 noundef %div)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dprefclk_src_sel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dprefclk_wdivider) #7
  ret i32 %call53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce12_get_dp_ref_freq_khz(ptr nocapture noundef readonly %clk_mgr_base) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dprefclk_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 6
  %0 = ptrtoint ptr %dprefclk_khz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dprefclk_khz, align 4
  %call = tail call i32 @dce_adjust_dp_ref_freq_for_ss(ptr noundef %clk_mgr_base, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce_get_max_pixel_clock_for_all_paths(ptr nocapture noundef readonly %context) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %top_pipe = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 9
  %2 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top_pipe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pix_clk_params = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pix_clk_params, align 4
  %div = udiv i32 %5, 10
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %signal, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end4.cleanup_crit_edge [
    i32 32, label %if.end4.land.lhs.true_crit_edge
    i32 128, label %if.end4.land.lhs.true_crit_edge37
    i32 64, label %if.end4.land.lhs.true_crit_edge38
  ]

if.end4.land.lhs.true_crit_edge38:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end4.land.lhs.true_crit_edge37:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end4.land.lhs.true_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4.land.lhs.true_crit_edge, %if.end4.land.lhs.true_crit_edge37, %if.end4.land.lhs.true_crit_edge38
  %requested_sym_clk = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 3, i32 5, i32 1
  %9 = ptrtoint ptr %requested_sym_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %requested_sym_clk, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 %div)
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %max_pix_clk.3 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %11, %land.lhs.true ], [ %div, %if.end4.cleanup_crit_edge ]
  %stream.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream.1, align 4
  %cmp2.1 = icmp eq ptr %13, null
  br i1 %cmp2.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %top_pipe.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %top_pipe.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %top_pipe.1, align 4
  %tobool.not.1 = icmp eq ptr %15, null
  br i1 %tobool.not.1, label %if.end4.1, label %if.end.1.cleanup.1_crit_edge

if.end.1.cleanup.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end4.1:                                        ; preds = %if.end.1
  %pix_clk_params.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 3, i32 5
  %16 = ptrtoint ptr %pix_clk_params.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pix_clk_params.1, align 4
  %div.1 = udiv i32 %17, 10
  %18 = tail call i32 @llvm.umax.i32(i32 %div.1, i32 %max_pix_clk.3)
  %signal.1 = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 36
  %19 = ptrtoint ptr %signal.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %signal.1, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %20, label %if.end4.1.cleanup.1_crit_edge [
    i32 32, label %if.end4.1.land.lhs.true.1_crit_edge
    i32 128, label %if.end4.1.land.lhs.true.1_crit_edge39
    i32 64, label %if.end4.1.land.lhs.true.1_crit_edge40
  ]

if.end4.1.land.lhs.true.1_crit_edge40:            ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.1

if.end4.1.land.lhs.true.1_crit_edge39:            ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.1

if.end4.1.land.lhs.true.1_crit_edge:              ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.1

if.end4.1.cleanup.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

land.lhs.true.1:                                  ; preds = %if.end4.1.land.lhs.true.1_crit_edge, %if.end4.1.land.lhs.true.1_crit_edge39, %if.end4.1.land.lhs.true.1_crit_edge40
  %requested_sym_clk.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 3, i32 5, i32 1
  %22 = ptrtoint ptr %requested_sym_clk.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %requested_sym_clk.1, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %18)
  br label %cleanup.1

cleanup.1:                                        ; preds = %land.lhs.true.1, %if.end4.1.cleanup.1_crit_edge, %if.end.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %max_pix_clk.3.1 = phi i32 [ %max_pix_clk.3, %cleanup.cleanup.1_crit_edge ], [ %max_pix_clk.3, %if.end.1.cleanup.1_crit_edge ], [ %24, %land.lhs.true.1 ], [ %18, %if.end4.1.cleanup.1_crit_edge ]
  %stream.2 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream.2, align 4
  %cmp2.2 = icmp eq ptr %26, null
  br i1 %cmp2.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  %top_pipe.2 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 2, i32 9
  %27 = ptrtoint ptr %top_pipe.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %top_pipe.2, align 4
  %tobool.not.2 = icmp eq ptr %28, null
  br i1 %tobool.not.2, label %if.end4.2, label %if.end.2.cleanup.2_crit_edge

if.end.2.cleanup.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end4.2:                                        ; preds = %if.end.2
  %pix_clk_params.2 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 2, i32 3, i32 5
  %29 = ptrtoint ptr %pix_clk_params.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pix_clk_params.2, align 4
  %div.2 = udiv i32 %30, 10
  %31 = tail call i32 @llvm.umax.i32(i32 %div.2, i32 %max_pix_clk.3.1)
  %signal.2 = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 36
  %32 = ptrtoint ptr %signal.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %signal.2, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %33, label %if.end4.2.cleanup.2_crit_edge [
    i32 32, label %if.end4.2.land.lhs.true.2_crit_edge
    i32 128, label %if.end4.2.land.lhs.true.2_crit_edge41
    i32 64, label %if.end4.2.land.lhs.true.2_crit_edge42
  ]

if.end4.2.land.lhs.true.2_crit_edge42:            ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.2

if.end4.2.land.lhs.true.2_crit_edge41:            ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.2

if.end4.2.land.lhs.true.2_crit_edge:              ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.2

if.end4.2.cleanup.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

land.lhs.true.2:                                  ; preds = %if.end4.2.land.lhs.true.2_crit_edge, %if.end4.2.land.lhs.true.2_crit_edge41, %if.end4.2.land.lhs.true.2_crit_edge42
  %requested_sym_clk.2 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 2, i32 3, i32 5, i32 1
  %35 = ptrtoint ptr %requested_sym_clk.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %requested_sym_clk.2, align 4
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %31)
  br label %cleanup.2

cleanup.2:                                        ; preds = %land.lhs.true.2, %if.end4.2.cleanup.2_crit_edge, %if.end.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %max_pix_clk.3.2 = phi i32 [ %max_pix_clk.3.1, %cleanup.1.cleanup.2_crit_edge ], [ %max_pix_clk.3.1, %if.end.2.cleanup.2_crit_edge ], [ %37, %land.lhs.true.2 ], [ %31, %if.end4.2.cleanup.2_crit_edge ]
  %stream.3 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stream.3, align 4
  %cmp2.3 = icmp eq ptr %39, null
  br i1 %cmp2.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  %top_pipe.3 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 3, i32 9
  %40 = ptrtoint ptr %top_pipe.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %top_pipe.3, align 4
  %tobool.not.3 = icmp eq ptr %41, null
  br i1 %tobool.not.3, label %if.end4.3, label %if.end.3.cleanup.3_crit_edge

if.end.3.cleanup.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.end4.3:                                        ; preds = %if.end.3
  %pix_clk_params.3 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 3, i32 3, i32 5
  %42 = ptrtoint ptr %pix_clk_params.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pix_clk_params.3, align 4
  %div.3 = udiv i32 %43, 10
  %44 = tail call i32 @llvm.umax.i32(i32 %div.3, i32 %max_pix_clk.3.2)
  %signal.3 = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 36
  %45 = ptrtoint ptr %signal.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %signal.3, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %46, label %if.end4.3.cleanup.3_crit_edge [
    i32 32, label %if.end4.3.land.lhs.true.3_crit_edge
    i32 128, label %if.end4.3.land.lhs.true.3_crit_edge43
    i32 64, label %if.end4.3.land.lhs.true.3_crit_edge44
  ]

if.end4.3.land.lhs.true.3_crit_edge44:            ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.3

if.end4.3.land.lhs.true.3_crit_edge43:            ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.3

if.end4.3.land.lhs.true.3_crit_edge:              ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.3

if.end4.3.cleanup.3_crit_edge:                    ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

land.lhs.true.3:                                  ; preds = %if.end4.3.land.lhs.true.3_crit_edge, %if.end4.3.land.lhs.true.3_crit_edge43, %if.end4.3.land.lhs.true.3_crit_edge44
  %requested_sym_clk.3 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 3, i32 3, i32 5, i32 1
  %48 = ptrtoint ptr %requested_sym_clk.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %requested_sym_clk.3, align 4
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 %44)
  br label %cleanup.3

cleanup.3:                                        ; preds = %land.lhs.true.3, %if.end4.3.cleanup.3_crit_edge, %if.end.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %max_pix_clk.3.3 = phi i32 [ %max_pix_clk.3.2, %cleanup.2.cleanup.3_crit_edge ], [ %max_pix_clk.3.2, %if.end.3.cleanup.3_crit_edge ], [ %50, %land.lhs.true.3 ], [ %44, %if.end4.3.cleanup.3_crit_edge ]
  %stream.4 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stream.4, align 4
  %cmp2.4 = icmp eq ptr %52, null
  br i1 %cmp2.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  %top_pipe.4 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 4, i32 9
  %53 = ptrtoint ptr %top_pipe.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %top_pipe.4, align 4
  %tobool.not.4 = icmp eq ptr %54, null
  br i1 %tobool.not.4, label %if.end4.4, label %if.end.4.cleanup.4_crit_edge

if.end.4.cleanup.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

if.end4.4:                                        ; preds = %if.end.4
  %pix_clk_params.4 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 4, i32 3, i32 5
  %55 = ptrtoint ptr %pix_clk_params.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pix_clk_params.4, align 4
  %div.4 = udiv i32 %56, 10
  %57 = tail call i32 @llvm.umax.i32(i32 %div.4, i32 %max_pix_clk.3.3)
  %signal.4 = getelementptr inbounds %struct.dc_stream_state, ptr %52, i32 0, i32 36
  %58 = ptrtoint ptr %signal.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %signal.4, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %59, label %if.end4.4.cleanup.4_crit_edge [
    i32 32, label %if.end4.4.land.lhs.true.4_crit_edge
    i32 128, label %if.end4.4.land.lhs.true.4_crit_edge45
    i32 64, label %if.end4.4.land.lhs.true.4_crit_edge46
  ]

if.end4.4.land.lhs.true.4_crit_edge46:            ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.4

if.end4.4.land.lhs.true.4_crit_edge45:            ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.4

if.end4.4.land.lhs.true.4_crit_edge:              ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.4

if.end4.4.cleanup.4_crit_edge:                    ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

land.lhs.true.4:                                  ; preds = %if.end4.4.land.lhs.true.4_crit_edge, %if.end4.4.land.lhs.true.4_crit_edge45, %if.end4.4.land.lhs.true.4_crit_edge46
  %requested_sym_clk.4 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 4, i32 3, i32 5, i32 1
  %61 = ptrtoint ptr %requested_sym_clk.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %requested_sym_clk.4, align 4
  %63 = tail call i32 @llvm.umax.i32(i32 %62, i32 %57)
  br label %cleanup.4

cleanup.4:                                        ; preds = %land.lhs.true.4, %if.end4.4.cleanup.4_crit_edge, %if.end.4.cleanup.4_crit_edge, %cleanup.3.cleanup.4_crit_edge
  %max_pix_clk.3.4 = phi i32 [ %max_pix_clk.3.3, %cleanup.3.cleanup.4_crit_edge ], [ %max_pix_clk.3.3, %if.end.4.cleanup.4_crit_edge ], [ %63, %land.lhs.true.4 ], [ %57, %if.end4.4.cleanup.4_crit_edge ]
  %stream.5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stream.5, align 4
  %cmp2.5 = icmp eq ptr %65, null
  br i1 %cmp2.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

if.end.5:                                         ; preds = %cleanup.4
  %top_pipe.5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 5, i32 9
  %66 = ptrtoint ptr %top_pipe.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %top_pipe.5, align 4
  %tobool.not.5 = icmp eq ptr %67, null
  br i1 %tobool.not.5, label %if.end4.5, label %if.end.5.cleanup.5_crit_edge

if.end.5.cleanup.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

if.end4.5:                                        ; preds = %if.end.5
  %pix_clk_params.5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 5, i32 3, i32 5
  %68 = ptrtoint ptr %pix_clk_params.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pix_clk_params.5, align 4
  %div.5 = udiv i32 %69, 10
  %70 = tail call i32 @llvm.umax.i32(i32 %div.5, i32 %max_pix_clk.3.4)
  %signal.5 = getelementptr inbounds %struct.dc_stream_state, ptr %65, i32 0, i32 36
  %71 = ptrtoint ptr %signal.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %signal.5, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %72, label %if.end4.5.cleanup.5_crit_edge [
    i32 32, label %if.end4.5.land.lhs.true.5_crit_edge
    i32 128, label %if.end4.5.land.lhs.true.5_crit_edge47
    i32 64, label %if.end4.5.land.lhs.true.5_crit_edge48
  ]

if.end4.5.land.lhs.true.5_crit_edge48:            ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.5

if.end4.5.land.lhs.true.5_crit_edge47:            ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.5

if.end4.5.land.lhs.true.5_crit_edge:              ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.5

if.end4.5.cleanup.5_crit_edge:                    ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

land.lhs.true.5:                                  ; preds = %if.end4.5.land.lhs.true.5_crit_edge, %if.end4.5.land.lhs.true.5_crit_edge47, %if.end4.5.land.lhs.true.5_crit_edge48
  %requested_sym_clk.5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 5, i32 3, i32 5, i32 1
  %74 = ptrtoint ptr %requested_sym_clk.5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %requested_sym_clk.5, align 4
  %76 = tail call i32 @llvm.umax.i32(i32 %75, i32 %70)
  br label %cleanup.5

cleanup.5:                                        ; preds = %land.lhs.true.5, %if.end4.5.cleanup.5_crit_edge, %if.end.5.cleanup.5_crit_edge, %cleanup.4.cleanup.5_crit_edge
  %max_pix_clk.3.5 = phi i32 [ %max_pix_clk.3.4, %cleanup.4.cleanup.5_crit_edge ], [ %max_pix_clk.3.4, %if.end.5.cleanup.5_crit_edge ], [ %76, %land.lhs.true.5 ], [ %70, %if.end4.5.cleanup.5_crit_edge ]
  ret i32 %max_pix_clk.3.5
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce_get_required_clocks_state(ptr nocapture noundef readonly %clk_mgr_base, ptr nocapture noundef readonly %context) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dce_get_max_pixel_clock_for_all_paths(ptr noundef %context)
  %max_clks_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 17
  %0 = ptrtoint ptr %max_clks_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_clks_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33 = icmp sgt i32 %1, 0
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dispclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %2 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dispclk_khz, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ %1, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 8, i32 %i.034
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1 = icmp sgt i32 %3, %5
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %lor.lhs.false

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false:                                    ; preds = %for.body
  %pixel_clk_khz = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 8, i32 %i.034, i32 1
  %6 = ptrtoint ptr %pixel_clk_khz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_clk_khz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp4 = icmp sgt i32 %call, %7
  br i1 %cmp4, label %lor.lhs.false.for.end_crit_edge, label %for.inc

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false
  %dec = add nsw i32 %i.034, -1
  %cmp = icmp sgt i32 %i.034, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %i.034, %for.body.for.end_crit_edge ], [ %i.034, %lor.lhs.false.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %add = add i32 %i.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp6 = icmp ugt i32 %add, %1
  br i1 %cmp6, label %if.then7, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10 = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 8, i32 %1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 8
  %dispclk_khz14 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %10 = ptrtoint ptr %dispclk_khz14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dispclk_khz14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp15 = icmp slt i32 %9, %11
  %. = select i1 %cmp15, i32 0, i32 %1
  br label %if.end19

if.end19:                                         ; preds = %if.then7, %for.end.if.end19_crit_edge
  %low_req_clk.0 = phi i32 [ %add, %for.end.if.end19_crit_edge ], [ %., %if.then7 ]
  ret i32 %low_req_clk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce_set_clock(ptr nocapture noundef %clk_mgr_base, i32 noundef %requested_clk_khz) local_unnamed_addr #1 align 64 {
entry:
  %pxl_clk_params = alloca %struct.bp_pixel_clock_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pxl_clk_params) #7
  %0 = call ptr @memset(ptr %pxl_clk_params, i32 0, i32 48)
  %1 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_mgr_base, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_bios, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res_pool, align 8
  %dmcu2 = getelementptr inbounds %struct.resource_pool, ptr %8, i32 0, i32 38
  %9 = ptrtoint ptr %dmcu2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmcu2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_clk_khz)
  %cmp = icmp sgt i32 %requested_clk_khz, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dentist_vco_freq_khz = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 7
  %11 = ptrtoint ptr %dentist_vco_freq_khz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dentist_vco_freq_khz, align 4
  %div = sdiv i32 %12, 64
  %13 = tail call i32 @llvm.smax.i32(i32 %div, i32 %requested_clk_khz)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %requested_clk_khz.addr.0 = phi i32 [ %13, %if.then ], [ %requested_clk_khz, %entry.if.end_crit_edge ]
  %mul = mul i32 %requested_clk_khz.addr.0, 10
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params, i32 0, i32 3
  %14 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %target_pixel_clock_100hz, align 4
  %pll_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params, i32 0, i32 1
  %15 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %pll_id, align 4
  %dfs_bypass_active = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 10
  %16 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dfs_bypass_active, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params, i32 0, i32 11
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %flags, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %program_display_engine_pll = getelementptr inbounds %struct.dc_vbios_funcs, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %program_display_engine_pll to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %program_display_engine_pll, align 4
  %call = call i32 %22(ptr noundef %4, ptr noundef nonnull %pxl_clk_params) #7
  %23 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dfs_bypass_active, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dfs_bypass_display_clock = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params, i32 0, i32 9
  %25 = ptrtoint ptr %dfs_bypass_display_clock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dfs_bypass_display_clock, align 4
  %dfs_bypass_disp_clk = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 12
  %27 = ptrtoint ptr %dfs_bypass_disp_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dfs_bypass_disp_clk, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %actual_clock.0 = phi i32 [ %26, %if.then10 ], [ %requested_clk_khz, %if.end7.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_clk_khz.addr.0)
  %cmp13 = icmp eq i32 %requested_clk_khz.addr.0, 0
  br i1 %cmp13, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %cur_min_clks_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 18
  %28 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %cur_min_clks_state, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end15
  %funcs17 = getelementptr inbounds %struct.dmcu, ptr %10, i32 0, i32 1
  %29 = ptrtoint ptr %funcs17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs17, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %is_dmcu_initialized, align 4
  %call18 = call zeroext i1 %32(ptr noundef nonnull %10) #7
  br i1 %call18, label %if.then19, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %funcs17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs17, align 4
  %set_psr_wait_loop = getelementptr inbounds %struct.dmcu_funcs, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %set_psr_wait_loop to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_psr_wait_loop, align 4
  %div22 = sdiv i32 %actual_clock.0, 7000
  call void %36(ptr noundef nonnull %10, i32 noundef %div22) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pxl_clk_params) #7
  ret i32 %actual_clock.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_clock_read_ss_info(ptr nocapture noundef %clk_mgr_dce) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.spread_spectrum_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk_mgr_dce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_mgr_dce, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %get_ss_entry_number = getelementptr inbounds %struct.dc_vbios_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_ss_entry_number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_ss_entry_number, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.then

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup37

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #7
  %8 = call ptr @memset(ptr %info, i32 0, i32 28)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %get_spread_spectrum_info = getelementptr inbounds %struct.dc_vbios_funcs, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %get_spread_spectrum_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_spread_spectrum_info, align 4
  %call2 = call i32 %12(ptr noundef %3, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  %spread_spectrum_percentage = getelementptr inbounds %struct.spread_spectrum_info, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %spread_spectrum_percentage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spread_spectrum_percentage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.not = icmp eq i32 %14, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then4

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  %ss_on_dprefclk = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 13
  %15 = ptrtoint ptr %ss_on_dprefclk to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ss_on_dprefclk, align 4
  %spread_percentage_divider = getelementptr inbounds %struct.spread_spectrum_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %spread_percentage_divider to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spread_percentage_divider, align 4
  %dprefclk_ss_divider = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 16
  %18 = ptrtoint ptr %dprefclk_ss_divider to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dprefclk_ss_divider, align 4
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp5 = icmp sgt i8 %bf.load, -1
  br i1 %cmp5, label %if.then7, label %cleanup37.critedge53

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dprefclk_ss_percentage = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 15
  %20 = ptrtoint ptr %dprefclk_ss_percentage to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %14, ptr %dprefclk_ss_percentage, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #7
  br label %cleanup37

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %get_spread_spectrum_info11 = getelementptr inbounds %struct.dc_vbios_funcs, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %get_spread_spectrum_info11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_spread_spectrum_info11, align 4
  %call12 = call i32 %24(ptr noundef %3, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end9
  %spread_spectrum_percentage16 = getelementptr inbounds %struct.spread_spectrum_info, ptr %info, i32 0, i32 1
  %25 = ptrtoint ptr %spread_spectrum_percentage16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %spread_spectrum_percentage16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.not = icmp eq i32 %26, 0
  br i1 %cmp17.not, label %land.lhs.true15.cleanup_crit_edge, label %if.then19

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true15
  %ss_on_dprefclk20 = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 13
  %27 = ptrtoint ptr %ss_on_dprefclk20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %ss_on_dprefclk20, align 4
  %spread_percentage_divider21 = getelementptr inbounds %struct.spread_spectrum_info, ptr %info, i32 0, i32 2
  %28 = ptrtoint ptr %spread_percentage_divider21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spread_percentage_divider21, align 4
  %dprefclk_ss_divider22 = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 16
  %30 = ptrtoint ptr %dprefclk_ss_divider22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dprefclk_ss_divider22, align 4
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load24 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %cmp28 = icmp sgt i8 %bf.load24, -1
  br i1 %cmp28, label %if.then30, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %dprefclk_ss_percentage32 = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_dce, i32 0, i32 15
  %32 = ptrtoint ptr %dprefclk_ss_percentage32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %dprefclk_ss_percentage32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.then19.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #7
  br label %cleanup37

cleanup37.critedge53:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #7
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup37.critedge53, %cleanup, %if.then7, %entry.cleanup37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_clk_mgr_construct(ptr noundef %ctx, ptr noundef %clk_mgr) local_unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.spread_spectrum_info, align 4
  %static_clk_info = alloca %struct.dm_pp_static_clock_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %static_clk_info) #7
  %0 = call ptr @memset(ptr %static_clk_info, i32 0, i32 12)
  %max_clks_by_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8
  %1 = call ptr @memcpy(ptr %max_clks_by_state, ptr @dce80_max_clks_by_state, i32 40)
  %2 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %clk_mgr, align 4
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 1
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce_funcs, ptr %funcs, align 4
  %regs = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @disp_clk_regs, ptr %regs, align 4
  %clk_mgr_shift = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 6
  %5 = ptrtoint ptr %clk_mgr_shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @disp_clk_shift, ptr %clk_mgr_shift, align 8
  %clk_mgr_mask = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 7
  %6 = ptrtoint ptr %clk_mgr_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @disp_clk_mask, ptr %clk_mgr_mask, align 4
  %dfs_bypass_disp_clk = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 12
  %7 = ptrtoint ptr %dfs_bypass_disp_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dfs_bypass_disp_clk, align 8
  %dprefclk_ss_percentage = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 15
  %8 = ptrtoint ptr %dprefclk_ss_percentage to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dprefclk_ss_percentage, align 8
  %dprefclk_ss_divider = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 16
  %9 = ptrtoint ptr %dprefclk_ss_divider to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1000, ptr %dprefclk_ss_divider, align 4
  %ss_on_dprefclk = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 13
  %10 = ptrtoint ptr %ss_on_dprefclk to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ss_on_dprefclk, align 4
  %call = call zeroext i1 @dm_pp_get_static_clocks(ptr noundef %ctx, ptr noundef nonnull %static_clk_info) #7
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %max_clocks_state = getelementptr inbounds %struct.dm_pp_static_clock_info, ptr %static_clk_info, i32 0, i32 2
  %11 = ptrtoint ptr %max_clocks_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_clocks_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %12, %if.then ], [ 3, %entry.if.end_crit_edge ]
  %13 = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %13, align 8
  %cur_min_clks_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 18
  %15 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cur_min_clks_state, align 4
  %16 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_mgr, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dc_bios.i, align 4
  %integrated_info.i = getelementptr inbounds %struct.dc_bios, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %integrated_info.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dentist_vco_freq.i = getelementptr inbounds %struct.integrated_info, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dentist_vco_freq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dentist_vco_freq.i, align 4
  %dentist_vco_freq_khz.i = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 7
  %26 = ptrtoint ptr %dentist_vco_freq_khz.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dentist_vco_freq_khz.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %dentist_vco_freq_khz7.i = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr, i32 0, i32 7
  %27 = ptrtoint ptr %dentist_vco_freq_khz7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dentist_vco_freq_khz7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %smu_gpu_pll_output_freq.i = getelementptr inbounds %struct.dc_bios, ptr %21, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %smu_gpu_pll_output_freq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %smu_gpu_pll_output_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp13.i = icmp eq i32 %30, 0
  %spec.store.select.i = select i1 %cmp13.i, i32 3600000, i32 %30
  %31 = ptrtoint ptr %dentist_vco_freq_khz7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select.i, ptr %dentist_vco_freq_khz7.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then8.i, %if.end.i.sw.epilog.i_crit_edge
  %32 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %integrated_info.i, align 4
  %tobool24.not.i = icmp eq ptr %33, null
  br i1 %tobool24.not.i, label %sw.epilog.i.if.end35.3.i_crit_edge, label %if.then25.i

sw.epilog.i.if.end35.3.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.3.i

if.then25.i:                                      ; preds = %sw.epilog.i
  %max_supported_clk.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %33, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %max_supported_clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_supported_clk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %35)
  %cmp27.i = icmp ugt i32 %35, 99999
  br i1 %cmp27.i, label %if.then28.i, label %if.then25.i.sw.epilog.1.i_crit_edge

if.then25.i.sw.epilog.1.i_crit_edge:              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.1.i

if.then28.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.i = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx33.i, align 8
  br label %sw.epilog.1.i

sw.epilog.1.i:                                    ; preds = %if.then28.i, %if.then25.i.sw.epilog.1.i_crit_edge
  %37 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i = load ptr, ptr %integrated_info.i, align 4
  %tobool24.not.1.i = icmp eq ptr %.pr.i, null
  br i1 %tobool24.not.1.i, label %sw.epilog.1.i.if.end35.3.i_crit_edge, label %if.then25.1.i

sw.epilog.1.i.if.end35.3.i_crit_edge:             ; preds = %sw.epilog.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.3.i

if.then25.1.i:                                    ; preds = %sw.epilog.1.i
  %max_supported_clk.1.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %.pr.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %max_supported_clk.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_supported_clk.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %39)
  %cmp27.1.i = icmp ugt i32 %39, 99999
  br i1 %cmp27.1.i, label %if.then28.1.i, label %if.then25.1.i.sw.epilog.2.i_crit_edge

if.then25.1.i.sw.epilog.2.i_crit_edge:            ; preds = %if.then25.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.2.i

if.then28.1.i:                                    ; preds = %if.then25.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.1.i = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx33.1.i, align 8
  br label %sw.epilog.2.i

sw.epilog.2.i:                                    ; preds = %if.then28.1.i, %if.then25.1.i.sw.epilog.2.i_crit_edge
  %41 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr70.i = load ptr, ptr %integrated_info.i, align 4
  %tobool24.not.2.i = icmp eq ptr %.pr70.i, null
  br i1 %tobool24.not.2.i, label %sw.epilog.2.i.if.end35.3.i_crit_edge, label %if.then25.2.i

sw.epilog.2.i.if.end35.3.i_crit_edge:             ; preds = %sw.epilog.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.3.i

if.then25.2.i:                                    ; preds = %sw.epilog.2.i
  %max_supported_clk.2.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %.pr70.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %max_supported_clk.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_supported_clk.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %43)
  %cmp27.2.i = icmp ugt i32 %43, 99999
  br i1 %cmp27.2.i, label %if.then28.2.i, label %if.then25.2.i.sw.epilog.3.i_crit_edge

if.then25.2.i.sw.epilog.3.i_crit_edge:            ; preds = %if.then25.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.3.i

if.then28.2.i:                                    ; preds = %if.then25.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.2.i = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8, i32 3
  %44 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx33.2.i, align 8
  br label %sw.epilog.3.i

sw.epilog.3.i:                                    ; preds = %if.then28.2.i, %if.then25.2.i.sw.epilog.3.i_crit_edge
  %45 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr72.pr.i = load ptr, ptr %integrated_info.i, align 4
  %tobool24.not.3.i = icmp eq ptr %.pr72.pr.i, null
  br i1 %tobool24.not.3.i, label %sw.epilog.3.i.if.end35.3.i_crit_edge, label %if.then25.3.i

sw.epilog.3.i.if.end35.3.i_crit_edge:             ; preds = %sw.epilog.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.3.i

if.then25.3.i:                                    ; preds = %sw.epilog.3.i
  %max_supported_clk.3.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %.pr72.pr.i, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %max_supported_clk.3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_supported_clk.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %47)
  %cmp27.3.i = icmp ugt i32 %47, 99999
  br i1 %cmp27.3.i, label %if.then28.3.i, label %if.then25.3.i.if.end35.3.i_crit_edge

if.then25.3.i.if.end35.3.i_crit_edge:             ; preds = %if.then25.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.3.i

if.then28.3.i:                                    ; preds = %if.then25.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.3.i = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 8, i32 4
  %48 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx33.3.i, align 8
  br label %if.end35.3.i

if.end35.3.i:                                     ; preds = %if.then28.3.i, %if.then25.3.i.if.end35.3.i_crit_edge, %sw.epilog.3.i.if.end35.3.i_crit_edge, %sw.epilog.2.i.if.end35.3.i_crit_edge, %sw.epilog.1.i.if.end35.3.i_crit_edge, %sw.epilog.i.if.end35.3.i_crit_edge
  %disable_dfs_bypass.i = getelementptr inbounds %struct.dc_debug_options, ptr %19, i32 0, i32 19
  %49 = ptrtoint ptr %disable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %disable_dfs_bypass.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool36.not.i = icmp eq i8 %50, 0
  br i1 %tobool36.not.i, label %land.lhs.true.i, label %if.end35.3.i.dce_clock_read_integrated_info.exit_crit_edge

if.end35.3.i.dce_clock_read_integrated_info.exit_crit_edge: ; preds = %if.end35.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_clock_read_integrated_info.exit

land.lhs.true.i:                                  ; preds = %if.end35.3.i
  %51 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %integrated_info.i, align 4
  %tobool38.not.i = icmp eq ptr %52, null
  br i1 %tobool38.not.i, label %land.lhs.true.i.dce_clock_read_integrated_info.exit_crit_edge, label %if.then39.i

land.lhs.true.i.dce_clock_read_integrated_info.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_clock_read_integrated_info.exit

if.then39.i:                                      ; preds = %land.lhs.true.i
  %gpu_cap_info.i = getelementptr inbounds %struct.integrated_info, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %gpu_cap_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %gpu_cap_info.i, align 4
  %and.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool41.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool41.not.i, label %if.then39.i.dce_clock_read_integrated_info.exit_crit_edge, label %if.then42.i

if.then39.i.dce_clock_read_integrated_info.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_clock_read_integrated_info.exit

if.then42.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  %dfs_bypass_enabled.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr, i32 0, i32 9
  %55 = ptrtoint ptr %dfs_bypass_enabled.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %dfs_bypass_enabled.i, align 8
  br label %dce_clock_read_integrated_info.exit

dce_clock_read_integrated_info.exit:              ; preds = %if.then42.i, %if.then39.i.dce_clock_read_integrated_info.exit_crit_edge, %land.lhs.true.i.dce_clock_read_integrated_info.exit_crit_edge, %if.end35.3.i.dce_clock_read_integrated_info.exit_crit_edge
  %56 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dc_bios.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %get_ss_entry_number.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %get_ss_entry_number.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_ss_entry_number.i, align 4
  %call.i = call i32 %61(ptr noundef %57, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i20 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i20, label %dce_clock_read_integrated_info.exit.dce_clock_read_ss_info.exit_crit_edge, label %if.then.i22

dce_clock_read_integrated_info.exit.dce_clock_read_ss_info.exit_crit_edge: ; preds = %dce_clock_read_integrated_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_clock_read_ss_info.exit

if.then.i22:                                      ; preds = %dce_clock_read_integrated_info.exit
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i) #7
  %62 = call ptr @memset(ptr %info.i, i32 0, i32 28)
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %57, align 4
  %get_spread_spectrum_info.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %get_spread_spectrum_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_spread_spectrum_info.i, align 4
  %call2.i = call i32 %66(ptr noundef %57, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i21 = icmp eq i32 %call2.i, 0
  br i1 %cmp.i21, label %land.lhs.true.i23, label %if.then.i22.if.end9.i_crit_edge

if.then.i22.if.end9.i_crit_edge:                  ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true.i23:                                ; preds = %if.then.i22
  %spread_spectrum_percentage.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %info.i, i32 0, i32 1
  %67 = ptrtoint ptr %spread_spectrum_percentage.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %spread_spectrum_percentage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp3.not.i = icmp eq i32 %68, 0
  br i1 %cmp3.not.i, label %land.lhs.true.i23.if.end9.i_crit_edge, label %if.then4.i

land.lhs.true.i23.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i23
  %69 = ptrtoint ptr %ss_on_dprefclk to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %ss_on_dprefclk, align 4
  %spread_percentage_divider.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %info.i, i32 0, i32 2
  %70 = ptrtoint ptr %spread_percentage_divider.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %spread_percentage_divider.i, align 4
  %72 = ptrtoint ptr %dprefclk_ss_divider to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dprefclk_ss_divider, align 4
  %73 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i = load i8, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp5.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp5.i, label %if.then7.i, label %cleanup37.critedge53.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %dprefclk_ss_percentage to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %68, ptr %dprefclk_ss_percentage, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #7
  br label %dce_clock_read_ss_info.exit

if.end9.i:                                        ; preds = %land.lhs.true.i23.if.end9.i_crit_edge, %if.then.i22.if.end9.i_crit_edge
  %75 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %57, align 4
  %get_spread_spectrum_info11.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %get_spread_spectrum_info11.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_spread_spectrum_info11.i, align 4
  %call12.i = call i32 %78(ptr noundef %57, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i24 = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i24, label %land.lhs.true15.i, label %if.end9.i.cleanup.i_crit_edge

if.end9.i.cleanup.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

land.lhs.true15.i:                                ; preds = %if.end9.i
  %spread_spectrum_percentage16.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %info.i, i32 0, i32 1
  %79 = ptrtoint ptr %spread_spectrum_percentage16.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %spread_spectrum_percentage16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp17.not.i = icmp eq i32 %80, 0
  br i1 %cmp17.not.i, label %land.lhs.true15.i.cleanup.i_crit_edge, label %if.then19.i

land.lhs.true15.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then19.i:                                      ; preds = %land.lhs.true15.i
  %81 = ptrtoint ptr %ss_on_dprefclk to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %ss_on_dprefclk, align 4
  %spread_percentage_divider21.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %info.i, i32 0, i32 2
  %82 = ptrtoint ptr %spread_percentage_divider21.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %spread_percentage_divider21.i, align 4
  %84 = ptrtoint ptr %dprefclk_ss_divider to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %dprefclk_ss_divider, align 4
  %85 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load24.i = load i8, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24.i)
  %cmp28.i = icmp sgt i8 %bf.load24.i, -1
  br i1 %cmp28.i, label %if.then30.i, label %if.then19.i.cleanup.i_crit_edge

if.then19.i.cleanup.i_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then30.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %dprefclk_ss_percentage to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %80, ptr %dprefclk_ss_percentage, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then30.i, %if.then19.i.cleanup.i_crit_edge, %land.lhs.true15.i.cleanup.i_crit_edge, %if.end9.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #7
  br label %dce_clock_read_ss_info.exit

cleanup37.critedge53.i:                           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #7
  br label %dce_clock_read_ss_info.exit

dce_clock_read_ss_info.exit:                      ; preds = %cleanup37.critedge53.i, %cleanup.i, %if.then7.i, %dce_clock_read_integrated_info.exit.dce_clock_read_ss_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %static_clk_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_get_static_clocks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8, [1 x i64], [1 x i64]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_update_clocks(ptr nocapture noundef %clk_mgr_base, ptr noundef %context, i1 noundef zeroext %safe_to_lower) #1 align 64 {
entry:
  %pxl_clk_params.i = alloca %struct.bp_pixel_clock_parameters, align 4
  %level_change_req = alloca %struct.dm_pp_power_level_change_request, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level_change_req) #7
  %dispclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %0 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dispclk_khz, align 4
  %dfs_bypass_active = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 10
  %2 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dfs_bypass_active, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %mul = mul i32 %1, 115
  %div = sdiv i32 %mul, 100
  %patched_disp_clk.0 = select i1 %tobool.not, i32 %div, i32 %1
  %call.i = tail call i32 @dce_get_max_pixel_clock_for_all_paths(ptr noundef %context) #7
  %max_clks_state.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 17
  %4 = ptrtoint ptr %max_clks_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_clks_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33.i = icmp sgt i32 %5, 0
  br i1 %cmp33.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.034.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 8, i32 %i.034.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp1.i = icmp sgt i32 %1, %7
  br i1 %cmp1.i, label %for.body.i.for.end.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %pixel_clk_khz.i = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 8, i32 %i.034.i, i32 1
  %8 = ptrtoint ptr %pixel_clk_khz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_clk_khz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %9)
  %cmp4.i = icmp sgt i32 %call.i, %9
  br i1 %cmp4.i, label %lor.lhs.false.i.for.end.i_crit_edge, label %for.inc.i

lor.lhs.false.i.for.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %dec.i = add nsw i32 %i.034.i, -1
  %cmp.i = icmp sgt i32 %i.034.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %lor.lhs.false.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %5, %entry.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ], [ %i.034.i, %lor.lhs.false.i.for.end.i_crit_edge ], [ %i.034.i, %for.body.i.for.end.i_crit_edge ]
  %add.i = add i32 %i.0.lcssa.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp6.i = icmp ugt i32 %add.i, %5
  br i1 %cmp6.i, label %if.then7.i, label %for.end.i.dce_get_required_clocks_state.exit_crit_edge

for.end.i.dce_get_required_clocks_state.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_get_required_clocks_state.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i = getelementptr %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 8, i32 %5
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp15.i = icmp slt i32 %11, %1
  %..i = select i1 %cmp15.i, i32 0, i32 %5
  br label %dce_get_required_clocks_state.exit

dce_get_required_clocks_state.exit:               ; preds = %if.then7.i, %for.end.i.dce_get_required_clocks_state.exit_crit_edge
  %low_req_clk.0.i = phi i32 [ %add.i, %for.end.i.dce_get_required_clocks_state.exit_crit_edge ], [ %..i, %if.then7.i ]
  %12 = ptrtoint ptr %level_change_req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %low_req_clk.0.i, ptr %level_change_req, align 4
  %cur_min_clks_state = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 18
  %13 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_min_clks_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %low_req_clk.0.i, i32 %14)
  %cmp = icmp ult i32 %low_req_clk.0.i, %14
  %15 = and i1 %cmp, %safe_to_lower
  call void @__sanitizer_cov_trace_cmp4(i32 %low_req_clk.0.i, i32 %14)
  %cmp5 = icmp ugt i32 %low_req_clk.0.i, %14
  %or.cond = or i1 %cmp5, %15
  br i1 %or.cond, label %if.then6, label %dce_get_required_clocks_state.exit.if.end12_crit_edge

dce_get_required_clocks_state.exit.if.end12_crit_edge: ; preds = %dce_get_required_clocks_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %dce_get_required_clocks_state.exit
  %16 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_mgr_base, align 4
  %call7 = call zeroext i1 @dm_pp_apply_power_level_change_request(ptr noundef %17, ptr noundef nonnull %level_change_req) #7
  br i1 %call7, label %if.then8, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %level_change_req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level_change_req, align 4
  %20 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cur_min_clks_state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then6.if.end12_crit_edge, %dce_get_required_clocks_state.exit.if.end12_crit_edge
  %clks = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 2
  %21 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %patched_disp_clk.0, i32 %22)
  %cmp.i37 = icmp slt i32 %patched_disp_clk.0, %22
  %or.cond.i = and i1 %cmp.i37, %safe_to_lower
  call void @__sanitizer_cov_trace_cmp4(i32 %patched_disp_clk.0, i32 %22)
  %cmp1.i38 = icmp sgt i32 %patched_disp_clk.0, %22
  %spec.select.i = or i1 %cmp1.i38, %or.cond.i
  br i1 %spec.select.i, label %if.then16, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pxl_clk_params.i) #7
  %23 = call ptr @memset(ptr %pxl_clk_params.i, i32 0, i32 48)
  %24 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_mgr_base, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dc_bios.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 8
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %res_pool.i, align 8
  %dmcu2.i = getelementptr inbounds %struct.resource_pool, ptr %31, i32 0, i32 38
  %32 = ptrtoint ptr %dmcu2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dmcu2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %patched_disp_clk.0)
  %cmp.i39 = icmp sgt i32 %patched_disp_clk.0, 0
  br i1 %cmp.i39, label %if.then.i, label %if.then16.if.end.i_crit_edge

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %dentist_vco_freq_khz.i = getelementptr inbounds %struct.clk_mgr, ptr %clk_mgr_base, i32 0, i32 7
  %34 = ptrtoint ptr %dentist_vco_freq_khz.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dentist_vco_freq_khz.i, align 4
  %div.i = sdiv i32 %35, 64
  %36 = call i32 @llvm.smax.i32(i32 %div.i, i32 %patched_disp_clk.0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then16.if.end.i_crit_edge
  %requested_clk_khz.addr.0.i = phi i32 [ %36, %if.then.i ], [ %patched_disp_clk.0, %if.then16.if.end.i_crit_edge ]
  %mul.i = mul i32 %requested_clk_khz.addr.0.i, 10
  %target_pixel_clock_100hz.i = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params.i, i32 0, i32 3
  %37 = ptrtoint ptr %target_pixel_clock_100hz.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.i, ptr %target_pixel_clock_100hz.i, align 4
  %pll_id.i = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params.i, i32 0, i32 1
  %38 = ptrtoint ptr %pll_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %pll_id.i, align 4
  %39 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dfs_bypass_active, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params.i, i32 0, i32 11
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %bf.set.i = or i8 %bf.load.i, 16
  store i8 %bf.set.i, ptr %flags.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %42 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %27, align 4
  %program_display_engine_pll.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %program_display_engine_pll.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %program_display_engine_pll.i, align 4
  %call.i40 = call i32 %45(ptr noundef %27, ptr noundef nonnull %pxl_clk_params.i) #7
  %46 = ptrtoint ptr %dfs_bypass_active to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dfs_bypass_active, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool9.not.i = icmp eq i8 %47, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then10.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %dfs_bypass_display_clock.i = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %pxl_clk_params.i, i32 0, i32 9
  %48 = ptrtoint ptr %dfs_bypass_display_clock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dfs_bypass_display_clock.i, align 4
  %dfs_bypass_disp_clk.i = getelementptr inbounds %struct.clk_mgr_internal, ptr %clk_mgr_base, i32 0, i32 12
  %50 = ptrtoint ptr %dfs_bypass_disp_clk.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dfs_bypass_disp_clk.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end12.i_crit_edge
  %actual_clock.0.i = phi i32 [ %49, %if.then10.i ], [ %patched_disp_clk.0, %if.end7.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_clk_khz.addr.0.i)
  %cmp13.i = icmp eq i32 %requested_clk_khz.addr.0.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end12.i.if.end15.i_crit_edge

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %cur_min_clks_state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %cur_min_clks_state, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end15.i_crit_edge
  %tobool16.not.i = icmp eq ptr %33, null
  br i1 %tobool16.not.i, label %if.end15.i.dce_set_clock.exit_crit_edge, label %land.lhs.true.i

if.end15.i.dce_set_clock.exit_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_set_clock.exit

land.lhs.true.i:                                  ; preds = %if.end15.i
  %funcs17.i = getelementptr inbounds %struct.dmcu, ptr %33, i32 0, i32 1
  %52 = ptrtoint ptr %funcs17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs17.i, align 4
  %is_dmcu_initialized.i = getelementptr inbounds %struct.dmcu_funcs, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %is_dmcu_initialized.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %is_dmcu_initialized.i, align 4
  %call18.i = call zeroext i1 %55(ptr noundef nonnull %33) #7
  br i1 %call18.i, label %if.then19.i, label %land.lhs.true.i.dce_set_clock.exit_crit_edge

land.lhs.true.i.dce_set_clock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_set_clock.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %funcs17.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %funcs17.i, align 4
  %set_psr_wait_loop.i = getelementptr inbounds %struct.dmcu_funcs, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %set_psr_wait_loop.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_psr_wait_loop.i, align 4
  %div22.i = sdiv i32 %actual_clock.0.i, 7000
  call void %59(ptr noundef nonnull %33, i32 noundef %div22.i) #7
  br label %dce_set_clock.exit

dce_set_clock.exit:                               ; preds = %if.then19.i, %land.lhs.true.i.dce_set_clock.exit_crit_edge, %if.end15.i.dce_set_clock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pxl_clk_params.i) #7
  %60 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %actual_clock.0.i, ptr %clks, align 4
  br label %if.end20

if.end20:                                         ; preds = %dce_set_clock.exit, %if.end12.if.end20_crit_edge
  %61 = ptrtoint ptr %clk_mgr_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk_mgr_base, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %pp_display_cfg1.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6
  %call.i41 = call i32 @dce110_get_min_vblank_time_us(ptr noundef %context) #7
  %avail_mclk_switch_time_us.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 6, i32 7
  %65 = ptrtoint ptr %avail_mclk_switch_time_us.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call.i41, ptr %avail_mclk_switch_time_us.i, align 4
  call void @dce110_fill_display_configs(ptr noundef %context, ptr noundef %pp_display_cfg1.i) #7
  %current_state.i = getelementptr inbounds %struct.dc, ptr %64, i32 0, i32 11
  %66 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %current_state.i, align 4
  %pp_display_cfg2.i = getelementptr inbounds %struct.dc_state, ptr %67, i32 0, i32 6
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(292) %pp_display_cfg2.i, ptr noundef dereferenceable(292) %pp_display_cfg1.i, i32 292) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %if.end20.dce_pplib_apply_display_requirements.exit_crit_edge, label %if.then.i42

if.end20.dce_pplib_apply_display_requirements.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce_pplib_apply_display_requirements.exit

if.then.i42:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i = getelementptr inbounds %struct.dc, ptr %64, i32 0, i32 7
  %68 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx.i, align 8
  %call4.i = call zeroext i1 @dm_pp_apply_display_requirements(ptr noundef %69, ptr noundef %pp_display_cfg1.i) #7
  br label %dce_pplib_apply_display_requirements.exit

dce_pplib_apply_display_requirements.exit:        ; preds = %if.then.i42, %if.end20.dce_pplib_apply_display_requirements.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level_change_req) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_power_level_change_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce110_get_min_vblank_time_us(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_fill_display_configs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_apply_display_requirements(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c", i32 139, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"dc_fixpt_one", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 70, i32 32}
!8 = !{ptr @dce80_max_clks_by_state, !9, !"dce80_max_clks_by_state", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c", i32 67, i32 44}
!10 = !{ptr @dce_funcs, !11, !"dce_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c", i32 429, i32 29}
!12 = !{ptr @disp_clk_regs, !13, !"disp_clk_regs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c", i32 53, i32 39}
!14 = !{ptr @disp_clk_shift, !15, !"disp_clk_shift", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c", i32 57, i32 35}
!16 = !{ptr @disp_clk_mask, !17, !"disp_clk_mask", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce100/dce_clk_mgr.c", i32 61, i32 34}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
!28 = !{!"auto-init"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"dc_fixpt_sub: %agg.result"}
!31 = distinct !{!31, !"dc_fixpt_sub"}
!32 = !{!"branch_weights", i32 2000, i32 1}
