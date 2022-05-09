; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dmub_cmd_lock_hw_data = type { i32, %struct.dmub_hw_lock_inst_flags, %union.dmub_hw_lock_flags, i8, i8, i8 }
%struct.dmub_hw_lock_inst_flags = type { i8, i8, i8, i8 }
%union.dmub_hw_lock_flags = type { %struct.anon.11 }
%struct.anon.11 = type { i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.84 }
%struct.atomic_t = type { i32 }
%union.anon.84 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.45, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.27 }
%union.anon.27 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.28 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.28 = type { i8 }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.fixed31_32 = type { i64 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.33, i32, i32, i32, i32 }
%struct.anon.33 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.34 }
%struct.anon.34 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.45 = type { i8 }
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
%struct.dc_phy_addr_space_config = type { %struct.anon.64, %struct.anon.65, i8, i8, i64 }
%struct.anon.64 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.65 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.82 }
%struct.anon.82 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.73 }
%struct.dc_stream_status = type { i32, i32, i32, i32, %struct.timing_sync_info, [4 x ptr], i8 }
%struct.timing_sync_info = type { i32, i32, i8 }
%struct.resource_context = type { [6 x %struct.pipe_ctx], [12 x i8], [6 x i8], [7 x i8], i8, [6 x i8], %struct.link_enc_cfg_context }
%struct.pipe_ctx = type { ptr, ptr, %struct.plane_resource, %struct.stream_resource, %struct.link_resource, ptr, %struct.pll_settings, i8, i8, ptr, ptr, ptr, ptr, %union.pipe_update_flags, ptr, ptr, i8 }
%struct.plane_resource = type { %struct.scaler_data, ptr, ptr, ptr, ptr, ptr, i8, %struct.dcn_fe_bandwidth }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
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
%struct.anon.73 = type { i32 }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crtc_position = type { i32, i32, i32 }
%struct.crc_params = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i8, i8 }
%struct.output_pixel_processor = type { ptr, i32, %struct.pwl_params, %struct.mpc_tree, [6 x i8], ptr, i32 }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.32, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.32 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.mpc_tree = type { i32, ptr }
%struct.opp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.25 }
%struct.anon.25 = type { i8 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.50 }
%struct.anon.50 = type { i8 }
%union.max_lane_count = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%union.max_down_spread = type { %struct.anon.52 }
%struct.anon.52 = type { i8 }
%union.dprx_feature = type { %struct.anon.53 }
%struct.anon.53 = type { i8 }
%union.sink_count = type { %struct.anon.54 }
%struct.anon.54 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.56 }
%struct.anon.56 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.57 }
%struct.anon.57 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.58 }
%struct.anon.58 = type { i8 }
%union.dpia_info = type { %struct.anon.59 }
%struct.anon.59 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.60 }
%struct.anon.60 = type { i8, i8, %struct.anon.61 }
%struct.anon.61 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.62 }
%struct.anon.62 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.63 }
%struct.anon.63 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.transform_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bp_init_data = type { ptr, ptr }
%struct.dc_init_data = type { %struct.hw_asic_id, ptr, ptr, %struct.dc_bounding_box_overrides, i32, ptr, i32, ptr, ptr, %struct.dc_config, i64, %struct.dpcd_vendor_signature }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.75, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.76, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.75 = type { i8, [3 x i8] }
%struct.anon.76 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_sink = type { i32, %struct.dc_edid, %struct.dc_edid_caps, ptr, i32, ptr, [14 x %struct.stereo_3d_features], i8, %struct.dc_sink_dsc_caps, %struct.dc_sink_fec_caps, i8, ptr, ptr, i32, %struct.kref }
%struct.dc_edid = type { i32, [2048 x i8] }
%struct.dc_edid_caps = type { i16, i16, i32, i8, i8, [20 x i8], i8, i32, [16 x %struct.dc_cea_audio_mode], i32, i32, %union.display_content_support, i8, i8, i32, i8, i8, i8, %struct.dc_panel_patch }
%struct.dc_cea_audio_mode = type { i8, i8, i8, %union.anon.19 }
%union.anon.19 = type { i8 }
%struct.stereo_3d_features = type { i8, i8, i8, i8, i8 }
%struct.dc_sink_dsc_caps = type { i8, %struct.dsc_dec_dpcd_caps }
%struct.dsc_dec_dpcd_caps = type { i8, i8, i32, %union.dsc_slice_caps1, %union.dsc_slice_caps2, i32, i8, i32, %union.dsc_color_formats, %union.dsc_color_depth, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dsc_slice_caps1 = type { %struct.anon.21 }
%struct.anon.21 = type { i8 }
%union.dsc_slice_caps2 = type { %struct.anon.22 }
%struct.anon.22 = type { i8 }
%union.dsc_color_formats = type { %struct.anon.23 }
%struct.anon.23 = type { i8 }
%union.dsc_color_depth = type { %struct.anon.24 }
%struct.anon.24 = type { i8 }
%struct.dc_sink_fec_caps = type { i8, i8 }
%struct.stream_encoder = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.stream_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clock_source_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon.35, %union.large_integer, i8 }
%union.anon.35 = type { %struct.anon.37 }
%struct.anon.37 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.44 }
%struct.anon.44 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gpio_pin_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_generic_mux_config = type { i8, i32, i32 }
%struct.dc_surface_update = type { ptr, ptr, ptr, ptr, %struct.fixed31_32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_stream_update = type { ptr, %struct.rect, %struct.rect, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_plane_info = type { %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32 }
%struct.dc_scaling_info = type { %struct.rect, %struct.rect, %struct.rect, %struct.scaling_taps }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_flip_addrs = type { %struct.dc_plane_address, i32, i8, i8 }
%struct.dc_gamma = type { %struct.kref, i32, i32, %struct.dc_gamma_entries, ptr, i8 }
%struct.dc_gamma_entries = type { [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32] }
%struct.dc_transfer_func = type { %struct.kref, i32, i32, i32, %union.anon.31 }
%union.anon.31 = type { %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], i16, i16, i16, i16 }
%struct.dc_writeback_update = type { i32, [1 x %struct.dc_writeback_info] }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.audio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.abm = type { ptr, ptr, i8 }
%struct.abm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_sink_init_data = type { i32, ptr, i32, i8 }
%struct.AsicStateEx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.dmub_rb_cmd = type { %struct.dmub_rb_cmd_common }
%struct.dmub_rb_cmd_common = type { %struct.dmub_cmd_header, [60 x i8] }
%struct.dmub_cmd_header = type { i32 }
%struct.aux_payload = type { i8, i8, i8, i8, i32, i32, ptr, ptr, i32 }
%struct.dmub_rb_cmd_dp_aux_access = type { %struct.dmub_cmd_header, %struct.dmub_cmd_dp_aux_control_data }
%struct.dmub_cmd_dp_aux_control_data = type { i8, i8, i8, i8, i16, i16, i32, %struct.aux_transaction_parameters }
%struct.aux_transaction_parameters = type { i8, i8, i8, i8, i32, [16 x i8] }
%struct.dmub_rb_cmd_set_config_access = type { %struct.dmub_cmd_header, %struct.dmub_cmd_set_config_control_data }
%struct.dmub_cmd_set_config_control_data = type { %struct.set_config_cmd_payload, i8, i8 }
%struct.set_config_cmd_payload = type { i8, i8 }
%struct.dmub_notification = type { i32, i8, i8, i8, %union.anon.83 }
%union.anon.83 = type { i32, [16 x i8] }
%struct.dmub_rb_cmd_set_mst_alloc_slots = type { %struct.dmub_cmd_header, %struct.dmub_cmd_mst_alloc_slots_control_data }
%struct.dmub_cmd_mst_alloc_slots_control_data = type { i8, i8, i8, i8 }
%struct.link_init_data = type { ptr, ptr, i32, i32, i8 }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }

@dc_stream_configure_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014[drm] CRC capture not supported.\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dc_stream_configure_crc\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c\00", [45 x i8] zeroinitializer }, align 32
@dc_stream_configure_crc._entry_ptr = internal global ptr @dc_stream_configure_crc._entry, section ".printk_index", align 4
@dc_stream_get_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dc_stream_get_crc\00", [46 x i8] zeroinitializer }, align 32
@dc_stream_get_crc._entry_ptr = internal global ptr @dc_stream_get_crc._entry, section ".printk_index", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3.2.167\00", [24 x i8] zeroinitializer }, align 32
@DC_BUILD_ID = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"production-build\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Display Core initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Seamless boot disabled to optimize eDP link rate\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %d streams\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.dc_commit_state = private unnamed_addr constant [16 x i8] c"dc_commit_state\00", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DC commit global validation failure: %s (%d)\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate new validate context!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mode validation failed for stream update!\0A\00", [53 x i8] zeroinitializer }, align 32
@dc_set_power_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_set_power_state.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Max EDID buffer size breached!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dc_link_add_remote_sink = private unnamed_addr constant [24 x i8] c"dc_link_add_remote_sink\00", align 1
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad EDID, status%d!\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dc_link_remove_remote_sink = private unnamed_addr constant [27 x i8] c"dc_link_remove_remote_sink\00", align 1
@dc_process_dmub_aux_transfer_async.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_link_index_from_dpia_port_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.dc_process_dmub_set_mst_slots.cmd = private unnamed_addr constant { { { i8, i8, i8, i8 }, %struct.dmub_cmd_lock_hw_data }, [48 x i8] } { { { i8, i8, i8, i8 }, %struct.dmub_cmd_lock_hw_data } zeroinitializer, [48 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@dc_notify_vsync_int_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to create dc->vm_helper\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.dc_construct = private unnamed_addr constant [13 x i8] c"dc_construct\00", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to create dceip\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to create vbios\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed to create ctx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to create validate ctx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BIOS object table - number of connectors: %d\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DC: Number of connectors %d exceeds maximum of %d!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DC: %s: connectors_num: physical:%d, virtual:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.create_links = private unnamed_addr constant [13 x i8] c"create_links\00", align 1
@.str.23 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"BIOS object table - printing link object info for connector number: %d, link_index: %d\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BIOS object table - end\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"{%dx%d, %dx%d@%dKhz}\00", [43 x i8] zeroinitializer }, align 32
@__func__.wait_for_no_pipes_pending = private unnamed_addr constant [26 x i8] c"wait_for_no_pipes_pending\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_for_no_pipes_pending.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_amdgpu_dm_dc_clocks_state = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_trace.h\00", [62 x i8] zeroinitializer }, align 32
@trace_amdgpu_dm_dc_clocks_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_dm_dce_clocks_state = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_dm_dce_clocks_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@copy_stream_update_to_stream.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to allocate new validate context for DSC change\0A\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_dm_dc_pipe_state = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_dm_dc_pipe_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@commit_planes_for_stream.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.link_add_remote_sink_helper = private unnamed_addr constant [28 x i8] c"link_add_remote_sink_helper\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 628, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 663, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1233, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"DC_BUILD_ID\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 85, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1237, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1598, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1826, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1843, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 3141, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 3187, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 3417, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 3422, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 3455, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 893, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 901, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 909, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 933, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1004, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 194, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 197, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 204, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 214, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 230, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1778, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_trace.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 487, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 108, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 2696, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @dc_stream_configure_crc._entry, ptr @dc_stream_configure_crc._entry_ptr, ptr @dc_stream_get_crc._entry, ptr @dc_stream_get_crc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @DC_BUILD_ID, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_stream_configure_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_stream_get_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DC_BUILD_ID to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_adjust_vmin_vmax(ptr nocapture noundef readonly %dc, ptr noundef writeonly %stream, ptr nocapture noundef readonly %adjust) local_unnamed_addr #0 align 64 {
entry:
  %pipe = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %v_total_max = getelementptr inbounds %struct.dc_crtc_timing_adjust, ptr %adjust, i32 0, i32 1
  %0 = ptrtoint ptr %v_total_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v_total_max, align 4
  %adjust1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 6
  %v_total_max2 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %v_total_max2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %v_total_max2, align 4
  %v_total_mid = getelementptr inbounds %struct.dc_crtc_timing_adjust, ptr %adjust, i32 0, i32 2
  %3 = ptrtoint ptr %v_total_mid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v_total_mid, align 4
  %v_total_mid4 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %v_total_mid4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %v_total_mid4, align 8
  %v_total_mid_frame_num = getelementptr inbounds %struct.dc_crtc_timing_adjust, ptr %adjust, i32 0, i32 3
  %6 = ptrtoint ptr %v_total_mid_frame_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v_total_mid_frame_num, align 4
  %v_total_mid_frame_num6 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %v_total_mid_frame_num6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %v_total_mid_frame_num6, align 4
  %9 = ptrtoint ptr %adjust to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %adjust, align 4
  %11 = ptrtoint ptr %adjust1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %adjust1, align 8
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %set_drr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %ret.0.off033 = phi i1 [ false, %entry ], [ %ret.1.off0, %if.end.for.body_crit_edge ]
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #16
  %12 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %13, i32 0, i32 4
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.031
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %pipe, align 4
  %stream9 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.031, i32 1
  %15 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream9, align 4
  %cmp10 = icmp eq ptr %16, %stream
  br i1 %cmp10, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.031, i32 3, i32 2
  %17 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tg, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %set_drr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_drr, align 4
  %21 = ptrtoint ptr %adjust to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %adjust, align 4
  %22 = insertvalue [4 x i32] undef, i32 %.unpack, 0
  %23 = ptrtoint ptr %v_total_max to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack26 = load i32, ptr %v_total_max, align 4
  %24 = insertvalue [4 x i32] %22, i32 %.unpack26, 1
  %25 = ptrtoint ptr %v_total_mid to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack28 = load i32, ptr %v_total_mid, align 4
  %26 = insertvalue [4 x i32] %24, i32 %.unpack28, 2
  %27 = ptrtoint ptr %v_total_mid_frame_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack30 = load i32, ptr %v_total_mid_frame_num, align 4
  %28 = insertvalue [4 x i32] %26, i32 %.unpack30, 3
  call void %20(ptr noundef nonnull %pipe, i32 noundef 1, [4 x i32] %28) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %ret.1.off0 = phi i1 [ true, %if.then ], [ %ret.0.off033, %land.lhs.true.if.end_crit_edge ], [ %ret.0.off033, %for.body.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #16
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  ret i1 %ret.1.off0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_get_last_used_drr_vtotal(ptr nocapture noundef readonly %dc, ptr noundef readnone %stream, ptr noundef %refresh_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %stream1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %cmp2 = icmp eq ptr %3, %stream
  br i1 %cmp2, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %tg = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tg, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %get_last_used_drr_vtotal = getelementptr inbounds %struct.timing_generator_funcs, ptr %7, i32 0, i32 38
  %8 = ptrtoint ptr %get_last_used_drr_vtotal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_last_used_drr_vtotal, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cleanup:                                          ; preds = %if.then.5.cleanup_crit_edge, %if.then.4.cleanup_crit_edge, %if.then.3.cleanup_crit_edge, %if.then.2.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %.lcssa37 = phi ptr [ %9, %if.then.cleanup_crit_edge ], [ %17, %if.then.1.cleanup_crit_edge ], [ %25, %if.then.2.cleanup_crit_edge ], [ %33, %if.then.3.cleanup_crit_edge ], [ %41, %if.then.4.cleanup_crit_edge ], [ %49, %if.then.5.cleanup_crit_edge ]
  %.lcssa = phi ptr [ %5, %if.then.cleanup_crit_edge ], [ %13, %if.then.1.cleanup_crit_edge ], [ %21, %if.then.2.cleanup_crit_edge ], [ %29, %if.then.3.cleanup_crit_edge ], [ %37, %if.then.4.cleanup_crit_edge ], [ %45, %if.then.5.cleanup_crit_edge ]
  tail call void %.lcssa37(ptr noundef nonnull %.lcssa, ptr noundef %refresh_rate) #16
  br label %for.end

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %stream1.1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %stream1.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream1.1, align 4
  %cmp2.1 = icmp eq ptr %11, %stream
  br i1 %cmp2.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %tg.1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 3, i32 2
  %12 = ptrtoint ptr %tg.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tg.1, align 8
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true.1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %get_last_used_drr_vtotal.1 = getelementptr inbounds %struct.timing_generator_funcs, ptr %15, i32 0, i32 38
  %16 = ptrtoint ptr %get_last_used_drr_vtotal.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_last_used_drr_vtotal.1, align 4
  %tobool5.not.1 = icmp eq ptr %17, null
  br i1 %tobool5.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then.1.cleanup_crit_edge

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %stream1.2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %stream1.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream1.2, align 4
  %cmp2.2 = icmp eq ptr %19, %stream
  br i1 %cmp2.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %tg.2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 2, i32 3, i32 2
  %20 = ptrtoint ptr %tg.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tg.2, align 8
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %land.lhs.true.2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %get_last_used_drr_vtotal.2 = getelementptr inbounds %struct.timing_generator_funcs, ptr %23, i32 0, i32 38
  %24 = ptrtoint ptr %get_last_used_drr_vtotal.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_last_used_drr_vtotal.2, align 4
  %tobool5.not.2 = icmp eq ptr %25, null
  br i1 %tobool5.not.2, label %if.then.2.for.inc.2_crit_edge, label %if.then.2.cleanup_crit_edge

if.then.2.cleanup_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %stream1.3 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %stream1.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream1.3, align 4
  %cmp2.3 = icmp eq ptr %27, %stream
  br i1 %cmp2.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %tg.3 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3, i32 2
  %28 = ptrtoint ptr %tg.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tg.3, align 8
  %tobool.not.3 = icmp eq ptr %29, null
  br i1 %tobool.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %land.lhs.true.3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %get_last_used_drr_vtotal.3 = getelementptr inbounds %struct.timing_generator_funcs, ptr %31, i32 0, i32 38
  %32 = ptrtoint ptr %get_last_used_drr_vtotal.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_last_used_drr_vtotal.3, align 4
  %tobool5.not.3 = icmp eq ptr %33, null
  br i1 %tobool5.not.3, label %if.then.3.for.inc.3_crit_edge, label %if.then.3.cleanup_crit_edge

if.then.3.cleanup_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %stream1.4 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %stream1.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream1.4, align 4
  %cmp2.4 = icmp eq ptr %35, %stream
  br i1 %cmp2.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %tg.4 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 4, i32 3, i32 2
  %36 = ptrtoint ptr %tg.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tg.4, align 8
  %tobool.not.4 = icmp eq ptr %37, null
  br i1 %tobool.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %land.lhs.true.4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %get_last_used_drr_vtotal.4 = getelementptr inbounds %struct.timing_generator_funcs, ptr %39, i32 0, i32 38
  %40 = ptrtoint ptr %get_last_used_drr_vtotal.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_last_used_drr_vtotal.4, align 4
  %tobool5.not.4 = icmp eq ptr %41, null
  br i1 %tobool5.not.4, label %if.then.4.for.inc.4_crit_edge, label %if.then.4.cleanup_crit_edge

if.then.4.cleanup_crit_edge:                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %stream1.5 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %stream1.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stream1.5, align 4
  %cmp2.5 = icmp eq ptr %43, %stream
  br i1 %cmp2.5, label %land.lhs.true.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

land.lhs.true.5:                                  ; preds = %for.inc.4
  %tg.5 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 5, i32 3, i32 2
  %44 = ptrtoint ptr %tg.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tg.5, align 8
  %tobool.not.5 = icmp eq ptr %45, null
  br i1 %tobool.not.5, label %land.lhs.true.5.for.end_crit_edge, label %if.then.5

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.then.5:                                        ; preds = %land.lhs.true.5
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %get_last_used_drr_vtotal.5 = getelementptr inbounds %struct.timing_generator_funcs, ptr %47, i32 0, i32 38
  %48 = ptrtoint ptr %get_last_used_drr_vtotal.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_last_used_drr_vtotal.5, align 4
  %tobool5.not.5 = icmp eq ptr %49, null
  br i1 %tobool5.not.5, label %if.then.5.for.end_crit_edge, label %if.then.5.cleanup_crit_edge

if.then.5.cleanup_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.5.for.end_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.then.5.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %cleanup
  %cmp32 = phi i1 [ true, %cleanup ], [ false, %if.then.5.for.end_crit_edge ], [ false, %land.lhs.true.5.for.end_crit_edge ], [ false, %for.inc.4.for.end_crit_edge ]
  ret i1 %cmp32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_get_crtc_position(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %streams, i32 noundef %num_streams, ptr nocapture noundef writeonly %v_pos, ptr nocapture noundef writeonly %nom_v_pos) local_unnamed_addr #0 align 64 {
entry:
  %position = alloca %struct.crtc_position, align 4
  %pipe = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %streams, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position) #16
  %2 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %position, align 4, !annotation !106
  %3 = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !106
  %5 = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !106
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %get_position = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #16
  %7 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %res_ctx, ptr %pipe, align 4
  %stream2 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream2, align 4
  %cmp3 = icmp eq ptr %11, %1
  br i1 %cmp3, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stream_enc = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream_enc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_position, align 4
  call void %15(ptr noundef nonnull %pipe, i32 noundef 1, ptr noundef nonnull %position) #16
  %16 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %position, align 4
  %18 = ptrtoint ptr %v_pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %v_pos, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %21 = ptrtoint ptr %nom_v_pos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %nom_v_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.1.off0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #16
  %22 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %current_state, align 4
  %arrayidx1.1 = getelementptr %struct.dc_state, ptr %23, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx1.1, ptr %pipe, align 4
  %stream2.1 = getelementptr %struct.dc_state, ptr %23, i32 0, i32 4, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %stream2.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream2.1, align 4
  %cmp3.1 = icmp eq ptr %26, %1
  br i1 %cmp3.1, label %land.lhs.true.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %stream_enc.1 = getelementptr %struct.dc_state, ptr %23, i32 0, i32 4, i32 0, i32 1, i32 3, i32 3
  %27 = ptrtoint ptr %stream_enc.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream_enc.1, align 4
  %tobool.not.1 = icmp eq ptr %28, null
  br i1 %tobool.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %if.then.1

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_position, align 4
  call void %30(ptr noundef nonnull %pipe, i32 noundef 1, ptr noundef nonnull %position) #16
  %31 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %position, align 4
  %33 = ptrtoint ptr %v_pos to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %v_pos, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 4
  %36 = ptrtoint ptr %nom_v_pos to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %nom_v_pos, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %ret.1.off0.1 = phi i1 [ true, %if.then.1 ], [ %ret.1.off0, %land.lhs.true.1.if.end.1_crit_edge ], [ %ret.1.off0, %if.end.if.end.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #16
  %37 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %current_state, align 4
  %arrayidx1.2 = getelementptr %struct.dc_state, ptr %38, i32 0, i32 4, i32 0, i32 2
  %39 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx1.2, ptr %pipe, align 4
  %stream2.2 = getelementptr %struct.dc_state, ptr %38, i32 0, i32 4, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %stream2.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stream2.2, align 4
  %cmp3.2 = icmp eq ptr %41, %1
  br i1 %cmp3.2, label %land.lhs.true.2, label %if.end.1.if.end.2_crit_edge

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  %stream_enc.2 = getelementptr %struct.dc_state, ptr %38, i32 0, i32 4, i32 0, i32 2, i32 3, i32 3
  %42 = ptrtoint ptr %stream_enc.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stream_enc.2, align 4
  %tobool.not.2 = icmp eq ptr %43, null
  br i1 %tobool.not.2, label %land.lhs.true.2.if.end.2_crit_edge, label %if.then.2

land.lhs.true.2.if.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_position, align 4
  call void %45(ptr noundef nonnull %pipe, i32 noundef 1, ptr noundef nonnull %position) #16
  %46 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %position, align 4
  %48 = ptrtoint ptr %v_pos to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %v_pos, align 4
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %5, align 4
  %51 = ptrtoint ptr %nom_v_pos to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %nom_v_pos, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %land.lhs.true.2.if.end.2_crit_edge, %if.end.1.if.end.2_crit_edge
  %ret.1.off0.2 = phi i1 [ true, %if.then.2 ], [ %ret.1.off0.1, %land.lhs.true.2.if.end.2_crit_edge ], [ %ret.1.off0.1, %if.end.1.if.end.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #16
  %52 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %current_state, align 4
  %arrayidx1.3 = getelementptr %struct.dc_state, ptr %53, i32 0, i32 4, i32 0, i32 3
  %54 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx1.3, ptr %pipe, align 4
  %stream2.3 = getelementptr %struct.dc_state, ptr %53, i32 0, i32 4, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %stream2.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stream2.3, align 4
  %cmp3.3 = icmp eq ptr %56, %1
  br i1 %cmp3.3, label %land.lhs.true.3, label %if.end.2.if.end.3_crit_edge

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  %stream_enc.3 = getelementptr %struct.dc_state, ptr %53, i32 0, i32 4, i32 0, i32 3, i32 3, i32 3
  %57 = ptrtoint ptr %stream_enc.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stream_enc.3, align 4
  %tobool.not.3 = icmp eq ptr %58, null
  br i1 %tobool.not.3, label %land.lhs.true.3.if.end.3_crit_edge, label %if.then.3

land.lhs.true.3.if.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.3

if.then.3:                                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_position, align 4
  call void %60(ptr noundef nonnull %pipe, i32 noundef 1, ptr noundef nonnull %position) #16
  %61 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %position, align 4
  %63 = ptrtoint ptr %v_pos to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %v_pos, align 4
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %5, align 4
  %66 = ptrtoint ptr %nom_v_pos to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %nom_v_pos, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %land.lhs.true.3.if.end.3_crit_edge, %if.end.2.if.end.3_crit_edge
  %ret.1.off0.3 = phi i1 [ true, %if.then.3 ], [ %ret.1.off0.2, %land.lhs.true.3.if.end.3_crit_edge ], [ %ret.1.off0.2, %if.end.2.if.end.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #16
  %67 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %current_state, align 4
  %arrayidx1.4 = getelementptr %struct.dc_state, ptr %68, i32 0, i32 4, i32 0, i32 4
  %69 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx1.4, ptr %pipe, align 4
  %stream2.4 = getelementptr %struct.dc_state, ptr %68, i32 0, i32 4, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %stream2.4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %stream2.4, align 4
  %cmp3.4 = icmp eq ptr %71, %1
  br i1 %cmp3.4, label %land.lhs.true.4, label %if.end.3.if.end.4_crit_edge

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.4

land.lhs.true.4:                                  ; preds = %if.end.3
  %stream_enc.4 = getelementptr %struct.dc_state, ptr %68, i32 0, i32 4, i32 0, i32 4, i32 3, i32 3
  %72 = ptrtoint ptr %stream_enc.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %stream_enc.4, align 4
  %tobool.not.4 = icmp eq ptr %73, null
  br i1 %tobool.not.4, label %land.lhs.true.4.if.end.4_crit_edge, label %if.then.4

land.lhs.true.4.if.end.4_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.4

if.then.4:                                        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #18
  %74 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_position, align 4
  call void %75(ptr noundef nonnull %pipe, i32 noundef 1, ptr noundef nonnull %position) #16
  %76 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %position, align 4
  %78 = ptrtoint ptr %v_pos to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %v_pos, align 4
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %5, align 4
  %81 = ptrtoint ptr %nom_v_pos to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %nom_v_pos, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %land.lhs.true.4.if.end.4_crit_edge, %if.end.3.if.end.4_crit_edge
  %ret.1.off0.4 = phi i1 [ true, %if.then.4 ], [ %ret.1.off0.3, %land.lhs.true.4.if.end.4_crit_edge ], [ %ret.1.off0.3, %if.end.3.if.end.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #16
  %82 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %current_state, align 4
  %arrayidx1.5 = getelementptr %struct.dc_state, ptr %83, i32 0, i32 4, i32 0, i32 5
  %84 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx1.5, ptr %pipe, align 4
  %stream2.5 = getelementptr %struct.dc_state, ptr %83, i32 0, i32 4, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %stream2.5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %stream2.5, align 4
  %cmp3.5 = icmp eq ptr %86, %1
  br i1 %cmp3.5, label %land.lhs.true.5, label %if.end.4.if.end.5_crit_edge

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.5

land.lhs.true.5:                                  ; preds = %if.end.4
  %stream_enc.5 = getelementptr %struct.dc_state, ptr %83, i32 0, i32 4, i32 0, i32 5, i32 3, i32 3
  %87 = ptrtoint ptr %stream_enc.5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stream_enc.5, align 4
  %tobool.not.5 = icmp eq ptr %88, null
  br i1 %tobool.not.5, label %land.lhs.true.5.if.end.5_crit_edge, label %if.then.5

land.lhs.true.5.if.end.5_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.5

if.then.5:                                        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %get_position, align 4
  call void %90(ptr noundef nonnull %pipe, i32 noundef 1, ptr noundef nonnull %position) #16
  %91 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %position, align 4
  %93 = ptrtoint ptr %v_pos to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %v_pos, align 4
  %94 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %5, align 4
  %96 = ptrtoint ptr %nom_v_pos to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %nom_v_pos, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %land.lhs.true.5.if.end.5_crit_edge, %if.end.4.if.end.5_crit_edge
  %ret.1.off0.5 = phi i1 [ true, %if.then.5 ], [ %ret.1.off0.4, %land.lhs.true.5.if.end.5_crit_edge ], [ %ret.1.off0.4, %if.end.4.if.end.5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position) #16
  ret i1 %ret.1.off0.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_configure_crc(ptr nocapture noundef readonly %dc, ptr noundef readnone %stream, ptr noundef readonly %crc_window, i1 noundef zeroext %enable, i1 noundef zeroext %continuous) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca %struct.crc_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %frombool1 = zext i1 %continuous to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %param) #16
  %0 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 1
  %1 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 2
  %2 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 3
  %3 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 4
  %4 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 5
  %5 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 6
  %6 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 7
  %7 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 8
  %8 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 9
  %9 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 10
  %10 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 11
  %11 = getelementptr inbounds %struct.crc_params, ptr %param, i32 0, i32 12
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %12 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %13, i32 0, i32 4
  %stream2 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream2, align 4
  %cmp3 = icmp eq ptr %15, %stream
  br i1 %cmp3, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %top_pipe = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 9
  %16 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %top_pipe, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %prev_odm_pipe = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 12
  %18 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %land.lhs.true4.if.end8_crit_edge, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %stream2.1 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %stream2.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream2.1, align 4
  %cmp3.1 = icmp eq ptr %21, %stream
  br i1 %cmp3.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %top_pipe.1 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 1, i32 9
  %22 = ptrtoint ptr %top_pipe.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %top_pipe.1, align 4
  %tobool.not.1 = icmp eq ptr %23, null
  br i1 %tobool.not.1, label %land.lhs.true4.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

land.lhs.true4.1:                                 ; preds = %land.lhs.true.1
  %prev_odm_pipe.1 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %prev_odm_pipe.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev_odm_pipe.1, align 8
  %tobool5.not.1 = icmp eq ptr %25, null
  br i1 %tobool5.not.1, label %land.lhs.true4.1.if.end8_crit_edge, label %land.lhs.true4.1.for.inc.1_crit_edge

land.lhs.true4.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

land.lhs.true4.1.if.end8_crit_edge:               ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.inc.1:                                        ; preds = %land.lhs.true4.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %stream2.2 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %stream2.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream2.2, align 4
  %cmp3.2 = icmp eq ptr %27, %stream
  br i1 %cmp3.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %top_pipe.2 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 2, i32 9
  %28 = ptrtoint ptr %top_pipe.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %top_pipe.2, align 4
  %tobool.not.2 = icmp eq ptr %29, null
  br i1 %tobool.not.2, label %land.lhs.true4.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

land.lhs.true4.2:                                 ; preds = %land.lhs.true.2
  %prev_odm_pipe.2 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 2, i32 12
  %30 = ptrtoint ptr %prev_odm_pipe.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev_odm_pipe.2, align 8
  %tobool5.not.2 = icmp eq ptr %31, null
  br i1 %tobool5.not.2, label %land.lhs.true4.2.if.end8_crit_edge, label %land.lhs.true4.2.for.inc.2_crit_edge

land.lhs.true4.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true4.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

land.lhs.true4.2.if.end8_crit_edge:               ; preds = %land.lhs.true4.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.inc.2:                                        ; preds = %land.lhs.true4.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %stream2.3 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %stream2.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream2.3, align 4
  %cmp3.3 = icmp eq ptr %33, %stream
  br i1 %cmp3.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %top_pipe.3 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %top_pipe.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %top_pipe.3, align 4
  %tobool.not.3 = icmp eq ptr %35, null
  br i1 %tobool.not.3, label %land.lhs.true4.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true4.3:                                 ; preds = %land.lhs.true.3
  %prev_odm_pipe.3 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 3, i32 12
  %36 = ptrtoint ptr %prev_odm_pipe.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev_odm_pipe.3, align 8
  %tobool5.not.3 = icmp eq ptr %37, null
  br i1 %tobool5.not.3, label %land.lhs.true4.3.if.end8_crit_edge, label %land.lhs.true4.3.for.inc.3_crit_edge

land.lhs.true4.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true4.3.if.end8_crit_edge:               ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.inc.3:                                        ; preds = %land.lhs.true4.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %stream2.4 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %stream2.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stream2.4, align 4
  %cmp3.4 = icmp eq ptr %39, %stream
  br i1 %cmp3.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %top_pipe.4 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 4, i32 9
  %40 = ptrtoint ptr %top_pipe.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %top_pipe.4, align 4
  %tobool.not.4 = icmp eq ptr %41, null
  br i1 %tobool.not.4, label %land.lhs.true4.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

land.lhs.true4.4:                                 ; preds = %land.lhs.true.4
  %prev_odm_pipe.4 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 4, i32 12
  %42 = ptrtoint ptr %prev_odm_pipe.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev_odm_pipe.4, align 8
  %tobool5.not.4 = icmp eq ptr %43, null
  br i1 %tobool5.not.4, label %land.lhs.true4.4.if.end8_crit_edge, label %land.lhs.true4.4.for.inc.4_crit_edge

land.lhs.true4.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true4.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

land.lhs.true4.4.if.end8_crit_edge:               ; preds = %land.lhs.true4.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.inc.4:                                        ; preds = %land.lhs.true4.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %stream2.5 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %stream2.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream2.5, align 4
  %cmp3.5 = icmp eq ptr %45, %stream
  br i1 %cmp3.5, label %land.lhs.true.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.5:                                  ; preds = %for.inc.4
  %top_pipe.5 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 5, i32 9
  %46 = ptrtoint ptr %top_pipe.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %top_pipe.5, align 4
  %tobool.not.5 = icmp eq ptr %47, null
  br i1 %tobool.not.5, label %land.lhs.true4.5, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true4.5:                                 ; preds = %land.lhs.true.5
  %prev_odm_pipe.5 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 5, i32 12
  %48 = ptrtoint ptr %prev_odm_pipe.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev_odm_pipe.5, align 8
  %tobool5.not.5 = icmp eq ptr %49, null
  br i1 %tobool5.not.5, label %land.lhs.true4.5.if.end8_crit_edge, label %land.lhs.true4.5.cleanup_crit_edge

land.lhs.true4.5.cleanup_crit_edge:               ; preds = %land.lhs.true4.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true4.5.if.end8_crit_edge:               ; preds = %land.lhs.true4.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true4.5.if.end8_crit_edge, %land.lhs.true4.4.if.end8_crit_edge, %land.lhs.true4.3.if.end8_crit_edge, %land.lhs.true4.2.if.end8_crit_edge, %land.lhs.true4.1.if.end8_crit_edge, %land.lhs.true4.if.end8_crit_edge
  %i.089.lcssa = phi i32 [ 0, %land.lhs.true4.if.end8_crit_edge ], [ 1, %land.lhs.true4.1.if.end8_crit_edge ], [ 2, %land.lhs.true4.2.if.end8_crit_edge ], [ 3, %land.lhs.true4.3.if.end8_crit_edge ], [ 4, %land.lhs.true4.4.if.end8_crit_edge ], [ 5, %land.lhs.true4.5.if.end8_crit_edge ]
  %50 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %param, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %1, align 4
  %stream9 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.089.lcssa, i32 1
  %52 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stream9, align 4
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %53, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %h_addressable, align 8
  %conv = trunc i32 %55 to i16
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv, ptr %0, align 2
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %53, i32 0, i32 5, i32 8
  %57 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %v_addressable, align 8
  %conv12 = trunc i32 %58 to i16
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv12, ptr %2, align 2
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %3, align 4
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %5, align 4
  %62 = load ptr, ptr %stream9, align 4
  %h_addressable15 = getelementptr inbounds %struct.dc_stream_state, ptr %62, i32 0, i32 5, i32 2
  %63 = ptrtoint ptr %h_addressable15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %h_addressable15, align 8
  %conv16 = trunc i32 %64 to i16
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv16, ptr %4, align 2
  %66 = load ptr, ptr %stream9, align 4
  %v_addressable19 = getelementptr inbounds %struct.dc_stream_state, ptr %66, i32 0, i32 5, i32 8
  %67 = ptrtoint ptr %v_addressable19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %v_addressable19, align 8
  %conv20 = trunc i32 %68 to i16
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv20, ptr %6, align 2
  %tobool21.not = icmp eq ptr %crc_window, null
  br i1 %tobool21.not, label %if.end8.if.end39_crit_edge, label %if.then22

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %crc_window to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %crc_window, align 4
  %72 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %param, align 4
  %windowa_y_start25 = getelementptr inbounds %struct.crc_params, ptr %crc_window, i32 0, i32 2
  %73 = ptrtoint ptr %windowa_y_start25 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %windowa_y_start25, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %1, align 4
  %windowa_x_end27 = getelementptr inbounds %struct.crc_params, ptr %crc_window, i32 0, i32 1
  %76 = ptrtoint ptr %windowa_x_end27 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %windowa_x_end27, align 2
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %0, align 2
  %windowa_y_end29 = getelementptr inbounds %struct.crc_params, ptr %crc_window, i32 0, i32 3
  %79 = ptrtoint ptr %windowa_y_end29 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %windowa_y_end29, align 2
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %2, align 2
  %windowb_x_start31 = getelementptr inbounds %struct.crc_params, ptr %crc_window, i32 0, i32 4
  %82 = ptrtoint ptr %windowb_x_start31 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %windowb_x_start31, align 4
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %3, align 4
  %windowb_y_start33 = getelementptr inbounds %struct.crc_params, ptr %crc_window, i32 0, i32 6
  %85 = ptrtoint ptr %windowb_y_start33 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %windowb_y_start33, align 4
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %5, align 4
  %windowb_x_end35 = getelementptr inbounds %struct.crc_params, ptr %crc_window, i32 0, i32 5
  %88 = ptrtoint ptr %windowb_x_end35 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %windowb_x_end35, align 2
  %90 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %4, align 2
  %windowb_y_end37 = getelementptr inbounds %struct.crc_params, ptr %crc_window, i32 0, i32 7
  %91 = ptrtoint ptr %windowb_y_end37 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %windowb_y_end37, align 2
  %93 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %6, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then22, %if.end8.if.end39_crit_edge
  %94 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %stream9, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %95, i32 0, i32 5, i32 21
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load = load i32, ptr %flags, align 4
  %97 = lshr i32 %bf.load, 13
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %8, align 4
  %next_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.089.lcssa, i32 11
  %101 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %next_odm_pipe, align 4
  %tobool44.not = icmp ne ptr %102, null
  %conv46 = zext i1 %tobool44.not to i8
  %103 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv46, ptr %9, align 1
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %7, align 4
  %105 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %frombool1, ptr %10, align 2
  %106 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %frombool, ptr %11, align 1
  %tg52 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.089.lcssa, i32 3, i32 2
  %107 = ptrtoint ptr %tg52 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tg52, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %configure_crc = getelementptr inbounds %struct.timing_generator_funcs, ptr %110, i32 0, i32 53
  %111 = ptrtoint ptr %configure_crc to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %configure_crc, align 4
  %tobool53.not = icmp eq ptr %112, null
  br i1 %tobool53.not, label %do.end, label %if.then54

if.then54:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %call = call zeroext i1 %112(ptr noundef %108, ptr noundef nonnull %param) #16
  br label %cleanup

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then54, %land.lhs.true4.5.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then54 ], [ false, %do.end ], [ false, %land.lhs.true4.5.cleanup_crit_edge ], [ false, %land.lhs.true.5.cleanup_crit_edge ], [ false, %for.inc.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %param) #16
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_get_crc(ptr nocapture noundef readonly %dc, ptr noundef readnone %stream, ptr noundef %r_cr, ptr noundef %g_y, ptr noundef %b_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4
  %stream1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %cmp2 = icmp eq ptr %3, %stream
  br i1 %cmp2, label %entry.if.end5_crit_edge, label %for.inc

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

for.inc:                                          ; preds = %entry
  %stream1.1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %stream1.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream1.1, align 4
  %cmp2.1 = icmp eq ptr %5, %stream
  br i1 %cmp2.1, label %for.inc.if.end5_crit_edge, label %for.inc.1

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  %stream1.2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %stream1.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1.2, align 4
  %cmp2.2 = icmp eq ptr %7, %stream
  br i1 %cmp2.2, label %for.inc.1.if.end5_crit_edge, label %for.inc.2

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

for.inc.2:                                        ; preds = %for.inc.1
  %stream1.3 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %stream1.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream1.3, align 4
  %cmp2.3 = icmp eq ptr %9, %stream
  br i1 %cmp2.3, label %for.inc.2.if.end5_crit_edge, label %for.inc.3

for.inc.2.if.end5_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

for.inc.3:                                        ; preds = %for.inc.2
  %stream1.4 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %stream1.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream1.4, align 4
  %cmp2.4 = icmp eq ptr %11, %stream
  br i1 %cmp2.4, label %for.inc.3.if.end5_crit_edge, label %for.inc.4

for.inc.3.if.end5_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

for.inc.4:                                        ; preds = %for.inc.3
  %stream1.5 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %stream1.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream1.5, align 4
  %cmp2.5 = icmp eq ptr %13, %stream
  br i1 %cmp2.5, label %for.inc.4.if.end5_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.4.if.end5_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %for.inc.4.if.end5_crit_edge, %for.inc.3.if.end5_crit_edge, %for.inc.2.if.end5_crit_edge, %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %i.025.lcssa = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 1, %for.inc.if.end5_crit_edge ], [ 2, %for.inc.1.if.end5_crit_edge ], [ 3, %for.inc.2.if.end5_crit_edge ], [ 4, %for.inc.3.if.end5_crit_edge ], [ 5, %for.inc.4.if.end5_crit_edge ]
  %tg6 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.025.lcssa, i32 3, i32 2
  %14 = ptrtoint ptr %tg6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg6, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %get_crc = getelementptr inbounds %struct.timing_generator_funcs, ptr %17, i32 0, i32 54
  %18 = ptrtoint ptr %get_crc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_crc, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call zeroext i1 %19(ptr noundef %15, ptr noundef %r_cr, ptr noundef %g_y, ptr noundef %b_cb) #16
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then7, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then7 ], [ false, %do.end ], [ false, %for.inc.4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stream_set_dyn_expansion(ptr nocapture noundef readonly %dc, ptr noundef readonly %stream, i32 noundef %option) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 16
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %stream2 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream2, align 4
  %cmp3 = icmp eq ptr %3, %stream
  br i1 %cmp3, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %stream_res = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %stream_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_res, align 8
  %dyn_expansion = getelementptr inbounds %struct.output_pixel_processor, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dyn_expansion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %option, ptr %dyn_expansion, align 4
  %7 = load ptr, ptr %stream_res, align 8
  %funcs = getelementptr inbounds %struct.output_pixel_processor, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 8
  %opp_set_dyn_expansion = getelementptr inbounds %struct.opp_funcs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %opp_set_dyn_expansion to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_set_dyn_expansion, align 4
  %12 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %display_color_depth, align 8
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal, align 4
  tail call void %11(ptr noundef %7, i32 noundef 5, i32 noundef %13, i32 noundef %15) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %16 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_state, align 4
  %stream2.1 = getelementptr %struct.dc_state, ptr %17, i32 0, i32 4, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %stream2.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream2.1, align 4
  %cmp3.1 = icmp eq ptr %19, %stream
  br i1 %cmp3.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %stream_res.1 = getelementptr %struct.dc_state, ptr %17, i32 0, i32 4, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %stream_res.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream_res.1, align 8
  %dyn_expansion.1 = getelementptr inbounds %struct.output_pixel_processor, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %dyn_expansion.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %option, ptr %dyn_expansion.1, align 4
  %23 = load ptr, ptr %stream_res.1, align 8
  %funcs.1 = getelementptr inbounds %struct.output_pixel_processor, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %funcs.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs.1, align 8
  %opp_set_dyn_expansion.1 = getelementptr inbounds %struct.opp_funcs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %opp_set_dyn_expansion.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %opp_set_dyn_expansion.1, align 4
  %28 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %display_color_depth, align 8
  %30 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %signal, align 4
  tail call void %27(ptr noundef %23, i32 noundef 5, i32 noundef %29, i32 noundef %31) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %32 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %current_state, align 4
  %stream2.2 = getelementptr %struct.dc_state, ptr %33, i32 0, i32 4, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %stream2.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream2.2, align 4
  %cmp3.2 = icmp eq ptr %35, %stream
  br i1 %cmp3.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %stream_res.2 = getelementptr %struct.dc_state, ptr %33, i32 0, i32 4, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %stream_res.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stream_res.2, align 8
  %dyn_expansion.2 = getelementptr inbounds %struct.output_pixel_processor, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %dyn_expansion.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %option, ptr %dyn_expansion.2, align 4
  %39 = load ptr, ptr %stream_res.2, align 8
  %funcs.2 = getelementptr inbounds %struct.output_pixel_processor, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %funcs.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.2, align 8
  %opp_set_dyn_expansion.2 = getelementptr inbounds %struct.opp_funcs, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %opp_set_dyn_expansion.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %opp_set_dyn_expansion.2, align 4
  %44 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %display_color_depth, align 8
  %46 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %signal, align 4
  tail call void %43(ptr noundef %39, i32 noundef 5, i32 noundef %45, i32 noundef %47) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %48 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %current_state, align 4
  %stream2.3 = getelementptr %struct.dc_state, ptr %49, i32 0, i32 4, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %stream2.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stream2.3, align 4
  %cmp3.3 = icmp eq ptr %51, %stream
  br i1 %cmp3.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %stream_res.3 = getelementptr %struct.dc_state, ptr %49, i32 0, i32 4, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %stream_res.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stream_res.3, align 8
  %dyn_expansion.3 = getelementptr inbounds %struct.output_pixel_processor, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %dyn_expansion.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %option, ptr %dyn_expansion.3, align 4
  %55 = load ptr, ptr %stream_res.3, align 8
  %funcs.3 = getelementptr inbounds %struct.output_pixel_processor, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %funcs.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %funcs.3, align 8
  %opp_set_dyn_expansion.3 = getelementptr inbounds %struct.opp_funcs, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %opp_set_dyn_expansion.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %opp_set_dyn_expansion.3, align 4
  %60 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %display_color_depth, align 8
  %62 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %signal, align 4
  tail call void %59(ptr noundef %55, i32 noundef 5, i32 noundef %61, i32 noundef %63) #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %64 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %current_state, align 4
  %stream2.4 = getelementptr %struct.dc_state, ptr %65, i32 0, i32 4, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %stream2.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %stream2.4, align 4
  %cmp3.4 = icmp eq ptr %67, %stream
  br i1 %cmp3.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %stream_res.4 = getelementptr %struct.dc_state, ptr %65, i32 0, i32 4, i32 0, i32 4, i32 3
  %68 = ptrtoint ptr %stream_res.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %stream_res.4, align 8
  %dyn_expansion.4 = getelementptr inbounds %struct.output_pixel_processor, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %dyn_expansion.4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %option, ptr %dyn_expansion.4, align 4
  %71 = load ptr, ptr %stream_res.4, align 8
  %funcs.4 = getelementptr inbounds %struct.output_pixel_processor, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %funcs.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %funcs.4, align 8
  %opp_set_dyn_expansion.4 = getelementptr inbounds %struct.opp_funcs, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %opp_set_dyn_expansion.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %opp_set_dyn_expansion.4, align 4
  %76 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %display_color_depth, align 8
  %78 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %signal, align 4
  tail call void %75(ptr noundef %71, i32 noundef 5, i32 noundef %77, i32 noundef %79) #16
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %80 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %current_state, align 4
  %stream2.5 = getelementptr %struct.dc_state, ptr %81, i32 0, i32 4, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %stream2.5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stream2.5, align 4
  %cmp3.5 = icmp eq ptr %83, %stream
  br i1 %cmp3.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %stream_res.5 = getelementptr %struct.dc_state, ptr %81, i32 0, i32 4, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %stream_res.5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stream_res.5, align 8
  %dyn_expansion.5 = getelementptr inbounds %struct.output_pixel_processor, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %dyn_expansion.5 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %option, ptr %dyn_expansion.5, align 4
  %87 = load ptr, ptr %stream_res.5, align 8
  %funcs.5 = getelementptr inbounds %struct.output_pixel_processor, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %funcs.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %funcs.5, align 8
  %opp_set_dyn_expansion.5 = getelementptr inbounds %struct.opp_funcs, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %opp_set_dyn_expansion.5 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %opp_set_dyn_expansion.5, align 4
  %92 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %display_color_depth, align 8
  %94 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %signal, align 4
  tail call void %91(ptr noundef %87, i32 noundef 5, i32 noundef %93, i32 noundef %95) #16
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stream_set_dither_option(ptr noundef %stream, i32 noundef %option) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.bit_depth_reduction_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #16
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link1, align 4
  %dc = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4
  %stream2 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream2, align 4
  %cmp3 = icmp eq ptr %7, %stream
  br i1 %cmp3, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %entry
  %stream2.1 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %stream2.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream2.1, align 4
  %cmp3.1 = icmp eq ptr %9, %stream
  br i1 %cmp3.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %stream2.2 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %stream2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream2.2, align 4
  %cmp3.2 = icmp eq ptr %11, %stream
  br i1 %cmp3.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %stream2.3 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %stream2.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream2.3, align 4
  %cmp3.3 = icmp eq ptr %13, %stream
  br i1 %cmp3.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %stream2.4 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %stream2.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream2.4, align 4
  %cmp3.4 = icmp eq ptr %15, %stream
  br i1 %cmp3.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %stream2.5 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %stream2.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream2.5, align 4
  %cmp3.5 = icmp eq ptr %17, %stream
  br i1 %cmp3.5, label %for.inc.4.for.end_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.057.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.057.lcssa
  %tobool.not = icmp eq ptr %arrayidx, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %option)
  %cmp11 = icmp ugt i32 %option, 23
  %or.cond = or i1 %cmp11, %tobool.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %for.end
  %dither_option = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 21
  %18 = ptrtoint ptr %dither_option to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %option, ptr %dither_option, align 8
  %19 = call ptr @memset(ptr %params, i32 0, i32 20)
  call void @resource_build_bit_depth_reduction_params(ptr noundef %stream, ptr noundef nonnull %params) #16
  %bit_depth_params = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 33
  %20 = call ptr @memcpy(ptr %bit_depth_params, ptr %params, i32 20)
  %xfm = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.057.lcssa, i32 2, i32 4
  %21 = ptrtoint ptr %xfm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfm, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %if.end13.if.end27_crit_edge, label %land.lhs.true

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end13
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %transform_set_pixel_storage_depth = getelementptr inbounds %struct.transform_funcs, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %transform_set_pixel_storage_depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transform_set_pixel_storage_depth, align 4
  %tobool17.not = icmp eq ptr %26, null
  br i1 %tobool17.not, label %land.lhs.true.if.end27_crit_edge, label %if.then18

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %depth = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.057.lcssa, i32 2, i32 0, i32 10, i32 4
  %27 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %depth, align 4
  call void %26(ptr noundef nonnull %22, i32 noundef %28, ptr noundef %bit_depth_params) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %land.lhs.true.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %stream_res = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.057.lcssa, i32 3
  %29 = ptrtoint ptr %stream_res to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream_res, align 8
  %funcs28 = getelementptr inbounds %struct.output_pixel_processor, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs28, align 8
  %opp_program_bit_depth_reduction = getelementptr inbounds %struct.opp_funcs, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %opp_program_bit_depth_reduction to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %opp_program_bit_depth_reduction, align 4
  call void %34(ptr noundef %30, ptr noundef nonnull %params) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %for.end.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_build_bit_depth_reduction_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_set_gamut_remap(ptr nocapture noundef readonly %dc, ptr noundef readnone %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %program_gamut_remap = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 51
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %stream1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %cmp2 = icmp eq ptr %3, %stream
  br i1 %cmp2, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %program_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %program_gamut_remap, align 4
  tail call void %5(ptr noundef %res_ctx) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %6 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_state, align 4
  %stream1.1 = getelementptr %struct.dc_state, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %stream1.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream1.1, align 4
  %cmp2.1 = icmp eq ptr %9, %stream
  br i1 %cmp2.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %7, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %program_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %program_gamut_remap, align 4
  tail call void %11(ptr noundef %arrayidx.1) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %ret.1.off0.1 = phi i1 [ true, %if.then.1 ], [ %cmp2, %for.inc.for.inc.1_crit_edge ]
  %12 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_state, align 4
  %stream1.2 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %stream1.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream1.2, align 4
  %cmp2.2 = icmp eq ptr %15, %stream
  br i1 %cmp2.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %program_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %program_gamut_remap, align 4
  tail call void %17(ptr noundef %arrayidx.2) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %ret.1.off0.2 = phi i1 [ true, %if.then.2 ], [ %ret.1.off0.1, %for.inc.1.for.inc.2_crit_edge ]
  %18 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %current_state, align 4
  %stream1.3 = getelementptr %struct.dc_state, ptr %19, i32 0, i32 4, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %stream1.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream1.3, align 4
  %cmp2.3 = icmp eq ptr %21, %stream
  br i1 %cmp2.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %19, i32 0, i32 4, i32 0, i32 3
  %22 = ptrtoint ptr %program_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %program_gamut_remap, align 4
  tail call void %23(ptr noundef %arrayidx.3) #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %ret.1.off0.3 = phi i1 [ true, %if.then.3 ], [ %ret.1.off0.2, %for.inc.2.for.inc.3_crit_edge ]
  %24 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_state, align 4
  %stream1.4 = getelementptr %struct.dc_state, ptr %25, i32 0, i32 4, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %stream1.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream1.4, align 4
  %cmp2.4 = icmp eq ptr %27, %stream
  br i1 %cmp2.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %25, i32 0, i32 4, i32 0, i32 4
  %28 = ptrtoint ptr %program_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %program_gamut_remap, align 4
  tail call void %29(ptr noundef %arrayidx.4) #16
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %ret.1.off0.4 = phi i1 [ true, %if.then.4 ], [ %ret.1.off0.3, %for.inc.3.for.inc.4_crit_edge ]
  %30 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %current_state, align 4
  %stream1.5 = getelementptr %struct.dc_state, ptr %31, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream1.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream1.5, align 4
  %cmp2.5 = icmp eq ptr %33, %stream
  br i1 %cmp2.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %31, i32 0, i32 4, i32 0, i32 5
  %34 = ptrtoint ptr %program_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %program_gamut_remap, align 4
  tail call void %35(ptr noundef %arrayidx.5) #16
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %ret.1.off0.5 = phi i1 [ true, %if.then.5 ], [ %ret.1.off0.4, %for.inc.4.for.inc.5_crit_edge ]
  ret i1 %ret.1.off0.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_program_csc_matrix(ptr noundef %dc, ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %program_output_csc = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 52
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 20
  %csc_color_matrix = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 19
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %stream1 = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %cmp2 = icmp eq ptr %3, %stream
  br i1 %cmp2, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %program_output_csc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %program_output_csc, align 4
  %6 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_color_space, align 4
  %stream_res = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %stream_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream_res, align 8
  %inst = getelementptr inbounds %struct.output_pixel_processor, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst, align 4
  tail call void %5(ptr noundef %dc, ptr noundef %res_ctx, i32 noundef %7, ptr noundef %csc_color_matrix, i32 noundef %11) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %12 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_state, align 4
  %stream1.1 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %stream1.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream1.1, align 4
  %cmp2.1 = icmp eq ptr %15, %stream
  br i1 %cmp2.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %program_output_csc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %program_output_csc, align 4
  %18 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output_color_space, align 4
  %stream_res.1 = getelementptr %struct.dc_state, ptr %13, i32 0, i32 4, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %stream_res.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream_res.1, align 8
  %inst.1 = getelementptr inbounds %struct.output_pixel_processor, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %inst.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inst.1, align 4
  tail call void %17(ptr noundef %dc, ptr noundef %arrayidx.1, i32 noundef %19, ptr noundef %csc_color_matrix, i32 noundef %23) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %ret.1.off0.1 = phi i1 [ true, %if.then.1 ], [ %cmp2, %for.inc.for.inc.1_crit_edge ]
  %24 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_state, align 4
  %stream1.2 = getelementptr %struct.dc_state, ptr %25, i32 0, i32 4, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %stream1.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream1.2, align 4
  %cmp2.2 = icmp eq ptr %27, %stream
  br i1 %cmp2.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %25, i32 0, i32 4, i32 0, i32 2
  %28 = ptrtoint ptr %program_output_csc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %program_output_csc, align 4
  %30 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %output_color_space, align 4
  %stream_res.2 = getelementptr %struct.dc_state, ptr %25, i32 0, i32 4, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %stream_res.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream_res.2, align 8
  %inst.2 = getelementptr inbounds %struct.output_pixel_processor, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %inst.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inst.2, align 4
  tail call void %29(ptr noundef %dc, ptr noundef %arrayidx.2, i32 noundef %31, ptr noundef %csc_color_matrix, i32 noundef %35) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %ret.1.off0.2 = phi i1 [ true, %if.then.2 ], [ %ret.1.off0.1, %for.inc.1.for.inc.2_crit_edge ]
  %36 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %current_state, align 4
  %stream1.3 = getelementptr %struct.dc_state, ptr %37, i32 0, i32 4, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %stream1.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stream1.3, align 4
  %cmp2.3 = icmp eq ptr %39, %stream
  br i1 %cmp2.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %37, i32 0, i32 4, i32 0, i32 3
  %40 = ptrtoint ptr %program_output_csc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %program_output_csc, align 4
  %42 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %output_color_space, align 4
  %stream_res.3 = getelementptr %struct.dc_state, ptr %37, i32 0, i32 4, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %stream_res.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream_res.3, align 8
  %inst.3 = getelementptr inbounds %struct.output_pixel_processor, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %inst.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inst.3, align 4
  tail call void %41(ptr noundef %dc, ptr noundef %arrayidx.3, i32 noundef %43, ptr noundef %csc_color_matrix, i32 noundef %47) #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %ret.1.off0.3 = phi i1 [ true, %if.then.3 ], [ %ret.1.off0.2, %for.inc.2.for.inc.3_crit_edge ]
  %48 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %current_state, align 4
  %stream1.4 = getelementptr %struct.dc_state, ptr %49, i32 0, i32 4, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %stream1.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stream1.4, align 4
  %cmp2.4 = icmp eq ptr %51, %stream
  br i1 %cmp2.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %49, i32 0, i32 4, i32 0, i32 4
  %52 = ptrtoint ptr %program_output_csc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %program_output_csc, align 4
  %54 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %output_color_space, align 4
  %stream_res.4 = getelementptr %struct.dc_state, ptr %49, i32 0, i32 4, i32 0, i32 4, i32 3
  %56 = ptrtoint ptr %stream_res.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stream_res.4, align 8
  %inst.4 = getelementptr inbounds %struct.output_pixel_processor, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %inst.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %inst.4, align 4
  tail call void %53(ptr noundef %dc, ptr noundef %arrayidx.4, i32 noundef %55, ptr noundef %csc_color_matrix, i32 noundef %59) #16
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %ret.1.off0.4 = phi i1 [ true, %if.then.4 ], [ %ret.1.off0.3, %for.inc.3.for.inc.4_crit_edge ]
  %60 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %current_state, align 4
  %stream1.5 = getelementptr %struct.dc_state, ptr %61, i32 0, i32 4, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %stream1.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stream1.5, align 4
  %cmp2.5 = icmp eq ptr %63, %stream
  br i1 %cmp2.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %61, i32 0, i32 4, i32 0, i32 5
  %64 = ptrtoint ptr %program_output_csc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %program_output_csc, align 4
  %66 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %output_color_space, align 4
  %stream_res.5 = getelementptr %struct.dc_state, ptr %61, i32 0, i32 4, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %stream_res.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %stream_res.5, align 8
  %inst.5 = getelementptr inbounds %struct.output_pixel_processor, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %inst.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %inst.5, align 4
  tail call void %65(ptr noundef %dc, ptr noundef %arrayidx.5, i32 noundef %67, ptr noundef %csc_color_matrix, i32 noundef %71) #16
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %ret.1.off0.5 = phi i1 [ true, %if.then.5 ], [ %ret.1.off0.4, %for.inc.4.for.inc.5_crit_edge ]
  ret i1 %ret.1.off0.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stream_set_static_screen_params(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %streams, i32 noundef %num_streams, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  %pipes_affected = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pipes_affected) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_streams)
  %cmp27 = icmp sgt i32 %num_streams, 0
  %0 = call ptr @memset(ptr %pipes_affected, i32 255, i32 24)
  br i1 %cmp27, label %for.body.lr.ph, label %entry.for.end15_crit_edge

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %1 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %2, i32 0, i32 4
  %stream5 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 0, i32 1
  %stream5.1 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1
  %arrayidx4.1 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 1
  %stream5.2 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 2, i32 1
  %arrayidx4.2 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 2
  %stream5.3 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 3, i32 1
  %arrayidx4.3 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 3
  %stream5.4 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 4, i32 1
  %arrayidx4.4 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 4
  %stream5.5 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 5, i32 1
  %arrayidx4.5 = getelementptr %struct.dc_state, ptr %2, i32 0, i32 4, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.5.for.body_crit_edge, %for.body.lr.ph
  %num_pipes_affected.029 = phi i32 [ 0, %for.body.lr.ph ], [ %num_pipes_affected.2.5, %for.inc.5.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc.5.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %streams, i32 %i.028
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %stream5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream5, align 4
  %cmp6 = icmp eq ptr %6, %4
  br i1 %cmp6, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %num_pipes_affected.029, 1
  %arrayidx11 = getelementptr [6 x ptr], ptr %pipes_affected, i32 0, i32 %num_pipes_affected.029
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %res_ctx, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %num_pipes_affected.2 = phi i32 [ %inc, %if.then ], [ %num_pipes_affected.029, %for.body.for.inc_crit_edge ]
  %8 = ptrtoint ptr %stream5.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream5.1, align 4
  %cmp6.1 = icmp eq ptr %9, %4
  br i1 %cmp6.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %inc.1 = add i32 %num_pipes_affected.2, 1
  %arrayidx11.1 = getelementptr [6 x ptr], ptr %pipes_affected, i32 0, i32 %num_pipes_affected.2
  %10 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx4.1, ptr %arrayidx11.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %num_pipes_affected.2.1 = phi i32 [ %inc.1, %if.then.1 ], [ %num_pipes_affected.2, %for.inc.for.inc.1_crit_edge ]
  %11 = ptrtoint ptr %stream5.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream5.2, align 4
  %cmp6.2 = icmp eq ptr %12, %4
  br i1 %cmp6.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %inc.2 = add i32 %num_pipes_affected.2.1, 1
  %arrayidx11.2 = getelementptr [6 x ptr], ptr %pipes_affected, i32 0, i32 %num_pipes_affected.2.1
  %13 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx4.2, ptr %arrayidx11.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %num_pipes_affected.2.2 = phi i32 [ %inc.2, %if.then.2 ], [ %num_pipes_affected.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %14 = ptrtoint ptr %stream5.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream5.3, align 4
  %cmp6.3 = icmp eq ptr %15, %4
  br i1 %cmp6.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %inc.3 = add i32 %num_pipes_affected.2.2, 1
  %arrayidx11.3 = getelementptr [6 x ptr], ptr %pipes_affected, i32 0, i32 %num_pipes_affected.2.2
  %16 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx4.3, ptr %arrayidx11.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %num_pipes_affected.2.3 = phi i32 [ %inc.3, %if.then.3 ], [ %num_pipes_affected.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %17 = ptrtoint ptr %stream5.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream5.4, align 4
  %cmp6.4 = icmp eq ptr %18, %4
  br i1 %cmp6.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %inc.4 = add i32 %num_pipes_affected.2.3, 1
  %arrayidx11.4 = getelementptr [6 x ptr], ptr %pipes_affected, i32 0, i32 %num_pipes_affected.2.3
  %19 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx4.4, ptr %arrayidx11.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %num_pipes_affected.2.4 = phi i32 [ %inc.4, %if.then.4 ], [ %num_pipes_affected.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %20 = ptrtoint ptr %stream5.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream5.5, align 4
  %cmp6.5 = icmp eq ptr %21, %4
  br i1 %cmp6.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %inc.5 = add i32 %num_pipes_affected.2.4, 1
  %arrayidx11.5 = getelementptr [6 x ptr], ptr %pipes_affected, i32 0, i32 %num_pipes_affected.2.4
  %22 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx4.5, ptr %arrayidx11.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %num_pipes_affected.2.5 = phi i32 [ %inc.5, %if.then.5 ], [ %num_pipes_affected.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %inc14 = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc14, %num_streams
  br i1 %exitcond.not, label %for.inc.5.for.end15_crit_edge, label %for.inc.5.for.body_crit_edge

for.inc.5.for.body_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.5.for.end15_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end15

for.end15:                                        ; preds = %for.inc.5.for.end15_crit_edge, %entry.for.end15_crit_edge
  %num_pipes_affected.0.lcssa = phi i32 [ 0, %entry.for.end15_crit_edge ], [ %num_pipes_affected.2.5, %for.inc.5.for.end15_crit_edge ]
  %set_static_screen_control = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 33
  %23 = ptrtoint ptr %set_static_screen_control to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_static_screen_control, align 4
  call void %24(ptr noundef nonnull %pipes_affected, i32 noundef %num_pipes_affected.0.lcssa, ptr noundef %params) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pipes_affected) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_create(ptr noundef %init_params) local_unnamed_addr #0 align 64 {
entry:
  %bp_init_data.i = alloca %struct.bp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1384) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dce_environment = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 6
  %1 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc zeroext i1 @dc_construct_ctx(ptr noundef nonnull %call7.i.i, ptr noundef %init_params)
  br i1 %call2, label %if.then1.if.end29_crit_edge, label %if.then1.destruct_dc_crit_edge

if.then1.destruct_dc_crit_edge:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %destruct_dc

if.then1.if.end29_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.else:                                          ; preds = %if.end
  %config.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 9
  %3 = call ptr @memcpy(ptr %config.i, ptr %flags.i, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 52) #20
  %vm_helper.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 25
  %5 = ptrtoint ptr %vm_helper.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %vm_helper.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dc_construct) #16
  br label %destruct_dc

if.end.i:                                         ; preds = %if.else
  %bb_overrides.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 5
  %bb_overrides2.i = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %bb_overrides.i, ptr %bb_overrides2.i, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i171.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 360) #20
  %tobool4.not.i = icmp eq ptr %call7.i.i171.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dc_construct) #16
  br label %destruct_dc

if.end6.i:                                        ; preds = %if.end.i
  %bw_dceip.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %bw_dceip.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i171.i, ptr %bw_dceip.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i172.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 256) #20
  %tobool8.not.i = icmp eq ptr %call7.i.i172.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dc_construct) #16
  br label %destruct_dc

if.end10.i:                                       ; preds = %if.end6.i
  %bw_vbios.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i172.i, ptr %bw_vbios.i, align 8
  %call11.i = tail call fastcc zeroext i1 @dc_construct_ctx(ptr noundef nonnull %call7.i.i, ptr noundef %init_params) #16
  br i1 %call11.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dc_construct) #16
  br label %destruct_dc

if.end13.i:                                       ; preds = %if.end10.i
  %ctx.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 8
  %vbios_override.i = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 5
  %13 = ptrtoint ptr %vbios_override.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbios_override.i, align 4
  %tobool14.not.i = icmp eq ptr %14, null
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dc_bios.i, align 4
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bp_init_data.i) #16
  %16 = getelementptr inbounds %struct.bp_init_data, ptr %bp_init_data.i, i32 0, i32 1
  %17 = ptrtoint ptr %bp_init_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %bp_init_data.i, align 4
  %atombios_base_address.i = getelementptr inbounds %struct.hw_asic_id, ptr %init_params, i32 0, i32 8
  %18 = ptrtoint ptr %atombios_base_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %atombios_base_address.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %16, align 4
  %dce_version.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 6
  %21 = ptrtoint ptr %dce_version.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dce_version.i, align 8
  %call18.i = call ptr @dal_bios_parser_create(ptr noundef nonnull %bp_init_data.i, i32 noundef %22) #16
  %dc_bios19.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 7
  %23 = ptrtoint ptr %dc_bios19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call18.i, ptr %dc_bios19.i, align 4
  %tobool21.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool21.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %created_bios.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 8
  %24 = ptrtoint ptr %created_bios.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %created_bios.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bp_init_data.i) #16
  br label %if.end47.i

cleanup.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 955, i32 noundef 9, ptr noundef null) #16
  call void @kgdb_breakpoint() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bp_init_data.i) #16
  br label %destruct_dc

if.end47.i:                                       ; preds = %cleanup.thread.i, %if.then15.i
  %vendor_signature.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 23
  %vendor_signature48.i = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 11
  %25 = call ptr @memcpy(ptr %vendor_signature.i, ptr %vendor_signature48.i, i32 13)
  %dce_version49.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 6
  %26 = ptrtoint ptr %dce_version49.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dce_version49.i, align 8
  %dce_environment.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 4
  %28 = ptrtoint ptr %dce_environment.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dce_environment.i, align 8
  %call50.i = call ptr @dal_gpio_service_create(i32 noundef %27, i32 noundef %29, ptr noundef %12) #16
  %gpio_service.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 9
  %30 = ptrtoint ptr %gpio_service.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call50.i, ptr %gpio_service.i, align 4
  %tobool52.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool52.not.i, label %do.end67.i, label %if.end86.i

do.end67.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 971, i32 noundef 9, ptr noundef null) #16
  call void @kgdb_breakpoint() #16
  br label %destruct_dc

if.end86.i:                                       ; preds = %if.end47.i
  %31 = ptrtoint ptr %dce_version49.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dce_version49.i, align 8
  %call88.i = call ptr @dc_create_resource_pool(ptr noundef nonnull %call7.i.i, ptr noundef %init_params, i32 noundef %32) #16
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call88.i, ptr %res_pool.i, align 8
  %tobool90.not.i = icmp eq ptr %call88.i, null
  br i1 %tobool90.not.i, label %if.end86.i.destruct_dc_crit_edge, label %if.end92.i

if.end86.i.destruct_dc_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destruct_dc

if.end92.i:                                       ; preds = %if.end86.i
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2, i32 9
  %34 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i2c_speed_in_khz_hdcp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %if.then93.i, label %if.end92.i.if.end97.i_crit_edge

if.end92.i.if.end97.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97.i

if.then93.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #18
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2, i32 8
  %36 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i2c_speed_in_khz.i, align 4
  %38 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %i2c_speed_in_khz_hdcp.i, align 8
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then93.i, %if.end92.i.if.end97.i_crit_edge
  %39 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx.i, align 8
  %pp_smu.i = getelementptr inbounds %struct.resource_pool, ptr %call88.i, i32 0, i32 10
  %41 = ptrtoint ptr %pp_smu.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pp_smu.i, align 4
  %dccg.i = getelementptr inbounds %struct.resource_pool, ptr %call88.i, i32 0, i32 35
  %43 = ptrtoint ptr %dccg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dccg.i, align 4
  %call101.i = call ptr @dc_clk_mgr_create(ptr noundef %40, ptr noundef %42, ptr noundef %44) #16
  %clk_mgr.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 13
  %45 = ptrtoint ptr %clk_mgr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call101.i, ptr %clk_mgr.i, align 4
  %tobool103.not.i = icmp eq ptr %call101.i, null
  br i1 %tobool103.not.i, label %if.end97.i.destruct_dc_crit_edge, label %if.end105.i

if.end97.i.destruct_dc_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destruct_dc

if.end105.i:                                      ; preds = %if.end97.i
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 67552, i32 noundef 3520, i32 noundef -1) #21
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then109.i, label %if.end110.i

if.then109.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #18
  %current_state175.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 11
  %46 = ptrtoint ptr %current_state175.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %current_state175.i, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dc_construct) #16
  br label %destruct_dc

if.end110.i:                                      ; preds = %if.end105.i
  %refcount.i.i = getelementptr inbounds %struct.dc_state, ptr %call.i.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  %47 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %refcount.i.i, align 4
  %current_state.i = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 11
  %48 = ptrtoint ptr %current_state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i.i.i, ptr %current_state.i, align 4
  %num_virtual_links.i = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 4
  %49 = ptrtoint ptr %num_virtual_links.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_virtual_links.i, align 8
  %call111.i = call fastcc zeroext i1 @create_links(ptr noundef nonnull %call7.i.i, i32 noundef %50) #16
  br i1 %call111.i, label %if.end113.i, label %if.end110.i.destruct_dc_crit_edge

if.end110.i.destruct_dc_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destruct_dc

if.end113.i:                                      ; preds = %if.end110.i
  %call114.i = call fastcc zeroext i1 @create_link_encoders(ptr noundef nonnull %call7.i.i) #16
  br i1 %call114.i, label %if.end7, label %if.end113.i.destruct_dc_crit_edge

if.end113.i.destruct_dc_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destruct_dc

if.end7:                                          ; preds = %if.end113.i
  %51 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %current_state.i, align 4
  call void @dc_resource_state_construct(ptr noundef nonnull %call7.i.i, ptr noundef %52) #16
  %53 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %res_pool.i, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %54, i32 0, i32 19
  %55 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pipe_count, align 4
  %underlay_pipe_index = getelementptr inbounds %struct.resource_pool, ptr %54, i32 0, i32 20
  %57 = ptrtoint ptr %underlay_pipe_index to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %underlay_pipe_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp9.not = icmp ne i32 %58, -1
  %dec = sext i1 %cmp9.not to i32
  %spec.select = add i32 %56, %dec
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %54, i32 0, i32 21
  %59 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stream_enc_count, align 4
  %61 = call i32 @llvm.umin.i32(i32 %spec.select, i32 %60)
  %caps = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %caps, align 4
  %link_count = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %link_count, align 8
  %conv = zext i8 %64 to i32
  %max_links = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %max_links to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv, ptr %max_links, align 8
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %54, i32 0, i32 33
  %66 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %audio_count, align 4
  %max_audios = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %max_audios to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %max_audios, align 4
  %linear_pitch_alignment = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2, i32 14
  %69 = ptrtoint ptr %linear_pitch_alignment to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 64, ptr %linear_pitch_alignment, align 4
  %max_dp_protocol_version = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2, i32 26
  %70 = ptrtoint ptr %max_dp_protocol_version to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %max_dp_protocol_version, align 8
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %54, i32 0, i32 41
  %71 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %res_cap, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %max_otg_num = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 2, i32 35
  %75 = ptrtoint ptr %max_otg_num to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %max_otg_num, align 8
  %dmcu = getelementptr inbounds %struct.resource_pool, ptr %54, i32 0, i32 38
  %76 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dmcu, align 4
  %cmp22.not = icmp eq ptr %77, null
  br i1 %cmp22.not, label %if.end7.if.end29_crit_edge, label %if.then24

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then24:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %dmcu_version = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %dmcu_version27 = getelementptr inbounds %struct.dmcu, ptr %77, i32 0, i32 3
  %78 = call ptr @memcpy(ptr %dmcu_version, ptr %dmcu_version27, i32 16)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end7.if.end29_crit_edge, %if.then1.if.end29_crit_edge
  %versions30 = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %versions30 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.4, ptr %versions30, align 8
  %build_id = getelementptr inbounds %struct.dc, ptr %call7.i.i, i32 0, i32 24
  %80 = ptrtoint ptr %build_id to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @DC_BUILD_ID, ptr %build_id, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #16
  br label %cleanup

destruct_dc:                                      ; preds = %if.end113.i.destruct_dc_crit_edge, %if.end110.i.destruct_dc_crit_edge, %if.then109.i, %if.end97.i.destruct_dc_crit_edge, %if.end86.i.destruct_dc_crit_edge, %do.end67.i, %cleanup.i, %if.then12.i, %if.then9.i, %if.then5.i, %if.then.i, %if.then1.destruct_dc_crit_edge
  call fastcc void @dc_destruct(ptr noundef nonnull %call7.i.i)
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %destruct_dc, %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end29 ], [ null, %destruct_dc ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dc_construct_ctx(ptr noundef %dc, ptr nocapture noundef readonly %init_params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %cgs_device = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 2
  %1 = ptrtoint ptr %cgs_device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cgs_device, align 8
  %cgs_device1 = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %cgs_device1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %cgs_device1, align 4
  %driver = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %driver_context to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %driver_context, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dc, ptr %call7.i.i, align 8
  %asic_id = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %asic_id, ptr %init_params, i32 36)
  %dc_sink_id_count = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %dc_sink_id_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dc_sink_id_count, align 8
  %dc_stream_id_count = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %dc_stream_id_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dc_stream_id_count, align 4
  %dce_environment = getelementptr inbounds %struct.dc_init_data, ptr %init_params, i32 0, i32 6
  %11 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dce_environment, align 8
  %dce_environment4 = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %dce_environment4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dce_environment4, align 8
  %14 = ptrtoint ptr %init_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %init_params, align 8
  %15 = insertvalue [9 x i32] undef, i32 %.unpack, 0
  %.elt53 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 1
  %16 = ptrtoint ptr %.elt53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack54 = load i32, ptr %.elt53, align 4
  %17 = insertvalue [9 x i32] %15, i32 %.unpack54, 1
  %.elt55 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 2
  %18 = ptrtoint ptr %.elt55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack56 = load i32, ptr %.elt55, align 8
  %19 = insertvalue [9 x i32] %17, i32 %.unpack56, 2
  %.elt57 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 3
  %20 = ptrtoint ptr %.elt57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack58 = load i32, ptr %.elt57, align 4
  %21 = insertvalue [9 x i32] %19, i32 %.unpack58, 3
  %.elt59 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 4
  %22 = ptrtoint ptr %.elt59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack60 = load i32, ptr %.elt59, align 8
  %23 = insertvalue [9 x i32] %21, i32 %.unpack60, 4
  %.elt61 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 5
  %24 = ptrtoint ptr %.elt61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack62 = load i32, ptr %.elt61, align 4
  %25 = insertvalue [9 x i32] %23, i32 %.unpack62, 5
  %.elt63 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 6
  %26 = ptrtoint ptr %.elt63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack64 = load i32, ptr %.elt63, align 8
  %27 = insertvalue [9 x i32] %25, i32 %.unpack64, 6
  %.elt65 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 7
  %28 = ptrtoint ptr %.elt65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack66 = load i32, ptr %.elt65, align 4
  %29 = insertvalue [9 x i32] %27, i32 %.unpack66, 7
  %.elt67 = getelementptr inbounds [9 x i32], ptr %init_params, i32 0, i32 8
  %30 = ptrtoint ptr %.elt67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack68 = load i32, ptr %.elt67, align 8
  %31 = insertvalue [9 x i32] %29, i32 %.unpack68, 8
  %call6 = tail call i32 @resource_parse_asic_id([9 x i32] %31) #16
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %dce_version to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call6, ptr %dce_version, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 16) #20
  %perf_trace = getelementptr inbounds %struct.dc_context, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %perf_trace to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i, ptr %perf_trace, align 8
  %tobool9.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not, label %do.end, label %if.end34

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 868, i32 noundef 9, ptr noundef null) #16
  tail call void @kgdb_breakpoint() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %ctx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end34 ], [ false, %do.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dc_destruct(ptr noundef %dc) unnamed_addr #0 align 64 {
entry:
  %link_enc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_encs_assign, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %6 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_state, align 4
  tail call void @link_enc_cfg_init(ptr noundef %dc, ptr noundef %7) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %current_state3 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %8 = ptrtoint ptr %current_state3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_state3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dc_state, ptr %9, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #16, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dc_release_state.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !109

if.end5.i.i.i.i.i.dc_release_state.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dc_release_state.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #16
  br label %dc_release_state.exit

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !110
  tail call void @dc_resource_state_destruct(ptr noundef nonnull %9) #16
  tail call void @kvfree(ptr noundef nonnull %9) #16
  br label %dc_release_state.exit

dc_release_state.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dc_release_state.exit_crit_edge
  %11 = ptrtoint ptr %current_state3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %current_state3, align 4
  br label %if.end8

if.end8:                                          ; preds = %dc_release_state.exit, %if.end.if.end8_crit_edge
  %link_count.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %12 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp12.not.i = icmp eq i8 %13, 0
  br i1 %cmp12.not.i, label %if.end8.destroy_links.exit_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.destroy_links.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_links.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.013.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %15, null
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @link_destroy(ptr noundef %arrayidx.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %16 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link_count.i, align 8
  %conv.i = zext i8 %17 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.destroy_links.exit_crit_edge

for.inc.i.destroy_links.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_links.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

destroy_links.exit:                               ; preds = %for.inc.i.destroy_links.exit_crit_edge, %if.end8.destroy_links.exit_crit_edge
  %18 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res_pool, align 8
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %19, i32 0, i32 41
  %20 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res_cap.i, align 4
  %num_usb4_dpia1.i = getelementptr inbounds %struct.resource_caps, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %num_usb4_dpia1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_usb4_dpia1.i, align 4
  %num_dig_link_enc4.i = getelementptr inbounds %struct.resource_caps, ptr %21, i32 0, i32 10
  %24 = ptrtoint ptr %num_dig_link_enc4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_dig_link_enc4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i57 = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp522.i = icmp ne i32 %25, 0
  %or.cond.i = select i1 %cmp.i57, i1 %cmp522.i, i1 false
  br i1 %or.cond.i, label %destroy_links.exit.for.body.i59_crit_edge, label %destroy_links.exit.destroy_link_encoders.exit_crit_edge

destroy_links.exit.destroy_link_encoders.exit_crit_edge: ; preds = %destroy_links.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_link_encoders.exit

destroy_links.exit.for.body.i59_crit_edge:        ; preds = %destroy_links.exit
  br label %for.body.i59

for.body.i59:                                     ; preds = %if.end12.i.for.body.i59_crit_edge, %destroy_links.exit.for.body.i59_crit_edge
  %i.023.i = phi i32 [ %inc.i60, %if.end12.i.for.body.i59_crit_edge ], [ 0, %destroy_links.exit.for.body.i59_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_enc.i) #16
  %26 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %link_enc.i, align 4, !annotation !106
  %27 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res_pool, align 8
  %arrayidx.i58 = getelementptr %struct.resource_pool, ptr %28, i32 0, i32 22, i32 %i.023.i
  %29 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i58, align 4
  store ptr %30, ptr %link_enc.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %for.body.i59.if.end12.i_crit_edge, label %if.then7.i

for.body.i59.if.end12.i_crit_edge:                ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.then7.i:                                       ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %destroy.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %destroy.i, align 4
  call void %34(ptr noundef nonnull %link_enc.i) #16
  %35 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %res_pool, align 8
  %arrayidx10.i = getelementptr %struct.resource_pool, ptr %36, i32 0, i32 22, i32 %i.023.i
  %37 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx10.i, align 4
  %38 = load ptr, ptr %res_pool, align 8
  %dig_link_enc_count.i = getelementptr inbounds %struct.resource_pool, ptr %38, i32 0, i32 23
  %39 = ptrtoint ptr %dig_link_enc_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dig_link_enc_count.i, align 4
  %dec.i = add i32 %40, -1
  store i32 %dec.i, ptr %dig_link_enc_count.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %for.body.i59.if.end12.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_enc.i) #16
  %inc.i60 = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i60, %25
  br i1 %exitcond.not.i, label %if.end12.i.destroy_link_encoders.exit_crit_edge, label %if.end12.i.for.body.i59_crit_edge

if.end12.i.for.body.i59_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i59

if.end12.i.destroy_link_encoders.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_link_encoders.exit

destroy_link_encoders.exit:                       ; preds = %if.end12.i.destroy_link_encoders.exit_crit_edge, %destroy_links.exit.destroy_link_encoders.exit_crit_edge
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 13
  %41 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_mgr, align 4
  %tobool9.not = icmp eq ptr %42, null
  br i1 %tobool9.not, label %destroy_link_encoders.exit.if.end13_crit_edge, label %if.then10

destroy_link_encoders.exit.if.end13_crit_edge:    ; preds = %destroy_link_encoders.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then10:                                        ; preds = %destroy_link_encoders.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @dc_destroy_clk_mgr(ptr noundef nonnull %42) #16
  %43 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %clk_mgr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %destroy_link_encoders.exit.if.end13_crit_edge
  call void @dc_destroy_resource_pool(ptr noundef %dc) #16
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 8
  %gpio_service = getelementptr inbounds %struct.dc_context, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %gpio_service to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gpio_service, align 4
  %tobool14.not = icmp eq ptr %47, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  call void @dal_gpio_service_destroy(ptr noundef %gpio_service) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 8
  %created_bios = getelementptr inbounds %struct.dc_context, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %created_bios to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %created_bios, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool20.not = icmp eq i8 %51, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %49, i32 0, i32 7
  call void @dal_bios_parser_destroy(ptr noundef %dc_bios) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 8
  %perf_trace = getelementptr inbounds %struct.dc_context, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %perf_trace to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %perf_trace, align 4
  call void @kfree(ptr noundef %55) #16
  %56 = ptrtoint ptr %perf_trace to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %perf_trace, align 4
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx, align 8
  call void @kfree(ptr noundef %58) #16
  %59 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %ctx, align 8
  %bw_vbios = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  %60 = ptrtoint ptr %bw_vbios to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bw_vbios, align 8
  call void @kfree(ptr noundef %61) #16
  %62 = ptrtoint ptr %bw_vbios to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %bw_vbios, align 8
  %bw_dceip = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 15
  %63 = ptrtoint ptr %bw_dceip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bw_dceip, align 4
  call void @kfree(ptr noundef %64) #16
  %65 = ptrtoint ptr %bw_dceip to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %bw_dceip, align 4
  %vm_helper = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 25
  %66 = ptrtoint ptr %vm_helper to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vm_helper, align 8
  call void @kfree(ptr noundef %67) #16
  %68 = ptrtoint ptr %vm_helper to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %vm_helper, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_hardware_init(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %edp_links.i = alloca [2 x ptr], align 4
  %type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links.i) #16
  %0 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links.i, align 4, !annotation !106
  %1 = getelementptr inbounds [2 x ptr], ptr %edp_links.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #16
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %type.i, align 4, !annotation !106
  %link_count.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %4 = ptrtoint ptr %link_count.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp26.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp26.not.i.i, label %entry.detect_edp_presence.exit_crit_edge, label %for.body.i.preheader.i

entry.detect_edp_presence.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %detect_edp_presence.exit

for.body.i.preheader.i:                           ; preds = %entry
  %conv.i.i = zext i8 %5 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %edp_num.0.i = phi i32 [ %edp_num.1.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %i.027.i.i = phi i32 [ %inc15.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.027.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_signal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %cmp4.i.i = icmp eq i32 %9, 128
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %arrayidx9.i.i = getelementptr ptr, ptr %edp_links.i, i32 %edp_num.0.i
  %10 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %arrayidx9.i.i, align 4
  %inc.i.i = add i32 %edp_num.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp10.i.i = icmp eq i32 %inc.i.i, 2
  br i1 %cmp10.i.i, label %if.then6.i.i.for.body.lr.ph.i_crit_edge, label %if.then6.i.i.for.inc.i.i_crit_edge

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then6.i.i.for.body.lr.ph.i_crit_edge:          ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.lr.ph.i

for.inc.i.i:                                      ; preds = %if.then6.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %edp_num.1.i = phi i32 [ %edp_num.0.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then6.i.i.for.inc.i.i_crit_edge ], [ %edp_num.0.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %inc15.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i.i, %conv.i.i
  br i1 %exitcond.not.i, label %get_edp_links.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

get_edp_links.exit.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_num.1.i)
  %cmp20.i = icmp sgt i32 %edp_num.1.i, 0
  br i1 %cmp20.i, label %get_edp_links.exit.i.for.body.lr.ph.i_crit_edge, label %get_edp_links.exit.i.detect_edp_presence.exit_crit_edge

get_edp_links.exit.i.detect_edp_presence.exit_crit_edge: ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %detect_edp_presence.exit

get_edp_links.exit.i.for.body.lr.ph.i_crit_edge:  ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %get_edp_links.exit.i.for.body.lr.ph.i_crit_edge, %if.then6.i.i.for.body.lr.ph.i_crit_edge
  %edp_num.225.i = phi i32 [ %edp_num.1.i, %get_edp_links.exit.i.for.body.lr.ph.i_crit_edge ], [ 2, %if.then6.i.i.for.body.lr.ph.i_crit_edge ]
  %edp_not_connected.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %edp_links.i, i32 0, i32 %i.021.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %edp_not_connected.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %edp_not_connected.i, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.else.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call zeroext i1 @dc_link_detect_sink(ptr noundef %12, ptr noundef nonnull %type.i) #16
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3.i = icmp ne i32 %16, 0
  %frombool.i = zext i1 %cmp3.i to i8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %.sink.i = phi i8 [ %frombool.i, %if.else.i ], [ 0, %for.body.i.for.inc.i_crit_edge ]
  %17 = getelementptr inbounds %struct.dc_link, ptr %12, i32 0, i32 18
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink.i, ptr %17, align 4
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond22.not.i = icmp eq i32 %inc.i, %edp_num.225.i
  br i1 %exitcond22.not.i, label %for.inc.i.detect_edp_presence.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.detect_edp_presence.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %detect_edp_presence.exit

detect_edp_presence.exit:                         ; preds = %for.inc.i.detect_edp_presence.exit_crit_edge, %get_edp_links.exit.i.detect_edp_presence.exit_crit_edge, %entry.detect_edp_presence.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #16
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.not = icmp eq i32 %22, 3
  br i1 %cmp.not, label %detect_edp_presence.exit.if.end_crit_edge, label %if.then

detect_edp_presence.exit.if.end_crit_edge:        ; preds = %detect_edp_presence.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %detect_edp_presence.exit
  call void @__sanitizer_cov_trace_pc() #18
  %init_hw = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 4
  %23 = ptrtoint ptr %init_hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_hw, align 4
  call void %24(ptr noundef %dc) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %detect_edp_presence.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dc_init_callbacks(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %init_params) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %cp_psp = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %cp_psp, ptr %init_params, i32 12)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dc_deinit_callbacks(ptr nocapture noundef readonly %dc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %cp_psp = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 15
  %2 = call ptr @memset(ptr %cp_psp, i32 0, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_destroy(ptr nocapture noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 4
  tail call fastcc void @dc_destruct(ptr noundef %1)
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 4
  tail call void @kfree(ptr noundef %3) #16
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_validate_seamless_boot_timing(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %sink, ptr noundef %crtc_timing) local_unnamed_addr #0 align 64 {
entry:
  %hw_crtc_timing = alloca %struct.dc_crtc_timing, align 4
  %pix_clk_100hz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %hw_crtc_timing) #16
  %0 = call ptr @memset(ptr %hw_crtc_timing, i32 0, i32 128)
  %link1 = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 11
  %1 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %link1, align 4
  %3 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %4)
  %cmp.not = icmp eq i32 %4, 128
  br i1 %cmp.not, label %if.end, label %entry.cleanup138_crit_edge

entry.cleanup138_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end:                                           ; preds = %entry
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %2, i32 0, i32 38
  %5 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link_enc, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %is_dig_enabled = getelementptr inbounds %struct.link_encoder_funcs, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %is_dig_enabled to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %is_dig_enabled, align 4
  %call = tail call zeroext i1 %10(ptr noundef %6) #16
  br i1 %call, label %if.end4, label %if.end.cleanup138_crit_edge

if.end.cleanup138_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_enc, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %get_dig_frontend = getelementptr inbounds %struct.link_encoder_funcs, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %get_dig_frontend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_dig_frontend, align 4
  %call8 = tail call i32 %16(ptr noundef %12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.end4.cleanup138_crit_edge, label %for.cond.preheader

if.end4.cleanup138_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

for.cond.preheader:                               ; preds = %if.end4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %17 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %res_pool, align 8
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream_enc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp12199.not = icmp eq i32 %20, 0
  br i1 %cmp12199.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0200 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_pool, ptr %18, i32 0, i32 7, i32 %i.0200
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call8)
  %cmp14 = icmp eq i32 %24, %call8
  br i1 %cmp14, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %dig_source_otg = getelementptr inbounds %struct.stream_encoder_funcs, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %dig_source_otg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dig_source_otg, align 4
  %call26 = tail call i32 %28(ptr noundef %22) #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15, %for.cond.preheader.for.end_crit_edge
  %i.0197 = phi i32 [ %i.0200, %if.then15 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %20, %for.inc.for.end_crit_edge ]
  %se.0 = phi ptr [ %22, %if.then15 ], [ null, %for.cond.preheader.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %tg_inst.0 = phi i32 [ %call26, %if.then15 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %29 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %res_pool, align 8
  %stream_enc_count29 = getelementptr inbounds %struct.resource_pool, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %stream_enc_count29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream_enc_count29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0197, i32 %32)
  %cmp30 = icmp eq i32 %i.0197, %32
  br i1 %cmp30, label %for.end.cleanup138_crit_edge, label %if.end32

for.end.cleanup138_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end32:                                         ; preds = %for.end
  %timing_generator_count = getelementptr inbounds %struct.resource_pool, ptr %30, i32 0, i32 26
  %33 = ptrtoint ptr %timing_generator_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timing_generator_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tg_inst.0, i32 %34)
  %cmp34.not = icmp ult i32 %tg_inst.0, %34
  br i1 %cmp34.not, label %if.end36, label %if.end32.cleanup138_crit_edge

if.end32.cleanup138_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end36:                                         ; preds = %if.end32
  %arrayidx38 = getelementptr %struct.resource_pool, ptr %30, i32 0, i32 6, i32 %tg_inst.0
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx38, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %get_hw_timing = getelementptr inbounds %struct.timing_generator_funcs, ptr %38, i32 0, i32 57
  %39 = ptrtoint ptr %get_hw_timing to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_hw_timing, align 4
  %tobool.not = icmp eq ptr %40, null
  br i1 %tobool.not, label %if.end36.cleanup138_crit_edge, label %if.end41

if.end36.cleanup138_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end41:                                         ; preds = %if.end36
  %call44 = call zeroext i1 %40(ptr noundef %36, ptr noundef nonnull %hw_crtc_timing) #16
  br i1 %call44, label %if.end46, label %if.end41.cleanup138_crit_edge

if.end41.cleanup138_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end46:                                         ; preds = %if.end41
  %41 = ptrtoint ptr %crtc_timing to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %crtc_timing, align 4
  %43 = ptrtoint ptr %hw_crtc_timing to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_crtc_timing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp48.not = icmp eq i32 %42, %44
  br i1 %cmp48.not, label %if.end50, label %if.end46.cleanup138_crit_edge

if.end46.cleanup138_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end50:                                         ; preds = %if.end46
  %h_border_left = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 1
  %45 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %h_border_left, align 4
  %h_border_left51 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 1
  %47 = ptrtoint ptr %h_border_left51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %h_border_left51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp52.not = icmp eq i32 %46, %48
  br i1 %cmp52.not, label %if.end54, label %if.end50.cleanup138_crit_edge

if.end50.cleanup138_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end54:                                         ; preds = %if.end50
  %h_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 2
  %49 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %h_addressable, align 4
  %h_addressable55 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 2
  %51 = ptrtoint ptr %h_addressable55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %h_addressable55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp56.not = icmp eq i32 %50, %52
  br i1 %cmp56.not, label %if.end58, label %if.end54.cleanup138_crit_edge

if.end54.cleanup138_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end58:                                         ; preds = %if.end54
  %h_border_right = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 3
  %53 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %h_border_right, align 4
  %h_border_right59 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 3
  %55 = ptrtoint ptr %h_border_right59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %h_border_right59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp60.not = icmp eq i32 %54, %56
  br i1 %cmp60.not, label %if.end62, label %if.end58.cleanup138_crit_edge

if.end58.cleanup138_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end62:                                         ; preds = %if.end58
  %h_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 4
  %57 = ptrtoint ptr %h_front_porch to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %h_front_porch, align 4
  %h_front_porch63 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 4
  %59 = ptrtoint ptr %h_front_porch63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %h_front_porch63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp64.not = icmp eq i32 %58, %60
  br i1 %cmp64.not, label %if.end66, label %if.end62.cleanup138_crit_edge

if.end62.cleanup138_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end66:                                         ; preds = %if.end62
  %h_sync_width = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 5
  %61 = ptrtoint ptr %h_sync_width to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %h_sync_width, align 4
  %h_sync_width67 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 5
  %63 = ptrtoint ptr %h_sync_width67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %h_sync_width67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp68.not = icmp eq i32 %62, %64
  br i1 %cmp68.not, label %if.end70, label %if.end66.cleanup138_crit_edge

if.end66.cleanup138_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end70:                                         ; preds = %if.end66
  %v_total = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 6
  %65 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %v_total, align 4
  %v_total71 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 6
  %67 = ptrtoint ptr %v_total71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %v_total71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp72.not = icmp eq i32 %66, %68
  br i1 %cmp72.not, label %if.end74, label %if.end70.cleanup138_crit_edge

if.end70.cleanup138_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end74:                                         ; preds = %if.end70
  %v_border_top = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 7
  %69 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %v_border_top, align 4
  %v_border_top75 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 7
  %71 = ptrtoint ptr %v_border_top75 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %v_border_top75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp76.not = icmp eq i32 %70, %72
  br i1 %cmp76.not, label %if.end78, label %if.end74.cleanup138_crit_edge

if.end74.cleanup138_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end78:                                         ; preds = %if.end74
  %v_addressable = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 8
  %73 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %v_addressable, align 4
  %v_addressable79 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 8
  %75 = ptrtoint ptr %v_addressable79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %v_addressable79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp80.not = icmp eq i32 %74, %76
  br i1 %cmp80.not, label %if.end82, label %if.end78.cleanup138_crit_edge

if.end78.cleanup138_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end82:                                         ; preds = %if.end78
  %v_border_bottom = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 9
  %77 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %v_border_bottom, align 4
  %v_border_bottom83 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 9
  %79 = ptrtoint ptr %v_border_bottom83 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %v_border_bottom83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp84.not = icmp eq i32 %78, %80
  br i1 %cmp84.not, label %if.end86, label %if.end82.cleanup138_crit_edge

if.end82.cleanup138_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end86:                                         ; preds = %if.end82
  %v_front_porch = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 10
  %81 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %v_front_porch, align 4
  %v_front_porch87 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 10
  %83 = ptrtoint ptr %v_front_porch87 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %v_front_porch87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp88.not = icmp eq i32 %82, %84
  br i1 %cmp88.not, label %if.end90, label %if.end86.cleanup138_crit_edge

if.end86.cleanup138_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end90:                                         ; preds = %if.end86
  %v_sync_width = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 11
  %85 = ptrtoint ptr %v_sync_width to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %v_sync_width, align 4
  %v_sync_width91 = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 11
  %87 = ptrtoint ptr %v_sync_width91 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %v_sync_width91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp92.not = icmp eq i32 %86, %88
  br i1 %cmp92.not, label %if.end94, label %if.end90.cleanup138_crit_edge

if.end90.cleanup138_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end94:                                         ; preds = %if.end90
  %flags = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 21
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load = load i32, ptr %flags, align 4
  %90 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool95.not = icmp eq i32 %90, 0
  br i1 %tobool95.not, label %if.end97, label %if.end94.cleanup138_crit_edge

if.end94.cleanup138_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end97:                                         ; preds = %if.end94
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %2, i32 0, i32 5
  %91 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %connector_signal, align 8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %92, label %if.end97.if.end128_crit_edge [
    i32 32, label %if.end97.if.then99_crit_edge
    i32 128, label %if.end97.if.then99_crit_edge211
    i32 64, label %if.end97.if.then99_crit_edge212
  ]

if.end97.if.then99_crit_edge212:                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then99

if.end97.if.then99_crit_edge211:                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then99

if.end97.if.then99_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then99

if.end97.if.end128_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end128

if.then99:                                        ; preds = %if.end97.if.then99_crit_edge, %if.end97.if.then99_crit_edge211, %if.end97.if.then99_crit_edge212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pix_clk_100hz) #16
  %94 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %pix_clk_100hz, align 4, !annotation !106
  %95 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %res_pool, align 8
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %96, i32 0, i32 29
  %97 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dp_clock_source, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %get_pixel_clk_frequency_100hz = getelementptr inbounds %struct.clock_source_funcs, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %get_pixel_clk_frequency_100hz to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %get_pixel_clk_frequency_100hz, align 4
  %call104 = call zeroext i1 %102(ptr noundef %98, i32 noundef %tg_inst.0, ptr noundef nonnull %pix_clk_100hz) #16
  %pix_clk_100hz105 = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 12
  %103 = ptrtoint ptr %pix_clk_100hz105 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pix_clk_100hz105, align 4
  %105 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pix_clk_100hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp106.not = icmp eq i32 %104, %106
  br i1 %cmp106.not, label %if.end108, label %cleanup138.critedge

if.end108:                                        ; preds = %if.then99
  %107 = ptrtoint ptr %se.0 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %se.0, align 4
  %dp_get_pixel_format = getelementptr inbounds %struct.stream_encoder_funcs, ptr %108, i32 0, i32 23
  %109 = ptrtoint ptr %dp_get_pixel_format to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dp_get_pixel_format, align 4
  %tobool110.not = icmp eq ptr %110, null
  br i1 %tobool110.not, label %cleanup138.critedge191, label %if.end112

if.end112:                                        ; preds = %if.end108
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 17
  %display_color_depth = getelementptr inbounds %struct.dc_crtc_timing, ptr %hw_crtc_timing, i32 0, i32 16
  %call115 = call zeroext i1 %110(ptr noundef %se.0, ptr noundef %pixel_encoding, ptr noundef %display_color_depth) #16
  br i1 %call115, label %if.end117, label %cleanup138.critedge192

if.end117:                                        ; preds = %if.end112
  %111 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %display_color_depth, align 4
  %display_color_depth119 = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 16
  %113 = ptrtoint ptr %display_color_depth119 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %display_color_depth119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp120.not = icmp eq i32 %112, %114
  br i1 %cmp120.not, label %if.end122, label %cleanup138.critedge193

if.end122:                                        ; preds = %if.end117
  %115 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pixel_encoding, align 4
  %pixel_encoding124 = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %117 = ptrtoint ptr %pixel_encoding124 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pixel_encoding124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp125.not = icmp eq i32 %116, %118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix_clk_100hz) #16
  br i1 %cmp125.not, label %if.end122.if.end128_crit_edge, label %if.end122.cleanup138_crit_edge

if.end122.cleanup138_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end122.if.end128_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end128

if.end128:                                        ; preds = %if.end122.if.end128_crit_edge, %if.end97.if.end128_crit_edge
  %dprx_feature = getelementptr inbounds %struct.dc_link, ptr %2, i32 0, i32 43, i32 3
  %119 = ptrtoint ptr %dprx_feature to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load129 = load i8, ptr %dprx_feature, align 1
  %120 = and i8 %bf.load129, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool132.not = icmp eq i8 %120, 0
  br i1 %tobool132.not, label %if.end134, label %if.end128.cleanup138_crit_edge

if.end128.cleanup138_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.end134:                                        ; preds = %if.end128
  %call135 = call zeroext i1 @is_edp_ilr_optimization_required(ptr noundef %2, ptr noundef %crtc_timing) #16
  br i1 %call135, label %if.then136, label %if.end134.cleanup138_crit_edge

if.end134.cleanup138_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup138

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #16
  br label %cleanup138

cleanup138.critedge:                              ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix_clk_100hz) #16
  br label %cleanup138

cleanup138.critedge191:                           ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix_clk_100hz) #16
  br label %cleanup138

cleanup138.critedge192:                           ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix_clk_100hz) #16
  br label %cleanup138

cleanup138.critedge193:                           ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix_clk_100hz) #16
  br label %cleanup138

cleanup138:                                       ; preds = %cleanup138.critedge193, %cleanup138.critedge192, %cleanup138.critedge191, %cleanup138.critedge, %if.then136, %if.end134.cleanup138_crit_edge, %if.end128.cleanup138_crit_edge, %if.end122.cleanup138_crit_edge, %if.end94.cleanup138_crit_edge, %if.end90.cleanup138_crit_edge, %if.end86.cleanup138_crit_edge, %if.end82.cleanup138_crit_edge, %if.end78.cleanup138_crit_edge, %if.end74.cleanup138_crit_edge, %if.end70.cleanup138_crit_edge, %if.end66.cleanup138_crit_edge, %if.end62.cleanup138_crit_edge, %if.end58.cleanup138_crit_edge, %if.end54.cleanup138_crit_edge, %if.end50.cleanup138_crit_edge, %if.end46.cleanup138_crit_edge, %if.end41.cleanup138_crit_edge, %if.end36.cleanup138_crit_edge, %if.end32.cleanup138_crit_edge, %for.end.cleanup138_crit_edge, %if.end4.cleanup138_crit_edge, %if.end.cleanup138_crit_edge, %entry.cleanup138_crit_edge
  %retval.1 = phi i1 [ false, %if.then136 ], [ false, %if.end122.cleanup138_crit_edge ], [ false, %entry.cleanup138_crit_edge ], [ false, %if.end.cleanup138_crit_edge ], [ false, %if.end4.cleanup138_crit_edge ], [ false, %for.end.cleanup138_crit_edge ], [ false, %if.end32.cleanup138_crit_edge ], [ false, %if.end36.cleanup138_crit_edge ], [ false, %if.end41.cleanup138_crit_edge ], [ false, %if.end46.cleanup138_crit_edge ], [ false, %if.end50.cleanup138_crit_edge ], [ false, %if.end54.cleanup138_crit_edge ], [ false, %if.end58.cleanup138_crit_edge ], [ false, %if.end62.cleanup138_crit_edge ], [ false, %if.end66.cleanup138_crit_edge ], [ false, %if.end70.cleanup138_crit_edge ], [ false, %if.end74.cleanup138_crit_edge ], [ false, %if.end78.cleanup138_crit_edge ], [ false, %if.end82.cleanup138_crit_edge ], [ false, %if.end86.cleanup138_crit_edge ], [ false, %if.end90.cleanup138_crit_edge ], [ false, %if.end94.cleanup138_crit_edge ], [ false, %cleanup138.critedge ], [ false, %cleanup138.critedge191 ], [ false, %cleanup138.critedge192 ], [ false, %cleanup138.critedge193 ], [ false, %if.end128.cleanup138_crit_edge ], [ true, %if.end134.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %hw_crtc_timing) #16
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_edp_ilr_optimization_required(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_enable_stereo(ptr noundef %dc, ptr noundef %context, ptr nocapture noundef readonly %streams, i8 noundef zeroext %stream_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %stream_count to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %stream_count)
  %cmp733 = icmp ne i8 %stream_count, 0
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %setup_stereo = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 65
  br label %for.body

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17.for.body_crit_edge ]
  %context.addr.036 = phi ptr [ %context, %entry ], [ %context.addr.1, %for.inc17.for.body_crit_edge ]
  %cmp1.not = icmp eq ptr %context.addr.036, null
  br i1 %cmp1.not, label %if.else, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge
  %context.addr.1 = phi ptr [ %1, %if.else ], [ %context.addr.036, %for.body.if.end_crit_edge ]
  %res_ctx.pn = getelementptr inbounds %struct.dc_state, ptr %context.addr.1, i32 0, i32 4
  %pipe.0 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.pn, i32 0, i32 %i.037
  %tobool.not = icmp ne ptr %pipe.0, null
  %or.cond34 = and i1 %tobool.not, %cmp733
  br i1 %or.cond34, label %for.body9.lr.ph, label %if.end.for.inc17_crit_edge

if.end.for.inc17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc17

for.body9.lr.ph:                                  ; preds = %if.end
  %stream1.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.pn, i32 0, i32 %i.037, i32 1
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body9.lr.ph
  %j.035 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.inc.for.body9_crit_edge ]
  %arrayidx10 = getelementptr ptr, ptr %streams, i32 %j.035
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx10, align 4
  %4 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream1.i, align 4
  %tobool.not.i = icmp ne ptr %5, null
  %cmp.i = icmp eq ptr %5, %3
  %spec.select.i = and i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true, label %for.body9.for.inc_crit_edge

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body9
  %6 = ptrtoint ptr %setup_stereo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %setup_stereo, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %7(ptr noundef nonnull %pipe.0, ptr noundef %dc) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true.for.inc_crit_edge, %for.body9.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.035, 1
  %cmp7 = icmp ult i32 %inc, %conv
  br i1 %cmp7, label %for.inc.for.body9_crit_edge, label %for.inc.for.inc17_crit_edge

for.inc.for.inc17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc17

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body9

for.inc17:                                        ; preds = %for.inc.for.inc17_crit_edge, %if.end.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc18, 6
  br i1 %exitcond.not, label %for.end19, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end19:                                        ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_trigger_sync(ptr noundef %dc, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  %unsynced_pipes.i = alloca [6 x ptr], align 4
  %pipe_set.i = alloca [6 x ptr], align 4
  %multisync_pipes.i = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disable_timing_sync = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 68
  %2 = ptrtoint ptr %disable_timing_sync to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_timing_sync, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool.i, align 8
  %pipe_count1.i = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %pipe_count1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_count1.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %multisync_pipes.i) #16
  %8 = call ptr @memset(ptr %multisync_pipes.i, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp42.i = icmp sgt i32 %7, 0
  br i1 %cmp42.i, label %for.body.lr.ph.i, label %if.then.enable_timing_multisync.exit_crit_edge

if.then.enable_timing_multisync.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %enable_timing_multisync.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %multisync_count.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %multisync_count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc23.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.043.i
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.043.i, i32 1
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %triggered_crtc_reset.i = getelementptr inbounds %struct.dc_stream_state, ptr %10, i32 0, i32 43
  %11 = ptrtoint ptr %triggered_crtc_reset.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %triggered_crtc_reset.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not.i = icmp eq i8 %12, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %event_source.i = getelementptr inbounds %struct.dc_stream_state, ptr %10, i32 0, i32 43, i32 1
  %13 = ptrtoint ptr %event_source.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event_source.i, align 4
  %cmp16.i = icmp eq ptr %10, %14
  br i1 %cmp16.i, label %if.end.i.for.inc.i_crit_edge, label %if.end18.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx22.i = getelementptr [6 x ptr], ptr %multisync_pipes.i, i32 0, i32 %multisync_count.044.i
  %15 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.i, ptr %arrayidx22.i, align 4
  %inc.i = add i32 %multisync_count.044.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %multisync_count.1.i = phi i32 [ %multisync_count.044.i, %if.end.i.for.inc.i_crit_edge ], [ %inc.i, %if.end18.i ], [ %multisync_count.044.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %multisync_count.044.i, %for.body.i.for.inc.i_crit_edge ]
  %inc23.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, %7
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %multisync_count.1.i)
  %cmp24.i = icmp sgt i32 %multisync_count.1.i, 0
  br i1 %cmp24.i, label %if.then25.i, label %for.end.i.enable_timing_multisync.exit_crit_edge

for.end.i.enable_timing_multisync.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %enable_timing_multisync.exit

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %enable_per_frame_crtc_position_reset.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 28
  %16 = ptrtoint ptr %enable_per_frame_crtc_position_reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_per_frame_crtc_position_reset.i, align 4
  call void %17(ptr noundef %dc, i32 noundef %multisync_count.1.i, ptr noundef nonnull %multisync_pipes.i) #16
  br label %enable_timing_multisync.exit

enable_timing_multisync.exit:                     ; preds = %if.then25.i, %for.end.i.enable_timing_multisync.exit_crit_edge, %if.then.enable_timing_multisync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %multisync_pipes.i) #16
  %18 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res_pool.i, align 8
  %pipe_count1.i7 = getelementptr inbounds %struct.resource_pool, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %pipe_count1.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pipe_count1.i7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %unsynced_pipes.i) #16
  %22 = call ptr @memset(ptr %unsynced_pipes.i, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp310.i = icmp sgt i32 %21, 0
  br i1 %cmp310.i, label %for.body.lr.ph.i9, label %enable_timing_multisync.exit.program_timing_sync.exit_crit_edge

enable_timing_multisync.exit.program_timing_sync.exit_crit_edge: ; preds = %enable_timing_multisync.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %program_timing_sync.exit

for.body.lr.ph.i9:                                ; preds = %enable_timing_multisync.exit
  %res_ctx.i8 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body.i13

for.body12.lr.ph.i:                               ; preds = %for.inc.i18
  %enable_vblanks_synchronization.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 30
  %use_pipe_ctx_sync_logic.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4, i32 20
  %enable_timing_synchronization.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 29
  %23 = getelementptr inbounds i8, ptr %pipe_set.i, i32 4
  br label %for.body12.i

for.body.i13:                                     ; preds = %for.inc.i18.for.body.i13_crit_edge, %for.body.lr.ph.i9
  %i.0311.i = phi i32 [ 0, %for.body.lr.ph.i9 ], [ %inc.i16, %for.inc.i18.for.body.i13_crit_edge ]
  %arrayidx.i10 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i8, i32 0, i32 %i.0311.i
  %stream.i11 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i8, i32 0, i32 %i.0311.i, i32 1
  %24 = ptrtoint ptr %stream.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.i11, align 4
  %tobool.not.i12 = icmp eq ptr %25, null
  br i1 %tobool.not.i12, label %for.body.i13.for.inc.i18_crit_edge, label %lor.lhs.false.i14

for.body.i13.for.inc.i18_crit_edge:               ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i18

lor.lhs.false.i14:                                ; preds = %for.body.i13
  %top_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i8, i32 0, i32 %i.0311.i, i32 9
  %26 = ptrtoint ptr %top_pipe.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %top_pipe.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  br i1 %tobool5.not.i, label %if.end.i15, label %lor.lhs.false.i14.for.inc.i18_crit_edge

lor.lhs.false.i14.for.inc.i18_crit_edge:          ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i18

if.end.i15:                                       ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx9.i = getelementptr [6 x ptr], ptr %unsynced_pipes.i, i32 0, i32 %i.0311.i
  %28 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.i10, ptr %arrayidx9.i, align 4
  br label %for.inc.i18

for.inc.i18:                                      ; preds = %if.end.i15, %lor.lhs.false.i14.for.inc.i18_crit_edge, %for.body.i13.for.inc.i18_crit_edge
  %inc.i16 = add nuw nsw i32 %i.0311.i, 1
  %exitcond.not.i17 = icmp eq i32 %inc.i16, %21
  br i1 %exitcond.not.i17, label %for.body12.lr.ph.i, label %for.inc.i18.for.body.i13_crit_edge

for.inc.i18.for.body.i13_crit_edge:               ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i13

for.body12.i:                                     ; preds = %cleanup209.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %i.1342.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc215.pre-phi.i, %cleanup209.i.for.body12.i_crit_edge ]
  %num_group.0341.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %num_group.1.i, %cleanup209.i.for.body12.i_crit_edge ]
  %group_index.0339.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %group_index.2.i, %cleanup209.i.for.body12.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pipe_set.i) #16
  %arrayidx13.i = getelementptr [6 x ptr], ptr %unsynced_pipes.i, i32 0, i32 %i.1342.i
  %29 = call ptr @memset(ptr %23, i32 255, i32 20)
  %30 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %31, null
  br i1 %tobool14.not.i, label %for.body12.cleanup209_crit_edge.i, label %if.end16.i

for.body12.cleanup209_crit_edge.i:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  %.pre.i = add nuw nsw i32 %i.1342.i, 1
  br label %cleanup209.i

if.end16.i:                                       ; preds = %for.body12.i
  %32 = ptrtoint ptr %pipe_set.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %pipe_set.i, align 4
  %33 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx13.i, align 4
  %j.0313.i = add nuw nsw i32 %i.1342.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0313.i, i32 %21)
  %cmp21314.i = icmp slt i32 %j.0313.i, %21
  br i1 %cmp21314.i, label %if.end16.i.for.body22.i_crit_edge, label %if.end16.i.for.body61.preheader.i_crit_edge

if.end16.i.for.body61.preheader.i_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body61.preheader.i

if.end16.i.for.body22.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body22.i

for.cond59.preheader.i:                           ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_size.1.i)
  %cmp60321.i = icmp sgt i32 %group_size.1.i, 0
  br i1 %cmp60321.i, label %for.cond59.preheader.i.for.body61.preheader.i_crit_edge, label %for.cond59.preheader.i.for.end118.i_crit_edge

for.cond59.preheader.i.for.end118.i_crit_edge:    ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end118.i

for.cond59.preheader.i.for.body61.preheader.i_crit_edge: ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body61.preheader.i

for.body61.preheader.i:                           ; preds = %for.cond59.preheader.i.for.body61.preheader.i_crit_edge, %if.end16.i.for.body61.preheader.i_crit_edge
  %sync_type.0.lcssa360.i = phi i32 [ %sync_type.1.i, %for.cond59.preheader.i.for.body61.preheader.i_crit_edge ], [ 0, %if.end16.i.for.body61.preheader.i_crit_edge ]
  %group_size.0.lcssa356.i = phi i32 [ %group_size.1.i, %for.cond59.preheader.i.for.body61.preheader.i_crit_edge ], [ 1, %if.end16.i.for.body61.preheader.i_crit_edge ]
  br label %for.body61.i

for.body22.i:                                     ; preds = %for.inc56.i.for.body22.i_crit_edge, %if.end16.i.for.body22.i_crit_edge
  %j.0318.i = phi i32 [ %j.0.i, %for.inc56.i.for.body22.i_crit_edge ], [ %j.0313.i, %if.end16.i.for.body22.i_crit_edge ]
  %sync_type.0317.i = phi i32 [ %sync_type.1.i, %for.inc56.i.for.body22.i_crit_edge ], [ 0, %if.end16.i.for.body22.i_crit_edge ]
  %group_size.0315.i = phi i32 [ %group_size.1.i, %for.inc56.i.for.body22.i_crit_edge ], [ 1, %if.end16.i.for.body22.i_crit_edge ]
  %arrayidx23.i = getelementptr [6 x ptr], ptr %unsynced_pipes.i, i32 0, i32 %j.0318.i
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx23.i, align 4
  %tobool24.not.i = icmp eq ptr %35, null
  br i1 %tobool24.not.i, label %for.body22.i.for.inc56.i_crit_edge, label %if.end26.i

for.body22.i.for.inc56.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc56.i

if.end26.i:                                       ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sync_type.0317.i)
  %cond.i = icmp eq i32 %sync_type.0317.i, 1
  br i1 %cond.i, label %if.end26.i.land.lhs.true43.i_crit_edge, label %land.lhs.true.i

if.end26.i.land.lhs.true43.i_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true43.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %36 = ptrtoint ptr %enable_vblanks_synchronization.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enable_vblanks_synchronization.i, align 4
  %tobool28.not.i = icmp eq ptr %37, null
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true29.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true29.i:                                ; preds = %land.lhs.true.i
  %tg.i = getelementptr inbounds %struct.pipe_ctx, ptr %35, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tg.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %align_vblanks.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %41, i32 0, i32 69
  %42 = ptrtoint ptr %align_vblanks.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %align_vblanks.i, align 4
  %tobool31.not.i = icmp eq ptr %43, null
  br i1 %tobool31.not.i, label %land.lhs.true29.i.if.else.i_crit_edge, label %land.lhs.true32.i

land.lhs.true29.i.if.else.i_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true32.i:                                ; preds = %land.lhs.true29.i
  %stream34.i = getelementptr inbounds %struct.pipe_ctx, ptr %35, i32 0, i32 1
  %44 = ptrtoint ptr %stream34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream34.i, align 4
  %46 = ptrtoint ptr %pipe_set.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pipe_set.i, align 4
  %stream36.i = getelementptr inbounds %struct.pipe_ctx, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %stream36.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stream36.i, align 4
  %call.i = call zeroext i1 @resource_are_vblanks_synchronizable(ptr noundef %45, ptr noundef %49) #16
  br i1 %call.i, label %land.lhs.true32.i.for.inc56.sink.split.i_crit_edge, label %land.lhs.true32.i.if.else.i_crit_edge

land.lhs.true32.i.if.else.i_crit_edge:            ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true32.i.for.inc56.sink.split.i_crit_edge: ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc56.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true32.i.if.else.i_crit_edge, %land.lhs.true29.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sync_type.0317.i)
  %cmp42.not.i = icmp eq i32 %sync_type.0317.i, 2
  br i1 %cmp42.not.i, label %if.else.i.for.inc56.i_crit_edge, label %if.else.i.land.lhs.true43.i_crit_edge

if.else.i.land.lhs.true43.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true43.i

if.else.i.for.inc56.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc56.i

land.lhs.true43.i:                                ; preds = %if.else.i.land.lhs.true43.i_crit_edge, %if.end26.i.land.lhs.true43.i_crit_edge
  %stream45.i = getelementptr inbounds %struct.pipe_ctx, ptr %35, i32 0, i32 1
  %50 = ptrtoint ptr %stream45.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stream45.i, align 4
  %52 = ptrtoint ptr %pipe_set.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pipe_set.i, align 4
  %stream47.i = getelementptr inbounds %struct.pipe_ctx, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %stream47.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stream47.i, align 4
  %call48.i = call zeroext i1 @resource_are_streams_timing_synchronizable(ptr noundef %51, ptr noundef %55) #16
  br i1 %call48.i, label %land.lhs.true43.i.for.inc56.sink.split.i_crit_edge, label %land.lhs.true43.i.for.inc56.i_crit_edge

land.lhs.true43.i.for.inc56.i_crit_edge:          ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc56.i

land.lhs.true43.i.for.inc56.sink.split.i_crit_edge: ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc56.sink.split.i

for.inc56.sink.split.i:                           ; preds = %land.lhs.true43.i.for.inc56.sink.split.i_crit_edge, %land.lhs.true32.i.for.inc56.sink.split.i_crit_edge
  %sync_type.1.ph.i = phi i32 [ 2, %land.lhs.true32.i.for.inc56.sink.split.i_crit_edge ], [ 1, %land.lhs.true43.i.for.inc56.sink.split.i_crit_edge ]
  %arrayidx39.i = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %group_size.0315.i
  %56 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %35, ptr %arrayidx39.i, align 4
  %57 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx23.i, align 4
  %inc41.i = add i32 %group_size.0315.i, 1
  br label %for.inc56.i

for.inc56.i:                                      ; preds = %for.inc56.sink.split.i, %land.lhs.true43.i.for.inc56.i_crit_edge, %if.else.i.for.inc56.i_crit_edge, %for.body22.i.for.inc56.i_crit_edge
  %group_size.1.i = phi i32 [ %group_size.0315.i, %land.lhs.true43.i.for.inc56.i_crit_edge ], [ %group_size.0315.i, %if.else.i.for.inc56.i_crit_edge ], [ %group_size.0315.i, %for.body22.i.for.inc56.i_crit_edge ], [ %inc41.i, %for.inc56.sink.split.i ]
  %sync_type.1.i = phi i32 [ %sync_type.0317.i, %land.lhs.true43.i.for.inc56.i_crit_edge ], [ 2, %if.else.i.for.inc56.i_crit_edge ], [ %sync_type.0317.i, %for.body22.i.for.inc56.i_crit_edge ], [ %sync_type.1.ph.i, %for.inc56.sink.split.i ]
  %j.0.i = add i32 %j.0318.i, 1
  %exitcond346.not.i = icmp eq i32 %j.0.i, %21
  br i1 %exitcond346.not.i, label %for.cond59.preheader.i, label %for.inc56.i.for.body22.i_crit_edge

for.inc56.i.for.body22.i_crit_edge:               ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body22.i

for.body61.i:                                     ; preds = %for.inc98.i.for.body61.i_crit_edge, %for.body61.preheader.i
  %j.1322.i = phi i32 [ %inc99.i, %for.inc98.i.for.body61.i_crit_edge ], [ 0, %for.body61.preheader.i ]
  %arrayidx62.i = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %j.1322.i
  %58 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx62.i, align 4
  %stream_res63.i = getelementptr inbounds %struct.pipe_ctx, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %stream_res63.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stream_res63.i, align 8
  %funcs64.i = getelementptr inbounds %struct.output_pixel_processor, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %funcs64.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs64.i, align 8
  %dpg_is_blanked.i = getelementptr inbounds %struct.opp_funcs, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %dpg_is_blanked.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dpg_is_blanked.i, align 4
  %tobool65.not.i = icmp eq ptr %65, null
  br i1 %tobool65.not.i, label %if.end87.i, label %if.then66.i

if.then66.i:                                      ; preds = %for.body61.i
  %call75.i = call zeroext i1 %65(ptr noundef %61) #16
  br i1 %call75.i, label %if.then66.i.for.inc98.i_crit_edge, label %if.then66.i.if.then89.i_crit_edge

if.then66.i.if.then89.i_crit_edge:                ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then89.i

if.then66.i.for.inc98.i_crit_edge:                ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc98.i

if.end87.i:                                       ; preds = %for.body61.i
  %tg79.i = getelementptr inbounds %struct.pipe_ctx, ptr %59, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %tg79.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tg79.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %is_blanked81.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %is_blanked81.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %is_blanked81.i, align 4
  %call85.i = call zeroext i1 %71(ptr noundef %67) #16
  br i1 %call85.i, label %if.end87.i.for.inc98.i_crit_edge, label %if.end87.i.if.then89.i_crit_edge

if.end87.i.if.then89.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then89.i

if.end87.i.for.inc98.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc98.i

if.then89.i:                                      ; preds = %if.end87.i.if.then89.i_crit_edge, %if.then66.i.if.then89.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1322.i)
  %cmp90.i = icmp eq i32 %j.1322.i, 0
  br i1 %cmp90.i, label %if.then89.i.if.end115.peel.i_crit_edge, label %do.body.i

if.then89.i.if.end115.peel.i_crit_edge:           ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.peel.i

do.body.i:                                        ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx62.i.le = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %j.1322.i
  %72 = ptrtoint ptr %pipe_set.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pipe_set.i, align 4
  %74 = ptrtoint ptr %arrayidx62.i.le to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx62.i.le, align 4
  store ptr %75, ptr %pipe_set.i, align 4
  store ptr %73, ptr %arrayidx62.i.le, align 4
  br label %if.end115.peel.i

for.inc98.i:                                      ; preds = %if.end87.i.for.inc98.i_crit_edge, %if.then66.i.for.inc98.i_crit_edge
  %inc99.i = add nuw nsw i32 %j.1322.i, 1
  %exitcond347.not.i = icmp eq i32 %inc99.i, %group_size.0.lcssa356.i
  br i1 %exitcond347.not.i, label %for.inc98.i.if.end115.peel.i_crit_edge, label %for.inc98.i.for.body61.i_crit_edge

for.inc98.i.for.body61.i_crit_edge:               ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body61.i

for.inc98.i.if.end115.peel.i_crit_edge:           ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.peel.i

if.end115.peel.i:                                 ; preds = %for.inc98.i.if.end115.peel.i_crit_edge, %do.body.i, %if.then89.i.if.end115.peel.i_crit_edge
  %j.1309371.i = phi i32 [ %j.1322.i, %do.body.i ], [ 0, %if.then89.i.if.end115.peel.i_crit_edge ], [ %group_size.0.lcssa356.i, %for.inc98.i.if.end115.peel.i_crit_edge ]
  %76 = ptrtoint ptr %pipe_set.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pipe_set.i, align 4
  %stream105.peel.i = getelementptr inbounds %struct.pipe_ctx, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %stream105.peel.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %stream105.peel.i, align 4
  %call106.peel.i = call ptr @dc_stream_get_status_from_state(ptr noundef %context, ptr noundef %79) #16
  %timing_sync_info.peel.i = getelementptr inbounds %struct.dc_stream_status, ptr %call106.peel.i, i32 0, i32 4
  %80 = ptrtoint ptr %timing_sync_info.peel.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %num_group.0341.i, ptr %timing_sync_info.peel.i, align 4
  %group_size108.peel.i = getelementptr inbounds %struct.dc_stream_status, ptr %call106.peel.i, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %group_size108.peel.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %group_size.0.lcssa356.i, ptr %group_size108.peel.i, align 4
  %82 = getelementptr inbounds %struct.dc_stream_status, ptr %call106.peel.i, i32 0, i32 4, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %group_size.0.lcssa356.i)
  %exitcond348.peel.not.i = icmp eq i32 %group_size.0.lcssa356.i, 1
  br i1 %exitcond348.peel.not.i, label %for.end118.thread.i, label %if.end115.peel.i.if.end115.i_crit_edge

if.end115.peel.i.if.end115.i_crit_edge:           ; preds = %if.end115.peel.i
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.end115.i.if.end115.i_crit_edge, %if.end115.peel.i.if.end115.i_crit_edge
  %k.0326.i = phi i32 [ %inc117.i, %if.end115.i.if.end115.i_crit_edge ], [ 1, %if.end115.peel.i.if.end115.i_crit_edge ]
  %arrayidx104.i = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %k.0326.i
  %84 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx104.i, align 4
  %stream105.i = getelementptr inbounds %struct.pipe_ctx, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %stream105.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %stream105.i, align 4
  %call106.i = call ptr @dc_stream_get_status_from_state(ptr noundef %context, ptr noundef %87) #16
  %timing_sync_info.i = getelementptr inbounds %struct.dc_stream_status, ptr %call106.i, i32 0, i32 4
  %88 = ptrtoint ptr %timing_sync_info.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %num_group.0341.i, ptr %timing_sync_info.i, align 4
  %group_size108.i = getelementptr inbounds %struct.dc_stream_status, ptr %call106.i, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %group_size108.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %group_size.0.lcssa356.i, ptr %group_size108.i, align 4
  %90 = getelementptr inbounds %struct.dc_stream_status, ptr %call106.i, i32 0, i32 4, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %90, align 4
  %inc117.i = add nuw nsw i32 %k.0326.i, 1
  %exitcond348.not.i = icmp eq i32 %inc117.i, %group_size.0.lcssa356.i
  br i1 %exitcond348.not.i, label %if.end115.i.for.end118.i_crit_edge, label %if.end115.i.if.end115.i_crit_edge, !llvm.loop !112

if.end115.i.if.end115.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.i

if.end115.i.for.end118.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end118.i

for.end118.i:                                     ; preds = %if.end115.i.for.end118.i_crit_edge, %for.cond59.preheader.i.for.end118.i_crit_edge
  %j.1309368.i = phi i32 [ 0, %for.cond59.preheader.i.for.end118.i_crit_edge ], [ %j.1309371.i, %if.end115.i.for.end118.i_crit_edge ]
  %sync_type.0.lcssa359367.i = phi i32 [ %sync_type.1.i, %for.cond59.preheader.i.for.end118.i_crit_edge ], [ %sync_type.0.lcssa360.i, %if.end115.i.for.end118.i_crit_edge ]
  %group_size.0.lcssa357.i = phi i32 [ %group_size.1.i, %for.cond59.preheader.i.for.end118.i_crit_edge ], [ %group_size.0.lcssa356.i, %if.end115.i.for.end118.i_crit_edge ]
  %92 = ptrtoint ptr %use_pipe_ctx_sync_logic.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %use_pipe_ctx_sync_logic.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool119.not.i = icmp eq i8 %93, 0
  br i1 %tobool119.not.i, label %for.end118.i.for.cond145.preheader.i_crit_edge, label %for.cond121.preheader.i

for.end118.i.for.cond145.preheader.i_crit_edge:   ; preds = %for.end118.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond145.preheader.i

for.end118.thread.i:                              ; preds = %if.end115.peel.i
  %94 = ptrtoint ptr %use_pipe_ctx_sync_logic.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %use_pipe_ctx_sync_logic.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool119.not381.i = icmp eq i8 %95, 0
  br i1 %tobool119.not381.i, label %for.end118.thread.i.for.cond145.preheader.i_crit_edge, label %for.end118.thread.i.if.end207.i_crit_edge

for.end118.thread.i.if.end207.i_crit_edge:        ; preds = %for.end118.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end207.i

for.end118.thread.i.for.cond145.preheader.i_crit_edge: ; preds = %for.end118.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond145.preheader.i

for.cond121.preheader.i:                          ; preds = %for.end118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %group_size.0.lcssa357.i)
  %cmp122327.i = icmp sgt i32 %group_size.0.lcssa357.i, 1
  br i1 %cmp122327.i, label %for.cond121.preheader.i.for.body123.i_crit_edge, label %for.cond121.preheader.i.if.end207.i_crit_edge

for.cond121.preheader.i.if.end207.i_crit_edge:    ; preds = %for.cond121.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end207.i

for.cond121.preheader.i.for.body123.i_crit_edge:  ; preds = %for.cond121.preheader.i
  br label %for.body123.i

for.cond145.preheader.i:                          ; preds = %for.end118.thread.i.for.cond145.preheader.i_crit_edge, %for.end118.i.for.cond145.preheader.i_crit_edge
  %group_size.0.lcssa357387.i = phi i32 [ 1, %for.end118.thread.i.for.cond145.preheader.i_crit_edge ], [ %group_size.0.lcssa357.i, %for.end118.i.for.cond145.preheader.i_crit_edge ]
  %sync_type.0.lcssa359367385.i = phi i32 [ %sync_type.0.lcssa360.i, %for.end118.thread.i.for.cond145.preheader.i_crit_edge ], [ %sync_type.0.lcssa359367.i, %for.end118.i.for.cond145.preheader.i_crit_edge ]
  %j.1309368382.i = phi i32 [ %j.1309371.i, %for.end118.thread.i.for.cond145.preheader.i_crit_edge ], [ %j.1309368.i, %for.end118.i.for.cond145.preheader.i_crit_edge ]
  %j.4331.i = add i32 %j.1309368382.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.4331.i, i32 %group_size.0.lcssa357387.i)
  %cmp146332.i = icmp slt i32 %j.4331.i, %group_size.0.lcssa357387.i
  br i1 %cmp146332.i, label %for.cond145.preheader.i.for.body148.i_crit_edge, label %for.cond145.preheader.i.if.end189.i_crit_edge

for.cond145.preheader.i.if.end189.i_crit_edge:    ; preds = %for.cond145.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end189.i

for.cond145.preheader.i.for.body148.i_crit_edge:  ; preds = %for.cond145.preheader.i
  br label %for.body148.i

for.body123.i:                                    ; preds = %for.inc140.i.for.body123.i_crit_edge, %for.cond121.preheader.i.for.body123.i_crit_edge
  %group_size.2329.i = phi i32 [ %group_size.3.i, %for.inc140.i.for.body123.i_crit_edge ], [ %group_size.0.lcssa357.i, %for.cond121.preheader.i.for.body123.i_crit_edge ]
  %j.2328.i = phi i32 [ %inc141.i, %for.inc140.i.for.body123.i_crit_edge ], [ 1, %for.cond121.preheader.i.for.body123.i_crit_edge ]
  %arrayidx124.i = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %j.2328.i
  %96 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx124.i, align 4
  %pipe_idx_syncd.i = getelementptr inbounds %struct.pipe_ctx, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %pipe_idx_syncd.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %pipe_idx_syncd.i, align 1
  %100 = ptrtoint ptr %pipe_set.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pipe_set.i, align 4
  %pipe_idx_syncd126.i = getelementptr inbounds %struct.pipe_ctx, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %pipe_idx_syncd126.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %pipe_idx_syncd126.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %103)
  %cmp128.i = icmp eq i8 %99, %103
  br i1 %cmp128.i, label %if.then130.i, label %if.else134.i

if.then130.i:                                     ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #18
  %dec.i = add nsw i32 %group_size.2329.i, -1
  %arrayidx131.i = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %dec.i
  %104 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx131.i, align 4
  %106 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %arrayidx124.i, align 4
  %dec133.i = add i32 %j.2328.i, -1
  br label %for.inc140.i

if.else134.i:                                     ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %pipe_idx_syncd.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %103, ptr %pipe_idx_syncd.i, align 1
  br label %for.inc140.i

for.inc140.i:                                     ; preds = %if.else134.i, %if.then130.i
  %j.3.i = phi i32 [ %dec133.i, %if.then130.i ], [ %j.2328.i, %if.else134.i ]
  %group_size.3.i = phi i32 [ %dec.i, %if.then130.i ], [ %group_size.2329.i, %if.else134.i ]
  %inc141.i = add i32 %j.3.i, 1
  %cmp122.i = icmp slt i32 %inc141.i, %group_size.3.i
  br i1 %cmp122.i, label %for.inc140.i.for.body123.i_crit_edge, label %for.inc140.i.if.end189.i_crit_edge

for.inc140.i.if.end189.i_crit_edge:               ; preds = %for.inc140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end189.i

for.inc140.i.for.body123.i_crit_edge:             ; preds = %for.inc140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body123.i

for.body148.i:                                    ; preds = %if.end185.i.for.body148.i_crit_edge, %for.cond145.preheader.i.for.body148.i_crit_edge
  %j.4336.i = phi i32 [ %j.4.i, %if.end185.i.for.body148.i_crit_edge ], [ %j.4331.i, %for.cond145.preheader.i.for.body148.i_crit_edge ]
  %group_size.4334.i = phi i32 [ %group_size.5.i, %if.end185.i.for.body148.i_crit_edge ], [ %group_size.0.lcssa357387.i, %for.cond145.preheader.i.for.body148.i_crit_edge ]
  %j.4.in333.i = phi i32 [ %j.5.i, %if.end185.i.for.body148.i_crit_edge ], [ %j.1309368382.i, %for.cond145.preheader.i.for.body148.i_crit_edge ]
  %arrayidx150.i = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %j.4336.i
  %108 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx150.i, align 4
  %stream_res151.i = getelementptr inbounds %struct.pipe_ctx, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %stream_res151.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %stream_res151.i, align 8
  %funcs153.i = getelementptr inbounds %struct.output_pixel_processor, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %funcs153.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %funcs153.i, align 8
  %dpg_is_blanked154.i = getelementptr inbounds %struct.opp_funcs, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %dpg_is_blanked154.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dpg_is_blanked154.i, align 4
  %tobool155.not.i = icmp eq ptr %115, null
  br i1 %tobool155.not.i, label %if.end178.i, label %if.then156.i

if.then156.i:                                     ; preds = %for.body148.i
  %call165.i = call zeroext i1 %115(ptr noundef %111) #16
  br i1 %call165.i, label %if.then156.i.if.end185.i_crit_edge, label %if.then156.i.if.then180.i_crit_edge

if.then156.i.if.then180.i_crit_edge:              ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then180.i

if.then156.i.if.end185.i_crit_edge:               ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end185.i

if.end178.i:                                      ; preds = %for.body148.i
  %tg170.i = getelementptr inbounds %struct.pipe_ctx, ptr %109, i32 0, i32 3, i32 2
  %116 = ptrtoint ptr %tg170.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tg170.i, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %is_blanked172.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %119, i32 0, i32 17
  %120 = ptrtoint ptr %is_blanked172.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %is_blanked172.i, align 4
  %call176.i = call zeroext i1 %121(ptr noundef %117) #16
  br i1 %call176.i, label %if.end178.i.if.end185.i_crit_edge, label %if.end178.i.if.then180.i_crit_edge

if.end178.i.if.then180.i_crit_edge:               ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then180.i

if.end178.i.if.end185.i_crit_edge:                ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end185.i

if.then180.i:                                     ; preds = %if.end178.i.if.then180.i_crit_edge, %if.then156.i.if.then180.i_crit_edge
  %dec181.i = add nsw i32 %group_size.4334.i, -1
  %arrayidx182.i = getelementptr [6 x ptr], ptr %pipe_set.i, i32 0, i32 %dec181.i
  %122 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx182.i, align 4
  %124 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %arrayidx150.i, align 4
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.then180.i, %if.end178.i.if.end185.i_crit_edge, %if.then156.i.if.end185.i_crit_edge
  %j.5.i = phi i32 [ %j.4336.i, %if.end178.i.if.end185.i_crit_edge ], [ %j.4.in333.i, %if.then180.i ], [ %j.4336.i, %if.then156.i.if.end185.i_crit_edge ]
  %group_size.5.i = phi i32 [ %group_size.4334.i, %if.end178.i.if.end185.i_crit_edge ], [ %dec181.i, %if.then180.i ], [ %group_size.4334.i, %if.then156.i.if.end185.i_crit_edge ]
  %j.4.i = add i32 %j.5.i, 1
  %cmp146.i = icmp slt i32 %j.4.i, %group_size.5.i
  br i1 %cmp146.i, label %if.end185.i.for.body148.i_crit_edge, label %if.end185.i.if.end189.i_crit_edge

if.end185.i.if.end189.i_crit_edge:                ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end189.i

if.end185.i.for.body148.i_crit_edge:              ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body148.i

if.end189.i:                                      ; preds = %if.end185.i.if.end189.i_crit_edge, %for.inc140.i.if.end189.i_crit_edge, %for.cond145.preheader.i.if.end189.i_crit_edge
  %sync_type.0.lcssa359367383.i = phi i32 [ %sync_type.0.lcssa359367385.i, %for.cond145.preheader.i.if.end189.i_crit_edge ], [ %sync_type.0.lcssa359367385.i, %if.end185.i.if.end189.i_crit_edge ], [ %sync_type.0.lcssa359367.i, %for.inc140.i.if.end189.i_crit_edge ]
  %group_size.6.i = phi i32 [ %group_size.0.lcssa357387.i, %for.cond145.preheader.i.if.end189.i_crit_edge ], [ %group_size.5.i, %if.end185.i.if.end189.i_crit_edge ], [ %group_size.3.i, %for.inc140.i.if.end189.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %group_size.6.i)
  %cmp190.i = icmp sgt i32 %group_size.6.i, 1
  br i1 %cmp190.i, label %if.then192.i, label %if.end189.i.if.end207.i_crit_edge

if.end189.i.if.end207.i_crit_edge:                ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end207.i

if.then192.i:                                     ; preds = %if.end189.i
  %125 = zext i32 %sync_type.0.lcssa359367383.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %sync_type.0.lcssa359367383.i, label %if.then192.i.if.end205.i_crit_edge [
    i32 1, label %if.then192.i.if.end205.sink.split.i_crit_edge
    i32 2, label %if.then200.i
  ]

if.then192.i.if.end205.sink.split.i_crit_edge:    ; preds = %if.then192.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end205.sink.split.i

if.then192.i.if.end205.i_crit_edge:               ; preds = %if.then192.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end205.i

if.then200.i:                                     ; preds = %if.then192.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end205.sink.split.i

if.end205.sink.split.i:                           ; preds = %if.then200.i, %if.then192.i.if.end205.sink.split.i_crit_edge
  %enable_vblanks_synchronization.sink.i = phi ptr [ %enable_vblanks_synchronization.i, %if.then200.i ], [ %enable_timing_synchronization.i, %if.then192.i.if.end205.sink.split.i_crit_edge ]
  %126 = ptrtoint ptr %enable_vblanks_synchronization.sink.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %enable_vblanks_synchronization.sink.i, align 4
  call void %127(ptr noundef %dc, i32 noundef %group_index.0339.i, i32 noundef %group_size.6.i, ptr noundef nonnull %pipe_set.i) #16
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.end205.sink.split.i, %if.then192.i.if.end205.i_crit_edge
  %inc206.i = add i32 %group_index.0339.i, 1
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.end205.i, %if.end189.i.if.end207.i_crit_edge, %for.cond121.preheader.i.if.end207.i_crit_edge, %for.end118.thread.i.if.end207.i_crit_edge
  %group_index.1.i = phi i32 [ %inc206.i, %if.end205.i ], [ %group_index.0339.i, %if.end189.i.if.end207.i_crit_edge ], [ %group_index.0339.i, %for.cond121.preheader.i.if.end207.i_crit_edge ], [ %group_index.0339.i, %for.end118.thread.i.if.end207.i_crit_edge ]
  %inc208.i = add i32 %num_group.0341.i, 1
  br label %cleanup209.i

cleanup209.i:                                     ; preds = %if.end207.i, %for.body12.cleanup209_crit_edge.i
  %inc215.pre-phi.i = phi i32 [ %.pre.i, %for.body12.cleanup209_crit_edge.i ], [ %j.0313.i, %if.end207.i ]
  %group_index.2.i = phi i32 [ %group_index.0339.i, %for.body12.cleanup209_crit_edge.i ], [ %group_index.1.i, %if.end207.i ]
  %num_group.1.i = phi i32 [ %num_group.0341.i, %for.body12.cleanup209_crit_edge.i ], [ %inc208.i, %if.end207.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pipe_set.i) #16
  %exitcond350.not.i = icmp eq i32 %inc215.pre-phi.i, %21
  br i1 %exitcond350.not.i, label %cleanup209.i.program_timing_sync.exit_crit_edge, label %cleanup209.i.for.body12.i_crit_edge

cleanup209.i.for.body12.i_crit_edge:              ; preds = %cleanup209.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i

cleanup209.i.program_timing_sync.exit_crit_edge:  ; preds = %cleanup209.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %program_timing_sync.exit

program_timing_sync.exit:                         ; preds = %cleanup209.i.program_timing_sync.exit_crit_edge, %enable_timing_multisync.exit.program_timing_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %unsynced_pipes.i) #16
  br label %if.end

if.end:                                           ; preds = %program_timing_sync.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_commit_state(ptr noundef %dc, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  %pix_clk_100hz.i.i = alloca i32, align 4
  %dc_streams.i = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count.i, align 8
  %current_state.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %2 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state.i, align 4
  %stream_count1.i = getelementptr inbounds %struct.dc_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %stream_count1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stream_count1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp.not.i = icmp eq i8 %1, %5
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %.pre = zext i8 %1 to i32
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp824.not.i = icmp eq i8 %1, 0
  br i1 %cmp824.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count.i = zext i8 %1 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x ptr], ptr %3, i32 0, i32 %indvars.iv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx13.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %indvars.iv.i
  %8 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx13.i, align 4
  %cmp14.not.i = icmp ne ptr %7, %9
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i, i32 %wide.trip.count.i)
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.i = select i1 %cmp14.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %context_changed.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

context_changed.exit:                             ; preds = %for.body.i
  br i1 %cmp14.not.i, label %context_changed.exit.if.end_crit_edge, label %context_changed.exit.cleanup_crit_edge

context_changed.exit.cleanup_crit_edge:           ; preds = %context_changed.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

context_changed.exit.if.end_crit_edge:            ; preds = %context_changed.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %context_changed.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %wide.trip.count.i, %context_changed.exit.if.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dc_commit_state, i32 noundef %conv.pre-phi) #16
  %10 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp37.not = icmp eq i8 %11, 0
  br i1 %cmp37.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.038
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @dc_stream_log(ptr noundef %dc, ptr noundef %13) #16
  %inc = add nuw nsw i32 %i.038, 1
  %14 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %stream_count.i, align 8
  %conv2 = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call4 = tail call i32 @dc_validate_global_state(ptr noundef %dc, ptr noundef %context, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call ptr @dc_status_to_str(i32 noundef %call4) #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, ptr noundef %call8, i32 noundef %call4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool = icmp ne i32 %call4, 0
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %ctx.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 8
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dc_bios.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dc_streams.i) #16
  %20 = call ptr @memset(ptr %dc_streams.i, i32 0, i32 24)
  %21 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp547.not.i = icmp eq i8 %22, 0
  br i1 %cmp547.not.i, label %if.end9.for.end.i_crit_edge, label %for.body.preheader.i29

if.end9.for.end.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.preheader.i29:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = zext i8 %22 to i32
  %23 = shl nuw nsw i32 %conv.i, 2
  %24 = call ptr @memcpy(ptr %dc_streams.i, ptr %context, i32 %23)
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.preheader.i29, %if.end9.for.end.i_crit_edge
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %is_accelerated_mode.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %is_accelerated_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %is_accelerated_mode.i, align 4
  %call.i = tail call zeroext i1 %28(ptr noundef %19) #16
  br i1 %call.i, label %for.end.i.if.end.i_crit_edge, label %if.then.i

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %for.end.i
  %res_pool.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %29 = ptrtoint ptr %res_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %res_pool.i.i, align 8
  %pipe_count90.i.i = getelementptr inbounds %struct.resource_pool, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %pipe_count90.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pipe_count90.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp91.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp91.not.i.i, label %if.then.i.disable_vbios_mode_if_required.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.disable_vbios_mode_if_required.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_vbios_mode_if_required.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %res_ctx.i.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.092.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc58.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %i.092.i.i
  %stream1.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %i.092.i.i, i32 1
  %33 = ptrtoint ptr %stream1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %34, null
  br i1 %cmp2.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %prev_odm_pipe.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %i.092.i.i, i32 12
  %35 = ptrtoint ptr %prev_odm_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev_odm_pipe.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.cleanup.i.i_crit_edge

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %link5.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %link5.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %link5.i.i, align 4
  %local_sink.i.i = getelementptr inbounds %struct.dc_link, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %local_sink.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %local_sink.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i.i, label %if.end4.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i.i
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %42)
  %cmp9.i.i = icmp ne i32 %42, 128
  %cmp13.not.i.i = icmp eq ptr %38, null
  %or.cond.i.i = select i1 %cmp9.i.i, i1 true, i1 %cmp13.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge, label %land.lhs.true14.i.i

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i.i
  %link_enc.i.i = getelementptr inbounds %struct.dc_link, ptr %38, i32 0, i32 38
  %43 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link_enc.i.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %is_dig_enabled.i.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %is_dig_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %is_dig_enabled.i.i, align 4
  %call.i.i = call zeroext i1 %48(ptr noundef %44) #16
  br i1 %call.i.i, label %if.then16.i.i, label %land.lhs.true14.i.i.cleanup.i.i_crit_edge

land.lhs.true14.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pix_clk_100hz.i.i) #16
  %49 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %pix_clk_100hz.i.i, align 4, !annotation !106
  %50 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %link_enc.i.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %get_dig_frontend.i.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %get_dig_frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_dig_frontend.i.i, align 4
  %call20.i.i = call i32 %55(ptr noundef %51) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, -1
  br i1 %cmp21.not.i.i, label %if.then16.i.i.if.end53.i.i_crit_edge, label %for.cond23.preheader.i.i

if.then16.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53.i.i

for.cond23.preheader.i.i:                         ; preds = %if.then16.i.i
  %56 = ptrtoint ptr %res_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %res_pool.i.i, align 8
  %stream_enc_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %57, i32 0, i32 21
  %58 = ptrtoint ptr %stream_enc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stream_enc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp2588.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp2588.not.i.i, label %for.cond23.preheader.i.i.for.end.i.i_crit_edge, label %for.cond23.preheader.i.i.for.body26.i.i_crit_edge

for.cond23.preheader.i.i.for.body26.i.i_crit_edge: ; preds = %for.cond23.preheader.i.i
  br label %for.body26.i.i

for.cond23.preheader.i.i.for.end.i.i_crit_edge:   ; preds = %for.cond23.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond23.i.i:                                   ; preds = %for.body26.i.i
  %inc.i.i = add nuw i32 %j.089.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %59
  br i1 %exitcond.not.i.i, label %for.cond23.i.i.for.end.i.i_crit_edge, label %for.cond23.i.i.for.body26.i.i_crit_edge

for.cond23.i.i.for.body26.i.i_crit_edge:          ; preds = %for.cond23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body26.i.i

for.cond23.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body26.i.i:                                   ; preds = %for.cond23.i.i.for.body26.i.i_crit_edge, %for.cond23.preheader.i.i.for.body26.i.i_crit_edge
  %j.089.i.i = phi i32 [ %inc.i.i, %for.cond23.i.i.for.body26.i.i_crit_edge ], [ 0, %for.cond23.preheader.i.i.for.body26.i.i_crit_edge ]
  %arrayidx28.i.i = getelementptr %struct.resource_pool, ptr %57, i32 0, i32 7, i32 %j.089.i.i
  %60 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx28.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.stream_encoder, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %call20.i.i)
  %cmp29.i.i = icmp eq i32 %63, %call20.i.i
  br i1 %cmp29.i.i, label %if.then30.i.i, label %for.cond23.i.i

if.then30.i.i:                                    ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %dig_source_otg.i.i = getelementptr inbounds %struct.stream_encoder_funcs, ptr %65, i32 0, i32 22
  %66 = ptrtoint ptr %dig_source_otg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dig_source_otg.i.i, align 4
  %call38.i.i = call i32 %67(ptr noundef %61) #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then30.i.i, %for.cond23.i.i.for.end.i.i_crit_edge, %for.cond23.preheader.i.i.for.end.i.i_crit_edge
  %tg_inst.0.i.i = phi i32 [ %call38.i.i, %if.then30.i.i ], [ 0, %for.cond23.preheader.i.i.for.end.i.i_crit_edge ], [ 0, %for.cond23.i.i.for.end.i.i_crit_edge ]
  %68 = ptrtoint ptr %res_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %res_pool.i.i, align 8
  %dp_clock_source.i.i = getelementptr inbounds %struct.resource_pool, ptr %69, i32 0, i32 29
  %70 = ptrtoint ptr %dp_clock_source.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dp_clock_source.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %get_pixel_clk_frequency_100hz.i.i = getelementptr inbounds %struct.clock_source_funcs, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %get_pixel_clk_frequency_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_pixel_clk_frequency_100hz.i.i, align 4
  %call44.i.i = call zeroext i1 %75(ptr noundef %71, i32 noundef %tg_inst.0.i.i, ptr noundef nonnull %pix_clk_100hz.i.i) #16
  %link_status.i.i = getelementptr inbounds %struct.dc_link, ptr %38, i32 0, i32 56
  %76 = ptrtoint ptr %link_status.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %link_status.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool45.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool45.not.i.i, label %for.end.i.i.if.end53.i.i_crit_edge, label %if.then46.i.i

for.end.i.i.if.end53.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53.i.i

if.then46.i.i:                                    ; preds = %for.end.i.i
  %pix_clk_params.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %i.092.i.i, i32 3, i32 5
  %78 = ptrtoint ptr %pix_clk_params.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pix_clk_params.i.i, align 4
  %80 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pix_clk_100hz.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %79)
  %cmp48.not.i.i = icmp eq i32 %81, %79
  br i1 %cmp48.not.i.i, label %if.then46.i.i.if.end53.i.i_crit_edge, label %if.then49.i.i

if.then46.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53.i.i

if.then49.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @core_link_disable_stream(ptr noundef %arrayidx.i.i) #16
  %82 = ptrtoint ptr %stream1.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stream1.i.i, align 4
  %dpms_off.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %83, i32 0, i32 37
  %84 = ptrtoint ptr %dpms_off.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %dpms_off.i.i, align 8
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then49.i.i, %if.then46.i.i.if.end53.i.i_crit_edge, %for.end.i.i.if.end53.i.i_crit_edge, %if.then16.i.i.if.end53.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix_clk_100hz.i.i) #16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end53.i.i, %land.lhs.true14.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %if.end4.i.i.cleanup.i.i_crit_edge, %if.end.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %inc58.i.i = add nuw i32 %i.092.i.i, 1
  %85 = ptrtoint ptr %res_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %res_pool.i.i, align 8
  %pipe_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %86, i32 0, i32 19
  %87 = ptrtoint ptr %pipe_count.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pipe_count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc58.i.i, %88
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.disable_vbios_mode_if_required.exit.i_crit_edge

cleanup.i.i.disable_vbios_mode_if_required.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_vbios_mode_if_required.exit.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

disable_vbios_mode_if_required.exit.i:            ; preds = %cleanup.i.i.disable_vbios_mode_if_required.exit.i_crit_edge, %if.then.i.disable_vbios_mode_if_required.exit.i_crit_edge
  %enable_accelerated_mode.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 6
  %89 = ptrtoint ptr %enable_accelerated_mode.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %enable_accelerated_mode.i, align 4
  call void %90(ptr noundef %dc, ptr noundef %context) #16
  br label %if.end.i

if.end.i:                                         ; preds = %disable_vbios_mode_if_required.exit.i, %for.end.i.if.end.i_crit_edge
  %91 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %stream_count.i, align 8
  %conv4.i = zext i8 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp9.not.i.i = icmp eq i8 %92, 0
  br i1 %cmp9.not.i.i, label %if.end.i.if.then12.i_crit_edge, label %if.end.i.for.body.i365.i_crit_edge

if.end.i.for.body.i365.i_crit_edge:               ; preds = %if.end.i
  br label %for.body.i365.i

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12.i

for.body.i365.i:                                  ; preds = %for.body.i365.i.for.body.i365.i_crit_edge, %if.end.i.for.body.i365.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.body.i365.i.for.body.i365.i_crit_edge ], [ 0, %if.end.i.for.body.i365.i_crit_edge ]
  %seamless_boot_stream_count.011.i.i = phi i8 [ %spec.select.i.i, %for.body.i365.i.for.body.i365.i_crit_edge ], [ 0, %if.end.i.for.body.i365.i_crit_edge ]
  %arrayidx.i363.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %indvars.iv.i.i
  %93 = ptrtoint ptr %arrayidx.i363.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i363.i, align 4
  %apply_seamless_boot_optimization.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %94, i32 0, i32 51
  %95 = ptrtoint ptr %apply_seamless_boot_optimization.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %apply_seamless_boot_optimization.i.i, align 1, !range !111
  %spec.select.i.i = add i8 %96, %seamless_boot_stream_count.011.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i364.i = icmp eq i32 %indvars.iv.next.i.i, %conv4.i
  br i1 %exitcond.not.i364.i, label %get_seamless_boot_stream_count.exit.i, label %for.body.i365.i.for.body.i365.i_crit_edge

for.body.i365.i.for.body.i365.i_crit_edge:        ; preds = %for.body.i365.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i365.i

get_seamless_boot_stream_count.exit.i:            ; preds = %for.body.i365.i
  %97 = add i8 %92, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %spec.select.i.i)
  %.not.i = icmp ult i8 %97, %spec.select.i.i
  br i1 %.not.i, label %get_seamless_boot_stream_count.exit.i.if.end14.i_crit_edge, label %get_seamless_boot_stream_count.exit.i.if.then12.i_crit_edge

get_seamless_boot_stream_count.exit.i.if.then12.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12.i

get_seamless_boot_stream_count.exit.i.if.end14.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.then12.i:                                      ; preds = %get_seamless_boot_stream_count.exit.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge
  %prepare_bandwidth.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 39
  %98 = ptrtoint ptr %prepare_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prepare_bandwidth.i, align 4
  call void %99(ptr noundef %dc, ptr noundef %context) #16
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %get_seamless_boot_stream_count.exit.i.if.end14.i_crit_edge
  %call.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 67552, i32 noundef 3520, i32 noundef -1) #21
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end14.i.disable_dangling_plane.exit.i_crit_edge, label %if.end.i368.i

if.end14.i.disable_dangling_plane.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_dangling_plane.exit.i

if.end.i368.i:                                    ; preds = %if.end14.i
  %refcount.i.i.i = getelementptr inbounds %struct.dc_state, ptr %call.i.i.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #16
  %100 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 1, ptr %refcount.i.i.i, align 4
  %101 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %current_state.i, align 4
  call void @dc_resource_state_copy_construct(ptr noundef %102, ptr noundef nonnull %call.i.i.i.i.i) #16
  %res_pool.i367.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %103 = ptrtoint ptr %res_pool.i367.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %res_pool.i367.i, align 8
  %pipe_count153.i.i = getelementptr inbounds %struct.resource_pool, ptr %104, i32 0, i32 19
  %105 = ptrtoint ptr %pipe_count153.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pipe_count153.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp1154.not.i.i = icmp eq i32 %106, 0
  br i1 %cmp1154.not.i.i, label %if.end.i368.i.for.end55.i.i_crit_edge, label %for.body.lr.ph.i370.i

if.end.i368.i.for.end55.i.i_crit_edge:            ; preds = %if.end.i368.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end55.i.i

for.body.lr.ph.i370.i:                            ; preds = %if.end.i368.i
  %res_ctx3.i.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %apply_ctx_for_surface.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 10
  %interdependent_update_lock.i.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 22
  %pipe_control_lock.i.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %post_unlock_program_front_end.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 13
  %program_front_end_for_ctx.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 11
  br label %for.body.i372.i

for.body.i372.i:                                  ; preds = %if.end52.i.i.for.body.i372.i_crit_edge, %for.body.lr.ph.i370.i
  %i.0155.i.i = phi i32 [ 0, %for.body.lr.ph.i370.i ], [ %inc54.i.i, %if.end52.i.i.for.body.i372.i_crit_edge ]
  %107 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %current_state.i, align 4
  %res_ctx.i371.i = getelementptr inbounds %struct.dc_state, ptr %108, i32 0, i32 4
  %stream.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i371.i, i32 0, i32 %i.0155.i.i, i32 1
  %109 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %stream.i.i, align 4
  %top_pipe.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx3.i.i, i32 0, i32 %i.0155.i.i, i32 9
  %111 = ptrtoint ptr %top_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %top_pipe.i.i, align 4
  %top_pipe10.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i371.i, i32 0, i32 %i.0155.i.i, i32 9
  %113 = ptrtoint ptr %top_pipe10.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %top_pipe10.i.i, align 4
  %cmp11.not.i.i = icmp eq ptr %112, %114
  %115 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %stream_count.i, align 8
  %conv.i.i = zext i8 %116 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp13150.not.i.i = icmp eq i8 %116, 0
  br i1 %cmp13150.not.i.i, label %for.body.i372.i.for.end.i376.i_crit_edge, label %for.body.i372.i.for.body15.i.i_crit_edge

for.body.i372.i.for.body15.i.i_crit_edge:         ; preds = %for.body.i372.i
  br label %for.body15.i.i

for.body.i372.i.for.end.i376.i_crit_edge:         ; preds = %for.body.i372.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i376.i

for.cond12.i.i:                                   ; preds = %for.body15.i.i
  %inc.i373.i = add nuw nsw i32 %j.0151.i.i, 1
  %exitcond.not.i374.i = icmp eq i32 %inc.i373.i, %conv.i.i
  br i1 %exitcond.not.i374.i, label %for.cond12.i.i.for.end.i376.i_crit_edge, label %for.cond12.i.i.for.body15.i.i_crit_edge

for.cond12.i.i.for.body15.i.i_crit_edge:          ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body15.i.i

for.cond12.i.i.for.end.i376.i_crit_edge:          ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i376.i

for.body15.i.i:                                   ; preds = %for.cond12.i.i.for.body15.i.i_crit_edge, %for.body.i372.i.for.body15.i.i_crit_edge
  %j.0151.i.i = phi i32 [ %inc.i373.i, %for.cond12.i.i.for.body15.i.i_crit_edge ], [ 0, %for.body.i372.i.for.body15.i.i_crit_edge ]
  %arrayidx16.i.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %j.0151.i.i
  %117 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx16.i.i, align 4
  %cmp17.i.i = icmp eq ptr %110, %118
  br i1 %cmp17.i.i, label %for.body15.i.i.for.end.i376.i_crit_edge, label %for.cond12.i.i

for.body15.i.i.for.end.i376.i_crit_edge:          ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i376.i

for.end.i376.i:                                   ; preds = %for.body15.i.i.for.end.i376.i_crit_edge, %for.cond12.i.i.for.end.i376.i_crit_edge, %for.body.i372.i.for.end.i376.i_crit_edge
  %should_disable.1.off0.not.i.i = phi i1 [ false, %for.body.i372.i.for.end.i376.i_crit_edge ], [ %cmp11.not.i.i, %for.body15.i.i.for.end.i376.i_crit_edge ], [ false, %for.cond12.i.i.for.end.i376.i_crit_edge ]
  %tobool28.not.i.i = icmp eq ptr %110, null
  %or.cond.i375.i = select i1 %should_disable.1.off0.not.i.i, i1 true, i1 %tobool28.not.i.i
  br i1 %or.cond.i375.i, label %for.end.i376.i.if.end52.i.i_crit_edge, label %if.then29.i.i

for.end.i376.i.if.end52.i.i_crit_edge:            ; preds = %for.end.i376.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i.i

if.then29.i.i:                                    ; preds = %for.end.i376.i
  %call30.i.i = call zeroext i1 @dc_rem_all_planes_for_stream(ptr noundef %dc, ptr noundef nonnull %110, ptr noundef nonnull %call.i.i.i.i.i) #16
  %num_wb_info.i.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %110, i32 0, i32 44
  %119 = ptrtoint ptr %num_wb_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_wb_info.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp1.not.i.i.i = icmp eq i32 %120, 0
  br i1 %cmp1.not.i.i.i, label %if.then29.i.i.disable_all_writeback_pipes_for_stream.exit.i.i_crit_edge, label %if.then29.i.i.for.body.i.i.i_crit_edge

if.then29.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then29.i.i
  br label %for.body.i.i.i

if.then29.i.i.disable_all_writeback_pipes_for_stream.exit.i.i_crit_edge: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_all_writeback_pipes_for_stream.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then29.i.i.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then29.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dc_stream_state, ptr %110, i32 0, i32 45, i32 %i.02.i.i.i
  %121 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx.i.i.i, align 8
  %inc.i.i.i = add nuw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %120
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.disable_all_writeback_pipes_for_stream.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.body.i.i.i.disable_all_writeback_pipes_for_stream.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_all_writeback_pipes_for_stream.exit.i.i

disable_all_writeback_pipes_for_stream.exit.i.i:  ; preds = %for.body.i.i.i.disable_all_writeback_pipes_for_stream.exit.i.i_crit_edge, %if.then29.i.i.disable_all_writeback_pipes_for_stream.exit.i.i_crit_edge
  %122 = ptrtoint ptr %apply_ctx_for_surface.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %apply_ctx_for_surface.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %123, null
  br i1 %tobool31.not.i.i, label %disable_all_writeback_pipes_for_stream.exit.i.i.if.end38.i.i_crit_edge, label %if.then32.i.i

disable_all_writeback_pipes_for_stream.exit.i.i.if.end38.i.i_crit_edge: ; preds = %disable_all_writeback_pipes_for_stream.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i.i

if.then32.i.i:                                    ; preds = %disable_all_writeback_pipes_for_stream.exit.i.i
  %124 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %current_state.i, align 4
  %126 = ptrtoint ptr %interdependent_update_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %interdependent_update_lock.i.i.i, align 4
  %tobool.not.i114.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i114.i.i, label %for.cond.preheader.i.i.i, label %if.then.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.then32.i.i
  %128 = ptrtoint ptr %res_pool.i367.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %res_pool.i367.i, align 8
  %pipe_count34.i.i.i = getelementptr inbounds %struct.resource_pool, ptr %129, i32 0, i32 19
  %130 = ptrtoint ptr %pipe_count34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pipe_count34.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp35.not.i.i.i = icmp eq i32 %131, 0
  br i1 %cmp35.not.i.i.i, label %for.cond.preheader.i.i.i.apply_ctx_interdependent_lock.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.apply_ctx_interdependent_lock.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %res_ctx.i.i.i = getelementptr inbounds %struct.dc_state, ptr %125, i32 0, i32 4
  br label %for.body.i116.i.i

if.then.i.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %127(ptr noundef %dc, ptr noundef %125, i1 noundef zeroext true) #16
  br label %apply_ctx_interdependent_lock.exit.i.i

for.body.i116.i.i:                                ; preds = %if.end18.i.i.i.for.body.i116.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.036.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i117.i.i, %if.end18.i.i.i.for.body.i116.i.i_crit_edge ]
  %arrayidx.i115.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i.i, i32 0, i32 %i.036.i.i.i
  %132 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %current_state.i, align 4
  %res_ctx5.i.i.i = getelementptr inbounds %struct.dc_state, ptr %133, i32 0, i32 4
  %arrayidx7.i.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx5.i.i.i, i32 0, i32 %i.036.i.i.i
  %stream8.i.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i.i, i32 0, i32 %i.036.i.i.i, i32 1
  %134 = ptrtoint ptr %stream8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %stream8.i.i.i, align 4
  %cmp9.i.i.i = icmp eq ptr %135, %110
  br i1 %cmp9.i.i.i, label %if.then10.i.i.i, label %for.body.i116.i.i.if.end18.i.i.i_crit_edge

for.body.i116.i.i.if.end18.i.i.i_crit_edge:       ; preds = %for.body.i116.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i.i

if.then10.i.i.i:                                  ; preds = %for.body.i116.i.i
  %top_pipe.i.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i.i, i32 0, i32 %i.036.i.i.i, i32 9
  %136 = ptrtoint ptr %top_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %top_pipe.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %137, null
  br i1 %tobool11.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then10.i.i.i.if.end18.i.i.i_crit_edge

if.then10.i.i.i.if.end18.i.i.i_crit_edge:         ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then10.i.i.i
  %138 = ptrtoint ptr %arrayidx.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i115.i.i, align 8
  %tobool12.not.i.i.i = icmp eq ptr %139, null
  br i1 %tobool12.not.i.i.i, label %lor.lhs.false.i.i.i, label %land.lhs.true.i.i.i.if.then15.i.i.i_crit_edge

land.lhs.true.i.i.i.if.then15.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  %140 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx7.i.i.i, align 8
  %tobool14.not.i.i.i = icmp eq ptr %141, null
  br i1 %tobool14.not.i.i.i, label %lor.lhs.false.i.i.i.if.end18.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.then15.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then15.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i.i

lor.lhs.false.i.i.i.if.end18.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i.i

if.then15.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then15.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then15.i.i.i_crit_edge
  %142 = ptrtoint ptr %pipe_control_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pipe_control_lock.i.i.i, align 4
  call void %143(ptr noundef %dc, ptr noundef %arrayidx.i115.i.i, i1 noundef zeroext true) #16
  br label %if.end18.i.i.i

if.end18.i.i.i:                                   ; preds = %if.then15.i.i.i, %lor.lhs.false.i.i.i.if.end18.i.i.i_crit_edge, %if.then10.i.i.i.if.end18.i.i.i_crit_edge, %for.body.i116.i.i.if.end18.i.i.i_crit_edge
  %inc.i117.i.i = add nuw i32 %i.036.i.i.i, 1
  %144 = ptrtoint ptr %res_pool.i367.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %res_pool.i367.i, align 8
  %pipe_count.i.i.i = getelementptr inbounds %struct.resource_pool, ptr %145, i32 0, i32 19
  %146 = ptrtoint ptr %pipe_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pipe_count.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i117.i.i, %147
  br i1 %cmp.i.i.i, label %if.end18.i.i.i.for.body.i116.i.i_crit_edge, label %if.end18.i.i.i.apply_ctx_interdependent_lock.exit.i.i_crit_edge

if.end18.i.i.i.apply_ctx_interdependent_lock.exit.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit.i.i

if.end18.i.i.i.for.body.i116.i.i_crit_edge:       ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i116.i.i

apply_ctx_interdependent_lock.exit.i.i:           ; preds = %if.end18.i.i.i.apply_ctx_interdependent_lock.exit.i.i_crit_edge, %if.then.i.i.i, %for.cond.preheader.i.i.i.apply_ctx_interdependent_lock.exit.i.i_crit_edge
  %148 = ptrtoint ptr %apply_ctx_for_surface.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %apply_ctx_for_surface.i.i, align 4
  call void %149(ptr noundef %dc, ptr noundef nonnull %110, i32 noundef 0, ptr noundef nonnull %call.i.i.i.i.i) #16
  %150 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %current_state.i, align 4
  %152 = ptrtoint ptr %interdependent_update_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %interdependent_update_lock.i.i.i, align 4
  %tobool.not.i119.i.i = icmp eq ptr %153, null
  br i1 %tobool.not.i119.i.i, label %for.cond.preheader.i123.i.i, label %if.then.i128.i.i

for.cond.preheader.i123.i.i:                      ; preds = %apply_ctx_interdependent_lock.exit.i.i
  %154 = ptrtoint ptr %res_pool.i367.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %res_pool.i367.i, align 8
  %pipe_count34.i121.i.i = getelementptr inbounds %struct.resource_pool, ptr %155, i32 0, i32 19
  %156 = ptrtoint ptr %pipe_count34.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pipe_count34.i121.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp35.not.i122.i.i = icmp eq i32 %157, 0
  br i1 %cmp35.not.i122.i.i, label %for.cond.preheader.i123.i.i.apply_ctx_interdependent_lock.exit148.i.i_crit_edge, label %for.body.lr.ph.i127.i.i

for.cond.preheader.i123.i.i.apply_ctx_interdependent_lock.exit148.i.i_crit_edge: ; preds = %for.cond.preheader.i123.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit148.i.i

for.body.lr.ph.i127.i.i:                          ; preds = %for.cond.preheader.i123.i.i
  %res_ctx.i124.i.i = getelementptr inbounds %struct.dc_state, ptr %151, i32 0, i32 4
  br label %for.body.i135.i.i

if.then.i128.i.i:                                 ; preds = %apply_ctx_interdependent_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %153(ptr noundef %dc, ptr noundef %151, i1 noundef zeroext false) #16
  br label %apply_ctx_interdependent_lock.exit148.i.i

for.body.i135.i.i:                                ; preds = %if.end18.i147.i.i.for.body.i135.i.i_crit_edge, %for.body.lr.ph.i127.i.i
  %i.036.i129.i.i = phi i32 [ 0, %for.body.lr.ph.i127.i.i ], [ %inc.i144.i.i, %if.end18.i147.i.i.for.body.i135.i.i_crit_edge ]
  %arrayidx.i130.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i124.i.i, i32 0, i32 %i.036.i129.i.i
  %158 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %current_state.i, align 4
  %res_ctx5.i131.i.i = getelementptr inbounds %struct.dc_state, ptr %159, i32 0, i32 4
  %arrayidx7.i132.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx5.i131.i.i, i32 0, i32 %i.036.i129.i.i
  %stream8.i133.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i124.i.i, i32 0, i32 %i.036.i129.i.i, i32 1
  %160 = ptrtoint ptr %stream8.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %stream8.i133.i.i, align 4
  %cmp9.i134.i.i = icmp eq ptr %161, %110
  br i1 %cmp9.i134.i.i, label %if.then10.i138.i.i, label %for.body.i135.i.i.if.end18.i147.i.i_crit_edge

for.body.i135.i.i.if.end18.i147.i.i_crit_edge:    ; preds = %for.body.i135.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i147.i.i

if.then10.i138.i.i:                               ; preds = %for.body.i135.i.i
  %top_pipe.i136.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i124.i.i, i32 0, i32 %i.036.i129.i.i, i32 9
  %162 = ptrtoint ptr %top_pipe.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %top_pipe.i136.i.i, align 4
  %tobool11.not.i137.i.i = icmp eq ptr %163, null
  br i1 %tobool11.not.i137.i.i, label %land.lhs.true.i140.i.i, label %if.then10.i138.i.i.if.end18.i147.i.i_crit_edge

if.then10.i138.i.i.if.end18.i147.i.i_crit_edge:   ; preds = %if.then10.i138.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i147.i.i

land.lhs.true.i140.i.i:                           ; preds = %if.then10.i138.i.i
  %164 = ptrtoint ptr %arrayidx.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i130.i.i, align 8
  %tobool12.not.i139.i.i = icmp eq ptr %165, null
  br i1 %tobool12.not.i139.i.i, label %lor.lhs.false.i142.i.i, label %land.lhs.true.i140.i.i.if.then15.i143.i.i_crit_edge

land.lhs.true.i140.i.i.if.then15.i143.i.i_crit_edge: ; preds = %land.lhs.true.i140.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i143.i.i

lor.lhs.false.i142.i.i:                           ; preds = %land.lhs.true.i140.i.i
  %166 = ptrtoint ptr %arrayidx7.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx7.i132.i.i, align 8
  %tobool14.not.i141.i.i = icmp eq ptr %167, null
  br i1 %tobool14.not.i141.i.i, label %lor.lhs.false.i142.i.i.if.end18.i147.i.i_crit_edge, label %lor.lhs.false.i142.i.i.if.then15.i143.i.i_crit_edge

lor.lhs.false.i142.i.i.if.then15.i143.i.i_crit_edge: ; preds = %lor.lhs.false.i142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i143.i.i

lor.lhs.false.i142.i.i.if.end18.i147.i.i_crit_edge: ; preds = %lor.lhs.false.i142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i147.i.i

if.then15.i143.i.i:                               ; preds = %lor.lhs.false.i142.i.i.if.then15.i143.i.i_crit_edge, %land.lhs.true.i140.i.i.if.then15.i143.i.i_crit_edge
  %168 = ptrtoint ptr %pipe_control_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pipe_control_lock.i.i.i, align 4
  call void %169(ptr noundef %dc, ptr noundef %arrayidx.i130.i.i, i1 noundef zeroext false) #16
  br label %if.end18.i147.i.i

if.end18.i147.i.i:                                ; preds = %if.then15.i143.i.i, %lor.lhs.false.i142.i.i.if.end18.i147.i.i_crit_edge, %if.then10.i138.i.i.if.end18.i147.i.i_crit_edge, %for.body.i135.i.i.if.end18.i147.i.i_crit_edge
  %inc.i144.i.i = add nuw i32 %i.036.i129.i.i, 1
  %170 = ptrtoint ptr %res_pool.i367.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %res_pool.i367.i, align 8
  %pipe_count.i145.i.i = getelementptr inbounds %struct.resource_pool, ptr %171, i32 0, i32 19
  %172 = ptrtoint ptr %pipe_count.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pipe_count.i145.i.i, align 4
  %cmp.i146.i.i = icmp ult i32 %inc.i144.i.i, %173
  br i1 %cmp.i146.i.i, label %if.end18.i147.i.i.for.body.i135.i.i_crit_edge, label %if.end18.i147.i.i.apply_ctx_interdependent_lock.exit148.i.i_crit_edge

if.end18.i147.i.i.apply_ctx_interdependent_lock.exit148.i.i_crit_edge: ; preds = %if.end18.i147.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit148.i.i

if.end18.i147.i.i.for.body.i135.i.i_crit_edge:    ; preds = %if.end18.i147.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i135.i.i

apply_ctx_interdependent_lock.exit148.i.i:        ; preds = %if.end18.i147.i.i.apply_ctx_interdependent_lock.exit148.i.i_crit_edge, %if.then.i128.i.i, %for.cond.preheader.i123.i.i.apply_ctx_interdependent_lock.exit148.i.i_crit_edge
  %174 = ptrtoint ptr %post_unlock_program_front_end.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %post_unlock_program_front_end.i.i, align 4
  call void %175(ptr noundef %dc, ptr noundef nonnull %call.i.i.i.i.i) #16
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %apply_ctx_interdependent_lock.exit148.i.i, %disable_all_writeback_pipes_for_stream.exit.i.i.if.end38.i.i_crit_edge
  %176 = ptrtoint ptr %program_front_end_for_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %program_front_end_for_ctx.i.i, align 4
  %tobool40.not.i.i = icmp eq ptr %177, null
  br i1 %tobool40.not.i.i, label %if.end38.i.i.if.end52.i.i_crit_edge, label %if.then41.i.i

if.end38.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i.i

if.then41.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %178 = ptrtoint ptr %interdependent_update_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %interdependent_update_lock.i.i.i, align 4
  %180 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %current_state.i, align 4
  call void %179(ptr noundef %dc, ptr noundef %181, i1 noundef zeroext true) #16
  %182 = ptrtoint ptr %program_front_end_for_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %program_front_end_for_ctx.i.i, align 4
  call void %183(ptr noundef %dc, ptr noundef nonnull %call.i.i.i.i.i) #16
  %184 = ptrtoint ptr %interdependent_update_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %interdependent_update_lock.i.i.i, align 4
  %186 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %current_state.i, align 4
  call void %185(ptr noundef %dc, ptr noundef %187, i1 noundef zeroext false) #16
  %188 = ptrtoint ptr %post_unlock_program_front_end.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %post_unlock_program_front_end.i.i, align 4
  call void %189(ptr noundef %dc, ptr noundef nonnull %call.i.i.i.i.i) #16
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then41.i.i, %if.end38.i.i.if.end52.i.i_crit_edge, %for.end.i376.i.if.end52.i.i_crit_edge
  %inc54.i.i = add nuw i32 %i.0155.i.i, 1
  %190 = ptrtoint ptr %res_pool.i367.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %res_pool.i367.i, align 8
  %pipe_count.i377.i = getelementptr inbounds %struct.resource_pool, ptr %191, i32 0, i32 19
  %192 = ptrtoint ptr %pipe_count.i377.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %pipe_count.i377.i, align 4
  %cmp1.i.i = icmp ult i32 %inc54.i.i, %193
  br i1 %cmp1.i.i, label %if.end52.i.i.for.body.i372.i_crit_edge, label %if.end52.i.i.for.end55.i.i_crit_edge

if.end52.i.i.for.end55.i.i_crit_edge:             ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end55.i.i

if.end52.i.i.for.body.i372.i_crit_edge:           ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i372.i

for.end55.i.i:                                    ; preds = %if.end52.i.i.for.end55.i.i_crit_edge, %if.end.i368.i.for.end55.i.i_crit_edge
  %194 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %current_state.i, align 4
  store ptr %call.i.i.i.i.i, ptr %current_state.i, align 4
  %refcount.i149.i.i = getelementptr inbounds %struct.dc_state, ptr %195, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i149.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !107
  call void @llvm.prefetch.p0(ptr %refcount.i149.i.i, i32 1, i32 3, i32 1) #16
  %196 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i149.i.i, ptr %refcount.i149.i.i, i32 1, ptr elementtype(i32) %refcount.i149.i.i) #16, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %196, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %for.end55.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.disable_dangling_plane.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !109

if.end5.i.i.i.i.i.i.i.disable_dangling_plane.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disable_dangling_plane.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i149.i.i, i32 noundef 3) #16
  br label %disable_dangling_plane.exit.i

if.then.i.i.i.i:                                  ; preds = %for.end55.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !110
  call void @dc_resource_state_destruct(ptr noundef %195) #16
  call void @kvfree(ptr noundef %195) #16
  br label %disable_dangling_plane.exit.i

disable_dangling_plane.exit.i:                    ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.disable_dangling_plane.exit.i_crit_edge, %if.end14.i.disable_dangling_plane.exit.i_crit_edge
  %apply_ctx_for_surface.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 10
  %197 = ptrtoint ptr %apply_ctx_for_surface.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %apply_ctx_for_surface.i, align 4
  %tobool.not.i = icmp eq ptr %198, null
  br i1 %tobool.not.i, label %disable_dangling_plane.exit.i.if.end40.i_crit_edge, label %for.cond17.preheader.i

disable_dangling_plane.exit.i.if.end40.i_crit_edge: ; preds = %disable_dangling_plane.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i

for.cond17.preheader.i:                           ; preds = %disable_dangling_plane.exit.i
  %199 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp20550.not.i = icmp eq i8 %200, 0
  br i1 %cmp20550.not.i, label %for.cond17.preheader.i.if.end40.i_crit_edge, label %for.body22.lr.ph.i

for.cond17.preheader.i.if.end40.i_crit_edge:      ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i

for.body22.lr.ph.i:                               ; preds = %for.cond17.preheader.i
  %interdependent_update_lock.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 22
  %res_pool.i380.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %res_ctx.i381.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %pipe_control_lock.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %post_unlock_program_front_end.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 13
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.inc37.i.for.body22.i_crit_edge, %for.body22.lr.ph.i
  %i.1551.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %inc38.i, %for.inc37.i.for.body22.i_crit_edge ]
  %arrayidx24.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.1551.i
  %201 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx24.i, align 4
  %mode_changed.i = getelementptr inbounds %struct.dc_stream_state, ptr %202, i32 0, i32 48
  %203 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %bf.load.i = load i8, ptr %mode_changed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.end26.i, label %for.body22.i.for.inc37.i_crit_edge

for.body22.i.for.inc37.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc37.i

if.end26.i:                                       ; preds = %for.body22.i
  %204 = ptrtoint ptr %interdependent_update_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %interdependent_update_lock.i.i, align 4
  %tobool.not.i379.i = icmp eq ptr %205, null
  br i1 %tobool.not.i379.i, label %for.cond.preheader.i.i, label %if.then.i.i

for.cond.preheader.i.i:                           ; preds = %if.end26.i
  %206 = ptrtoint ptr %res_pool.i380.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %res_pool.i380.i, align 8
  %pipe_count34.i.i = getelementptr inbounds %struct.resource_pool, ptr %207, i32 0, i32 19
  %208 = ptrtoint ptr %pipe_count34.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %pipe_count34.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp35.not.i.i = icmp eq i32 %209, 0
  br i1 %cmp35.not.i.i, label %for.cond.preheader.i.i.apply_ctx_interdependent_lock.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i386.i_crit_edge

for.cond.preheader.i.i.for.body.i386.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i386.i

for.cond.preheader.i.i.apply_ctx_interdependent_lock.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit.i

if.then.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %205(ptr noundef %dc, ptr noundef %context, i1 noundef zeroext true) #16
  br label %apply_ctx_interdependent_lock.exit.i

for.body.i386.i:                                  ; preds = %if.end18.i.i.for.body.i386.i_crit_edge, %for.cond.preheader.i.i.for.body.i386.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i389.i, %if.end18.i.i.for.body.i386.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i386.i_crit_edge ]
  %arrayidx.i384.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i381.i, i32 0, i32 %i.036.i.i
  %210 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %current_state.i, align 4
  %res_ctx5.i.i = getelementptr inbounds %struct.dc_state, ptr %211, i32 0, i32 4
  %arrayidx7.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx5.i.i, i32 0, i32 %i.036.i.i
  %stream8.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i381.i, i32 0, i32 %i.036.i.i, i32 1
  %212 = ptrtoint ptr %stream8.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %stream8.i.i, align 4
  %cmp9.i385.i = icmp eq ptr %213, %202
  br i1 %cmp9.i385.i, label %if.then10.i.i, label %for.body.i386.i.if.end18.i.i_crit_edge

for.body.i386.i.if.end18.i.i_crit_edge:           ; preds = %for.body.i386.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

if.then10.i.i:                                    ; preds = %for.body.i386.i
  %top_pipe.i387.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i381.i, i32 0, i32 %i.036.i.i, i32 9
  %214 = ptrtoint ptr %top_pipe.i387.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %top_pipe.i387.i, align 4
  %tobool11.not.i.i = icmp eq ptr %215, null
  br i1 %tobool11.not.i.i, label %land.lhs.true.i388.i, label %if.then10.i.i.if.end18.i.i_crit_edge

if.then10.i.i.if.end18.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

land.lhs.true.i388.i:                             ; preds = %if.then10.i.i
  %216 = ptrtoint ptr %arrayidx.i384.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx.i384.i, align 8
  %tobool12.not.i.i = icmp eq ptr %217, null
  br i1 %tobool12.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true.i388.i.if.then15.i.i_crit_edge

land.lhs.true.i388.i.if.then15.i.i_crit_edge:     ; preds = %land.lhs.true.i388.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i388.i
  %218 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx7.i.i, align 8
  %tobool14.not.i.i = icmp eq ptr %219, null
  br i1 %tobool14.not.i.i, label %lor.lhs.false.i.i.if.end18.i.i_crit_edge, label %lor.lhs.false.i.i.if.then15.i.i_crit_edge

lor.lhs.false.i.i.if.then15.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i

lor.lhs.false.i.i.if.end18.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then15.i.i_crit_edge, %land.lhs.true.i388.i.if.then15.i.i_crit_edge
  %220 = ptrtoint ptr %pipe_control_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pipe_control_lock.i.i, align 4
  call void %221(ptr noundef %dc, ptr noundef %arrayidx.i384.i, i1 noundef zeroext true) #16
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %lor.lhs.false.i.i.if.end18.i.i_crit_edge, %if.then10.i.i.if.end18.i.i_crit_edge, %for.body.i386.i.if.end18.i.i_crit_edge
  %inc.i389.i = add nuw i32 %i.036.i.i, 1
  %222 = ptrtoint ptr %res_pool.i380.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %res_pool.i380.i, align 8
  %pipe_count.i390.i = getelementptr inbounds %struct.resource_pool, ptr %223, i32 0, i32 19
  %224 = ptrtoint ptr %pipe_count.i390.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pipe_count.i390.i, align 4
  %cmp.i391.i = icmp ult i32 %inc.i389.i, %225
  br i1 %cmp.i391.i, label %if.end18.i.i.for.body.i386.i_crit_edge, label %if.end18.i.i.apply_ctx_interdependent_lock.exit.i_crit_edge

if.end18.i.i.apply_ctx_interdependent_lock.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit.i

if.end18.i.i.for.body.i386.i_crit_edge:           ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i386.i

apply_ctx_interdependent_lock.exit.i:             ; preds = %if.end18.i.i.apply_ctx_interdependent_lock.exit.i_crit_edge, %if.then.i.i, %for.cond.preheader.i.i.apply_ctx_interdependent_lock.exit.i_crit_edge
  %226 = ptrtoint ptr %apply_ctx_for_surface.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %apply_ctx_for_surface.i, align 4
  %228 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx24.i, align 4
  %plane_count.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.1551.i, i32 2
  %230 = ptrtoint ptr %plane_count.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %plane_count.i, align 8
  call void %227(ptr noundef %dc, ptr noundef %229, i32 noundef %231, ptr noundef %context) #16
  %232 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx24.i, align 4
  %234 = ptrtoint ptr %interdependent_update_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %interdependent_update_lock.i.i, align 4
  %tobool.not.i393.i = icmp eq ptr %235, null
  br i1 %tobool.not.i393.i, label %for.cond.preheader.i397.i, label %if.then.i402.i

for.cond.preheader.i397.i:                        ; preds = %apply_ctx_interdependent_lock.exit.i
  %236 = ptrtoint ptr %res_pool.i380.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %res_pool.i380.i, align 8
  %pipe_count34.i395.i = getelementptr inbounds %struct.resource_pool, ptr %237, i32 0, i32 19
  %238 = ptrtoint ptr %pipe_count34.i395.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %pipe_count34.i395.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp35.not.i396.i = icmp eq i32 %239, 0
  br i1 %cmp35.not.i396.i, label %for.cond.preheader.i397.i.apply_ctx_interdependent_lock.exit422.i_crit_edge, label %for.cond.preheader.i397.i.for.body.i409.i_crit_edge

for.cond.preheader.i397.i.for.body.i409.i_crit_edge: ; preds = %for.cond.preheader.i397.i
  br label %for.body.i409.i

for.cond.preheader.i397.i.apply_ctx_interdependent_lock.exit422.i_crit_edge: ; preds = %for.cond.preheader.i397.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit422.i

if.then.i402.i:                                   ; preds = %apply_ctx_interdependent_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %235(ptr noundef %dc, ptr noundef %context, i1 noundef zeroext false) #16
  br label %apply_ctx_interdependent_lock.exit422.i

for.body.i409.i:                                  ; preds = %if.end18.i421.i.for.body.i409.i_crit_edge, %for.cond.preheader.i397.i.for.body.i409.i_crit_edge
  %i.036.i403.i = phi i32 [ %inc.i418.i, %if.end18.i421.i.for.body.i409.i_crit_edge ], [ 0, %for.cond.preheader.i397.i.for.body.i409.i_crit_edge ]
  %arrayidx.i404.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i381.i, i32 0, i32 %i.036.i403.i
  %240 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %current_state.i, align 4
  %res_ctx5.i405.i = getelementptr inbounds %struct.dc_state, ptr %241, i32 0, i32 4
  %arrayidx7.i406.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx5.i405.i, i32 0, i32 %i.036.i403.i
  %stream8.i407.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i381.i, i32 0, i32 %i.036.i403.i, i32 1
  %242 = ptrtoint ptr %stream8.i407.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %stream8.i407.i, align 4
  %cmp9.i408.i = icmp eq ptr %243, %233
  br i1 %cmp9.i408.i, label %if.then10.i412.i, label %for.body.i409.i.if.end18.i421.i_crit_edge

for.body.i409.i.if.end18.i421.i_crit_edge:        ; preds = %for.body.i409.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i421.i

if.then10.i412.i:                                 ; preds = %for.body.i409.i
  %top_pipe.i410.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i381.i, i32 0, i32 %i.036.i403.i, i32 9
  %244 = ptrtoint ptr %top_pipe.i410.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %top_pipe.i410.i, align 4
  %tobool11.not.i411.i = icmp eq ptr %245, null
  br i1 %tobool11.not.i411.i, label %land.lhs.true.i414.i, label %if.then10.i412.i.if.end18.i421.i_crit_edge

if.then10.i412.i.if.end18.i421.i_crit_edge:       ; preds = %if.then10.i412.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i421.i

land.lhs.true.i414.i:                             ; preds = %if.then10.i412.i
  %246 = ptrtoint ptr %arrayidx.i404.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx.i404.i, align 8
  %tobool12.not.i413.i = icmp eq ptr %247, null
  br i1 %tobool12.not.i413.i, label %lor.lhs.false.i416.i, label %land.lhs.true.i414.i.if.then15.i417.i_crit_edge

land.lhs.true.i414.i.if.then15.i417.i_crit_edge:  ; preds = %land.lhs.true.i414.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i417.i

lor.lhs.false.i416.i:                             ; preds = %land.lhs.true.i414.i
  %248 = ptrtoint ptr %arrayidx7.i406.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx7.i406.i, align 8
  %tobool14.not.i415.i = icmp eq ptr %249, null
  br i1 %tobool14.not.i415.i, label %lor.lhs.false.i416.i.if.end18.i421.i_crit_edge, label %lor.lhs.false.i416.i.if.then15.i417.i_crit_edge

lor.lhs.false.i416.i.if.then15.i417.i_crit_edge:  ; preds = %lor.lhs.false.i416.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i417.i

lor.lhs.false.i416.i.if.end18.i421.i_crit_edge:   ; preds = %lor.lhs.false.i416.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i421.i

if.then15.i417.i:                                 ; preds = %lor.lhs.false.i416.i.if.then15.i417.i_crit_edge, %land.lhs.true.i414.i.if.then15.i417.i_crit_edge
  %250 = ptrtoint ptr %pipe_control_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pipe_control_lock.i.i, align 4
  call void %251(ptr noundef %dc, ptr noundef %arrayidx.i404.i, i1 noundef zeroext false) #16
  br label %if.end18.i421.i

if.end18.i421.i:                                  ; preds = %if.then15.i417.i, %lor.lhs.false.i416.i.if.end18.i421.i_crit_edge, %if.then10.i412.i.if.end18.i421.i_crit_edge, %for.body.i409.i.if.end18.i421.i_crit_edge
  %inc.i418.i = add nuw i32 %i.036.i403.i, 1
  %252 = ptrtoint ptr %res_pool.i380.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %res_pool.i380.i, align 8
  %pipe_count.i419.i = getelementptr inbounds %struct.resource_pool, ptr %253, i32 0, i32 19
  %254 = ptrtoint ptr %pipe_count.i419.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %pipe_count.i419.i, align 4
  %cmp.i420.i = icmp ult i32 %inc.i418.i, %255
  br i1 %cmp.i420.i, label %if.end18.i421.i.for.body.i409.i_crit_edge, label %if.end18.i421.i.apply_ctx_interdependent_lock.exit422.i_crit_edge

if.end18.i421.i.apply_ctx_interdependent_lock.exit422.i_crit_edge: ; preds = %if.end18.i421.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit422.i

if.end18.i421.i.for.body.i409.i_crit_edge:        ; preds = %if.end18.i421.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i409.i

apply_ctx_interdependent_lock.exit422.i:          ; preds = %if.end18.i421.i.apply_ctx_interdependent_lock.exit422.i_crit_edge, %if.then.i402.i, %for.cond.preheader.i397.i.apply_ctx_interdependent_lock.exit422.i_crit_edge
  %256 = ptrtoint ptr %post_unlock_program_front_end.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %post_unlock_program_front_end.i, align 4
  call void %257(ptr noundef %dc, ptr noundef %context) #16
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %apply_ctx_interdependent_lock.exit422.i, %for.body22.i.for.inc37.i_crit_edge
  %inc38.i = add nuw nsw i32 %i.1551.i, 1
  %258 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %stream_count.i, align 8
  %conv19.i = zext i8 %259 to i32
  %cmp20.i = icmp ult i32 %inc38.i, %conv19.i
  br i1 %cmp20.i, label %for.inc37.i.for.body22.i_crit_edge, label %for.inc37.i.if.end40.i_crit_edge

for.inc37.i.if.end40.i_crit_edge:                 ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i

for.inc37.i.for.body22.i_crit_edge:               ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body22.i

if.end40.i:                                       ; preds = %for.inc37.i.if.end40.i_crit_edge, %for.cond17.preheader.i.if.end40.i_crit_edge, %disable_dangling_plane.exit.i.if.end40.i_crit_edge
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %260 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %res_pool.i, align 8
  %pipe_count553.i = getelementptr inbounds %struct.resource_pool, ptr %261, i32 0, i32 19
  %262 = ptrtoint ptr %pipe_count553.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %pipe_count553.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp42554.not.i = icmp eq i32 %263, 0
  br i1 %cmp42554.not.i, label %if.end40.i.for.end50.i_crit_edge, label %for.body44.lr.ph.i

if.end40.i.for.end50.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end50.i

for.body44.lr.ph.i:                               ; preds = %if.end40.i
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %wait_for_mpcc_disconnect.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 16
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %264 = phi ptr [ %261, %for.body44.lr.ph.i ], [ %268, %for.body44.i.for.body44.i_crit_edge ]
  %i.2555.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %inc49.i, %for.body44.i.for.body44.i_crit_edge ]
  %arrayidx45.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.2555.i
  %265 = ptrtoint ptr %wait_for_mpcc_disconnect.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %wait_for_mpcc_disconnect.i, align 4
  call void %266(ptr noundef %dc, ptr noundef %264, ptr noundef %arrayidx45.i) #16
  %inc49.i = add nuw i32 %i.2555.i, 1
  %267 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %res_pool.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %268, i32 0, i32 19
  %269 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %pipe_count.i, align 4
  %cmp42.i = icmp ult i32 %inc49.i, %270
  br i1 %cmp42.i, label %for.body44.i.for.body44.i_crit_edge, label %for.body44.i.for.end50.i_crit_edge

for.body44.i.for.end50.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end50.i

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body44.i

for.end50.i:                                      ; preds = %for.body44.i.for.end50.i_crit_edge, %if.end40.i.for.end50.i_crit_edge
  %apply_ctx_to_hw.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 7
  %271 = ptrtoint ptr %apply_ctx_to_hw.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %apply_ctx_to_hw.i, align 4
  %call52.i = call i32 %272(ptr noundef %dc, ptr noundef %context) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call52.i)
  %cmp53.not.i = icmp eq i32 %call52.i, 1
  br i1 %cmp53.not.i, label %if.end56.i, label %for.end50.i.dc_commit_state_no_check.exit_crit_edge

for.end50.i.dc_commit_state_no_check.exit_crit_edge: ; preds = %for.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dc_commit_state_no_check.exit

if.end56.i:                                       ; preds = %for.end50.i
  call void @dc_trigger_sync(ptr noundef %dc, ptr noundef %context) #16
  %program_front_end_for_ctx.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 11
  %273 = ptrtoint ptr %program_front_end_for_ctx.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %program_front_end_for_ctx.i, align 4
  %tobool58.not.i = icmp eq ptr %274, null
  br i1 %tobool58.not.i, label %if.end56.i.if.end67.i_crit_edge, label %if.then59.i

if.end56.i.if.end67.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  %interdependent_update_lock.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 22
  %275 = ptrtoint ptr %interdependent_update_lock.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %interdependent_update_lock.i, align 4
  call void %276(ptr noundef %dc, ptr noundef %context, i1 noundef zeroext true) #16
  %277 = ptrtoint ptr %program_front_end_for_ctx.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %program_front_end_for_ctx.i, align 4
  call void %278(ptr noundef %dc, ptr noundef %context) #16
  %279 = ptrtoint ptr %interdependent_update_lock.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %interdependent_update_lock.i, align 4
  call void %280(ptr noundef %dc, ptr noundef %context, i1 noundef zeroext false) #16
  %post_unlock_program_front_end66.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 13
  %281 = ptrtoint ptr %post_unlock_program_front_end66.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %post_unlock_program_front_end66.i, align 4
  call void %282(ptr noundef %dc, ptr noundef %context) #16
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then59.i, %if.end56.i.if.end67.i_crit_edge
  %283 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %cmp71561.not.i = icmp eq i8 %284, 0
  br i1 %cmp71561.not.i, label %if.end67.i.for.end153.i_crit_edge, label %for.body73.lr.ph.i

if.end67.i.for.end153.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end153.i

for.body73.lr.ph.i:                               ; preds = %if.end67.i
  %interdependent_update_lock.i423.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 22
  %res_ctx.i429.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %pipe_control_lock.i431.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %post_unlock_program_front_end101.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 13
  %setup_stereo.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 65
  br label %for.body73.i

for.body73.i:                                     ; preds = %cleanup.i.for.body73.i_crit_edge, %for.body73.lr.ph.i
  %i.3562.i = phi i32 [ 0, %for.body73.lr.ph.i ], [ %inc152.i, %cleanup.i.for.body73.i_crit_edge ]
  %arrayidx75.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.3562.i
  %285 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx75.i, align 4
  %mode_changed79.i = getelementptr inbounds %struct.dc_stream_state, ptr %286, i32 0, i32 48
  %287 = ptrtoint ptr %mode_changed79.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %bf.load80.i = load i8, ptr %mode_changed79.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load80.i)
  %bf.cast82.not.i = icmp sgt i8 %bf.load80.i, -1
  br i1 %bf.cast82.not.i, label %for.body73.i.cleanup.i_crit_edge, label %if.end84.i

for.body73.i.cleanup.i_crit_edge:                 ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end84.i:                                       ; preds = %for.body73.i
  %288 = ptrtoint ptr %apply_ctx_for_surface.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %apply_ctx_for_surface.i, align 4
  %tobool87.not.i = icmp eq ptr %289, null
  br i1 %tobool87.not.i, label %if.end84.i.for.body106.i.preheader_crit_edge, label %if.then88.i

if.end84.i.for.body106.i.preheader_crit_edge:     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body106.i.preheader

if.then88.i:                                      ; preds = %if.end84.i
  %290 = ptrtoint ptr %interdependent_update_lock.i423.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %interdependent_update_lock.i423.i, align 4
  %tobool.not.i424.i = icmp eq ptr %291, null
  br i1 %tobool.not.i424.i, label %for.cond.preheader.i428.i, label %if.then.i433.i

for.cond.preheader.i428.i:                        ; preds = %if.then88.i
  %292 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %res_pool.i, align 8
  %pipe_count34.i426.i = getelementptr inbounds %struct.resource_pool, ptr %293, i32 0, i32 19
  %294 = ptrtoint ptr %pipe_count34.i426.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %pipe_count34.i426.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %cmp35.not.i427.i = icmp eq i32 %295, 0
  br i1 %cmp35.not.i427.i, label %for.cond.preheader.i428.i.apply_ctx_interdependent_lock.exit453.i_crit_edge, label %for.cond.preheader.i428.i.for.body.i440.i_crit_edge

for.cond.preheader.i428.i.for.body.i440.i_crit_edge: ; preds = %for.cond.preheader.i428.i
  br label %for.body.i440.i

for.cond.preheader.i428.i.apply_ctx_interdependent_lock.exit453.i_crit_edge: ; preds = %for.cond.preheader.i428.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit453.i

if.then.i433.i:                                   ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %291(ptr noundef %dc, ptr noundef %context, i1 noundef zeroext true) #16
  br label %apply_ctx_interdependent_lock.exit453.i

for.body.i440.i:                                  ; preds = %if.end18.i452.i.for.body.i440.i_crit_edge, %for.cond.preheader.i428.i.for.body.i440.i_crit_edge
  %i.036.i434.i = phi i32 [ %inc.i449.i, %if.end18.i452.i.for.body.i440.i_crit_edge ], [ 0, %for.cond.preheader.i428.i.for.body.i440.i_crit_edge ]
  %arrayidx.i435.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %i.036.i434.i
  %296 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %current_state.i, align 4
  %res_ctx5.i436.i = getelementptr inbounds %struct.dc_state, ptr %297, i32 0, i32 4
  %arrayidx7.i437.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx5.i436.i, i32 0, i32 %i.036.i434.i
  %stream8.i438.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %i.036.i434.i, i32 1
  %298 = ptrtoint ptr %stream8.i438.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %stream8.i438.i, align 4
  %cmp9.i439.i = icmp eq ptr %299, %286
  br i1 %cmp9.i439.i, label %if.then10.i443.i, label %for.body.i440.i.if.end18.i452.i_crit_edge

for.body.i440.i.if.end18.i452.i_crit_edge:        ; preds = %for.body.i440.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i452.i

if.then10.i443.i:                                 ; preds = %for.body.i440.i
  %top_pipe.i441.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %i.036.i434.i, i32 9
  %300 = ptrtoint ptr %top_pipe.i441.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %top_pipe.i441.i, align 4
  %tobool11.not.i442.i = icmp eq ptr %301, null
  br i1 %tobool11.not.i442.i, label %land.lhs.true.i445.i, label %if.then10.i443.i.if.end18.i452.i_crit_edge

if.then10.i443.i.if.end18.i452.i_crit_edge:       ; preds = %if.then10.i443.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i452.i

land.lhs.true.i445.i:                             ; preds = %if.then10.i443.i
  %302 = ptrtoint ptr %arrayidx.i435.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i435.i, align 8
  %tobool12.not.i444.i = icmp eq ptr %303, null
  br i1 %tobool12.not.i444.i, label %lor.lhs.false.i447.i, label %land.lhs.true.i445.i.if.then15.i448.i_crit_edge

land.lhs.true.i445.i.if.then15.i448.i_crit_edge:  ; preds = %land.lhs.true.i445.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i448.i

lor.lhs.false.i447.i:                             ; preds = %land.lhs.true.i445.i
  %304 = ptrtoint ptr %arrayidx7.i437.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx7.i437.i, align 8
  %tobool14.not.i446.i = icmp eq ptr %305, null
  br i1 %tobool14.not.i446.i, label %lor.lhs.false.i447.i.if.end18.i452.i_crit_edge, label %lor.lhs.false.i447.i.if.then15.i448.i_crit_edge

lor.lhs.false.i447.i.if.then15.i448.i_crit_edge:  ; preds = %lor.lhs.false.i447.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i448.i

lor.lhs.false.i447.i.if.end18.i452.i_crit_edge:   ; preds = %lor.lhs.false.i447.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i452.i

if.then15.i448.i:                                 ; preds = %lor.lhs.false.i447.i.if.then15.i448.i_crit_edge, %land.lhs.true.i445.i.if.then15.i448.i_crit_edge
  %306 = ptrtoint ptr %pipe_control_lock.i431.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %pipe_control_lock.i431.i, align 4
  call void %307(ptr noundef %dc, ptr noundef %arrayidx.i435.i, i1 noundef zeroext true) #16
  br label %if.end18.i452.i

if.end18.i452.i:                                  ; preds = %if.then15.i448.i, %lor.lhs.false.i447.i.if.end18.i452.i_crit_edge, %if.then10.i443.i.if.end18.i452.i_crit_edge, %for.body.i440.i.if.end18.i452.i_crit_edge
  %inc.i449.i = add nuw i32 %i.036.i434.i, 1
  %308 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %res_pool.i, align 8
  %pipe_count.i450.i = getelementptr inbounds %struct.resource_pool, ptr %309, i32 0, i32 19
  %310 = ptrtoint ptr %pipe_count.i450.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %pipe_count.i450.i, align 4
  %cmp.i451.i = icmp ult i32 %inc.i449.i, %311
  br i1 %cmp.i451.i, label %if.end18.i452.i.for.body.i440.i_crit_edge, label %if.end18.i452.i.apply_ctx_interdependent_lock.exit453.i_crit_edge

if.end18.i452.i.apply_ctx_interdependent_lock.exit453.i_crit_edge: ; preds = %if.end18.i452.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit453.i

if.end18.i452.i.for.body.i440.i_crit_edge:        ; preds = %if.end18.i452.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i440.i

apply_ctx_interdependent_lock.exit453.i:          ; preds = %if.end18.i452.i.apply_ctx_interdependent_lock.exit453.i_crit_edge, %if.then.i433.i, %for.cond.preheader.i428.i.apply_ctx_interdependent_lock.exit453.i_crit_edge
  %312 = ptrtoint ptr %apply_ctx_for_surface.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %apply_ctx_for_surface.i, align 4
  %314 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx75.i, align 4
  %plane_count97.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.3562.i, i32 2
  %316 = ptrtoint ptr %plane_count97.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %plane_count97.i, align 8
  call void %313(ptr noundef %dc, ptr noundef %315, i32 noundef %317, ptr noundef %context) #16
  %318 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx75.i, align 4
  %320 = ptrtoint ptr %interdependent_update_lock.i423.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %interdependent_update_lock.i423.i, align 4
  %tobool.not.i455.i = icmp eq ptr %321, null
  br i1 %tobool.not.i455.i, label %for.cond.preheader.i459.i, label %if.then.i464.i

for.cond.preheader.i459.i:                        ; preds = %apply_ctx_interdependent_lock.exit453.i
  %322 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %res_pool.i, align 8
  %pipe_count34.i457.i = getelementptr inbounds %struct.resource_pool, ptr %323, i32 0, i32 19
  %324 = ptrtoint ptr %pipe_count34.i457.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %pipe_count34.i457.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %cmp35.not.i458.i = icmp eq i32 %325, 0
  br i1 %cmp35.not.i458.i, label %for.cond.preheader.i459.i.apply_ctx_interdependent_lock.exit484.i_crit_edge, label %for.cond.preheader.i459.i.for.body.i471.i_crit_edge

for.cond.preheader.i459.i.for.body.i471.i_crit_edge: ; preds = %for.cond.preheader.i459.i
  br label %for.body.i471.i

for.cond.preheader.i459.i.apply_ctx_interdependent_lock.exit484.i_crit_edge: ; preds = %for.cond.preheader.i459.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit484.i

if.then.i464.i:                                   ; preds = %apply_ctx_interdependent_lock.exit453.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %321(ptr noundef %dc, ptr noundef %context, i1 noundef zeroext false) #16
  br label %apply_ctx_interdependent_lock.exit484.i

for.body.i471.i:                                  ; preds = %if.end18.i483.i.for.body.i471.i_crit_edge, %for.cond.preheader.i459.i.for.body.i471.i_crit_edge
  %i.036.i465.i = phi i32 [ %inc.i480.i, %if.end18.i483.i.for.body.i471.i_crit_edge ], [ 0, %for.cond.preheader.i459.i.for.body.i471.i_crit_edge ]
  %arrayidx.i466.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %i.036.i465.i
  %326 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %current_state.i, align 4
  %res_ctx5.i467.i = getelementptr inbounds %struct.dc_state, ptr %327, i32 0, i32 4
  %arrayidx7.i468.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx5.i467.i, i32 0, i32 %i.036.i465.i
  %stream8.i469.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %i.036.i465.i, i32 1
  %328 = ptrtoint ptr %stream8.i469.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %stream8.i469.i, align 4
  %cmp9.i470.i = icmp eq ptr %329, %319
  br i1 %cmp9.i470.i, label %if.then10.i474.i, label %for.body.i471.i.if.end18.i483.i_crit_edge

for.body.i471.i.if.end18.i483.i_crit_edge:        ; preds = %for.body.i471.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i483.i

if.then10.i474.i:                                 ; preds = %for.body.i471.i
  %top_pipe.i472.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %i.036.i465.i, i32 9
  %330 = ptrtoint ptr %top_pipe.i472.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %top_pipe.i472.i, align 4
  %tobool11.not.i473.i = icmp eq ptr %331, null
  br i1 %tobool11.not.i473.i, label %land.lhs.true.i476.i, label %if.then10.i474.i.if.end18.i483.i_crit_edge

if.then10.i474.i.if.end18.i483.i_crit_edge:       ; preds = %if.then10.i474.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i483.i

land.lhs.true.i476.i:                             ; preds = %if.then10.i474.i
  %332 = ptrtoint ptr %arrayidx.i466.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx.i466.i, align 8
  %tobool12.not.i475.i = icmp eq ptr %333, null
  br i1 %tobool12.not.i475.i, label %lor.lhs.false.i478.i, label %land.lhs.true.i476.i.if.then15.i479.i_crit_edge

land.lhs.true.i476.i.if.then15.i479.i_crit_edge:  ; preds = %land.lhs.true.i476.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i479.i

lor.lhs.false.i478.i:                             ; preds = %land.lhs.true.i476.i
  %334 = ptrtoint ptr %arrayidx7.i468.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx7.i468.i, align 8
  %tobool14.not.i477.i = icmp eq ptr %335, null
  br i1 %tobool14.not.i477.i, label %lor.lhs.false.i478.i.if.end18.i483.i_crit_edge, label %lor.lhs.false.i478.i.if.then15.i479.i_crit_edge

lor.lhs.false.i478.i.if.then15.i479.i_crit_edge:  ; preds = %lor.lhs.false.i478.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i479.i

lor.lhs.false.i478.i.if.end18.i483.i_crit_edge:   ; preds = %lor.lhs.false.i478.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i483.i

if.then15.i479.i:                                 ; preds = %lor.lhs.false.i478.i.if.then15.i479.i_crit_edge, %land.lhs.true.i476.i.if.then15.i479.i_crit_edge
  %336 = ptrtoint ptr %pipe_control_lock.i431.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %pipe_control_lock.i431.i, align 4
  call void %337(ptr noundef %dc, ptr noundef %arrayidx.i466.i, i1 noundef zeroext false) #16
  br label %if.end18.i483.i

if.end18.i483.i:                                  ; preds = %if.then15.i479.i, %lor.lhs.false.i478.i.if.end18.i483.i_crit_edge, %if.then10.i474.i.if.end18.i483.i_crit_edge, %for.body.i471.i.if.end18.i483.i_crit_edge
  %inc.i480.i = add nuw i32 %i.036.i465.i, 1
  %338 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %res_pool.i, align 8
  %pipe_count.i481.i = getelementptr inbounds %struct.resource_pool, ptr %339, i32 0, i32 19
  %340 = ptrtoint ptr %pipe_count.i481.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %pipe_count.i481.i, align 4
  %cmp.i482.i = icmp ult i32 %inc.i480.i, %341
  br i1 %cmp.i482.i, label %if.end18.i483.i.for.body.i471.i_crit_edge, label %if.end18.i483.i.apply_ctx_interdependent_lock.exit484.i_crit_edge

if.end18.i483.i.apply_ctx_interdependent_lock.exit484.i_crit_edge: ; preds = %if.end18.i483.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %apply_ctx_interdependent_lock.exit484.i

if.end18.i483.i.for.body.i471.i_crit_edge:        ; preds = %if.end18.i483.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i471.i

apply_ctx_interdependent_lock.exit484.i:          ; preds = %if.end18.i483.i.apply_ctx_interdependent_lock.exit484.i_crit_edge, %if.then.i464.i, %for.cond.preheader.i459.i.apply_ctx_interdependent_lock.exit484.i_crit_edge
  %342 = ptrtoint ptr %post_unlock_program_front_end101.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %post_unlock_program_front_end101.i, align 4
  call void %343(ptr noundef %dc, ptr noundef %context) #16
  br label %for.body106.i.preheader

for.body106.i.preheader:                          ; preds = %apply_ctx_interdependent_lock.exit484.i, %if.end84.i.for.body106.i.preheader_crit_edge
  br label %for.body106.i

for.body106.i:                                    ; preds = %for.inc134.i.for.body106.i_crit_edge, %for.body106.i.preheader
  %k.0557.i = phi i32 [ %inc135.i, %for.inc134.i.for.body106.i_crit_edge ], [ 0, %for.body106.i.preheader ]
  %arrayidx109.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %k.0557.i
  %tobool111.not.i = icmp eq ptr %arrayidx109.i, null
  br i1 %tobool111.not.i, label %for.body106.i.for.inc134.i_crit_edge, label %land.rhs.lr.ph.i

for.body106.i.for.inc134.i_crit_edge:             ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc134.i

land.rhs.lr.ph.i:                                 ; preds = %for.body106.i
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i429.i, i32 0, i32 %k.0557.i, i32 1
  %344 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %cmp114.i40.not = icmp eq i8 %345, 0
  br i1 %cmp114.i40.not, label %land.rhs.lr.ph.i.for.inc134.i_crit_edge, label %land.rhs.lr.ph.i.for.body116.i_crit_edge

land.rhs.lr.ph.i.for.body116.i_crit_edge:         ; preds = %land.rhs.lr.ph.i
  br label %for.body116.i

land.rhs.lr.ph.i.for.inc134.i_crit_edge:          ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc134.i

for.body116.i:                                    ; preds = %for.inc131.i.for.body116.i_crit_edge, %land.rhs.lr.ph.i.for.body116.i_crit_edge
  %l.0556.i41 = phi i32 [ %inc132.i, %for.inc131.i.for.body116.i_crit_edge ], [ 0, %land.rhs.lr.ph.i.for.body116.i_crit_edge ]
  %arrayidx118.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %l.0556.i41
  %346 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx118.i, align 4
  %tobool119.not.i = icmp eq ptr %347, null
  br i1 %tobool119.not.i, label %for.body116.i.for.inc131.i_crit_edge, label %land.lhs.true.i

for.body116.i.for.inc131.i_crit_edge:             ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc131.i

land.lhs.true.i:                                  ; preds = %for.body116.i
  %348 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %stream.i, align 4
  %cmp122.i = icmp eq ptr %347, %349
  br i1 %cmp122.i, label %land.lhs.true124.i, label %land.lhs.true.i.for.inc131.i_crit_edge

land.lhs.true.i.for.inc131.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc131.i

land.lhs.true124.i:                               ; preds = %land.lhs.true.i
  %350 = ptrtoint ptr %setup_stereo.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %setup_stereo.i, align 4
  %tobool126.not.i = icmp eq ptr %351, null
  br i1 %tobool126.not.i, label %land.lhs.true124.i.for.inc131.i_crit_edge, label %if.then127.i

land.lhs.true124.i.for.inc131.i_crit_edge:        ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc131.i

if.then127.i:                                     ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %351(ptr noundef nonnull %arrayidx109.i, ptr noundef %dc) #16
  br label %for.inc131.i

for.inc131.i:                                     ; preds = %if.then127.i, %land.lhs.true124.i.for.inc131.i_crit_edge, %land.lhs.true.i.for.inc131.i_crit_edge, %for.body116.i.for.inc131.i_crit_edge
  %inc132.i = add nuw nsw i32 %l.0556.i41, 1
  %352 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %stream_count.i, align 8
  %conv113.i = zext i8 %353 to i32
  %cmp114.i = icmp ult i32 %inc132.i, %conv113.i
  br i1 %cmp114.i, label %for.inc131.i.for.body116.i_crit_edge, label %for.inc131.i.for.inc134.i_crit_edge

for.inc131.i.for.inc134.i_crit_edge:              ; preds = %for.inc131.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc134.i

for.inc131.i.for.body116.i_crit_edge:             ; preds = %for.inc131.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body116.i

for.inc134.i:                                     ; preds = %for.inc131.i.for.inc134.i_crit_edge, %land.rhs.lr.ph.i.for.inc134.i_crit_edge, %for.body106.i.for.inc134.i_crit_edge
  %inc135.i = add nuw nsw i32 %k.0557.i, 1
  %exitcond.not.i30 = icmp eq i32 %inc135.i, 6
  br i1 %exitcond.not.i30, label %do.body.i, label %for.inc134.i.for.body106.i_crit_edge

for.inc134.i.for.body106.i_crit_edge:             ; preds = %for.inc134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body106.i

do.body.i:                                        ; preds = %for.inc134.i
  call void @__sanitizer_cov_trace_pc() #18
  %354 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx75.i, align 4
  %timing.i = getelementptr inbounds %struct.dc_stream_state, ptr %355, i32 0, i32 5
  %h_addressable.i = getelementptr inbounds %struct.dc_stream_state, ptr %355, i32 0, i32 5, i32 2
  %356 = ptrtoint ptr %h_addressable.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %h_addressable.i, align 8
  %v_addressable.i = getelementptr inbounds %struct.dc_stream_state, ptr %355, i32 0, i32 5, i32 8
  %358 = ptrtoint ptr %v_addressable.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %v_addressable.i, align 8
  %360 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %timing.i, align 8
  %v_total.i = getelementptr inbounds %struct.dc_stream_state, ptr %355, i32 0, i32 5, i32 6
  %362 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %v_total.i, align 8
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_stream_state, ptr %355, i32 0, i32 5, i32 12
  %364 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %pix_clk_100hz.i, align 8
  %div.i = udiv i32 %365, 10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %357, i32 noundef %359, i32 noundef %361, i32 noundef %363, i32 noundef %div.i) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body.i, %for.body73.i.cleanup.i_crit_edge
  %inc152.i = add nuw nsw i32 %i.3562.i, 1
  %366 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %stream_count.i, align 8
  %conv70.i = zext i8 %367 to i32
  %cmp71.i = icmp ult i32 %inc152.i, %conv70.i
  br i1 %cmp71.i, label %cleanup.i.for.body73.i_crit_edge, label %cleanup.i.for.end153.i_crit_edge

cleanup.i.for.end153.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end153.i

cleanup.i.for.body73.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body73.i

for.end153.i:                                     ; preds = %cleanup.i.for.end153.i_crit_edge, %if.end67.i.for.end153.i_crit_edge
  %.lcssa559.i = phi i8 [ 0, %if.end67.i.for.end153.i_crit_edge ], [ %367, %cleanup.i.for.end153.i_crit_edge ]
  %conv70.le.i = zext i8 %.lcssa559.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa559.i)
  %cmp733.i.i = icmp ne i8 %.lcssa559.i, 0
  %setup_stereo.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 65
  br label %for.body.i487.i

for.body.i487.i:                                  ; preds = %for.inc17.i.i.for.body.i487.i_crit_edge, %for.end153.i
  %i.037.i.i = phi i32 [ 0, %for.end153.i ], [ %inc18.i.i, %for.inc17.i.i.for.body.i487.i_crit_edge ]
  %context.addr.036.i.i = phi ptr [ %context, %for.end153.i ], [ %context.addr.1.i.i, %for.inc17.i.i.for.body.i487.i_crit_edge ]
  %cmp1.not.i.i = icmp eq ptr %context.addr.036.i.i, null
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %for.body.i487.i.if.end.i489.i_crit_edge

for.body.i487.i.if.end.i489.i_crit_edge:          ; preds = %for.body.i487.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i489.i

if.else.i.i:                                      ; preds = %for.body.i487.i
  call void @__sanitizer_cov_trace_pc() #18
  %368 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %current_state.i, align 4
  br label %if.end.i489.i

if.end.i489.i:                                    ; preds = %if.else.i.i, %for.body.i487.i.if.end.i489.i_crit_edge
  %context.addr.1.i.i = phi ptr [ %369, %if.else.i.i ], [ %context.addr.036.i.i, %for.body.i487.i.if.end.i489.i_crit_edge ]
  %res_ctx.pn.i.i = getelementptr inbounds %struct.dc_state, ptr %context.addr.1.i.i, i32 0, i32 4
  %pipe.0.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.pn.i.i, i32 0, i32 %i.037.i.i
  %tobool.not.i488.i = icmp ne ptr %pipe.0.i.i, null
  %or.cond34.i.i = and i1 %cmp733.i.i, %tobool.not.i488.i
  br i1 %or.cond34.i.i, label %for.body9.lr.ph.i.i, label %if.end.i489.i.for.inc17.i.i_crit_edge

if.end.i489.i.for.inc17.i.i_crit_edge:            ; preds = %if.end.i489.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc17.i.i

for.body9.lr.ph.i.i:                              ; preds = %if.end.i489.i
  %stream1.i.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.pn.i.i, i32 0, i32 %i.037.i.i, i32 1
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.inc.i.i.for.body9.i.i_crit_edge, %for.body9.lr.ph.i.i
  %j.035.i.i = phi i32 [ 0, %for.body9.lr.ph.i.i ], [ %inc.i494.i, %for.inc.i.i.for.body9.i.i_crit_edge ]
  %arrayidx10.i.i = getelementptr ptr, ptr %dc_streams.i, i32 %j.035.i.i
  %370 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx10.i.i, align 4
  %372 = ptrtoint ptr %stream1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %stream1.i.i.i, align 4
  %tobool.not.i.i490.i = icmp ne ptr %373, null
  %cmp.i.i491.i = icmp eq ptr %373, %371
  %spec.select.i.i.i = and i1 %tobool.not.i.i490.i, %cmp.i.i491.i
  br i1 %spec.select.i.i.i, label %land.lhs.true.i493.i, label %for.body9.i.i.for.inc.i.i_crit_edge

for.body9.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i493.i:                             ; preds = %for.body9.i.i
  %374 = ptrtoint ptr %setup_stereo.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %setup_stereo.i.i, align 4
  %tobool12.not.i492.i = icmp eq ptr %375, null
  br i1 %tobool12.not.i492.i, label %land.lhs.true.i493.i.for.inc.i.i_crit_edge, label %if.then13.i.i

land.lhs.true.i493.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true.i493.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true.i493.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %375(ptr noundef nonnull %pipe.0.i.i, ptr noundef %dc) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then13.i.i, %land.lhs.true.i493.i.for.inc.i.i_crit_edge, %for.body9.i.i.for.inc.i.i_crit_edge
  %inc.i494.i = add nuw nsw i32 %j.035.i.i, 1
  %exitcond571.not.i = icmp eq i32 %inc.i494.i, %conv70.le.i
  br i1 %exitcond571.not.i, label %for.inc.i.i.for.inc17.i.i_crit_edge, label %for.inc.i.i.for.body9.i.i_crit_edge

for.inc.i.i.for.body9.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body9.i.i

for.inc.i.i.for.inc17.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc17.i.i

for.inc17.i.i:                                    ; preds = %for.inc.i.i.for.inc17.i.i_crit_edge, %if.end.i489.i.for.inc17.i.i_crit_edge
  %inc18.i.i = add nuw nsw i32 %i.037.i.i, 1
  %exitcond.not.i495.i = icmp eq i32 %inc18.i.i, 6
  br i1 %exitcond.not.i495.i, label %dc_enable_stereo.exit.i, label %for.inc17.i.i.for.body.i487.i_crit_edge

for.inc17.i.i.for.body.i487.i_crit_edge:          ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i487.i

dc_enable_stereo.exit.i:                          ; preds = %for.inc17.i.i
  %376 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %stream_count.i, align 8
  %conv156.i = zext i8 %377 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %cmp9.not.i497.i = icmp eq i8 %377, 0
  br i1 %cmp9.not.i497.i, label %dc_enable_stereo.exit.i.if.then165.i_crit_edge, label %dc_enable_stereo.exit.i.for.body.i507.i_crit_edge

dc_enable_stereo.exit.i.for.body.i507.i_crit_edge: ; preds = %dc_enable_stereo.exit.i
  br label %for.body.i507.i

dc_enable_stereo.exit.i.if.then165.i_crit_edge:   ; preds = %dc_enable_stereo.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then165.i

for.body.i507.i:                                  ; preds = %for.body.i507.i.for.body.i507.i_crit_edge, %dc_enable_stereo.exit.i.for.body.i507.i_crit_edge
  %indvars.iv.i500.i = phi i32 [ %indvars.iv.next.i505.i, %for.body.i507.i.for.body.i507.i_crit_edge ], [ 0, %dc_enable_stereo.exit.i.for.body.i507.i_crit_edge ]
  %seamless_boot_stream_count.011.i501.i = phi i8 [ %spec.select.i504.i, %for.body.i507.i.for.body.i507.i_crit_edge ], [ 0, %dc_enable_stereo.exit.i.for.body.i507.i_crit_edge ]
  %arrayidx.i502.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %indvars.iv.i500.i
  %378 = ptrtoint ptr %arrayidx.i502.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx.i502.i, align 4
  %apply_seamless_boot_optimization.i503.i = getelementptr inbounds %struct.dc_stream_state, ptr %379, i32 0, i32 51
  %380 = ptrtoint ptr %apply_seamless_boot_optimization.i503.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %apply_seamless_boot_optimization.i503.i, align 1, !range !111
  %spec.select.i504.i = add i8 %381, %seamless_boot_stream_count.011.i501.i
  %indvars.iv.next.i505.i = add nuw nsw i32 %indvars.iv.i500.i, 1
  %exitcond.not.i506.i = icmp eq i32 %indvars.iv.next.i505.i, %conv156.i
  br i1 %exitcond.not.i506.i, label %get_seamless_boot_stream_count.exit512.i, label %for.body.i507.i.for.body.i507.i_crit_edge

for.body.i507.i.for.body.i507.i_crit_edge:        ; preds = %for.body.i507.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i507.i

get_seamless_boot_stream_count.exit512.i:         ; preds = %for.body.i507.i
  %382 = add i8 %377, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %382, i8 %spec.select.i504.i)
  %.not544.i = icmp ult i8 %382, %spec.select.i504.i
  br i1 %.not544.i, label %get_seamless_boot_stream_count.exit512.i.if.end167.i_crit_edge, label %get_seamless_boot_stream_count.exit512.i.if.then165.i_crit_edge

get_seamless_boot_stream_count.exit512.i.if.then165.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit512.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then165.i

get_seamless_boot_stream_count.exit512.i.if.end167.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit512.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end167.i

if.then165.i:                                     ; preds = %get_seamless_boot_stream_count.exit512.i.if.then165.i_crit_edge, %dc_enable_stereo.exit.i.if.then165.i_crit_edge
  %383 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ctx.i, align 8
  call void @dm_perf_trace_timestamp(ptr noundef nonnull @__func__.wait_for_no_pipes_pending, i32 noundef 1171, ptr noundef %384) #16
  %res_ctx.i513.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %update_pending_status.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 19
  br label %for.body.i516.i

for.body.i516.i:                                  ; preds = %cleanup.i521.i.for.body.i516.i_crit_edge, %if.then165.i
  %i.075.i.i = phi i32 [ 0, %if.then165.i ], [ %inc59.i.i, %cleanup.i521.i.for.body.i516.i_crit_edge ]
  %arrayidx.i514.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i513.i, i32 0, i32 %i.075.i.i
  %385 = ptrtoint ptr %arrayidx.i514.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %arrayidx.i514.i, align 8
  %tobool.not.i515.i = icmp eq ptr %386, null
  br i1 %tobool.not.i515.i, label %for.body.i516.i.cleanup.i521.i_crit_edge, label %for.body.i516.i.while.body.i.i_crit_edge

for.body.i516.i.while.body.i.i_crit_edge:         ; preds = %for.body.i516.i
  br label %while.body.i.i

for.body.i516.i.cleanup.i521.i_crit_edge:         ; preds = %for.body.i516.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i521.i

while.body.i.i:                                   ; preds = %if.end8.i.i.while.body.i.i_crit_edge, %for.body.i516.i.while.body.i.i_crit_edge
  %count.074.i.i = phi i32 [ %inc.i518.i, %if.end8.i.i.while.body.i.i_crit_edge ], [ 0, %for.body.i516.i.while.body.i.i_crit_edge ]
  %387 = ptrtoint ptr %arrayidx.i514.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %arrayidx.i514.i, align 8
  %is_flip_pending.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %388, i32 0, i32 36, i32 2
  %389 = ptrtoint ptr %is_flip_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 0, ptr %is_flip_pending.i.i, align 8
  %390 = ptrtoint ptr %update_pending_status.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %update_pending_status.i.i, align 4
  call void %391(ptr noundef %arrayidx.i514.i) #16
  %392 = ptrtoint ptr %arrayidx.i514.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx.i514.i, align 8
  %is_flip_pending5.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %393, i32 0, i32 36, i32 2
  %394 = ptrtoint ptr %is_flip_pending5.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %is_flip_pending5.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool6.not.i517.i = icmp eq i8 %395, 0
  br i1 %tobool6.not.i517.i, label %while.body.i.i.do.body.i.i_crit_edge, label %if.end8.i.i

while.body.i.i.do.body.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.end8.i.i:                                      ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %396 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %396(i32 noundef 214748) #16
  %inc.i518.i = add nuw nsw i32 %count.074.i.i, 1
  %exitcond.not.i519.i = icmp eq i32 %inc.i518.i, 100000
  br i1 %exitcond.not.i519.i, label %if.end8.i.i.do.body.i.i_crit_edge, label %if.end8.i.i.while.body.i.i_crit_edge

if.end8.i.i.while.body.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

if.end8.i.i.do.body.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end8.i.i.do.body.i.i_crit_edge, %while.body.i.i.do.body.i.i_crit_edge
  %397 = ptrtoint ptr %arrayidx.i514.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %arrayidx.i514.i, align 8
  %is_flip_pending11.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %398, i32 0, i32 36, i32 2
  %399 = ptrtoint ptr %is_flip_pending11.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %is_flip_pending11.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %400)
  %tobool12.not.i520.i = icmp eq i8 %400, 0
  br i1 %tobool12.not.i520.i, label %do.body.i.i.cleanup.i521.i_crit_edge, label %land.rhs.i.i

do.body.i.i.cleanup.i521.i_crit_edge:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i521.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %.b72.i.i = load i1, ptr @wait_for_no_pipes_pending.__already_done, align 1
  br i1 %.b72.i.i, label %land.rhs.i.i.if.then54.i.i_crit_edge, label %if.then22.i.i, !prof !109

land.rhs.i.i.if.then54.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54.i.i

if.then22.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @wait_for_no_pipes_pending.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1189, i32 noundef 9, ptr noundef null) #16
  br label %if.then54.i.i

if.then54.i.i:                                    ; preds = %if.then22.i.i, %land.rhs.i.i.if.then54.i.i_crit_edge
  call void @kgdb_breakpoint() #16
  br label %cleanup.i521.i

cleanup.i521.i:                                   ; preds = %if.then54.i.i, %do.body.i.i.cleanup.i521.i_crit_edge, %for.body.i516.i.cleanup.i521.i_crit_edge
  %inc59.i.i = add nuw nsw i32 %i.075.i.i, 1
  %exitcond76.not.i.i = icmp eq i32 %inc59.i.i, 6
  br i1 %exitcond76.not.i.i, label %wait_for_no_pipes_pending.exit.i, label %cleanup.i521.i.for.body.i516.i_crit_edge

cleanup.i521.i.for.body.i516.i_crit_edge:         ; preds = %cleanup.i521.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i516.i

wait_for_no_pipes_pending.exit.i:                 ; preds = %cleanup.i521.i
  call void @__sanitizer_cov_trace_pc() #18
  %401 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %ctx.i, align 8
  call void @dm_perf_trace_timestamp(ptr noundef nonnull @__func__.wait_for_no_pipes_pending, i32 noundef 1191, ptr noundef %402) #16
  %optimize_bandwidth.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 41
  %403 = ptrtoint ptr %optimize_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %optimize_bandwidth.i, align 4
  call void %404(ptr noundef %dc, ptr noundef %context) #16
  br label %if.end167.i

if.end167.i:                                      ; preds = %wait_for_no_pipes_pending.exit.i, %get_seamless_boot_stream_count.exit512.i.if.end167.i_crit_edge
  %405 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %ctx.i, align 8
  %dce_version.i = getelementptr inbounds %struct.dc_context, ptr %406, i32 0, i32 6
  %407 = ptrtoint ptr %dce_version.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %dce_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %408)
  %cmp169.i = icmp sgt i32 %408, 11
  %bw_ctx.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5
  br i1 %cmp169.i, label %if.then171.i, label %if.else.i

if.then171.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @trace_amdgpu_dm_dc_clocks_state(ptr noundef %bw_ctx.i) #16
  br label %if.end174.i

if.else.i:                                        ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @trace_amdgpu_dm_dce_clocks_state(ptr noundef %bw_ctx.i) #16
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.else.i, %if.then171.i
  %409 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %res_pool.i, align 8
  %pipe_count.i524.i = getelementptr inbounds %struct.resource_pool, ptr %410, i32 0, i32 19
  %411 = ptrtoint ptr %pipe_count.i524.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %pipe_count.i524.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %cmp5.not.i.i = icmp eq i32 %412, 0
  br i1 %cmp5.not.i.i, label %if.end174.i.get_stream_mask.exit.i_crit_edge, label %for.body.lr.ph.i526.i

if.end174.i.get_stream_mask.exit.i_crit_edge:     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_stream_mask.exit.i

for.body.lr.ph.i526.i:                            ; preds = %if.end174.i
  %res_ctx.i525.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body.i531.i

for.body.i531.i:                                  ; preds = %for.body.i531.i.for.body.i531.i_crit_edge, %for.body.lr.ph.i526.i
  %stream_mask.07.i.i = phi i32 [ 0, %for.body.lr.ph.i526.i ], [ %stream_mask.1.i.i, %for.body.i531.i.for.body.i531.i_crit_edge ]
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i526.i ], [ %inc.i529.i, %for.body.i531.i.for.body.i531.i_crit_edge ]
  %stream.i527.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i525.i, i32 0, i32 %i.06.i.i, i32 1
  %413 = ptrtoint ptr %stream.i527.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %stream.i527.i, align 4
  %tobool.not.i528.i = icmp eq ptr %414, null
  %shl.i.i = shl nuw i32 1, %i.06.i.i
  %or.i.i = select i1 %tobool.not.i528.i, i32 0, i32 %shl.i.i
  %stream_mask.1.i.i = or i32 %or.i.i, %stream_mask.07.i.i
  %inc.i529.i = add nuw i32 %i.06.i.i, 1
  %exitcond.not.i530.i = icmp eq i32 %inc.i529.i, %412
  br i1 %exitcond.not.i530.i, label %for.end.loopexit.i533.i, label %for.body.i531.i.for.body.i531.i_crit_edge

for.body.i531.i.for.body.i531.i_crit_edge:        ; preds = %for.body.i531.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i531.i

for.end.loopexit.i533.i:                          ; preds = %for.body.i531.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.i532.i = trunc i32 %stream_mask.1.i.i to i8
  br label %get_stream_mask.exit.i

get_stream_mask.exit.i:                           ; preds = %for.end.loopexit.i533.i, %if.end174.i.get_stream_mask.exit.i_crit_edge
  %stream_mask.0.lcssa.i.i = phi i8 [ 0, %if.end174.i.get_stream_mask.exit.i_crit_edge ], [ %phi.cast.i532.i, %for.end.loopexit.i533.i ]
  %stream_mask.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 3
  %415 = ptrtoint ptr %stream_mask.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %stream_mask.0.lcssa.i.i, ptr %stream_mask.i, align 1
  %416 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %current_state.i, align 4
  %stream_mask178.i = getelementptr inbounds %struct.dc_state, ptr %417, i32 0, i32 3
  %418 = ptrtoint ptr %stream_mask178.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %stream_mask178.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %stream_mask.0.lcssa.i.i, i8 %419)
  %cmp180.not.i = icmp eq i8 %stream_mask.0.lcssa.i.i, %419
  br i1 %cmp180.not.i, label %get_stream_mask.exit.i.if.end187.i_crit_edge, label %if.then182.i

get_stream_mask.exit.i.if.end187.i_crit_edge:     ; preds = %get_stream_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end187.i

if.then182.i:                                     ; preds = %get_stream_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv177.i = zext i8 %stream_mask.0.lcssa.i.i to i32
  %420 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %ctx.i, align 8
  %dmub_srv.i = getelementptr inbounds %struct.dc_context, ptr %421, i32 0, i32 14
  %422 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dmub_srv.i, align 8
  %call186.i = call zeroext i1 @dc_dmub_srv_notify_stream_mask(ptr noundef %423, i32 noundef %conv177.i) #16
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.then182.i, %get_stream_mask.exit.i.if.end187.i_crit_edge
  %424 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %cmp191567.not.i = icmp eq i8 %425, 0
  br i1 %cmp191567.not.i, label %if.end187.i.for.end200.i_crit_edge, label %if.end187.i.for.body193.i_crit_edge

if.end187.i.for.body193.i_crit_edge:              ; preds = %if.end187.i
  br label %for.body193.i

if.end187.i.for.end200.i_crit_edge:               ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end200.i

for.body193.i:                                    ; preds = %for.body193.i.for.body193.i_crit_edge, %if.end187.i.for.body193.i_crit_edge
  %i.4568.i = phi i32 [ %inc199.i, %for.body193.i.for.body193.i_crit_edge ], [ 0, %if.end187.i.for.body193.i_crit_edge ]
  %arrayidx195.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.4568.i
  %426 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx195.i, align 4
  %mode_changed196.i = getelementptr inbounds %struct.dc_stream_state, ptr %427, i32 0, i32 48
  %428 = ptrtoint ptr %mode_changed196.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %bf.load197.i = load i8, ptr %mode_changed196.i, align 8
  %bf.clear.i = and i8 %bf.load197.i, 127
  store i8 %bf.clear.i, ptr %mode_changed196.i, align 8
  %inc199.i = add nuw nsw i32 %i.4568.i, 1
  %429 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %stream_count.i, align 8
  %conv190.i = zext i8 %430 to i32
  %cmp191.i = icmp ult i32 %inc199.i, %conv190.i
  br i1 %cmp191.i, label %for.body193.i.for.body193.i_crit_edge, label %for.body193.i.for.end200.i_crit_edge

for.body193.i.for.end200.i_crit_edge:             ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end200.i

for.body193.i.for.body193.i_crit_edge:            ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body193.i

for.end200.i:                                     ; preds = %for.body193.i.for.end200.i_crit_edge, %if.end187.i.for.end200.i_crit_edge
  %431 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %current_state.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.dc_state, ptr %432, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !107
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %433 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %433, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i535.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dc_release_state.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !109

if.end5.i.i.i.i.i.i.dc_release_state.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dc_release_state.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #16
  br label %dc_release_state.exit.i

if.then.i.i535.i:                                 ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !110
  call void @dc_resource_state_destruct(ptr noundef %432) #16
  call void @kvfree(ptr noundef %432) #16
  br label %dc_release_state.exit.i

dc_release_state.exit.i:                          ; preds = %if.then.i.i535.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dc_release_state.exit.i_crit_edge
  %434 = ptrtoint ptr %current_state.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %context, ptr %current_state.i, align 4
  %refcount.i536.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 8
  %call.i.i.i.i.i.i.i537.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i536.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcount.i536.i, i32 1, i32 3, i32 1) #16
  %435 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i536.i, ptr %refcount.i536.i, i32 1, ptr elementtype(i32) %refcount.i536.i) #16, !srcloc !114
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %435, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %dc_release_state.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !115

dc_release_state.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %dc_release_state.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %dc_release_state.exit.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %436 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %436)
  %.not.i.i.i.i.i538.i = icmp sgt i32 %436, -1
  br i1 %.not.i.i.i.i.i538.i, label %if.else.i.i.i.i.i.i.dc_commit_state_no_check.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dc_commit_state_no_check.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dc_commit_state_no_check.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %dc_release_state.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %dc_release_state.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i536.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %dc_commit_state_no_check.exit

dc_commit_state_no_check.exit:                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dc_commit_state_no_check.exit_crit_edge, %for.end50.i.dc_commit_state_no_check.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dc_streams.i) #16
  br label %cleanup

cleanup:                                          ; preds = %dc_commit_state_no_check.exit, %if.then7, %context_changed.exit.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.then7 ], [ %cmp53.not.i, %dc_commit_state_no_check.exit ], [ true, %context_changed.exit.cleanup_crit_edge ], [ true, %for.cond.preheader.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_stream_log(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_validate_global_state(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_status_to_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_post_update_surfaces_to_stream(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %optimized_required = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 19
  %2 = ptrtoint ptr %optimized_required to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %optimized_required, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stream_count.i = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i, label %lor.lhs.false.if.end_crit_edge, label %for.body.preheader.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.preheader.i:                             ; preds = %lor.lhs.false
  %wide.trip.count.i = zext i8 %5 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %seamless_boot_stream_count.011.i = phi i8 [ 0, %for.body.preheader.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x ptr], ptr %1, i32 0, i32 %indvars.iv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %apply_seamless_boot_optimization.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %apply_seamless_boot_optimization.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %apply_seamless_boot_optimization.i, align 1, !range !111
  %spec.select.i = add i8 %9, %seamless_boot_stream_count.011.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_seamless_boot_stream_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

get_seamless_boot_stream_count.exit:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i)
  %cmp.not = icmp eq i8 %spec.select.i, 0
  br i1 %cmp.not, label %get_seamless_boot_stream_count.exit.if.end_crit_edge, label %get_seamless_boot_stream_count.exit.cleanup_crit_edge

get_seamless_boot_stream_count.exit.cleanup_crit_edge: ; preds = %get_seamless_boot_stream_count.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

get_seamless_boot_stream_count.exit.if.end_crit_edge: ; preds = %get_seamless_boot_stream_count.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %get_seamless_boot_stream_count.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call void @post_surface_trace(ptr noundef %dc) #16
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dce_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %13)
  %cmp1 = icmp sgt i32 %13, 11
  %bw_ctx = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @trace_amdgpu_dm_dc_clocks_state(ptr noundef %bw_ctx)
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @trace_amdgpu_dm_dce_clocks_state(ptr noundef %bw_ctx)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4
  %update_pending_status.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 19
  %14 = ptrtoint ptr %res_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res_ctx.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end5.for.inc.i_crit_edge, label %if.end.i

if.end5.for.inc.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end5
  %is_flip_pending.i = getelementptr inbounds %struct.dc_plane_state, ptr %15, i32 0, i32 36, i32 2
  %16 = ptrtoint ptr %is_flip_pending.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_flip_pending.i, align 8
  %17 = ptrtoint ptr %update_pending_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %update_pending_status.i, align 4
  tail call void %18(ptr noundef %res_ctx.i) #16
  %19 = ptrtoint ptr %res_ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %res_ctx.i, align 8
  %is_flip_pending4.i = getelementptr inbounds %struct.dc_plane_state, ptr %20, i32 0, i32 36, i32 2
  %21 = ptrtoint ptr %is_flip_pending4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_flip_pending4.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not.i = icmp eq i8 %22, 0
  br i1 %tobool5.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.end5.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.1.i, align 8
  %tobool.not.1.i = icmp eq ptr %24, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %is_flip_pending.1.i = getelementptr inbounds %struct.dc_plane_state, ptr %24, i32 0, i32 36, i32 2
  %25 = ptrtoint ptr %is_flip_pending.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_flip_pending.1.i, align 8
  %26 = ptrtoint ptr %update_pending_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_pending_status.i, align 4
  tail call void %27(ptr noundef %arrayidx.1.i) #16
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1.i, align 8
  %is_flip_pending4.1.i = getelementptr inbounds %struct.dc_plane_state, ptr %29, i32 0, i32 36, i32 2
  %30 = ptrtoint ptr %is_flip_pending4.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_flip_pending4.1.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.1.i = icmp eq i8 %31, 0
  br i1 %tobool5.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.end.1.i.cleanup_crit_edge

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.2.i, align 8
  %tobool.not.2.i = icmp eq ptr %33, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %is_flip_pending.2.i = getelementptr inbounds %struct.dc_plane_state, ptr %33, i32 0, i32 36, i32 2
  %34 = ptrtoint ptr %is_flip_pending.2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %is_flip_pending.2.i, align 8
  %35 = ptrtoint ptr %update_pending_status.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %update_pending_status.i, align 4
  tail call void %36(ptr noundef %arrayidx.2.i) #16
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.2.i, align 8
  %is_flip_pending4.2.i = getelementptr inbounds %struct.dc_plane_state, ptr %38, i32 0, i32 36, i32 2
  %39 = ptrtoint ptr %is_flip_pending4.2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_flip_pending4.2.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.2.i = icmp eq i8 %40, 0
  br i1 %tobool5.not.2.i, label %if.end.2.i.for.inc.2.i_crit_edge, label %if.end.2.i.cleanup_crit_edge

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.3.i, align 8
  %tobool.not.3.i = icmp eq ptr %42, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %is_flip_pending.3.i = getelementptr inbounds %struct.dc_plane_state, ptr %42, i32 0, i32 36, i32 2
  %43 = ptrtoint ptr %is_flip_pending.3.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %is_flip_pending.3.i, align 8
  %44 = ptrtoint ptr %update_pending_status.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update_pending_status.i, align 4
  tail call void %45(ptr noundef %arrayidx.3.i) #16
  %46 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.3.i, align 8
  %is_flip_pending4.3.i = getelementptr inbounds %struct.dc_plane_state, ptr %47, i32 0, i32 36, i32 2
  %48 = ptrtoint ptr %is_flip_pending4.3.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_flip_pending4.3.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool5.not.3.i = icmp eq i8 %49, 0
  br i1 %tobool5.not.3.i, label %if.end.3.i.for.inc.3.i_crit_edge, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.3.i.for.inc.3.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.4.i, align 8
  %tobool.not.4.i = icmp eq ptr %51, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  %is_flip_pending.4.i = getelementptr inbounds %struct.dc_plane_state, ptr %51, i32 0, i32 36, i32 2
  %52 = ptrtoint ptr %is_flip_pending.4.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %is_flip_pending.4.i, align 8
  %53 = ptrtoint ptr %update_pending_status.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %update_pending_status.i, align 4
  tail call void %54(ptr noundef %arrayidx.4.i) #16
  %55 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.4.i, align 8
  %is_flip_pending4.4.i = getelementptr inbounds %struct.dc_plane_state, ptr %56, i32 0, i32 36, i32 2
  %57 = ptrtoint ptr %is_flip_pending4.4.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_flip_pending4.4.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool5.not.4.i = icmp eq i8 %58, 0
  br i1 %tobool5.not.4.i, label %if.end.4.i.for.inc.4.i_crit_edge, label %if.end.4.i.cleanup_crit_edge

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.4.i.for.inc.4.i_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.dc_state, ptr %1, i32 0, i32 4, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.5.i, align 8
  %tobool.not.5.i = icmp eq ptr %60, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.is_flip_pending_in_pipes.exit_crit_edge, label %if.end.5.i

for.inc.4.i.is_flip_pending_in_pipes.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %is_flip_pending_in_pipes.exit

if.end.5.i:                                       ; preds = %for.inc.4.i
  %is_flip_pending.5.i = getelementptr inbounds %struct.dc_plane_state, ptr %60, i32 0, i32 36, i32 2
  %61 = ptrtoint ptr %is_flip_pending.5.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %is_flip_pending.5.i, align 8
  %62 = ptrtoint ptr %update_pending_status.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %update_pending_status.i, align 4
  tail call void %63(ptr noundef %arrayidx.5.i) #16
  %64 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.5.i, align 8
  %is_flip_pending4.5.i = getelementptr inbounds %struct.dc_plane_state, ptr %65, i32 0, i32 36, i32 2
  %66 = ptrtoint ptr %is_flip_pending4.5.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %is_flip_pending4.5.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool5.not.5.i = icmp eq i8 %67, 0
  br i1 %tobool5.not.5.i, label %if.end.5.i.is_flip_pending_in_pipes.exit_crit_edge, label %if.end.5.i.cleanup_crit_edge

if.end.5.i.cleanup_crit_edge:                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.5.i.is_flip_pending_in_pipes.exit_crit_edge: ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %is_flip_pending_in_pipes.exit

is_flip_pending_in_pipes.exit:                    ; preds = %if.end.5.i.is_flip_pending_in_pipes.exit_crit_edge, %for.inc.4.i.is_flip_pending_in_pipes.exit_crit_edge
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %68 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %res_pool, align 8
  %pipe_count55 = getelementptr inbounds %struct.resource_pool, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %pipe_count55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pipe_count55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp956.not = icmp eq i32 %71, 0
  br i1 %cmp956.not, label %is_flip_pending_in_pipes.exit.for.end_crit_edge, label %for.body.lr.ph

is_flip_pending_in_pipes.exit.for.end_crit_edge:  ; preds = %is_flip_pending_in_pipes.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %is_flip_pending_in_pipes.exit
  %disable_plane = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.057
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.057, i32 1
  %72 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %stream, align 4
  %cmp10 = icmp eq ptr %73, null
  br i1 %cmp10, label %for.body.if.then16_crit_edge, label %lor.lhs.false11

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

lor.lhs.false11:                                  ; preds = %for.body
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 8
  %cmp15 = icmp eq ptr %75, null
  br i1 %cmp15, label %lor.lhs.false11.if.then16_crit_edge, label %lor.lhs.false11.for.inc_crit_edge

lor.lhs.false11.for.inc_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false11.if.then16_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false11.if.then16_crit_edge, %for.body.if.then16_crit_edge
  %conv = trunc i32 %i.057 to i8
  %pipe_idx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.057, i32 7
  %76 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv, ptr %pipe_idx, align 8
  %77 = ptrtoint ptr %disable_plane to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %disable_plane, align 4
  tail call void %78(ptr noundef %dc, ptr noundef %arrayidx) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %lor.lhs.false11.for.inc_crit_edge
  %inc = add nuw i32 %i.057, 1
  %79 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %80, i32 0, i32 19
  %81 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pipe_count, align 4
  %cmp9 = icmp ult i32 %inc, %82
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %is_flip_pending_in_pipes.exit.for.end_crit_edge
  %optimize_bandwidth = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 41
  %83 = ptrtoint ptr %optimize_bandwidth to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %optimize_bandwidth, align 4
  tail call void %84(ptr noundef %dc, ptr noundef %1) #16
  %85 = ptrtoint ptr %optimized_required to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %optimized_required, align 8
  %wm_optimized_required = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 20
  %86 = ptrtoint ptr %wm_optimized_required to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %wm_optimized_required, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.5.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %get_seamless_boot_stream_count.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @post_surface_trace(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_dm_dc_clocks_state(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dc_clocks_state, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_dm_dc_clocks_state, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !116

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !109

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !117
  %call42 = tail call i32 @__traceiter_amdgpu_dm_dc_clocks_state(ptr noundef null, ptr noundef %clk) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !109

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dc_clocks_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dc_clocks_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_dm_dc_clocks_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_amdgpu_dm_dc_clocks_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 554, ptr noundef nonnull @.str.27) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !120
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_dm_dce_clocks_state(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dce_clocks_state, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_dm_dce_clocks_state, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !116

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !109

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !121
  %call42 = tail call i32 @__traceiter_amdgpu_dm_dce_clocks_state(ptr noundef null, ptr noundef %clk) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !109

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dce_clocks_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dce_clocks_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_dm_dce_clocks_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_amdgpu_dm_dce_clocks_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 598, ptr noundef nonnull @.str.27) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !120
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_create_state(ptr nocapture readnone %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 67552, i32 noundef 3520, i32 noundef -1) #21
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %refcount = getelementptr inbounds %struct.dc_state, ptr %call.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_copy_state(ptr nocapture noundef readonly %src_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 67552, i32 noundef 3264, i32 noundef -1) #21
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %call.i, ptr %src_ctx, i32 67552)
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %call.i, i32 0, i32 4
  br label %for.body

for.cond39.preheader:                             ; preds = %if.end38
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp4099.not = icmp eq i8 %2, 0
  br i1 %cmp4099.not, label %for.cond39.preheader.for.end57_crit_edge, label %for.cond39.preheader.for.body42_crit_edge

for.cond39.preheader.for.body42_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body42

for.cond39.preheader.for.end57_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end57

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %if.end
  %i.095 = phi i32 [ 0, %if.end ], [ %inc, %if.end38.for.body_crit_edge ]
  %top_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.095, i32 9
  %3 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %top_pipe, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %for.body.if.end8_crit_edge, label %if.then2

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pipe_idx, align 8
  %idxprom = zext i8 %6 to i32
  %arrayidx6 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %top_pipe to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx6, ptr %top_pipe, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %for.body.if.end8_crit_edge
  %bottom_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.095, i32 10
  %8 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bottom_pipe, align 8
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end18_crit_edge, label %if.then10

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx14 = getelementptr inbounds %struct.pipe_ctx, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %pipe_idx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pipe_idx14, align 8
  %idxprom15 = zext i8 %11 to i32
  %arrayidx16 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom15
  %12 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx16, ptr %bottom_pipe, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.end8.if.end18_crit_edge
  %prev_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.095, i32 12
  %13 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %if.end18.if.end28_crit_edge, label %if.then20

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx24 = getelementptr inbounds %struct.pipe_ctx, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %pipe_idx24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pipe_idx24, align 8
  %idxprom25 = zext i8 %16 to i32
  %arrayidx26 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom25
  %17 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx26, ptr %prev_odm_pipe, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end18.if.end28_crit_edge
  %next_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.095, i32 11
  %18 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next_odm_pipe, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.end28.if.end38_crit_edge, label %if.then30

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx34 = getelementptr inbounds %struct.pipe_ctx, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pipe_idx34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pipe_idx34, align 8
  %idxprom35 = zext i8 %21 to i32
  %arrayidx36 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom35
  %22 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx36, ptr %next_odm_pipe, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.end28.if.end38_crit_edge
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond39.preheader, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body42:                                       ; preds = %for.inc55.for.body42_crit_edge, %for.cond39.preheader.for.body42_crit_edge
  %i.1100 = phi i32 [ %inc56, %for.inc55.for.body42_crit_edge ], [ 0, %for.cond39.preheader.for.body42_crit_edge ]
  %arrayidx43 = getelementptr [6 x ptr], ptr %call.i, i32 0, i32 %i.1100
  %23 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx43, align 4
  tail call void @dc_stream_retain(ptr noundef %24) #16
  %plane_count = getelementptr %struct.dc_state, ptr %call.i, i32 0, i32 1, i32 %i.1100, i32 2
  %25 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %plane_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp4696 = icmp sgt i32 %26, 0
  br i1 %cmp4696, label %for.body42.for.body48_crit_edge, label %for.body42.for.inc55_crit_edge

for.body42.for.inc55_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc55

for.body42.for.body48_crit_edge:                  ; preds = %for.body42
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body42.for.body48_crit_edge
  %j.097 = phi i32 [ %inc53, %for.body48.for.body48_crit_edge ], [ 0, %for.body42.for.body48_crit_edge ]
  %arrayidx51 = getelementptr %struct.dc_state, ptr %call.i, i32 0, i32 1, i32 %i.1100, i32 5, i32 %j.097
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51, align 4
  tail call void @dc_plane_state_retain(ptr noundef %28) #16
  %inc53 = add nuw nsw i32 %j.097, 1
  %29 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %plane_count, align 8
  %cmp46 = icmp slt i32 %inc53, %30
  br i1 %cmp46, label %for.body48.for.body48_crit_edge, label %for.body48.for.inc55_crit_edge

for.body48.for.inc55_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc55

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body48

for.inc55:                                        ; preds = %for.body48.for.inc55_crit_edge, %for.body42.for.inc55_crit_edge
  %inc56 = add nuw nsw i32 %i.1100, 1
  %31 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %32 to i32
  %cmp40 = icmp ult i32 %inc56, %conv
  br i1 %cmp40, label %for.inc55.for.body42_crit_edge, label %for.inc55.for.end57_crit_edge

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end57

for.inc55.for.body42_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body42

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %for.cond39.preheader.for.end57_crit_edge
  %refcount = getelementptr inbounds %struct.dc_state, ptr %call.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  %33 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end57, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_stream_retain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_plane_state_retain(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_retain_state(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !114
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !115

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #16
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_release_state(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !109

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #16
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !110
  tail call void @dc_resource_state_destruct(ptr noundef %context) #16
  tail call void @kvfree(ptr noundef %context) #16
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_set_generic_gpio_for_stereo(i1 noundef zeroext %enable, ptr noundef %gpio_service) local_unnamed_addr #0 align 64 {
entry:
  %generic = alloca ptr, align 4
  %tmp = alloca %struct.gpio_pin_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %generic) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #16
  call void @dal_gpio_get_generic_pin_info(ptr nonnull sret(%struct.gpio_pin_info) align 4 %tmp, ptr noundef %gpio_service, i32 noundef 2, i32 noundef 0) #16
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %pin_info.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %pin_info.sroa.9.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 16
  %2 = ptrtoint ptr %pin_info.sroa.9.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %pin_info.sroa.9.0.copyload = load i32, ptr %pin_info.sroa.9.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pin_info.sroa.9.0.copyload)
  %cmp = icmp eq i32 %pin_info.sroa.9.0.copyload, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pin_info.sroa.0.0.copyload)
  %cmp1 = icmp eq i32 %pin_info.sroa.0.0.copyload, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.end.cleanup.sink.split_crit_edge, label %if.else

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %call5 = call ptr @dal_gpio_service_create_generic_mux(ptr noundef %gpio_service, i32 noundef %pin_info.sroa.0.0.copyload, i32 noundef %pin_info.sroa.9.0.copyload) #16
  %3 = ptrtoint ptr %generic to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %generic, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.else.cleanup.sink.split_crit_edge, label %if.end9

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.else
  %call10 = call i32 @dal_gpio_open(ptr noundef nonnull %call5, i32 noundef 1) #16
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %call7.i.i, align 8
  %mux_select = getelementptr inbounds %struct.gpio_generic_mux_config, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %mux_select to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %mux_select, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp13 = icmp eq i32 %call10, 0
  br i1 %cmp13, label %if.end16, label %if.end9.if.else19_crit_edge

if.end9.if.else19_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else19

if.end16:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %generic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %generic, align 4
  %call15 = call i32 @dal_mux_setup_config(ptr noundef %7, ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp eq i32 %call15, 0
  br i1 %cmp17, label %if.end16.cleanup.sink.split.sink.split_crit_edge, label %if.end16.if.else19_crit_edge

if.end16.if.else19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else19

if.end16.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.sink.split

if.else19:                                        ; preds = %if.end16.if.else19_crit_edge, %if.end9.if.else19_crit_edge
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.else19, %if.end16.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i1 [ false, %if.else19 ], [ true, %if.end16.cleanup.sink.split.sink.split_crit_edge ]
  %8 = ptrtoint ptr %generic to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink = load ptr, ptr %generic, align 4
  call void @dal_gpio_close(ptr noundef %.sink) #16
  call void @dal_gpio_destroy_generic_mux(ptr noundef nonnull %generic) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.else.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ false, %if.end.cleanup.sink.split_crit_edge ], [ false, %if.else.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %generic) #16
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_get_generic_pin_info(ptr sret(%struct.gpio_pin_info) align 4, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_gpio_service_create_generic_mux(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_open(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_mux_setup_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_destroy_generic_mux(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_check_update_surfaces_for_stream(ptr nocapture noundef %dc, ptr nocapture noundef readonly %updates, i32 noundef %surface_count, ptr noundef readonly %stream_update, ptr noundef readonly %stream_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream_update, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %stream_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream_update, align 4
  %update_flags = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %update_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %update_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %surface_count)
  %cmp82 = icmp sgt i32 %surface_count, 0
  br i1 %cmp82, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.083
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %update_flags1 = getelementptr inbounds %struct.dc_plane_state, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %update_flags1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %update_flags1, align 4
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %surface_count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %cmp.i = icmp eq ptr %stream_status, null
  br i1 %cmp.i, label %for.end.if.then.i_crit_edge, label %lor.lhs.false.i

for.end.if.then.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.end
  %plane_count.i = getelementptr inbounds %struct.dc_stream_status, ptr %stream_status, i32 0, i32 2
  %6 = ptrtoint ptr %plane_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plane_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %surface_count)
  %cmp1.not.i = icmp eq i32 %7, %surface_count
  br i1 %cmp1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.end.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %overall_type.0.i = phi i32 [ 2, %if.then.i ], [ 0, %lor.lhs.false.i.if.end.i_crit_edge ]
  br i1 %tobool.not, label %if.end.i.if.end69.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end69.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %pending_test_pattern.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 21
  %8 = ptrtoint ptr %pending_test_pattern.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pending_test_pattern.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  %10 = ptrtoint ptr %stream_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream_update, align 4
  %update_flags.i = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 54
  %height.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not.i = icmp eq i32 %13, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.lor.lhs.false11.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.lor.lhs.false11.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false11.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %width.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.not.i = icmp eq i32 %15, 0
  br i1 %cmp10.not.i, label %land.lhs.true8.i.lor.lhs.false11.i_crit_edge, label %land.lhs.true8.i.if.then20.i_crit_edge

land.lhs.true8.i.if.then20.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then20.i

land.lhs.true8.i.lor.lhs.false11.i_crit_edge:     ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false11.i

lor.lhs.false11.i:                                ; preds = %land.lhs.true8.i.lor.lhs.false11.i_crit_edge, %land.lhs.true.i.lor.lhs.false11.i_crit_edge
  %height12.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %height12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13.not.i = icmp eq i32 %17, 0
  br i1 %cmp13.not.i, label %lor.lhs.false11.i.lor.lhs.false18.i_crit_edge, label %land.lhs.true14.i

lor.lhs.false11.i.lor.lhs.false18.i_crit_edge:    ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false18.i

land.lhs.true14.i:                                ; preds = %lor.lhs.false11.i
  %width16.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %width16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17.not.i = icmp eq i32 %19, 0
  br i1 %cmp17.not.i, label %land.lhs.true14.i.lor.lhs.false18.i_crit_edge, label %land.lhs.true14.i.if.then20.i_crit_edge

land.lhs.true14.i.if.then20.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then20.i

land.lhs.true14.i.lor.lhs.false18.i_crit_edge:    ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false18.i

lor.lhs.false18.i:                                ; preds = %land.lhs.true14.i.lor.lhs.false18.i_crit_edge, %lor.lhs.false11.i.lor.lhs.false18.i_crit_edge
  %integer_scaling_update.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 12
  %20 = ptrtoint ptr %integer_scaling_update.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %integer_scaling_update.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not.i = icmp eq i8 %21, 0
  br i1 %tobool19.not.i, label %lor.lhs.false18.i.if.end21.i_crit_edge, label %lor.lhs.false18.i.if.then20.i_crit_edge

lor.lhs.false18.i.if.then20.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then20.i

lor.lhs.false18.i.if.end21.i_crit_edge:           ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

if.then20.i:                                      ; preds = %lor.lhs.false18.i.if.then20.i_crit_edge, %land.lhs.true14.i.if.then20.i_crit_edge, %land.lhs.true8.i.if.then20.i_crit_edge
  %22 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %update_flags.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %update_flags.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %lor.lhs.false18.i.if.end21.i_crit_edge
  %out_transfer_func.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 3
  %23 = ptrtoint ptr %out_transfer_func.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out_transfer_func.i, align 4
  %tobool22.not.i = icmp eq ptr %24, null
  br i1 %tobool22.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then23.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load24.i = load i8, ptr %update_flags.i, align 4
  %bf.set26.i = or i8 %bf.load24.i, 64
  store i8 %bf.set26.i, ptr %update_flags.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end27.i_crit_edge
  %abm_level.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 5
  %26 = ptrtoint ptr %abm_level.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %abm_level.i, align 4
  %tobool28.not.i = icmp eq ptr %27, null
  br i1 %tobool28.not.i, label %if.end27.i.if.end33.i_crit_edge, label %if.then29.i

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load30.i = load i8, ptr %update_flags.i, align 4
  %bf.set32.i = or i8 %bf.load30.i, 16
  store i8 %bf.set32.i, ptr %update_flags.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end33.i_crit_edge
  %dpms_off.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 11
  %29 = ptrtoint ptr %dpms_off.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dpms_off.i, align 4
  %tobool34.not.i = icmp eq ptr %30, null
  br i1 %tobool34.not.i, label %if.end33.i.if.end39.i_crit_edge, label %if.then35.i

if.end33.i.if.end39.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load36.i = load i8, ptr %update_flags.i, align 4
  %bf.set38.i = or i8 %bf.load36.i, 8
  store i8 %bf.set38.i, ptr %update_flags.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end39.i_crit_edge
  %gamut_remap.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 13
  %32 = ptrtoint ptr %gamut_remap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gamut_remap.i, align 4
  %tobool40.not.i = icmp eq ptr %33, null
  br i1 %tobool40.not.i, label %if.end39.i.if.end45.i_crit_edge, label %if.then41.i

if.end39.i.if.end45.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load42.i = load i8, ptr %update_flags.i, align 4
  %bf.set44.i = or i8 %bf.load42.i, 4
  store i8 %bf.set44.i, ptr %update_flags.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %if.end39.i.if.end45.i_crit_edge
  %wb_update.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 17
  %35 = ptrtoint ptr %wb_update.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wb_update.i, align 4
  %tobool46.not.i = icmp eq ptr %36, null
  br i1 %tobool46.not.i, label %if.end45.i.if.end51.i_crit_edge, label %if.then47.i

if.end45.i.if.end51.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load48.i = load i8, ptr %update_flags.i, align 4
  %bf.set50.i = or i8 %bf.load48.i, 2
  store i8 %bf.set50.i, ptr %update_flags.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %if.end45.i.if.end51.i_crit_edge
  %dsc_config.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 18
  %38 = ptrtoint ptr %dsc_config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsc_config.i, align 4
  %tobool52.not.i = icmp eq ptr %39, null
  br i1 %tobool52.not.i, label %if.end51.i.if.end57.i_crit_edge, label %if.then53.i

if.end51.i.if.end57.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load54.i = load i8, ptr %update_flags.i, align 4
  %bf.set56.i = or i8 %bf.load54.i, 1
  store i8 %bf.set56.i, ptr %update_flags.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %if.end51.i.if.end57.i_crit_edge
  %41 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %update_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp58.not.i = icmp eq i32 %42, 0
  %43 = select i1 %cmp58.not.i, i1 %tobool2.not.i, i1 false
  %spec.select103.i = select i1 %43, i32 %overall_type.0.i, i32 2
  %output_csc_transform.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 16
  %44 = ptrtoint ptr %output_csc_transform.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %output_csc_transform.i, align 4
  %tobool61.not.i = icmp eq ptr %45, null
  br i1 %tobool61.not.i, label %lor.lhs.false62.i, label %if.end57.i.if.then64.i_crit_edge

if.end57.i.if.then64.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then64.i

lor.lhs.false62.i:                                ; preds = %if.end57.i
  %output_color_space.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 14
  %46 = ptrtoint ptr %output_color_space.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %output_color_space.i, align 4
  %tobool63.not.i = icmp eq ptr %47, null
  br i1 %tobool63.not.i, label %lor.lhs.false62.i.if.end69.i_crit_edge, label %lor.lhs.false62.i.if.then64.i_crit_edge

lor.lhs.false62.i.if.then64.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then64.i

lor.lhs.false62.i.if.end69.i_crit_edge:           ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69.i

if.then64.i:                                      ; preds = %lor.lhs.false62.i.if.then64.i_crit_edge, %if.end57.i.if.then64.i_crit_edge
  %48 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load65.i = load i8, ptr %update_flags.i, align 4
  %bf.set67.i = or i8 %bf.load65.i, 32
  store i8 %bf.set67.i, ptr %update_flags.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i, %lor.lhs.false62.i.if.end69.i_crit_edge, %if.end.i.if.end69.i_crit_edge
  %overall_type.3.i = phi i32 [ %overall_type.0.i, %if.end.i.if.end69.i_crit_edge ], [ %spec.select103.i, %lor.lhs.false62.i.if.end69.i_crit_edge ], [ %spec.select103.i, %if.then64.i ]
  br i1 %cmp82, label %for.body.lr.ph.i, label %if.end69.i.check_update_surfaces_for_stream.exit_crit_edge

if.end69.i.check_update_surfaces_for_stream.exit_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_update_surfaces_for_stream.exit

for.body.lr.ph.i:                                 ; preds = %if.end69.i
  %current_state.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %det_surface_update.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0107.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %det_surface_update.exit.i.for.body.i_crit_edge ]
  %overall_type.4106.i = phi i32 [ %overall_type.3.i, %for.body.lr.ph.i ], [ %332, %det_surface_update.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i
  %49 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %current_state.i.i, align 4
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 8
  %update_flags1.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %52, i32 0, i32 33
  %flip_addr.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 1
  %53 = ptrtoint ptr %flip_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %flip_addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 8
  %res_ctx.i.i.i = getelementptr inbounds %struct.dc_state, ptr %50, i32 0, i32 4
  %58 = ptrtoint ptr %res_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %res_ctx.i.i.i, align 8
  %cmp3.i.i.i = icmp eq ptr %59, %57
  br i1 %cmp3.i.i.i, label %if.end.i.i.lor.lhs.false.i.i_crit_edge, label %for.cond.i.i.i

if.end.i.i.lor.lhs.false.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

for.cond.i.i.i:                                   ; preds = %if.end.i.i
  %arrayidx.1.i.i.i = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.1.i.i.i, align 8
  %cmp3.1.i.i.i = icmp eq ptr %61, %57
  br i1 %cmp3.1.i.i.i, label %for.cond.i.i.i.lor.lhs.false.i.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.lor.lhs.false.i.i_crit_edge:       ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %arrayidx.2.i.i.i = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.2.i.i.i, align 8
  %cmp3.2.i.i.i = icmp eq ptr %63, %57
  br i1 %cmp3.2.i.i.i, label %for.cond.1.i.i.i.lor.lhs.false.i.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.lor.lhs.false.i.i_crit_edge:     ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  %arrayidx.3.i.i.i = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.3.i.i.i, align 8
  %cmp3.3.i.i.i = icmp eq ptr %65, %57
  br i1 %cmp3.3.i.i.i, label %for.cond.2.i.i.i.lor.lhs.false.i.i_crit_edge, label %for.cond.3.i.i.i

for.cond.2.i.i.i.lor.lhs.false.i.i_crit_edge:     ; preds = %for.cond.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

for.cond.3.i.i.i:                                 ; preds = %for.cond.2.i.i.i
  %arrayidx.4.i.i.i = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 4
  %66 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.4.i.i.i, align 8
  %cmp3.4.i.i.i = icmp eq ptr %67, %57
  br i1 %cmp3.4.i.i.i, label %for.cond.3.i.i.i.lor.lhs.false.i.i_crit_edge, label %is_surface_in_context.exit.i.i

for.cond.3.i.i.i.lor.lhs.false.i.i_crit_edge:     ; preds = %for.cond.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

is_surface_in_context.exit.i.i:                   ; preds = %for.cond.3.i.i.i
  %arrayidx.5.i.i.i = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 5
  %68 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.5.i.i.i, align 8
  %cmp3.5.i.i.i = icmp eq ptr %69, %57
  br i1 %cmp3.5.i.i.i, label %is_surface_in_context.exit.i.i.lor.lhs.false.i.i_crit_edge, label %is_surface_in_context.exit.i.i.if.then5.i.i_crit_edge

is_surface_in_context.exit.i.i.if.then5.i.i_crit_edge: ; preds = %is_surface_in_context.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i.i

is_surface_in_context.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %is_surface_in_context.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %is_surface_in_context.exit.i.i.lor.lhs.false.i.i_crit_edge, %for.cond.3.i.i.i.lor.lhs.false.i.i_crit_edge, %for.cond.2.i.i.i.lor.lhs.false.i.i_crit_edge, %for.cond.1.i.i.i.lor.lhs.false.i.i_crit_edge, %for.cond.i.i.i.lor.lhs.false.i.i_crit_edge, %if.end.i.i.lor.lhs.false.i.i_crit_edge
  %force_full_update.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %57, i32 0, i32 38
  %70 = ptrtoint ptr %force_full_update.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %force_full_update.i.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool4.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %lor.lhs.false.i.i.if.then5.i.i_crit_edge

lor.lhs.false.i.i.if.then5.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then5.i.i_crit_edge, %is_surface_in_context.exit.i.i.if.then5.i.i_crit_edge
  %72 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %update_flags1.i.i, align 4
  br label %det_surface_update.exit.i

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %73 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %update_flags1.i.i, align 4
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 8
  %update_flags1.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %75, i32 0, i32 33
  %plane_info.i.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 2
  %76 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %plane_info.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.elevate_update_type.exit.i.i_crit_edge, label %if.end.i.i.i

if.end6.i.i.elevate_update_type.exit.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %elevate_update_type.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end6.i.i
  %color_space.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %color_space.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %color_space.i.i.i, align 4
  %color_space4.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %75, i32 0, i32 18
  %80 = ptrtoint ptr %color_space4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %color_space4.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp.not.i.i.i = icmp eq i32 %79, %81
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge, label %elevate_update_type.exit.i.i.i

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i.i.i

elevate_update_type.exit.i.i.i:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %bf.load.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 536870912
  store i32 %bf.set.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %elevate_update_type.exit.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %update_type.1.i.i.i = phi i32 [ 0, %if.end.i.i.i.if.end6.i.i.i_crit_edge ], [ 1, %elevate_update_type.exit.i.i.i ]
  %83 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %plane_info.i.i.i, align 8
  %horizontal_mirror.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %horizontal_mirror.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %horizontal_mirror.i.i.i, align 4, !range !111
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 8
  %horizontal_mirror10.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %88, i32 0, i32 31
  %89 = ptrtoint ptr %horizontal_mirror10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %horizontal_mirror10.i.i.i, align 2, !range !111
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %90)
  %cmp13.not.i.i.i = icmp eq i8 %86, %90
  br i1 %cmp13.not.i.i.i, label %if.end6.i.i.i.if.end19.i.i.i_crit_edge, label %if.then15.i.i.i

if.end6.i.i.i.if.end19.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load16.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set18.i.i.i = or i32 %bf.load16.i.i.i, 268435456
  store i32 %bf.set18.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then15.i.i.i, %if.end6.i.i.i.if.end19.i.i.i_crit_edge
  %update_type.3.i.i.i = phi i32 [ %update_type.1.i.i.i, %if.end6.i.i.i.if.end19.i.i.i_crit_edge ], [ 1, %if.then15.i.i.i ]
  %92 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %plane_info.i.i.i, align 8
  %rotation.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %rotation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rotation.i.i.i, align 4
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 8
  %rotation22.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %97, i32 0, i32 23
  %98 = ptrtoint ptr %rotation22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rotation22.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %99)
  %cmp23.not.i.i.i = icmp eq i32 %95, %99
  br i1 %cmp23.not.i.i.i, label %if.end19.i.i.i.if.end29.i.i.i_crit_edge, label %elevate_update_type.exit204.i.i.i

if.end19.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i.i

elevate_update_type.exit204.i.i.i:                ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %100 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %bf.load26.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set28.i.i.i = or i32 %bf.load26.i.i.i, 16777216
  store i32 %bf.set28.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %elevate_update_type.exit204.i.i.i, %if.end19.i.i.i.if.end29.i.i.i_crit_edge
  %update_type.5.i.i.i = phi i32 [ %update_type.3.i.i.i, %if.end19.i.i.i.if.end29.i.i.i_crit_edge ], [ 2, %elevate_update_type.exit204.i.i.i ]
  %101 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %plane_info.i.i.i, align 8
  %format.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %format.i.i.i, align 4
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i, align 8
  %format32.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %106, i32 0, i32 22
  %107 = ptrtoint ptr %format32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %format32.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %108)
  %cmp33.not.i.i.i = icmp eq i32 %104, %108
  br i1 %cmp33.not.i.i.i, label %if.end29.i.i.i.if.end39.i.i.i_crit_edge, label %if.then35.i.i.i

if.end29.i.i.i.if.end39.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39.i.i.i

if.then35.i.i.i:                                  ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load36.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set38.i.i.i = or i32 %bf.load36.i.i.i, 65536
  store i32 %bf.set38.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then35.i.i.i, %if.end29.i.i.i.if.end39.i.i.i_crit_edge
  %update_type.7.i.i.i = phi i32 [ %update_type.5.i.i.i, %if.end29.i.i.i.if.end39.i.i.i_crit_edge ], [ 2, %if.then35.i.i.i ]
  %110 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %plane_info.i.i.i, align 8
  %stereo_format.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %stereo_format.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %stereo_format.i.i.i, align 4
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i, align 8
  %stereo_format42.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %115, i32 0, i32 24
  %116 = ptrtoint ptr %stereo_format42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %stereo_format42.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %117)
  %cmp43.not.i.i.i = icmp eq i32 %113, %117
  br i1 %cmp43.not.i.i.i, label %if.end39.i.i.i.if.end49.i.i.i_crit_edge, label %if.then45.i.i.i

if.end39.i.i.i.if.end49.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49.i.i.i

if.then45.i.i.i:                                  ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %118 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load46.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set48.i.i.i = or i32 %bf.load46.i.i.i, 256
  store i32 %bf.set48.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.end49.i.i.i

if.end49.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.end39.i.i.i.if.end49.i.i.i_crit_edge
  %update_type.9.i.i.i = phi i32 [ %update_type.7.i.i.i, %if.end39.i.i.i.if.end49.i.i.i_crit_edge ], [ 2, %if.then45.i.i.i ]
  %119 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %plane_info.i.i.i, align 8
  %per_pixel_alpha.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %per_pixel_alpha.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %per_pixel_alpha.i.i.i, align 2, !range !111
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i, align 8
  %per_pixel_alpha54.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %124, i32 0, i32 26
  %125 = ptrtoint ptr %per_pixel_alpha54.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %per_pixel_alpha54.i.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %126)
  %cmp57.not.i.i.i = icmp eq i8 %122, %126
  br i1 %cmp57.not.i.i.i, label %if.end49.i.i.i.if.end63.i.i.i_crit_edge, label %if.then59.i.i.i

if.end49.i.i.i.if.end63.i.i.i_crit_edge:          ; preds = %if.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i.i.i

if.then59.i.i.i:                                  ; preds = %if.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %127 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load60.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set62.i.i.i = or i32 %bf.load60.i.i.i, 134217728
  store i32 %bf.set62.i.i.i, ptr %update_flags1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_type.9.i.i.i)
  %cmp.i211.i.i.i = icmp eq i32 %update_type.9.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp.i211.i.i.i, i32 1, i32 %update_type.9.i.i.i
  br label %if.end63.i.i.i

if.end63.i.i.i:                                   ; preds = %if.then59.i.i.i, %if.end49.i.i.i.if.end63.i.i.i_crit_edge
  %update_type.11.i.i.i = phi i32 [ %update_type.9.i.i.i, %if.end49.i.i.i.if.end63.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then59.i.i.i ]
  %128 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %plane_info.i.i.i, align 8
  %global_alpha_value.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %global_alpha_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %global_alpha_value.i.i.i, align 4
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i, align 8
  %global_alpha_value66.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %133, i32 0, i32 28
  %134 = ptrtoint ptr %global_alpha_value66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %global_alpha_value66.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %135)
  %cmp67.not.i.i.i = icmp eq i32 %131, %135
  br i1 %cmp67.not.i.i.i, label %if.end63.i.i.i.if.end73.i.i.i_crit_edge, label %if.then69.i.i.i

if.end63.i.i.i.if.end73.i.i.i_crit_edge:          ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73.i.i.i

if.then69.i.i.i:                                  ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %136 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %bf.load70.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set72.i.i.i = or i32 %bf.load70.i.i.i, 67108864
  store i32 %bf.set72.i.i.i, ptr %update_flags1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_type.11.i.i.i)
  %cmp.i214.i.i.i = icmp eq i32 %update_type.11.i.i.i, 0
  %spec.select244.i.i.i = select i1 %cmp.i214.i.i.i, i32 1, i32 %update_type.11.i.i.i
  br label %if.end73.i.i.i

if.end73.i.i.i:                                   ; preds = %if.then69.i.i.i, %if.end63.i.i.i.if.end73.i.i.i_crit_edge
  %update_type.13.i.i.i = phi i32 [ %update_type.11.i.i.i, %if.end63.i.i.i.if.end73.i.i.i_crit_edge ], [ %spec.select244.i.i.i, %if.then69.i.i.i ]
  %137 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %plane_info.i.i.i, align 8
  %dcc.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %dcc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %dcc.i.i.i, align 4, !range !111
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i, align 8
  %dcc78.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %142, i32 0, i32 9
  %143 = ptrtoint ptr %dcc78.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %dcc78.i.i.i, align 4, !range !111
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %144)
  %cmp82.not.i.i.i = icmp eq i8 %140, %144
  br i1 %cmp82.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end73.i.i.i.if.then101.i.i.i_crit_edge

if.end73.i.i.i.if.then101.i.i.i_crit_edge:        ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then101.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end73.i.i.i
  %dcc_ind_blk.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %138, i32 0, i32 2, i32 3
  %145 = ptrtoint ptr %dcc_ind_blk.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %dcc_ind_blk.i.i.i, align 1
  %dcc_ind_blk89.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %142, i32 0, i32 9, i32 3
  %147 = ptrtoint ptr %dcc_ind_blk89.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %dcc_ind_blk89.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %148)
  %cmp91.not.i.i.i = icmp eq i8 %146, %148
  br i1 %cmp91.not.i.i.i, label %lor.lhs.false93.i.i.i, label %lor.lhs.false.i.i.i.if.then101.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then101.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then101.i.i.i

lor.lhs.false93.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %meta_pitch.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %138, i32 0, i32 2, i32 1
  %149 = ptrtoint ptr %meta_pitch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %meta_pitch.i.i.i, align 4
  %meta_pitch98.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %142, i32 0, i32 9, i32 1
  %151 = ptrtoint ptr %meta_pitch98.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %meta_pitch98.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp99.not.i.i.i = icmp eq i32 %150, %152
  br i1 %cmp99.not.i.i.i, label %lor.lhs.false93.i.i.i.if.end105.i.i.i_crit_edge, label %lor.lhs.false93.i.i.i.if.then101.i.i.i_crit_edge

lor.lhs.false93.i.i.i.if.then101.i.i.i_crit_edge: ; preds = %lor.lhs.false93.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then101.i.i.i

lor.lhs.false93.i.i.i.if.end105.i.i.i_crit_edge:  ; preds = %lor.lhs.false93.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105.i.i.i

if.then101.i.i.i:                                 ; preds = %lor.lhs.false93.i.i.i.if.then101.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then101.i.i.i_crit_edge, %if.end73.i.i.i.if.then101.i.i.i_crit_edge
  %153 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %bf.load102.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set104.i.i.i = or i32 %bf.load102.i.i.i, 1073741824
  store i32 %bf.set104.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.end105.i.i.i

if.end105.i.i.i:                                  ; preds = %if.then101.i.i.i, %lor.lhs.false93.i.i.i.if.end105.i.i.i_crit_edge
  %update_type.15.i.i.i = phi i32 [ %update_type.13.i.i.i, %lor.lhs.false93.i.i.i.if.end105.i.i.i_crit_edge ], [ 2, %if.then101.i.i.i ]
  %154 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %plane_info.i.i.i, align 8
  %format107.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %format107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %format107.i.i.i, align 4
  %call.i.i.i = tail call i32 @resource_pixel_format_to_bpp(i32 noundef %157) #16
  %158 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i, align 8
  %format109.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %159, i32 0, i32 22
  %160 = ptrtoint ptr %format109.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %format109.i.i.i, align 8
  %call110.i.i.i = tail call i32 @resource_pixel_format_to_bpp(i32 noundef %161) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %call110.i.i.i)
  %cmp111.not.i.i.i = icmp eq i32 %call.i.i.i, %call110.i.i.i
  br i1 %cmp111.not.i.i.i, label %if.end105.i.i.i.if.end117.i.i.i_crit_edge, label %if.then113.i.i.i

if.end105.i.i.i.if.end117.i.i.i_crit_edge:        ; preds = %if.end105.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end117.i.i.i

if.then113.i.i.i:                                 ; preds = %if.end105.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %162 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %bf.load114.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set116.i.i.i = or i32 %bf.load114.i.i.i, 4096
  store i32 %bf.set116.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.end117.i.i.i

if.end117.i.i.i:                                  ; preds = %if.then113.i.i.i, %if.end105.i.i.i.if.end117.i.i.i_crit_edge
  %update_type.17.i.i.i = phi i32 [ %update_type.15.i.i.i, %if.end105.i.i.i.if.end117.i.i.i_crit_edge ], [ 2, %if.then113.i.i.i ]
  %163 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %plane_info.i.i.i, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i, align 8
  %plane_size120.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %168, i32 0, i32 7
  %169 = ptrtoint ptr %plane_size120.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %plane_size120.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %170)
  %cmp122.not.i.i.i = icmp eq i32 %166, %170
  br i1 %cmp122.not.i.i.i, label %lor.lhs.false124.i.i.i, label %if.end117.i.i.i.if.then132.i.i.i_crit_edge

if.end117.i.i.i.if.then132.i.i.i_crit_edge:       ; preds = %if.end117.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then132.i.i.i

lor.lhs.false124.i.i.i:                           ; preds = %if.end117.i.i.i
  %chroma_pitch.i.i.i = getelementptr inbounds %struct.plane_size, ptr %164, i32 0, i32 1
  %171 = ptrtoint ptr %chroma_pitch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %chroma_pitch.i.i.i, align 4
  %chroma_pitch129.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %168, i32 0, i32 7, i32 1
  %173 = ptrtoint ptr %chroma_pitch129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %chroma_pitch129.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %174)
  %cmp130.not.i.i.i = icmp eq i32 %172, %174
  br i1 %cmp130.not.i.i.i, label %lor.lhs.false124.i.i.i.if.end136.i.i.i_crit_edge, label %lor.lhs.false124.i.i.i.if.then132.i.i.i_crit_edge

lor.lhs.false124.i.i.i.if.then132.i.i.i_crit_edge: ; preds = %lor.lhs.false124.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then132.i.i.i

lor.lhs.false124.i.i.i.if.end136.i.i.i_crit_edge: ; preds = %lor.lhs.false124.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136.i.i.i

if.then132.i.i.i:                                 ; preds = %lor.lhs.false124.i.i.i.if.then132.i.i.i_crit_edge, %if.end117.i.i.i.if.then132.i.i.i_crit_edge
  %175 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %bf.load133.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set135.i.i.i = or i32 %bf.load133.i.i.i, 32768
  store i32 %bf.set135.i.i.i, ptr %update_flags1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_type.17.i.i.i)
  %cmp.i223.i.i.i = icmp eq i32 %update_type.17.i.i.i, 0
  %spec.select245.i.i.i = select i1 %cmp.i223.i.i.i, i32 1, i32 %update_type.17.i.i.i
  br label %if.end136.i.i.i

if.end136.i.i.i:                                  ; preds = %if.then132.i.i.i, %lor.lhs.false124.i.i.i.if.end136.i.i.i_crit_edge
  %update_type.19.i.i.i = phi i32 [ %update_type.17.i.i.i, %lor.lhs.false124.i.i.i.if.end136.i.i.i_crit_edge ], [ %spec.select245.i.i.i, %if.then132.i.i.i ]
  %176 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %plane_info.i.i.i, align 8
  %tiling_info.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i, align 8
  %tiling_info139.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %179, i32 0, i32 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(52) %tiling_info.i.i.i, ptr noundef dereferenceable(52) %tiling_info139.i.i.i, i32 52) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp141.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp141.not.i.i.i, label %get_plane_info_update_type.exit.i.i, label %if.then143.i.i.i

if.then143.i.i.i:                                 ; preds = %if.end136.i.i.i
  %180 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %bf.load144.i.i.i = load i32, ptr %update_flags1.i.i.i, align 4
  %bf.set146.i.i.i = or i32 %bf.load144.i.i.i, 8388608
  store i32 %bf.set146.i.i.i, ptr %update_flags1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_type.19.i.i.i)
  %cmp.i226.i.i.i = icmp eq i32 %update_type.19.i.i.i, 0
  %spec.select246.i.i.i = select i1 %cmp.i226.i.i.i, i32 1, i32 %update_type.19.i.i.i
  %181 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %plane_info.i.i.i, align 8
  %tiling_info148.i.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %tiling_info148.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tiling_info148.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp149.not.i.i.i = icmp eq i32 %184, 0
  br i1 %cmp149.not.i.i.i, label %if.then143.i.i.i.if.then.i.i.i_crit_edge, label %get_plane_info_update_type.exit.thread.i.i

if.then143.i.i.i.if.then.i.i.i_crit_edge:         ; preds = %if.then143.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

get_plane_info_update_type.exit.thread.i.i:       ; preds = %if.then143.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.set154.i.i.i = or i32 %bf.load144.i.i.i, 8389632
  %185 = ptrtoint ptr %update_flags1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %bf.set154.i.i.i, ptr %update_flags1.i.i.i, align 4
  br label %if.then.i.i.i

get_plane_info_update_type.exit.i.i:              ; preds = %if.end136.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_type.19.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %update_type.19.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %get_plane_info_update_type.exit.i.i.elevate_update_type.exit.i.i_crit_edge, label %get_plane_info_update_type.exit.i.i.if.then.i.i.i_crit_edge

get_plane_info_update_type.exit.i.i.if.then.i.i.i_crit_edge: ; preds = %get_plane_info_update_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

get_plane_info_update_type.exit.i.i.elevate_update_type.exit.i.i_crit_edge: ; preds = %get_plane_info_update_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %elevate_update_type.exit.i.i

if.then.i.i.i:                                    ; preds = %get_plane_info_update_type.exit.i.i.if.then.i.i.i_crit_edge, %get_plane_info_update_type.exit.thread.i.i, %if.then143.i.i.i.if.then.i.i.i_crit_edge
  %retval.0.i192.i.i = phi i32 [ 2, %get_plane_info_update_type.exit.thread.i.i ], [ %update_type.19.i.i.i, %get_plane_info_update_type.exit.i.i.if.then.i.i.i_crit_edge ], [ %spec.select246.i.i.i, %if.then143.i.i.i.if.then.i.i.i_crit_edge ]
  br label %elevate_update_type.exit.i.i

elevate_update_type.exit.i.i:                     ; preds = %if.then.i.i.i, %get_plane_info_update_type.exit.i.i.elevate_update_type.exit.i.i_crit_edge, %if.end6.i.i.elevate_update_type.exit.i.i_crit_edge
  %overall_type.0.i.i = phi i32 [ %retval.0.i192.i.i, %if.then.i.i.i ], [ 0, %get_plane_info_update_type.exit.i.i.elevate_update_type.exit.i.i_crit_edge ], [ 0, %if.end6.i.i.elevate_update_type.exit.i.i_crit_edge ]
  %186 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i, align 8
  %update_flags1.i160.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %187, i32 0, i32 33
  %scaling_info.i.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 3
  %188 = ptrtoint ptr %scaling_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %scaling_info.i.i.i, align 4
  %tobool.not.i161.i.i = icmp eq ptr %189, null
  br i1 %tobool.not.i161.i.i, label %elevate_update_type.exit.i.i.get_scaling_info_update_type.exit.i.i_crit_edge, label %if.end.i163.i.i

elevate_update_type.exit.i.i.get_scaling_info_update_type.exit.i.i_crit_edge: ; preds = %elevate_update_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_scaling_info_update_type.exit.i.i

if.end.i163.i.i:                                  ; preds = %elevate_update_type.exit.i.i
  %width.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %189, i32 0, i32 2, i32 2
  %190 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %width.i.i.i, align 4
  %width5.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %187, i32 0, i32 6, i32 2
  %192 = ptrtoint ptr %width5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %width5.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %193)
  %cmp.not.i162.i.i = icmp eq i32 %191, %193
  br i1 %cmp.not.i162.i.i, label %lor.lhs.false.i164.i.i, label %if.end.i163.i.i.if.then37.i.i.i_crit_edge

if.end.i163.i.i.if.then37.i.i.i_crit_edge:        ; preds = %if.end.i163.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37.i.i.i

lor.lhs.false.i164.i.i:                           ; preds = %if.end.i163.i.i
  %height.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %189, i32 0, i32 2, i32 3
  %194 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %height.i.i.i, align 4
  %height10.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %187, i32 0, i32 6, i32 3
  %196 = ptrtoint ptr %height10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %height10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %197)
  %cmp11.not.i.i.i = icmp eq i32 %195, %197
  br i1 %cmp11.not.i.i.i, label %lor.lhs.false12.i.i.i, label %lor.lhs.false.i164.i.i.if.then37.i.i.i_crit_edge

lor.lhs.false.i164.i.i.if.then37.i.i.i_crit_edge: ; preds = %lor.lhs.false.i164.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37.i.i.i

lor.lhs.false12.i.i.i:                            ; preds = %lor.lhs.false.i164.i.i
  %width14.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %189, i32 0, i32 1, i32 2
  %198 = ptrtoint ptr %width14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %width14.i.i.i, align 4
  %width17.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %187, i32 0, i32 5, i32 2
  %200 = ptrtoint ptr %width17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %width17.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %201)
  %cmp18.not.i.i.i = icmp eq i32 %199, %201
  br i1 %cmp18.not.i.i.i, label %lor.lhs.false19.i.i.i, label %lor.lhs.false12.i.i.i.if.then37.i.i.i_crit_edge

lor.lhs.false12.i.i.i.if.then37.i.i.i_crit_edge:  ; preds = %lor.lhs.false12.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37.i.i.i

lor.lhs.false19.i.i.i:                            ; preds = %lor.lhs.false12.i.i.i
  %height22.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %189, i32 0, i32 1, i32 3
  %202 = ptrtoint ptr %height22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %height22.i.i.i, align 4
  %height25.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %187, i32 0, i32 5, i32 3
  %204 = ptrtoint ptr %height25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %height25.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %205)
  %cmp26.not.i.i.i = icmp eq i32 %203, %205
  br i1 %cmp26.not.i.i.i, label %lor.lhs.false27.i.i.i, label %lor.lhs.false19.i.i.i.if.then37.i.i.i_crit_edge

lor.lhs.false19.i.i.i.if.then37.i.i.i_crit_edge:  ; preds = %lor.lhs.false19.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37.i.i.i

lor.lhs.false27.i.i.i:                            ; preds = %lor.lhs.false19.i.i.i
  %integer_scaling.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %189, i32 0, i32 3, i32 4
  %206 = ptrtoint ptr %integer_scaling.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %integer_scaling.i.i.i, align 4, !range !111
  %integer_scaling32.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %187, i32 0, i32 3, i32 4
  %208 = ptrtoint ptr %integer_scaling32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %integer_scaling32.i.i.i, align 4, !range !111
  call void @__sanitizer_cov_trace_cmp1(i8 %207, i8 %209)
  %cmp35.not.i.i.i = icmp eq i8 %207, %209
  br i1 %cmp35.not.i.i.i, label %lor.lhs.false27.i.i.i.if.end76.i.i.i_crit_edge, label %lor.lhs.false27.i.i.i.if.then37.i.i.i_crit_edge

lor.lhs.false27.i.i.i.if.then37.i.i.i_crit_edge:  ; preds = %lor.lhs.false27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37.i.i.i

lor.lhs.false27.i.i.i.if.end76.i.i.i_crit_edge:   ; preds = %lor.lhs.false27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76.i.i.i

if.then37.i.i.i:                                  ; preds = %lor.lhs.false27.i.i.i.if.then37.i.i.i_crit_edge, %lor.lhs.false19.i.i.i.if.then37.i.i.i_crit_edge, %lor.lhs.false12.i.i.i.if.then37.i.i.i_crit_edge, %lor.lhs.false.i164.i.i.if.then37.i.i.i_crit_edge, %if.end.i163.i.i.if.then37.i.i.i_crit_edge
  %210 = ptrtoint ptr %update_flags1.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %bf.load.i165.i.i = load i32, ptr %update_flags1.i160.i.i, align 4
  %bf.set.i166.i.i = or i32 %bf.load.i165.i.i, 4194304
  store i32 %bf.set.i166.i.i, ptr %update_flags1.i160.i.i, align 4
  %211 = ptrtoint ptr %scaling_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %scaling_info.i.i.i, align 4
  %width40.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %212, i32 0, i32 1, i32 2
  %213 = ptrtoint ptr %width40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %width40.i.i.i, align 4
  %215 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.i, align 8
  %width43.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %216, i32 0, i32 5, i32 2
  %217 = ptrtoint ptr %width43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %width43.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %218)
  %cmp44.i.i.i = icmp slt i32 %214, %218
  br i1 %cmp44.i.i.i, label %if.then37.i.i.i.land.lhs.true.i.i.i_crit_edge, label %lor.lhs.false46.i.i.i

if.then37.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then37.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i.i.i

lor.lhs.false46.i.i.i:                            ; preds = %if.then37.i.i.i
  %height49.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %212, i32 0, i32 1, i32 3
  %219 = ptrtoint ptr %height49.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %height49.i.i.i, align 4
  %height52.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %216, i32 0, i32 5, i32 3
  %221 = ptrtoint ptr %height52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %height52.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %222)
  %cmp53.i.i.i = icmp slt i32 %220, %222
  br i1 %cmp53.i.i.i, label %lor.lhs.false46.i.i.i.land.lhs.true.i.i.i_crit_edge, label %lor.lhs.false46.i.i.i.if.end76.i.i.i_crit_edge

lor.lhs.false46.i.i.i.if.end76.i.i.i_crit_edge:   ; preds = %lor.lhs.false46.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76.i.i.i

lor.lhs.false46.i.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %lor.lhs.false46.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false46.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.then37.i.i.i.land.lhs.true.i.i.i_crit_edge
  %width59.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %216, i32 0, i32 4, i32 2
  %223 = ptrtoint ptr %width59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %width59.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %224)
  %cmp60.i.i.i = icmp slt i32 %214, %224
  br i1 %cmp60.i.i.i, label %land.lhs.true.i.i.i.if.then71.i.i.i_crit_edge, label %lor.lhs.false62.i.i.i

land.lhs.true.i.i.i.if.then71.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71.i.i.i

lor.lhs.false62.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %height65.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %212, i32 0, i32 1, i32 3
  %225 = ptrtoint ptr %height65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %height65.i.i.i, align 4
  %height68.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %216, i32 0, i32 4, i32 3
  %227 = ptrtoint ptr %height68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %height68.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %228)
  %cmp69.i.i.i = icmp slt i32 %226, %228
  br i1 %cmp69.i.i.i, label %lor.lhs.false62.i.i.i.if.then71.i.i.i_crit_edge, label %lor.lhs.false62.i.i.i.if.end76.i.i.i_crit_edge

lor.lhs.false62.i.i.i.if.end76.i.i.i_crit_edge:   ; preds = %lor.lhs.false62.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76.i.i.i

lor.lhs.false62.i.i.i.if.then71.i.i.i_crit_edge:  ; preds = %lor.lhs.false62.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71.i.i.i

if.then71.i.i.i:                                  ; preds = %lor.lhs.false62.i.i.i.if.then71.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then71.i.i.i_crit_edge
  %bf.set74.i.i.i = or i32 %bf.load.i165.i.i, 4195328
  %229 = ptrtoint ptr %update_flags1.i160.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %bf.set74.i.i.i, ptr %update_flags1.i160.i.i, align 4
  br label %if.end76.i.i.i

if.end76.i.i.i:                                   ; preds = %if.then71.i.i.i, %lor.lhs.false62.i.i.i.if.end76.i.i.i_crit_edge, %lor.lhs.false46.i.i.i.if.end76.i.i.i_crit_edge, %lor.lhs.false27.i.i.i.if.end76.i.i.i_crit_edge
  %230 = ptrtoint ptr %scaling_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %scaling_info.i.i.i, align 4
  %width79.i.i.i = getelementptr inbounds %struct.rect, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %width79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %width79.i.i.i, align 4
  %234 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i, align 8
  %width82.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 4, i32 2
  %236 = ptrtoint ptr %width82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %width82.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %237)
  %cmp83.not.i.i.i = icmp eq i32 %233, %237
  br i1 %cmp83.not.i.i.i, label %lor.lhs.false85.i.i.i, label %if.end76.i.i.i.if.then94.i.i.i_crit_edge

if.end76.i.i.i.if.then94.i.i.i_crit_edge:         ; preds = %if.end76.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then94.i.i.i

lor.lhs.false85.i.i.i:                            ; preds = %if.end76.i.i.i
  %height88.i.i.i = getelementptr inbounds %struct.rect, ptr %231, i32 0, i32 3
  %238 = ptrtoint ptr %height88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %height88.i.i.i, align 4
  %height91.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 4, i32 3
  %240 = ptrtoint ptr %height91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %height91.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %241)
  %cmp92.not.i.i.i = icmp eq i32 %239, %241
  br i1 %cmp92.not.i.i.i, label %lor.lhs.false85.i.i.i.if.end120.i.i.i_crit_edge, label %lor.lhs.false85.i.i.i.if.then94.i.i.i_crit_edge

lor.lhs.false85.i.i.i.if.then94.i.i.i_crit_edge:  ; preds = %lor.lhs.false85.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then94.i.i.i

lor.lhs.false85.i.i.i.if.end120.i.i.i_crit_edge:  ; preds = %lor.lhs.false85.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120.i.i.i

if.then94.i.i.i:                                  ; preds = %lor.lhs.false85.i.i.i.if.then94.i.i.i_crit_edge, %if.end76.i.i.i.if.then94.i.i.i_crit_edge
  %242 = ptrtoint ptr %update_flags1.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %bf.load95.i.i.i = load i32, ptr %update_flags1.i160.i.i, align 4
  %bf.set97.i.i.i = or i32 %bf.load95.i.i.i, 4194304
  store i32 %bf.set97.i.i.i, ptr %update_flags1.i160.i.i, align 4
  %243 = ptrtoint ptr %scaling_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %scaling_info.i.i.i, align 4
  %width100.i.i.i = getelementptr inbounds %struct.rect, ptr %244, i32 0, i32 2
  %245 = ptrtoint ptr %width100.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %width100.i.i.i, align 4
  %247 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx.i, align 8
  %width103.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %248, i32 0, i32 4, i32 2
  %249 = ptrtoint ptr %width103.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %width103.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %250)
  %cmp104.i.i.i = icmp sgt i32 %246, %250
  br i1 %cmp104.i.i.i, label %if.then94.i.i.i.if.then115.i.i.i_crit_edge, label %lor.lhs.false106.i.i.i

if.then94.i.i.i.if.then115.i.i.i_crit_edge:       ; preds = %if.then94.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then115.i.i.i

lor.lhs.false106.i.i.i:                           ; preds = %if.then94.i.i.i
  %height109.i.i.i = getelementptr inbounds %struct.rect, ptr %244, i32 0, i32 3
  %251 = ptrtoint ptr %height109.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %height109.i.i.i, align 4
  %height112.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %248, i32 0, i32 4, i32 3
  %253 = ptrtoint ptr %height112.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %height112.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %254)
  %cmp113.i.i.i = icmp sgt i32 %252, %254
  br i1 %cmp113.i.i.i, label %lor.lhs.false106.i.i.i.if.then115.i.i.i_crit_edge, label %lor.lhs.false106.i.i.i.if.end120.i.i.i_crit_edge

lor.lhs.false106.i.i.i.if.end120.i.i.i_crit_edge: ; preds = %lor.lhs.false106.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120.i.i.i

lor.lhs.false106.i.i.i.if.then115.i.i.i_crit_edge: ; preds = %lor.lhs.false106.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then115.i.i.i

if.then115.i.i.i:                                 ; preds = %lor.lhs.false106.i.i.i.if.then115.i.i.i_crit_edge, %if.then94.i.i.i.if.then115.i.i.i_crit_edge
  %bf.set118.i.i.i = or i32 %bf.load95.i.i.i, 4194816
  %255 = ptrtoint ptr %update_flags1.i160.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %bf.set118.i.i.i, ptr %update_flags1.i160.i.i, align 4
  br label %if.end120.i.i.i

if.end120.i.i.i:                                  ; preds = %if.then115.i.i.i, %lor.lhs.false106.i.i.i.if.end120.i.i.i_crit_edge, %lor.lhs.false85.i.i.i.if.end120.i.i.i_crit_edge
  %256 = ptrtoint ptr %scaling_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %scaling_info.i.i.i, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 4
  %260 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i, align 8
  %src_rect124.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %261, i32 0, i32 4
  %262 = ptrtoint ptr %src_rect124.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %src_rect124.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %263)
  %cmp126.not.i.i.i = icmp eq i32 %259, %263
  br i1 %cmp126.not.i.i.i, label %lor.lhs.false128.i.i.i, label %if.end120.i.i.i.if.then172.i.i.i_crit_edge

if.end120.i.i.i.if.then172.i.i.i_crit_edge:       ; preds = %if.end120.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then172.i.i.i

lor.lhs.false128.i.i.i:                           ; preds = %if.end120.i.i.i
  %y.i.i.i = getelementptr inbounds %struct.rect, ptr %257, i32 0, i32 1
  %264 = ptrtoint ptr %y.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %y.i.i.i, align 4
  %y133.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %261, i32 0, i32 4, i32 1
  %266 = ptrtoint ptr %y133.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %y133.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %265, i32 %267)
  %cmp134.not.i.i.i = icmp eq i32 %265, %267
  br i1 %cmp134.not.i.i.i, label %lor.lhs.false136.i.i.i, label %lor.lhs.false128.i.i.i.if.then172.i.i.i_crit_edge

lor.lhs.false128.i.i.i.if.then172.i.i.i_crit_edge: ; preds = %lor.lhs.false128.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then172.i.i.i

lor.lhs.false136.i.i.i:                           ; preds = %lor.lhs.false128.i.i.i
  %clip_rect138.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %257, i32 0, i32 2
  %268 = ptrtoint ptr %clip_rect138.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %clip_rect138.i.i.i, align 4
  %clip_rect141.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %261, i32 0, i32 6
  %270 = ptrtoint ptr %clip_rect141.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %clip_rect141.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %269, i32 %271)
  %cmp143.not.i.i.i = icmp eq i32 %269, %271
  br i1 %cmp143.not.i.i.i, label %lor.lhs.false145.i.i.i, label %lor.lhs.false136.i.i.i.if.then172.i.i.i_crit_edge

lor.lhs.false136.i.i.i.if.then172.i.i.i_crit_edge: ; preds = %lor.lhs.false136.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then172.i.i.i

lor.lhs.false145.i.i.i:                           ; preds = %lor.lhs.false136.i.i.i
  %y148.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %257, i32 0, i32 2, i32 1
  %272 = ptrtoint ptr %y148.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %y148.i.i.i, align 4
  %y151.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %261, i32 0, i32 6, i32 1
  %274 = ptrtoint ptr %y151.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %y151.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %273, i32 %275)
  %cmp152.not.i.i.i = icmp eq i32 %273, %275
  br i1 %cmp152.not.i.i.i, label %lor.lhs.false154.i.i.i, label %lor.lhs.false145.i.i.i.if.then172.i.i.i_crit_edge

lor.lhs.false145.i.i.i.if.then172.i.i.i_crit_edge: ; preds = %lor.lhs.false145.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then172.i.i.i

lor.lhs.false154.i.i.i:                           ; preds = %lor.lhs.false145.i.i.i
  %dst_rect156.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %257, i32 0, i32 1
  %276 = ptrtoint ptr %dst_rect156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %dst_rect156.i.i.i, align 4
  %dst_rect159.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %261, i32 0, i32 5
  %278 = ptrtoint ptr %dst_rect159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %dst_rect159.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %279)
  %cmp161.not.i.i.i = icmp eq i32 %277, %279
  br i1 %cmp161.not.i.i.i, label %lor.lhs.false163.i.i.i, label %lor.lhs.false154.i.i.i.if.then172.i.i.i_crit_edge

lor.lhs.false154.i.i.i.if.then172.i.i.i_crit_edge: ; preds = %lor.lhs.false154.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then172.i.i.i

lor.lhs.false163.i.i.i:                           ; preds = %lor.lhs.false154.i.i.i
  %y166.i.i.i = getelementptr inbounds %struct.dc_scaling_info, ptr %257, i32 0, i32 1, i32 1
  %280 = ptrtoint ptr %y166.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %y166.i.i.i, align 4
  %y169.i.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %261, i32 0, i32 5, i32 1
  %282 = ptrtoint ptr %y169.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %y169.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %281, i32 %283)
  %cmp170.not.i.i.i = icmp eq i32 %281, %283
  br i1 %cmp170.not.i.i.i, label %lor.lhs.false163.i.i.i.if.end176.i.i.i_crit_edge, label %lor.lhs.false163.i.i.i.if.then172.i.i.i_crit_edge

lor.lhs.false163.i.i.i.if.then172.i.i.i_crit_edge: ; preds = %lor.lhs.false163.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then172.i.i.i

lor.lhs.false163.i.i.i.if.end176.i.i.i_crit_edge: ; preds = %lor.lhs.false163.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end176.i.i.i

if.then172.i.i.i:                                 ; preds = %lor.lhs.false163.i.i.i.if.then172.i.i.i_crit_edge, %lor.lhs.false154.i.i.i.if.then172.i.i.i_crit_edge, %lor.lhs.false145.i.i.i.if.then172.i.i.i_crit_edge, %lor.lhs.false136.i.i.i.if.then172.i.i.i_crit_edge, %lor.lhs.false128.i.i.i.if.then172.i.i.i_crit_edge, %if.end120.i.i.i.if.then172.i.i.i_crit_edge
  %284 = ptrtoint ptr %update_flags1.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %bf.load173.i.i.i = load i32, ptr %update_flags1.i160.i.i, align 4
  %bf.set175.i.i.i = or i32 %bf.load173.i.i.i, 2097152
  store i32 %bf.set175.i.i.i, ptr %update_flags1.i160.i.i, align 4
  br label %if.end176.i.i.i

if.end176.i.i.i:                                  ; preds = %if.then172.i.i.i, %lor.lhs.false163.i.i.i.if.end176.i.i.i_crit_edge
  %285 = ptrtoint ptr %update_flags1.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %bf.load177.i.i.i = load i32, ptr %update_flags1.i160.i.i, align 4
  %286 = and i32 %bf.load177.i.i.i, 4195840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %if.end191.i.i.i, label %if.end176.i.i.i.get_scaling_info_update_type.exit.i.i_crit_edge

if.end176.i.i.i.get_scaling_info_update_type.exit.i.i_crit_edge: ; preds = %if.end176.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_scaling_info_update_type.exit.i.i

if.end191.i.i.i:                                  ; preds = %if.end176.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %288 = lshr i32 %bf.load177.i.i.i, 21
  %.lobit.i.i.i = and i32 %288, 1
  br label %get_scaling_info_update_type.exit.i.i

get_scaling_info_update_type.exit.i.i:            ; preds = %if.end191.i.i.i, %if.end176.i.i.i.get_scaling_info_update_type.exit.i.i_crit_edge, %elevate_update_type.exit.i.i.get_scaling_info_update_type.exit.i.i_crit_edge
  %retval.0.i167.i.i = phi i32 [ 0, %elevate_update_type.exit.i.i.get_scaling_info_update_type.exit.i.i_crit_edge ], [ 2, %if.end176.i.i.i.get_scaling_info_update_type.exit.i.i_crit_edge ], [ %.lobit.i.i.i, %if.end191.i.i.i ]
  %289 = tail call i32 @llvm.umax.i32(i32 %overall_type.0.i.i, i32 %retval.0.i167.i.i) #16
  %290 = ptrtoint ptr %flip_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %flip_addr.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %291, null
  br i1 %tobool10.not.i.i, label %get_scaling_info_update_type.exit.i.i.if.end15.i.i_crit_edge, label %if.then11.i.i

get_scaling_info_update_type.exit.i.i.if.end15.i.i_crit_edge: ; preds = %get_scaling_info_update_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i.i

if.then11.i.i:                                    ; preds = %get_scaling_info_update_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %292 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %bf.load12.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set14.i.i = or i32 %bf.load12.i.i, -2147483648
  store i32 %bf.set14.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i, %get_scaling_info_update_type.exit.i.i.if.end15.i.i_crit_edge
  %in_transfer_func.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 6
  %293 = ptrtoint ptr %in_transfer_func.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %in_transfer_func.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %294, null
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end21.i.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %295 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %bf.load18.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set20.i.i = or i32 %bf.load18.i.i, 1048576
  store i32 %bf.set20.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then17.i.i, %if.end15.i.i.if.end21.i.i_crit_edge
  %input_csc_color_matrix.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 7
  %296 = ptrtoint ptr %input_csc_color_matrix.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %input_csc_color_matrix.i.i, align 8
  %tobool22.not.i.i = icmp eq ptr %297, null
  br i1 %tobool22.not.i.i, label %if.end21.i.i.if.end27.i.i_crit_edge, label %if.then23.i.i

if.end21.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %298 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %bf.load24.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set26.i.i = or i32 %bf.load24.i.i, 524288
  store i32 %bf.set26.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then23.i.i, %if.end21.i.i.if.end27.i.i_crit_edge
  %coeff_reduction_factor.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 8
  %299 = ptrtoint ptr %coeff_reduction_factor.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %coeff_reduction_factor.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %300, null
  br i1 %tobool28.not.i.i, label %if.end27.i.i.if.end33.i.i_crit_edge, label %if.then29.i.i

if.end27.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33.i.i

if.then29.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %301 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %bf.load30.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set32.i.i = or i32 %bf.load30.i.i, 262144
  store i32 %bf.set32.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i.i.if.end33.i.i_crit_edge
  %gamut_remap_matrix.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 12
  %302 = ptrtoint ptr %gamut_remap_matrix.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %gamut_remap_matrix.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %303, null
  br i1 %tobool34.not.i.i, label %if.end33.i.i.if.end39.i.i_crit_edge, label %if.then35.i.i

if.end33.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39.i.i

if.then35.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %304 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %bf.load36.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set38.i.i = or i32 %bf.load36.i.i, 16384
  store i32 %bf.set38.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then35.i.i, %if.end33.i.i.if.end39.i.i_crit_edge
  %gamma.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 5
  %305 = ptrtoint ptr %gamma.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %gamma.i.i, align 8
  %tobool40.not.i.i = icmp eq ptr %306, null
  br i1 %tobool40.not.i.i, label %if.end39.i.i.if.end59.i.i_crit_edge, label %if.then41.i.i

if.end39.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i

if.then41.i.i:                                    ; preds = %if.end39.i.i
  %307 = ptrtoint ptr %plane_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %plane_info.i.i.i, align 8
  %tobool42.not.i.i = icmp eq ptr %308, null
  br i1 %tobool42.not.i.i, label %if.else.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %format45.i.i = getelementptr inbounds %struct.dc_plane_info, ptr %308, i32 0, i32 3
  %309 = ptrtoint ptr %format45.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %format45.i.i, align 4
  br label %if.end52.i.i

if.else.i.i:                                      ; preds = %if.then41.i.i
  %311 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx.i, align 8
  %tobool47.not.i.i = icmp eq ptr %312, null
  br i1 %tobool47.not.i.i, label %if.else.i.i.if.end52.i.i_crit_edge, label %if.then48.i.i

if.else.i.i.if.end52.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i.i

if.then48.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %format50.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %312, i32 0, i32 22
  %313 = ptrtoint ptr %format50.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %format50.i.i, align 8
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then48.i.i, %if.else.i.i.if.end52.i.i_crit_edge, %if.then43.i.i
  %format.0.i.i = phi i32 [ %310, %if.then43.i.i ], [ %314, %if.then48.i.i ], [ 0, %if.else.i.i.if.end52.i.i_crit_edge ]
  %call53.i.i = tail call zeroext i1 @dce_use_lut(i32 noundef %format.0.i.i) #16
  br i1 %call53.i.i, label %if.then54.i.i, label %if.end52.i.i.if.end59.i.i_crit_edge

if.end52.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i

if.then54.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %315 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %bf.load55.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set57.i.i = or i32 %bf.load55.i.i, 2048
  store i32 %bf.set57.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then54.i.i, %if.end52.i.i.if.end59.i.i_crit_edge, %if.end39.i.i.if.end59.i.i_crit_edge
  %lut3d_func.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 10
  %316 = ptrtoint ptr %lut3d_func.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %lut3d_func.i.i, align 4
  %tobool60.not.i.i = icmp eq ptr %317, null
  br i1 %tobool60.not.i.i, label %lor.lhs.false61.i.i, label %if.end59.i.i.if.then63.i.i_crit_edge

if.end59.i.i.if.then63.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63.i.i

lor.lhs.false61.i.i:                              ; preds = %if.end59.i.i
  %func_shaper.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 9
  %318 = ptrtoint ptr %func_shaper.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %func_shaper.i.i, align 8
  %tobool62.not.i.i = icmp eq ptr %319, null
  br i1 %tobool62.not.i.i, label %lor.lhs.false61.i.i.if.end67.i.i_crit_edge, label %lor.lhs.false61.i.i.if.then63.i.i_crit_edge

lor.lhs.false61.i.i.if.then63.i.i_crit_edge:      ; preds = %lor.lhs.false61.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63.i.i

lor.lhs.false61.i.i.if.end67.i.i_crit_edge:       ; preds = %lor.lhs.false61.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67.i.i

if.then63.i.i:                                    ; preds = %lor.lhs.false61.i.i.if.then63.i.i_crit_edge, %if.end59.i.i.if.then63.i.i_crit_edge
  %320 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %bf.load64.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set66.i.i = or i32 %bf.load64.i.i, 128
  store i32 %bf.set66.i.i, ptr %update_flags1.i.i, align 4
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then63.i.i, %lor.lhs.false61.i.i.if.end67.i.i_crit_edge
  %hdr_mult.i.i = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0107.i, i32 4
  %321 = ptrtoint ptr %hdr_mult.i.i to i32
  call void @__asan_load8_noabort(i32 %321)
  %322 = load i64, ptr %hdr_mult.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %322)
  %tobool68.not.i.i = icmp eq i64 %322, 0
  br i1 %tobool68.not.i.i, label %if.end67.i.i.if.end80.i.i_crit_edge, label %if.then69.i.i

if.end67.i.i.if.end80.i.i_crit_edge:              ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i.i

if.then69.i.i:                                    ; preds = %if.end67.i.i
  %323 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %arrayidx.i, align 8
  %hdr_mult73.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %324, i32 0, i32 15
  %325 = ptrtoint ptr %hdr_mult73.i.i to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %hdr_mult73.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %322, i64 %326)
  %cmp.not.i.i = icmp eq i64 %322, %326
  br i1 %cmp.not.i.i, label %if.then69.i.i.if.end80.i.i_crit_edge, label %if.then75.i.i

if.then69.i.i.if.end80.i.i_crit_edge:             ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i.i

if.then75.i.i:                                    ; preds = %if.then69.i.i
  %327 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %bf.load76.i.i = load i32, ptr %update_flags1.i.i, align 4
  %bf.set78.i.i = or i32 %bf.load76.i.i, 33554432
  store i32 %bf.set78.i.i, ptr %update_flags1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp.i172.i.i = icmp eq i32 %289, 0
  br i1 %cmp.i172.i.i, label %if.then75.i.i.if.end85.i.i_crit_edge, label %if.then75.i.i.if.end80.i.i_crit_edge

if.then75.i.i.if.end80.i.i_crit_edge:             ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i.i

if.then75.i.i.if.end85.i.i_crit_edge:             ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85.i.i

if.end80.i.i:                                     ; preds = %if.then75.i.i.if.end80.i.i_crit_edge, %if.then69.i.i.if.end80.i.i_crit_edge, %if.end67.i.i.if.end80.i.i_crit_edge
  %328 = ptrtoint ptr %update_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %bf.load81.i.i = load i32, ptr %update_flags1.i.i, align 4
  %329 = and i32 %bf.load81.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool83.not.i.i = icmp ne i32 %329, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp.i176.i.i = icmp eq i32 %289, 0
  %or.cond206.i.i = select i1 %tobool83.not.i.i, i1 %cmp.i176.i.i, i1 false
  %spec.select207.i.i = select i1 %or.cond206.i.i, i32 1, i32 %289
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %if.end80.i.i, %if.then75.i.i.if.end85.i.i_crit_edge
  %bf.load81201.i.i = phi i32 [ %bf.load81.i.i, %if.end80.i.i ], [ %bf.set78.i.i, %if.then75.i.i.if.end85.i.i_crit_edge ]
  %overall_type.5.i.i = phi i32 [ %spec.select207.i.i, %if.end80.i.i ], [ 1, %if.then75.i.i.if.end85.i.i_crit_edge ]
  %330 = and i32 %bf.load81201.i.i, 804992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %331 = icmp eq i32 %330, 0
  %spec.select208.i.i = select i1 %331, i32 %overall_type.5.i.i, i32 2
  br label %det_surface_update.exit.i

det_surface_update.exit.i:                        ; preds = %if.end85.i.i, %if.then5.i.i
  %retval.0.i.i = phi i32 [ 2, %if.then5.i.i ], [ %spec.select208.i.i, %if.end85.i.i ]
  %332 = tail call i32 @llvm.umax.i32(i32 %overall_type.4106.i, i32 %retval.0.i.i) #16
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %surface_count
  br i1 %exitcond.not.i, label %det_surface_update.exit.i.check_update_surfaces_for_stream.exit_crit_edge, label %det_surface_update.exit.i.for.body.i_crit_edge

det_surface_update.exit.i.for.body.i_crit_edge:   ; preds = %det_surface_update.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

det_surface_update.exit.i.check_update_surfaces_for_stream.exit_crit_edge: ; preds = %det_surface_update.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_update_surfaces_for_stream.exit

check_update_surfaces_for_stream.exit:            ; preds = %det_surface_update.exit.i.check_update_surfaces_for_stream.exit_crit_edge, %if.end69.i.check_update_surfaces_for_stream.exit_crit_edge
  %overall_type.4.lcssa.i = phi i32 [ %overall_type.3.i, %if.end69.i.check_update_surfaces_for_stream.exit_crit_edge ], [ %332, %det_surface_update.exit.i.check_update_surfaces_for_stream.exit_crit_edge ]
  %333 = zext i32 %overall_type.4.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %333, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %overall_type.4.lcssa.i, label %check_update_surfaces_for_stream.exit.if.end53_crit_edge [
    i32 2, label %if.then3
    i32 0, label %if.then26
  ]

check_update_surfaces_for_stream.exit.if.end53_crit_edge: ; preds = %check_update_surfaces_for_stream.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then3:                                         ; preds = %check_update_surfaces_for_stream.exit
  br i1 %tobool.not, label %if.then3.if.end14_crit_edge, label %if.then5

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %334 = ptrtoint ptr %stream_update to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %stream_update, align 4
  %update_flags7 = getelementptr inbounds %struct.dc_stream_state, ptr %335, i32 0, i32 54
  %336 = ptrtoint ptr %update_flags7 to i32
  call void @__asan_load1_noabort(i32 %336)
  %bf.load = load i8, ptr %update_flags7, align 4
  %bf.clear = and i8 %bf.load, 1
  store i32 -1, ptr %update_flags7, align 4
  %337 = load ptr, ptr %stream_update, align 4
  %update_flags11 = getelementptr inbounds %struct.dc_stream_state, ptr %337, i32 0, i32 54
  %338 = ptrtoint ptr %update_flags11 to i32
  call void @__asan_load1_noabort(i32 %338)
  %bf.load12 = load i8, ptr %update_flags11, align 4
  %bf.clear13 = and i8 %bf.load12, -2
  %bf.set = or i8 %bf.clear13, %bf.clear
  store i8 %bf.set, ptr %update_flags11, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.then3.if.end14_crit_edge
  br i1 %cmp82, label %if.end14.for.body17_crit_edge, label %if.end14.if.end53_crit_edge

if.end14.if.end53_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.end14.for.body17_crit_edge:                    ; preds = %if.end14
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.end14.for.body17_crit_edge
  %i.185 = phi i32 [ %inc22, %for.body17.for.body17_crit_edge ], [ 0, %if.end14.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.185
  %339 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %arrayidx18, align 8
  %update_flags20 = getelementptr inbounds %struct.dc_plane_state, ptr %340, i32 0, i32 33
  %341 = ptrtoint ptr %update_flags20 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 -1, ptr %update_flags20, align 4
  %inc22 = add nuw nsw i32 %i.185, 1
  %exitcond86.not = icmp eq i32 %inc22, %surface_count
  br i1 %exitcond86.not, label %for.body17.if.end53_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17

for.body17.if.end53_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then26:                                        ; preds = %check_update_surfaces_for_stream.exit
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 13
  %342 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %clk_mgr, align 4
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %funcs, align 4
  %are_clock_states_equal = getelementptr inbounds %struct.clk_mgr_funcs, ptr %345, i32 0, i32 6
  %346 = ptrtoint ptr %are_clock_states_equal to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %are_clock_states_equal, align 4
  %tobool27.not = icmp eq ptr %347, null
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then26
  %clks = getelementptr inbounds %struct.clk_mgr, ptr %343, i32 0, i32 2
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %348 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %current_state, align 4
  %bw_ctx = getelementptr inbounds %struct.dc_state, ptr %349, i32 0, i32 5
  %call33 = tail call zeroext i1 %347(ptr noundef %clks, ptr noundef %bw_ctx) #16
  br i1 %call33, label %if.then28.if.end47_crit_edge, label %if.then28.if.end47.sink.split_crit_edge

if.then28.if.end47.sink.split_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.sink.split

if.then28.if.end47_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.else:                                          ; preds = %if.then26
  %current_state36 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %350 = ptrtoint ptr %current_state36 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %current_state36, align 4
  %bw_ctx37 = getelementptr inbounds %struct.dc_state, ptr %351, i32 0, i32 5
  %clks41 = getelementptr inbounds %struct.clk_mgr, ptr %343, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(52) %bw_ctx37, ptr noundef dereferenceable(52) %clks41, i32 52) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp43.not = icmp eq i32 %bcmp, 0
  br i1 %cmp43.not, label %if.else.if.end47_crit_edge, label %if.else.if.end47.sink.split_crit_edge

if.else.if.end47.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.sink.split

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.end47.sink.split:                              ; preds = %if.else.if.end47.sink.split_crit_edge, %if.then28.if.end47.sink.split_crit_edge
  %optimized_required45 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 19
  %352 = ptrtoint ptr %optimized_required45 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 1, ptr %optimized_required45, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else.if.end47_crit_edge, %if.then28.if.end47_crit_edge
  %wm_optimized_required = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 20
  %353 = ptrtoint ptr %wm_optimized_required to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %wm_optimized_required, align 1, !range !111
  %optimized_required49 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 19
  %355 = ptrtoint ptr %optimized_required49 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %optimized_required49, align 8, !range !111
  %or81 = or i8 %356, %354
  store i8 %or81, ptr %optimized_required49, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end47, %for.body17.if.end53_crit_edge, %if.end14.if.end53_crit_edge, %check_update_surfaces_for_stream.exit.if.end53_crit_edge
  ret i32 %overall_type.4.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_commit_updates_for_stream(ptr noundef %dc, ptr noundef %srf_updates, i32 noundef %surface_count, ptr noundef %stream, ptr noundef %stream_update, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %hw_locks.i = alloca %union.dmub_hw_lock_flags, align 1
  %inst_flags.i = alloca %struct.dmub_hw_lock_inst_flags, align 4
  %hw_locks430.i = alloca %union.dmub_hw_lock_flags, align 1
  %inst_flags431.i = alloca %struct.dmub_hw_lock_inst_flags, align 4
  %old_dsc_cfg.i = alloca %struct.dc_dsc_config, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call ptr @dc_stream_get_status(ptr noundef %stream) #16
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state, align 4
  %call1 = tail call i32 @dc_check_update_surfaces_for_stream(ptr noundef %dc, ptr noundef %srf_updates, i32 noundef %surface_count, ptr noundef %stream_update, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp ugt i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @update_surface_trace(ptr noundef %dc, ptr noundef %srf_updates, i32 noundef %surface_count) #16
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 67552, i32 noundef 3520, i32 noundef -1) #21
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end7

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #16
  br label %cleanup119

if.end7:                                          ; preds = %if.then
  %refcount.i = getelementptr inbounds %struct.dc_state, ptr %call.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcount.i, align 4
  tail call void @dc_resource_state_copy_construct(ptr noundef %state, ptr noundef nonnull %call.i.i.i) #16
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %5 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res_pool, align 8
  %pipe_count253 = getelementptr inbounds %struct.resource_pool, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %pipe_count253 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipe_count253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8254.not = icmp eq i32 %8, 0
  br i1 %cmp8254.not, label %if.end7.if.end24_crit_edge, label %for.body.lr.ph

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

for.body.lr.ph:                                   ; preds = %if.end7
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %call.i.i.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0255
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.if.end18_crit_edge, label %land.lhs.true

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_state, align 4
  %res_ctx10 = getelementptr inbounds %struct.dc_state, ptr %12, i32 0, i32 4
  %arrayidx12 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %i.0255
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12, align 8
  %cmp15.not = icmp eq ptr %10, %14
  br i1 %cmp15.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %force_full_update = getelementptr inbounds %struct.dc_plane_state, ptr %10, i32 0, i32 38
  %15 = ptrtoint ptr %force_full_update to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %force_full_update, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %for.body.if.end18_crit_edge
  %inc = add nuw i32 %i.0255, 1
  %16 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe_count, align 4
  %cmp8 = icmp ult i32 %inc, %19
  br i1 %cmp8, label %if.end18.for.body_crit_edge, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp19 = icmp eq i32 %call1, 0
  br i1 %cmp19, label %land.lhs.true20, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.else
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dce_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %21)
  %cmp21 = icmp sgt i32 %21, 11
  br i1 %cmp21, label %if.then22, label %land.lhs.true20.if.end24_crit_edge

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dc_post_update_surfaces_to_stream(ptr noundef %dc)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true20.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.end18.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %context.0 = phi ptr [ %3, %if.then22 ], [ %3, %land.lhs.true20.if.end24_crit_edge ], [ %3, %if.else.if.end24_crit_edge ], [ %call.i.i.i, %if.end7.if.end24_crit_edge ], [ %call.i.i.i, %if.end18.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %surface_count)
  %cmp26260 = icmp sgt i32 %surface_count, 0
  br i1 %cmp26260, label %for.body27.lr.ph, label %if.end24.for.end53_crit_edge

if.end24.for.end53_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end53

for.body27.lr.ph:                                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp31.not = icmp eq i32 %call1, 0
  %res_pool34 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %res_ctx39 = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  br label %for.body27

for.body27:                                       ; preds = %if.end50.for.body27_crit_edge, %for.body27.lr.ph
  %i.1261 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc52, %if.end50.for.body27_crit_edge ]
  %arrayidx28 = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx28, align 8
  %flip_addr.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 1
  %24 = ptrtoint ptr %flip_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flip_addr.i, align 4
  %tobool.not.i204 = icmp eq ptr %25, null
  br i1 %tobool.not.i204, label %for.body27.if.end24.i_crit_edge, label %if.then.i

for.body27.if.end24.i_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i

if.then.i:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  %26 = call ptr @memcpy(ptr %23, ptr %25, i32 120)
  %27 = ptrtoint ptr %flip_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flip_addr.i, align 4
  %flip_immediate.i = getelementptr inbounds %struct.dc_flip_addrs, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %flip_immediate.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flip_immediate.i, align 4, !range !111
  %flip_immediate5.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 30
  %31 = ptrtoint ptr %flip_immediate5.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %flip_immediate5.i, align 1
  %32 = load ptr, ptr %flip_addr.i, align 4
  %flip_timestamp_in_us.i = getelementptr inbounds %struct.dc_flip_addrs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %flip_timestamp_in_us.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flip_timestamp_in_us.i, align 8
  %time.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 1
  %prev_update_time_in_us.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %prev_update_time_in_us.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prev_update_time_in_us.i, align 4
  %sub.i = sub i32 %34, %36
  %index.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i, align 8
  %arrayidx.i = getelementptr [10 x i32], ptr %time.i, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %40 = load ptr, ptr %flip_addr.i, align 4
  %flip_timestamp_in_us10.i = getelementptr inbounds %struct.dc_flip_addrs, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %flip_timestamp_in_us10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flip_timestamp_in_us10.i, align 8
  store i32 %42, ptr %prev_update_time_in_us.i, align 4
  %43 = load i32, ptr %index.i, align 8
  %inc.i = add i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 9
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %44 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select.i, ptr %index.i, align 8
  %45 = ptrtoint ptr %flip_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %flip_addr.i, align 4
  %triplebuffer_flips.i = getelementptr inbounds %struct.dc_flip_addrs, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %triplebuffer_flips.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %triplebuffer_flips.i, align 1, !range !111
  %triplebuffer_flips22.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 2
  %49 = ptrtoint ptr %triplebuffer_flips22.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %triplebuffer_flips22.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then.i, %for.body27.if.end24.i_crit_edge
  %scaling_info.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 3
  %50 = ptrtoint ptr %scaling_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scaling_info.i, align 4
  %tobool25.not.i = icmp eq ptr %51, null
  br i1 %tobool25.not.i, label %if.end24.i.if.end35.i_crit_edge, label %if.then26.i

if.end24.i.if.end35.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %scaling_quality.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 3
  %scaling_quality28.i = getelementptr inbounds %struct.dc_scaling_info, ptr %51, i32 0, i32 3
  %52 = call ptr @memcpy(ptr %scaling_quality.i, ptr %scaling_quality28.i, i32 20)
  %dst_rect.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 5
  %53 = ptrtoint ptr %scaling_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scaling_info.i, align 4
  %dst_rect30.i = getelementptr inbounds %struct.dc_scaling_info, ptr %54, i32 0, i32 1
  %55 = call ptr @memcpy(ptr %dst_rect.i, ptr %dst_rect30.i, i32 16)
  %src_rect.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 4
  %56 = load ptr, ptr %scaling_info.i, align 4
  %57 = call ptr @memcpy(ptr %src_rect.i, ptr %56, i32 16)
  %clip_rect.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 6
  %58 = load ptr, ptr %scaling_info.i, align 4
  %clip_rect34.i = getelementptr inbounds %struct.dc_scaling_info, ptr %58, i32 0, i32 2
  %59 = call ptr @memcpy(ptr %clip_rect.i, ptr %clip_rect34.i, i32 16)
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end35.i_crit_edge
  %plane_info.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 2
  %60 = ptrtoint ptr %plane_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %plane_info.i, align 8
  %tobool36.not.i = icmp eq ptr %61, null
  br i1 %tobool36.not.i, label %if.end35.i.if.end72.i_crit_edge, label %if.then37.i

if.end35.i.if.end72.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  %color_space.i = getelementptr inbounds %struct.dc_plane_info, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %color_space.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %color_space.i, align 4
  %color_space39.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 18
  %64 = ptrtoint ptr %color_space39.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %color_space39.i, align 8
  %65 = ptrtoint ptr %plane_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %plane_info.i, align 8
  %format.i = getelementptr inbounds %struct.dc_plane_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %format.i, align 4
  %format41.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 22
  %69 = ptrtoint ptr %format41.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %format41.i, align 8
  %plane_size.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 7
  %70 = load ptr, ptr %plane_info.i, align 8
  %71 = call ptr @memcpy(ptr %plane_size.i, ptr %70, i32 40)
  %72 = load ptr, ptr %plane_info.i, align 8
  %rotation.i = getelementptr inbounds %struct.dc_plane_info, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rotation.i, align 4
  %rotation45.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 23
  %75 = ptrtoint ptr %rotation45.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %rotation45.i, align 4
  %76 = load ptr, ptr %plane_info.i, align 8
  %horizontal_mirror.i = getelementptr inbounds %struct.dc_plane_info, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %horizontal_mirror.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %horizontal_mirror.i, align 4, !range !111
  %horizontal_mirror48.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 31
  %79 = ptrtoint ptr %horizontal_mirror48.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %horizontal_mirror48.i, align 2
  %80 = load ptr, ptr %plane_info.i, align 8
  %stereo_format.i = getelementptr inbounds %struct.dc_plane_info, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %stereo_format.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stereo_format.i, align 4
  %stereo_format51.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 24
  %83 = ptrtoint ptr %stereo_format51.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %stereo_format51.i, align 8
  %tiling_info.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 8
  %84 = load ptr, ptr %plane_info.i, align 8
  %tiling_info53.i = getelementptr inbounds %struct.dc_plane_info, ptr %84, i32 0, i32 1
  %85 = call ptr @memcpy(ptr %tiling_info.i, ptr %tiling_info53.i, i32 52)
  %86 = load ptr, ptr %plane_info.i, align 8
  %visible.i = getelementptr inbounds %struct.dc_plane_info, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %visible.i, align 1, !range !111
  %visible56.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 29
  %89 = ptrtoint ptr %visible56.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %visible56.i, align 4
  %90 = load ptr, ptr %plane_info.i, align 8
  %per_pixel_alpha.i = getelementptr inbounds %struct.dc_plane_info, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %per_pixel_alpha.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %per_pixel_alpha.i, align 2, !range !111
  %per_pixel_alpha60.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 26
  %93 = ptrtoint ptr %per_pixel_alpha60.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %per_pixel_alpha60.i, align 1
  %94 = load ptr, ptr %plane_info.i, align 8
  %global_alpha.i = getelementptr inbounds %struct.dc_plane_info, ptr %94, i32 0, i32 10
  %95 = ptrtoint ptr %global_alpha.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %global_alpha.i, align 1, !range !111
  %global_alpha64.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 27
  %97 = ptrtoint ptr %global_alpha64.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %global_alpha64.i, align 2
  %98 = load ptr, ptr %plane_info.i, align 8
  %global_alpha_value.i = getelementptr inbounds %struct.dc_plane_info, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %global_alpha_value.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %global_alpha_value.i, align 4
  %global_alpha_value67.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 28
  %101 = ptrtoint ptr %global_alpha_value67.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %global_alpha_value67.i, align 8
  %dcc.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 9
  %102 = load ptr, ptr %plane_info.i, align 8
  %dcc69.i = getelementptr inbounds %struct.dc_plane_info, ptr %102, i32 0, i32 2
  %103 = call ptr @memcpy(ptr %dcc.i, ptr %dcc69.i, i32 20)
  %104 = load ptr, ptr %plane_info.i, align 8
  %layer_index.i = getelementptr inbounds %struct.dc_plane_info, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %layer_index.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %layer_index.i, align 4
  %layer_index71.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 32
  %107 = ptrtoint ptr %layer_index71.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %layer_index71.i, align 8
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end72.i_crit_edge
  %gamma.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 5
  %108 = ptrtoint ptr %gamma.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %gamma.i, align 8
  %tobool73.not.i = icmp eq ptr %109, null
  br i1 %tobool73.not.i, label %if.end72.i.if.end91.i_crit_edge, label %land.lhs.true.i

if.end72.i.if.end91.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91.i

land.lhs.true.i:                                  ; preds = %if.end72.i
  %gamma_correction.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 10
  %110 = ptrtoint ptr %gamma_correction.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %gamma_correction.i, align 8
  %cmp75.not.i = icmp eq ptr %111, %109
  br i1 %cmp75.not.i, label %land.lhs.true.i.if.end91.i_crit_edge, label %if.then76.i

land.lhs.true.i.if.end91.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91.i

if.then76.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %entries.i = getelementptr inbounds %struct.dc_gamma, ptr %111, i32 0, i32 3
  %entries79.i = getelementptr inbounds %struct.dc_gamma, ptr %109, i32 0, i32 3
  %112 = call ptr @memcpy(ptr %entries.i, ptr %entries79.i, i32 98304)
  %113 = ptrtoint ptr %gamma.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %gamma.i, align 8
  %is_identity.i = getelementptr inbounds %struct.dc_gamma, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %is_identity.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %is_identity.i, align 4, !range !111
  %117 = ptrtoint ptr %gamma_correction.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %gamma_correction.i, align 8
  %is_identity83.i = getelementptr inbounds %struct.dc_gamma, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %is_identity83.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %116, ptr %is_identity83.i, align 4
  %120 = load ptr, ptr %gamma.i, align 8
  %num_entries.i = getelementptr inbounds %struct.dc_gamma, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_entries.i, align 8
  %123 = load ptr, ptr %gamma_correction.i, align 8
  %num_entries87.i = getelementptr inbounds %struct.dc_gamma, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %num_entries87.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %122, ptr %num_entries87.i, align 8
  %125 = load ptr, ptr %gamma.i, align 8
  %type.i = getelementptr inbounds %struct.dc_gamma, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type.i, align 4
  %128 = load ptr, ptr %gamma_correction.i, align 8
  %type90.i = getelementptr inbounds %struct.dc_gamma, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %type90.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %127, ptr %type90.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then76.i, %land.lhs.true.i.if.end91.i_crit_edge, %if.end72.i.if.end91.i_crit_edge
  %in_transfer_func.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 6
  %130 = ptrtoint ptr %in_transfer_func.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %in_transfer_func.i, align 4
  %tobool92.not.i = icmp eq ptr %131, null
  br i1 %tobool92.not.i, label %if.end91.i.if.end110.i_crit_edge, label %land.lhs.true93.i

if.end91.i.if.end110.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110.i

land.lhs.true93.i:                                ; preds = %if.end91.i
  %in_transfer_func94.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 11
  %132 = ptrtoint ptr %in_transfer_func94.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %in_transfer_func94.i, align 4
  %cmp96.not.i = icmp eq ptr %133, %131
  br i1 %cmp96.not.i, label %land.lhs.true93.i.if.end110.i_crit_edge, label %if.then97.i

land.lhs.true93.i.if.end110.i_crit_edge:          ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110.i

if.then97.i:                                      ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #18
  %sdr_ref_white_level.i = getelementptr inbounds %struct.dc_transfer_func, ptr %131, i32 0, i32 3
  %134 = ptrtoint ptr %sdr_ref_white_level.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sdr_ref_white_level.i, align 4
  %sdr_ref_white_level100.i = getelementptr inbounds %struct.dc_transfer_func, ptr %133, i32 0, i32 3
  %136 = ptrtoint ptr %sdr_ref_white_level100.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %sdr_ref_white_level100.i, align 4
  %137 = ptrtoint ptr %in_transfer_func.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %in_transfer_func.i, align 4
  %tf.i = getelementptr inbounds %struct.dc_transfer_func, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tf.i, align 8
  %141 = ptrtoint ptr %in_transfer_func94.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %in_transfer_func94.i, align 4
  %tf103.i = getelementptr inbounds %struct.dc_transfer_func, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %tf103.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %140, ptr %tf103.i, align 8
  %144 = load ptr, ptr %in_transfer_func.i, align 4
  %type105.i = getelementptr inbounds %struct.dc_transfer_func, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %type105.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %type105.i, align 4
  %147 = load ptr, ptr %in_transfer_func94.i, align 4
  %type107.i = getelementptr inbounds %struct.dc_transfer_func, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %type107.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %146, ptr %type107.i, align 4
  %149 = load ptr, ptr %in_transfer_func94.i, align 4
  %150 = getelementptr inbounds %struct.dc_transfer_func, ptr %149, i32 0, i32 4
  %151 = load ptr, ptr %in_transfer_func.i, align 4
  %152 = getelementptr inbounds %struct.dc_transfer_func, ptr %151, i32 0, i32 4
  %153 = call ptr @memcpy(ptr %150, ptr %152, i32 24608)
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then97.i, %land.lhs.true93.i.if.end110.i_crit_edge, %if.end91.i.if.end110.i_crit_edge
  %func_shaper.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 9
  %154 = ptrtoint ptr %func_shaper.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %func_shaper.i, align 8
  %tobool111.not.i = icmp eq ptr %155, null
  br i1 %tobool111.not.i, label %if.end110.i.if.end118.i_crit_edge, label %land.lhs.true112.i

if.end110.i.if.end118.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end118.i

land.lhs.true112.i:                               ; preds = %if.end110.i
  %in_shaper_func.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 20
  %156 = ptrtoint ptr %in_shaper_func.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %in_shaper_func.i, align 8
  %cmp114.not.i = icmp eq ptr %157, %155
  br i1 %cmp114.not.i, label %land.lhs.true112.i.if.end118.i_crit_edge, label %if.then115.i

land.lhs.true112.i.if.end118.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end118.i

if.then115.i:                                     ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #18
  %158 = call ptr @memcpy(ptr %157, ptr %155, i32 24624)
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then115.i, %land.lhs.true112.i.if.end118.i_crit_edge, %if.end110.i.if.end118.i_crit_edge
  %lut3d_func.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 10
  %159 = ptrtoint ptr %lut3d_func.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %lut3d_func.i, align 4
  %tobool119.not.i = icmp eq ptr %160, null
  br i1 %tobool119.not.i, label %if.end118.i.if.end127.i_crit_edge, label %land.lhs.true120.i

if.end118.i.if.end127.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127.i

land.lhs.true120.i:                               ; preds = %if.end118.i
  %lut3d_func121.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 19
  %161 = ptrtoint ptr %lut3d_func121.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %lut3d_func121.i, align 4
  %cmp123.not.i = icmp eq ptr %162, %160
  br i1 %cmp123.not.i, label %land.lhs.true120.i.if.end127.i_crit_edge, label %if.then124.i

land.lhs.true120.i.if.end127.i_crit_edge:         ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127.i

if.then124.i:                                     ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #18
  %163 = call ptr @memcpy(ptr %162, ptr %160, i32 58984)
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then124.i, %land.lhs.true120.i.if.end127.i_crit_edge, %if.end118.i.if.end127.i_crit_edge
  %hdr_mult.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 4
  %164 = ptrtoint ptr %hdr_mult.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %hdr_mult.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %165)
  %tobool128.not.i = icmp eq i64 %165, 0
  br i1 %tobool128.not.i, label %if.end127.i.if.end132.i_crit_edge, label %if.then129.i

if.end127.i.if.end132.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end132.i

if.then129.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #18
  %hdr_mult130.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 15
  %166 = ptrtoint ptr %hdr_mult130.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %hdr_mult130.i, align 8
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then129.i, %if.end127.i.if.end132.i_crit_edge
  %blend_tf.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 11
  %167 = ptrtoint ptr %blend_tf.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %blend_tf.i, align 8
  %tobool133.not.i = icmp eq ptr %168, null
  br i1 %tobool133.not.i, label %if.end132.i.if.end141.i_crit_edge, label %land.lhs.true134.i

if.end132.i.if.end141.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end141.i

land.lhs.true134.i:                               ; preds = %if.end132.i
  %blend_tf135.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 21
  %169 = ptrtoint ptr %blend_tf135.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %blend_tf135.i, align 4
  %cmp137.not.i = icmp eq ptr %170, %168
  br i1 %cmp137.not.i, label %land.lhs.true134.i.if.end141.i_crit_edge, label %if.then138.i

land.lhs.true134.i.if.end141.i_crit_edge:         ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end141.i

if.then138.i:                                     ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #18
  %171 = call ptr @memcpy(ptr %170, ptr %168, i32 24624)
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then138.i, %land.lhs.true134.i.if.end141.i_crit_edge, %if.end132.i.if.end141.i_crit_edge
  %input_csc_color_matrix.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 7
  %172 = ptrtoint ptr %input_csc_color_matrix.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %input_csc_color_matrix.i, align 8
  %tobool142.not.i = icmp eq ptr %173, null
  br i1 %tobool142.not.i, label %if.end141.i.if.end146.i_crit_edge, label %if.then143.i

if.end141.i.if.end146.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146.i

if.then143.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #18
  %input_csc_color_matrix144.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 13
  %174 = call ptr @memcpy(ptr %input_csc_color_matrix144.i, ptr %173, i32 26)
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then143.i, %if.end141.i.if.end146.i_crit_edge
  %coeff_reduction_factor.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 8
  %175 = ptrtoint ptr %coeff_reduction_factor.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %coeff_reduction_factor.i, align 4
  %tobool147.not.i = icmp eq ptr %176, null
  br i1 %tobool147.not.i, label %if.end146.i.if.end151.i_crit_edge, label %if.then148.i

if.end146.i.if.end151.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151.i

if.then148.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #18
  %coeff_reduction_factor149.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 14
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %176, align 8
  %179 = ptrtoint ptr %coeff_reduction_factor149.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %178, ptr %coeff_reduction_factor149.i, align 8
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then148.i, %if.end146.i.if.end151.i_crit_edge
  %gamut_remap_matrix.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1261, i32 12
  %180 = ptrtoint ptr %gamut_remap_matrix.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %gamut_remap_matrix.i, align 4
  %tobool152.not.i = icmp eq ptr %181, null
  br i1 %tobool152.not.i, label %if.end151.i.copy_surface_update_to_plane.exit_crit_edge, label %if.then153.i

if.end151.i.copy_surface_update_to_plane.exit_crit_edge: ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_surface_update_to_plane.exit

if.then153.i:                                     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #18
  %gamut_remap_matrix154.i = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 16
  %182 = call ptr @memcpy(ptr %gamut_remap_matrix154.i, ptr %181, i32 104)
  br label %copy_surface_update_to_plane.exit

copy_surface_update_to_plane.exit:                ; preds = %if.then153.i, %if.end151.i.copy_surface_update_to_plane.exit_crit_edge
  br i1 %cmp31.not, label %copy_surface_update_to_plane.exit.if.end50_crit_edge, label %for.cond33.preheader

copy_surface_update_to_plane.exit.if.end50_crit_edge: ; preds = %copy_surface_update_to_plane.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

for.cond33.preheader:                             ; preds = %copy_surface_update_to_plane.exit
  %183 = ptrtoint ptr %res_pool34 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %res_pool34, align 8
  %pipe_count35257 = getelementptr inbounds %struct.resource_pool, ptr %184, i32 0, i32 19
  %185 = ptrtoint ptr %pipe_count35257 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %pipe_count35257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp36258.not = icmp eq i32 %186, 0
  br i1 %cmp36258.not, label %for.cond33.preheader.if.end50_crit_edge, label %for.cond33.preheader.for.body37_crit_edge

for.cond33.preheader.for.body37_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body37

for.cond33.preheader.if.end50_crit_edge:          ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

for.body37:                                       ; preds = %cleanup.for.body37_crit_edge, %for.cond33.preheader.for.body37_crit_edge
  %j.0259 = phi i32 [ %inc48, %cleanup.for.body37_crit_edge ], [ 0, %for.cond33.preheader.for.body37_crit_edge ]
  %arrayidx41 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx39, i32 0, i32 %j.0259
  %187 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx41, align 8
  %cmp43.not = icmp eq ptr %188, %23
  br i1 %cmp43.not, label %if.end45, label %for.body37.cleanup_crit_edge

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end45:                                         ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #18
  %call46 = tail call zeroext i1 @resource_build_scaling_params(ptr noundef %arrayidx41) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %for.body37.cleanup_crit_edge
  %inc48 = add nuw i32 %j.0259, 1
  %189 = ptrtoint ptr %res_pool34 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %res_pool34, align 8
  %pipe_count35 = getelementptr inbounds %struct.resource_pool, ptr %190, i32 0, i32 19
  %191 = ptrtoint ptr %pipe_count35 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pipe_count35, align 4
  %cmp36 = icmp ult i32 %inc48, %192
  br i1 %cmp36, label %cleanup.for.body37_crit_edge, label %cleanup.if.end50_crit_edge

cleanup.if.end50_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

cleanup.for.body37_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body37

if.end50:                                         ; preds = %cleanup.if.end50_crit_edge, %for.cond33.preheader.if.end50_crit_edge, %copy_surface_update_to_plane.exit.if.end50_crit_edge
  %inc52 = add nuw nsw i32 %i.1261, 1
  %exitcond.not = icmp eq i32 %inc52, %surface_count
  br i1 %exitcond.not, label %if.end50.for.end53_crit_edge, label %if.end50.for.body27_crit_edge

if.end50.for.body27_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27

if.end50.for.end53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end53

for.end53:                                        ; preds = %if.end50.for.end53_crit_edge, %if.end24.for.end53_crit_edge
  %cmp.i205 = icmp eq ptr %stream_update, null
  %cmp1.i = icmp eq ptr %stream, null
  %or.cond.i = or i1 %cmp1.i, %cmp.i205
  br i1 %or.cond.i, label %for.end53.copy_stream_update_to_stream.exit_crit_edge, label %if.end.i207

for.end53.copy_stream_update_to_stream.exit_crit_edge: ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_stream_update_to_stream.exit

if.end.i207:                                      ; preds = %for.end53
  %src.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 1
  %height.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 1, i32 3
  %193 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.not.i206 = icmp eq i32 %194, 0
  br i1 %tobool.not.i206, label %if.end.i207.if.end7.i_crit_edge, label %land.lhs.true.i208

if.end.i207.if.end7.i_crit_edge:                  ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

land.lhs.true.i208:                               ; preds = %if.end.i207
  %width.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 1, i32 2
  %195 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool3.not.i = icmp eq i32 %196, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i208.if.end7.i_crit_edge, label %if.then4.i

land.lhs.true.i208.if.end7.i_crit_edge:           ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then4.i:                                       ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #18
  %src5.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 10
  %197 = call ptr @memcpy(ptr %src5.i, ptr %src.i, i32 16)
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %land.lhs.true.i208.if.end7.i_crit_edge, %if.end.i207.if.end7.i_crit_edge
  %dst.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 2
  %height8.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 2, i32 3
  %198 = ptrtoint ptr %height8.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %height8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool9.not.i = icmp eq i32 %199, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end17.i_crit_edge, label %land.lhs.true10.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

land.lhs.true10.i:                                ; preds = %if.end7.i
  %width12.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 2, i32 2
  %200 = ptrtoint ptr %width12.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %width12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool13.not.i = icmp eq i32 %201, 0
  br i1 %tobool13.not.i, label %land.lhs.true10.i.if.end17.i_crit_edge, label %if.then14.i

land.lhs.true10.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then14.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst15.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 11
  %202 = call ptr @memcpy(ptr %dst15.i, ptr %dst.i, i32 16)
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %land.lhs.true10.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge
  %out_transfer_func.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 3
  %203 = ptrtoint ptr %out_transfer_func.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %out_transfer_func.i, align 4
  %tobool18.not.i = icmp eq ptr %204, null
  br i1 %tobool18.not.i, label %if.end17.i.if.end35.i213_crit_edge, label %land.lhs.true19.i

if.end17.i.if.end35.i213_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i213

land.lhs.true19.i:                                ; preds = %if.end17.i
  %out_transfer_func20.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 17
  %205 = ptrtoint ptr %out_transfer_func20.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %out_transfer_func20.i, align 4
  %cmp22.not.i = icmp eq ptr %206, %204
  br i1 %cmp22.not.i, label %land.lhs.true19.i.if.end35.i213_crit_edge, label %if.then23.i

land.lhs.true19.i.if.end35.i213_crit_edge:        ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i213

if.then23.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #18
  %sdr_ref_white_level.i209 = getelementptr inbounds %struct.dc_transfer_func, ptr %204, i32 0, i32 3
  %207 = ptrtoint ptr %sdr_ref_white_level.i209 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %sdr_ref_white_level.i209, align 4
  %sdr_ref_white_level26.i = getelementptr inbounds %struct.dc_transfer_func, ptr %206, i32 0, i32 3
  %209 = ptrtoint ptr %sdr_ref_white_level26.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %sdr_ref_white_level26.i, align 4
  %210 = ptrtoint ptr %out_transfer_func.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %out_transfer_func.i, align 4
  %tf.i210 = getelementptr inbounds %struct.dc_transfer_func, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %tf.i210 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %tf.i210, align 8
  %214 = ptrtoint ptr %out_transfer_func20.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %out_transfer_func20.i, align 4
  %tf29.i = getelementptr inbounds %struct.dc_transfer_func, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %tf29.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %213, ptr %tf29.i, align 8
  %217 = load ptr, ptr %out_transfer_func.i, align 4
  %type.i211 = getelementptr inbounds %struct.dc_transfer_func, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %type.i211 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %type.i211, align 4
  %220 = load ptr, ptr %out_transfer_func20.i, align 4
  %type32.i = getelementptr inbounds %struct.dc_transfer_func, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %type32.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %219, ptr %type32.i, align 4
  %222 = load ptr, ptr %out_transfer_func20.i, align 4
  %223 = getelementptr inbounds %struct.dc_transfer_func, ptr %222, i32 0, i32 4
  %224 = load ptr, ptr %out_transfer_func.i, align 4
  %225 = getelementptr inbounds %struct.dc_transfer_func, ptr %224, i32 0, i32 4
  %226 = call ptr @memcpy(ptr %223, ptr %225, i32 24608)
  br label %if.end35.i213

if.end35.i213:                                    ; preds = %if.then23.i, %land.lhs.true19.i.if.end35.i213_crit_edge, %if.end17.i.if.end35.i213_crit_edge
  %hdr_static_metadata.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 4
  %227 = ptrtoint ptr %hdr_static_metadata.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hdr_static_metadata.i, align 4
  %tobool36.not.i212 = icmp eq ptr %228, null
  br i1 %tobool36.not.i212, label %if.end35.i213.if.end40.i_crit_edge, label %if.then37.i214

if.end35.i213.if.end40.i_crit_edge:               ; preds = %if.end35.i213
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i

if.then37.i214:                                   ; preds = %if.end35.i213
  call void @__sanitizer_cov_trace_pc() #18
  %hdr_static_metadata38.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 14
  %229 = call ptr @memcpy(ptr %hdr_static_metadata38.i, ptr %228, i32 37)
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i214, %if.end35.i213.if.end40.i_crit_edge
  %abm_level.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 5
  %230 = ptrtoint ptr %abm_level.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %abm_level.i, align 4
  %tobool41.not.i = icmp eq ptr %231, null
  br i1 %tobool41.not.i, label %if.end40.i.if.end45.i_crit_edge, label %if.then42.i

if.end40.i.if.end45.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 4
  %abm_level44.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 29
  %234 = ptrtoint ptr %abm_level44.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %abm_level44.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.end40.i.if.end45.i_crit_edge
  %periodic_interrupt0.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 6
  %235 = ptrtoint ptr %periodic_interrupt0.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %periodic_interrupt0.i, align 4
  %tobool46.not.i = icmp eq ptr %236, null
  br i1 %tobool46.not.i, label %if.end45.i.if.end50.i_crit_edge, label %if.then47.i

if.end45.i.if.end50.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  %periodic_interrupt048.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 30
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 8)
  %238 = load i64, ptr %236, align 4
  %239 = ptrtoint ptr %periodic_interrupt048.i to i32
  call void @__asan_storeN_noabort(i32 %239, i32 8)
  store i64 %238, ptr %periodic_interrupt048.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end45.i.if.end50.i_crit_edge
  %periodic_interrupt1.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 7
  %240 = ptrtoint ptr %periodic_interrupt1.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %periodic_interrupt1.i, align 4
  %tobool51.not.i = icmp eq ptr %241, null
  br i1 %tobool51.not.i, label %if.end50.i.if.end55.i_crit_edge, label %if.then52.i

if.end50.i.if.end55.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  %periodic_interrupt153.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 31
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 8)
  %243 = load i64, ptr %241, align 4
  %244 = ptrtoint ptr %periodic_interrupt153.i to i32
  call void @__asan_storeN_noabort(i32 %244, i32 8)
  store i64 %243, ptr %periodic_interrupt153.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end50.i.if.end55.i_crit_edge
  %gamut_remap.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 13
  %245 = ptrtoint ptr %gamut_remap.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %gamut_remap.i, align 4
  %tobool56.not.i = icmp eq ptr %246, null
  br i1 %tobool56.not.i, label %if.end55.i.if.end59.i_crit_edge, label %if.then57.i

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  %gamut_remap_matrix.i215 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 18
  %247 = call ptr @memcpy(ptr %gamut_remap_matrix.i215, ptr %246, i32 104)
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end59.i_crit_edge
  %output_color_space.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 14
  %248 = ptrtoint ptr %output_color_space.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %output_color_space.i, align 4
  %tobool60.not.i = icmp eq ptr %249, null
  br i1 %tobool60.not.i, label %if.end59.i.if.end64.i_crit_edge, label %if.then61.i

if.end59.i.if.end64.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64.i

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #18
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 4
  %output_color_space63.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 20
  %252 = ptrtoint ptr %output_color_space63.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %output_color_space63.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %if.end59.i.if.end64.i_crit_edge
  %output_csc_transform.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 16
  %253 = ptrtoint ptr %output_csc_transform.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %output_csc_transform.i, align 4
  %tobool65.not.i = icmp eq ptr %254, null
  br i1 %tobool65.not.i, label %if.end64.i.if.end68.i_crit_edge, label %if.then66.i

if.end64.i.if.end68.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #18
  %csc_color_matrix.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 19
  %255 = call ptr @memcpy(ptr %csc_color_matrix.i, ptr %254, i32 26)
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.end64.i.if.end68.i_crit_edge
  %vrr_infopacket.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 8
  %256 = ptrtoint ptr %vrr_infopacket.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %vrr_infopacket.i, align 4
  %tobool69.not.i = icmp eq ptr %257, null
  br i1 %tobool69.not.i, label %if.end68.i.if.end73.i_crit_edge, label %if.then70.i

if.end68.i.if.end73.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  %vrr_infopacket71.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 7
  %258 = call ptr @memcpy(ptr %vrr_infopacket71.i, ptr %257, i32 37)
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.end68.i.if.end73.i_crit_edge
  %dpms_off.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 11
  %259 = ptrtoint ptr %dpms_off.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dpms_off.i, align 4
  %tobool74.not.i = icmp eq ptr %260, null
  br i1 %tobool74.not.i, label %if.end73.i.if.end79.i_crit_edge, label %if.then75.i

if.end73.i.if.end79.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

if.then75.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #18
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %260, align 1, !range !111
  %dpms_off78.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 37
  %263 = ptrtoint ptr %dpms_off78.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %dpms_off78.i, align 8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then75.i, %if.end73.i.if.end79.i_crit_edge
  %vsc_infopacket.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 9
  %264 = ptrtoint ptr %vsc_infopacket.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %vsc_infopacket.i, align 4
  %tobool80.not.i = icmp eq ptr %265, null
  br i1 %tobool80.not.i, label %if.end79.i.if.end84.i_crit_edge, label %if.then81.i

if.end79.i.if.end84.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end84.i

if.then81.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  %vsc_infopacket82.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 8
  %266 = call ptr @memcpy(ptr %vsc_infopacket82.i, ptr %265, i32 37)
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then81.i, %if.end79.i.if.end84.i_crit_edge
  %vsp_infopacket.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 10
  %267 = ptrtoint ptr %vsp_infopacket.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %vsp_infopacket.i, align 4
  %tobool85.not.i = icmp eq ptr %268, null
  br i1 %tobool85.not.i, label %if.end84.i.if.end89.i_crit_edge, label %if.then86.i

if.end84.i.if.end89.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89.i

if.then86.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #18
  %vsp_infopacket87.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 9
  %269 = call ptr @memcpy(ptr %vsp_infopacket87.i, ptr %268, i32 37)
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then86.i, %if.end84.i.if.end89.i_crit_edge
  %dither_option.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 15
  %270 = ptrtoint ptr %dither_option.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dither_option.i, align 4
  %tobool90.not.i = icmp eq ptr %271, null
  br i1 %tobool90.not.i, label %if.end89.i.if.end94.i_crit_edge, label %if.then91.i

if.end89.i.if.end94.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94.i

if.then91.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %271, align 4
  %dither_option93.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 21
  %274 = ptrtoint ptr %dither_option93.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %dither_option93.i, align 8
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then91.i, %if.end89.i.if.end94.i_crit_edge
  %pending_test_pattern.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 21
  %275 = ptrtoint ptr %pending_test_pattern.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pending_test_pattern.i, align 4
  %tobool95.not.i = icmp eq ptr %276, null
  br i1 %tobool95.not.i, label %if.end94.i.if.end98.i_crit_edge, label %if.then96.i

if.end94.i.if.end98.i_crit_edge:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i

if.then96.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #18
  %test_pattern.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 53
  %277 = call ptr @memcpy(ptr %test_pattern.i, ptr %276, i32 20)
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then96.i, %if.end94.i.if.end98.i_crit_edge
  %wb_update.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 17
  %278 = ptrtoint ptr %wb_update.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %wb_update.i, align 4
  %tobool99.not.i = icmp eq ptr %279, null
  br i1 %tobool99.not.i, label %if.end98.i.if.end155.i_crit_edge, label %if.then100.i

if.end98.i.if.end155.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155.i

if.then100.i:                                     ; preds = %if.end98.i
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %279, align 8
  %num_wb_info102.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 44
  %282 = ptrtoint ptr %num_wb_info102.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %num_wb_info102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %281)
  %cmp104.i = icmp ugt i32 %281, 1
  br i1 %cmp104.i, label %land.rhs.i, label %if.then100.i.do.end149.i_crit_edge

if.then100.i.do.end149.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end149.i

land.rhs.i:                                       ; preds = %if.then100.i
  %.b1.i = load i1, ptr @copy_stream_update_to_stream.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then146.i_crit_edge, label %if.then114.i, !prof !109

land.rhs.i.if.then146.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then146.i

if.then114.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @copy_stream_update_to_stream.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2669, i32 noundef 9, ptr noundef null) #16
  br label %if.then146.i

if.then146.i:                                     ; preds = %if.then114.i, %land.rhs.i.if.then146.i_crit_edge
  tail call void @kgdb_breakpoint() #16
  %283 = ptrtoint ptr %num_wb_info102.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %.pr.i = load i32, ptr %num_wb_info102.i, align 4
  br label %do.end149.i

do.end149.i:                                      ; preds = %if.then146.i, %if.then100.i.do.end149.i_crit_edge
  %284 = phi i32 [ %281, %if.then100.i.do.end149.i_crit_edge ], [ %.pr.i, %if.then146.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp1514.not.i = icmp eq i32 %284, 0
  br i1 %cmp1514.not.i, label %do.end149.i.if.end155.i_crit_edge, label %do.end149.i.for.body.i_crit_edge

do.end149.i.for.body.i_crit_edge:                 ; preds = %do.end149.i
  br label %for.body.i

do.end149.i.if.end155.i_crit_edge:                ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end149.i.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i217, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end149.i.for.body.i_crit_edge ]
  %arrayidx.i216 = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %i.05.i
  %285 = ptrtoint ptr %wb_update.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %wb_update.i, align 4
  %arrayidx154.i = getelementptr %struct.dc_writeback_update, ptr %286, i32 0, i32 1, i32 %i.05.i
  %287 = call ptr @memcpy(ptr %arrayidx.i216, ptr %arrayidx154.i, i32 352)
  %inc.i217 = add nuw i32 %i.05.i, 1
  %288 = ptrtoint ptr %num_wb_info102.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %num_wb_info102.i, align 4
  %cmp151.i = icmp ult i32 %inc.i217, %289
  br i1 %cmp151.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end155.i_crit_edge

for.body.i.if.end155.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end155.i:                                      ; preds = %for.body.i.if.end155.i_crit_edge, %do.end149.i.if.end155.i_crit_edge, %if.end98.i.if.end155.i_crit_edge
  %dsc_config.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 18
  %290 = ptrtoint ptr %dsc_config.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dsc_config.i, align 4
  %tobool156.not.i = icmp eq ptr %291, null
  br i1 %tobool156.not.i, label %if.end155.i.copy_stream_update_to_stream.exit_crit_edge, label %if.then157.i

if.end155.i.copy_stream_update_to_stream.exit_crit_edge: ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_stream_update_to_stream.exit

if.then157.i:                                     ; preds = %if.end155.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %old_dsc_cfg.i)
  %dsc_cfg.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 23
  %292 = call ptr @memcpy(ptr %old_dsc_cfg.i, ptr %dsc_cfg.i, i32 36)
  %flags.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 21
  %293 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %bf.load.i = load i32, ptr %flags.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 8192
  %294 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %291, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %cmp160.not.i = icmp eq i32 %295, 0
  br i1 %cmp160.not.i, label %if.then157.i.land.end164.i_crit_edge, label %land.rhs161.i

if.then157.i.land.end164.i_crit_edge:             ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end164.i

land.rhs161.i:                                    ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #18
  %num_slices_v.i = getelementptr inbounds %struct.dc_dsc_config, ptr %291, i32 0, i32 1
  %296 = ptrtoint ptr %num_slices_v.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %num_slices_v.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp163.not.i = icmp eq i32 %297, 0
  %phi.bo.i = select i1 %cmp163.not.i, i32 0, i32 8192
  br label %land.end164.i

land.end164.i:                                    ; preds = %land.rhs161.i, %if.then157.i.land.end164.i_crit_edge
  %298 = phi i32 [ 0, %if.then157.i.land.end164.i_crit_edge ], [ %phi.bo.i, %land.rhs161.i ]
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 67552, i32 noundef 3520, i32 noundef -1) #21
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.body187.i, label %if.then166.i

if.then166.i:                                     ; preds = %land.end164.i
  %refcount.i.i = getelementptr inbounds %struct.dc_state, ptr %call.i.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  %299 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store volatile i32 1, ptr %refcount.i.i, align 4
  %300 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %current_state, align 4
  tail call void @dc_resource_state_copy_construct(ptr noundef %301, ptr noundef nonnull %call.i.i.i.i) #16
  %302 = ptrtoint ptr %dsc_config.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dsc_config.i, align 4
  %304 = call ptr @memcpy(ptr %dsc_cfg.i, ptr %303, i32 36)
  %305 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %bf.load172.i = load i32, ptr %flags.i, align 4
  %bf.clear173.i = and i32 %bf.load172.i, -8193
  %bf.set.i = or i32 %bf.clear173.i, %298
  store i32 %bf.set.i, ptr %flags.i, align 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %306 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %res_pool.i, align 8
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %307, i32 0, i32 40
  %308 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %funcs.i, align 4
  %validate_bandwidth.i = getelementptr inbounds %struct.resource_funcs, ptr %309, i32 0, i32 5
  %310 = ptrtoint ptr %validate_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %validate_bandwidth.i, align 4
  %call174.i = tail call zeroext i1 %311(ptr noundef %dc, ptr noundef nonnull %call.i.i.i.i, i1 noundef zeroext true) #16
  br i1 %call174.i, label %if.then166.i.if.end186.i_crit_edge, label %if.then175.i

if.then166.i.if.end186.i_crit_edge:               ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end186.i

if.then175.i:                                     ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #18
  %312 = call ptr @memcpy(ptr %dsc_cfg.i, ptr %old_dsc_cfg.i, i32 36)
  %313 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %bf.load180.i = load i32, ptr %flags.i, align 4
  %bf.clear183.i = and i32 %bf.load180.i, -8193
  %bf.set184.i = or i32 %bf.clear183.i, %bf.clear.i
  store i32 %bf.set184.i, ptr %flags.i, align 4
  %314 = ptrtoint ptr %dsc_config.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr null, ptr %dsc_config.i, align 4
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then175.i, %if.then166.i.if.end186.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %315 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %315, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end191.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !109

if.end5.i.i.i.i.i.i.if.end191.i_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #16
  br label %if.end191.i

if.then.i.i.i:                                    ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !110
  tail call void @dc_resource_state_destruct(ptr noundef nonnull %call.i.i.i.i) #16
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #16
  br label %if.end191.i

do.body187.i:                                     ; preds = %land.end164.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #16
  %316 = ptrtoint ptr %dsc_config.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %dsc_config.i, align 4
  br label %if.end191.i

if.end191.i:                                      ; preds = %do.body187.i, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end191.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %old_dsc_cfg.i)
  br label %copy_stream_update_to_stream.exit

copy_stream_update_to_stream.exit:                ; preds = %if.end191.i, %if.end155.i.copy_stream_update_to_stream.exit_crit_edge, %for.end53.copy_stream_update_to_stream.exit_crit_edge
  br i1 %cmp, label %if.then55, label %copy_stream_update_to_stream.exit.if.end63_crit_edge

copy_stream_update_to_stream.exit.if.end63_crit_edge: ; preds = %copy_stream_update_to_stream.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.then55:                                        ; preds = %copy_stream_update_to_stream.exit
  %res_pool56 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %317 = ptrtoint ptr %res_pool56 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %res_pool56, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %318, i32 0, i32 40
  %319 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %funcs, align 4
  %validate_bandwidth = getelementptr inbounds %struct.resource_funcs, ptr %320, i32 0, i32 5
  %321 = ptrtoint ptr %validate_bandwidth to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %validate_bandwidth, align 4
  %call57 = tail call zeroext i1 %322(ptr noundef %dc, ptr noundef %context.0, i1 noundef zeroext false) #16
  br i1 %call57, label %if.then55.if.end63_crit_edge, label %do.body59

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

do.body59:                                        ; preds = %if.then55
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #16
  %refcount.i218 = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i218, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %refcount.i218, i32 1, i32 3, i32 1) #16
  %323 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i218, ptr %refcount.i218, i32 1, ptr elementtype(i32) %refcount.i218) #16, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %323, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.body59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup119_crit_edge, label %if.then10.i.i.i.i.i, !prof !109

if.end5.i.i.i.i.i.cleanup119_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup119

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i218, i32 noundef 3) #16
  br label %cleanup119

if.then.i.i:                                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !110
  tail call void @dc_resource_state_destruct(ptr noundef %context.0) #16
  tail call void @kvfree(ptr noundef %context.0) #16
  br label %cleanup119

if.end63:                                         ; preds = %if.then55.if.end63_crit_edge, %copy_stream_update_to_stream.exit.if.end63_crit_edge
  %324 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %current_state, align 4
  %res_ctx69 = getelementptr inbounds %struct.dc_state, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %res_ctx69 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %res_ctx69, align 8
  %tobool73.not = icmp eq ptr %327, null
  br i1 %tobool73.not, label %if.end63.if.end77_crit_edge, label %if.then74

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then74:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx = getelementptr %struct.dc_state, ptr %325, i32 0, i32 4, i32 0, i32 0, i32 7
  %328 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %pipe_idx, align 8
  %conv = zext i8 %329 to i32
  %stream76 = getelementptr %struct.dc_state, ptr %325, i32 0, i32 4, i32 0, i32 0, i32 1
  %330 = ptrtoint ptr %stream76 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %stream76, align 4
  %plane_res = getelementptr %struct.dc_state, ptr %325, i32 0, i32 4, i32 0, i32 0, i32 2
  %update_flags = getelementptr %struct.dc_state, ptr %325, i32 0, i32 4, i32 0, i32 0, i32 13
  %332 = ptrtoint ptr %update_flags to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %update_flags, align 4
  tail call fastcc void @trace_amdgpu_dm_dc_pipe_state(i32 noundef %conv, ptr noundef nonnull %327, ptr noundef %331, ptr noundef %plane_res, i32 noundef %333)
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end63.if.end77_crit_edge
  %334 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %current_state, align 4
  %arrayidx71.1 = getelementptr %struct.dc_state, ptr %335, i32 0, i32 4, i32 0, i32 1
  %336 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %arrayidx71.1, align 8
  %tobool73.not.1 = icmp eq ptr %337, null
  br i1 %tobool73.not.1, label %if.end77.if.end77.1_crit_edge, label %if.then74.1

if.end77.if.end77.1_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.1

if.then74.1:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx.1 = getelementptr %struct.dc_state, ptr %335, i32 0, i32 4, i32 0, i32 1, i32 7
  %338 = ptrtoint ptr %pipe_idx.1 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %pipe_idx.1, align 8
  %conv.1 = zext i8 %339 to i32
  %stream76.1 = getelementptr %struct.dc_state, ptr %335, i32 0, i32 4, i32 0, i32 1, i32 1
  %340 = ptrtoint ptr %stream76.1 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %stream76.1, align 4
  %plane_res.1 = getelementptr %struct.dc_state, ptr %335, i32 0, i32 4, i32 0, i32 1, i32 2
  %update_flags.1 = getelementptr %struct.dc_state, ptr %335, i32 0, i32 4, i32 0, i32 1, i32 13
  %342 = ptrtoint ptr %update_flags.1 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %update_flags.1, align 4
  tail call fastcc void @trace_amdgpu_dm_dc_pipe_state(i32 noundef %conv.1, ptr noundef nonnull %337, ptr noundef %341, ptr noundef %plane_res.1, i32 noundef %343)
  br label %if.end77.1

if.end77.1:                                       ; preds = %if.then74.1, %if.end77.if.end77.1_crit_edge
  %344 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %current_state, align 4
  %arrayidx71.2 = getelementptr %struct.dc_state, ptr %345, i32 0, i32 4, i32 0, i32 2
  %346 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx71.2, align 8
  %tobool73.not.2 = icmp eq ptr %347, null
  br i1 %tobool73.not.2, label %if.end77.1.if.end77.2_crit_edge, label %if.then74.2

if.end77.1.if.end77.2_crit_edge:                  ; preds = %if.end77.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.2

if.then74.2:                                      ; preds = %if.end77.1
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx.2 = getelementptr %struct.dc_state, ptr %345, i32 0, i32 4, i32 0, i32 2, i32 7
  %348 = ptrtoint ptr %pipe_idx.2 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %pipe_idx.2, align 8
  %conv.2 = zext i8 %349 to i32
  %stream76.2 = getelementptr %struct.dc_state, ptr %345, i32 0, i32 4, i32 0, i32 2, i32 1
  %350 = ptrtoint ptr %stream76.2 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %stream76.2, align 4
  %plane_res.2 = getelementptr %struct.dc_state, ptr %345, i32 0, i32 4, i32 0, i32 2, i32 2
  %update_flags.2 = getelementptr %struct.dc_state, ptr %345, i32 0, i32 4, i32 0, i32 2, i32 13
  %352 = ptrtoint ptr %update_flags.2 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %update_flags.2, align 4
  tail call fastcc void @trace_amdgpu_dm_dc_pipe_state(i32 noundef %conv.2, ptr noundef nonnull %347, ptr noundef %351, ptr noundef %plane_res.2, i32 noundef %353)
  br label %if.end77.2

if.end77.2:                                       ; preds = %if.then74.2, %if.end77.1.if.end77.2_crit_edge
  %354 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %current_state, align 4
  %arrayidx71.3 = getelementptr %struct.dc_state, ptr %355, i32 0, i32 4, i32 0, i32 3
  %356 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx71.3, align 8
  %tobool73.not.3 = icmp eq ptr %357, null
  br i1 %tobool73.not.3, label %if.end77.2.if.end77.3_crit_edge, label %if.then74.3

if.end77.2.if.end77.3_crit_edge:                  ; preds = %if.end77.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.3

if.then74.3:                                      ; preds = %if.end77.2
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx.3 = getelementptr %struct.dc_state, ptr %355, i32 0, i32 4, i32 0, i32 3, i32 7
  %358 = ptrtoint ptr %pipe_idx.3 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %pipe_idx.3, align 8
  %conv.3 = zext i8 %359 to i32
  %stream76.3 = getelementptr %struct.dc_state, ptr %355, i32 0, i32 4, i32 0, i32 3, i32 1
  %360 = ptrtoint ptr %stream76.3 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %stream76.3, align 4
  %plane_res.3 = getelementptr %struct.dc_state, ptr %355, i32 0, i32 4, i32 0, i32 3, i32 2
  %update_flags.3 = getelementptr %struct.dc_state, ptr %355, i32 0, i32 4, i32 0, i32 3, i32 13
  %362 = ptrtoint ptr %update_flags.3 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %update_flags.3, align 4
  tail call fastcc void @trace_amdgpu_dm_dc_pipe_state(i32 noundef %conv.3, ptr noundef nonnull %357, ptr noundef %361, ptr noundef %plane_res.3, i32 noundef %363)
  br label %if.end77.3

if.end77.3:                                       ; preds = %if.then74.3, %if.end77.2.if.end77.3_crit_edge
  %364 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %current_state, align 4
  %arrayidx71.4 = getelementptr %struct.dc_state, ptr %365, i32 0, i32 4, i32 0, i32 4
  %366 = ptrtoint ptr %arrayidx71.4 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx71.4, align 8
  %tobool73.not.4 = icmp eq ptr %367, null
  br i1 %tobool73.not.4, label %if.end77.3.if.end77.4_crit_edge, label %if.then74.4

if.end77.3.if.end77.4_crit_edge:                  ; preds = %if.end77.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.4

if.then74.4:                                      ; preds = %if.end77.3
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx.4 = getelementptr %struct.dc_state, ptr %365, i32 0, i32 4, i32 0, i32 4, i32 7
  %368 = ptrtoint ptr %pipe_idx.4 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %pipe_idx.4, align 8
  %conv.4 = zext i8 %369 to i32
  %stream76.4 = getelementptr %struct.dc_state, ptr %365, i32 0, i32 4, i32 0, i32 4, i32 1
  %370 = ptrtoint ptr %stream76.4 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %stream76.4, align 4
  %plane_res.4 = getelementptr %struct.dc_state, ptr %365, i32 0, i32 4, i32 0, i32 4, i32 2
  %update_flags.4 = getelementptr %struct.dc_state, ptr %365, i32 0, i32 4, i32 0, i32 4, i32 13
  %372 = ptrtoint ptr %update_flags.4 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %update_flags.4, align 4
  tail call fastcc void @trace_amdgpu_dm_dc_pipe_state(i32 noundef %conv.4, ptr noundef nonnull %367, ptr noundef %371, ptr noundef %plane_res.4, i32 noundef %373)
  br label %if.end77.4

if.end77.4:                                       ; preds = %if.then74.4, %if.end77.3.if.end77.4_crit_edge
  %374 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %current_state, align 4
  %arrayidx71.5 = getelementptr %struct.dc_state, ptr %375, i32 0, i32 4, i32 0, i32 5
  %376 = ptrtoint ptr %arrayidx71.5 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %arrayidx71.5, align 8
  %tobool73.not.5 = icmp eq ptr %377, null
  br i1 %tobool73.not.5, label %if.end77.4.if.end77.5_crit_edge, label %if.then74.5

if.end77.4.if.end77.5_crit_edge:                  ; preds = %if.end77.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.5

if.then74.5:                                      ; preds = %if.end77.4
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_idx.5 = getelementptr %struct.dc_state, ptr %375, i32 0, i32 4, i32 0, i32 5, i32 7
  %378 = ptrtoint ptr %pipe_idx.5 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %pipe_idx.5, align 8
  %conv.5 = zext i8 %379 to i32
  %stream76.5 = getelementptr %struct.dc_state, ptr %375, i32 0, i32 4, i32 0, i32 5, i32 1
  %380 = ptrtoint ptr %stream76.5 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %stream76.5, align 4
  %plane_res.5 = getelementptr %struct.dc_state, ptr %375, i32 0, i32 4, i32 0, i32 5, i32 2
  %update_flags.5 = getelementptr %struct.dc_state, ptr %375, i32 0, i32 4, i32 0, i32 5, i32 13
  %382 = ptrtoint ptr %update_flags.5 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %update_flags.5, align 4
  tail call fastcc void @trace_amdgpu_dm_dc_pipe_state(i32 noundef %conv.5, ptr noundef nonnull %377, ptr noundef %381, ptr noundef %plane_res.5, i32 noundef %383)
  br label %if.end77.5

if.end77.5:                                       ; preds = %if.then74.5, %if.end77.4.if.end77.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not.i = icmp eq i32 %call1, 0
  %stream_count.i.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 2
  %384 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %cmp9.not.i.i = icmp eq i8 %385, 0
  br i1 %cmp9.not.i.i, label %if.end77.5.if.end9.i_crit_edge, label %for.body.preheader.i.i

if.end77.5.if.end9.i_crit_edge:                   ; preds = %if.end77.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

for.body.preheader.i.i:                           ; preds = %if.end77.5
  %wide.trip.count.i.i = zext i8 %385 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %seamless_boot_stream_count.011.i.i = phi i8 [ 0, %for.body.preheader.i.i ], [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [6 x ptr], ptr %context.0, i32 0, i32 %indvars.iv.i.i
  %386 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx.i.i, align 4
  %apply_seamless_boot_optimization.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %387, i32 0, i32 51
  %388 = ptrtoint ptr %apply_seamless_boot_optimization.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %apply_seamless_boot_optimization.i.i, align 1, !range !111
  %spec.select.i.i = add i8 %389, %seamless_boot_stream_count.011.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_seamless_boot_stream_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

get_seamless_boot_stream_count.exit.i:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i.i)
  %cmp1.i219 = icmp ne i8 %spec.select.i.i, 0
  %or.cond.i220 = and i1 %cmp26260, %cmp1.i219
  br i1 %or.cond.i220, label %if.then.i222, label %get_seamless_boot_stream_count.exit.i.if.end9.i_crit_edge

get_seamless_boot_stream_count.exit.i.if.end9.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then.i222:                                     ; preds = %get_seamless_boot_stream_count.exit.i
  %apply_seamless_boot_optimization.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 51
  %390 = ptrtoint ptr %apply_seamless_boot_optimization.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %apply_seamless_boot_optimization.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool.not.i221 = icmp eq i8 %391, 0
  br i1 %tobool.not.i221, label %if.then.i222.if.end9.i_crit_edge, label %if.then3.i

if.then.i222.if.end9.i_crit_edge:                 ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.then.i222
  %392 = ptrtoint ptr %apply_seamless_boot_optimization.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 0, ptr %apply_seamless_boot_optimization.i, align 1
  %393 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %cmp9.not.i736.i = icmp eq i8 %394, 0
  br i1 %cmp9.not.i736.i, label %if.then3.i.if.then7.i_crit_edge, label %for.body.preheader.i738.i

if.then3.i.if.then7.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

for.body.preheader.i738.i:                        ; preds = %if.then3.i
  %wide.trip.count.i737.i = zext i8 %394 to i32
  br label %for.body.i746.i

for.body.i746.i:                                  ; preds = %for.body.i746.i.for.body.i746.i_crit_edge, %for.body.preheader.i738.i
  %indvars.iv.i739.i = phi i32 [ 0, %for.body.preheader.i738.i ], [ %indvars.iv.next.i744.i, %for.body.i746.i.for.body.i746.i_crit_edge ]
  %seamless_boot_stream_count.011.i740.i = phi i8 [ 0, %for.body.preheader.i738.i ], [ %spec.select.i743.i, %for.body.i746.i.for.body.i746.i_crit_edge ]
  %arrayidx.i741.i = getelementptr [6 x ptr], ptr %context.0, i32 0, i32 %indvars.iv.i739.i
  %395 = ptrtoint ptr %arrayidx.i741.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %arrayidx.i741.i, align 4
  %apply_seamless_boot_optimization.i742.i = getelementptr inbounds %struct.dc_stream_state, ptr %396, i32 0, i32 51
  %397 = ptrtoint ptr %apply_seamless_boot_optimization.i742.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %apply_seamless_boot_optimization.i742.i, align 1, !range !111
  %spec.select.i743.i = add i8 %398, %seamless_boot_stream_count.011.i740.i
  %indvars.iv.next.i744.i = add nuw nsw i32 %indvars.iv.i739.i, 1
  %exitcond.not.i745.i = icmp eq i32 %indvars.iv.next.i744.i, %wide.trip.count.i737.i
  br i1 %exitcond.not.i745.i, label %get_seamless_boot_stream_count.exit750.i, label %for.body.i746.i.for.body.i746.i_crit_edge

for.body.i746.i.for.body.i746.i_crit_edge:        ; preds = %for.body.i746.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i746.i

get_seamless_boot_stream_count.exit750.i:         ; preds = %for.body.i746.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i743.i)
  %cmp6.i = icmp eq i8 %spec.select.i743.i, 0
  br i1 %cmp6.i, label %get_seamless_boot_stream_count.exit750.i.if.then7.i_crit_edge, label %get_seamless_boot_stream_count.exit750.i.if.end9.i_crit_edge

get_seamless_boot_stream_count.exit750.i.if.end9.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit750.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

get_seamless_boot_stream_count.exit750.i.if.then7.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit750.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

if.then7.i:                                       ; preds = %get_seamless_boot_stream_count.exit750.i.if.then7.i_crit_edge, %if.then3.i.if.then7.i_crit_edge
  %optimized_required.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 19
  %399 = ptrtoint ptr %optimized_required.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 1, ptr %optimized_required.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %get_seamless_boot_stream_count.exit750.i.if.end9.i_crit_edge, %if.then.i222.if.end9.i_crit_edge, %get_seamless_boot_stream_count.exit.i.if.end9.i_crit_edge, %if.end77.5.if.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp10.i = icmp eq i32 %call1, 2
  br i1 %cmp10.i, label %if.then11.i, label %if.end9.i.if.end16.i_crit_edge

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end9.i
  %400 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %cmp9.not.i752.i = icmp eq i8 %401, 0
  br i1 %cmp9.not.i752.i, label %if.then11.i.if.then14.i223_crit_edge, label %for.body.preheader.i754.i

if.then11.i.if.then14.i223_crit_edge:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14.i223

for.body.preheader.i754.i:                        ; preds = %if.then11.i
  %wide.trip.count.i753.i = zext i8 %401 to i32
  br label %for.body.i762.i

for.body.i762.i:                                  ; preds = %for.body.i762.i.for.body.i762.i_crit_edge, %for.body.preheader.i754.i
  %indvars.iv.i755.i = phi i32 [ 0, %for.body.preheader.i754.i ], [ %indvars.iv.next.i760.i, %for.body.i762.i.for.body.i762.i_crit_edge ]
  %seamless_boot_stream_count.011.i756.i = phi i8 [ 0, %for.body.preheader.i754.i ], [ %spec.select.i759.i, %for.body.i762.i.for.body.i762.i_crit_edge ]
  %arrayidx.i757.i = getelementptr [6 x ptr], ptr %context.0, i32 0, i32 %indvars.iv.i755.i
  %402 = ptrtoint ptr %arrayidx.i757.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %arrayidx.i757.i, align 4
  %apply_seamless_boot_optimization.i758.i = getelementptr inbounds %struct.dc_stream_state, ptr %403, i32 0, i32 51
  %404 = ptrtoint ptr %apply_seamless_boot_optimization.i758.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %apply_seamless_boot_optimization.i758.i, align 1, !range !111
  %spec.select.i759.i = add i8 %405, %seamless_boot_stream_count.011.i756.i
  %indvars.iv.next.i760.i = add nuw nsw i32 %indvars.iv.i755.i, 1
  %exitcond.not.i761.i = icmp eq i32 %indvars.iv.next.i760.i, %wide.trip.count.i753.i
  br i1 %exitcond.not.i761.i, label %get_seamless_boot_stream_count.exit766.i, label %for.body.i762.i.for.body.i762.i_crit_edge

for.body.i762.i.for.body.i762.i_crit_edge:        ; preds = %for.body.i762.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i762.i

get_seamless_boot_stream_count.exit766.i:         ; preds = %for.body.i762.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i759.i)
  %cmp13.i = icmp eq i8 %spec.select.i759.i, 0
  br i1 %cmp13.i, label %get_seamless_boot_stream_count.exit766.i.if.then14.i223_crit_edge, label %get_seamless_boot_stream_count.exit766.i.if.end15.i_crit_edge

get_seamless_boot_stream_count.exit766.i.if.end15.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit766.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

get_seamless_boot_stream_count.exit766.i.if.then14.i223_crit_edge: ; preds = %get_seamless_boot_stream_count.exit766.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14.i223

if.then14.i223:                                   ; preds = %get_seamless_boot_stream_count.exit766.i.if.then14.i223_crit_edge, %if.then11.i.if.then14.i223_crit_edge
  %prepare_bandwidth.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 39
  %406 = ptrtoint ptr %prepare_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %prepare_bandwidth.i, align 4
  tail call void %407(ptr noundef %dc, ptr noundef %context.0) #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i223, %get_seamless_boot_stream_count.exit766.i.if.end15.i_crit_edge
  tail call void @context_clock_trace(ptr noundef %dc, ptr noundef %context.0) #16
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end15.i, %if.end9.i.if.end16.i_crit_edge
  %res_pool.i224 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %408 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %409, i32 0, i32 19
  %410 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %411)
  %cmp17807.not.i = icmp eq i32 %411, 0
  br i1 %cmp17807.not.i, label %if.end16.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  br label %for.body.i226

for.body.i226:                                    ; preds = %if.end29.i.for.body.i226_crit_edge, %for.body.lr.ph.i
  %j.0809.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i228, %if.end29.i.for.body.i226_crit_edge ]
  %top_pipe_to_program.0808.i = phi ptr [ null, %for.body.lr.ph.i ], [ %top_pipe_to_program.1.i, %if.end29.i.for.body.i226_crit_edge ]
  %arrayidx.i225 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %j.0809.i
  %top_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %j.0809.i, i32 9
  %412 = ptrtoint ptr %top_pipe.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %top_pipe.i, align 4
  %tobool19.not.i = icmp eq ptr %413, null
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %for.body.i226.if.end29.i_crit_edge

for.body.i226.if.end29.i_crit_edge:               ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

land.lhs.true20.i:                                ; preds = %for.body.i226
  %prev_odm_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %j.0809.i, i32 12
  %414 = ptrtoint ptr %prev_odm_pipe.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %prev_odm_pipe.i, align 8
  %tobool21.not.i = icmp eq ptr %415, null
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %land.lhs.true20.i.if.end29.i_crit_edge

land.lhs.true20.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

land.lhs.true22.i:                                ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #18
  %stream23.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %j.0809.i, i32 1
  %416 = ptrtoint ptr %stream23.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %stream23.i, align 4
  %tobool24.not.i = icmp ne ptr %417, null
  %cmp27.i = icmp eq ptr %417, %stream
  %or.cond725.i = and i1 %tobool24.not.i, %cmp27.i
  %spec.select.i227 = select i1 %or.cond725.i, ptr %arrayidx.i225, ptr %top_pipe_to_program.0808.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true20.i.if.end29.i_crit_edge, %for.body.i226.if.end29.i_crit_edge
  %top_pipe_to_program.1.i = phi ptr [ %top_pipe_to_program.0808.i, %for.body.i226.if.end29.i_crit_edge ], [ %top_pipe_to_program.0808.i, %land.lhs.true20.i.if.end29.i_crit_edge ], [ %spec.select.i227, %land.lhs.true22.i ]
  %inc.i228 = add nuw i32 %j.0809.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i228, %411
  br i1 %exitcond.not.i, label %if.end29.i.for.end.i_crit_edge, label %if.end29.i.for.body.i226_crit_edge

if.end29.i.for.body.i226_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i226

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %if.end29.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  %top_pipe_to_program.0.lcssa.i = phi ptr [ null, %if.end16.i.for.end.i_crit_edge ], [ %top_pipe_to_program.1.i, %if.end29.i.for.end.i_crit_edge ]
  br i1 %cmp.not.i, label %for.end.i.if.else61.i_crit_edge, label %land.lhs.true31.i

for.end.i.if.else61.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else61.i

land.lhs.true31.i:                                ; preds = %for.end.i
  %update_flags.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 54
  %418 = ptrtoint ptr %update_flags.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %bf.load.i229 = load i8, ptr %update_flags.i, align 4
  %bf.clear.i230 = and i8 %bf.load.i229, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i230)
  %tobool32.not.i = icmp eq i8 %bf.clear.i230, 0
  %tobool34.not.i = icmp eq ptr %top_pipe_to_program.0.lcssa.i, null
  %or.cond726.i = select i1 %tobool32.not.i, i1 true, i1 %tobool34.not.i
  br i1 %or.cond726.i, label %land.lhs.true31.i.land.lhs.true55.i_crit_edge, label %land.lhs.true35.i

land.lhs.true31.i.land.lhs.true55.i_crit_edge:    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true55.i

land.lhs.true35.i:                                ; preds = %land.lhs.true31.i
  %tg.i = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe_to_program.0.lcssa.i, i32 0, i32 3, i32 2
  %419 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %tg.i, align 8
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %420, align 4
  %lock_doublebuffer_enable.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %422, i32 0, i32 28
  %423 = ptrtoint ptr %lock_doublebuffer_enable.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %lock_doublebuffer_enable.i, align 4
  %tobool36.not.i231 = icmp eq ptr %424, null
  br i1 %tobool36.not.i231, label %land.lhs.true35.i.land.lhs.true55.i_crit_edge, label %if.then37.i232

land.lhs.true35.i.land.lhs.true55.i_crit_edge:    ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true55.i

if.then37.i232:                                   ; preds = %land.lhs.true35.i
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %425 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %link.i, align 4
  %call38.i = tail call zeroext i1 @should_use_dmub_lock(ptr noundef %426) #16
  br i1 %call38.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.then37.i232
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hw_locks.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inst_flags.i) #16
  %427 = ptrtoint ptr %inst_flags.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 0, ptr %inst_flags.i, align 4
  %428 = ptrtoint ptr %hw_locks.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 32, ptr %hw_locks.i, align 1
  %429 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %tg.i, align 8
  %inst.i = getelementptr inbounds %struct.timing_generator, ptr %430, i32 0, i32 3
  %431 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %inst.i, align 4
  %conv.i = trunc i32 %432 to i8
  %dig_inst.i = getelementptr inbounds %struct.dmub_hw_lock_inst_flags, ptr %inst_flags.i, i32 0, i32 2
  %433 = ptrtoint ptr %dig_inst.i to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %conv.i, ptr %dig_inst.i, align 2
  %434 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %ctx, align 8
  %dmub_srv.i = getelementptr inbounds %struct.dc_context, ptr %435, i32 0, i32 14
  %436 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dmub_srv.i, align 8
  call void @dmub_hw_lock_mgr_cmd(ptr noundef %437, i1 noundef zeroext true, ptr noundef nonnull %hw_locks.i, ptr noundef nonnull %inst_flags.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inst_flags.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_locks.i) #16
  br label %land.lhs.true55.i

if.else.i:                                        ; preds = %if.then37.i232
  call void @__sanitizer_cov_trace_pc() #18
  %438 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %tg.i, align 8
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %439, align 4
  %lock_doublebuffer_enable47.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %441, i32 0, i32 28
  %442 = ptrtoint ptr %lock_doublebuffer_enable47.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %lock_doublebuffer_enable47.i, align 4
  tail call void %443(ptr noundef %439) #16
  br label %land.lhs.true55.i

land.lhs.true55.i:                                ; preds = %if.else.i, %if.then39.i, %land.lhs.true35.i.land.lhs.true55.i_crit_edge, %land.lhs.true31.i.land.lhs.true55.i_crit_edge
  %interdependent_update_lock.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 22
  %444 = ptrtoint ptr %interdependent_update_lock.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %interdependent_update_lock.i, align 4
  %tobool57.not.i = icmp eq ptr %445, null
  br i1 %tobool57.not.i, label %land.lhs.true55.i.if.else61.i_crit_edge, label %if.then58.i

land.lhs.true55.i.if.else61.i_crit_edge:          ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else61.i

if.then58.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %445(ptr noundef %dc, ptr noundef %context.0, i1 noundef zeroext true) #16
  br label %if.end63.i

if.else61.i:                                      ; preds = %land.lhs.true55.i.if.else61.i_crit_edge, %for.end.i.if.else61.i_crit_edge
  %pipe_control_lock.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %446 = ptrtoint ptr %pipe_control_lock.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %pipe_control_lock.i, align 4
  call void %447(ptr noundef %dc, ptr noundef %top_pipe_to_program.0.lcssa.i, i1 noundef zeroext true) #16
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else61.i, %if.then58.i
  br i1 %cmp.i205, label %if.end63.i.if.end66.i_crit_edge, label %if.then65.i

if.end63.i.if.end66.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

if.then65.i:                                      ; preds = %if.end63.i
  %448 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count237.i.i = getelementptr inbounds %struct.resource_pool, ptr %449, i32 0, i32 19
  %450 = ptrtoint ptr %pipe_count237.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %pipe_count237.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %cmp238.not.i.i = icmp eq i32 %451, 0
  br i1 %cmp238.not.i.i, label %if.then65.i.if.end66.i_crit_edge, label %for.body.lr.ph.i.i

if.then65.i.if.end66.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

for.body.lr.ph.i.i:                               ; preds = %if.then65.i
  %res_ctx.i.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  %periodic_interrupt0.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 6
  %setup_periodic_interrupt.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 31
  %periodic_interrupt1.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 7
  %hdr_static_metadata.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 4
  %use_dynamic_meta.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 16
  %vrr_infopacket.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 8
  %vsc_infopacket.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 9
  %vsp_infopacket.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 10
  %update_info_frame.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 44
  %set_dmdata_attributes.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 45
  %gamut_remap.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 13
  %program_gamut_remap.i.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 51
  %output_csc_transform.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 16
  %dither_option.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 15
  %bit_depth_params60.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 33
  %clamping.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 34
  %dsc_config.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 18
  %pending_test_pattern.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 21
  %link.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %test_pattern.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 53
  %color_space.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 53, i32 1
  %p_link_settings.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 53, i32 2
  %p_custom_pattern.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 53, i32 3
  %cust_pattern_size.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 53, i32 4
  %dpms_off.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 11
  %az_endpoint_mute_only.i.i = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 49
  %optimized_required.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 19
  %prepare_bandwidth.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 39
  %abm_level.i.i = getelementptr inbounds %struct.dc_stream_update, ptr %stream_update, i32 0, i32 5
  %abm_level142.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 29
  %set_abm_immediate_disable.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 70
  br label %for.body.i768.i

for.body.i768.i:                                  ; preds = %cleanup.i.i.for.body.i768.i_crit_edge, %for.body.lr.ph.i.i
  %j.0239.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %cleanup.i.i.for.body.i768.i_crit_edge ]
  %arrayidx.i767.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i
  %top_pipe.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 9
  %452 = ptrtoint ptr %top_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %top_pipe.i.i, align 4
  %tobool.not.i.i233 = icmp eq ptr %453, null
  br i1 %tobool.not.i.i233, label %land.lhs.true.i.i, label %for.body.i768.i.cleanup.i.i_crit_edge

for.body.i768.i.cleanup.i.i_crit_edge:            ; preds = %for.body.i768.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i768.i
  %prev_odm_pipe.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 12
  %454 = ptrtoint ptr %prev_odm_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %prev_odm_pipe.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %455, null
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %stream4.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 1
  %456 = ptrtoint ptr %stream4.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %stream4.i.i, align 4
  %cmp5.i.i = icmp eq ptr %457, %stream
  br i1 %cmp5.i.i, label %if.then.i.i234, label %land.lhs.true3.i.i.cleanup.i.i_crit_edge

land.lhs.true3.i.i.cleanup.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.then.i.i234:                                   ; preds = %land.lhs.true3.i.i
  %458 = ptrtoint ptr %periodic_interrupt0.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %periodic_interrupt0.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %459, null
  br i1 %tobool6.not.i.i, label %if.then.i.i234.if.end.i.i_crit_edge, label %land.lhs.true7.i.i

if.then.i.i234.if.end.i.i_crit_edge:              ; preds = %if.then.i.i234
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true7.i.i:                               ; preds = %if.then.i.i234
  %460 = ptrtoint ptr %setup_periodic_interrupt.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %setup_periodic_interrupt.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %461, null
  br i1 %tobool8.not.i.i, label %land.lhs.true7.i.i.if.end.i.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %461(ptr noundef %dc, ptr noundef %arrayidx.i767.i, i32 noundef 0) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then9.i.i, %land.lhs.true7.i.i.if.end.i.i_crit_edge, %if.then.i.i234.if.end.i.i_crit_edge
  %462 = ptrtoint ptr %periodic_interrupt1.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %periodic_interrupt1.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %463, null
  br i1 %tobool12.not.i.i, label %if.end.i.i.if.end20.i.i_crit_edge, label %land.lhs.true13.i.i

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i.i

land.lhs.true13.i.i:                              ; preds = %if.end.i.i
  %464 = ptrtoint ptr %setup_periodic_interrupt.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %setup_periodic_interrupt.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %465, null
  br i1 %tobool16.not.i.i, label %land.lhs.true13.i.i.if.end20.i.i_crit_edge, label %if.then17.i.i

land.lhs.true13.i.i.if.end20.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %465(ptr noundef %dc, ptr noundef %arrayidx.i767.i, i32 noundef 1) #16
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then17.i.i, %land.lhs.true13.i.i.if.end20.i.i_crit_edge, %if.end.i.i.if.end20.i.i_crit_edge
  %466 = ptrtoint ptr %hdr_static_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %hdr_static_metadata.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %467, null
  br i1 %tobool21.not.i.i, label %if.end20.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true22.i.i

if.end20.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

land.lhs.true22.i.i:                              ; preds = %if.end20.i.i
  %468 = ptrtoint ptr %use_dynamic_meta.i.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %use_dynamic_meta.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool23.not.i.i = icmp eq i8 %469, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true22.i.i.if.then29.i.i_crit_edge, label %land.lhs.true22.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true22.i.i.lor.lhs.false.i.i_crit_edge:  ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

land.lhs.true22.i.i.if.then29.i.i_crit_edge:      ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true22.i.i.lor.lhs.false.i.i_crit_edge, %if.end20.i.i.lor.lhs.false.i.i_crit_edge
  %470 = ptrtoint ptr %vrr_infopacket.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %vrr_infopacket.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %471, null
  br i1 %tobool24.not.i.i, label %lor.lhs.false25.i.i, label %lor.lhs.false.i.i.if.then29.i.i_crit_edge

lor.lhs.false.i.i.if.then29.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29.i.i

lor.lhs.false25.i.i:                              ; preds = %lor.lhs.false.i.i
  %472 = ptrtoint ptr %vsc_infopacket.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %vsc_infopacket.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %473, null
  br i1 %tobool26.not.i.i, label %lor.lhs.false27.i.i, label %lor.lhs.false25.i.i.if.then29.i.i_crit_edge

lor.lhs.false25.i.i.if.then29.i.i_crit_edge:      ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29.i.i

lor.lhs.false27.i.i:                              ; preds = %lor.lhs.false25.i.i
  %474 = ptrtoint ptr %vsp_infopacket.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %vsp_infopacket.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %475, null
  br i1 %tobool28.not.i.i, label %lor.lhs.false27.i.i.if.end31.i.i_crit_edge, label %lor.lhs.false27.i.i.if.then29.i.i_crit_edge

lor.lhs.false27.i.i.if.then29.i.i_crit_edge:      ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29.i.i

lor.lhs.false27.i.i.if.end31.i.i_crit_edge:       ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i.i

if.then29.i.i:                                    ; preds = %lor.lhs.false27.i.i.if.then29.i.i_crit_edge, %lor.lhs.false25.i.i.if.then29.i.i_crit_edge, %lor.lhs.false.i.i.if.then29.i.i_crit_edge, %land.lhs.true22.i.i.if.then29.i.i_crit_edge
  call void @resource_build_info_frame(ptr noundef %arrayidx.i767.i) #16
  %476 = ptrtoint ptr %update_info_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %update_info_frame.i.i, align 4
  call void %477(ptr noundef %arrayidx.i767.i) #16
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then29.i.i, %lor.lhs.false27.i.i.if.end31.i.i_crit_edge
  %478 = ptrtoint ptr %hdr_static_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %hdr_static_metadata.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %479, null
  br i1 %tobool33.not.i.i, label %if.end31.i.i.if.end46.i.i_crit_edge, label %land.lhs.true34.i.i

if.end31.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

land.lhs.true34.i.i:                              ; preds = %if.end31.i.i
  %480 = ptrtoint ptr %use_dynamic_meta.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %use_dynamic_meta.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %tobool36.not.i.i = icmp eq i8 %481, 0
  br i1 %tobool36.not.i.i, label %land.lhs.true34.i.i.if.end46.i.i_crit_edge, label %land.lhs.true37.i.i

land.lhs.true34.i.i.if.end46.i.i_crit_edge:       ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

land.lhs.true37.i.i:                              ; preds = %land.lhs.true34.i.i
  %482 = ptrtoint ptr %set_dmdata_attributes.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %set_dmdata_attributes.i.i, align 4
  %tobool39.not.i.i = icmp eq ptr %483, null
  br i1 %tobool39.not.i.i, label %land.lhs.true37.i.i.if.end46.i.i_crit_edge, label %land.lhs.true40.i.i

land.lhs.true37.i.i.if.end46.i.i_crit_edge:       ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

land.lhs.true40.i.i:                              ; preds = %land.lhs.true37.i.i
  %484 = ptrtoint ptr %stream4.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %stream4.i.i, align 4
  %dmdata_address.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %485, i32 0, i32 15
  %486 = ptrtoint ptr %dmdata_address.i.i to i32
  call void @__asan_load8_noabort(i32 %486)
  %487 = load i64, ptr %dmdata_address.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %487)
  %cmp42.not.i.i = icmp eq i64 %487, 0
  br i1 %cmp42.not.i.i, label %land.lhs.true40.i.i.if.end46.i.i_crit_edge, label %if.then43.i.i

land.lhs.true40.i.i.if.end46.i.i_crit_edge:       ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

if.then43.i.i:                                    ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %483(ptr noundef %arrayidx.i767.i) #16
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then43.i.i, %land.lhs.true40.i.i.if.end46.i.i_crit_edge, %land.lhs.true37.i.i.if.end46.i.i_crit_edge, %land.lhs.true34.i.i.if.end46.i.i_crit_edge, %if.end31.i.i.if.end46.i.i_crit_edge
  %488 = ptrtoint ptr %gamut_remap.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %gamut_remap.i.i, align 4
  %tobool47.not.i.i = icmp eq ptr %489, null
  br i1 %tobool47.not.i.i, label %if.end46.i.i.if.end49.i.i_crit_edge, label %if.then48.i.i

if.end46.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49.i.i

if.then48.i.i:                                    ; preds = %if.end46.i.i
  %490 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %current_state, align 4
  %stream1.i.i.i = getelementptr %struct.dc_state, ptr %491, i32 0, i32 4, i32 0, i32 0, i32 1
  %492 = ptrtoint ptr %stream1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %stream1.i.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %493, %stream
  br i1 %cmp2.i.i.i, label %if.then.i.i.i235, label %if.then48.i.i.for.inc.i.i.i_crit_edge

if.then48.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.then.i.i.i235:                                 ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %res_ctx.i.i.i = getelementptr inbounds %struct.dc_state, ptr %491, i32 0, i32 4
  %494 = ptrtoint ptr %program_gamut_remap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %program_gamut_remap.i.i.i, align 4
  call void %495(ptr noundef %res_ctx.i.i.i) #16
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i235, %if.then48.i.i.for.inc.i.i.i_crit_edge
  %496 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %current_state, align 4
  %stream1.1.i.i.i = getelementptr %struct.dc_state, ptr %497, i32 0, i32 4, i32 0, i32 1, i32 1
  %498 = ptrtoint ptr %stream1.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %stream1.1.i.i.i, align 4
  %cmp2.1.i.i.i = icmp eq ptr %499, %stream
  br i1 %cmp2.1.i.i.i, label %if.then.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.1.i.i.i = getelementptr %struct.dc_state, ptr %497, i32 0, i32 4, i32 0, i32 1
  %500 = ptrtoint ptr %program_gamut_remap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %program_gamut_remap.i.i.i, align 4
  call void %501(ptr noundef %arrayidx.1.i.i.i) #16
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %502 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %current_state, align 4
  %stream1.2.i.i.i = getelementptr %struct.dc_state, ptr %503, i32 0, i32 4, i32 0, i32 2, i32 1
  %504 = ptrtoint ptr %stream1.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %stream1.2.i.i.i, align 4
  %cmp2.2.i.i.i = icmp eq ptr %505, %stream
  br i1 %cmp2.2.i.i.i, label %if.then.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.2.i.i.i = getelementptr %struct.dc_state, ptr %503, i32 0, i32 4, i32 0, i32 2
  %506 = ptrtoint ptr %program_gamut_remap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %program_gamut_remap.i.i.i, align 4
  call void %507(ptr noundef %arrayidx.2.i.i.i) #16
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.then.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %508 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %current_state, align 4
  %stream1.3.i.i.i = getelementptr %struct.dc_state, ptr %509, i32 0, i32 4, i32 0, i32 3, i32 1
  %510 = ptrtoint ptr %stream1.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %stream1.3.i.i.i, align 4
  %cmp2.3.i.i.i = icmp eq ptr %511, %stream
  br i1 %cmp2.3.i.i.i, label %if.then.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3.i.i.i

if.then.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.3.i.i.i = getelementptr %struct.dc_state, ptr %509, i32 0, i32 4, i32 0, i32 3
  %512 = ptrtoint ptr %program_gamut_remap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %program_gamut_remap.i.i.i, align 4
  call void %513(ptr noundef %arrayidx.3.i.i.i) #16
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.then.3.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  %514 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %current_state, align 4
  %stream1.4.i.i.i = getelementptr %struct.dc_state, ptr %515, i32 0, i32 4, i32 0, i32 4, i32 1
  %516 = ptrtoint ptr %stream1.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %stream1.4.i.i.i, align 4
  %cmp2.4.i.i.i = icmp eq ptr %517, %stream
  br i1 %cmp2.4.i.i.i, label %if.then.4.i.i.i, label %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge

for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge:        ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4.i.i.i

if.then.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.4.i.i.i = getelementptr %struct.dc_state, ptr %515, i32 0, i32 4, i32 0, i32 4
  %518 = ptrtoint ptr %program_gamut_remap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %program_gamut_remap.i.i.i, align 4
  call void %519(ptr noundef %arrayidx.4.i.i.i) #16
  br label %for.inc.4.i.i.i

for.inc.4.i.i.i:                                  ; preds = %if.then.4.i.i.i, %for.inc.3.i.i.i.for.inc.4.i.i.i_crit_edge
  %520 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %current_state, align 4
  %stream1.5.i.i.i = getelementptr %struct.dc_state, ptr %521, i32 0, i32 4, i32 0, i32 5, i32 1
  %522 = ptrtoint ptr %stream1.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %stream1.5.i.i.i, align 4
  %cmp2.5.i.i.i = icmp eq ptr %523, %stream
  br i1 %cmp2.5.i.i.i, label %if.then.5.i.i.i, label %for.inc.4.i.i.i.if.end49.i.i_crit_edge

for.inc.4.i.i.i.if.end49.i.i_crit_edge:           ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49.i.i

if.then.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.5.i.i.i = getelementptr %struct.dc_state, ptr %521, i32 0, i32 4, i32 0, i32 5
  %524 = ptrtoint ptr %program_gamut_remap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %program_gamut_remap.i.i.i, align 4
  call void %525(ptr noundef %arrayidx.5.i.i.i) #16
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then.5.i.i.i, %for.inc.4.i.i.i.if.end49.i.i_crit_edge, %if.end46.i.i.if.end49.i.i_crit_edge
  %526 = ptrtoint ptr %output_csc_transform.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %output_csc_transform.i.i, align 4
  %tobool50.not.i.i = icmp eq ptr %527, null
  br i1 %tobool50.not.i.i, label %if.end49.i.i.if.end53.i.i_crit_edge, label %if.then51.i.i

if.end49.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53.i.i

if.then51.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call52.i.i = call zeroext i1 @dc_stream_program_csc_matrix(ptr noundef %dc, ptr noundef %stream) #16
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then51.i.i, %if.end49.i.i.if.end53.i.i_crit_edge
  %528 = ptrtoint ptr %dither_option.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %dither_option.i.i, align 4
  %tobool54.not.i.i = icmp eq ptr %529, null
  br i1 %tobool54.not.i.i, label %if.end53.i.i.if.end71.i.i_crit_edge, label %if.then55.i.i

if.end53.i.i.if.end71.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.i.i

if.then55.i.i:                                    ; preds = %if.end53.i.i
  %next_odm_pipe.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 11
  %530 = ptrtoint ptr %next_odm_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %next_odm_pipe.i.i, align 4
  %532 = ptrtoint ptr %stream4.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %stream4.i.i, align 4
  %bit_depth_params.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %533, i32 0, i32 33
  call void @resource_build_bit_depth_reduction_params(ptr noundef %533, ptr noundef %bit_depth_params.i.i) #16
  %stream_res.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 3
  %534 = ptrtoint ptr %stream_res.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %stream_res.i.i, align 8
  %funcs.i.i = getelementptr inbounds %struct.output_pixel_processor, ptr %535, i32 0, i32 5
  %536 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %funcs.i.i, align 8
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 4
  call void %539(ptr noundef %535, ptr noundef %bit_depth_params60.i.i, ptr noundef %clamping.i.i) #16
  %tobool61.not235.i.i = icmp eq ptr %531, null
  br i1 %tobool61.not235.i.i, label %if.then55.i.i.if.end71.i.i_crit_edge, label %if.then55.i.i.while.body.i.i_crit_edge

if.then55.i.i.while.body.i.i_crit_edge:           ; preds = %if.then55.i.i
  br label %while.body.i.i

if.then55.i.i.if.end71.i.i_crit_edge:             ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then55.i.i.while.body.i.i_crit_edge
  %odm_pipe.0236.i.i = phi ptr [ %547, %while.body.i.i.while.body.i.i_crit_edge ], [ %531, %if.then55.i.i.while.body.i.i_crit_edge ]
  %stream_res62.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.0236.i.i, i32 0, i32 3
  %540 = ptrtoint ptr %stream_res62.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %stream_res62.i.i, align 8
  %funcs64.i.i = getelementptr inbounds %struct.output_pixel_processor, ptr %541, i32 0, i32 5
  %542 = ptrtoint ptr %funcs64.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %funcs64.i.i, align 8
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %543, align 4
  call void %545(ptr noundef %541, ptr noundef %bit_depth_params60.i.i, ptr noundef %clamping.i.i) #16
  %next_odm_pipe70.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.0236.i.i, i32 0, i32 11
  %546 = ptrtoint ptr %next_odm_pipe70.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %next_odm_pipe70.i.i, align 4
  %tobool61.not.i.i = icmp eq ptr %547, null
  br i1 %tobool61.not.i.i, label %while.body.i.i.if.end71.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.if.end71.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %while.body.i.i.if.end71.i.i_crit_edge, %if.then55.i.i.if.end71.i.i_crit_edge, %if.end53.i.i.if.end71.i.i_crit_edge
  br i1 %cmp.not.i, label %if.end71.i.i.cleanup.i.i_crit_edge, label %if.end74.i.i

if.end71.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %548 = ptrtoint ptr %dsc_config.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dsc_config.i.i, align 4
  %tobool75.not.i.i = icmp eq ptr %549, null
  br i1 %tobool75.not.i.i, label %if.end74.i.i.if.end78.i.i_crit_edge, label %if.then76.i.i

if.end74.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78.i.i

if.then76.i.i:                                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call77.i.i = call zeroext i1 @dp_update_dsc_config(ptr noundef %arrayidx.i767.i) #16
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then76.i.i, %if.end74.i.i.if.end78.i.i_crit_edge
  %550 = ptrtoint ptr %pending_test_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %pending_test_pattern.i.i, align 4
  %tobool79.not.i.i = icmp eq ptr %551, null
  br i1 %tobool79.not.i.i, label %if.end78.i.i.if.end86.i.i_crit_edge, label %if.then80.i.i

if.end78.i.i.if.end86.i.i_crit_edge:              ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86.i.i

if.then80.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %552 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %link.i.i, align 4
  %554 = ptrtoint ptr %test_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %test_pattern.i.i, align 8
  %556 = ptrtoint ptr %color_space.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %color_space.i.i, align 4
  %558 = ptrtoint ptr %p_link_settings.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %p_link_settings.i.i, align 8
  %560 = ptrtoint ptr %p_custom_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %p_custom_pattern.i.i, align 4
  %562 = ptrtoint ptr %cust_pattern_size.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %cust_pattern_size.i.i, align 8
  %call85.i.i = call zeroext i1 @dc_link_dp_set_test_pattern(ptr noundef %553, i32 noundef %555, i32 noundef %557, ptr noundef %559, ptr noundef %561, i32 noundef %563) #16
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %if.then80.i.i, %if.end78.i.i.if.end86.i.i_crit_edge
  %564 = ptrtoint ptr %dpms_off.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %dpms_off.i.i, align 4
  %tobool87.not.i.i = icmp eq ptr %565, null
  br i1 %tobool87.not.i.i, label %if.end86.i.i.if.end110.i.i_crit_edge, label %if.then88.i.i

if.end86.i.i.if.end110.i.i_crit_edge:             ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110.i.i

if.then88.i.i:                                    ; preds = %if.end86.i.i
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %565, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %567)
  %tobool90.not.i.i = icmp eq i8 %567, 0
  br i1 %tobool90.not.i.i, label %if.else.i.i, label %if.then91.i.i

if.then91.i.i:                                    ; preds = %if.then88.i.i
  call void @core_link_disable_stream(ptr noundef %arrayidx.i767.i) #16
  %audio.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 3, i32 4
  %568 = ptrtoint ptr %audio.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %audio.i.i, align 8
  %tobool93.not.i.i = icmp eq ptr %569, null
  br i1 %tobool93.not.i.i, label %if.then91.i.i.if.end102.i.i_crit_edge, label %land.lhs.true94.i.i

if.then91.i.i.if.end102.i.i_crit_edge:            ; preds = %if.then91.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102.i.i

land.lhs.true94.i.i:                              ; preds = %if.then91.i.i
  %570 = ptrtoint ptr %az_endpoint_mute_only.i.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %az_endpoint_mute_only.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %571)
  %tobool95.not.i.i = icmp eq i8 %571, 0
  br i1 %tobool95.not.i.i, label %if.then96.i.i, label %land.lhs.true94.i.i.if.end102.i.i_crit_edge

land.lhs.true94.i.i.if.end102.i.i_crit_edge:      ; preds = %land.lhs.true94.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102.i.i

if.then96.i.i:                                    ; preds = %land.lhs.true94.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %572 = ptrtoint ptr %569 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %569, align 4
  %az_disable.i.i = getelementptr inbounds %struct.audio_funcs, ptr %573, i32 0, i32 3
  %574 = ptrtoint ptr %az_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %az_disable.i.i, align 4
  call void %575(ptr noundef nonnull %569) #16
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.then96.i.i, %land.lhs.true94.i.i.if.end102.i.i_crit_edge, %if.then91.i.i.if.end102.i.i_crit_edge
  %576 = ptrtoint ptr %optimized_required.i.i to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 1, ptr %optimized_required.i.i, align 8
  br label %if.end110.i.i

if.else.i.i:                                      ; preds = %if.then88.i.i
  %577 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %578)
  %cmp9.not.i.i.i = icmp eq i8 %578, 0
  br i1 %cmp9.not.i.i.i, label %if.else.i.i.if.then105.i.i_crit_edge, label %for.body.preheader.i.i.i

if.else.i.i.if.then105.i.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then105.i.i

for.body.preheader.i.i.i:                         ; preds = %if.else.i.i
  %wide.trip.count.i.i.i = zext i8 %578 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %seamless_boot_stream_count.011.i.i.i = phi i8 [ 0, %for.body.preheader.i.i.i ], [ %spec.select.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [6 x ptr], ptr %context.0, i32 0, i32 %indvars.iv.i.i.i
  %579 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %arrayidx.i.i.i, align 4
  %apply_seamless_boot_optimization.i.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %580, i32 0, i32 51
  %581 = ptrtoint ptr %apply_seamless_boot_optimization.i.i.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %apply_seamless_boot_optimization.i.i.i, align 1, !range !111
  %spec.select.i.i.i = add i8 %582, %seamless_boot_stream_count.011.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %get_seamless_boot_stream_count.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

get_seamless_boot_stream_count.exit.i.i:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i.i.i)
  %cmp104.i.i = icmp eq i8 %spec.select.i.i.i, 0
  br i1 %cmp104.i.i, label %get_seamless_boot_stream_count.exit.i.i.if.then105.i.i_crit_edge, label %get_seamless_boot_stream_count.exit.i.i.if.end107.i.i_crit_edge

get_seamless_boot_stream_count.exit.i.i.if.end107.i.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i.i

get_seamless_boot_stream_count.exit.i.i.if.then105.i.i_crit_edge: ; preds = %get_seamless_boot_stream_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then105.i.i

if.then105.i.i:                                   ; preds = %get_seamless_boot_stream_count.exit.i.i.if.then105.i.i_crit_edge, %if.else.i.i.if.then105.i.i_crit_edge
  %583 = ptrtoint ptr %prepare_bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %prepare_bandwidth.i.i, align 4
  %585 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %current_state, align 4
  call void %584(ptr noundef %dc, ptr noundef %586) #16
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.then105.i.i, %get_seamless_boot_stream_count.exit.i.i.if.end107.i.i_crit_edge
  %587 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %current_state, align 4
  call void @core_link_enable_stream(ptr noundef %588, ptr noundef %arrayidx.i767.i) #16
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.end107.i.i, %if.end102.i.i, %if.end86.i.i.if.end110.i.i_crit_edge
  %589 = ptrtoint ptr %abm_level.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %abm_level.i.i, align 4
  %tobool111.not.i.i = icmp eq ptr %590, null
  br i1 %tobool111.not.i.i, label %if.end110.i.i.cleanup.i.i_crit_edge, label %land.lhs.true112.i.i

if.end110.i.i.cleanup.i.i_crit_edge:              ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

land.lhs.true112.i.i:                             ; preds = %if.end110.i.i
  %abm.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 3, i32 7
  %591 = ptrtoint ptr %abm.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %abm.i.i, align 4
  %tobool114.not.i.i = icmp eq ptr %592, null
  br i1 %tobool114.not.i.i, label %land.lhs.true112.i.i.cleanup.i.i_crit_edge, label %if.then115.i.i

land.lhs.true112.i.i.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true112.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.then115.i.i:                                   ; preds = %land.lhs.true112.i.i
  %tg.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i.i, i32 0, i32 %j.0239.i.i, i32 3, i32 2
  %593 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %tg.i.i, align 8
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %594, align 4
  %is_blanked.i.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %596, i32 0, i32 17
  %597 = ptrtoint ptr %is_blanked.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %is_blanked.i.i, align 4
  %tobool118.not.i.i = icmp eq ptr %598, null
  br i1 %tobool118.not.i.i, label %if.then115.i.i.if.then131.i.i_crit_edge, label %if.then119.i.i

if.then115.i.i.if.then131.i.i_crit_edge:          ; preds = %if.then115.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then131.i.i

if.then119.i.i:                                   ; preds = %if.then115.i.i
  %call126.i.i = call zeroext i1 %598(ptr noundef %594) #16
  br i1 %call126.i.i, label %if.then119.i.i.cleanup.i.i_crit_edge, label %if.then119.i.i.if.then131.i.i_crit_edge

if.then119.i.i.if.then131.i.i_crit_edge:          ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then131.i.i

if.then119.i.i.cleanup.i.i_crit_edge:             ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

if.then131.i.i:                                   ; preds = %if.then119.i.i.if.then131.i.i_crit_edge, %if.then115.i.i.if.then131.i.i_crit_edge
  %599 = ptrtoint ptr %abm_level.i.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %abm_level.i.i, align 4
  %601 = ptrtoint ptr %600 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %600, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %602)
  %cmp133.i.i = icmp eq i32 %602, 255
  br i1 %cmp133.i.i, label %if.then134.i.i, label %if.else136.i.i

if.then134.i.i:                                   ; preds = %if.then131.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %603 = ptrtoint ptr %set_abm_immediate_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %set_abm_immediate_disable.i.i, align 4
  call void %604(ptr noundef %arrayidx.i767.i) #16
  br label %cleanup.i.i

if.else136.i.i:                                   ; preds = %if.then131.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %605 = ptrtoint ptr %abm.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %abm.i.i, align 4
  %funcs139.i.i = getelementptr inbounds %struct.abm, ptr %606, i32 0, i32 1
  %607 = ptrtoint ptr %funcs139.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %funcs139.i.i, align 4
  %set_abm_level.i.i = getelementptr inbounds %struct.abm_funcs, ptr %608, i32 0, i32 1
  %609 = ptrtoint ptr %set_abm_level.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %set_abm_level.i.i, align 4
  %611 = ptrtoint ptr %abm_level142.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %abm_level142.i.i, align 8
  %call143.i.i = call zeroext i1 %610(ptr noundef %606, i32 noundef %612) #16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else136.i.i, %if.then134.i.i, %if.then119.i.i.cleanup.i.i_crit_edge, %land.lhs.true112.i.i.cleanup.i.i_crit_edge, %if.end110.i.i.cleanup.i.i_crit_edge, %if.end71.i.i.cleanup.i.i_crit_edge, %land.lhs.true3.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %for.body.i768.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw i32 %j.0239.i.i, 1
  %613 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %614, i32 0, i32 19
  %615 = ptrtoint ptr %pipe_count.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %pipe_count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %616
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i768.i_crit_edge, label %cleanup.i.i.if.end66.i_crit_edge

cleanup.i.i.if.end66.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

cleanup.i.i.for.body.i768.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i768.i

if.end66.i:                                       ; preds = %cleanup.i.i.if.end66.i_crit_edge, %if.then65.i.if.end66.i_crit_edge, %if.end63.i.if.end66.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %surface_count)
  %cmp67.i = icmp eq i32 %surface_count, 0
  br i1 %cmp67.i, label %if.then69.i, label %if.end96.i

if.then69.i:                                      ; preds = %if.end66.i
  %apply_ctx_for_surface.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 10
  %617 = ptrtoint ptr %apply_ctx_for_surface.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %apply_ctx_for_surface.i, align 4
  %tobool71.not.i = icmp eq ptr %618, null
  br i1 %tobool71.not.i, label %if.then69.i.if.end75.i_crit_edge, label %if.then72.i

if.then69.i.if.end75.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.i

if.then72.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %618(ptr noundef %dc, ptr noundef %stream, i32 noundef 0, ptr noundef %context.0) #16
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %if.then69.i.if.end75.i_crit_edge
  %program_front_end_for_ctx.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 11
  %619 = ptrtoint ptr %program_front_end_for_ctx.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %program_front_end_for_ctx.i, align 4
  %tobool77.not.i = icmp eq ptr %620, null
  br i1 %tobool77.not.i, label %if.end75.i.if.end81.i_crit_edge, label %if.then78.i

if.end75.i.if.end81.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81.i

if.then78.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %620(ptr noundef %dc, ptr noundef %context.0) #16
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then78.i, %if.end75.i.if.end81.i_crit_edge
  br i1 %cmp.not.i, label %if.end81.i.if.else91.i_crit_edge, label %land.lhs.true84.i

if.end81.i.if.else91.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else91.i

land.lhs.true84.i:                                ; preds = %if.end81.i
  %interdependent_update_lock86.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 22
  %621 = ptrtoint ptr %interdependent_update_lock86.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %interdependent_update_lock86.i, align 4
  %tobool87.not.i = icmp eq ptr %622, null
  br i1 %tobool87.not.i, label %land.lhs.true84.i.if.else91.i_crit_edge, label %if.then88.i

land.lhs.true84.i.if.else91.i_crit_edge:          ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else91.i

if.then88.i:                                      ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %622(ptr noundef %dc, ptr noundef %context.0, i1 noundef zeroext false) #16
  br label %if.end94.i236

if.else91.i:                                      ; preds = %land.lhs.true84.i.if.else91.i_crit_edge, %if.end81.i.if.else91.i_crit_edge
  %pipe_control_lock93.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %623 = ptrtoint ptr %pipe_control_lock93.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %pipe_control_lock93.i, align 4
  call void %624(ptr noundef %dc, ptr noundef %top_pipe_to_program.0.lcssa.i, i1 noundef zeroext false) #16
  br label %if.end94.i236

if.end94.i236:                                    ; preds = %if.else91.i, %if.then88.i
  %post_unlock_program_front_end.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 13
  %625 = ptrtoint ptr %post_unlock_program_front_end.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %post_unlock_program_front_end.i, align 4
  call void %626(ptr noundef %dc, ptr noundef %context.0) #16
  br label %commit_planes_for_stream.exit

if.end96.i:                                       ; preds = %if.end66.i
  %627 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %ctx, align 8
  %dce_environment.i = getelementptr inbounds %struct.dc_context, ptr %628, i32 0, i32 4
  %629 = ptrtoint ptr %dce_environment.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %dce_environment.i, align 8
  %631 = add i32 %630, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %631)
  %switch.i = icmp ult i32 %631, -2
  %or.cond834.i = and i1 %cmp26260, %switch.i
  br i1 %or.cond834.i, label %for.body108.lr.ph.i, label %if.end96.i.if.end155.i241_crit_edge

if.end96.i.if.end155.i241_crit_edge:              ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155.i241

for.body108.lr.ph.i:                              ; preds = %if.end96.i
  %res_ctx117.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  %program_triplebuffer.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 18
  %enable_tri_buf.i = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 60
  br label %for.body108.i

for.body108.i:                                    ; preds = %if.end151.i240.for.body108.i_crit_edge, %for.body108.lr.ph.i
  %i.0815.i = phi i32 [ 0, %for.body108.lr.ph.i ], [ %inc153.i, %if.end151.i240.for.body108.i_crit_edge ]
  %arrayidx109.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.0815.i
  %632 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %arrayidx109.i, align 8
  %634 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count112811.i = getelementptr inbounds %struct.resource_pool, ptr %635, i32 0, i32 19
  %636 = ptrtoint ptr %pipe_count112811.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %pipe_count112811.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %637)
  %cmp113812.not.i = icmp eq i32 %637, 0
  br i1 %cmp113812.not.i, label %for.body108.i.for.end146.i_crit_edge, label %for.body108.i.for.body115.i_crit_edge

for.body108.i.for.body115.i_crit_edge:            ; preds = %for.body108.i
  br label %for.body115.i

for.body108.i.for.end146.i_crit_edge:             ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end146.i

for.body115.i:                                    ; preds = %cleanup.i.for.body115.i_crit_edge, %for.body108.i.for.body115.i_crit_edge
  %j.1813.i = phi i32 [ %inc145.i, %cleanup.i.for.body115.i_crit_edge ], [ 0, %for.body108.i.for.body115.i_crit_edge ]
  %arrayidx119.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx117.i, i32 0, i32 %j.1813.i
  %638 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %arrayidx119.i, align 8
  %tobool121.not.i = icmp eq ptr %639, null
  %cmp.i769.i = icmp eq ptr %639, %633
  %or.cond805.i = select i1 %tobool121.not.i, i1 true, i1 %cmp.i769.i
  br i1 %or.cond805.i, label %for.body115.i.cleanup.i_crit_edge, label %if.end126.i

for.body115.i.cleanup.i_crit_edge:                ; preds = %for.body115.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end126.i:                                      ; preds = %for.body115.i
  %triplebuffer_flips.i237 = getelementptr inbounds %struct.dc_plane_state, ptr %639, i32 0, i32 2
  %640 = ptrtoint ptr %triplebuffer_flips.i237 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 0, ptr %triplebuffer_flips.i237, align 8
  br i1 %cmp.not.i, label %land.lhs.true130.i, label %if.end126.i.cleanup.i_crit_edge

if.end126.i.cleanup.i_crit_edge:                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

land.lhs.true130.i:                               ; preds = %if.end126.i
  %641 = ptrtoint ptr %program_triplebuffer.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %program_triplebuffer.i, align 4
  %cmp132.not.i = icmp eq ptr %642, null
  br i1 %cmp132.not.i, label %land.lhs.true130.i.cleanup.i_crit_edge, label %land.lhs.true134.i239

land.lhs.true130.i.cleanup.i_crit_edge:           ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

land.lhs.true134.i239:                            ; preds = %land.lhs.true130.i
  %643 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %arrayidx119.i, align 8
  %flip_immediate.i238 = getelementptr inbounds %struct.dc_plane_state, ptr %644, i32 0, i32 30
  %645 = ptrtoint ptr %flip_immediate.i238 to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %flip_immediate.i238, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %646)
  %tobool136.not.i = icmp eq i8 %646, 0
  br i1 %tobool136.not.i, label %land.lhs.true137.i, label %land.lhs.true134.i239.cleanup.i_crit_edge

land.lhs.true134.i239.cleanup.i_crit_edge:        ; preds = %land.lhs.true134.i239
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

land.lhs.true137.i:                               ; preds = %land.lhs.true134.i239
  %647 = ptrtoint ptr %enable_tri_buf.i to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %enable_tri_buf.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %648)
  %tobool138.not.i = icmp eq i8 %648, 0
  br i1 %tobool138.not.i, label %land.lhs.true137.i.cleanup.i_crit_edge, label %if.then140.i

land.lhs.true137.i.cleanup.i_crit_edge:           ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.then140.i:                                     ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #18
  %triplebuffer_flips142.i = getelementptr inbounds %struct.dc_plane_state, ptr %644, i32 0, i32 2
  %649 = ptrtoint ptr %triplebuffer_flips142.i to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 1, ptr %triplebuffer_flips142.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then140.i, %land.lhs.true137.i.cleanup.i_crit_edge, %land.lhs.true134.i239.cleanup.i_crit_edge, %land.lhs.true130.i.cleanup.i_crit_edge, %if.end126.i.cleanup.i_crit_edge, %for.body115.i.cleanup.i_crit_edge
  %inc145.i = add nuw i32 %j.1813.i, 1
  %650 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count112.i = getelementptr inbounds %struct.resource_pool, ptr %651, i32 0, i32 19
  %652 = ptrtoint ptr %pipe_count112.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %pipe_count112.i, align 4
  %cmp113.i = icmp ult i32 %inc145.i, %653
  br i1 %cmp113.i, label %cleanup.i.for.body115.i_crit_edge, label %cleanup.i.for.end146.i_crit_edge

cleanup.i.for.end146.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end146.i

cleanup.i.for.body115.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body115.i

for.end146.i:                                     ; preds = %cleanup.i.for.end146.i_crit_edge, %for.body108.i.for.end146.i_crit_edge
  br i1 %cmp10.i, label %if.then149.i, label %for.end146.i.if.end151.i240_crit_edge

for.end146.i.if.end151.i240_crit_edge:            ; preds = %for.end146.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151.i240

if.then149.i:                                     ; preds = %for.end146.i
  call void @__sanitizer_cov_trace_pc() #18
  %flip_immediate150.i = getelementptr inbounds %struct.dc_plane_state, ptr %633, i32 0, i32 30
  %654 = ptrtoint ptr %flip_immediate150.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 0, ptr %flip_immediate150.i, align 1
  br label %if.end151.i240

if.end151.i240:                                   ; preds = %if.then149.i, %for.end146.i.if.end151.i240_crit_edge
  %inc153.i = add nuw nsw i32 %i.0815.i, 1
  %exitcond837.not.i = icmp eq i32 %inc153.i, %surface_count
  br i1 %exitcond837.not.i, label %if.end151.i240.if.end155.i241_crit_edge, label %if.end151.i240.for.body108.i_crit_edge

if.end151.i240.for.body108.i_crit_edge:           ; preds = %if.end151.i240
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body108.i

if.end151.i240.if.end155.i241_crit_edge:          ; preds = %if.end151.i240
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155.i241

if.end155.i241:                                   ; preds = %if.end151.i240.if.end155.i241_crit_edge, %if.end96.i.if.end155.i241_crit_edge
  %655 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count158816.i = getelementptr inbounds %struct.resource_pool, ptr %656, i32 0, i32 19
  %657 = ptrtoint ptr %pipe_count158816.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %pipe_count158816.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %658)
  %cmp159817.not.i = icmp eq i32 %658, 0
  br i1 %cmp159817.not.i, label %if.end155.i241.for.end268.i_crit_edge, label %for.body161.lr.ph.i

if.end155.i241.for.end268.i_crit_edge:            ; preds = %if.end155.i241
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end268.i

for.body161.lr.ph.i:                              ; preds = %if.end155.i241
  %res_ctx163.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  %program_triplebuffer234.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 18
  %enable_tri_buf239.i = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 60
  %apply_ctx_for_surface252.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 10
  br label %for.body161.i

for.body161.i:                                    ; preds = %cleanup263.i.for.body161.i_crit_edge, %for.body161.lr.ph.i
  %j.2818.i = phi i32 [ 0, %for.body161.lr.ph.i ], [ %inc267.i, %cleanup263.i.for.body161.i_crit_edge ]
  %arrayidx165.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx163.i, i32 0, i32 %j.2818.i
  %top_pipe166.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx163.i, i32 0, i32 %j.2818.i, i32 9
  %659 = ptrtoint ptr %top_pipe166.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %top_pipe166.i, align 4
  %tobool167.not.i = icmp eq ptr %660, null
  br i1 %tobool167.not.i, label %land.lhs.true168.i, label %for.body161.i.cleanup263.i_crit_edge

for.body161.i.cleanup263.i_crit_edge:             ; preds = %for.body161.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup263.i

land.lhs.true168.i:                               ; preds = %for.body161.i
  %prev_odm_pipe169.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx163.i, i32 0, i32 %j.2818.i, i32 12
  %661 = ptrtoint ptr %prev_odm_pipe169.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %prev_odm_pipe169.i, align 8
  %tobool170.not.i = icmp eq ptr %662, null
  br i1 %tobool170.not.i, label %land.lhs.true171.i, label %land.lhs.true168.i.cleanup263.i_crit_edge

land.lhs.true168.i.cleanup263.i_crit_edge:        ; preds = %land.lhs.true168.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup263.i

land.lhs.true171.i:                               ; preds = %land.lhs.true168.i
  %stream1.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx163.i, i32 0, i32 %j.2818.i, i32 1
  %663 = ptrtoint ptr %stream1.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %stream1.i.i, align 4
  %tobool.not.i770.i = icmp ne ptr %664, null
  %cmp.i771.i = icmp eq ptr %664, %stream
  %spec.select.i772.i = and i1 %tobool.not.i770.i, %cmp.i771.i
  br i1 %spec.select.i772.i, label %if.then174.i, label %land.lhs.true171.i.cleanup263.i_crit_edge

land.lhs.true171.i.cleanup263.i_crit_edge:        ; preds = %land.lhs.true171.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup263.i

if.then174.i:                                     ; preds = %land.lhs.true171.i
  %665 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %arrayidx165.i, align 8
  %tobool176.not.i = icmp eq ptr %666, null
  %or.cond732.i = or i1 %cmp.not.i, %tobool176.not.i
  br i1 %or.cond732.i, label %if.then174.i.cleanup263.i_crit_edge, label %do.body.i

if.then174.i.cleanup263.i_crit_edge:              ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup263.i

do.body.i:                                        ; preds = %if.then174.i
  %triplebuffer_flips184.i = getelementptr inbounds %struct.dc_plane_state, ptr %666, i32 0, i32 2
  %667 = ptrtoint ptr %triplebuffer_flips184.i to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %triplebuffer_flips184.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %668)
  %tobool185.not.i = icmp eq i8 %668, 0
  br i1 %tobool185.not.i, label %do.body.i.do.end232.i_crit_edge, label %land.rhs.i242

do.body.i.do.end232.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end232.i

land.rhs.i242:                                    ; preds = %do.body.i
  %.b724.i = load i1, ptr @commit_planes_for_stream.__already_done, align 1
  br i1 %.b724.i, label %land.rhs.i242.if.then229.i_crit_edge, label %if.then197.i, !prof !109

land.rhs.i242.if.then229.i_crit_edge:             ; preds = %land.rhs.i242
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then229.i

if.then197.i:                                     ; preds = %land.rhs.i242
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @commit_planes_for_stream.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2978, i32 noundef 9, ptr noundef null) #16
  br label %if.then229.i

if.then229.i:                                     ; preds = %if.then197.i, %land.rhs.i242.if.then229.i_crit_edge
  call void @kgdb_breakpoint() #16
  br label %do.end232.i

do.end232.i:                                      ; preds = %if.then229.i, %do.body.i.do.end232.i_crit_edge
  %669 = ptrtoint ptr %program_triplebuffer234.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %program_triplebuffer234.i, align 4
  %cmp235.not.i = icmp eq ptr %670, null
  br i1 %cmp235.not.i, label %do.end232.i.if.end248.i_crit_edge, label %land.lhs.true237.i

do.end232.i.if.end248.i_crit_edge:                ; preds = %do.end232.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end248.i

land.lhs.true237.i:                               ; preds = %do.end232.i
  %671 = ptrtoint ptr %enable_tri_buf239.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %enable_tri_buf239.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %tobool240.not.i = icmp eq i8 %672, 0
  br i1 %tobool240.not.i, label %land.lhs.true237.i.if.end248.i_crit_edge, label %if.then242.i

land.lhs.true237.i.if.end248.i_crit_edge:         ; preds = %land.lhs.true237.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end248.i

if.then242.i:                                     ; preds = %land.lhs.true237.i
  call void @__sanitizer_cov_trace_pc() #18
  %673 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %arrayidx165.i, align 8
  %triplebuffer_flips246.i = getelementptr inbounds %struct.dc_plane_state, ptr %674, i32 0, i32 2
  %675 = ptrtoint ptr %triplebuffer_flips246.i to i32
  call void @__asan_load1_noabort(i32 %675)
  %676 = load i8, ptr %triplebuffer_flips246.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %676)
  %tobool247.i = icmp ne i8 %676, 0
  call void %670(ptr noundef %dc, ptr noundef %arrayidx165.i, i1 noundef zeroext %tobool247.i) #16
  br label %if.end248.i

if.end248.i:                                      ; preds = %if.then242.i, %land.lhs.true237.i.if.end248.i_crit_edge, %do.end232.i.if.end248.i_crit_edge
  %677 = ptrtoint ptr %stream1.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %stream1.i.i, align 4
  %679 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %680)
  %cmp13.not.i.i = icmp eq i8 %680, 0
  br i1 %cmp13.not.i.i, label %if.end248.i.stream_get_status.exit.i_crit_edge, label %for.body.preheader.i775.i

if.end248.i.stream_get_status.exit.i_crit_edge:   ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stream_get_status.exit.i

for.body.preheader.i775.i:                        ; preds = %if.end248.i
  %wide.trip.count.i774.i = zext i8 %680 to i32
  br label %for.body.i780.i

for.cond.i.i:                                     ; preds = %for.body.i780.i
  %indvars.iv.next.i776.i = add nuw nsw i32 %indvars.iv.i778.i, 1
  %exitcond.not.i777.i = icmp eq i32 %indvars.iv.next.i776.i, %wide.trip.count.i774.i
  br i1 %exitcond.not.i777.i, label %for.cond.i.i.stream_get_status.exit.i_crit_edge, label %for.cond.i.i.for.body.i780.i_crit_edge

for.cond.i.i.for.body.i780.i_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i780.i

for.cond.i.i.stream_get_status.exit.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stream_get_status.exit.i

for.body.i780.i:                                  ; preds = %for.cond.i.i.for.body.i780.i_crit_edge, %for.body.preheader.i775.i
  %indvars.iv.i778.i = phi i32 [ 0, %for.body.preheader.i775.i ], [ %indvars.iv.next.i776.i, %for.cond.i.i.for.body.i780.i_crit_edge ]
  %arrayidx.i779.i = getelementptr [6 x ptr], ptr %context.0, i32 0, i32 %indvars.iv.i778.i
  %681 = ptrtoint ptr %arrayidx.i779.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %arrayidx.i779.i, align 4
  %cmp3.i.i = icmp eq ptr %682, %678
  br i1 %cmp3.i.i, label %if.then.i781.i, label %for.cond.i.i

if.then.i781.i:                                   ; preds = %for.body.i780.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx6.i.i = getelementptr %struct.dc_state, ptr %context.0, i32 0, i32 1, i32 %indvars.iv.i778.i
  br label %stream_get_status.exit.i

stream_get_status.exit.i:                         ; preds = %if.then.i781.i, %for.cond.i.i.stream_get_status.exit.i_crit_edge, %if.end248.i.stream_get_status.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx6.i.i, %if.then.i781.i ], [ null, %if.end248.i.stream_get_status.exit.i_crit_edge ], [ null, %for.cond.i.i.stream_get_status.exit.i_crit_edge ]
  %683 = ptrtoint ptr %apply_ctx_for_surface252.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %apply_ctx_for_surface252.i, align 4
  %tobool253.not.i = icmp eq ptr %684, null
  br i1 %tobool253.not.i, label %stream_get_status.exit.i.cleanup263.i_crit_edge, label %if.then254.i

stream_get_status.exit.i.cleanup263.i_crit_edge:  ; preds = %stream_get_status.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup263.i

if.then254.i:                                     ; preds = %stream_get_status.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %plane_count.i = getelementptr inbounds %struct.dc_stream_status, ptr %retval.0.i.i, i32 0, i32 2
  %685 = ptrtoint ptr %plane_count.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %plane_count.i, align 4
  call void %684(ptr noundef %dc, ptr noundef %678, i32 noundef %686, ptr noundef %context.0) #16
  br label %cleanup263.i

cleanup263.i:                                     ; preds = %if.then254.i, %stream_get_status.exit.i.cleanup263.i_crit_edge, %if.then174.i.cleanup263.i_crit_edge, %land.lhs.true171.i.cleanup263.i_crit_edge, %land.lhs.true168.i.cleanup263.i_crit_edge, %for.body161.i.cleanup263.i_crit_edge
  %inc267.i = add nuw i32 %j.2818.i, 1
  %687 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count158.i = getelementptr inbounds %struct.resource_pool, ptr %688, i32 0, i32 19
  %689 = ptrtoint ptr %pipe_count158.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %pipe_count158.i, align 4
  %cmp159.i = icmp ult i32 %inc267.i, %690
  br i1 %cmp159.i, label %cleanup263.i.for.body161.i_crit_edge, label %cleanup263.i.for.end268.i_crit_edge

cleanup263.i.for.end268.i_crit_edge:              ; preds = %cleanup263.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end268.i

cleanup263.i.for.body161.i_crit_edge:             ; preds = %cleanup263.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body161.i

for.end268.i:                                     ; preds = %cleanup263.i.for.end268.i_crit_edge, %if.end155.i241.for.end268.i_crit_edge
  %program_front_end_for_ctx270.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 11
  %691 = ptrtoint ptr %program_front_end_for_ctx270.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %program_front_end_for_ctx270.i, align 4
  %tobool271.not.i = icmp eq ptr %692, null
  %brmerge.i = or i1 %cmp.not.i, %tobool271.not.i
  br i1 %brmerge.i, label %for.end268.i.if.end278.i_crit_edge, label %if.then275.i

for.end268.i.if.end278.i_crit_edge:               ; preds = %for.end268.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end278.i

if.then275.i:                                     ; preds = %for.end268.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %692(ptr noundef %dc, ptr noundef %context.0) #16
  br label %if.end278.i

if.end278.i:                                      ; preds = %if.then275.i, %for.end268.i.if.end278.i_crit_edge
  br i1 %cmp.not.i, label %if.then281.i, label %land.lhs.true381.i

if.then281.i:                                     ; preds = %if.end278.i
  %set_flip_control_gsl.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 23
  %693 = ptrtoint ptr %set_flip_control_gsl.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %set_flip_control_gsl.i, align 4
  %tobool283.not.i = icmp ne ptr %694, null
  %or.cond835.i = and i1 %cmp26260, %tobool283.not.i
  br i1 %or.cond835.i, label %for.body288.lr.ph.i, label %if.then281.i.if.end322.i_crit_edge

if.then281.i.if.end322.i_crit_edge:               ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end322.i

for.body288.lr.ph.i:                              ; preds = %if.then281.i
  %res_ctx299.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  br label %for.body288.i

for.body288.i:                                    ; preds = %for.end318.i.for.body288.i_crit_edge, %for.body288.lr.ph.i
  %i.1824.i = phi i32 [ 0, %for.body288.lr.ph.i ], [ %inc320.i, %for.end318.i.for.body288.i_crit_edge ]
  %arrayidx290.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.1824.i
  %695 = ptrtoint ptr %arrayidx290.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %arrayidx290.i, align 8
  %697 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count294820.i = getelementptr inbounds %struct.resource_pool, ptr %698, i32 0, i32 19
  %699 = ptrtoint ptr %pipe_count294820.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %pipe_count294820.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %700)
  %cmp295821.not.i = icmp eq i32 %700, 0
  br i1 %cmp295821.not.i, label %for.body288.i.for.end318.i_crit_edge, label %for.body297.preheader.i

for.body288.i.for.end318.i_crit_edge:             ; preds = %for.body288.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end318.i

for.body297.preheader.i:                          ; preds = %for.body288.i
  %flip_immediate311.i = getelementptr inbounds %struct.dc_plane_state, ptr %696, i32 0, i32 30
  br label %for.body297.i

for.body297.i:                                    ; preds = %cleanup313.i.for.body297.i_crit_edge, %for.body297.preheader.i
  %j.3822.i = phi i32 [ %inc317.i, %cleanup313.i.for.body297.i_crit_edge ], [ 0, %for.body297.preheader.i ]
  %arrayidx301.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx299.i, i32 0, i32 %j.3822.i
  %stream1.i783.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx299.i, i32 0, i32 %j.3822.i, i32 1
  %701 = ptrtoint ptr %stream1.i783.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %stream1.i783.i, align 4
  %tobool.not.i784.i = icmp ne ptr %702, null
  %cmp.i785.i = icmp eq ptr %702, %stream
  %spec.select.i786.i = and i1 %tobool.not.i784.i, %cmp.i785.i
  br i1 %spec.select.i786.i, label %if.end304.i, label %for.body297.i.cleanup313.i_crit_edge

for.body297.i.cleanup313.i_crit_edge:             ; preds = %for.body297.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup313.i

if.end304.i:                                      ; preds = %for.body297.i
  %703 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %arrayidx301.i, align 8
  %cmp.i787.i = icmp eq ptr %704, %696
  br i1 %cmp.i787.i, label %if.end307.i, label %if.end304.i.cleanup313.i_crit_edge

if.end304.i.cleanup313.i_crit_edge:               ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup313.i

if.end307.i:                                      ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_pc() #18
  %705 = ptrtoint ptr %set_flip_control_gsl.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %set_flip_control_gsl.i, align 4
  %707 = ptrtoint ptr %flip_immediate311.i to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %flip_immediate311.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %708)
  %tobool312.i = icmp ne i8 %708, 0
  call void %706(ptr noundef %arrayidx301.i, i1 noundef zeroext %tobool312.i) #16
  br label %cleanup313.i

cleanup313.i:                                     ; preds = %if.end307.i, %if.end304.i.cleanup313.i_crit_edge, %for.body297.i.cleanup313.i_crit_edge
  %inc317.i = add nuw i32 %j.3822.i, 1
  %709 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count294.i = getelementptr inbounds %struct.resource_pool, ptr %710, i32 0, i32 19
  %711 = ptrtoint ptr %pipe_count294.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %pipe_count294.i, align 4
  %cmp295.i = icmp ult i32 %inc317.i, %712
  br i1 %cmp295.i, label %cleanup313.i.for.body297.i_crit_edge, label %cleanup313.i.for.end318.i_crit_edge

cleanup313.i.for.end318.i_crit_edge:              ; preds = %cleanup313.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end318.i

cleanup313.i.for.body297.i_crit_edge:             ; preds = %cleanup313.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body297.i

for.end318.i:                                     ; preds = %cleanup313.i.for.end318.i_crit_edge, %for.body288.i.for.end318.i_crit_edge
  %inc320.i = add nuw nsw i32 %i.1824.i, 1
  %exitcond838.not.i = icmp eq i32 %inc320.i, %surface_count
  br i1 %exitcond838.not.i, label %for.end318.i.if.end322.i_crit_edge, label %for.end318.i.for.body288.i_crit_edge

for.end318.i.for.body288.i_crit_edge:             ; preds = %for.end318.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body288.i

for.end318.i.if.end322.i_crit_edge:               ; preds = %for.end318.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end322.i

if.end322.i:                                      ; preds = %for.end318.i.if.end322.i_crit_edge, %if.then281.i.if.end322.i_crit_edge
  br i1 %cmp26260, label %for.body326.lr.ph.i, label %if.end322.i.if.end456.critedge.i_crit_edge

if.end322.i.if.end456.critedge.i_crit_edge:       ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end456.critedge.i

for.body326.lr.ph.i:                              ; preds = %if.end322.i
  %res_ctx337.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  %program_triplebuffer347.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 18
  %enable_tri_buf352.i = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 60
  %update_plane_addr.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 14
  br label %for.body326.i

for.body326.i:                                    ; preds = %for.end374.i.for.body326.i_crit_edge, %for.body326.lr.ph.i
  %i.2829.i = phi i32 [ 0, %for.body326.lr.ph.i ], [ %inc376.i, %for.end374.i.for.body326.i_crit_edge ]
  %arrayidx328.i = getelementptr %struct.dc_surface_update, ptr %srf_updates, i32 %i.2829.i
  %713 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %arrayidx328.i, align 8
  %715 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count332825.i = getelementptr inbounds %struct.resource_pool, ptr %716, i32 0, i32 19
  %717 = ptrtoint ptr %pipe_count332825.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %pipe_count332825.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %718)
  %cmp333826.not.i = icmp eq i32 %718, 0
  br i1 %cmp333826.not.i, label %for.body326.i.for.end374.i_crit_edge, label %for.body335.preheader.i

for.body326.i.for.end374.i_crit_edge:             ; preds = %for.body326.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end374.i

for.body335.preheader.i:                          ; preds = %for.body326.i
  %triplebuffer_flips359.i = getelementptr inbounds %struct.dc_plane_state, ptr %714, i32 0, i32 2
  br label %for.body335.i

for.body335.i:                                    ; preds = %cleanup369.i.for.body335.i_crit_edge, %for.body335.preheader.i
  %j.4827.i = phi i32 [ %inc373.i, %cleanup369.i.for.body335.i_crit_edge ], [ 0, %for.body335.preheader.i ]
  %arrayidx339.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx337.i, i32 0, i32 %j.4827.i
  %stream1.i788.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx337.i, i32 0, i32 %j.4827.i, i32 1
  %719 = ptrtoint ptr %stream1.i788.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %stream1.i788.i, align 4
  %tobool.not.i789.i = icmp ne ptr %720, null
  %cmp.i790.i = icmp eq ptr %720, %stream
  %spec.select.i791.i = and i1 %tobool.not.i789.i, %cmp.i790.i
  br i1 %spec.select.i791.i, label %if.end342.i, label %for.body335.i.cleanup369.i_crit_edge

for.body335.i.cleanup369.i_crit_edge:             ; preds = %for.body335.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup369.i

if.end342.i:                                      ; preds = %for.body335.i
  %721 = ptrtoint ptr %arrayidx339.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %arrayidx339.i, align 8
  %cmp.i792.i = icmp eq ptr %722, %714
  br i1 %cmp.i792.i, label %if.end345.i, label %if.end342.i.cleanup369.i_crit_edge

if.end342.i.cleanup369.i_crit_edge:               ; preds = %if.end342.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup369.i

if.end345.i:                                      ; preds = %if.end342.i
  %723 = ptrtoint ptr %program_triplebuffer347.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %program_triplebuffer347.i, align 4
  %cmp348.not.i = icmp eq ptr %724, null
  br i1 %cmp348.not.i, label %if.end345.i.if.end361.i_crit_edge, label %land.lhs.true350.i

if.end345.i.if.end361.i_crit_edge:                ; preds = %if.end345.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end361.i

land.lhs.true350.i:                               ; preds = %if.end345.i
  %725 = ptrtoint ptr %enable_tri_buf352.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %enable_tri_buf352.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %726)
  %tobool353.not.i = icmp eq i8 %726, 0
  br i1 %tobool353.not.i, label %land.lhs.true350.i.if.end361.i_crit_edge, label %if.then355.i

land.lhs.true350.i.if.end361.i_crit_edge:         ; preds = %land.lhs.true350.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end361.i

if.then355.i:                                     ; preds = %land.lhs.true350.i
  call void @__sanitizer_cov_trace_pc() #18
  %727 = ptrtoint ptr %triplebuffer_flips359.i to i32
  call void @__asan_load1_noabort(i32 %727)
  %728 = load i8, ptr %triplebuffer_flips359.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %728)
  %tobool360.i = icmp ne i8 %728, 0
  call void %724(ptr noundef %dc, ptr noundef %arrayidx339.i, i1 noundef zeroext %tobool360.i) #16
  br label %if.end361.i

if.end361.i:                                      ; preds = %if.then355.i, %land.lhs.true350.i.if.end361.i_crit_edge, %if.end345.i.if.end361.i_crit_edge
  %729 = ptrtoint ptr %arrayidx339.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %arrayidx339.i, align 8
  %update_flags363.i = getelementptr inbounds %struct.dc_plane_state, ptr %730, i32 0, i32 33
  %731 = ptrtoint ptr %update_flags363.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %bf.load364.i = load i32, ptr %update_flags363.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load364.i)
  %tobool365.not.i = icmp sgt i32 %bf.load364.i, -1
  br i1 %tobool365.not.i, label %if.end361.i.cleanup369.i_crit_edge, label %if.then366.i

if.end361.i.cleanup369.i_crit_edge:               ; preds = %if.end361.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup369.i

if.then366.i:                                     ; preds = %if.end361.i
  call void @__sanitizer_cov_trace_pc() #18
  %732 = ptrtoint ptr %update_plane_addr.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %update_plane_addr.i, align 4
  call void %733(ptr noundef %dc, ptr noundef %arrayidx339.i) #16
  br label %cleanup369.i

cleanup369.i:                                     ; preds = %if.then366.i, %if.end361.i.cleanup369.i_crit_edge, %if.end342.i.cleanup369.i_crit_edge, %for.body335.i.cleanup369.i_crit_edge
  %inc373.i = add nuw i32 %j.4827.i, 1
  %734 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count332.i = getelementptr inbounds %struct.resource_pool, ptr %735, i32 0, i32 19
  %736 = ptrtoint ptr %pipe_count332.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %pipe_count332.i, align 4
  %cmp333.i = icmp ult i32 %inc373.i, %737
  br i1 %cmp333.i, label %cleanup369.i.for.body335.i_crit_edge, label %cleanup369.i.for.end374.i_crit_edge

cleanup369.i.for.end374.i_crit_edge:              ; preds = %cleanup369.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end374.i

cleanup369.i.for.body335.i_crit_edge:             ; preds = %cleanup369.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body335.i

for.end374.i:                                     ; preds = %cleanup369.i.for.end374.i_crit_edge, %for.body326.i.for.end374.i_crit_edge
  %inc376.i = add nuw nsw i32 %i.2829.i, 1
  %exitcond839.not.i = icmp eq i32 %inc376.i, %surface_count
  br i1 %exitcond839.not.i, label %for.end374.i.if.end456.critedge.i_crit_edge, label %for.end374.i.for.body326.i_crit_edge

for.end374.i.for.body326.i_crit_edge:             ; preds = %for.end374.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body326.i

for.end374.i.if.end456.critedge.i_crit_edge:      ; preds = %for.end374.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end456.critedge.i

land.lhs.true381.i:                               ; preds = %if.end278.i
  %interdependent_update_lock383.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 22
  %738 = ptrtoint ptr %interdependent_update_lock383.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %interdependent_update_lock383.i, align 4
  %tobool384.not.i = icmp eq ptr %739, null
  br i1 %tobool384.not.i, label %land.lhs.true394.critedge733.i, label %if.then385.i

if.then385.i:                                     ; preds = %land.lhs.true381.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %739(ptr noundef %dc, ptr noundef %context.0, i1 noundef zeroext false) #16
  br label %land.lhs.true394.i

land.lhs.true394.critedge733.i:                   ; preds = %land.lhs.true381.i
  call void @__sanitizer_cov_trace_pc() #18
  %pipe_control_lock390.c.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %740 = ptrtoint ptr %pipe_control_lock390.c.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %pipe_control_lock390.c.i, align 4
  call void %741(ptr noundef %dc, ptr noundef %top_pipe_to_program.0.lcssa.i, i1 noundef zeroext false) #16
  br label %land.lhs.true394.i

land.lhs.true394.i:                               ; preds = %land.lhs.true394.critedge733.i, %if.then385.i
  %update_flags395.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 54
  %742 = ptrtoint ptr %update_flags395.i to i32
  call void @__asan_load1_noabort(i32 %742)
  %bf.load396.i = load i8, ptr %update_flags395.i, align 4
  %bf.clear397.i = and i8 %bf.load396.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear397.i)
  %tobool399.not.i = icmp eq i8 %bf.clear397.i, 0
  br i1 %tobool399.not.i, label %land.lhs.true394.i.if.then453.i_crit_edge, label %if.then400.i

land.lhs.true394.i.if.then453.i_crit_edge:        ; preds = %land.lhs.true394.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then453.i

if.then400.i:                                     ; preds = %land.lhs.true394.i
  %tg402.i = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe_to_program.0.lcssa.i, i32 0, i32 3, i32 2
  %743 = ptrtoint ptr %tg402.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %tg402.i, align 8
  %745 = ptrtoint ptr %744 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %744, align 4
  %lock_doublebuffer_enable404.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %746, i32 0, i32 28
  %747 = ptrtoint ptr %lock_doublebuffer_enable404.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %lock_doublebuffer_enable404.i, align 4
  %tobool405.not.i = icmp eq ptr %748, null
  br i1 %tobool405.not.i, label %if.then400.i.if.then453.i_crit_edge, label %if.then406.i

if.then400.i.if.then453.i_crit_edge:              ; preds = %if.then400.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then453.i

if.then406.i:                                     ; preds = %if.then400.i
  %wait_for_state.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %746, i32 0, i32 15
  %749 = ptrtoint ptr %wait_for_state.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %wait_for_state.i, align 4
  call void %750(ptr noundef %744, i32 noundef 1) #16
  %751 = ptrtoint ptr %tg402.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %tg402.i, align 8
  %753 = ptrtoint ptr %752 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %752, align 4
  %wait_for_state415.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %754, i32 0, i32 15
  %755 = ptrtoint ptr %wait_for_state415.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %wait_for_state415.i, align 4
  call void %756(ptr noundef %752, i32 noundef 0) #16
  %757 = ptrtoint ptr %tg402.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %tg402.i, align 8
  %759 = ptrtoint ptr %758 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %758, align 4
  %wait_for_state421.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %760, i32 0, i32 15
  %761 = ptrtoint ptr %wait_for_state421.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %wait_for_state421.i, align 4
  call void %762(ptr noundef %758, i32 noundef 1) #16
  br i1 %cmp1.i, label %if.then406.i.if.else442.i_crit_edge, label %land.lhs.true425.i

if.then406.i.if.else442.i_crit_edge:              ; preds = %if.then406.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else442.i

land.lhs.true425.i:                               ; preds = %if.then406.i
  %link426.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %763 = ptrtoint ptr %link426.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %link426.i, align 4
  %call427.i = call zeroext i1 @should_use_dmub_lock(ptr noundef %764) #16
  br i1 %call427.i, label %if.then429.i, label %land.lhs.true425.i.if.else442.i_crit_edge

land.lhs.true425.i.if.else442.i_crit_edge:        ; preds = %land.lhs.true425.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else442.i

if.then429.i:                                     ; preds = %land.lhs.true425.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hw_locks430.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inst_flags431.i) #16
  %765 = ptrtoint ptr %inst_flags431.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store i32 0, ptr %inst_flags431.i, align 4
  %766 = ptrtoint ptr %hw_locks430.i to i32
  call void @__asan_store1_noabort(i32 %766)
  store i8 32, ptr %hw_locks430.i, align 1
  %767 = ptrtoint ptr %tg402.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %tg402.i, align 8
  %inst437.i = getelementptr inbounds %struct.timing_generator, ptr %768, i32 0, i32 3
  %769 = ptrtoint ptr %inst437.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %inst437.i, align 4
  %conv438.i = trunc i32 %770 to i8
  %dig_inst439.i = getelementptr inbounds %struct.dmub_hw_lock_inst_flags, ptr %inst_flags431.i, i32 0, i32 2
  %771 = ptrtoint ptr %dig_inst439.i to i32
  call void @__asan_store1_noabort(i32 %771)
  store i8 %conv438.i, ptr %dig_inst439.i, align 2
  %772 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %ctx, align 8
  %dmub_srv441.i = getelementptr inbounds %struct.dc_context, ptr %773, i32 0, i32 14
  %774 = ptrtoint ptr %dmub_srv441.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %dmub_srv441.i, align 8
  call void @dmub_hw_lock_mgr_cmd(ptr noundef %775, i1 noundef zeroext false, ptr noundef nonnull %hw_locks430.i, ptr noundef nonnull %inst_flags431.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inst_flags431.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_locks430.i) #16
  br label %if.then453.i

if.else442.i:                                     ; preds = %land.lhs.true425.i.if.else442.i_crit_edge, %if.then406.i.if.else442.i_crit_edge
  %776 = ptrtoint ptr %tg402.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %tg402.i, align 8
  %778 = ptrtoint ptr %777 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %777, align 4
  %lock_doublebuffer_disable.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %779, i32 0, i32 27
  %780 = ptrtoint ptr %lock_doublebuffer_disable.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %lock_doublebuffer_disable.i, align 4
  call void %781(ptr noundef %777) #16
  br label %if.then453.i

if.then453.i:                                     ; preds = %if.else442.i, %if.then429.i, %if.then400.i.if.then453.i_crit_edge, %land.lhs.true394.i.if.then453.i_crit_edge
  %post_unlock_program_front_end455.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 13
  %782 = ptrtoint ptr %post_unlock_program_front_end455.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %post_unlock_program_front_end455.i, align 4
  call void %783(ptr noundef %dc, ptr noundef %context.0) #16
  br label %if.end456.i

if.end456.critedge.i:                             ; preds = %for.end374.i.if.end456.critedge.i_crit_edge, %if.end322.i.if.end456.critedge.i_crit_edge
  %pipe_control_lock390.c734.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %784 = ptrtoint ptr %pipe_control_lock390.c734.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %pipe_control_lock390.c734.i, align 4
  call void %785(ptr noundef %dc, ptr noundef %top_pipe_to_program.0.lcssa.i, i1 noundef zeroext false) #16
  br label %if.end456.i

if.end456.i:                                      ; preds = %if.end456.critedge.i, %if.then453.i
  %786 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count459830.i = getelementptr inbounds %struct.resource_pool, ptr %787, i32 0, i32 19
  %788 = ptrtoint ptr %pipe_count459830.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load i32, ptr %pipe_count459830.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %789)
  %cmp460831.not.i = icmp eq i32 %789, 0
  br i1 %cmp460831.not.i, label %if.end456.i.commit_planes_for_stream.exit_crit_edge, label %for.body462.lr.ph.i

if.end456.i.commit_planes_for_stream.exit_crit_edge: ; preds = %if.end456.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %commit_planes_for_stream.exit

for.body462.lr.ph.i:                              ; preds = %if.end456.i
  %res_ctx464.i = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  br label %for.body462.i

for.body462.i:                                    ; preds = %cleanup503.i.for.body462.i_crit_edge, %for.body462.lr.ph.i
  %j.5832.i = phi i32 [ 0, %for.body462.lr.ph.i ], [ %inc507.i, %cleanup503.i.for.body462.i_crit_edge ]
  %arrayidx466.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx464.i, i32 0, i32 %j.5832.i
  %790 = ptrtoint ptr %arrayidx466.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %arrayidx466.i, align 8
  %tobool468.not.i = icmp eq ptr %791, null
  br i1 %tobool468.not.i, label %for.body462.i.cleanup503.i_crit_edge, label %if.end470.i

for.body462.i.cleanup503.i_crit_edge:             ; preds = %for.body462.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup503.i

if.end470.i:                                      ; preds = %for.body462.i
  %bottom_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx464.i, i32 0, i32 %j.5832.i, i32 10
  %792 = ptrtoint ptr %bottom_pipe.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %bottom_pipe.i, align 8
  %tobool471.not.i = icmp eq ptr %793, null
  br i1 %tobool471.not.i, label %lor.lhs.false472.i, label %if.end470.i.cleanup503.i_crit_edge

if.end470.i.cleanup503.i_crit_edge:               ; preds = %if.end470.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup503.i

lor.lhs.false472.i:                               ; preds = %if.end470.i
  %next_odm_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx464.i, i32 0, i32 %j.5832.i, i32 11
  %794 = ptrtoint ptr %next_odm_pipe.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %next_odm_pipe.i, align 4
  %tobool473.not.i = icmp eq ptr %795, null
  br i1 %tobool473.not.i, label %lor.lhs.false474.i, label %lor.lhs.false472.i.cleanup503.i_crit_edge

lor.lhs.false472.i.cleanup503.i_crit_edge:        ; preds = %lor.lhs.false472.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup503.i

lor.lhs.false474.i:                               ; preds = %lor.lhs.false472.i
  %stream475.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx464.i, i32 0, i32 %j.5832.i, i32 1
  %796 = ptrtoint ptr %stream475.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %stream475.i, align 4
  %tobool476.not.i = icmp ne ptr %797, null
  %cmp.i795.i = icmp eq ptr %797, %stream
  %or.cond = and i1 %tobool476.not.i, %cmp.i795.i
  br i1 %or.cond, label %lor.lhs.false479.i, label %lor.lhs.false474.i.cleanup503.i_crit_edge

lor.lhs.false474.i.cleanup503.i_crit_edge:        ; preds = %lor.lhs.false474.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup503.i

lor.lhs.false479.i:                               ; preds = %lor.lhs.false474.i
  %update_flags481.i = getelementptr inbounds %struct.dc_plane_state, ptr %791, i32 0, i32 33
  %798 = ptrtoint ptr %update_flags481.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %bf.load482.i = load i32, ptr %update_flags481.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load482.i)
  %tobool484.not.i = icmp sgt i32 %bf.load482.i, -1
  br i1 %tobool484.not.i, label %lor.lhs.false479.i.cleanup503.i_crit_edge, label %lor.lhs.false485.i

lor.lhs.false479.i.cleanup503.i_crit_edge:        ; preds = %lor.lhs.false479.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup503.i

lor.lhs.false485.i:                               ; preds = %lor.lhs.false479.i
  %skip_manual_trigger.i = getelementptr inbounds %struct.dc_plane_state, ptr %791, i32 0, i32 35
  %799 = ptrtoint ptr %skip_manual_trigger.i to i32
  call void @__asan_load1_noabort(i32 %799)
  %800 = load i8, ptr %skip_manual_trigger.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %800)
  %tobool487.not.i = icmp eq i8 %800, 0
  br i1 %tobool487.not.i, label %if.end490.i, label %lor.lhs.false485.i.cleanup503.i_crit_edge

lor.lhs.false485.i.cleanup503.i_crit_edge:        ; preds = %lor.lhs.false485.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup503.i

if.end490.i:                                      ; preds = %lor.lhs.false485.i
  %tg492.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx464.i, i32 0, i32 %j.5832.i, i32 3, i32 2
  %801 = ptrtoint ptr %tg492.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %tg492.i, align 8
  %803 = ptrtoint ptr %802 to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %802, align 4
  %program_manual_trigger.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %804, i32 0, i32 55
  %805 = ptrtoint ptr %program_manual_trigger.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %program_manual_trigger.i, align 4
  %tobool494.not.i = icmp eq ptr %806, null
  br i1 %tobool494.not.i, label %if.end490.i.cleanup503.i_crit_edge, label %if.then495.i

if.end490.i.cleanup503.i_crit_edge:               ; preds = %if.end490.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup503.i

if.then495.i:                                     ; preds = %if.end490.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %806(ptr noundef %802) #16
  br label %cleanup503.i

cleanup503.i:                                     ; preds = %if.then495.i, %if.end490.i.cleanup503.i_crit_edge, %lor.lhs.false485.i.cleanup503.i_crit_edge, %lor.lhs.false479.i.cleanup503.i_crit_edge, %lor.lhs.false474.i.cleanup503.i_crit_edge, %lor.lhs.false472.i.cleanup503.i_crit_edge, %if.end470.i.cleanup503.i_crit_edge, %for.body462.i.cleanup503.i_crit_edge
  %inc507.i = add nuw i32 %j.5832.i, 1
  %807 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count459.i = getelementptr inbounds %struct.resource_pool, ptr %808, i32 0, i32 19
  %809 = ptrtoint ptr %pipe_count459.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load i32, ptr %pipe_count459.i, align 4
  %cmp460.i = icmp ult i32 %inc507.i, %810
  br i1 %cmp460.i, label %cleanup503.i.for.body462.i_crit_edge, label %cleanup503.i.commit_planes_for_stream.exit_crit_edge

cleanup503.i.commit_planes_for_stream.exit_crit_edge: ; preds = %cleanup503.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %commit_planes_for_stream.exit

cleanup503.i.for.body462.i_crit_edge:             ; preds = %cleanup503.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body462.i

commit_planes_for_stream.exit:                    ; preds = %cleanup503.i.commit_planes_for_stream.exit_crit_edge, %if.end456.i.commit_planes_for_stream.exit_crit_edge, %if.end94.i236
  %811 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %current_state, align 4
  %cmp82.not = icmp eq ptr %812, %context.0
  br i1 %cmp82.not, label %commit_planes_for_stream.exit.if.end110_crit_edge, label %if.then84

commit_planes_for_stream.exit.if.end110_crit_edge: ; preds = %commit_planes_for_stream.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

if.then84:                                        ; preds = %commit_planes_for_stream.exit
  %813 = ptrtoint ptr %current_state to i32
  call void @__asan_store4_noabort(i32 %813)
  store ptr %context.0, ptr %current_state, align 4
  %refcount.i243 = getelementptr inbounds %struct.dc_state, ptr %812, i32 0, i32 8
  %call.i.i.i.i.i.i.i244 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i243, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !107
  call void @llvm.prefetch.p0(ptr %refcount.i243, i32 1, i32 3, i32 1) #16
  %814 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i243, ptr %refcount.i243, i32 1, ptr elementtype(i32) %refcount.i243) #16, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i245 = extractvalue { i32, i32, i32 } %814, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i245)
  %cmp.i.i.i.i.i246 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i245, 1
  br i1 %cmp.i.i.i.i.i246, label %if.then.i.i250, label %if.end5.i.i.i.i.i248

if.end5.i.i.i.i.i248:                             ; preds = %if.then84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i245)
  %.not.i.i.i.i.i247 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i245, 0
  br i1 %.not.i.i.i.i.i247, label %if.end5.i.i.i.i.i248.dc_release_state.exit251_crit_edge, label %if.then10.i.i.i.i.i249, !prof !109

if.end5.i.i.i.i.i248.dc_release_state.exit251_crit_edge: ; preds = %if.end5.i.i.i.i.i248
  call void @__sanitizer_cov_trace_pc() #18
  br label %dc_release_state.exit251

if.then10.i.i.i.i.i249:                           ; preds = %if.end5.i.i.i.i.i248
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i243, i32 noundef 3) #16
  br label %dc_release_state.exit251

if.then.i.i250:                                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !110
  call void @dc_resource_state_destruct(ptr noundef %812) #16
  call void @kvfree(ptr noundef %812) #16
  br label %dc_release_state.exit251

dc_release_state.exit251:                         ; preds = %if.then.i.i250, %if.then10.i.i.i.i.i249, %if.end5.i.i.i.i.i248.dc_release_state.exit251_crit_edge
  %815 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count89264 = getelementptr inbounds %struct.resource_pool, ptr %816, i32 0, i32 19
  %817 = ptrtoint ptr %pipe_count89264 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load i32, ptr %pipe_count89264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %818)
  %cmp90265.not = icmp eq i32 %818, 0
  br i1 %cmp90265.not, label %dc_release_state.exit251.if.end110_crit_edge, label %for.body92.lr.ph

dc_release_state.exit251.if.end110_crit_edge:     ; preds = %dc_release_state.exit251
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

for.body92.lr.ph:                                 ; preds = %dc_release_state.exit251
  %res_ctx94 = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 4
  br label %for.body92

for.body92:                                       ; preds = %if.end106.for.body92_crit_edge, %for.body92.lr.ph
  %i.3266 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc108, %if.end106.for.body92_crit_edge ]
  %arrayidx96 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx94, i32 0, i32 %i.3266
  %819 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %arrayidx96, align 8
  %tobool98.not = icmp eq ptr %820, null
  br i1 %tobool98.not, label %for.body92.if.end106_crit_edge, label %land.lhs.true99

for.body92.if.end106_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106

land.lhs.true99:                                  ; preds = %for.body92
  %stream100 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx94, i32 0, i32 %i.3266, i32 1
  %821 = ptrtoint ptr %stream100 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %stream100, align 4
  %cmp101 = icmp eq ptr %822, %stream
  br i1 %cmp101, label %if.then103, label %land.lhs.true99.if.end106_crit_edge

land.lhs.true99.if.end106_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106

if.then103:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #18
  %force_full_update105 = getelementptr inbounds %struct.dc_plane_state, ptr %820, i32 0, i32 38
  %823 = ptrtoint ptr %force_full_update105 to i32
  call void @__asan_store1_noabort(i32 %823)
  store i8 0, ptr %force_full_update105, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %land.lhs.true99.if.end106_crit_edge, %for.body92.if.end106_crit_edge
  %inc108 = add nuw i32 %i.3266, 1
  %824 = ptrtoint ptr %res_pool.i224 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %res_pool.i224, align 8
  %pipe_count89 = getelementptr inbounds %struct.resource_pool, ptr %825, i32 0, i32 19
  %826 = ptrtoint ptr %pipe_count89 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %pipe_count89, align 4
  %cmp90 = icmp ult i32 %inc108, %827
  br i1 %cmp90, label %if.end106.for.body92_crit_edge, label %if.end106.if.end110_crit_edge

if.end106.if.end110_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

if.end106.for.body92_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body92

if.end110:                                        ; preds = %if.end106.if.end110_crit_edge, %dc_release_state.exit251.if.end110_crit_edge, %commit_planes_for_stream.exit.if.end110_crit_edge
  br i1 %cmp, label %land.lhs.true113, label %if.end110.cleanup119_crit_edge

if.end110.cleanup119_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup119

land.lhs.true113:                                 ; preds = %if.end110
  %dce_version114 = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 6
  %828 = ptrtoint ptr %dce_version114 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load i32, ptr %dce_version114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %829)
  %cmp115 = icmp slt i32 %829, 12
  br i1 %cmp115, label %if.then117, label %land.lhs.true113.cleanup119_crit_edge

land.lhs.true113.cleanup119_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup119

if.then117:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #18
  call void @dc_post_update_surfaces_to_stream(ptr noundef %dc)
  %bw_ctx = getelementptr inbounds %struct.dc_state, ptr %context.0, i32 0, i32 5
  call fastcc void @trace_amdgpu_dm_dce_clocks_state(ptr noundef %bw_ctx)
  br label %cleanup119

cleanup119:                                       ; preds = %if.then117, %land.lhs.true113.cleanup119_crit_edge, %if.end110.cleanup119_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup119_crit_edge, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_stream_get_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_surface_trace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_resource_state_copy_construct(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_build_scaling_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_dm_dc_pipe_state(i32 noundef %pipe_idx, ptr noundef %plane_state, ptr noundef %stream, ptr noundef %plane_res, i32 noundef %update_flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dc_pipe_state, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_dm_dc_pipe_state, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !116

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !109

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !123
  %call42 = tail call i32 @__traceiter_amdgpu_dm_dc_pipe_state(ptr noundef null, i32 noundef %pipe_idx, ptr noundef %plane_state, ptr noundef %stream, ptr noundef %plane_res, i32 noundef %update_flags) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !109

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dc_pipe_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_dm_dc_pipe_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_dm_dc_pipe_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_amdgpu_dm_dc_pipe_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 485, ptr noundef nonnull @.str.27) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !120
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #16
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @dc_get_current_stream_count(ptr nocapture noundef readonly %dc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_count, align 8
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dc_get_stream_at_index(ptr nocapture noundef readonly %dc, i8 noundef zeroext %i) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %i)
  %cmp = icmp ugt i8 %3, %i
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %i to i32
  %arrayidx = getelementptr [6 x ptr], ptr %1, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.then ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_stream_find_from_link(ptr noundef readonly %link) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state, align 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp21.not = icmp eq i8 %7, 0
  br i1 %cmp21.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %7 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %5, i32 0, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %link6 = getelementptr inbounds %struct.dc_stream_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %link6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link6, align 4
  %cmp7 = icmp eq ptr %11, %link
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %9, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_interrupt_to_irq_source(ptr nocapture noundef readonly %dc, i32 noundef %src_id, i32 noundef %ext_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %irqs = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqs, align 4
  %call = tail call i32 @dal_irq_service_to_irq_source(ptr noundef %3, i32 noundef %src_id, i32 noundef %ext_id) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_irq_service_to_irq_source(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_interrupt_set(ptr noundef readonly %dc, i32 noundef %src, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dc, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %irqs = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqs, align 4
  %call = tail call zeroext i1 @dal_irq_service_set(ptr noundef %3, i32 noundef %src, i1 noundef zeroext %enable) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_irq_service_set(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_interrupt_ack(ptr nocapture noundef readonly %dc, i32 noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %irqs = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqs, align 4
  %call = tail call zeroext i1 @dal_irq_service_ack(ptr noundef %3, i32 noundef %src) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_irq_service_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_power_down_on_boot(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %power_down_on_boot = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 5
  %4 = ptrtoint ptr %power_down_on_boot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_down_on_boot, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %5(ptr noundef %dc) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_set_power_state(ptr noundef %dc, i32 noundef %power_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %power_state)
  %cond = icmp eq i32 %power_state, 1
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %if.end
  tail call void @dc_resource_state_construct(ptr noundef %dc, ptr noundef nonnull %1) #16
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmub_srv, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %sw.bb.if.end6_crit_edge, label %if.then3

sw.bb.if.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dc_dmub_srv_wait_phy_init(ptr noundef nonnull %5) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %sw.bb.if.end6_crit_edge
  %init_hw = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 4
  %6 = ptrtoint ptr %init_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_hw, align 4
  tail call void %7(ptr noundef %dc) #16
  %init_sys_ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 53
  %8 = ptrtoint ptr %init_sys_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_sys_ctx, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.end6.cleanup_crit_edge, label %land.lhs.true

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end6
  %valid = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %vm_pa_config = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 8
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %12 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwseq, align 4
  %call = tail call i32 %9(ptr noundef %13, ptr noundef %dc, ptr noundef %vm_pa_config) #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp15.not = icmp eq i8 %15, 0
  br i1 %cmp15.not, label %do.body.do.end61_crit_edge, label %land.rhs

do.body.do.end61_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

land.rhs:                                         ; preds = %do.body
  %.b173 = load i1, ptr @dc_set_power_state.__already_done, align 1
  br i1 %.b173, label %land.rhs.if.then58_crit_edge, label %if.then26, !prof !109

land.rhs.if.then58_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then58

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dc_set_power_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3315, i32 noundef 9, ptr noundef null) #16
  br label %if.then58

if.then58:                                        ; preds = %if.then26, %land.rhs.if.then58_crit_edge
  tail call void @kgdb_breakpoint() #16
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body.do.end61_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 62368, i32 noundef 3520, i32 noundef 4) #21
  %tobool65.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool65.not, label %land.rhs75, label %if.end128

land.rhs75:                                       ; preds = %do.end61
  %.b171172 = load i1, ptr @dc_set_power_state.__already_done.11, align 1
  br i1 %.b171172, label %land.rhs75.if.then122_crit_edge, label %if.then86, !prof !109

land.rhs75.if.then122_crit_edge:                  ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then122

if.then86:                                        ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dc_set_power_state.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3323, i32 noundef 9, ptr noundef null) #16
  br label %if.then122

if.then122:                                       ; preds = %if.then86, %land.rhs75.if.then122_crit_edge
  tail call void @kgdb_breakpoint() #16
  br label %cleanup

if.end128:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_state, align 4
  %refcount130 = getelementptr inbounds %struct.dc_state, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %refcount130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %refcount.sroa.0.0.copyload = load i32, ptr %refcount130, align 8
  %dml132 = getelementptr inbounds %struct.dc_state, ptr %17, i32 0, i32 5, i32 1
  %19 = call ptr @memcpy(ptr %call1.i.i.i, ptr %dml132, i32 62368)
  tail call void @dc_resource_state_destruct(ptr noundef %17) #16
  %20 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_state, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 67552)
  %23 = load ptr, ptr %current_state, align 4
  %refcount136 = getelementptr inbounds %struct.dc_state, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %refcount136 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %refcount.sroa.0.0.copyload, ptr %refcount136, align 8
  %25 = load ptr, ptr %current_state, align 4
  %dml139 = getelementptr inbounds %struct.dc_state, ptr %25, i32 0, i32 5, i32 1
  %26 = call ptr @memcpy(ptr %dml139, ptr %call1.i.i.i, i32 62368)
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %if.then122, %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_resource_state_construct(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_resource_state_destruct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_resume(ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link_count = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %0 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp6.not = icmp eq i8 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @core_link_resume(ptr noundef %3) #16
  %inc = add nuw nsw i32 %i.07, 1
  %4 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_count, align 8
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_link_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_is_dmcu_initialized(ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %dmcu1 = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %dmcu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmcu1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %funcs = getelementptr inbounds %struct.dmcu, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_dmcu_initialized, align 4
  %call = tail call zeroext i1 %7(ptr noundef nonnull %3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_submit_i2c(ptr nocapture noundef readonly %dc, i32 noundef %link_index, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %link_index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %ddc1 = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %ddc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc1, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call = tail call zeroext i1 @dce_i2c_submit_command(ptr noundef %5, ptr noundef %7, ptr noundef %cmd) #16
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce_i2c_submit_command(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_submit_i2c_oem(ptr nocapture noundef readonly %dc, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %oem_device = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %oem_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oem_device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call zeroext i1 @dce_i2c_submit_command(ptr noundef %1, ptr noundef %5, ptr noundef %cmd) #16
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_link_add_remote_sink(ptr noundef %link, ptr nocapture noundef readonly %edid, i32 noundef %len, ptr noundef %init_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %len)
  %cmp = icmp sgt i32 %len, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %init_data, null
  br i1 %tobool.not, label %do.body, label %if.end2

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dc_link_add_remote_sink, i32 noundef 3422) #16
  tail call void @kgdb_breakpoint() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %link3 = getelementptr inbounds %struct.dc_sink_init_data, ptr %init_data, i32 0, i32 1
  %0 = ptrtoint ptr %link3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link3, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.body6, label %if.end9

do.body6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dc_link_add_remote_sink, i32 noundef 3427) #16
  tail call void @kgdb_breakpoint() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end2
  %call = tail call ptr @dc_sink_create(ptr noundef nonnull %init_data) #16
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %dc_edid = getelementptr inbounds %struct.dc_sink, ptr %call, i32 0, i32 1
  %raw_edid = getelementptr inbounds %struct.dc_sink, ptr %call, i32 0, i32 1, i32 1
  %2 = call ptr @memmove(ptr %raw_edid, ptr %edid, i32 %len)
  %3 = ptrtoint ptr %dc_edid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %dc_edid, align 4
  %sink_count.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 1
  %4 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sink_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp ugt i32 %5, 3
  br i1 %cmp.i, label %fail_add_sink, label %if.end16

if.end16:                                         ; preds = %if.end12
  tail call void @dc_sink_retain(ptr noundef nonnull %call) #16
  %6 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sink_count.i, align 8
  %arrayidx.i = getelementptr [4 x ptr], ptr %link, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %arrayidx.i, align 4
  %9 = load i32, ptr %sink_count.i, align 8
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %sink_count.i, align 8
  %edid_caps = getelementptr inbounds %struct.dc_sink, ptr %call, i32 0, i32 2
  %call18 = tail call i32 @dm_helpers_parse_edid_caps(ptr noundef %link, ptr noundef %dc_edid, ptr noundef %edid_caps) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end16.cleanup_crit_edge, label %if.then20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %dc_edid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dc_edid, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %call18) #16
  br label %cleanup

fail_add_sink:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.link_add_remote_sink_helper, i32 noundef 3390) #16
  tail call void @kgdb_breakpoint() #16
  tail call void @dc_sink_release(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %fail_add_sink, %if.then20, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.body6, %do.body, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %fail_add_sink ], [ null, %do.body6 ], [ null, %do.body ], [ null, %if.end9.cleanup_crit_edge ], [ %call, %if.then20 ], [ %call, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_sink_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_helpers_parse_edid_caps(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_remove_remote_sink(ptr nocapture noundef %link, ptr noundef %sink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sink_count = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %sink_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sink_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dc_link_remove_remote_sink, i32 noundef 3476) #16
  tail call void @kgdb_breakpoint() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc16, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %link, i32 0, i32 %i.036
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, %sink
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %arrayidx.le = getelementptr [4 x ptr], ptr %link, i32 0, i32 %i.036
  tail call void @dc_sink_release(ptr noundef %sink) #16
  %4 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.le, align 4
  %5 = ptrtoint ptr %sink_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sink_count, align 8
  %sub37 = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.036, i32 %sub37)
  %cmp738 = icmp ult i32 %i.036, %sub37
  br i1 %cmp738, label %if.then3.while.body_crit_edge, label %if.then3.while.end_crit_edge

if.then3.while.end_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.then3.while.body_crit_edge:                    ; preds = %if.then3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then3.while.body_crit_edge
  %i.139 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ %i.036, %if.then3.while.body_crit_edge ]
  %add = add nuw i32 %i.139, 1
  %arrayidx9 = getelementptr [4 x ptr], ptr %link, i32 0, i32 %add
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr [4 x ptr], ptr %link, i32 0, i32 %i.139
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx11, align 4
  %10 = ptrtoint ptr %sink_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sink_count, align 8
  %sub = add i32 %11, -1
  %cmp7 = icmp ult i32 %add, %sub
  br i1 %cmp7, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then3.while.end_crit_edge
  %i.1.lcssa = phi i32 [ %i.036, %if.then3.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %arrayidx13 = getelementptr [4 x ptr], ptr %link, i32 0, i32 %i.1.lcssa
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx13, align 4
  %13 = ptrtoint ptr %sink_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sink_count, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %sink_count, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc16 = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc16, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.end, %do.body
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @get_clock_requirements_for_state(ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %info) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bw_ctx = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %bw_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bw_ctx, align 8
  %displayClock = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %displayClock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %displayClock, align 4
  %dcfclk_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5, i32 0, i32 3
  %3 = ptrtoint ptr %dcfclk_khz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dcfclk_khz, align 4
  %engineClock = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %engineClock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %engineClock, align 4
  %dramclk_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %dramclk_khz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dramclk_khz, align 8
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %info, align 4
  %max_supported_dppclk_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5, i32 3, i32 1
  %9 = ptrtoint ptr %max_supported_dppclk_khz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_supported_dppclk_khz, align 4
  %maxSupportedDppClock = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %maxSupportedDppClock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %maxSupportedDppClock, align 4
  %dppclk_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5
  %12 = ptrtoint ptr %dppclk_khz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dppclk_khz, align 8
  %dppClock = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 4
  %14 = ptrtoint ptr %dppClock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dppClock, align 4
  %socclk_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %socclk_khz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %socclk_khz, align 8
  %socClock = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %socClock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %socClock, align 4
  %dcfclk_deep_sleep_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %dcfclk_deep_sleep_khz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dcfclk_deep_sleep_khz, align 4
  %dcfClockDeepSleep = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 6
  %20 = ptrtoint ptr %dcfClockDeepSleep to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dcfClockDeepSleep, align 4
  %fclk_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1, i32 2
  %21 = ptrtoint ptr %fclk_khz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fclk_khz, align 8
  %fClock = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 7
  %23 = ptrtoint ptr %fClock to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fClock, align 4
  %phyclk_khz = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1, i32 3
  %24 = ptrtoint ptr %phyclk_khz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phyclk_khz, align 4
  %phyClock = getelementptr inbounds %struct.AsicStateEx, ptr %info, i32 0, i32 8
  %26 = ptrtoint ptr %phyClock to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %phyClock, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_set_clock(ptr noundef %dc, i32 noundef %clock_type, i32 noundef %clk_khz, i32 noundef %stepping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %set_clock = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 59
  %0 = ptrtoint ptr %set_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 %1(ptr noundef %dc, i32 noundef %clock_type, i32 noundef %clk_khz, i32 noundef %stepping) #16
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_get_clock(ptr noundef %dc, i32 noundef %clock_type, ptr noundef %clock_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %get_clock = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 60
  %0 = ptrtoint ptr %get_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %1(ptr noundef %dc, i32 noundef %clock_type, ptr noundef %clock_cfg) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_set_psr_allow_active(ptr nocapture noundef readonly %dc, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %allow_active = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %allow_active) #16
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %stream_count39 = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream_count39 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_count39, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp41.not = icmp eq i8 %3, 0
  br i1 %cmp41.not, label %entry.cleanup27_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %16, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %4, i32 0, i32 %i.042
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %link3 = getelementptr inbounds %struct.dc_stream_state, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %link3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link3, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %8, i32 0, i32 50
  %9 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %psr_settings, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then5:                                         ; preds = %if.end
  %psr_allow_active = getelementptr inbounds %struct.dc_link, ptr %8, i32 0, i32 50, i32 1
  %11 = ptrtoint ptr %psr_allow_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %psr_allow_active, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %enable, label %land.lhs.true, label %land.lhs.true14.critedge

land.lhs.true:                                    ; preds = %if.then5
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  %13 = ptrtoint ptr %allow_active to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %allow_active, align 1
  %call = call zeroext i1 @dc_link_set_psr_allow_active(ptr noundef nonnull %8, ptr noundef nonnull %allow_active, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #16
  br i1 %call, label %if.then10.for.inc_crit_edge, label %if.then10.cleanup27_crit_edge

if.then10.cleanup27_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true14.critedge:                         ; preds = %if.then5
  br i1 %tobool9.not, label %land.lhs.true14.critedge.for.inc_crit_edge, label %if.then19

land.lhs.true14.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true14.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true14.critedge
  %14 = ptrtoint ptr %allow_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %allow_active, align 1
  %call20 = call zeroext i1 @dc_link_set_psr_allow_active(ptr noundef nonnull %8, ptr noundef nonnull %allow_active, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef null) #16
  br i1 %call20, label %if.then19.for.inc_crit_edge, label %if.then19.cleanup27_crit_edge

if.then19.cleanup27_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then19.for.inc_crit_edge, %land.lhs.true14.critedge.for.inc_crit_edge, %if.then10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %15 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_state, align 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup27_crit_edge

for.inc.cleanup27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup27:                                        ; preds = %for.inc.cleanup27_crit_edge, %if.then19.cleanup27_crit_edge, %if.then10.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup27_crit_edge ], [ false, %if.then19.cleanup27_crit_edge ], [ false, %if.then10.cleanup27_crit_edge ], [ true, %for.inc.cleanup27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %allow_active) #16
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_set_psr_allow_active(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dc_enable_dmub_notifications(ptr nocapture noundef readonly %dc) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_dmub_aux_for_legacy_ddc = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 82
  %0 = ptrtoint ptr %enable_dmub_aux_for_legacy_ddc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_dmub_aux_for_legacy_ddc, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_process_dmub_aux_transfer_async(ptr nocapture noundef readonly %dc, i32 noundef %link_index, ptr nocapture noundef readonly %payload) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #16
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.dc_process_dmub_set_mst_slots.cmd, i32 64)
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 8
  %dmub_srv1 = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %dmub_srv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmub_srv1, align 8
  %length = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 5
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp ugt i32 %6, 16
  br i1 %cmp, label %land.rhs, label %entry.do.end42_crit_edge

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end42

land.rhs:                                         ; preds = %entry
  %.b123 = load i1, ptr @dc_process_dmub_aux_transfer_async.__already_done, align 1
  br i1 %.b123, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !109

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dc_process_dmub_aux_transfer_async.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3746, i32 noundef 9, ptr noundef null) #16
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #16
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %entry.do.end42_crit_edge
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %cmd, align 4
  %bf.clear = and i32 %bf.load, 16776963
  %bf.set = or i32 %bf.clear, 1174405120
  store i32 %bf.set, ptr %cmd, align 4
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %link_index
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %ddc = getelementptr inbounds %struct.dc_link, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool47.not = icmp eq ptr %13, null
  %spec.select = zext i1 %tobool47.not to i32
  %14 = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %14, align 4
  %ddc_hw_inst = getelementptr inbounds %struct.dc_link, ptr %9, i32 0, i32 26
  %16 = ptrtoint ptr %ddc_hw_inst to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ddc_hw_inst, align 4
  %aux_control54 = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %aux_control54 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %aux_control54, align 4
  %sw_crc_enabled = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %sw_crc_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %sw_crc_enabled, align 2
  %timeout = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %timeout, align 4
  %address = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 4
  %21 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %address, align 4
  %dpaux = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 7
  %address58 = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 7, i32 4
  %23 = ptrtoint ptr %address58 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %address58, align 4
  %24 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %payload, align 4, !range !111
  %26 = ptrtoint ptr %dpaux to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %dpaux, align 4
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  %conv63 = trunc i32 %28 to i8
  %length66 = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 7, i32 2
  %29 = ptrtoint ptr %length66 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv63, ptr %length66, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool68.not = icmp eq i8 %25, 0
  %write84 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 1
  %30 = ptrtoint ptr %write84 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write84, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool85.not = icmp eq i8 %31, 0
  br i1 %tobool68.not, label %if.else83, label %if.then69

if.then69:                                        ; preds = %do.end42
  %mot77 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 2
  %32 = ptrtoint ptr %mot77 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mot77, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool78.not = icmp eq i8 %33, 0
  br i1 %tobool85.not, label %if.else76, label %if.then71

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  %. = select i1 %tobool78.not, i8 0, i8 64
  br label %if.end89

if.else76:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  %.125 = select i1 %tobool78.not, i8 16, i8 80
  br label %if.end89

if.else83:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #18
  %.126 = select i1 %tobool85.not, i8 -112, i8 -128
  br label %if.end89

if.end89:                                         ; preds = %if.else83, %if.else76, %if.then71
  %action.0 = phi i8 [ %., %if.then71 ], [ %.125, %if.else76 ], [ %.126, %if.else83 ]
  %action92 = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 7, i32 1
  %34 = ptrtoint ptr %action92 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %action.0, ptr %action92, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool94.not = icmp eq i32 %28, 0
  br i1 %tobool94.not, label %if.end89.if.end103_crit_edge, label %land.lhs.true

if.end89.if.end103_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end89
  %write95 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 1
  %35 = ptrtoint ptr %write95 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write95, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool96.not = icmp eq i8 %36, 0
  br i1 %tobool96.not, label %land.lhs.true.if.end103_crit_edge, label %if.then98

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %data = getelementptr inbounds %struct.dmub_rb_cmd_dp_aux_access, ptr %cmd, i32 0, i32 1, i32 7, i32 5
  %data101 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 6
  %37 = ptrtoint ptr %data101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data101, align 4
  %39 = call ptr @memcpy(ptr %data, ptr %38, i32 %28)
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %land.lhs.true.if.end103_crit_edge, %if.end89.if.end103_crit_edge
  call void @dc_dmub_srv_cmd_queue(ptr noundef %4, ptr noundef nonnull %cmd) #16
  call void @dc_dmub_srv_cmd_execute(ptr noundef %4) #16
  call void @dc_dmub_srv_wait_idle(ptr noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #16
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_execute(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @get_link_index_from_dpia_port_index(ptr nocapture noundef readonly %dc, i8 noundef zeroext %dpia_port_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link_count = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %0 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp76.not = icmp eq i8 %1, 0
  br i1 %cmp76.not, label %entry.land.rhs_crit_edge, label %for.body.preheader

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %1 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ddc = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %ddc_hw_inst = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 26
  %8 = ptrtoint ptr %ddc_hw_inst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ddc_hw_inst, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %dpia_port_index)
  %cmp8 = icmp eq i8 %9, %dpia_port_index
  br i1 %cmp8, label %do.end59.loopexit, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.land.rhs_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b69 = load i1, ptr @get_link_index_from_dpia_port_index.__already_done, align 1
  br i1 %.b69, label %land.rhs.if.then56_crit_edge, label %if.then24, !prof !109

land.rhs.if.then56_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_link_index_from_dpia_port_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3815, i32 noundef 9, ptr noundef null) #16
  br label %if.then56

if.then56:                                        ; preds = %if.then24, %land.rhs.if.then56_crit_edge
  tail call void @kgdb_breakpoint() #16
  br label %do.end59

do.end59.loopexit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %10 = trunc i32 %indvars.iv to i8
  br label %do.end59

do.end59:                                         ; preds = %do.end59.loopexit, %if.then56
  %link_index.073 = phi i8 [ -1, %if.then56 ], [ %10, %do.end59.loopexit ]
  ret i8 %link_index.073
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_process_dmub_set_config_async(ptr nocapture noundef readonly %dc, i32 noundef %link_index, ptr nocapture noundef readonly %payload, ptr nocapture noundef writeonly %notify) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #16
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.dc_process_dmub_set_mst_slots.cmd, i32 64)
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 8
  %dmub_srv1 = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %dmub_srv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmub_srv1, align 8
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1291911168, ptr %cmd, align 4
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %link_index
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %ddc_hw_inst = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %ddc_hw_inst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ddc_hw_inst, align 4
  %set_config_control = getelementptr inbounds %struct.dmub_rb_cmd_set_config_access, ptr %cmd, i32 0, i32 1
  %instance = getelementptr inbounds %struct.dmub_rb_cmd_set_config_access, ptr %cmd, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %instance, align 2
  %11 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %payload, align 1
  %13 = ptrtoint ptr %set_config_control to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %set_config_control, align 4
  %msg_data = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload, i32 0, i32 1
  %14 = ptrtoint ptr %msg_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msg_data, align 1
  %msg_data10 = getelementptr inbounds %struct.dmub_rb_cmd_set_config_access, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %msg_data10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %msg_data10, align 1
  %call = call zeroext i1 @dc_dmub_srv_cmd_with_reply_data(ptr noundef %4, ptr noundef nonnull %cmd) #16
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %17 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %17, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load12 = load i32, ptr %cmd, align 4
  %20 = and i32 %bf.load12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %if.end.if.end16_crit_edge, label %if.then14

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %immed_status = getelementptr inbounds %struct.dmub_rb_cmd_set_config_access, ptr %cmd, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %immed_status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %immed_status, align 1
  %conv = zext i8 %22 to i32
  %23 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %23, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %25 = xor i1 %cmp.not, true
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi i1 [ %25, %if.end16 ], [ true, %if.then ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #16
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_dmub_srv_cmd_with_reply_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_process_dmub_set_mst_slots(ptr nocapture noundef readonly %dc, i32 noundef %link_index, i8 noundef zeroext %mst_alloc_slots, ptr nocapture noundef writeonly %mst_slots_in_use) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #16
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.dc_process_dmub_set_mst_slots.cmd, i32 64)
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 8
  %dmub_srv1 = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %dmub_srv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmub_srv1, align 8
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1291976704, ptr %cmd, align 4
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %link_index
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %ddc_hw_inst = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %ddc_hw_inst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ddc_hw_inst, align 4
  %mst_slots_control = getelementptr inbounds %struct.dmub_rb_cmd_set_mst_alloc_slots, ptr %cmd, i32 0, i32 1
  %instance = getelementptr inbounds %struct.dmub_rb_cmd_set_mst_alloc_slots, ptr %cmd, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %instance, align 1
  %11 = ptrtoint ptr %mst_slots_control to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %mst_alloc_slots, ptr %mst_slots_control, align 4
  %call = call zeroext i1 @dc_dmub_srv_cmd_with_reply_data(ptr noundef %4, ptr noundef nonnull %cmd) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load9 = load i32, ptr %cmd, align 4
  %13 = and i32 %bf.load9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.not = icmp eq i32 %13, 0
  br i1 %cmp.not.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %immed_status = getelementptr inbounds %struct.dmub_rb_cmd_set_mst_alloc_slots, ptr %cmd, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %immed_status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %immed_status, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %15, label %if.end26 [
    i8 2, label %if.end12.cleanup_crit_edge
    i8 3, label %if.then23
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %mst_slots_in_use25 = getelementptr inbounds %struct.dmub_rb_cmd_set_mst_alloc_slots, ptr %cmd, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %mst_slots_in_use25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mst_slots_in_use25, align 1
  %19 = ptrtoint ptr %mst_slots_in_use to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %mst_slots_in_use, align 1
  br label %cleanup

if.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 24, %if.then23 ], [ 1, %if.end26 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 18, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_disable_accelerated_mode(ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios, align 4
  tail call void @bios_set_scratch_acc_mode_change(ptr noundef %3, i32 noundef 0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bios_set_scratch_acc_mode_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_notify_vsync_int_state(ptr nocapture noundef readonly %dc, ptr noundef readonly %stream, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %edp_links = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 8
  %link1 = getelementptr inbounds %struct.dc_sink, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links) #16
  %4 = ptrtoint ptr %edp_links to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links, align 4, !annotation !106
  %5 = getelementptr inbounds [2 x ptr], ptr %edp_links, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !106
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 50
  %7 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %psr_settings, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %9 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %10, i32 0, i32 4
  %stream2 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream2, align 4
  %cmp3 = icmp eq ptr %12, %stream
  br i1 %cmp3, label %land.lhs.true, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %tg = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tg, align 8
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %stream2.1 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %stream2.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream2.1, align 4
  %cmp3.1 = icmp eq ptr %16, %stream
  br i1 %cmp3.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %tg.1 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 1, i32 3, i32 2
  %17 = ptrtoint ptr %tg.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tg.1, align 8
  %tobool4.not.1 = icmp eq ptr %18, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.end50_crit_edge

land.lhs.true.1.if.end50_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %stream2.2 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %stream2.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stream2.2, align 4
  %cmp3.2 = icmp eq ptr %20, %stream
  br i1 %cmp3.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %tg.2 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 2, i32 3, i32 2
  %21 = ptrtoint ptr %tg.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tg.2, align 8
  %tobool4.not.2 = icmp eq ptr %22, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.end50_crit_edge

land.lhs.true.2.if.end50_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %stream2.3 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %stream2.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stream2.3, align 4
  %cmp3.3 = icmp eq ptr %24, %stream
  br i1 %cmp3.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %tg.3 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 3, i32 3, i32 2
  %25 = ptrtoint ptr %tg.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tg.3, align 8
  %tobool4.not.3 = icmp eq ptr %26, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.end50_crit_edge

land.lhs.true.3.if.end50_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %stream2.4 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %stream2.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream2.4, align 4
  %cmp3.4 = icmp eq ptr %28, %stream
  br i1 %cmp3.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %tg.4 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 4, i32 3, i32 2
  %29 = ptrtoint ptr %tg.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tg.4, align 8
  %tobool4.not.4 = icmp eq ptr %30, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.if.end50_crit_edge

land.lhs.true.4.if.end50_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %stream2.5 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %stream2.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stream2.5, align 4
  %cmp3.5 = icmp eq ptr %32, %stream
  br i1 %cmp3.5, label %land.lhs.true.5, label %for.inc.4.land.end_crit_edge

for.inc.4.land.end_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.lhs.true.5:                                  ; preds = %for.inc.4
  %tg.5 = getelementptr %struct.dc_state, ptr %10, i32 0, i32 4, i32 0, i32 5, i32 3, i32 2
  %33 = ptrtoint ptr %tg.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tg.5, align 8
  %tobool4.not.5 = icmp eq ptr %34, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.land.end_crit_edge, label %land.lhs.true.5.if.end50_crit_edge

land.lhs.true.5.if.end50_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

land.lhs.true.5.land.end_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.end:                                         ; preds = %land.lhs.true.5.land.end_crit_edge, %for.inc.4.land.end_crit_edge
  %.b107 = load i1, ptr @dc_notify_vsync_int_state.__already_done, align 1
  br i1 %.b107, label %land.end.if.then46_crit_edge, label %if.then14, !prof !109

land.end.if.then46_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dc_notify_vsync_int_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3966, i32 noundef 9, ptr noundef null) #16
  br label %if.then46

if.then46:                                        ; preds = %if.then14, %land.end.if.then46_crit_edge
  tail call void @kgdb_breakpoint() #16
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true.5.if.end50_crit_edge, %land.lhs.true.4.if.end50_crit_edge, %land.lhs.true.3.if.end50_crit_edge, %land.lhs.true.2.if.end50_crit_edge, %land.lhs.true.1.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge
  %i.0116.lcssa = phi i32 [ 0, %land.lhs.true.if.end50_crit_edge ], [ 1, %land.lhs.true.1.if.end50_crit_edge ], [ 2, %land.lhs.true.2.if.end50_crit_edge ], [ 3, %land.lhs.true.3.if.end50_crit_edge ], [ 4, %land.lhs.true.4.if.end50_crit_edge ], [ 5, %land.lhs.true.5.if.end50_crit_edge ]
  %link_count.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %35 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %link_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp26.not.i = icmp eq i8 %36, 0
  br i1 %cmp26.not.i, label %if.end50.cleanup_crit_edge, label %for.body.i.preheader

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.preheader:                             ; preds = %if.end50
  %conv.i = zext i8 %36 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %edp_num.0 = phi i32 [ %edp_num.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.027.i = phi i32 [ %inc15.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.027.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %40)
  %cmp4.i = icmp eq i32 %40, 128
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  %arrayidx9.i = getelementptr ptr, ptr %edp_links, i32 %edp_num.0
  %41 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %arrayidx9.i, align 4
  %inc.i = add i32 %edp_num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp10.i = icmp eq i32 %inc.i, 2
  br i1 %cmp10.i, label %if.then6.i.for.body53.preheader_crit_edge, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then6.i.for.body53.preheader_crit_edge:        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body53.preheader

for.inc.i:                                        ; preds = %if.then6.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %edp_num.1 = phi i32 [ %edp_num.0, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then6.i.for.inc.i_crit_edge ], [ %edp_num.0, %if.end.i.for.inc.i_crit_edge ]
  %inc15.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not = icmp eq i32 %inc15.i, %conv.i
  br i1 %exitcond.not, label %get_edp_links.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

get_edp_links.exit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_num.1)
  %cmp52120 = icmp sgt i32 %edp_num.1, 0
  br i1 %cmp52120, label %get_edp_links.exit.for.body53.preheader_crit_edge, label %get_edp_links.exit.for.end60_crit_edge

get_edp_links.exit.for.end60_crit_edge:           ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end60

get_edp_links.exit.for.body53.preheader_crit_edge: ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body53.preheader

for.body53.preheader:                             ; preds = %get_edp_links.exit.for.body53.preheader_crit_edge, %if.then6.i.for.body53.preheader_crit_edge
  %edp_num.2129 = phi i32 [ %edp_num.1, %get_edp_links.exit.for.body53.preheader_crit_edge ], [ 2, %if.then6.i.for.body53.preheader_crit_edge ]
  br label %for.body53

for.body53:                                       ; preds = %for.inc58.for.body53_crit_edge, %for.body53.preheader
  %i.1121 = phi i32 [ %inc59, %for.inc58.for.body53_crit_edge ], [ 0, %for.body53.preheader ]
  %arrayidx54 = getelementptr [2 x ptr], ptr %edp_links, i32 0, i32 %i.1121
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx54, align 4
  %cmp55 = icmp eq ptr %43, %3
  br i1 %cmp55, label %for.body53.for.end60_crit_edge, label %for.inc58

for.body53.for.end60_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end60

for.inc58:                                        ; preds = %for.body53
  %inc59 = add nuw nsw i32 %i.1121, 1
  %exitcond125.not = icmp eq i32 %inc59, %edp_num.2129
  br i1 %exitcond125.not, label %for.inc58.cleanup_crit_edge, label %for.inc58.for.body53_crit_edge

for.inc58.for.body53_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body53

for.inc58.cleanup_crit_edge:                      ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end60:                                        ; preds = %for.body53.for.end60_crit_edge, %get_edp_links.exit.for.end60_crit_edge
  %edp_num.2128 = phi i32 [ %edp_num.1, %get_edp_links.exit.for.end60_crit_edge ], [ %edp_num.2129, %for.body53.for.end60_crit_edge ]
  %i.1.lcssa = phi i32 [ 0, %get_edp_links.exit.for.end60_crit_edge ], [ %i.1121, %for.body53.for.end60_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %edp_num.2128)
  %cmp61 = icmp eq i32 %i.1.lcssa, %edp_num.2128
  br i1 %cmp61, label %for.end60.cleanup_crit_edge, label %if.end63

for.end60.cleanup_crit_edge:                      ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end63:                                         ; preds = %for.end60
  %abm = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0116.lcssa, i32 3, i32 7
  %44 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %abm, align 4
  %tobool65.not = icmp eq ptr %45, null
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %land.lhs.true66

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true66:                                  ; preds = %if.end63
  %funcs = getelementptr inbounds %struct.abm, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs, align 4
  %set_abm_pause = getelementptr inbounds %struct.abm_funcs, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %set_abm_pause to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_abm_pause, align 4
  %tobool69.not = icmp eq ptr %49, null
  br i1 %tobool69.not, label %land.lhs.true66.cleanup_crit_edge, label %if.then70

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then70:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  %lnot78 = xor i1 %enable, true
  %tg81 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0116.lcssa, i32 3, i32 2
  %50 = ptrtoint ptr %tg81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tg81, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inst, align 4
  %call = tail call zeroext i1 %49(ptr noundef nonnull %45, i1 noundef zeroext %lnot78, i32 noundef %i.1.lcssa, i32 noundef %53) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %land.lhs.true66.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %for.end60.cleanup_crit_edge, %for.inc58.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then46, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links) #16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_parse_asic_id([9 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_bios_parser_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_gpio_service_create(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_create_resource_pool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_clk_mgr_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @create_links(ptr noundef %dc, i32 noundef %num_virtual_links) unnamed_addr #0 align 64 {
entry:
  %link_init_params = alloca %struct.link_init_data, align 4
  %link_init_params22 = alloca %struct.link_init_data, align 4
  %enc_init = alloca %struct.encoder_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios, align 4
  %link_count = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %4 = ptrtoint ptr %link_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %link_count, align 8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = tail call zeroext i8 %8(ptr noundef %3) #16
  %conv = zext i8 %call to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call)
  %cmp = icmp ugt i8 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef 8) #16
  br label %cleanup108

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.create_links, i32 noundef %conv, i32 noundef %num_virtual_links) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp2173.not = icmp eq i8 %call, 0
  br i1 %cmp2173.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ctx7 = getelementptr inbounds %struct.link_init_data, ptr %link_init_params, i32 0, i32 1
  %connector_index = getelementptr inbounds %struct.link_init_data, ptr %link_init_params, i32 0, i32 2
  %link_index = getelementptr inbounds %struct.link_init_data, ptr %link_init_params, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %if.end16.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %link_init_params) #16
  %9 = call ptr @memset(ptr %link_init_params, i32 0, i32 20)
  %10 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_count, align 8
  %conv5 = zext i8 %11 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %i.0174, i32 noundef %conv5) #16
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 8
  %14 = ptrtoint ptr %ctx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %ctx7, align 4
  %15 = ptrtoint ptr %connector_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.0174, ptr %connector_index, align 4
  %16 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link_count, align 8
  %conv9 = zext i8 %17 to i32
  %18 = ptrtoint ptr %link_index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv9, ptr %link_index, align 4
  %19 = ptrtoint ptr %link_init_params to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dc, ptr %link_init_params, align 4
  %call11 = call ptr @link_create(ptr noundef nonnull %link_init_params) #16
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.body.if.end16_crit_edge, label %if.then12

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_count, align 8
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call11, ptr %arrayidx, align 4
  %dc14 = getelementptr inbounds %struct.dc_link, ptr %call11, i32 0, i32 35
  %23 = ptrtoint ptr %dc14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dc, ptr %dc14, align 4
  %24 = load i8, ptr %link_count, align 8
  %inc = add i8 %24, 1
  store i8 %inc, ptr %link_count, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %for.body.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %link_init_params) #16
  %inc17 = add nuw nsw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc17, %conv
  br i1 %exitcond.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.end.for.end_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24) #16
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %25 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res_pool, align 8
  %usb4_dpia_count175 = getelementptr inbounds %struct.resource_pool, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %usb4_dpia_count175 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usb4_dpia_count175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp19176.not = icmp eq i32 %28, 0
  br i1 %cmp19176.not, label %for.end.for.cond45.preheader_crit_edge, label %for.body21.lr.ph

for.end.for.cond45.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond45.preheader

for.body21.lr.ph:                                 ; preds = %for.end
  %ctx25 = getelementptr inbounds %struct.link_init_data, ptr %link_init_params22, i32 0, i32 1
  %connector_index26 = getelementptr inbounds %struct.link_init_data, ptr %link_init_params22, i32 0, i32 2
  %link_index29 = getelementptr inbounds %struct.link_init_data, ptr %link_init_params22, i32 0, i32 3
  %is_dpia_link = getelementptr inbounds %struct.link_init_data, ptr %link_init_params22, i32 0, i32 4
  %29 = getelementptr inbounds i8, ptr %link_init_params22, i32 16
  br label %for.body21

for.cond45.preheader:                             ; preds = %if.end41.for.cond45.preheader_crit_edge, %for.end.for.cond45.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_virtual_links)
  %cmp46178.not = icmp eq i32 %num_virtual_links, 0
  br i1 %cmp46178.not, label %for.cond45.preheader.for.end103_crit_edge, label %for.body48.lr.ph

for.cond45.preheader.for.end103_crit_edge:        ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end103

for.body48.lr.ph:                                 ; preds = %for.cond45.preheader
  %ctx85 = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init, i32 0, i32 4
  %hpd_source = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init, i32 0, i32 2
  %transmitter = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init, i32 0, i32 5
  %connector = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init, i32 0, i32 1
  %encoder = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init, i32 0, i32 3
  br label %for.body48

for.body21:                                       ; preds = %if.end41.for.body21_crit_edge, %for.body21.lr.ph
  %i.1177 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc43, %if.end41.for.body21_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %link_init_params22) #16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 4
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 8
  %33 = ptrtoint ptr %ctx25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %ctx25, align 4
  %34 = ptrtoint ptr %connector_index26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.1177, ptr %connector_index26, align 4
  %35 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %link_count, align 8
  %conv28 = zext i8 %36 to i32
  %37 = ptrtoint ptr %link_index29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv28, ptr %link_index29, align 4
  %38 = ptrtoint ptr %link_init_params22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dc, ptr %link_init_params22, align 4
  %39 = ptrtoint ptr %is_dpia_link to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %is_dpia_link, align 4
  %call31 = call ptr @link_create(ptr noundef nonnull %link_init_params22) #16
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %for.body21.if.end41_crit_edge, label %if.then33

for.body21.if.end41_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then33:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %link_count, align 8
  %idxprom36 = zext i8 %41 to i32
  %arrayidx37 = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %idxprom36
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call31, ptr %arrayidx37, align 4
  %dc38 = getelementptr inbounds %struct.dc_link, ptr %call31, i32 0, i32 35
  %43 = ptrtoint ptr %dc38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dc, ptr %dc38, align 4
  %44 = load i8, ptr %link_count, align 8
  %inc40 = add i8 %44, 1
  store i8 %inc40, ptr %link_count, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %for.body21.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %link_init_params22) #16
  %inc43 = add nuw i32 %i.1177, 1
  %45 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %res_pool, align 8
  %usb4_dpia_count = getelementptr inbounds %struct.resource_pool, ptr %46, i32 0, i32 24
  %47 = ptrtoint ptr %usb4_dpia_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usb4_dpia_count, align 4
  %cmp19 = icmp ult i32 %inc43, %48
  br i1 %cmp19, label %if.end41.for.body21_crit_edge, label %if.end41.for.cond45.preheader_crit_edge

if.end41.for.cond45.preheader_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond45.preheader

if.end41.for.body21_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body21

for.body48:                                       ; preds = %for.inc101.for.body48_crit_edge, %for.body48.lr.ph
  %i.2179 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc102, %for.inc101.for.body48_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 616) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %enc_init) #16
  %50 = call ptr @memset(ptr %enc_init, i32 0, i32 24)
  %cmp51 = icmp eq ptr %call7.i.i, null
  br i1 %cmp51, label %for.body48.cleanup.thread_crit_edge, label %if.end54

for.body48.cleanup.thread_crit_edge:              ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end54:                                         ; preds = %for.body48
  %51 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %link_count, align 8
  %conv56 = zext i8 %52 to i32
  %link_index57 = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %link_index57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv56, ptr %link_index57, align 8
  %arrayidx61 = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %conv56
  %54 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %arrayidx61, align 4
  %inc63 = add i8 %52, 1
  store i8 %inc63, ptr %link_count, align 8
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 8
  %ctx65 = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 36
  %57 = ptrtoint ptr %ctx65 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %ctx65, align 8
  %dc66 = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 35
  %58 = ptrtoint ptr %dc66 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dc, ptr %dc66, align 4
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %connector_signal to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 512, ptr %connector_signal, align 8
  %link_id = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 39
  %60 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load = load i32, ptr %link_id, align 4
  %bf.clear = and i32 %bf.load, 65535
  %bf.set74 = or i32 %bf.clear, 1678966784
  store i32 %bf.set74, ptr %link_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i170 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 56) #20
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 38
  %62 = ptrtoint ptr %link_enc to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i170, ptr %link_enc, align 8
  %tobool77.not = icmp eq ptr %call7.i.i170, null
  br i1 %tobool77.not, label %if.end54.cleanup.thread_crit_edge, label %for.inc101

if.end54.cleanup.thread_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end54.cleanup.thread_crit_edge, %for.body48.cleanup.thread_crit_edge
  %.sink = phi i32 [ 256, %for.body48.cleanup.thread_crit_edge ], [ 273, %if.end54.cleanup.thread_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.create_links, i32 noundef %.sink) #16
  call void @kgdb_breakpoint() #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %enc_init) #16
  br label %cleanup108

for.inc101:                                       ; preds = %if.end54
  %dpcd_caps = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 43
  %dpcd_caps83 = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 56, i32 1
  %63 = ptrtoint ptr %dpcd_caps83 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dpcd_caps, ptr %dpcd_caps83, align 4
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 8
  %66 = ptrtoint ptr %ctx85 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %ctx85, align 4
  %67 = ptrtoint ptr %enc_init to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %enc_init, align 4
  %68 = ptrtoint ptr %hpd_source to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 7, ptr %hpd_source, align 4
  %69 = ptrtoint ptr %transmitter to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %transmitter, align 4
  %70 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %link_id, align 4
  %72 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %connector, align 4
  %73 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load87 = load i32, ptr %encoder, align 4
  %bf.clear88 = and i32 %bf.load87, 65535
  %bf.set97 = or i32 %bf.clear88, 353501184
  store i32 %bf.set97, ptr %encoder, align 4
  %call99 = call zeroext i1 @virtual_link_encoder_construct(ptr noundef nonnull %call7.i.i170, ptr noundef nonnull %enc_init) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %enc_init) #16
  %inc102 = add nuw i32 %i.2179, 1
  %exitcond180.not = icmp eq i32 %inc102, %num_virtual_links
  br i1 %exitcond180.not, label %for.inc101.for.end103_crit_edge, label %for.inc101.for.body48_crit_edge

for.inc101.for.body48_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body48

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end103

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %for.cond45.preheader.for.end103_crit_edge
  %links104 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 10
  %74 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %link_count, align 8
  %conv106 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp9.not.i = icmp eq i8 %75, 0
  br i1 %cmp9.not.i, label %for.end103.get_num_of_internal_disp.exit_crit_edge, label %for.end103.for.body.i_crit_edge

for.end103.for.body.i_crit_edge:                  ; preds = %for.end103
  br label %for.body.i

for.end103.get_num_of_internal_disp.exit_crit_edge: ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_num_of_internal_disp.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end103.for.body.i_crit_edge
  %count.011.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end103.for.body.i_crit_edge ]
  %i.010.i = phi i32 [ %inc3.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end103.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %links104, i32 %i.010.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %79)
  %cmp1.i = icmp eq i32 %79, 128
  br i1 %cmp1.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %is_internal_display.i = getelementptr inbounds %struct.dc_link, ptr %77, i32 0, i32 14
  %80 = ptrtoint ptr %is_internal_display.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_internal_display.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %inc.i = add i32 %count.011.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.then.i ], [ %count.011.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc3.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, %conv106
  br i1 %exitcond.not.i, label %for.inc.i.get_num_of_internal_disp.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.get_num_of_internal_disp.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_num_of_internal_disp.exit

get_num_of_internal_disp.exit:                    ; preds = %for.inc.i.get_num_of_internal_disp.exit_crit_edge, %for.end103.get_num_of_internal_disp.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %for.end103.get_num_of_internal_disp.exit_crit_edge ], [ %count.1.i, %for.inc.i.get_num_of_internal_disp.exit_crit_edge ]
  %num_of_internal_disp = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 25
  %82 = ptrtoint ptr %num_of_internal_disp to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %count.0.lcssa.i, ptr %num_of_internal_disp, align 4
  br label %cleanup108

cleanup108:                                       ; preds = %get_num_of_internal_disp.exit, %cleanup.thread, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %get_num_of_internal_disp.exit ], [ false, %cleanup.thread ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @create_link_encoders(ptr nocapture noundef readonly %dc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cap, align 4
  %num_usb4_dpia1 = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %num_usb4_dpia1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_usb4_dpia1, align 4
  %num_dig_link_enc4 = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %num_dig_link_enc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_dig_link_enc4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dig_link_enc_count = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %dig_link_enc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dig_link_enc_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6 = icmp ugt i32 %7, %9
  br i1 %cmp6, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %if.end25.for.body_crit_edge ]
  %res.050 = phi i8 [ 1, %for.body.lr.ph ], [ %res.1, %if.end25.for.body_crit_edge ]
  %10 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res_pool, align 8
  %arrayidx = getelementptr %struct.resource_pool, ptr %11, i32 0, i32 22, i32 %i.051
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true:                                    ; preds = %for.body
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %11, i32 0, i32 40
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %link_enc_create_minimal = getelementptr inbounds %struct.resource_funcs, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %link_enc_create_minimal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link_enc_create_minimal, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true.if.end25_crit_edge, label %if.then13

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then13:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 8
  %call = tail call ptr %17(ptr noundef %19, i32 noundef %i.051) #16
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %if.then13.if.end25_crit_edge, label %if.then18

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res_pool, align 8
  %arrayidx21 = getelementptr %struct.resource_pool, ptr %21, i32 0, i32 22, i32 %i.051
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %arrayidx21, align 4
  %23 = load ptr, ptr %res_pool, align 8
  %dig_link_enc_count23 = getelementptr inbounds %struct.resource_pool, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %dig_link_enc_count23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dig_link_enc_count23, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %dig_link_enc_count23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.then13.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %res.1 = phi i8 [ %res.050, %for.body.if.end25_crit_edge ], [ %res.050, %if.then18 ], [ %res.050, %land.lhs.true.if.end25_crit_edge ], [ 0, %if.then13.if.end25_crit_edge ]
  %inc26 = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc26, %7
  br i1 %exitcond.not, label %cleanup.loopexit, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.loopexit:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %26 = and i8 %res.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %extract.t.le = icmp ne i8 %26, 0
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %extract.t.le, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @link_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtual_link_encoder_construct(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @link_enc_cfg_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_destroy_clk_mgr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_destroy_resource_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_service_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_bios_parser_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @link_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_detect_sink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_are_vblanks_synchronizable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_are_streams_timing_synchronizable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_stream_get_status_from_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_dmub_srv_notify_stream_mask(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_link_disable_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_rem_all_planes_for_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_perf_trace_timestamp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_dm_dc_clocks_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_dm_dce_clocks_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce_use_lut(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_pixel_format_to_bpp(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_dm_dc_pipe_state(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @context_clock_trace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_use_dmub_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_hw_lock_mgr_cmd(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_build_info_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_update_dsc_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_dp_set_test_pattern(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_link_enable_stream(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_retain(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !92, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 628, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dc_stream_configure_crc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dc_stream_configure_crc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 663, i32 2}
!8 = !{ptr @dc_stream_get_crc._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dc_stream_get_crc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1233, i32 24}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1237, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1598, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1826, i32 2}
!18 = !{ptr @__func__.dc_commit_state, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1843, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3141, i32 4}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3187, i32 4}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3315, i32 3}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3323, i32 3}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3417, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3422, i32 3}
!33 = !{ptr @__func__.dc_link_add_remote_sink, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3455, i32 3}
!36 = !{ptr @__func__.dc_link_remove_remote_sink, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3476, i32 3}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3746, i32 2}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3815, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3966, i32 3}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 893, i32 3}
!46 = !{ptr @__func__.dc_construct, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 901, i32 3}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 909, i32 3}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 933, i32 3}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1004, i32 3}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 194, i32 2}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 197, i32 3}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 204, i32 2}
!61 = !{ptr @__func__.create_links, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 214, i32 3}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 230, i32 2}
!66 = !{ptr @DC_BUILD_ID, !67, !"DC_BUILD_ID", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 85, i32 19}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1778, i32 3}
!70 = !{ptr @__func__.wait_for_no_pipes_pending, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1171, i32 2}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 1189, i32 3}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_trace.h", i32 487, i32 1}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!78 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_trace.h", i32 556, i32 1}
!84 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 2669, i32 3}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 2696, i32 4}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_trace.h", i32 381, i32 1}
!91 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 2978, i32 4}
!94 = !{ptr @__func__.link_add_remote_sink_helper, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c", i32 3390, i32 3}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i64 2148780465}
!108 = !{i64 2148694905, i64 2148694937, i64 2148694966, i64 2148695000, i64 2148695031, i64 2148695054}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2149978238}
!111 = !{i8 0, i8 2}
!112 = distinct !{!112, !113}
!113 = !{!"llvm.loop.peeled.count", i32 1}
!114 = !{i64 2148692440, i64 2148692472, i64 2148692501, i64 2148692535, i64 2148692566, i64 2148692589}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 2148311636, i64 2148311641, i64 2148311654, i64 2148311698, i64 2148311732, i64 2148311753}
!117 = !{i64 2158123671}
!118 = !{i64 2158123890}
!119 = !{i64 2150036340}
!120 = !{i64 2150037376}
!121 = !{i64 2158140911}
!122 = !{i64 2158141132}
!123 = !{i64 2158101876}
!124 = !{i64 2158102193}
