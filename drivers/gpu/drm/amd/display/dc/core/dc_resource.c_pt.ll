; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_resource.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dc_init_data = type { %struct.hw_asic_id, ptr, ptr, %struct.dc_bounding_box_overrides, i32, ptr, i32, ptr, ptr, %struct.dc_config, i64, %struct.dpcd_vendor_signature }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.65 }
%struct.anon.65 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.9 }
%struct.anon.9 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.10, %struct.anon.11, %struct.anon.12, i32, i32 }
%struct.anon.10 = type { i8, [3 x i8] }
%struct.anon.11 = type { i32, i32, i32 }
%struct.anon.12 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.16, %struct.anon.17, i8, i8, i64 }
%struct.anon.16 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.17 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.69, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.70, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.69 = type { i8, [3 x i8] }
%struct.anon.70 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.resource_straps = type { i32, i32, i32 }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource_create_funcs = type { ptr, ptr, ptr, ptr }
%struct.audio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.34, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.26 }
%union.anon.26 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.27 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.27 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.30, i32, i32, i32, i32 }
%struct.anon.30 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.7 }
%struct.anon.7 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon, %union.large_integer, i8 }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.33 }
%struct.anon.33 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.transform_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.60 }
%struct.dc_stream_status = type { i32, i32, i32, i32, %struct.timing_sync_info, [4 x ptr], i8 }
%struct.timing_sync_info = type { i32, i32, i8 }
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
%struct.anon.60 = type { i32 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_validation_set = type { ptr, [3 x ptr], i8 }
%struct.mpcc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.24 }
%struct.anon.24 = type { i8 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.43 }
%struct.anon.43 = type { i8 }
%union.max_lane_count = type { %struct.anon.44 }
%struct.anon.44 = type { i8 }
%union.max_down_spread = type { %struct.anon.45 }
%struct.anon.45 = type { i8 }
%union.dprx_feature = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%union.sink_count = type { %struct.anon.47 }
%struct.anon.47 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.48 }
%struct.anon.48 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.49 }
%struct.anon.49 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.50 }
%struct.anon.50 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%union.dpia_info = type { %struct.anon.52 }
%struct.anon.52 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.53 }
%struct.anon.53 = type { i8, i8, %struct.anon.54 }
%struct.anon.54 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_encoder = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.stream_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpp = type { ptr, ptr, i32, ptr, %struct.pwl_params, %struct.pwl_params, %struct.dpp_cursor_attributes, %union.defer_reg_writes, %struct.pwl_params, i8 }
%struct.dpp_cursor_attributes = type { i32, i32 }
%union.defer_reg_writes = type { i32 }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.29, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.29 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.mpc = type { ptr, ptr, [6 x %struct.mpcc], %struct.pwl_params, i8 }
%struct.mpcc = type { i32, i32, ptr, %struct.mpcc_blnd_cfg, %struct.mpcc_sm_cfg, i8 }
%struct.mpcc_blnd_cfg = type { %struct.tg_color, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32 }
%struct.tg_color = type { i16, i16, i16 }
%struct.mpcc_sm_cfg = type { i8, i32, i8, i8, i32, i32 }
%struct.output_pixel_processor = type { ptr, i32, %struct.pwl_params, %struct.mpc_tree, [6 x i8], ptr, i32 }
%struct.mpc_tree = type { i32, ptr }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.audio = type { ptr, ptr, i32, i8 }
%union.hdmi_info_packet = type { %struct.avi_info_frame }
%struct.avi_info_frame = type <{ %struct.hdmi_info_frame_header, [6 x i8], i16, i16, i16, i16, i8, [13 x i8] }>
%struct.hdmi_info_frame_header = type { i8, i8, i8 }
%struct.info_packet_raw_data = type { i8, i8, i8, [28 x i8] }
%struct.audio_check = type { i32, i32, i32 }

@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC: failed to create audio!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.resource_construct = private unnamed_addr constant [19 x i8] c"resource_construct\00", align 1
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DC: failed to create stream_encoder!\0A\00", [58 x i8] zeroinitializer }, align 32
@__const.resource_are_vblanks_synchronizable.base60_refresh_rates = private unnamed_addr constant [3 x i32] [i32 10, i32 20, i32 5], align 4
@resource_build_scaling_params.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@resource_build_scaling_params.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.6, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"resource_build_scaling_params\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [242 x i8], [46 x i8] } { [242 x i8] c"[SCALER]:%s pipe %d:\0AViewport: height:%d width:%d x:%d y:%d  Recout: height:%d width:%d x:%d y:%d  HACTIVE:%d VACTIVE:%d\0Asrc_rect: height:%d width:%d x:%d y:%d  dst_rect: height:%d width:%d x:%d y:%d  clip_rect: height:%d width:%d x:%d y:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Existing stream not found; failed to attach surface!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Surface: can not attach plane_state %p! Maximum is: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Head pipe not found for stream_state %p !\0A\00", [53 x i8] zeroinitializer }, align 32
@dc_add_plane_to_context.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Existing stream not found; failed to remove plane.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Existing plane_state not found; failed to detach it!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Existing stream %p not found!\0A\00", [33 x i8] zeroinitializer }, align 32
@dc_add_stream_to_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 1925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014[drm] Max streams reached, can't add stream %p !\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dc_add_stream_to_ctx\00", [43 x i8] zeroinitializer }, align 32
@dc_add_stream_to_ctx._entry_ptr = internal global ptr @dc_add_stream_to_ctx._entry, section ".printk_index", align 4
@dc_add_stream_to_ctx._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014[drm] Adding stream %p to context failed with err %d!\0A\00", [39 x i8] zeroinitializer }, align 32
@dc_add_stream_to_ctx._entry_ptr.17 = internal global ptr @dc_add_stream_to_ctx._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Pipe not found for stream %p !\0A\00", [32 x i8] zeroinitializer }, align 32
@dc_remove_stream_from_ctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Context doesn't have stream %p !\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Stream %p not found in new ctx!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"DC: Failure: pipe_idx[%d] syncd with disabled master pipe_idx[%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.check_syncd_pipes_for_disabled_master_pipe = private unnamed_addr constant [43 x i8] c"check_syncd_pipes_for_disabled_master_pipe\00", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC: unexpected audio fuse!\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.update_num_audio = private unnamed_addr constant [17 x i8] c"update_num_audio\00", align 1
@calculate_recout.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@calculate_recout.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@dc_fixpt_ceil.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@calculate_inits_and_viewports.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@calculate_inits_and_viewports.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Stream %p not found in set!\0A\00", [35 x i8] zeroinitializer }, align 32
@get_norm_pix_clk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.resource_build_scaling_params = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 9, i32 9, i32 6, i32 6, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 7, i32 7, i32 8, i32 8], [40 x i8] zeroinitializer }, align 32
@switch.table.resource_build_info_frame = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24320, i32 24064, i32 23808, i32 25088], [16 x i8] zeroinitializer }, align 32
@switch.table.resource_build_bit_depth_reduction_params = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 524288, i32 655360, i32 786432, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 655360, i32 524288, i32 524288, i32 655360, i32 524288, i32 524288, i32 524288, i32 524288], [40 x i8] zeroinitializer }, align 32
@switch.table.resource_pixel_format_to_bpp = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 8, i32 16, i32 16, i32 32, i32 32, i32 32, i32 32, i32 32, i32 64, i32 64, i32 64, i32 64, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 16, i32 16], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 110, i64 120, i64 125, i64 130, i64 135, i64 141]
@__sancov_gen_cov_switch_values.27 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 32, i64 64]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 128]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 11, i64 12]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.49 = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 265, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 337, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 354, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1170, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1399, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1405, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1413, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1484, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1524, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1555, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1925, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1935, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1954, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 2004, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 2294, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 3265, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 304, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 522, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1585, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [43 x i8] c"switch.table.resource_build_scaling_params\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [39 x i8] c"switch.table.resource_build_info_frame\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [55 x i8] c"switch.table.resource_build_bit_depth_reduction_params\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [42 x i8] c"switch.table.resource_pixel_format_to_bpp\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @dc_add_stream_to_ctx._entry, ptr @dc_add_stream_to_ctx._entry.15, ptr @dc_add_stream_to_ctx._entry_ptr, ptr @dc_add_stream_to_ctx._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @switch.table.resource_build_scaling_params, ptr @switch.table.resource_build_info_frame, ptr @switch.table.resource_build_bit_depth_reduction_params, ptr @switch.table.resource_pixel_format_to_bpp], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 242, i32 288, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_add_stream_to_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_add_stream_to_ctx._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.resource_build_scaling_params to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.resource_build_info_frame to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.resource_build_bit_depth_reduction_params to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.resource_pixel_format_to_bpp to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @resource_parse_asic_id([9 x i32] %asic_id.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_id.coerce.fca.1.extract = extractvalue [9 x i32] %asic_id.coerce, 1
  %asic_id.coerce.fca.3.extract = extractvalue [9 x i32] %asic_id.coerce, 3
  %0 = zext i32 %asic_id.coerce.fca.1.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asic_id.coerce.fca.1.extract, label %sw.default [
    i32 110, label %sw.bb
    i32 120, label %entry.sw.epilog_crit_edge
    i32 125, label %sw.bb23
    i32 135, label %sw.bb44
    i32 130, label %sw.bb45
    i32 141, label %sw.bb82
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = add i32 %asic_id.coerce.fca.3.extract, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %1)
  %2 = icmp ult i32 %1, 59
  br i1 %2, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %3 = add i32 %asic_id.coerce.fca.3.extract, -60
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %4 = icmp ult i32 %3, 10
  %spec.select129 = select i1 %4, i32 2, i32 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = add i32 %asic_id.coerce.fca.3.extract, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %5)
  %6 = icmp ult i32 %5, 126
  %spec.select143 = select i1 %6, i32 5, i32 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %7 = add i32 %asic_id.coerce.fca.3.extract, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %7)
  %8 = icmp ult i32 %7, 20
  %9 = add i32 %asic_id.coerce.fca.3.extract, -60
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %9)
  %10 = icmp ult i32 %9, 20
  %or.cond138 = or i1 %8, %10
  br i1 %or.cond138, label %sw.bb45.sw.epilog_crit_edge, label %if.end58

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end58:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #20
  %11 = add i32 %asic_id.coerce.fca.3.extract, -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %11)
  %12 = icmp ult i32 %11, 30
  %dc_version.0 = select i1 %12, i32 8, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %asic_id.coerce.fca.3.extract)
  %cmp79 = icmp ugt i32 %asic_id.coerce.fca.3.extract, 109
  %spec.select = select i1 %cmp79, i32 9, i32 %dc_version.0
  br label %sw.epilog

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %13 = add i32 %asic_id.coerce.fca.3.extract, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %13)
  %14 = icmp ult i32 %13, 215
  %spec.select131 = select i1 %14, i32 11, i32 10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb82, %if.end58, %sw.bb45.sw.epilog_crit_edge, %sw.bb44, %sw.bb23, %if.else, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %dc_version.1 = phi i32 [ -1, %sw.default ], [ 7, %sw.bb44 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 3, %entry.sw.epilog_crit_edge ], [ 6, %sw.bb45.sw.epilog_crit_edge ], [ %spec.select, %if.end58 ], [ %spec.select129, %if.else ], [ %spec.select131, %sw.bb82 ], [ %spec.select143, %sw.bb23 ]
  ret i32 %dc_version.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_create_resource_pool(ptr noundef %dc, ptr nocapture noundef readonly %init_data, i32 noundef %dc_version) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %dc_version to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %dc_version, label %entry.if.end70_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
    i32 5, label %sw.bb17
    i32 6, label %sw.bb21
    i32 7, label %sw.bb25
    i32 8, label %entry.sw.bb29_crit_edge
    i32 9, label %entry.sw.bb29_crit_edge118
    i32 10, label %entry.sw.bb33_crit_edge
    i32 11, label %entry.sw.bb33_crit_edge119
  ]

entry.sw.bb33_crit_edge119:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb33

entry.sw.bb33_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb33

entry.sw.bb29_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb29

entry.sw.bb29_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb29

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %1 = ptrtoint ptr %num_virtual_links to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_virtual_links, align 8
  %conv = trunc i32 %2 to i8
  %call = tail call ptr @dce60_create_resource_pool(i8 noundef zeroext %conv, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links2 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %3 = ptrtoint ptr %num_virtual_links2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_virtual_links2, align 8
  %conv3 = trunc i32 %4 to i8
  %call4 = tail call ptr @dce61_create_resource_pool(i8 noundef zeroext %conv3, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links6 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %5 = ptrtoint ptr %num_virtual_links6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_virtual_links6, align 8
  %conv7 = trunc i32 %6 to i8
  %call8 = tail call ptr @dce64_create_resource_pool(i8 noundef zeroext %conv7, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links10 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %7 = ptrtoint ptr %num_virtual_links10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_virtual_links10, align 8
  %conv11 = trunc i32 %8 to i8
  %call12 = tail call ptr @dce80_create_resource_pool(i8 noundef zeroext %conv11, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links14 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %9 = ptrtoint ptr %num_virtual_links14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_virtual_links14, align 8
  %conv15 = trunc i32 %10 to i8
  %call16 = tail call ptr @dce81_create_resource_pool(i8 noundef zeroext %conv15, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links18 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %11 = ptrtoint ptr %num_virtual_links18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_virtual_links18, align 8
  %conv19 = trunc i32 %12 to i8
  %call20 = tail call ptr @dce83_create_resource_pool(i8 noundef zeroext %conv19, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links22 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %13 = ptrtoint ptr %num_virtual_links22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_virtual_links22, align 8
  %conv23 = trunc i32 %14 to i8
  %call24 = tail call ptr @dce100_create_resource_pool(i8 noundef zeroext %conv23, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_virtual_links26 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %15 = ptrtoint ptr %num_virtual_links26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_virtual_links26, align 8
  %conv27 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %init_data, align 8
  %18 = insertvalue [9 x i32] undef, i32 %.unpack, 0
  %.elt99 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 1
  %19 = ptrtoint ptr %.elt99 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack100 = load i32, ptr %.elt99, align 4
  %20 = insertvalue [9 x i32] %18, i32 %.unpack100, 1
  %.elt101 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 2
  %21 = ptrtoint ptr %.elt101 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack102 = load i32, ptr %.elt101, align 8
  %22 = insertvalue [9 x i32] %20, i32 %.unpack102, 2
  %.elt103 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 3
  %23 = ptrtoint ptr %.elt103 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack104 = load i32, ptr %.elt103, align 4
  %24 = insertvalue [9 x i32] %22, i32 %.unpack104, 3
  %.elt105 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 4
  %25 = ptrtoint ptr %.elt105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack106 = load i32, ptr %.elt105, align 8
  %26 = insertvalue [9 x i32] %24, i32 %.unpack106, 4
  %.elt107 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 5
  %27 = ptrtoint ptr %.elt107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack108 = load i32, ptr %.elt107, align 4
  %28 = insertvalue [9 x i32] %26, i32 %.unpack108, 5
  %.elt109 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 6
  %29 = ptrtoint ptr %.elt109 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack110 = load i32, ptr %.elt109, align 8
  %30 = insertvalue [9 x i32] %28, i32 %.unpack110, 6
  %.elt111 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 7
  %31 = ptrtoint ptr %.elt111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack112 = load i32, ptr %.elt111, align 4
  %32 = insertvalue [9 x i32] %30, i32 %.unpack112, 7
  %.elt113 = getelementptr inbounds [9 x i32], ptr %init_data, i32 0, i32 8
  %33 = ptrtoint ptr %.elt113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack114 = load i32, ptr %.elt113, align 8
  %34 = insertvalue [9 x i32] %32, i32 %.unpack114, 8
  %call28 = tail call ptr @dce110_create_resource_pool(i8 noundef zeroext %conv27, ptr noundef %dc, [9 x i32] %34) #18
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry.sw.bb29_crit_edge, %entry.sw.bb29_crit_edge118
  %num_virtual_links30 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %35 = ptrtoint ptr %num_virtual_links30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_virtual_links30, align 8
  %conv31 = trunc i32 %36 to i8
  %call32 = tail call ptr @dce112_create_resource_pool(i8 noundef zeroext %conv31, ptr noundef %dc) #18
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry.sw.bb33_crit_edge, %entry.sw.bb33_crit_edge119
  %num_virtual_links34 = getelementptr inbounds %struct.dc_init_data, ptr %init_data, i32 0, i32 4
  %37 = ptrtoint ptr %num_virtual_links34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_virtual_links34, align 8
  %conv35 = trunc i32 %38 to i8
  %call36 = tail call ptr @dce120_create_resource_pool(i8 noundef zeroext %conv35, ptr noundef %dc) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb29, %sw.bb25, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  %res_pool.0 = phi ptr [ %call36, %sw.bb33 ], [ %call32, %sw.bb29 ], [ %call28, %sw.bb25 ], [ %call24, %sw.bb21 ], [ %call20, %sw.bb17 ], [ %call16, %sw.bb13 ], [ %call12, %sw.bb9 ], [ %call8, %sw.bb5 ], [ %call4, %sw.bb1 ], [ %call, %sw.bb ]
  %cmp.not = icmp eq ptr %res_pool.0, null
  br i1 %cmp.not, label %sw.epilog.if.end70_crit_edge, label %if.then

sw.epilog.if.end70_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then:                                          ; preds = %sw.epilog
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dc_bios, align 4
  %fw_info_valid = getelementptr inbounds %struct.dc_bios, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %fw_info_valid to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fw_info_valid, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not = icmp eq i8 %44, 0
  br i1 %tobool.not, label %do.end, label %if.then38

if.then38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %fw_info = getelementptr inbounds %struct.dc_bios, ptr %42, i32 0, i32 7
  %45 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fw_info, align 4
  %ref_clocks = getelementptr inbounds %struct.resource_pool, ptr %res_pool.0, i32 0, i32 25
  %47 = ptrtoint ptr %ref_clocks to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ref_clocks, align 4
  %dccg_ref_clock_inKhz = getelementptr inbounds %struct.resource_pool, ptr %res_pool.0, i32 0, i32 25, i32 1
  %48 = ptrtoint ptr %dccg_ref_clock_inKhz to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %dccg_ref_clock_inKhz, align 4
  %dchub_ref_clock_inKhz = getelementptr inbounds %struct.resource_pool, ptr %res_pool.0, i32 0, i32 25, i32 2
  %49 = ptrtoint ptr %dchub_ref_clock_inKhz to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %dchub_ref_clock_inKhz, align 4
  br label %if.end70

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #18
  tail call void @kgdb_breakpoint() #18
  br label %if.end70

if.end70:                                         ; preds = %do.end, %if.then38, %sw.epilog.if.end70_crit_edge, %entry.if.end70_crit_edge
  %res_pool.0117 = phi ptr [ %res_pool.0, %if.then38 ], [ %res_pool.0, %do.end ], [ null, %sw.epilog.if.end70_crit_edge ], [ null, %entry.if.end70_crit_edge ]
  ret ptr %res_pool.0117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce60_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce61_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce64_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce80_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce81_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce83_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce100_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce110_create_resource_pool(i8 noundef zeroext, ptr noundef, [9 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce112_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce120_create_resource_pool(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_destroy_resource_pool(ptr noundef %dc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dc, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then:                                          ; preds = %entry
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %res_pool) #18
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %6 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwseq, align 4
  tail call void @kfree(ptr noundef %7) #18
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @resource_construct(i32 noundef %num_virtual_links, ptr nocapture noundef %dc, ptr nocapture noundef %pool, ptr nocapture noundef readonly %create_funcs) local_unnamed_addr #2 align 64 {
entry:
  %straps = alloca %struct.resource_straps, align 4
  %aud = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 41
  %2 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cap, align 4
  %num_audio2 = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %straps) #18
  %4 = call ptr @memset(ptr %straps, i32 0, i32 12)
  %5 = ptrtoint ptr %create_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %create_funcs, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void %6(ptr noundef %1, ptr noundef nonnull %straps) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 33
  %7 = ptrtoint ptr %audio_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %audio_count, align 4
  %create_audio = getelementptr inbounds %struct.resource_create_funcs, ptr %create_funcs, i32 0, i32 1
  %8 = ptrtoint ptr %create_audio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %create_audio, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end21_crit_edge, label %if.then6

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then6:                                         ; preds = %if.end
  %audio_support = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 34
  %10 = ptrtoint ptr %audio_support to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %audio_support, align 1
  %hdmi_audio_native.i = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 34, i32 2
  %11 = ptrtoint ptr %hdmi_audio_native.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %hdmi_audio_native.i, align 1
  %hdmi_audio_on_dongle.i = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 34, i32 1
  %12 = ptrtoint ptr %hdmi_audio_on_dongle.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %hdmi_audio_on_dongle.i, align 1
  %13 = ptrtoint ptr %straps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %straps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.then6.if.end4.i_crit_edge

if.then6.if.end4.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then6
  %dc_pinstraps_audio.i = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 1
  %15 = ptrtoint ptr %dc_pinstraps_audio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dc_pinstraps_audio.i, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then1.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %hdmi_audio_on_dongle.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %hdmi_audio_on_dongle.i, align 1
  %18 = ptrtoint ptr %hdmi_audio_native.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %hdmi_audio_native.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.then.i.if.end4.i_crit_edge, %if.then6.if.end4.i_crit_edge
  %audio_stream_number.i = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 2
  %19 = ptrtoint ptr %audio_stream_number.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %audio_stream_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch = icmp ult i32 %20, 2
  br i1 %switch, label %if.end4.i.update_num_audio.exit_crit_edge, label %do.body.i

if.end4.i.update_num_audio.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %update_num_audio.exit

do.body.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #18
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.update_num_audio, i32 noundef 304) #18
  call void @kgdb_breakpoint() #18
  br label %update_num_audio.exit

update_num_audio.exit:                            ; preds = %do.body.i, %if.end4.i.update_num_audio.exit_crit_edge
  %21 = ptrtoint ptr %num_audio2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_audio2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp129 = icmp sgt i32 %22, 0
  br i1 %cmp129, label %update_num_audio.exit.for.body_crit_edge, label %update_num_audio.exit.if.end21_crit_edge

update_num_audio.exit.if.end21_crit_edge:         ; preds = %update_num_audio.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

update_num_audio.exit.for.body_crit_edge:         ; preds = %update_num_audio.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %update_num_audio.exit.for.body_crit_edge
  %i.0130 = phi i32 [ %inc20, %for.inc.for.body_crit_edge ], [ 0, %update_num_audio.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aud) #18
  %23 = ptrtoint ptr %create_audio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %create_audio, align 4
  %call = call ptr %24(ptr noundef %1, i32 noundef %i.0130) #18
  %25 = ptrtoint ptr %aud to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %aud, align 4
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %cleanup.thread, label %if.end14

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #18
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.resource_construct, i32 noundef 337) #18
  call void @kgdb_breakpoint() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aud) #18
  br label %cleanup80

if.end14:                                         ; preds = %for.body
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call15 = call zeroext i1 %29(ptr noundef nonnull %call) #18
  %30 = ptrtoint ptr %aud to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aud, align 4
  br i1 %call15, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %destroy = getelementptr inbounds %struct.audio_funcs, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %destroy, align 4
  call void %35(ptr noundef nonnull %aud) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aud) #18
  br label %if.end21

for.inc:                                          ; preds = %if.end14
  %arrayidx = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 32, i32 %i.0130
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %31, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %audio_count, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %audio_count, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aud) #18
  %inc20 = add nuw nsw i32 %i.0130, 1
  %39 = ptrtoint ptr %num_audio2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_audio2, align 4
  %cmp = icmp slt i32 %inc20, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end21_crit_edge

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end21:                                         ; preds = %for.inc.if.end21_crit_edge, %cleanup, %update_num_audio.exit.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 21
  %41 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %stream_enc_count, align 4
  %create_stream_encoder = getelementptr inbounds %struct.resource_create_funcs, ptr %create_funcs, i32 0, i32 2
  %42 = ptrtoint ptr %create_stream_encoder to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %create_stream_encoder, align 4
  %tobool22.not = icmp eq ptr %43, null
  br i1 %tobool22.not, label %if.end21.if.end46_crit_edge, label %for.cond24.preheader

if.end21.if.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

for.cond24.preheader:                             ; preds = %if.end21
  %num_stream_encoder = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %num_stream_encoder to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_stream_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp25131 = icmp sgt i32 %45, 0
  br i1 %cmp25131, label %for.cond24.preheader.for.body26_crit_edge, label %for.cond24.preheader.if.end46_crit_edge

for.cond24.preheader.if.end46_crit_edge:          ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

for.cond24.preheader.for.body26_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body26

for.body26:                                       ; preds = %if.end40.for.body26_crit_edge, %for.cond24.preheader.for.body26_crit_edge
  %i.1132 = phi i32 [ %inc44, %if.end40.for.body26_crit_edge ], [ 0, %for.cond24.preheader.for.body26_crit_edge ]
  %46 = ptrtoint ptr %create_stream_encoder to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %create_stream_encoder, align 4
  %call28 = call ptr %47(i32 noundef %i.1132, ptr noundef %1) #18
  %arrayidx29 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %i.1132
  %48 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call28, ptr %arrayidx29, align 4
  %cmp32 = icmp eq ptr %call28, null
  br i1 %cmp32, label %do.body34, label %for.body26.if.end40_crit_edge

for.body26.if.end40_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

do.body34:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #18
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.resource_construct, i32 noundef 354) #18
  call void @kgdb_breakpoint() #18
  br label %if.end40

if.end40:                                         ; preds = %do.body34, %for.body26.if.end40_crit_edge
  %49 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stream_enc_count, align 4
  %inc42 = add i32 %50, 1
  store i32 %inc42, ptr %stream_enc_count, align 4
  %inc44 = add nuw nsw i32 %i.1132, 1
  %51 = ptrtoint ptr %num_stream_encoder to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_stream_encoder, align 4
  %cmp25 = icmp slt i32 %inc44, %52
  br i1 %cmp25, label %if.end40.for.body26_crit_edge, label %if.end40.if.end46_crit_edge

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.end40.for.body26_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body26

if.end46:                                         ; preds = %if.end40.if.end46_crit_edge, %for.cond24.preheader.if.end46_crit_edge, %if.end21.if.end46_crit_edge
  %dynamic_audio = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 16
  %53 = ptrtoint ptr %dynamic_audio to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %dynamic_audio, align 1
  %54 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %audio_count, align 4
  %56 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stream_enc_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp50 = icmp ult i32 %55, %57
  %spec.store.select = zext i1 %cmp50 to i8
  %58 = ptrtoint ptr %dynamic_audio to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %spec.store.select, ptr %dynamic_audio, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_virtual_links)
  %cmp56133.not = icmp eq i32 %num_virtual_links, 0
  br i1 %cmp56133.not, label %if.end46.for.end78_crit_edge, label %for.body57.lr.ph

if.end46.for.end78_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.body57.lr.ph:                                 ; preds = %if.end46
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  br label %for.body57

for.body57:                                       ; preds = %if.end73.for.body57_crit_edge, %for.body57.lr.ph
  %i.2134 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc77, %if.end73.for.body57_crit_edge ]
  %59 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dc_bios, align 4
  %call58 = call ptr @virtual_stream_encoder_create(ptr noundef %1, ptr noundef %60) #18
  %61 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stream_enc_count, align 4
  %arrayidx61 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %62
  %63 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call58, ptr %arrayidx61, align 4
  %64 = load i32, ptr %stream_enc_count, align 4
  %arrayidx64 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %64
  %65 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx64, align 4
  %cmp65 = icmp eq ptr %66, null
  br i1 %cmp65, label %do.body67, label %if.end73

do.body67:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #18
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.resource_construct, i32 noundef 401) #18
  call void @kgdb_breakpoint() #18
  br label %cleanup80

if.end73:                                         ; preds = %for.body57
  %inc75 = add i32 %64, 1
  %67 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc75, ptr %stream_enc_count, align 4
  %inc77 = add nuw i32 %i.2134, 1
  %exitcond.not = icmp eq i32 %inc77, %num_virtual_links
  br i1 %exitcond.not, label %if.end73.for.end78_crit_edge, label %if.end73.for.body57_crit_edge

if.end73.for.body57_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body57

if.end73.for.end78_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.end78:                                        ; preds = %if.end73.for.end78_crit_edge, %if.end46.for.end78_crit_edge
  %create_hwseq = getelementptr inbounds %struct.resource_create_funcs, ptr %create_funcs, i32 0, i32 3
  %68 = ptrtoint ptr %create_hwseq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %create_hwseq, align 4
  %call79 = call ptr %69(ptr noundef %1) #18
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %70 = ptrtoint ptr %hwseq to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call79, ptr %hwseq, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %for.end78, %do.body67, %cleanup.thread
  %retval.2 = phi i1 [ false, %do.body67 ], [ true, %for.end78 ], [ false, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %straps) #18
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtual_stream_encoder_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resource_unreference_clock_source(ptr nocapture noundef %res_ctx, ptr nocapture noundef readonly %pool, ptr noundef readnone %clock_source) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 31
  %0 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 30, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %3, %clock_source
  br i1 %cmp1.i, label %find_matching_clock_source.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

find_matching_clock_source.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i)
  %cmp = icmp sgt i32 %i.07.i, -1
  br i1 %cmp, label %if.then, label %find_matching_clock_source.exit.if.end_crit_edge

find_matching_clock_source.exit.if.end_crit_edge: ; preds = %find_matching_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %find_matching_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 3, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %dec = add i8 %5, -1
  store i8 %dec, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %find_matching_clock_source.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 29
  %6 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp_clock_source, align 4
  %cmp1 = icmp eq ptr %7, %clock_source
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %dp_clock_source_ref_count = getelementptr inbounds %struct.resource_context, ptr %res_ctx, i32 0, i32 4
  %8 = ptrtoint ptr %dp_clock_source_ref_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_clock_source_ref_count, align 1
  %dec3 = add i8 %9, -1
  store i8 %dec3, ptr %dp_clock_source_ref_count, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resource_reference_clock_source(ptr nocapture noundef %res_ctx, ptr nocapture noundef readonly %pool, ptr noundef readnone %clock_source) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 31
  %0 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 30, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %3, %clock_source
  br i1 %cmp1.i, label %find_matching_clock_source.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

find_matching_clock_source.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i)
  %cmp = icmp sgt i32 %i.07.i, -1
  br i1 %cmp, label %if.then, label %find_matching_clock_source.exit.if.end_crit_edge

find_matching_clock_source.exit.if.end_crit_edge: ; preds = %find_matching_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %find_matching_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 3, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %inc = add i8 %5, 1
  store i8 %inc, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %find_matching_clock_source.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 29
  %6 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp_clock_source, align 4
  %cmp1 = icmp eq ptr %7, %clock_source
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %dp_clock_source_ref_count = getelementptr inbounds %struct.resource_context, ptr %res_ctx, i32 0, i32 4
  %8 = ptrtoint ptr %dp_clock_source_ref_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_clock_source_ref_count, align 1
  %inc3 = add i8 %9, 1
  store i8 %inc3, ptr %dp_clock_source_ref_count, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @resource_get_clock_source_reference(ptr nocapture noundef readonly %res_ctx, ptr nocapture noundef readonly %pool, ptr noundef readnone %clock_source) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 31
  %0 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 30, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %3, %clock_source
  br i1 %cmp1.i, label %find_matching_clock_source.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

find_matching_clock_source.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i)
  %cmp = icmp sgt i32 %i.07.i, -1
  br i1 %cmp, label %if.then, label %find_matching_clock_source.exit.if.end_crit_edge

find_matching_clock_source.exit.if.end_crit_edge: ; preds = %find_matching_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %find_matching_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 3, i32 %i.07.i
  br label %cleanup.sink.split

if.end:                                           ; preds = %find_matching_clock_source.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 29
  %4 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp_clock_source, align 4
  %cmp1 = icmp eq ptr %5, %clock_source
  br i1 %cmp1, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %dp_clock_source_ref_count = getelementptr inbounds %struct.resource_context, ptr %res_ctx, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.then
  %dp_clock_source_ref_count.sink = phi ptr [ %dp_clock_source_ref_count, %if.then3 ], [ %arrayidx, %if.then ]
  %6 = ptrtoint ptr %dp_clock_source_ref_count.sink to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_clock_source_ref_count.sink, align 1
  %conv4 = zext i8 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ %conv4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @resource_are_vblanks_synchronizable(ptr nocapture noundef readonly %stream1, ptr nocapture noundef readonly %stream2) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vblank_alignment_dto_params = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 4, i32 16
  %4 = ptrtoint ptr %vblank_alignment_dto_params to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vblank_alignment_dto_params, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.cleanup94_crit_edge, label %land.lhs.true

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

land.lhs.true:                                    ; preds = %entry
  %vblank_alignment_max_frame_time_diff = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 4, i32 17
  %6 = ptrtoint ptr %vblank_alignment_max_frame_time_diff to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vblank_alignment_max_frame_time_diff, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup94_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup94_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

land.lhs.true5:                                   ; preds = %land.lhs.true
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 36
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %9, label %land.lhs.true5.cleanup94_crit_edge [
    i32 32, label %land.lhs.true5.land.lhs.true7_crit_edge
    i32 128, label %land.lhs.true5.land.lhs.true7_crit_edge355
    i32 64, label %land.lhs.true5.land.lhs.true7_crit_edge356
  ]

land.lhs.true5.land.lhs.true7_crit_edge356:       ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true7

land.lhs.true5.land.lhs.true7_crit_edge355:       ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true7

land.lhs.true5.land.lhs.true7_crit_edge:          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true7

land.lhs.true5.cleanup94_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

land.lhs.true7:                                   ; preds = %land.lhs.true5.land.lhs.true7_crit_edge, %land.lhs.true5.land.lhs.true7_crit_edge355, %land.lhs.true5.land.lhs.true7_crit_edge356
  %signal8 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 36
  %11 = ptrtoint ptr %signal8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal8, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %12, label %land.lhs.true7.cleanup94_crit_edge [
    i32 32, label %land.lhs.true7.land.lhs.true11_crit_edge
    i32 128, label %land.lhs.true7.land.lhs.true11_crit_edge357
    i32 64, label %land.lhs.true7.land.lhs.true11_crit_edge358
  ]

land.lhs.true7.land.lhs.true11_crit_edge358:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true11

land.lhs.true7.land.lhs.true11_crit_edge357:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true11

land.lhs.true7.land.lhs.true11_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true11

land.lhs.true7.cleanup94_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

land.lhs.true11:                                  ; preds = %land.lhs.true7.land.lhs.true11_crit_edge, %land.lhs.true7.land.lhs.true11_crit_edge357, %land.lhs.true7.land.lhs.true11_crit_edge358
  %has_non_synchronizable_pclk = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 55
  %14 = ptrtoint ptr %has_non_synchronizable_pclk to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_non_synchronizable_pclk, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp14 = icmp eq i8 %15, 0
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true11.cleanup94_crit_edge

land.lhs.true11.cleanup94_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %has_non_synchronizable_pclk17 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 55
  %16 = ptrtoint ptr %has_non_synchronizable_pclk17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_non_synchronizable_pclk17, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp20 = icmp eq i8 %17, 0
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true16.cleanup94_crit_edge

land.lhs.true16.cleanup94_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 21
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %flags, align 4
  %19 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool23.not = icmp eq i32 %19, 0
  br i1 %tobool23.not, label %land.lhs.true22.cleanup94_crit_edge, label %land.lhs.true24

land.lhs.true22.cleanup94_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %timing25 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5
  %flags26 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 21
  %20 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load27 = load i32, ptr %flags26, align 4
  %21 = and i32 %bf.load27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool30.not = icmp eq i32 %21, 0
  br i1 %tobool30.not, label %land.lhs.true24.cleanup94_crit_edge, label %if.then

land.lhs.true24.cleanup94_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

if.then:                                          ; preds = %land.lhs.true24
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 12
  %22 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pix_clk_100hz, align 8
  %mul = mul i32 %23, 100
  %24 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timing, align 8
  %div = udiv i32 %mul, %25
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 6
  %26 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %v_total, align 8
  %div34 = udiv i32 %div, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %div34)
  %cmp35 = icmp ugt i32 %div34, 60
  br i1 %cmp35, label %if.then.cleanup94_crit_edge, label %if.end

if.then.cleanup94_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

if.end:                                           ; preds = %if.then
  %pix_clk_100hz39 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 12
  %28 = ptrtoint ptr %pix_clk_100hz39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pix_clk_100hz39, align 8
  %mul40 = mul i32 %29, 100
  %30 = ptrtoint ptr %timing25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timing25, align 8
  %div43 = udiv i32 %mul40, %31
  %v_total45 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 6
  %32 = ptrtoint ptr %v_total45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %v_total45, align 8
  %div46 = udiv i32 %div43, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %div46)
  %cmp47 = icmp ugt i32 %div46, 60
  br i1 %cmp47, label %if.end.cleanup94_crit_edge, label %if.end50

if.end.cleanup94_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

if.end50:                                         ; preds = %if.end
  %conv53 = zext i32 %25 to i64
  %mul54 = mul nuw nsw i64 %conv53, 10000
  %conv57 = zext i32 %27 to i64
  %mul58 = mul i64 %mul54, %conv57
  %conv61 = zext i32 %29 to i64
  %mul62 = mul i64 %mul58, %conv61
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul62)
  %cmp164.i.i = icmp ult i64 %mul62, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !85

if.then168.i.i:                                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i = trunc i64 %mul62 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %23
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.else162.i.i231

if.else174.i.i:                                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %mul62) #21, !srcloc !86
  %asmresult1.i.i.i = extractvalue { i64, i64 } %34, 1
  br label %if.else162.i.i231

if.else162.i.i231:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i.i)
  %cmp164.i.i230 = icmp ult i64 %dividend.addr.0.i.i, 4294967296
  br i1 %cmp164.i.i230, label %if.then168.i.i235, label %if.else174.i.i237, !prof !85

if.then168.i.i235:                                ; preds = %if.else162.i.i231
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i232 = trunc i64 %dividend.addr.0.i.i to i32
  %div172.i.i233 = udiv i32 %conv169.i.i232, %31
  %conv173.i.i234 = zext i32 %div172.i.i233 to i64
  br label %if.else162.i.i345

if.else174.i.i237:                                ; preds = %if.else162.i.i231
  call void @__sanitizer_cov_trace_pc() #20
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %dividend.addr.0.i.i) #21, !srcloc !86
  %asmresult1.i.i.i236 = extractvalue { i64, i64 } %35, 1
  br label %if.else162.i.i345

if.else162.i.i345:                                ; preds = %if.else174.i.i237, %if.then168.i.i235
  %dividend.addr.0.i.i238 = phi i64 [ %conv173.i.i234, %if.then168.i.i235 ], [ %asmresult1.i.i.i236, %if.else174.i.i237 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i.i238)
  %cmp164.i.i344 = icmp ult i64 %dividend.addr.0.i.i238, 4294967296
  br i1 %cmp164.i.i344, label %if.then168.i.i349, label %if.else174.i.i351, !prof !85

if.then168.i.i349:                                ; preds = %if.else162.i.i345
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i346 = trunc i64 %dividend.addr.0.i.i238 to i32
  %div172.i.i347 = udiv i32 %conv169.i.i346, %33
  %conv173.i.i348 = zext i32 %div172.i.i347 to i64
  br label %div_u64.exit353

if.else174.i.i351:                                ; preds = %if.else162.i.i345
  call void @__sanitizer_cov_trace_pc() #20
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %dividend.addr.0.i.i238) #21, !srcloc !86
  %asmresult1.i.i.i350 = extractvalue { i64, i64 } %36, 1
  br label %div_u64.exit353

div_u64.exit353:                                  ; preds = %if.else174.i.i351, %if.then168.i.i349
  %dividend.addr.0.i.i352 = phi i64 [ %conv173.i.i348, %if.then168.i.i349 ], [ %asmresult1.i.i.i350, %if.else174.i.i351 ]
  %conv88 = zext i8 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %div_u64.exit353
  %indvars.iv = phi i32 [ 0, %div_u64.exit353 ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @__const.resource_are_vblanks_synchronizable.base60_refresh_rates, i32 0, i32 %indvars.iv
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %conv76 = zext i32 %38 to i64
  %mul77 = mul i64 %dividend.addr.0.i.i352, %conv76
  %call78 = tail call fastcc i64 @div_u64(i64 noundef %mul77, i32 noundef 10)
  %sub = add i64 %call78, -10000
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp79 = icmp slt i64 %sub, 0
  %sub82 = sub i64 10000, %call78
  %spec.select = select i1 %cmp79, i64 %sub82, i64 %sub
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %conv88)
  %cmp89 = icmp slt i64 %spec.select, %conv88
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.next)
  %exitcond.not = icmp eq i32 %indvars.iv.next, 3
  %or.cond = select i1 %cmp89, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.cleanup94_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.cleanup94_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup94

cleanup94:                                        ; preds = %for.body.cleanup94_crit_edge, %if.end.cleanup94_crit_edge, %if.then.cleanup94_crit_edge, %land.lhs.true24.cleanup94_crit_edge, %land.lhs.true22.cleanup94_crit_edge, %land.lhs.true16.cleanup94_crit_edge, %land.lhs.true11.cleanup94_crit_edge, %land.lhs.true7.cleanup94_crit_edge, %land.lhs.true5.cleanup94_crit_edge, %land.lhs.true.cleanup94_crit_edge, %entry.cleanup94_crit_edge
  %retval.2 = phi i1 [ false, %if.then.cleanup94_crit_edge ], [ false, %if.end.cleanup94_crit_edge ], [ false, %land.lhs.true24.cleanup94_crit_edge ], [ false, %land.lhs.true22.cleanup94_crit_edge ], [ false, %land.lhs.true16.cleanup94_crit_edge ], [ false, %land.lhs.true11.cleanup94_crit_edge ], [ false, %land.lhs.true.cleanup94_crit_edge ], [ false, %entry.cleanup94_crit_edge ], [ false, %land.lhs.true5.cleanup94_crit_edge ], [ false, %land.lhs.true7.cleanup94_crit_edge ], [ %cmp89, %for.body.cleanup94_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend)
  %cmp164.i = icmp ult i64 %dividend, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !85

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i = trunc i64 %dividend to i32
  %div172.i = udiv i32 %conv169.i, %divisor
  %conv173.i = zext i32 %div172.i to i64
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor, i64 %dividend) #21, !srcloc !86
  %asmresult1.i.i = extractvalue { i64, i64 } %0, 1
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  ret i64 %dividend.addr.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @resource_are_streams_timing_synchronizable(ptr nocapture noundef readonly %stream1, ptr nocapture noundef readonly %stream2) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 8
  %timing1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5
  %2 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_total, align 8
  %v_total5 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %v_total5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v_total5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.not = icmp eq i32 %5, %7
  br i1 %cmp6.not, label %if.end8, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end8:                                          ; preds = %if.end
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_addressable, align 8
  %h_addressable11 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %h_addressable11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_addressable11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp12.not = icmp eq i32 %9, %11
  br i1 %cmp12.not, label %if.end14, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end14:                                         ; preds = %if.end8
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v_addressable, align 8
  %v_addressable17 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %v_addressable17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v_addressable17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp18.not = icmp eq i32 %13, %15
  br i1 %cmp18.not, label %if.end20, label %if.end14.return_crit_edge

if.end14.return_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end20:                                         ; preds = %if.end14
  %v_front_porch = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 10
  %16 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_front_porch, align 8
  %v_front_porch23 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 10
  %18 = ptrtoint ptr %v_front_porch23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %v_front_porch23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp24.not = icmp eq i32 %17, %19
  br i1 %cmp24.not, label %if.end26, label %if.end20.return_crit_edge

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end26:                                         ; preds = %if.end20
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 5, i32 12
  %20 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pix_clk_100hz, align 8
  %pix_clk_100hz29 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 5, i32 12
  %22 = ptrtoint ptr %pix_clk_100hz29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pix_clk_100hz29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp30.not = icmp eq i32 %21, %23
  br i1 %cmp30.not, label %if.end32, label %if.end26.return_crit_edge

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end32:                                         ; preds = %if.end26
  %c_depth = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 34, i32 2
  %24 = ptrtoint ptr %c_depth to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_depth, align 4
  %c_depth34 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 34, i32 2
  %26 = ptrtoint ptr %c_depth34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_depth34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp35.not = icmp eq i32 %25, %27
  br i1 %cmp35.not, label %if.end37, label %if.end32.return_crit_edge

if.end32.return_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end37:                                         ; preds = %if.end32
  %phy_pix_clk = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 35
  %28 = ptrtoint ptr %phy_pix_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_pix_clk, align 8
  %phy_pix_clk38 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 35
  %30 = ptrtoint ptr %phy_pix_clk38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phy_pix_clk38, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp39.not = icmp eq i32 %29, %31
  br i1 %cmp39.not, label %if.end37.if.end43_crit_edge, label %land.lhs.true

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end37
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 36
  %32 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %signal, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %33, label %land.lhs.true.return_crit_edge [
    i32 32, label %land.lhs.true.lor.lhs.false_crit_edge
    i32 128, label %land.lhs.true.lor.lhs.false_crit_edge75
    i32 64, label %land.lhs.true.lor.lhs.false_crit_edge76
  ]

land.lhs.true.lor.lhs.false_crit_edge76:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true.lor.lhs.false_crit_edge75:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge75, %land.lhs.true.lor.lhs.false_crit_edge76
  %signal40 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 36
  %35 = ptrtoint ptr %signal40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %signal40, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %36, label %lor.lhs.false.return_crit_edge [
    i32 32, label %lor.lhs.false.if.end43_crit_edge
    i32 128, label %lor.lhs.false.if.end43_crit_edge77
    i32 64, label %lor.lhs.false.if.end43_crit_edge78
  ]

lor.lhs.false.if.end43_crit_edge78:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

lor.lhs.false.if.end43_crit_edge77:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end43:                                         ; preds = %lor.lhs.false.if.end43_crit_edge, %lor.lhs.false.if.end43_crit_edge77, %lor.lhs.false.if.end43_crit_edge78, %if.end37.if.end43_crit_edge
  %view_format = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 22
  %38 = ptrtoint ptr %view_format to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %view_format, align 4
  %view_format44 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 22
  %40 = ptrtoint ptr %view_format44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %view_format44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp45.not = icmp eq i32 %39, %41
  br i1 %cmp45.not, label %if.end47, label %if.end43.return_crit_edge

if.end43.return_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end47:                                         ; preds = %if.end43
  %ignore_msa_timing_param = getelementptr inbounds %struct.dc_stream_state, ptr %stream1, i32 0, i32 24
  %42 = ptrtoint ptr %ignore_msa_timing_param to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ignore_msa_timing_param, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp eq i8 %43, 0
  br i1 %tobool.not, label %lor.lhs.false48, label %if.end47.return_crit_edge

if.end47.return_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false48:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  %ignore_msa_timing_param49 = getelementptr inbounds %struct.dc_stream_state, ptr %stream2, i32 0, i32 24
  %44 = ptrtoint ptr %ignore_msa_timing_param49 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ignore_msa_timing_param49, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool50.not = icmp eq i8 %45, 0
  br label %return

return:                                           ; preds = %lor.lhs.false48, %if.end47.return_crit_edge, %if.end43.return_crit_edge, %lor.lhs.false.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end32.return_crit_edge, %if.end26.return_crit_edge, %if.end20.return_crit_edge, %if.end14.return_crit_edge, %if.end8.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end8.return_crit_edge ], [ false, %if.end14.return_crit_edge ], [ false, %if.end20.return_crit_edge ], [ false, %if.end26.return_crit_edge ], [ false, %if.end32.return_crit_edge ], [ false, %if.end43.return_crit_edge ], [ false, %if.end47.return_crit_edge ], [ %tobool50.not, %lor.lhs.false48 ], [ false, %land.lhs.true.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @resource_find_used_clk_src_for_sharing(ptr nocapture noundef readonly %res_ctx, ptr nocapture noundef readonly %pipe_ctx) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stream6.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %clock_source.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.010, i32 5
  %0 = ptrtoint ptr %clock_source.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock_source.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.010, i32 1
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream.i, align 4
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %signal.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %5, label %lor.lhs.false.i [
    i32 512, label %if.end.i.for.inc_crit_edge
    i32 32, label %if.end.i.for.inc_crit_edge17
    i32 128, label %if.end.i.for.inc_crit_edge18
    i32 64, label %if.end.i.for.inc_crit_edge19
  ]

if.end.i.for.inc_crit_edge19:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end.i.for.inc_crit_edge18:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end.i.for.inc_crit_edge17:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %stream6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream6.i, align 4
  %signal7.i = getelementptr inbounds %struct.dc_stream_state, ptr %8, i32 0, i32 36
  %9 = ptrtoint ptr %signal7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %signal7.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %10, label %lor.lhs.false.i.if.end13.i_crit_edge [
    i32 32, label %lor.lhs.false.i.land.lhs.true.i_crit_edge
    i32 128, label %lor.lhs.false.i.land.lhs.true.i_crit_edge20
    i32 64, label %lor.lhs.false.i.land.lhs.true.i_crit_edge21
  ]

lor.lhs.false.i.land.lhs.true.i_crit_edge21:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

lor.lhs.false.i.land.lhs.true.i_crit_edge20:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %lor.lhs.false.i.land.lhs.true.i_crit_edge20, %lor.lhs.false.i.land.lhs.true.i_crit_edge21
  %ctx.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 32
  %12 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %disable_dp_clk_share.i.i = getelementptr inbounds %struct.dc, ptr %15, i32 0, i32 2, i32 21
  %16 = ptrtoint ptr %disable_dp_clk_share.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %disable_dp_clk_share.i.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %c_depth.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 34, i32 2
  %18 = ptrtoint ptr %c_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i.i = icmp eq i32 %19, 2
  br i1 %cmp.not.i.i, label %is_dp_and_hdmi_sharable.exit.i, label %if.end.i.i.for.inc_crit_edge

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

is_dp_and_hdmi_sharable.exit.i:                   ; preds = %if.end.i.i
  %c_depth2.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %8, i32 0, i32 34, i32 2
  %20 = ptrtoint ptr %c_depth2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_depth2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp3.not.i.i = icmp eq i32 %21, 2
  br i1 %cmp3.not.i.i, label %is_dp_and_hdmi_sharable.exit.i.if.end13.i_crit_edge, label %is_dp_and_hdmi_sharable.exit.i.for.inc_crit_edge

is_dp_and_hdmi_sharable.exit.i.for.inc_crit_edge: ; preds = %is_dp_and_hdmi_sharable.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

is_dp_and_hdmi_sharable.exit.i.if.end13.i_crit_edge: ; preds = %is_dp_and_hdmi_sharable.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13.i

if.end13.i:                                       ; preds = %is_dp_and_hdmi_sharable.exit.i.if.end13.i_crit_edge, %lor.lhs.false.i.if.end13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 4
  br i1 %cmp.i.i, label %land.lhs.true17.i, label %if.end22.i

land.lhs.true17.i:                                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i49.i = icmp eq i32 %10, 2
  br i1 %cmp.i49.i, label %land.lhs.true17.i.for.inc_crit_edge, label %land.lhs.true17.i.is_sharable_clk_src.exit_crit_edge

land.lhs.true17.i.is_sharable_clk_src.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %is_sharable_clk_src.exit

land.lhs.true17.i.for.inc_crit_edge:              ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end22.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.i50.i = icmp eq i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i51.i = icmp eq i32 %5, 2
  %or.cond.i = select i1 %cmp.i50.i, i1 %cmp.i51.i, i1 false
  br i1 %or.cond.i, label %if.end22.i.for.inc_crit_edge, label %if.end22.i.is_sharable_clk_src.exit_crit_edge

if.end22.i.is_sharable_clk_src.exit_crit_edge:    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %is_sharable_clk_src.exit

if.end22.i.for.inc_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

is_sharable_clk_src.exit:                         ; preds = %if.end22.i.is_sharable_clk_src.exit_crit_edge, %land.lhs.true17.i.is_sharable_clk_src.exit_crit_edge
  %call34.i = tail call zeroext i1 @resource_are_streams_timing_synchronizable(ptr noundef %3, ptr noundef %8) #18
  br i1 %call34.i, label %if.then, label %is_sharable_clk_src.exit.for.inc_crit_edge

is_sharable_clk_src.exit.for.inc_crit_edge:       ; preds = %is_sharable_clk_src.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %is_sharable_clk_src.exit
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %clock_source.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clock_source.i, align 8
  br label %cleanup

for.inc:                                          ; preds = %is_sharable_clk_src.exit.for.inc_crit_edge, %if.end22.i.for.inc_crit_edge, %land.lhs.true17.i.for.inc_crit_edge, %is_dp_and_hdmi_sharable.exit.i.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge17, %if.end.i.for.inc_crit_edge18, %if.end.i.for.inc_crit_edge19, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %23, %if.then ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_num_mpc_splits(ptr nocapture noundef readonly %pipe) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %other_pipe.0.in25 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe, i32 0, i32 10
  %0 = ptrtoint ptr %other_pipe.0.in25 to i32
  call void @__asan_load4_noabort(i32 %0)
  %other_pipe.026 = load ptr, ptr %other_pipe.0.in25, align 8
  %tobool.not27 = icmp eq ptr %other_pipe.026, null
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pipe, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %other_pipe.029 = phi ptr [ %other_pipe.026, %land.rhs.lr.ph ], [ %other_pipe.0, %while.body.land.rhs_crit_edge ]
  %mpc_split_count.028 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %other_pipe.029 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %other_pipe.029, align 8
  %cmp = icmp eq ptr %4, %2
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %mpc_split_count.028, 1
  %other_pipe.0.in = getelementptr inbounds %struct.pipe_ctx, ptr %other_pipe.029, i32 0, i32 10
  %5 = ptrtoint ptr %other_pipe.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %other_pipe.0 = load ptr, ptr %other_pipe.0.in, align 8
  %tobool.not = icmp eq ptr %other_pipe.0, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %mpc_split_count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ], [ %mpc_split_count.028, %land.rhs.while.end_crit_edge ]
  %other_pipe.1.in31 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe, i32 0, i32 9
  %6 = ptrtoint ptr %other_pipe.1.in31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %other_pipe.132 = load ptr, ptr %other_pipe.1.in31, align 4
  %tobool4.not33 = icmp eq ptr %other_pipe.132, null
  br i1 %tobool4.not33, label %while.end.while.end13_crit_edge, label %land.rhs5.lr.ph

while.end.while.end13_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end13

land.rhs5.lr.ph:                                  ; preds = %while.end
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe, align 8
  br label %land.rhs5

land.rhs5:                                        ; preds = %while.body10.land.rhs5_crit_edge, %land.rhs5.lr.ph
  %other_pipe.135 = phi ptr [ %other_pipe.132, %land.rhs5.lr.ph ], [ %other_pipe.1, %while.body10.land.rhs5_crit_edge ]
  %mpc_split_count.134 = phi i32 [ %mpc_split_count.0.lcssa, %land.rhs5.lr.ph ], [ %inc11, %while.body10.land.rhs5_crit_edge ]
  %9 = ptrtoint ptr %other_pipe.135 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %other_pipe.135, align 8
  %cmp8 = icmp eq ptr %10, %8
  br i1 %cmp8, label %while.body10, label %land.rhs5.while.end13_crit_edge

land.rhs5.while.end13_crit_edge:                  ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end13

while.body10:                                     ; preds = %land.rhs5
  %inc11 = add i32 %mpc_split_count.134, 1
  %other_pipe.1.in = getelementptr inbounds %struct.pipe_ctx, ptr %other_pipe.135, i32 0, i32 9
  %11 = ptrtoint ptr %other_pipe.1.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %other_pipe.1 = load ptr, ptr %other_pipe.1.in, align 4
  %tobool4.not = icmp eq ptr %other_pipe.1, null
  br i1 %tobool4.not, label %while.body10.while.end13_crit_edge, label %while.body10.land.rhs5_crit_edge

while.body10.land.rhs5_crit_edge:                 ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs5

while.body10.while.end13_crit_edge:               ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end13

while.end13:                                      ; preds = %while.body10.while.end13_crit_edge, %land.rhs5.while.end13_crit_edge, %while.end.while.end13_crit_edge
  %mpc_split_count.1.lcssa = phi i32 [ %mpc_split_count.0.lcssa, %while.end.while.end13_crit_edge ], [ %inc11, %while.body10.while.end13_crit_edge ], [ %mpc_split_count.134, %land.rhs5.while.end13_crit_edge ]
  ret i32 %mpc_split_count.1.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_num_odm_splits(ptr nocapture noundef readonly %pipe) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %odm_split_count.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %pipe.pn = phi ptr [ %pipe, %entry ], [ %next_pipe.0, %while.cond.while.cond_crit_edge ]
  %next_pipe.0.in = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn, i32 0, i32 11
  %0 = ptrtoint ptr %next_pipe.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %next_pipe.0 = load ptr, ptr %next_pipe.0.in, align 4
  %tobool.not = icmp eq ptr %next_pipe.0, null
  %inc = add i32 %odm_split_count.0, 1
  br i1 %tobool.not, label %while.cond.while.cond2_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.cond.while.cond2_crit_edge:                 ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %while.cond.while.cond2_crit_edge
  %pipe.pn14 = phi ptr [ %pipe.addr.0, %while.cond2.while.cond2_crit_edge ], [ %pipe, %while.cond.while.cond2_crit_edge ]
  %odm_split_count.1 = phi i32 [ %inc5, %while.cond2.while.cond2_crit_edge ], [ %odm_split_count.0, %while.cond.while.cond2_crit_edge ]
  %pipe.addr.0.in = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn14, i32 0, i32 12
  %1 = ptrtoint ptr %pipe.addr.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %pipe.addr.0 = load ptr, ptr %pipe.addr.0.in, align 8
  %tobool3.not = icmp eq ptr %pipe.addr.0, null
  %inc5 = add i32 %odm_split_count.1, 1
  br i1 %tobool3.not, label %while.end7, label %while.cond2.while.cond2_crit_edge

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond2

while.end7:                                       ; preds = %while.cond2
  call void @__sanitizer_cov_trace_pc() #20
  ret i32 %odm_split_count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @resource_build_scaling_params(ptr noundef %pipe_ctx) local_unnamed_addr #2 align 64 {
entry:
  %orthogonal_rotation.i = alloca i8, align 1
  %flip_vert_scan_dir.i = alloca i8, align 1
  %flip_horz_scan_dir.i = alloca i8, align 1
  %agg.tmp.i = alloca %struct.fixed31_32, align 8
  %agg.tmp3.i = alloca %struct.fixed31_32, align 8
  %agg.tmp11.i = alloca %struct.fixed31_32, align 8
  %agg.tmp19.i = alloca %struct.fixed31_32, align 8
  %tmp.i = alloca %struct.fixed31_32, align 8
  %tmp21.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_ctx, align 8
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %format = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %5)
  %6 = icmp ult i32 %5, 22
  br i1 %6, label %switch.lookup, label %entry.convert_pixel_format_to_dalsurface.exit_crit_edge

entry.convert_pixel_format_to_dalsurface.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %convert_pixel_format_to_dalsurface.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [22 x i32], ptr @switch.table.resource_build_scaling_params, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %convert_pixel_format_to_dalsurface.exit

convert_pixel_format_to_dalsurface.exit:          ; preds = %switch.lookup, %entry.convert_pixel_format_to_dalsurface.exit_crit_edge
  %dal_pixel_format.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 9, %entry.convert_pixel_format_to_dalsurface.exit_crit_edge ]
  %plane_res = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2
  %format4 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 9
  %8 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dal_pixel_format.0.i, ptr %format4, align 8
  %h_border_left = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %h_border_left, align 4
  %dst = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst, align 8
  %add = add i32 %12, %10
  store i32 %add, ptr %dst, align 8
  %v_border_top = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 7
  %13 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v_border_top, align 4
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream, align 4
  %y = getelementptr inbounds %struct.dc_stream_state, ptr %16, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %y, align 4
  %add8 = add i32 %18, %14
  store i32 %add8, ptr %y, align 4
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h_addressable, align 4
  %21 = load i32, ptr %h_border_left, align 4
  %add10 = add i32 %21, %20
  %h_border_right = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h_border_right, align 4
  %add11 = add i32 %add10, %23
  %24 = ptrtoint ptr %plane_res to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add11, ptr %plane_res, align 8
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 8
  %25 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v_addressable, align 4
  %27 = load i32, ptr %v_border_top, align 4
  %add15 = add i32 %27, %26
  %v_border_bottom = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 9
  %28 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v_border_bottom, align 4
  %add16 = add i32 %add15, %29
  %v_active = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %v_active to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add16, ptr %v_active, align 4
  %next_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 11
  %31 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next_odm_pipe, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %lor.lhs.false, label %convert_pixel_format_to_dalsurface.exit.while.cond.i.preheader_crit_edge

convert_pixel_format_to_dalsurface.exit.while.cond.i.preheader_crit_edge: ; preds = %convert_pixel_format_to_dalsurface.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.preheader

lor.lhs.false:                                    ; preds = %convert_pixel_format_to_dalsurface.exit
  %prev_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 12
  %33 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool19.not = icmp eq ptr %34, null
  br i1 %tobool19.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.while.cond.i.preheader_crit_edge

lor.lhs.false.while.cond.i.preheader_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.preheader

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.cond.i.preheader:                           ; preds = %lor.lhs.false.while.cond.i.preheader_crit_edge, %convert_pixel_format_to_dalsurface.exit.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %odm_split_count.0.i = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %pipe.pn.i = phi ptr [ %next_pipe.0.i, %while.cond.i.while.cond.i_crit_edge ], [ %pipe_ctx, %while.cond.i.preheader ]
  %next_pipe.0.in.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn.i, i32 0, i32 11
  %35 = ptrtoint ptr %next_pipe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %next_pipe.0.i = load ptr, ptr %next_pipe.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %next_pipe.0.i, null
  %inc.i = add i32 %odm_split_count.0.i, 1
  br i1 %tobool.not.i, label %while.cond.i.while.cond2.i_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.cond.i.while.cond2.i_crit_edge:             ; preds = %while.cond.i
  br label %while.cond2.i

while.cond2.i:                                    ; preds = %while.cond2.i.while.cond2.i_crit_edge, %while.cond.i.while.cond2.i_crit_edge
  %pipe.pn14.i = phi ptr [ %pipe.addr.0.i, %while.cond2.i.while.cond2.i_crit_edge ], [ %pipe_ctx, %while.cond.i.while.cond2.i_crit_edge ]
  %odm_split_count.1.i = phi i32 [ %inc5.i, %while.cond2.i.while.cond2.i_crit_edge ], [ %odm_split_count.0.i, %while.cond.i.while.cond2.i_crit_edge ]
  %pipe.addr.0.in.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn14.i, i32 0, i32 12
  %36 = ptrtoint ptr %pipe.addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %pipe.addr.0.i = load ptr, ptr %pipe.addr.0.in.i, align 8
  %tobool3.not.i = icmp eq ptr %pipe.addr.0.i, null
  %inc5.i = add i32 %odm_split_count.1.i, 1
  br i1 %tobool3.not.i, label %get_num_odm_splits.exit, label %while.cond2.i.while.cond2.i_crit_edge

while.cond2.i.while.cond2.i_crit_edge:            ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond2.i

get_num_odm_splits.exit:                          ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #20
  %div = sdiv i32 %add11, %inc5.i
  %37 = ptrtoint ptr %plane_res to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %plane_res, align 8
  br label %if.end

if.end:                                           ; preds = %get_num_odm_splits.exit, %lor.lhs.false.if.end_crit_edge
  %38 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pipe_ctx, align 8
  %40 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stream, align 4
  %clip_rect.i = getelementptr inbounds %struct.dc_plane_state, ptr %39, i32 0, i32 6
  %42 = ptrtoint ptr %clip_rect.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %surf_clip.sroa.0.0.copyload.i = load i32, ptr %clip_rect.i, align 8
  %surf_clip.sroa.8.0.clip_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %39, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %surf_clip.sroa.8.0.clip_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %surf_clip.sroa.8.0.copyload.i = load i32, ptr %surf_clip.sroa.8.0.clip_rect.sroa_idx.i, align 4
  %surf_clip.sroa.13.0.clip_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %39, i32 0, i32 6, i32 2
  %44 = ptrtoint ptr %surf_clip.sroa.13.0.clip_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %surf_clip.sroa.13.0.copyload.i = load i32, ptr %surf_clip.sroa.13.0.clip_rect.sroa_idx.i, align 8
  %surf_clip.sroa.17.0.clip_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %39, i32 0, i32 6, i32 3
  %45 = ptrtoint ptr %surf_clip.sroa.17.0.clip_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %surf_clip.sroa.17.0.copyload.i = load i32, ptr %surf_clip.sroa.17.0.clip_rect.sroa_idx.i, align 4
  %view_format.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 22
  %46 = ptrtoint ptr %view_format.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %view_format.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %if.end
  %odm_split_count.0.i.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i.i, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ]
  %pipe.pn.i.i.i = phi ptr [ %pipe_ctx, %if.end ], [ %next_pipe.0.i.i.i, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ]
  %next_pipe.0.in.i.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn.i.i.i, i32 0, i32 11
  %48 = ptrtoint ptr %next_pipe.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %next_pipe.0.i.i.i = load ptr, ptr %next_pipe.0.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %next_pipe.0.i.i.i, null
  %inc.i.i.i = add i32 %odm_split_count.0.i.i.i, 1
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.while.cond2.i.i.i_crit_edge, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i.i

while.cond.i.i.i.while.cond2.i.i.i_crit_edge:     ; preds = %while.cond.i.i.i
  br label %while.cond2.i.i.i

while.cond2.i.i.i:                                ; preds = %while.cond2.i.i.i.while.cond2.i.i.i_crit_edge, %while.cond.i.i.i.while.cond2.i.i.i_crit_edge
  %pipe.pn14.i.i.i = phi ptr [ %pipe.addr.0.i.i.i, %while.cond2.i.i.i.while.cond2.i.i.i_crit_edge ], [ %pipe_ctx, %while.cond.i.i.i.while.cond2.i.i.i_crit_edge ]
  %odm_split_count.1.i.i.i = phi i32 [ %inc5.i.i.i, %while.cond2.i.i.i.while.cond2.i.i.i_crit_edge ], [ %odm_split_count.0.i.i.i, %while.cond.i.i.i.while.cond2.i.i.i_crit_edge ]
  %pipe.addr.0.in.i.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn14.i.i.i, i32 0, i32 12
  %49 = ptrtoint ptr %pipe.addr.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %pipe.addr.0.i.i.i = load ptr, ptr %pipe.addr.0.in.i.i.i, align 8
  %tobool3.not.i.i.i = icmp eq ptr %pipe.addr.0.i.i.i, null
  %inc5.i.i.i = add i32 %odm_split_count.1.i.i.i, 1
  br i1 %tobool3.not.i.i.i, label %get_num_odm_splits.exit.i.i, label %while.cond2.i.i.i.while.cond2.i.i.i_crit_edge

while.cond2.i.i.i.while.cond2.i.i.i_crit_edge:    ; preds = %while.cond2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond2.i.i.i

get_num_odm_splits.exit.i.i:                      ; preds = %while.cond2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp.i = icmp eq i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %odm_split_count.1.i.i.i)
  %cmp.i.i = icmp eq i32 %odm_split_count.1.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %while.cond6.preheader.i.i

while.cond6.preheader.i.i:                        ; preds = %get_num_odm_splits.exit.i.i
  %split_pipe5.0.in26.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 12
  %50 = ptrtoint ptr %split_pipe5.0.in26.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %split_pipe5.027.i.i = load ptr, ptr %split_pipe5.0.in26.i.i, align 8
  %tobool7.not28.i.i = icmp eq ptr %split_pipe5.027.i.i, null
  br i1 %tobool7.not28.i.i, label %while.cond6.preheader.i.i.calculate_split_count_and_index.exit.i_crit_edge, label %while.cond6.preheader.i.i.while.body8.i.i_crit_edge

while.cond6.preheader.i.i.while.body8.i.i_crit_edge: ; preds = %while.cond6.preheader.i.i
  br label %while.body8.i.i

while.cond6.preheader.i.i.calculate_split_count_and_index.exit.i_crit_edge: ; preds = %while.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i

if.then.i.i:                                      ; preds = %get_num_odm_splits.exit.i.i
  %top_pipe.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 9
  %51 = ptrtoint ptr %top_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %top_pipe.i.i, align 4
  %other_pipe.0.in25.i.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 10
  %53 = ptrtoint ptr %other_pipe.0.in25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %other_pipe.026.i.i.i = load ptr, ptr %other_pipe.0.in25.i.i.i, align 8
  %tobool.not27.i.i.i = icmp eq ptr %other_pipe.026.i.i.i, null
  br i1 %tobool.not27.i.i.i, label %if.then.i.i.while.end.i.i.i_crit_edge, label %if.then.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %land.rhs.i.i.i

if.then.i.i.while.end.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.land.rhs.i.i.i_crit_edge
  %other_pipe.029.i.i.i = phi ptr [ %other_pipe.0.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %other_pipe.026.i.i.i, %if.then.i.i.land.rhs.i.i.i_crit_edge ]
  %mpc_split_count.028.i.i.i = phi i32 [ %inc.i23.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ 0, %if.then.i.i.land.rhs.i.i.i_crit_edge ]
  %54 = ptrtoint ptr %other_pipe.029.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %other_pipe.029.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %55, %39
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %land.rhs.i.i.i.while.end.i.i.i_crit_edge

land.rhs.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %inc.i23.i.i = add i32 %mpc_split_count.028.i.i.i, 1
  %other_pipe.0.in.i.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %other_pipe.029.i.i.i, i32 0, i32 10
  %56 = ptrtoint ptr %other_pipe.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %other_pipe.0.i.i.i = load ptr, ptr %other_pipe.0.in.i.i.i, align 8
  %tobool.not.i24.i.i = icmp eq ptr %other_pipe.0.i.i.i, null
  br i1 %tobool.not.i24.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %land.rhs.i.i.i.while.end.i.i.i_crit_edge, %if.then.i.i.while.end.i.i.i_crit_edge
  %mpc_split_count.0.lcssa.i.i.i = phi i32 [ 0, %if.then.i.i.while.end.i.i.i_crit_edge ], [ %mpc_split_count.028.i.i.i, %land.rhs.i.i.i.while.end.i.i.i_crit_edge ], [ %inc.i23.i.i, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %tobool4.not33.i.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not33.i.i.i, label %while.end.i.i.i.calculate_split_count_and_index.exit.i_crit_edge, label %while.end.i.i.i.land.rhs5.i.i.i_crit_edge

while.end.i.i.i.land.rhs5.i.i.i_crit_edge:        ; preds = %while.end.i.i.i
  br label %land.rhs5.i.i.i

while.end.i.i.i.calculate_split_count_and_index.exit.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i

land.rhs5.i.i.i:                                  ; preds = %while.body10.i.i.i.land.rhs5.i.i.i_crit_edge, %while.end.i.i.i.land.rhs5.i.i.i_crit_edge
  %other_pipe.135.i.i.i = phi ptr [ %other_pipe.1.i.i.i, %while.body10.i.i.i.land.rhs5.i.i.i_crit_edge ], [ %52, %while.end.i.i.i.land.rhs5.i.i.i_crit_edge ]
  %mpc_split_count.134.i.i.i = phi i32 [ %inc11.i.i.i, %while.body10.i.i.i.land.rhs5.i.i.i_crit_edge ], [ %mpc_split_count.0.lcssa.i.i.i, %while.end.i.i.i.land.rhs5.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %other_pipe.135.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %other_pipe.135.i.i.i, align 8
  %cmp8.i.i.i = icmp eq ptr %58, %39
  br i1 %cmp8.i.i.i, label %while.body10.i.i.i, label %land.rhs5.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge

land.rhs5.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge: ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_num_mpc_splits.exit.i.i

while.body10.i.i.i:                               ; preds = %land.rhs5.i.i.i
  %inc11.i.i.i = add i32 %mpc_split_count.134.i.i.i, 1
  %other_pipe.1.in.i.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %other_pipe.135.i.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %other_pipe.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %other_pipe.1.i.i.i = load ptr, ptr %other_pipe.1.in.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %other_pipe.1.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %while.body10.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge, label %while.body10.i.i.i.land.rhs5.i.i.i_crit_edge

while.body10.i.i.i.land.rhs5.i.i.i_crit_edge:     ; preds = %while.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs5.i.i.i

while.body10.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge: ; preds = %while.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_num_mpc_splits.exit.i.i

get_num_mpc_splits.exit.i.i:                      ; preds = %while.body10.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge, %land.rhs5.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge
  %mpc_split_count.1.lcssa.i.i.i = phi i32 [ %inc11.i.i.i, %while.body10.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge ], [ %mpc_split_count.134.i.i.i, %land.rhs5.i.i.i.get_num_mpc_splits.exit.i.i_crit_edge ]
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %get_num_mpc_splits.exit.i.i
  %split_idx.0.i = phi i32 [ 0, %get_num_mpc_splits.exit.i.i ], [ %inc.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %split_pipe.031.i.i = phi ptr [ %52, %get_num_mpc_splits.exit.i.i ], [ %63, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %60 = ptrtoint ptr %split_pipe.031.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %split_pipe.031.i.i, align 8
  %cmp3.i.i = icmp eq ptr %61, %39
  br i1 %cmp3.i.i, label %while.body.i.i, label %land.rhs.i.i.calculate_split_count_and_index.exit.i_crit_edge

land.rhs.i.i.calculate_split_count_and_index.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %inc.i.i = add i32 %split_idx.0.i, 1
  %top_pipe4.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %split_pipe.031.i.i, i32 0, i32 9
  %62 = ptrtoint ptr %top_pipe4.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %top_pipe4.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i, label %while.body.i.i.calculate_split_count_and_index.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i.i

while.body.i.i.calculate_split_count_and_index.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i

while.body8.i.i:                                  ; preds = %while.body8.i.i.while.body8.i.i_crit_edge, %while.cond6.preheader.i.i.while.body8.i.i_crit_edge
  %split_idx.1.i = phi i32 [ %inc9.i.i, %while.body8.i.i.while.body8.i.i_crit_edge ], [ 0, %while.cond6.preheader.i.i.while.body8.i.i_crit_edge ]
  %split_pipe5.029.i.i = phi ptr [ %split_pipe5.0.i.i, %while.body8.i.i.while.body8.i.i_crit_edge ], [ %split_pipe5.027.i.i, %while.cond6.preheader.i.i.while.body8.i.i_crit_edge ]
  %inc9.i.i = add i32 %split_idx.1.i, 1
  %split_pipe5.0.in.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %split_pipe5.029.i.i, i32 0, i32 12
  %64 = ptrtoint ptr %split_pipe5.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %split_pipe5.0.i.i = load ptr, ptr %split_pipe5.0.in.i.i, align 8
  %tobool7.not.i.i = icmp eq ptr %split_pipe5.0.i.i, null
  br i1 %tobool7.not.i.i, label %while.body8.i.i.calculate_split_count_and_index.exit.i_crit_edge, label %while.body8.i.i.while.body8.i.i_crit_edge

while.body8.i.i.while.body8.i.i_crit_edge:        ; preds = %while.body8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body8.i.i

while.body8.i.i.calculate_split_count_and_index.exit.i_crit_edge: ; preds = %while.body8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i

calculate_split_count_and_index.exit.i:           ; preds = %while.body8.i.i.calculate_split_count_and_index.exit.i_crit_edge, %while.body.i.i.calculate_split_count_and_index.exit.i_crit_edge, %land.rhs.i.i.calculate_split_count_and_index.exit.i_crit_edge, %while.end.i.i.i.calculate_split_count_and_index.exit.i_crit_edge, %while.cond6.preheader.i.i.calculate_split_count_and_index.exit.i_crit_edge
  %split_count.0.i = phi i32 [ %odm_split_count.1.i.i.i, %while.cond6.preheader.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ %mpc_split_count.0.lcssa.i.i.i, %while.end.i.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ %mpc_split_count.1.lcssa.i.i.i, %land.rhs.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ %mpc_split_count.1.lcssa.i.i.i, %while.body.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ %odm_split_count.1.i.i.i, %while.body8.i.i.calculate_split_count_and_index.exit.i_crit_edge ]
  %split_idx.2.i = phi i32 [ 0, %while.cond6.preheader.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ 0, %while.end.i.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ %inc.i.i, %while.body.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ %split_idx.0.i, %land.rhs.i.i.calculate_split_count_and_index.exit.i_crit_edge ], [ %inc9.i.i, %while.body8.i.i.calculate_split_count_and_index.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp4.i = icmp eq i32 %47, 2
  %spec.select420.i = select i1 %cmp4.i, i32 0, i32 %split_idx.2.i
  %prev_odm_pipe.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 12
  %65 = ptrtoint ptr %prev_odm_pipe.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev_odm_pipe.i, align 8
  %tobool.not.i447 = icmp eq ptr %66, null
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select420.i, i32 %split_count.0.i)
  %cmp5.i = icmp eq i32 %spec.select420.i, %split_count.0.i
  %or.cond.i = select i1 %tobool.not.i447, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %calculate_split_count_and_index.exit.i
  %dst.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 11
  %67 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dst.i, align 8
  %recout.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5
  %69 = ptrtoint ptr %recout.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %recout.i, align 4
  %src.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 10
  %70 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %surf_clip.sroa.0.0.copyload.i, i32 %71)
  %cmp10.i = icmp sgt i32 %surf_clip.sroa.0.0.copyload.i, %71
  br i1 %cmp10.i, label %if.then11.i, label %if.then6.i.if.end23.i_crit_edge

if.then6.i.if.end23.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i = sub i32 %surf_clip.sroa.0.0.copyload.i, %71
  %width.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 11, i32 2
  %72 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %width.i, align 8
  %mul.i = mul i32 %73, %sub.i
  %width17.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 10, i32 2
  %74 = ptrtoint ptr %width17.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %width17.i, align 8
  %div.i = sdiv i32 %mul.i, %75
  %add.i = add i32 %div.i, %68
  %76 = ptrtoint ptr %recout.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i, ptr %recout.i, align 4
  br label %if.end23.i

if.else.i:                                        ; preds = %calculate_split_count_and_index.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %recout21.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5
  %77 = ptrtoint ptr %recout21.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %recout21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then11.i, %if.then6.i.if.end23.i_crit_edge
  %src24.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 10
  %78 = ptrtoint ptr %src24.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %src24.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %surf_clip.sroa.0.0.copyload.i, i32 %79)
  %cmp27.i = icmp slt i32 %surf_clip.sroa.0.0.copyload.i, %79
  %sub32.neg.i = sub i32 %surf_clip.sroa.0.0.copyload.i, %79
  %sub34.i = select i1 %cmp27.i, i32 %sub32.neg.i, i32 0
  %surf_clip.sroa.13.0.i = add i32 %sub34.i, %surf_clip.sroa.13.0.copyload.i
  %dst37.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 11
  %width38.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 11, i32 2
  %80 = ptrtoint ptr %width38.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %width38.i, align 8
  %mul39.i = mul i32 %surf_clip.sroa.13.0.i, %81
  %width41.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 10, i32 2
  %82 = ptrtoint ptr %width41.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %width41.i, align 8
  %div42.i = sdiv i32 %mul39.i, %83
  %recout43.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5
  %width44.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 2
  %84 = ptrtoint ptr %width44.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div42.i, ptr %width44.i, align 4
  %85 = ptrtoint ptr %recout43.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %recout43.i, align 4
  %add49.i = add i32 %86, %div42.i
  %87 = ptrtoint ptr %dst37.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dst37.i, align 8
  %89 = load i32, ptr %width38.i, align 8
  %add54.i = add i32 %89, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %add49.i, i32 %add54.i)
  %cmp55.i = icmp sgt i32 %add49.i, %add54.i
  br i1 %cmp55.i, label %if.then56.i, label %if.end23.i.if.end67.i_crit_edge

if.end23.i.if.end67.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end67.i

if.then56.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub64.i = sub i32 %add54.i, %86
  %90 = ptrtoint ptr %width44.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub64.i, ptr %width44.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then56.i, %if.end23.i.if.end67.i_crit_edge
  %y.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 11, i32 1
  %91 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %y.i, align 4
  %y70.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 1
  %93 = ptrtoint ptr %y70.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %y70.i, align 4
  %y72.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 10, i32 1
  %94 = ptrtoint ptr %y72.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %y72.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %surf_clip.sroa.8.0.copyload.i, i32 %95)
  %cmp74.i = icmp sgt i32 %surf_clip.sroa.8.0.copyload.i, %95
  br i1 %cmp74.i, label %if.then75.i, label %if.else88.i

if.then75.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub79.i = sub i32 %surf_clip.sroa.8.0.copyload.i, %95
  %height.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 11, i32 3
  %96 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %height.i, align 4
  %mul81.i = mul i32 %97, %sub79.i
  %height83.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 10, i32 3
  %98 = ptrtoint ptr %height83.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height83.i, align 4
  %div84.i = sdiv i32 %mul81.i, %99
  %add87.i = add i32 %div84.i, %92
  %100 = ptrtoint ptr %y70.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add87.i, ptr %y70.i, align 4
  br label %if.end101.i

if.else88.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_cmp4(i32 %surf_clip.sroa.8.0.copyload.i, i32 %95)
  %cmp92.i = icmp slt i32 %surf_clip.sroa.8.0.copyload.i, %95
  br i1 %cmp92.i, label %if.then93.i, label %if.else88.i.if.end101.i_crit_edge

if.else88.i.if.end101.i_crit_edge:                ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end101.i

if.then93.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub97.neg.i = add i32 %surf_clip.sroa.17.0.copyload.i, %surf_clip.sroa.8.0.copyload.i
  %sub99.i = sub i32 %sub97.neg.i, %95
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then93.i, %if.else88.i.if.end101.i_crit_edge, %if.then75.i
  %surf_clip.sroa.17.0.i = phi i32 [ %surf_clip.sroa.17.0.copyload.i, %if.then75.i ], [ %sub99.i, %if.then93.i ], [ %surf_clip.sroa.17.0.copyload.i, %if.else88.i.if.end101.i_crit_edge ]
  %height104.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 11, i32 3
  %101 = ptrtoint ptr %height104.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height104.i, align 4
  %mul105.i = mul i32 %102, %surf_clip.sroa.17.0.i
  %height107.i = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 10, i32 3
  %103 = ptrtoint ptr %height107.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %height107.i, align 4
  %div108.i = sdiv i32 %mul105.i, %104
  %height110.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 3
  %105 = ptrtoint ptr %height110.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div108.i, ptr %height110.i, align 4
  %106 = ptrtoint ptr %y70.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %y70.i, align 4
  %add115.i = add i32 %107, %div108.i
  %108 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %y.i, align 4
  %110 = load i32, ptr %height104.i, align 4
  %add120.i = add i32 %110, %109
  call void @__sanitizer_cov_trace_cmp4(i32 %add115.i, i32 %add120.i)
  %cmp121.i = icmp sgt i32 %add115.i, %add120.i
  br i1 %cmp121.i, label %if.then122.i, label %if.end101.i.if.end133.i_crit_edge

if.end101.i.if.end133.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133.i

if.then122.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub130.i = sub i32 %add120.i, %107
  %111 = ptrtoint ptr %height110.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub130.i, ptr %height110.i, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then122.i, %if.end101.i.if.end133.i_crit_edge
  br i1 %cmp.i, label %do.body.i, label %if.else187.i

do.body.i:                                        ; preds = %if.end133.i
  %112 = ptrtoint ptr %height110.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %height110.i, align 4
  %114 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp138.not.i = icmp eq i32 %114, 0
  br i1 %cmp138.not.i, label %do.body.i.do.end183.i_crit_edge, label %land.rhs.i

do.body.i.do.end183.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end183.i

land.rhs.i:                                       ; preds = %do.body.i
  %.b408.i = load i1, ptr @calculate_recout.__already_done, align 1
  br i1 %.b408.i, label %land.rhs.i.if.then180.i_crit_edge, label %if.then148.i, !prof !85

land.rhs.i.if.then180.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then180.i

if.then148.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @calculate_recout.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 810, i32 noundef 9, ptr noundef null) #18
  br label %if.then180.i

if.then180.i:                                     ; preds = %if.then148.i, %land.rhs.i.if.then180.i_crit_edge
  tail call void @kgdb_breakpoint() #18
  br label %do.end183.i

do.end183.i:                                      ; preds = %if.then180.i, %do.body.i.do.end183.i_crit_edge
  %115 = ptrtoint ptr %height110.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %height110.i, align 4
  %div186.i = sdiv i32 %116, 2
  store i32 %div186.i, ptr %height110.i, align 4
  br label %calculate_recout.exit

if.else187.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %split_count.0.i)
  %tobool188.not.i = icmp eq i32 %split_count.0.i, 0
  br i1 %tobool188.not.i, label %if.else187.i.calculate_recout.exit_crit_edge, label %if.then189.i

if.else187.i.calculate_recout.exit_crit_edge:     ; preds = %if.else187.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_recout.exit

if.then189.i:                                     ; preds = %if.else187.i
  %tobool190.not.i = icmp ne ptr %32, null
  %tobool.not.not.i = xor i1 %tobool.not.i447, true
  %brmerge.i = select i1 %tobool190.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %if.else290.i, label %if.then193.i

if.then193.i:                                     ; preds = %if.then189.i
  %117 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %width44.i, align 4
  %add196.i = add i32 %split_count.0.i, 1
  %.frozen = freeze i32 %118
  %add196.i.frozen = freeze i32 %add196.i
  %div202.i = sdiv i32 %.frozen, %add196.i.frozen
  %119 = mul i32 %div202.i, %add196.i.frozen
  %rem197.i.decomposed = sub i32 %.frozen, %119
  %sub198.i = sub i32 %split_count.0.i, %rem197.i.decomposed
  %mul203.i = mul i32 %div202.i, %spec.select420.i
  %add206.i = add i32 %mul203.i, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select420.i, i32 %sub198.i)
  %cmp207.i = icmp sgt i32 %spec.select420.i, %sub198.i
  %120 = xor i32 %sub198.i, -1
  %sub210.i = add i32 %spec.select420.i, %120
  %add213.i = select i1 %cmp207.i, i32 %sub210.i, i32 0
  %storemerge.i = add i32 %add206.i, %add213.i
  %121 = ptrtoint ptr %recout43.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %storemerge.i, ptr %recout43.i, align 4
  %122 = ptrtoint ptr %view_format.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %view_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp218.not.i = icmp eq i32 %123, 2
  %124 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp222.i = icmp ne i32 %124, 0
  %or.cond421.i = select i1 %cmp218.not.i, i1 %cmp222.i, i1 false
  br i1 %or.cond421.i, label %land.rhs231.i, label %if.then193.i.do.end281.i_crit_edge

if.then193.i.do.end281.i_crit_edge:               ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end281.i

land.rhs231.i:                                    ; preds = %if.then193.i
  %.b405406.i = load i1, ptr @calculate_recout.__already_done.23, align 1
  br i1 %.b405406.i, label %land.rhs231.i.if.then278.i_crit_edge, label %if.then242.i, !prof !85

land.rhs231.i.if.then278.i_crit_edge:             ; preds = %land.rhs231.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then278.i

if.then242.i:                                     ; preds = %land.rhs231.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @calculate_recout.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 822, i32 noundef 9, ptr noundef null) #18
  br label %if.then278.i

if.then278.i:                                     ; preds = %if.then242.i, %land.rhs231.i.if.then278.i_crit_edge
  tail call void @kgdb_breakpoint() #18
  br label %do.end281.i

do.end281.i:                                      ; preds = %if.then278.i, %if.then193.i.do.end281.i_crit_edge
  %125 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %width44.i, align 4
  %div285.i = sdiv i32 %126, %add196.i
  %cond.i = zext i1 %cmp207.i to i32
  %add287.i = add i32 %div285.i, %cond.i
  store i32 %add287.i, ptr %width44.i, align 4
  br label %calculate_recout.exit

if.else290.i:                                     ; preds = %if.then189.i
  %127 = ptrtoint ptr %plane_res to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %plane_res, align 8
  br i1 %cmp5.i, label %if.then292.i, label %if.else309.i

if.then292.i:                                     ; preds = %if.else290.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul293.i = mul i32 %128, %split_count.0.i
  %129 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %width44.i, align 4
  %sub296.neg.i = sub i32 %86, %mul293.i
  %sub299.i = add i32 %sub296.neg.i, %130
  %131 = tail call i32 @llvm.smax.i32(i32 %sub299.i, i32 0) #18
  %132 = ptrtoint ptr %width44.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %width44.i, align 4
  %133 = ptrtoint ptr %recout43.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %recout43.i, align 4
  br label %calculate_recout.exit

if.else309.i:                                     ; preds = %if.else290.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub313.i = sub i32 %128, %86
  %134 = ptrtoint ptr %width44.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %sub313.i, ptr %width44.i, align 4
  br label %calculate_recout.exit

calculate_recout.exit:                            ; preds = %if.else309.i, %if.then292.i, %do.end281.i, %if.else187.i.calculate_recout.exit_crit_edge, %do.end183.i
  %135 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pipe_ctx, align 8
  %137 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stream, align 4
  %surf_src.sroa.5.0.src_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %136, i32 0, i32 4, i32 2
  %139 = ptrtoint ptr %surf_src.sroa.5.0.src_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %surf_src.sroa.5.0.copyload.i = load i32, ptr %surf_src.sroa.5.0.src_rect.sroa_idx.i, align 8
  %surf_src.sroa.9.0.src_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %136, i32 0, i32 4, i32 3
  %140 = ptrtoint ptr %surf_src.sroa.9.0.src_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %surf_src.sroa.9.0.copyload.i = load i32, ptr %surf_src.sroa.9.0.src_rect.sroa_idx.i, align 4
  %width.i449 = getelementptr inbounds %struct.dc_stream_state, ptr %138, i32 0, i32 10, i32 2
  %141 = ptrtoint ptr %width.i449 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %width.i449, align 8
  %height.i450 = getelementptr inbounds %struct.dc_stream_state, ptr %138, i32 0, i32 10, i32 3
  %143 = ptrtoint ptr %height.i450 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %height.i450, align 4
  %width4.i = getelementptr inbounds %struct.dc_stream_state, ptr %138, i32 0, i32 11, i32 2
  %145 = ptrtoint ptr %width4.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %width4.i, align 8
  %height6.i = getelementptr inbounds %struct.dc_stream_state, ptr %138, i32 0, i32 11, i32 3
  %147 = ptrtoint ptr %height6.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %height6.i, align 4
  %rotation.i = getelementptr inbounds %struct.dc_plane_state, ptr %136, i32 0, i32 23
  %149 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rotation.i, align 4
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %150, label %calculate_recout.exit.if.end.i_crit_edge [
    i32 1, label %calculate_recout.exit.do.body.i451_crit_edge
    i32 3, label %calculate_recout.exit.do.body.i451_crit_edge584
  ]

calculate_recout.exit.do.body.i451_crit_edge584:  ; preds = %calculate_recout.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i451

calculate_recout.exit.do.body.i451_crit_edge:     ; preds = %calculate_recout.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i451

calculate_recout.exit.if.end.i_crit_edge:         ; preds = %calculate_recout.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.body.i451:                                     ; preds = %calculate_recout.exit.do.body.i451_crit_edge, %calculate_recout.exit.do.body.i451_crit_edge584
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i451, %calculate_recout.exit.if.end.i_crit_edge
  %surf_src.sroa.5.0.i = phi i32 [ %surf_src.sroa.9.0.copyload.i, %do.body.i451 ], [ %surf_src.sroa.5.0.copyload.i, %calculate_recout.exit.if.end.i_crit_edge ]
  %surf_src.sroa.9.0.i = phi i32 [ %surf_src.sroa.5.0.copyload.i, %do.body.i451 ], [ %surf_src.sroa.9.0.copyload.i, %calculate_recout.exit.if.end.i_crit_edge ]
  %ratios.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #18
  %conv.i = sext i32 %surf_src.sroa.5.0.i to i64
  %width16.i = getelementptr inbounds %struct.dc_plane_state, ptr %136, i32 0, i32 5, i32 2
  %152 = ptrtoint ptr %width16.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %width16.i, align 8
  %conv17.i = sext i32 %153 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, i64 noundef %conv.i, i64 noundef %conv17.i) #18
  %154 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %tmp.i, align 8
  %156 = ptrtoint ptr %ratios.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %ratios.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #18
  %vert.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp21.i) #18
  %conv23.i = sext i32 %surf_src.sroa.9.0.i to i64
  %height25.i = getelementptr inbounds %struct.dc_plane_state, ptr %136, i32 0, i32 5, i32 3
  %157 = ptrtoint ptr %height25.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %height25.i, align 4
  %conv26.i = sext i32 %158 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp21.i, i64 noundef %conv23.i, i64 noundef %conv26.i) #18
  %159 = ptrtoint ptr %tmp21.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %tmp21.i, align 8
  %161 = ptrtoint ptr %vert.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %vert.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp21.i) #18
  %view_format.i452 = getelementptr inbounds %struct.dc_stream_state, ptr %138, i32 0, i32 22
  %162 = ptrtoint ptr %view_format.i452 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %view_format.i452, align 4
  %164 = zext i32 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %163, label %if.end.i.if.end45.i_crit_edge [
    i32 2, label %if.then29.i
    i32 3, label %if.end.i.if.end45.sink.split.i_crit_edge
  ]

if.end.i.if.end45.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45.sink.split.i

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45.i

if.then29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %165 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %ratios.i, align 8
  br label %if.end45.sink.split.i

if.end45.sink.split.i:                            ; preds = %if.then29.i, %if.end.i.if.end45.sink.split.i_crit_edge
  %.sink.i = phi i64 [ %166, %if.then29.i ], [ %160, %if.end.i.if.end45.sink.split.i_crit_edge ]
  %vert.sink.i = phi ptr [ %ratios.i, %if.then29.i ], [ %vert.i, %if.end.i.if.end45.sink.split.i_crit_edge ]
  %mul43.i = shl i64 %.sink.i, 1
  %167 = ptrtoint ptr %vert.sink.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %mul43.i, ptr %vert.sink.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45.sink.split.i, %if.end.i.if.end45.i_crit_edge
  %168 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %vert.i, align 8
  %conv51.i = sext i32 %144 to i64
  %mul52.i = mul i64 %169, %conv51.i
  %conv53.i = sext i32 %148 to i64
  %call.i = call i64 @div64_s64(i64 noundef %mul52.i, i64 noundef %conv53.i) #18
  %170 = ptrtoint ptr %vert.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %call.i, ptr %vert.i, align 8
  %171 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %ratios.i, align 8
  %conv64.i = sext i32 %142 to i64
  %mul65.i = mul i64 %172, %conv64.i
  %conv66.i = sext i32 %146 to i64
  %call67.i = call i64 @div64_s64(i64 noundef %mul65.i, i64 noundef %conv66.i) #18
  %horz_c.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 6, i32 2
  %173 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %call67.i, ptr %horz_c.i, align 8
  %vert_c.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 6, i32 3
  %174 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %vert.i, align 8
  %176 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %vert_c.i, align 8
  %177 = ptrtoint ptr %format4 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %format4, align 8
  %.off.i = add i32 %178, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then97.i, label %if.end45.i.calculate_scaling_ratios.exit_crit_edge

if.end45.i.calculate_scaling_ratios.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_scaling_ratios.exit

if.then97.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #20
  %div.i453 = sdiv i64 %call67.i, 2
  %179 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %div.i453, ptr %horz_c.i, align 8
  %div108.i454 = sdiv i64 %175, 2
  %180 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %div108.i454, ptr %vert_c.i, align 8
  br label %calculate_scaling_ratios.exit

calculate_scaling_ratios.exit:                    ; preds = %if.then97.i, %if.end45.i.calculate_scaling_ratios.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call67.i)
  %cmp.i.i455 = icmp slt i64 %call67.i, 0
  %181 = call i64 @llvm.abs.i64(i64 %call67.i, i1 false) #18
  %and.i.i = and i64 %181, -8192
  %sub57.i.i = sub i64 0, %and.i.i
  %arg.sroa.0.1.i.i = select i1 %cmp.i.i455, i64 %sub57.i.i, i64 %and.i.i
  %182 = ptrtoint ptr %ratios.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %arg.sroa.0.1.i.i, ptr %ratios.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %175)
  %cmp.i190.i = icmp slt i64 %175, 0
  %183 = call i64 @llvm.abs.i64(i64 %175, i1 false) #18
  %and.i191.i = and i64 %183, -8192
  %sub57.i192.i = sub i64 0, %and.i191.i
  %arg.sroa.0.1.i193.i = select i1 %cmp.i190.i, i64 %sub57.i192.i, i64 %and.i191.i
  %184 = ptrtoint ptr %vert.i to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %arg.sroa.0.1.i193.i, ptr %vert.i, align 8
  %185 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %.unpack188.i = load i64, ptr %horz_c.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack188.i)
  %cmp.i194.i = icmp slt i64 %.unpack188.i, 0
  %186 = call i64 @llvm.abs.i64(i64 %.unpack188.i, i1 false) #18
  %and.i195.i = and i64 %186, -8192
  %sub57.i196.i = sub i64 0, %and.i195.i
  %arg.sroa.0.1.i197.i = select i1 %cmp.i194.i, i64 %sub57.i196.i, i64 %and.i195.i
  %187 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %arg.sroa.0.1.i197.i, ptr %horz_c.i, align 8
  %188 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %.unpack189.i = load i64, ptr %vert_c.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack189.i)
  %cmp.i198.i = icmp slt i64 %.unpack189.i, 0
  %189 = call i64 @llvm.abs.i64(i64 %.unpack189.i, i1 false) #18
  %and.i199.i = and i64 %189, -8192
  %sub57.i200.i = sub i64 0, %and.i199.i
  %arg.sroa.0.1.i201.i = select i1 %cmp.i198.i, i64 %sub57.i200.i, i64 %and.i199.i
  %190 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %arg.sroa.0.1.i201.i, ptr %vert_c.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp3.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp11.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp19.i)
  %191 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %width44.i, align 4
  %193 = insertvalue [1 x i64] undef, i64 %arg.sroa.0.1.i.i, 0
  %conv1.i.i.i = zext i32 %192 to i64
  %shl.i.i.i = shl nuw i64 %conv1.i.i.i, 32
  %.fca.0.insert.i.i = insertvalue [1 x i64] poison, i64 %shl.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i, [1 x i64] %193, [1 x i64] %.fca.0.insert.i.i) #18
  %194 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %.fca.0.load58.i = load i64, ptr %agg.tmp.i, align 8
  %195 = call i64 @llvm.abs.i64(i64 %.fca.0.load58.i, i1 false) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808512, i64 %195)
  %cmp5.i.i = icmp ugt i64 %195, 9223372032559808512
  br i1 %cmp5.i.i, label %land.rhs.i.i458, label %calculate_scaling_ratios.exit.dc_fixpt_ceil.exit.i_crit_edge

calculate_scaling_ratios.exit.dc_fixpt_ceil.exit.i_crit_edge: ; preds = %calculate_scaling_ratios.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_ceil.exit.i

land.rhs.i.i458:                                  ; preds = %calculate_scaling_ratios.exit
  %.b63.i.i = load i1, ptr @dc_fixpt_ceil.__already_done, align 1
  br i1 %.b63.i.i, label %land.rhs.i.i458.if.then43.i.i_crit_edge, label %if.then.i.i459, !prof !85

land.rhs.i.i458.if.then43.i.i_crit_edge:          ; preds = %land.rhs.i.i458
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then43.i.i

if.then.i.i459:                                   ; preds = %land.rhs.i.i458
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_ceil.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 487, i32 noundef 9, ptr noundef null) #18
  br label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.then.i.i459, %land.rhs.i.i458.if.then43.i.i_crit_edge
  call void @kgdb_breakpoint() #18
  br label %dc_fixpt_ceil.exit.i

dc_fixpt_ceil.exit.i:                             ; preds = %if.then43.i.i, %calculate_scaling_ratios.exit.dc_fixpt_ceil.exit.i_crit_edge
  %add.i.i = add nuw i64 %195, 4294967295
  %shr.i.i = lshr i64 %add.i.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %sub52.i.i = sub i32 0, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load58.i)
  %cmp4865.i.i = icmp slt i64 %.fca.0.load58.i, 0
  %retval.0.i.i = select i1 %cmp4865.i.i, i32 %sub52.i.i, i32 %conv.i.i
  %width2.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 2
  %196 = ptrtoint ptr %width2.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %retval.0.i.i, ptr %width2.i, align 4
  %197 = ptrtoint ptr %height110.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %height110.i, align 4
  %199 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %.unpack81.i = load i64, ptr %vert.i, align 8
  %200 = insertvalue [1 x i64] undef, i64 %.unpack81.i, 0
  %conv1.i.i84.i = zext i32 %198 to i64
  %shl.i.i85.i = shl nuw i64 %conv1.i.i84.i, 32
  %.fca.0.insert.i86.i = insertvalue [1 x i64] poison, i64 %shl.i.i85.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp3.i, [1 x i64] %200, [1 x i64] %.fca.0.insert.i86.i) #18
  %201 = ptrtoint ptr %agg.tmp3.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %.fca.0.load55.i = load i64, ptr %agg.tmp3.i, align 8
  %202 = call i64 @llvm.abs.i64(i64 %.fca.0.load55.i, i1 false) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808512, i64 %202)
  %cmp5.i87.i = icmp ugt i64 %202, 9223372032559808512
  br i1 %cmp5.i87.i, label %land.rhs.i89.i, label %dc_fixpt_ceil.exit.i.dc_fixpt_ceil.exit98.i_crit_edge

dc_fixpt_ceil.exit.i.dc_fixpt_ceil.exit98.i_crit_edge: ; preds = %dc_fixpt_ceil.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_ceil.exit98.i

land.rhs.i89.i:                                   ; preds = %dc_fixpt_ceil.exit.i
  %.b63.i88.i = load i1, ptr @dc_fixpt_ceil.__already_done, align 1
  br i1 %.b63.i88.i, label %land.rhs.i89.i.if.then43.i91.i_crit_edge, label %if.then.i90.i, !prof !85

land.rhs.i89.i.if.then43.i91.i_crit_edge:         ; preds = %land.rhs.i89.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then43.i91.i

if.then.i90.i:                                    ; preds = %land.rhs.i89.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_ceil.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 487, i32 noundef 9, ptr noundef null) #18
  br label %if.then43.i91.i

if.then43.i91.i:                                  ; preds = %if.then.i90.i, %land.rhs.i89.i.if.then43.i91.i_crit_edge
  call void @kgdb_breakpoint() #18
  br label %dc_fixpt_ceil.exit98.i

dc_fixpt_ceil.exit98.i:                           ; preds = %if.then43.i91.i, %dc_fixpt_ceil.exit.i.dc_fixpt_ceil.exit98.i_crit_edge
  %add.i92.i = add nuw i64 %202, 4294967295
  %shr.i93.i = lshr i64 %add.i92.i, 32
  %conv.i94.i = trunc i64 %shr.i93.i to i32
  %sub52.i95.i = sub i32 0, %conv.i94.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load55.i)
  %cmp4865.i96.i = icmp slt i64 %.fca.0.load55.i, 0
  %retval.0.i97.i = select i1 %cmp4865.i96.i, i32 %sub52.i95.i, i32 %conv.i94.i
  %height10.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 3
  %203 = ptrtoint ptr %height10.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %retval.0.i97.i, ptr %height10.i, align 4
  %204 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %width44.i, align 4
  %206 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %.unpack82.i = load i64, ptr %horz_c.i, align 8
  %207 = insertvalue [1 x i64] undef, i64 %.unpack82.i, 0
  %conv1.i.i99.i = zext i32 %205 to i64
  %shl.i.i100.i = shl nuw i64 %conv1.i.i99.i, 32
  %.fca.0.insert.i101.i = insertvalue [1 x i64] poison, i64 %shl.i.i100.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp11.i, [1 x i64] %207, [1 x i64] %.fca.0.insert.i101.i) #18
  %208 = ptrtoint ptr %agg.tmp11.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %.fca.0.load52.i = load i64, ptr %agg.tmp11.i, align 8
  %209 = call i64 @llvm.abs.i64(i64 %.fca.0.load52.i, i1 false) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808512, i64 %209)
  %cmp5.i102.i = icmp ugt i64 %209, 9223372032559808512
  br i1 %cmp5.i102.i, label %land.rhs.i104.i, label %dc_fixpt_ceil.exit98.i.dc_fixpt_ceil.exit113.i_crit_edge

dc_fixpt_ceil.exit98.i.dc_fixpt_ceil.exit113.i_crit_edge: ; preds = %dc_fixpt_ceil.exit98.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_ceil.exit113.i

land.rhs.i104.i:                                  ; preds = %dc_fixpt_ceil.exit98.i
  %.b63.i103.i = load i1, ptr @dc_fixpt_ceil.__already_done, align 1
  br i1 %.b63.i103.i, label %land.rhs.i104.i.if.then43.i106.i_crit_edge, label %if.then.i105.i, !prof !85

land.rhs.i104.i.if.then43.i106.i_crit_edge:       ; preds = %land.rhs.i104.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then43.i106.i

if.then.i105.i:                                   ; preds = %land.rhs.i104.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_ceil.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 487, i32 noundef 9, ptr noundef null) #18
  br label %if.then43.i106.i

if.then43.i106.i:                                 ; preds = %if.then.i105.i, %land.rhs.i104.i.if.then43.i106.i_crit_edge
  call void @kgdb_breakpoint() #18
  br label %dc_fixpt_ceil.exit113.i

dc_fixpt_ceil.exit113.i:                          ; preds = %if.then43.i106.i, %dc_fixpt_ceil.exit98.i.dc_fixpt_ceil.exit113.i_crit_edge
  %add.i107.i = add nuw i64 %209, 4294967295
  %shr.i108.i = lshr i64 %add.i107.i, 32
  %conv.i109.i = trunc i64 %shr.i108.i to i32
  %sub52.i110.i = sub i32 0, %conv.i109.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load52.i)
  %cmp4865.i111.i = icmp slt i64 %.fca.0.load52.i, 0
  %retval.0.i112.i = select i1 %cmp4865.i111.i, i32 %sub52.i110.i, i32 %conv.i109.i
  %width18.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 4, i32 2
  %210 = ptrtoint ptr %width18.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %retval.0.i112.i, ptr %width18.i, align 4
  %211 = ptrtoint ptr %height110.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %height110.i, align 4
  %213 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %.unpack83.i = load i64, ptr %vert_c.i, align 8
  %214 = insertvalue [1 x i64] undef, i64 %.unpack83.i, 0
  %conv1.i.i114.i = zext i32 %212 to i64
  %shl.i.i115.i = shl nuw i64 %conv1.i.i114.i, 32
  %.fca.0.insert.i116.i = insertvalue [1 x i64] poison, i64 %shl.i.i115.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp19.i, [1 x i64] %214, [1 x i64] %.fca.0.insert.i116.i) #18
  %215 = ptrtoint ptr %agg.tmp19.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %.fca.0.load.i = load i64, ptr %agg.tmp19.i, align 8
  %216 = call i64 @llvm.abs.i64(i64 %.fca.0.load.i, i1 false) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808512, i64 %216)
  %cmp5.i117.i = icmp ugt i64 %216, 9223372032559808512
  br i1 %cmp5.i117.i, label %land.rhs.i119.i, label %dc_fixpt_ceil.exit113.i.dc_fixpt_ceil.exit128.i_crit_edge

dc_fixpt_ceil.exit113.i.dc_fixpt_ceil.exit128.i_crit_edge: ; preds = %dc_fixpt_ceil.exit113.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_ceil.exit128.i

land.rhs.i119.i:                                  ; preds = %dc_fixpt_ceil.exit113.i
  %.b63.i118.i = load i1, ptr @dc_fixpt_ceil.__already_done, align 1
  br i1 %.b63.i118.i, label %land.rhs.i119.i.if.then43.i121.i_crit_edge, label %if.then.i120.i, !prof !85

land.rhs.i119.i.if.then43.i121.i_crit_edge:       ; preds = %land.rhs.i119.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then43.i121.i

if.then.i120.i:                                   ; preds = %land.rhs.i119.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_ceil.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 487, i32 noundef 9, ptr noundef null) #18
  br label %if.then43.i121.i

if.then43.i121.i:                                 ; preds = %if.then.i120.i, %land.rhs.i119.i.if.then43.i121.i_crit_edge
  call void @kgdb_breakpoint() #18
  br label %dc_fixpt_ceil.exit128.i

dc_fixpt_ceil.exit128.i:                          ; preds = %if.then43.i121.i, %dc_fixpt_ceil.exit113.i.dc_fixpt_ceil.exit128.i_crit_edge
  %add.i122.i = add nuw i64 %216, 4294967295
  %shr.i123.i = lshr i64 %add.i122.i, 32
  %conv.i124.i = trunc i64 %shr.i123.i to i32
  %sub52.i125.i = sub i32 0, %conv.i124.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load.i)
  %cmp4865.i126.i = icmp slt i64 %.fca.0.load.i, 0
  %retval.0.i127.i = select i1 %cmp4865.i126.i, i32 %sub52.i125.i, i32 %conv.i124.i
  %height27.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 4, i32 3
  %217 = ptrtoint ptr %height27.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %retval.0.i127.i, ptr %height27.i, align 4
  %218 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pipe_ctx, align 8
  %rotation.i464 = getelementptr inbounds %struct.dc_plane_state, ptr %219, i32 0, i32 23
  %220 = ptrtoint ptr %rotation.i464 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rotation.i464, align 4
  %222 = zext i32 %221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %221, label %calculate_viewport_size.exitthread-pre-split [
    i32 1, label %dc_fixpt_ceil.exit128.i.do.body.i465_crit_edge
    i32 3, label %dc_fixpt_ceil.exit128.i.do.body.i465_crit_edge585
  ]

dc_fixpt_ceil.exit128.i.do.body.i465_crit_edge585: ; preds = %dc_fixpt_ceil.exit128.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i465

dc_fixpt_ceil.exit128.i.do.body.i465_crit_edge:   ; preds = %dc_fixpt_ceil.exit128.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i465

do.body.i465:                                     ; preds = %dc_fixpt_ceil.exit128.i.do.body.i465_crit_edge, %dc_fixpt_ceil.exit128.i.do.body.i465_crit_edge585
  %223 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %width2.i, align 4
  %225 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %height10.i, align 4
  store i32 %226, ptr %width2.i, align 4
  store i32 %224, ptr %height10.i, align 4
  %227 = ptrtoint ptr %width18.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %width18.i, align 4
  store i32 %retval.0.i127.i, ptr %width18.i, align 4
  %229 = ptrtoint ptr %height27.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %height27.i, align 4
  br label %calculate_viewport_size.exit

calculate_viewport_size.exitthread-pre-split:     ; preds = %dc_fixpt_ceil.exit128.i
  call void @__sanitizer_cov_trace_pc() #20
  %230 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %.pr = load i32, ptr %height10.i, align 4
  br label %calculate_viewport_size.exit

calculate_viewport_size.exit:                     ; preds = %calculate_viewport_size.exitthread-pre-split, %do.body.i465
  %231 = phi i32 [ %.pr, %calculate_viewport_size.exitthread-pre-split ], [ %224, %do.body.i465 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp3.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp11.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp19.i)
  %viewport = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %231)
  %cmp = icmp slt i32 %231, 1
  br i1 %cmp, label %calculate_viewport_size.exit.cleanup_crit_edge, label %lor.lhs.false27

calculate_viewport_size.exit.cleanup_crit_edge:   ; preds = %calculate_viewport_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false27:                                  ; preds = %calculate_viewport_size.exit
  %232 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %width2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %233)
  %cmp31 = icmp slt i32 %233, 1
  br i1 %cmp31, label %lor.lhs.false27.cleanup_crit_edge, label %if.end33

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false27
  %ctx = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 37
  %234 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ctx, align 8
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %235, i32 0, i32 6
  %236 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %dce_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %237)
  %cmp34.inv = icmp slt i32 %237, 8
  %spec.select = select i1 %cmp34.inv, i32 4, i32 8
  %238 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 10, i32 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %spec.select, ptr %238, align 4
  %per_pixel_alpha = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 26
  %240 = ptrtoint ptr %per_pixel_alpha to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %per_pixel_alpha, align 1, !range !84
  %lb_params46 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 10
  %242 = ptrtoint ptr %lb_params46 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %lb_params46, align 4
  %xfm = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 4
  %243 = ptrtoint ptr %xfm to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %xfm, align 4
  %cmp48.not = icmp eq ptr %244, null
  br i1 %cmp48.not, label %if.end58.thread, label %if.end58

if.end58:                                         ; preds = %if.end33
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 8
  %transform_get_optimal_number_of_taps = getelementptr inbounds %struct.transform_funcs, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %transform_get_optimal_number_of_taps to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %transform_get_optimal_number_of_taps, align 4
  %scaling_quality = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3
  %call56 = call zeroext i1 %248(ptr noundef nonnull %244, ptr noundef %plane_res, ptr noundef %scaling_quality) #18
  %dpp = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 5
  %249 = ptrtoint ptr %dpp to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dpp, align 8
  %cmp60.not = icmp eq ptr %250, null
  br i1 %cmp60.not, label %if.end72, label %if.end58.if.then61_crit_edge

if.end58.if.then61_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then61

if.end58.thread:                                  ; preds = %if.end33
  %dpp564 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 5
  %251 = ptrtoint ptr %dpp564 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dpp564, align 8
  %cmp60.not565 = icmp eq ptr %252, null
  br i1 %cmp60.not565, label %if.end58.thread.if.then74_crit_edge, label %if.end58.thread.if.then61_crit_edge

if.end58.thread.if.then61_crit_edge:              ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then61

if.end58.thread.if.then74_crit_edge:              ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then74

if.then61:                                        ; preds = %if.end58.thread.if.then61_crit_edge, %if.end58.if.then61_crit_edge
  %253 = phi ptr [ %252, %if.end58.thread.if.then61_crit_edge ], [ %250, %if.end58.if.then61_crit_edge ]
  %dpp568 = phi ptr [ %dpp564, %if.end58.thread.if.then61_crit_edge ], [ %dpp, %if.end58.if.then61_crit_edge ]
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 8
  %dpp_get_optimal_number_of_taps = getelementptr inbounds %struct.dpp_funcs, ptr %255, i32 0, i32 8
  %256 = ptrtoint ptr %dpp_get_optimal_number_of_taps to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dpp_get_optimal_number_of_taps, align 4
  %scaling_quality69 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3
  %call70 = call zeroext i1 %257(ptr noundef nonnull %253, ptr noundef %plane_res, ptr noundef %scaling_quality69) #18
  br i1 %call70, label %if.then61.if.then113_crit_edge, label %if.then61.if.then74_crit_edge

if.then61.if.then74_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then74

if.then61.if.then113_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then113

if.end72:                                         ; preds = %if.end58
  br i1 %call56, label %if.end72.if.then113_crit_edge, label %if.end72.if.then74_crit_edge

if.end72.if.then74_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then74

if.end72.if.then113_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then113

if.then74:                                        ; preds = %if.end72.if.then74_crit_edge, %if.then61.if.then74_crit_edge, %if.end58.thread.if.then74_crit_edge
  %dpp567 = phi ptr [ %dpp568, %if.then61.if.then74_crit_edge ], [ %dpp, %if.end72.if.then74_crit_edge ], [ %dpp564, %if.end58.thread.if.then74_crit_edge ]
  %258 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 2, ptr %238, align 4
  %259 = ptrtoint ptr %xfm to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %xfm, align 4
  %cmp81.not = icmp eq ptr %260, null
  br i1 %cmp81.not, label %if.end94.thread, label %if.end94

if.end94:                                         ; preds = %if.then74
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 8
  %transform_get_optimal_number_of_taps86 = getelementptr inbounds %struct.transform_funcs, ptr %262, i32 0, i32 3
  %263 = ptrtoint ptr %transform_get_optimal_number_of_taps86 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %transform_get_optimal_number_of_taps86, align 4
  %scaling_quality91 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3
  %call92 = call zeroext i1 %264(ptr noundef nonnull %260, ptr noundef %plane_res, ptr noundef %scaling_quality91) #18
  %265 = ptrtoint ptr %dpp567 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dpp567, align 8
  %cmp97.not = icmp eq ptr %266, null
  br i1 %cmp97.not, label %if.end111, label %if.end94.if.then98_crit_edge

if.end94.if.then98_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then98

if.end94.thread:                                  ; preds = %if.then74
  %267 = ptrtoint ptr %dpp567 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dpp567, align 8
  %cmp97.not573 = icmp eq ptr %268, null
  br i1 %cmp97.not573, label %if.end94.thread.if.end114_crit_edge, label %if.end94.thread.if.then98_crit_edge

if.end94.thread.if.then98_crit_edge:              ; preds = %if.end94.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then98

if.end94.thread.if.end114_crit_edge:              ; preds = %if.end94.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end114

if.then98:                                        ; preds = %if.end94.thread.if.then98_crit_edge, %if.end94.if.then98_crit_edge
  %269 = phi ptr [ %268, %if.end94.thread.if.then98_crit_edge ], [ %266, %if.end94.if.then98_crit_edge ]
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 8
  %dpp_get_optimal_number_of_taps102 = getelementptr inbounds %struct.dpp_funcs, ptr %271, i32 0, i32 8
  %272 = ptrtoint ptr %dpp_get_optimal_number_of_taps102 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dpp_get_optimal_number_of_taps102, align 4
  %scaling_quality107 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3
  %call108 = call zeroext i1 %273(ptr noundef nonnull %269, ptr noundef %plane_res, ptr noundef %scaling_quality107) #18
  br i1 %call108, label %if.then98.if.then113_crit_edge, label %if.then98.if.end114_crit_edge

if.then98.if.end114_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end114

if.then98.if.then113_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then113

if.end111:                                        ; preds = %if.end94
  br i1 %call92, label %if.end111.if.then113_crit_edge, label %if.end111.if.end114_crit_edge

if.end111.if.end114_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end114

if.end111.if.then113_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then113

if.then113:                                       ; preds = %if.end111.if.then113_crit_edge, %if.then98.if.then113_crit_edge, %if.end72.if.then113_crit_edge, %if.then61.if.then113_crit_edge
  %274 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pipe_ctx, align 8
  %276 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %stream, align 4
  %src_rect.i = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 4
  %278 = ptrtoint ptr %src_rect.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %src.sroa.0.0.copyload.i = load i32, ptr %src_rect.i, align 8
  %src.sroa.7.0.src_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 4, i32 1
  %279 = ptrtoint ptr %src.sroa.7.0.src_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %src.sroa.7.0.copyload.i = load i32, ptr %src.sroa.7.0.src_rect.sroa_idx.i, align 4
  %src.sroa.11.0.src_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 4, i32 2
  %280 = ptrtoint ptr %src.sroa.11.0.src_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %src.sroa.11.0.copyload.i = load i32, ptr %src.sroa.11.0.src_rect.sroa_idx.i, align 8
  %src.sroa.16.0.src_rect.sroa_idx.i = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 4, i32 3
  %281 = ptrtoint ptr %src.sroa.16.0.src_rect.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %src.sroa.16.0.copyload.i = load i32, ptr %src.sroa.16.0.src_rect.sroa_idx.i, align 4
  %282 = ptrtoint ptr %format4 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %format4, align 8
  %284 = add i32 %283, -7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %orthogonal_rotation.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flip_vert_scan_dir.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flip_horz_scan_dir.i)
  br label %while.cond.i.i.i475

while.cond.i.i.i475:                              ; preds = %while.cond.i.i.i475.while.cond.i.i.i475_crit_edge, %if.then113
  %odm_split_count.0.i.i.i469 = phi i32 [ 0, %if.then113 ], [ %inc.i.i.i474, %while.cond.i.i.i475.while.cond.i.i.i475_crit_edge ]
  %pipe.pn.i.i.i470 = phi ptr [ %pipe_ctx, %if.then113 ], [ %next_pipe.0.i.i.i472, %while.cond.i.i.i475.while.cond.i.i.i475_crit_edge ]
  %next_pipe.0.in.i.i.i471 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn.i.i.i470, i32 0, i32 11
  %285 = ptrtoint ptr %next_pipe.0.in.i.i.i471 to i32
  call void @__asan_load4_noabort(i32 %285)
  %next_pipe.0.i.i.i472 = load ptr, ptr %next_pipe.0.in.i.i.i471, align 4
  %tobool.not.i.i.i473 = icmp eq ptr %next_pipe.0.i.i.i472, null
  %inc.i.i.i474 = add i32 %odm_split_count.0.i.i.i469, 1
  br i1 %tobool.not.i.i.i473, label %while.cond.i.i.i475.while.cond2.i.i.i484_crit_edge, label %while.cond.i.i.i475.while.cond.i.i.i475_crit_edge

while.cond.i.i.i475.while.cond.i.i.i475_crit_edge: ; preds = %while.cond.i.i.i475
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i.i475

while.cond.i.i.i475.while.cond2.i.i.i484_crit_edge: ; preds = %while.cond.i.i.i475
  br label %while.cond2.i.i.i484

while.cond2.i.i.i484:                             ; preds = %while.cond2.i.i.i484.while.cond2.i.i.i484_crit_edge, %while.cond.i.i.i475.while.cond2.i.i.i484_crit_edge
  %pipe.pn14.i.i.i478 = phi ptr [ %pipe.addr.0.i.i.i481, %while.cond2.i.i.i484.while.cond2.i.i.i484_crit_edge ], [ %pipe_ctx, %while.cond.i.i.i475.while.cond2.i.i.i484_crit_edge ]
  %odm_split_count.1.i.i.i479 = phi i32 [ %inc5.i.i.i483, %while.cond2.i.i.i484.while.cond2.i.i.i484_crit_edge ], [ %odm_split_count.0.i.i.i469, %while.cond.i.i.i475.while.cond2.i.i.i484_crit_edge ]
  %pipe.addr.0.in.i.i.i480 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe.pn14.i.i.i478, i32 0, i32 12
  %286 = ptrtoint ptr %pipe.addr.0.in.i.i.i480 to i32
  call void @__asan_load4_noabort(i32 %286)
  %pipe.addr.0.i.i.i481 = load ptr, ptr %pipe.addr.0.in.i.i.i480, align 8
  %tobool3.not.i.i.i482 = icmp eq ptr %pipe.addr.0.i.i.i481, null
  %inc5.i.i.i483 = add i32 %odm_split_count.1.i.i.i479, 1
  br i1 %tobool3.not.i.i.i482, label %get_num_odm_splits.exit.i.i486, label %while.cond2.i.i.i484.while.cond2.i.i.i484_crit_edge

while.cond2.i.i.i484.while.cond2.i.i.i484_crit_edge: ; preds = %while.cond2.i.i.i484
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond2.i.i.i484

get_num_odm_splits.exit.i.i486:                   ; preds = %while.cond2.i.i.i484
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %284)
  %287 = icmp ult i32 %284, 2
  %288 = select i1 %287, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %odm_split_count.1.i.i.i479)
  %cmp.i.i485 = icmp eq i32 %odm_split_count.1.i.i.i479, 0
  br i1 %cmp.i.i485, label %if.then.i.i495, label %while.cond6.preheader.i.i490

while.cond6.preheader.i.i490:                     ; preds = %get_num_odm_splits.exit.i.i486
  %289 = ptrtoint ptr %prev_odm_pipe.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %split_pipe5.027.i.i488 = load ptr, ptr %prev_odm_pipe.i, align 8
  %tobool7.not28.i.i489 = icmp eq ptr %split_pipe5.027.i.i488, null
  br i1 %tobool7.not28.i.i489, label %while.cond6.preheader.i.i490.calculate_split_count_and_index.exit.i539_crit_edge, label %while.cond6.preheader.i.i490.while.body8.i.i527_crit_edge

while.cond6.preheader.i.i490.while.body8.i.i527_crit_edge: ; preds = %while.cond6.preheader.i.i490
  br label %while.body8.i.i527

while.cond6.preheader.i.i490.calculate_split_count_and_index.exit.i539_crit_edge: ; preds = %while.cond6.preheader.i.i490
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i539

if.then.i.i495:                                   ; preds = %get_num_odm_splits.exit.i.i486
  %top_pipe.i.i491 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 9
  %290 = ptrtoint ptr %top_pipe.i.i491 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %top_pipe.i.i491, align 4
  %other_pipe.0.in25.i.i.i492 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 10
  %292 = ptrtoint ptr %other_pipe.0.in25.i.i.i492 to i32
  call void @__asan_load4_noabort(i32 %292)
  %other_pipe.026.i.i.i493 = load ptr, ptr %other_pipe.0.in25.i.i.i492, align 8
  %tobool.not27.i.i.i494 = icmp eq ptr %other_pipe.026.i.i.i493, null
  br i1 %tobool.not27.i.i.i494, label %if.then.i.i495.while.end.i.i.i504_crit_edge, label %if.then.i.i495.land.rhs.i.i.i498_crit_edge

if.then.i.i495.land.rhs.i.i.i498_crit_edge:       ; preds = %if.then.i.i495
  br label %land.rhs.i.i.i498

if.then.i.i495.while.end.i.i.i504_crit_edge:      ; preds = %if.then.i.i495
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i.i504

land.rhs.i.i.i498:                                ; preds = %while.body.i.i.i502.land.rhs.i.i.i498_crit_edge, %if.then.i.i495.land.rhs.i.i.i498_crit_edge
  %other_pipe.029.i.i.i496 = phi ptr [ %other_pipe.0.i.i.i500, %while.body.i.i.i502.land.rhs.i.i.i498_crit_edge ], [ %other_pipe.026.i.i.i493, %if.then.i.i495.land.rhs.i.i.i498_crit_edge ]
  %293 = ptrtoint ptr %other_pipe.029.i.i.i496 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %other_pipe.029.i.i.i496, align 8
  %cmp.i.i.i497 = icmp eq ptr %294, %275
  br i1 %cmp.i.i.i497, label %while.body.i.i.i502, label %land.rhs.i.i.i498.while.end.i.i.i504_crit_edge

land.rhs.i.i.i498.while.end.i.i.i504_crit_edge:   ; preds = %land.rhs.i.i.i498
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i.i504

while.body.i.i.i502:                              ; preds = %land.rhs.i.i.i498
  %other_pipe.0.in.i.i.i499 = getelementptr inbounds %struct.pipe_ctx, ptr %other_pipe.029.i.i.i496, i32 0, i32 10
  %295 = ptrtoint ptr %other_pipe.0.in.i.i.i499 to i32
  call void @__asan_load4_noabort(i32 %295)
  %other_pipe.0.i.i.i500 = load ptr, ptr %other_pipe.0.in.i.i.i499, align 8
  %tobool.not.i24.i.i501 = icmp eq ptr %other_pipe.0.i.i.i500, null
  br i1 %tobool.not.i24.i.i501, label %while.body.i.i.i502.while.end.i.i.i504_crit_edge, label %while.body.i.i.i502.land.rhs.i.i.i498_crit_edge

while.body.i.i.i502.land.rhs.i.i.i498_crit_edge:  ; preds = %while.body.i.i.i502
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i.i.i498

while.body.i.i.i502.while.end.i.i.i504_crit_edge: ; preds = %while.body.i.i.i502
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i.i504

while.end.i.i.i504:                               ; preds = %while.body.i.i.i502.while.end.i.i.i504_crit_edge, %land.rhs.i.i.i498.while.end.i.i.i504_crit_edge, %if.then.i.i495.while.end.i.i.i504_crit_edge
  %tobool4.not33.i.i.i503 = icmp eq ptr %291, null
  br i1 %tobool4.not33.i.i.i503, label %while.end.i.i.i504.calculate_split_count_and_index.exit.i539_crit_edge, label %while.end.i.i.i504.land.rhs5.i.i.i507_crit_edge

while.end.i.i.i504.land.rhs5.i.i.i507_crit_edge:  ; preds = %while.end.i.i.i504
  br label %land.rhs5.i.i.i507

while.end.i.i.i504.calculate_split_count_and_index.exit.i539_crit_edge: ; preds = %while.end.i.i.i504
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i539

land.rhs5.i.i.i507:                               ; preds = %while.body10.i.i.i511.land.rhs5.i.i.i507_crit_edge, %while.end.i.i.i504.land.rhs5.i.i.i507_crit_edge
  %other_pipe.135.i.i.i505 = phi ptr [ %other_pipe.1.i.i.i509, %while.body10.i.i.i511.land.rhs5.i.i.i507_crit_edge ], [ %291, %while.end.i.i.i504.land.rhs5.i.i.i507_crit_edge ]
  %296 = ptrtoint ptr %other_pipe.135.i.i.i505 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %other_pipe.135.i.i.i505, align 8
  %cmp8.i.i.i506 = icmp eq ptr %297, %275
  br i1 %cmp8.i.i.i506, label %while.body10.i.i.i511, label %land.rhs5.i.i.i507.land.rhs.i.i516.preheader_crit_edge

land.rhs5.i.i.i507.land.rhs.i.i516.preheader_crit_edge: ; preds = %land.rhs5.i.i.i507
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i.i516.preheader

while.body10.i.i.i511:                            ; preds = %land.rhs5.i.i.i507
  %other_pipe.1.in.i.i.i508 = getelementptr inbounds %struct.pipe_ctx, ptr %other_pipe.135.i.i.i505, i32 0, i32 9
  %298 = ptrtoint ptr %other_pipe.1.in.i.i.i508 to i32
  call void @__asan_load4_noabort(i32 %298)
  %other_pipe.1.i.i.i509 = load ptr, ptr %other_pipe.1.in.i.i.i508, align 4
  %tobool4.not.i.i.i510 = icmp eq ptr %other_pipe.1.i.i.i509, null
  br i1 %tobool4.not.i.i.i510, label %while.body10.i.i.i511.land.rhs.i.i516.preheader_crit_edge, label %while.body10.i.i.i511.land.rhs5.i.i.i507_crit_edge

while.body10.i.i.i511.land.rhs5.i.i.i507_crit_edge: ; preds = %while.body10.i.i.i511
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs5.i.i.i507

while.body10.i.i.i511.land.rhs.i.i516.preheader_crit_edge: ; preds = %while.body10.i.i.i511
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i.i516.preheader

land.rhs.i.i516.preheader:                        ; preds = %while.body10.i.i.i511.land.rhs.i.i516.preheader_crit_edge, %land.rhs5.i.i.i507.land.rhs.i.i516.preheader_crit_edge
  br label %land.rhs.i.i516

land.rhs.i.i516:                                  ; preds = %while.body.i.i520.land.rhs.i.i516_crit_edge, %land.rhs.i.i516.preheader
  %split_idx.0.i513 = phi i32 [ %inc.i.i517, %while.body.i.i520.land.rhs.i.i516_crit_edge ], [ 0, %land.rhs.i.i516.preheader ]
  %split_pipe.031.i.i514 = phi ptr [ %302, %while.body.i.i520.land.rhs.i.i516_crit_edge ], [ %291, %land.rhs.i.i516.preheader ]
  %299 = ptrtoint ptr %split_pipe.031.i.i514 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %split_pipe.031.i.i514, align 8
  %cmp3.i.i515 = icmp eq ptr %300, %275
  br i1 %cmp3.i.i515, label %while.body.i.i520, label %land.rhs.i.i516.calculate_split_count_and_index.exit.i539_crit_edge

land.rhs.i.i516.calculate_split_count_and_index.exit.i539_crit_edge: ; preds = %land.rhs.i.i516
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i539

while.body.i.i520:                                ; preds = %land.rhs.i.i516
  %inc.i.i517 = add i32 %split_idx.0.i513, 1
  %top_pipe4.i.i518 = getelementptr inbounds %struct.pipe_ctx, ptr %split_pipe.031.i.i514, i32 0, i32 9
  %301 = ptrtoint ptr %top_pipe4.i.i518 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %top_pipe4.i.i518, align 4
  %tobool.not.i.i519 = icmp eq ptr %302, null
  br i1 %tobool.not.i.i519, label %while.body.i.i520.calculate_split_count_and_index.exit.i539_crit_edge, label %while.body.i.i520.land.rhs.i.i516_crit_edge

while.body.i.i520.land.rhs.i.i516_crit_edge:      ; preds = %while.body.i.i520
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i.i516

while.body.i.i520.calculate_split_count_and_index.exit.i539_crit_edge: ; preds = %while.body.i.i520
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i539

while.body8.i.i527:                               ; preds = %while.body8.i.i527.while.body8.i.i527_crit_edge, %while.cond6.preheader.i.i490.while.body8.i.i527_crit_edge
  %split_idx.1.i521 = phi i32 [ %inc9.i.i523, %while.body8.i.i527.while.body8.i.i527_crit_edge ], [ 0, %while.cond6.preheader.i.i490.while.body8.i.i527_crit_edge ]
  %split_pipe5.029.i.i522 = phi ptr [ %split_pipe5.0.i.i525, %while.body8.i.i527.while.body8.i.i527_crit_edge ], [ %split_pipe5.027.i.i488, %while.cond6.preheader.i.i490.while.body8.i.i527_crit_edge ]
  %inc9.i.i523 = add i32 %split_idx.1.i521, 1
  %split_pipe5.0.in.i.i524 = getelementptr inbounds %struct.pipe_ctx, ptr %split_pipe5.029.i.i522, i32 0, i32 12
  %303 = ptrtoint ptr %split_pipe5.0.in.i.i524 to i32
  call void @__asan_load4_noabort(i32 %303)
  %split_pipe5.0.i.i525 = load ptr, ptr %split_pipe5.0.in.i.i524, align 8
  %tobool7.not.i.i526 = icmp eq ptr %split_pipe5.0.i.i525, null
  br i1 %tobool7.not.i.i526, label %while.body8.i.i527.calculate_split_count_and_index.exit.i539_crit_edge, label %while.body8.i.i527.while.body8.i.i527_crit_edge

while.body8.i.i527.while.body8.i.i527_crit_edge:  ; preds = %while.body8.i.i527
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body8.i.i527

while.body8.i.i527.calculate_split_count_and_index.exit.i539_crit_edge: ; preds = %while.body8.i.i527
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_split_count_and_index.exit.i539

calculate_split_count_and_index.exit.i539:        ; preds = %while.body8.i.i527.calculate_split_count_and_index.exit.i539_crit_edge, %while.body.i.i520.calculate_split_count_and_index.exit.i539_crit_edge, %land.rhs.i.i516.calculate_split_count_and_index.exit.i539_crit_edge, %while.end.i.i.i504.calculate_split_count_and_index.exit.i539_crit_edge, %while.cond6.preheader.i.i490.calculate_split_count_and_index.exit.i539_crit_edge
  %split_idx.2.i528 = phi i32 [ 0, %while.cond6.preheader.i.i490.calculate_split_count_and_index.exit.i539_crit_edge ], [ 0, %while.end.i.i.i504.calculate_split_count_and_index.exit.i539_crit_edge ], [ %inc.i.i517, %while.body.i.i520.calculate_split_count_and_index.exit.i539_crit_edge ], [ %split_idx.0.i513, %land.rhs.i.i516.calculate_split_count_and_index.exit.i539_crit_edge ], [ %inc9.i.i523, %while.body8.i.i527.calculate_split_count_and_index.exit.i539_crit_edge ]
  %dst.i529 = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 11
  %304 = ptrtoint ptr %dst.i529 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %dst.i529, align 8
  %dst_rect.i = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 5
  %306 = ptrtoint ptr %dst_rect.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %dst_rect.i, align 8
  %src6.i = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 10
  %308 = ptrtoint ptr %src6.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %src6.i, align 8
  %sub.i530 = sub i32 %307, %309
  %width.i531 = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 11, i32 2
  %310 = ptrtoint ptr %width.i531 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %width.i531, align 8
  %mul.i532 = mul i32 %sub.i530, %311
  %width10.i = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 10, i32 2
  %312 = ptrtoint ptr %width10.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %width10.i, align 8
  %div.i533 = sdiv i32 %mul.i532, %313
  %y.i534 = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 11, i32 1
  %314 = ptrtoint ptr %y.i534 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %y.i534, align 4
  %y13.i = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 5, i32 1
  %316 = ptrtoint ptr %y13.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %y13.i, align 4
  %y15.i = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 10, i32 1
  %318 = ptrtoint ptr %y15.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %y15.i, align 4
  %sub16.i = sub i32 %317, %319
  %height.i535 = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 11, i32 3
  %320 = ptrtoint ptr %height.i535 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %height.i535, align 4
  %mul18.i = mul i32 %sub16.i, %321
  %height20.i = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 10, i32 3
  %322 = ptrtoint ptr %height20.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %height20.i, align 4
  %div21.i = sdiv i32 %mul18.i, %323
  %324 = ptrtoint ptr %prev_odm_pipe.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %prev_odm_pipe.i, align 8
  %tobool.not.i537 = icmp eq ptr %325, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %split_idx.2.i528)
  %tobool23.not.i = icmp eq i32 %split_idx.2.i528, 0
  %or.cond.i538 = select i1 %tobool.not.i537, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i538, label %if.else.i541, label %if.then.i

if.then.i:                                        ; preds = %calculate_split_count_and_index.exit.i539
  call void @__sanitizer_cov_trace_pc() #20
  %326 = ptrtoint ptr %plane_res to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %plane_res, align 8
  %mul24.i = mul i32 %327, %split_idx.2.i528
  br label %if.end.i542

if.else.i541:                                     ; preds = %calculate_split_count_and_index.exit.i539
  call void @__sanitizer_cov_trace_pc() #20
  %328 = ptrtoint ptr %recout43.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %recout43.i, align 4
  br label %if.end.i542

if.end.i542:                                      ; preds = %if.else.i541, %if.then.i
  %mul24.pn.i = phi i32 [ %mul24.i, %if.then.i ], [ %329, %if.else.i541 ]
  %330 = add i32 %div.i533, %305
  %ro_lb.0.i = sub i32 %mul24.pn.i, %330
  %331 = ptrtoint ptr %y70.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %y70.i, align 4
  %333 = add i32 %div21.i, %315
  %sub30.i = sub i32 %332, %333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ro_lb.0.i)
  %cmp31.i = icmp slt i32 %ro_lb.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30.i)
  %cmp32.i = icmp slt i32 %sub30.i, 0
  %spec.select.i = select i1 %cmp31.i, i1 true, i1 %cmp32.i
  br i1 %spec.select.i, label %land.rhs36.i, label %if.end.i542.do.end78.i_crit_edge

if.end.i542.do.end78.i_crit_edge:                 ; preds = %if.end.i542
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end78.i

land.rhs36.i:                                     ; preds = %if.end.i542
  %.b372.i = load i1, ptr @calculate_inits_and_viewports.__already_done, align 1
  br i1 %.b372.i, label %land.rhs36.i.if.then75.i543_crit_edge, label %if.then43.i, !prof !85

land.rhs36.i.if.then75.i543_crit_edge:            ; preds = %land.rhs36.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then75.i543

if.then43.i:                                      ; preds = %land.rhs36.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @calculate_inits_and_viewports.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 984, i32 noundef 9, ptr noundef null) #18
  br label %if.then75.i543

if.then75.i543:                                   ; preds = %if.then43.i, %land.rhs36.i.if.then75.i543_crit_edge
  call void @kgdb_breakpoint() #18
  br label %do.end78.i

do.end78.i:                                       ; preds = %if.then75.i543, %if.end.i542.do.end78.i_crit_edge
  %rotation.i544 = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 23
  %334 = ptrtoint ptr %rotation.i544 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %rotation.i544, align 4
  %horizontal_mirror.i = getelementptr inbounds %struct.dc_plane_state, ptr %275, i32 0, i32 31
  %336 = ptrtoint ptr %horizontal_mirror.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %horizontal_mirror.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool79.not.i = icmp eq i8 %337, 0
  %338 = ptrtoint ptr %orthogonal_rotation.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 0, ptr %orthogonal_rotation.i, align 1
  %339 = ptrtoint ptr %flip_vert_scan_dir.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 0, ptr %flip_vert_scan_dir.i, align 1
  %340 = ptrtoint ptr %flip_horz_scan_dir.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 0, ptr %flip_horz_scan_dir.i, align 1
  %341 = zext i32 %335 to i64
  call void @__sanitizer_cov_trace_switch(i64 %341, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %335, label %do.end78.i.if.end7.i.i_crit_edge [
    i32 2, label %do.end78.i.if.end7.sink.split.i.i_crit_edge
    i32 1, label %if.then2.i.i
    i32 3, label %if.then5.i.i
  ]

do.end78.i.if.end7.sink.split.i.i_crit_edge:      ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.sink.split.i.i

do.end78.i.if.end7.i.i_crit_edge:                 ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.sink.split.i.i

if.then5.i.i:                                     ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.sink.split.i.i

if.end7.sink.split.i.i:                           ; preds = %if.then5.i.i, %if.then2.i.i, %do.end78.i.if.end7.sink.split.i.i_crit_edge
  %orthogonal_rotation.sink.i.i = phi ptr [ %orthogonal_rotation.i, %if.then2.i.i ], [ %orthogonal_rotation.i, %if.then5.i.i ], [ %flip_vert_scan_dir.i, %do.end78.i.if.end7.sink.split.i.i_crit_edge ]
  %flip_horz_scan_dir.sink.i.i = phi ptr [ %flip_horz_scan_dir.i, %if.then2.i.i ], [ %flip_vert_scan_dir.i, %if.then5.i.i ], [ %flip_horz_scan_dir.i, %do.end78.i.if.end7.sink.split.i.i_crit_edge ]
  %342 = ptrtoint ptr %orthogonal_rotation.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 1, ptr %orthogonal_rotation.sink.i.i, align 1
  %343 = ptrtoint ptr %flip_horz_scan_dir.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 1, ptr %flip_horz_scan_dir.sink.i.i, align 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end7.sink.split.i.i, %do.end78.i.if.end7.i.i_crit_edge
  br i1 %tobool79.not.i, label %if.end7.i.i.get_vp_scan_direction.exit.i_crit_edge, label %if.then8.i.i

if.end7.i.i.get_vp_scan_direction.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_vp_scan_direction.exit.i

if.then8.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %344 = ptrtoint ptr %flip_horz_scan_dir.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %flip_horz_scan_dir.i.0.flip_horz_scan_dir.i.0.flip_horz_scan_dir.0.flip_horz_scan_dir.0.377.i = load i8, ptr %flip_horz_scan_dir.i, align 1
  %345 = xor i8 %flip_horz_scan_dir.i.0.flip_horz_scan_dir.i.0.flip_horz_scan_dir.0.flip_horz_scan_dir.0.377.i, 1
  store i8 %345, ptr %flip_horz_scan_dir.i, align 1
  br label %get_vp_scan_direction.exit.i

get_vp_scan_direction.exit.i:                     ; preds = %if.then8.i.i, %if.end7.i.i.get_vp_scan_direction.exit.i_crit_edge
  %346 = ptrtoint ptr %orthogonal_rotation.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %orthogonal_rotation.i.0.orthogonal_rotation.i.0.orthogonal_rotation.0.orthogonal_rotation.0..i = load i8, ptr %orthogonal_rotation.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %orthogonal_rotation.i.0.orthogonal_rotation.i.0.orthogonal_rotation.0.orthogonal_rotation.0..i)
  %tobool80.not.i = icmp eq i8 %orthogonal_rotation.i.0.orthogonal_rotation.i.0.orthogonal_rotation.0.orthogonal_rotation.0..i, 0
  br i1 %tobool80.not.i, label %get_vp_scan_direction.exit.i.if.end99.i_crit_edge, label %do.body82.i

get_vp_scan_direction.exit.i.if.end99.i_crit_edge: ; preds = %get_vp_scan_direction.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end99.i

do.body82.i:                                      ; preds = %get_vp_scan_direction.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %347 = ptrtoint ptr %flip_vert_scan_dir.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %flip_vert_scan_dir.i.0.flip_vert_scan_dir.i.0.flip_vert_scan_dir.0.flip_vert_scan_dir.0..i = load i8, ptr %flip_vert_scan_dir.i, align 1
  %348 = ptrtoint ptr %flip_horz_scan_dir.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %flip_horz_scan_dir.i.0.flip_horz_scan_dir.i.0.flip_horz_scan_dir.0.flip_horz_scan_dir.0..i = load i8, ptr %flip_horz_scan_dir.i, align 1
  store i8 %flip_horz_scan_dir.i.0.flip_horz_scan_dir.i.0.flip_horz_scan_dir.0.flip_horz_scan_dir.0..i, ptr %flip_vert_scan_dir.i, align 1
  store i8 %flip_vert_scan_dir.i.0.flip_vert_scan_dir.i.0.flip_vert_scan_dir.0.flip_vert_scan_dir.0..i, ptr %flip_horz_scan_dir.i, align 1
  br label %if.end99.i

if.end99.i:                                       ; preds = %do.body82.i, %get_vp_scan_direction.exit.i.if.end99.i_crit_edge
  %src.sroa.11.0.i = phi i32 [ %src.sroa.16.0.copyload.i, %do.body82.i ], [ %src.sroa.11.0.copyload.i, %get_vp_scan_direction.exit.i.if.end99.i_crit_edge ]
  %src.sroa.16.0.i = phi i32 [ %src.sroa.11.0.copyload.i, %do.body82.i ], [ %src.sroa.16.0.copyload.i, %get_vp_scan_direction.exit.i.if.end99.i_crit_edge ]
  %349 = ptrtoint ptr %flip_horz_scan_dir.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %flip_horz_scan_dir.i.0.flip_horz_scan_dir.i.0.flip_horz_scan_dir.0.flip_horz_scan_dir.0.375.i = load i8, ptr %flip_horz_scan_dir.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flip_horz_scan_dir.i.0.flip_horz_scan_dir.i.0.flip_horz_scan_dir.0.flip_horz_scan_dir.0.375.i)
  %tobool100.i = icmp ne i8 %flip_horz_scan_dir.i.0.flip_horz_scan_dir.i.0.flip_horz_scan_dir.0.flip_horz_scan_dir.0.375.i, 0
  %350 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %width44.i, align 4
  %taps.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 2
  %h_taps.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 2, i32 1
  %352 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %h_taps.i, align 4
  %inits.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 7
  %354 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %354)
  %.unpack.i546 = load i64, ptr %ratios.i, align 8
  %355 = insertvalue [1 x i64] undef, i64 %.unpack.i546, 0
  call fastcc void @calculate_init_and_vp(i1 noundef zeroext %tobool100.i, i32 noundef %ro_lb.0.i, i32 noundef %351, i32 noundef %src.sroa.11.0.i, i32 noundef %353, [1 x i64] %355, ptr noundef %inits.i, ptr noundef %viewport, ptr noundef %width2.i) #18
  %356 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %width44.i, align 4
  %div111.i = sdiv i32 %src.sroa.11.0.i, %288
  %h_taps_c.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 2, i32 3
  %358 = ptrtoint ptr %h_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %h_taps_c.i, align 4
  %h_c.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 7, i32 1
  %viewport_c.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 4
  %360 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_load8_noabort(i32 %360)
  %.unpack368.i = load i64, ptr %horz_c.i, align 8
  %361 = insertvalue [1 x i64] undef, i64 %.unpack368.i, 0
  call fastcc void @calculate_init_and_vp(i1 noundef zeroext %tobool100.i, i32 noundef %ro_lb.0.i, i32 noundef %357, i32 noundef %div111.i, i32 noundef %359, [1 x i64] %361, ptr noundef %h_c.i, ptr noundef %viewport_c.i, ptr noundef %width18.i) #18
  %362 = ptrtoint ptr %flip_vert_scan_dir.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %flip_vert_scan_dir.i.0.flip_vert_scan_dir.i.0.flip_vert_scan_dir.0.flip_vert_scan_dir.0.378.i = load i8, ptr %flip_vert_scan_dir.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flip_vert_scan_dir.i.0.flip_vert_scan_dir.i.0.flip_vert_scan_dir.0.flip_vert_scan_dir.0.378.i)
  %tobool119.i = icmp ne i8 %flip_vert_scan_dir.i.0.flip_vert_scan_dir.i.0.flip_vert_scan_dir.0.flip_vert_scan_dir.0.378.i, 0
  %363 = ptrtoint ptr %height110.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %height110.i, align 4
  %365 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %taps.i, align 8
  %v.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 7, i32 2
  %y127.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 1
  %367 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %367)
  %.unpack369.i = load i64, ptr %vert.i, align 8
  %368 = insertvalue [1 x i64] undef, i64 %.unpack369.i, 0
  call fastcc void @calculate_init_and_vp(i1 noundef zeroext %tobool119.i, i32 noundef %sub30.i, i32 noundef %364, i32 noundef %src.sroa.16.0.i, i32 noundef %366, [1 x i64] %368, ptr noundef %v.i, ptr noundef %y127.i, ptr noundef %height10.i) #18
  %369 = ptrtoint ptr %height110.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %height110.i, align 4
  %div135.i = sdiv i32 %src.sroa.16.0.i, %288
  %v_taps_c.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 2, i32 2
  %371 = ptrtoint ptr %v_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %v_taps_c.i, align 8
  %v_c.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 7, i32 3
  %y140.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 4, i32 1
  %373 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_load8_noabort(i32 %373)
  %.unpack370.i = load i64, ptr %vert_c.i, align 8
  %374 = insertvalue [1 x i64] undef, i64 %.unpack370.i, 0
  call fastcc void @calculate_init_and_vp(i1 noundef zeroext %tobool119.i, i32 noundef %sub30.i, i32 noundef %370, i32 noundef %div135.i, i32 noundef %372, [1 x i64] %374, ptr noundef %v_c.i, ptr noundef %y140.i, ptr noundef %height27.i) #18
  br i1 %tobool80.not.i, label %if.end99.i.if.end194.i_crit_edge, label %do.body146.i

if.end99.i.if.end194.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end194.i

do.body146.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #20
  %375 = ptrtoint ptr %viewport to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %viewport, align 4
  %377 = ptrtoint ptr %y127.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %y127.i, align 4
  store i32 %378, ptr %viewport, align 4
  store i32 %376, ptr %y127.i, align 4
  %379 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %width2.i, align 4
  %381 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %height10.i, align 4
  store i32 %382, ptr %width2.i, align 4
  store i32 %380, ptr %height10.i, align 4
  %383 = ptrtoint ptr %viewport_c.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %viewport_c.i, align 4
  %385 = ptrtoint ptr %y140.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %y140.i, align 4
  store i32 %386, ptr %viewport_c.i, align 4
  store i32 %384, ptr %y140.i, align 4
  %387 = ptrtoint ptr %width18.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %width18.i, align 4
  %389 = ptrtoint ptr %height27.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %height27.i, align 4
  store i32 %390, ptr %width18.i, align 4
  store i32 %388, ptr %height27.i, align 4
  br label %if.end194.i

if.end194.i:                                      ; preds = %do.body146.i, %if.end99.i.if.end194.i_crit_edge
  %391 = ptrtoint ptr %viewport to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %viewport, align 4
  %add198.i = add i32 %392, %src.sroa.0.0.copyload.i
  store i32 %add198.i, ptr %viewport, align 4
  %393 = ptrtoint ptr %y127.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %y127.i, align 4
  %add202.i = add i32 %394, %src.sroa.7.0.copyload.i
  store i32 %add202.i, ptr %y127.i, align 4
  %395 = add nsw i32 %288, -1
  %396 = and i32 %395, %src.sroa.0.0.copyload.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %cmp206.i = icmp eq i32 %396, 0
  %397 = and i32 %395, %src.sroa.7.0.copyload.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %cmp210.not.i = icmp eq i32 %397, 0
  %or.cond387.i = select i1 %cmp206.i, i1 %cmp210.not.i, i1 false
  br i1 %or.cond387.i, label %if.end194.i.calculate_inits_and_viewports.exit_crit_edge, label %land.rhs220.i

if.end194.i.calculate_inits_and_viewports.exit_crit_edge: ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calculate_inits_and_viewports.exit

land.rhs220.i:                                    ; preds = %if.end194.i
  %.b367371.i = load i1, ptr @calculate_inits_and_viewports.__already_done.25, align 1
  br i1 %.b367371.i, label %land.rhs220.i.if.then267.i_crit_edge, label %if.then231.i, !prof !85

land.rhs220.i.if.then267.i_crit_edge:             ; preds = %land.rhs220.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then267.i

if.then231.i:                                     ; preds = %land.rhs220.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @calculate_inits_and_viewports.__already_done.25, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1049, i32 noundef 9, ptr noundef null) #18
  br label %if.then267.i

if.then267.i:                                     ; preds = %if.then231.i, %land.rhs220.i.if.then267.i_crit_edge
  call void @kgdb_breakpoint() #18
  br label %calculate_inits_and_viewports.exit

calculate_inits_and_viewports.exit:               ; preds = %if.then267.i, %if.end194.i.calculate_inits_and_viewports.exit_crit_edge
  %div272.i = sdiv i32 %src.sroa.0.0.copyload.i, %288
  %398 = ptrtoint ptr %viewport_c.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %viewport_c.i, align 4
  %add275.i = add i32 %399, %div272.i
  store i32 %add275.i, ptr %viewport_c.i, align 4
  %div277.i = sdiv i32 %src.sroa.7.0.copyload.i, %288
  %400 = ptrtoint ptr %y140.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %y140.i, align 4
  %add280.i = add i32 %401, %div277.i
  store i32 %add280.i, ptr %y140.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flip_horz_scan_dir.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flip_vert_scan_dir.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orthogonal_rotation.i)
  br label %if.end114

if.end114:                                        ; preds = %calculate_inits_and_viewports.exit, %if.end111.if.end114_crit_edge, %if.then98.if.end114_crit_edge, %if.end94.thread.if.end114_crit_edge
  %res.3.off0552 = phi i1 [ true, %calculate_inits_and_viewports.exit ], [ false, %if.end111.if.end114_crit_edge ], [ false, %if.then98.if.end114_crit_edge ], [ false, %if.end94.thread.if.end114_crit_edge ]
  %top_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 9
  %402 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %top_pipe, align 4
  %tobool115.not = icmp eq ptr %403, null
  br i1 %tobool115.not, label %if.end114.if.end201_crit_edge, label %land.lhs.true

if.end114.if.end201_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end201

land.lhs.true:                                    ; preds = %if.end114
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %403, align 8
  %cmp118 = icmp eq ptr %405, %1
  br i1 %cmp118, label %do.body, label %land.lhs.true.if.end201_crit_edge

land.lhs.true.if.end201_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end201

do.body:                                          ; preds = %land.lhs.true
  %rotation = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 23
  %406 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %rotation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %cmp120 = icmp eq i32 %407, 0
  br i1 %cmp120, label %do.body.do.end172_crit_edge, label %lor.rhs

do.body.do.end172_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end172

lor.rhs:                                          ; preds = %do.body
  %408 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %stream, align 4
  %view_format = getelementptr inbounds %struct.dc_stream_state, ptr %409, i32 0, i32 22
  %410 = ptrtoint ptr %view_format to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %view_format, align 4
  %412 = and i32 %411, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %412)
  %switch = icmp eq i32 %412, 2
  br i1 %switch, label %land.rhs130, label %lor.rhs.do.end172_crit_edge

lor.rhs.do.end172_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end172

land.rhs130:                                      ; preds = %lor.rhs
  %.b445 = load i1, ptr @resource_build_scaling_params.__already_done, align 1
  br i1 %.b445, label %land.rhs130.if.then169_crit_edge, label %if.then137, !prof !85

land.rhs130.if.then169_crit_edge:                 ; preds = %land.rhs130
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then169

if.then137:                                       ; preds = %land.rhs130
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @resource_build_scaling_params.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1151, i32 noundef 9, ptr noundef null) #18
  br label %if.then169

if.then169:                                       ; preds = %if.then137, %land.rhs130.if.then169_crit_edge
  call void @kgdb_breakpoint() #18
  br label %do.end172

do.end172:                                        ; preds = %if.then169, %lor.rhs.do.end172_crit_edge, %do.body.do.end172_crit_edge
  %413 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %stream, align 4
  %view_format174 = getelementptr inbounds %struct.dc_stream_state, ptr %414, i32 0, i32 22
  %415 = ptrtoint ptr %view_format174 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %view_format174, align 4
  %417 = zext i32 %416 to i64
  call void @__sanitizer_cov_trace_switch(i64 %417, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %416, label %do.end172.if.end201_crit_edge [
    i32 3, label %do.end172.if.end201.sink.split_crit_edge
    i32 2, label %if.then189
  ]

do.end172.if.end201.sink.split_crit_edge:         ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end201.sink.split

do.end172.if.end201_crit_edge:                    ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end201

if.then189:                                       ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end201.sink.split

if.end201.sink.split:                             ; preds = %if.then189, %do.end172.if.end201.sink.split_crit_edge
  %height110.i.sink = phi ptr [ %width44.i, %if.then189 ], [ %height110.i, %do.end172.if.end201.sink.split_crit_edge ]
  %y70.i.sink579 = phi ptr [ %recout43.i, %if.then189 ], [ %y70.i, %do.end172.if.end201.sink.split_crit_edge ]
  %418 = ptrtoint ptr %height110.i.sink to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %height110.i.sink, align 4
  %420 = ptrtoint ptr %y70.i.sink579 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %y70.i.sink579, align 4
  %add184 = add i32 %421, %419
  store i32 %add184, ptr %y70.i.sink579, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.end201.sink.split, %do.end172.if.end201_crit_edge, %land.lhs.true.if.end201_crit_edge, %if.end114.if.end201_crit_edge
  %422 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %stream, align 4
  %ctx203 = getelementptr inbounds %struct.dc_stream_state, ptr %423, i32 0, i32 32
  %424 = ptrtoint ptr %ctx203 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ctx203, align 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %425, align 8
  %enable_windowed_mpo_odm = getelementptr inbounds %struct.dc, ptr %427, i32 0, i32 4, i32 14
  %428 = ptrtoint ptr %enable_windowed_mpo_odm to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %enable_windowed_mpo_odm, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %429)
  %tobool204.not = icmp eq i8 %429, 0
  %430 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %height10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %431)
  %cmp210 = icmp slt i32 %431, 12
  br i1 %tobool204.not, label %if.then205, label %if.else219

if.then205:                                       ; preds = %if.end201
  br i1 %cmp210, label %if.then205.if.then217_crit_edge, label %lor.lhs.false211

if.then205.if.then217_crit_edge:                  ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then217

lor.lhs.false211:                                 ; preds = %if.then205
  %432 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %width2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %433)
  %cmp216 = icmp slt i32 %433, 12
  br i1 %cmp216, label %lor.lhs.false211.if.then217_crit_edge, label %lor.lhs.false211.do.body243_crit_edge

lor.lhs.false211.do.body243_crit_edge:            ; preds = %lor.lhs.false211
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

lor.lhs.false211.if.then217_crit_edge:            ; preds = %lor.lhs.false211
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then217

if.then217:                                       ; preds = %lor.lhs.false211.if.then217_crit_edge, %if.then205.if.then217_crit_edge
  br label %do.body243

if.else219:                                       ; preds = %if.end201
  br i1 %cmp210, label %if.then225, label %if.else219.if.end230_crit_edge

if.else219.if.end230_crit_edge:                   ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end230

if.then225:                                       ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #20
  %434 = ptrtoint ptr %height10.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 12, ptr %height10.i, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.then225, %if.else219.if.end230_crit_edge
  %435 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %width2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %436)
  %cmp235 = icmp slt i32 %436, 12
  br i1 %cmp235, label %if.then236, label %if.end230.do.body243_crit_edge

if.end230.do.body243_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

if.then236:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #20
  %437 = ptrtoint ptr %width2.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 12, ptr %width2.i, align 4
  br label %do.body243

do.body243:                                       ; preds = %if.then236, %if.end230.do.body243_crit_edge, %if.then217, %lor.lhs.false211.do.body243_crit_edge
  %res.4.off0 = phi i1 [ %res.3.off0552, %if.then236 ], [ %res.3.off0552, %if.end230.do.body243_crit_edge ], [ false, %if.then217 ], [ %res.3.off0552, %lor.lhs.false211.do.body243_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resource_build_scaling_params.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resource_build_scaling_params, %if.then254)) #18
          to label %do.end316 [label %if.then254], !srcloc !87

if.then254:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #20
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %438 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %pipe_idx, align 8
  %conv = zext i8 %439 to i32
  %440 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %height10.i, align 4
  %442 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %width2.i, align 4
  %444 = ptrtoint ptr %viewport to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %viewport, align 4
  %y270 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 1
  %446 = ptrtoint ptr %y270 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %y270, align 4
  %448 = ptrtoint ptr %height110.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %height110.i, align 4
  %450 = ptrtoint ptr %width44.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %width44.i, align 4
  %452 = ptrtoint ptr %recout43.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %recout43.i, align 4
  %454 = ptrtoint ptr %y70.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %y70.i, align 4
  %456 = ptrtoint ptr %plane_res to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %plane_res, align 8
  %458 = ptrtoint ptr %v_active to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %v_active, align 4
  %src_rect = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4
  %height293 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4, i32 3
  %460 = ptrtoint ptr %height293 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %height293, align 4
  %width295 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4, i32 2
  %462 = ptrtoint ptr %width295 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %width295, align 8
  %464 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %src_rect, align 8
  %y299 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4, i32 1
  %466 = ptrtoint ptr %y299 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %y299, align 4
  %dst_rect = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5
  %height300 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5, i32 3
  %468 = ptrtoint ptr %height300 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %height300, align 4
  %width302 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5, i32 2
  %470 = ptrtoint ptr %width302 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %width302, align 8
  %472 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %dst_rect, align 8
  %y306 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5, i32 1
  %474 = ptrtoint ptr %y306 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %y306, align 4
  %clip_rect = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6
  %height307 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6, i32 3
  %476 = ptrtoint ptr %height307 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %height307, align 4
  %width309 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6, i32 2
  %478 = ptrtoint ptr %width309 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %width309, align 8
  %480 = ptrtoint ptr %clip_rect to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %clip_rect, align 8
  %y313 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6, i32 1
  %482 = ptrtoint ptr %y313 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %y313, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @resource_build_scaling_params.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %441, i32 noundef %443, i32 noundef %445, i32 noundef %447, i32 noundef %449, i32 noundef %451, i32 noundef %453, i32 noundef %455, i32 noundef %457, i32 noundef %459, i32 noundef %461, i32 noundef %463, i32 noundef %465, i32 noundef %467, i32 noundef %469, i32 noundef %471, i32 noundef %473, i32 noundef %475, i32 noundef %477, i32 noundef %479, i32 noundef %481, i32 noundef %483) #18
  br label %do.end316

do.end316:                                        ; preds = %if.then254, %do.body243
  %484 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %h_border_left, align 4
  %486 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %stream, align 4
  %dst319 = getelementptr inbounds %struct.dc_stream_state, ptr %487, i32 0, i32 11
  %488 = ptrtoint ptr %dst319 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %dst319, align 8
  %sub = sub i32 %489, %485
  store i32 %sub, ptr %dst319, align 8
  %490 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %v_border_top, align 4
  %492 = load ptr, ptr %stream, align 4
  %y324 = getelementptr inbounds %struct.dc_stream_state, ptr %492, i32 0, i32 11, i32 1
  %493 = ptrtoint ptr %y324 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %y324, align 4
  %sub325 = sub i32 %494, %491
  store i32 %sub325, ptr %y324, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end316, %lor.lhs.false27.cleanup_crit_edge, %calculate_viewport_size.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ %res.4.off0, %do.end316 ], [ false, %lor.lhs.false27.cleanup_crit_edge ], [ false, %calculate_viewport_size.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @resource_build_scaling_params_for_context(ptr nocapture readnone %dc, ptr noundef %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %res_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_ctx, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %stream = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %cmp5.not = icmp eq ptr %3, null
  br i1 %cmp5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call = tail call zeroext i1 @resource_build_scaling_params(ptr noundef %res_ctx)
  br i1 %call, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 8
  %cmp1.not.1 = icmp eq ptr %5, null
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream.1, align 4
  %cmp5.not.1 = icmp eq ptr %7, null
  br i1 %cmp5.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true.1
  %call.1 = tail call zeroext i1 @resource_build_scaling_params(ptr noundef %arrayidx.1)
  br i1 %call.1, label %if.then.1.for.inc.1_crit_edge, label %if.then.1.cleanup_crit_edge

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 8
  %cmp1.not.2 = icmp eq ptr %9, null
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream.2, align 4
  %cmp5.not.2 = icmp eq ptr %11, null
  br i1 %cmp5.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.then.2:                                        ; preds = %land.lhs.true.2
  %call.2 = tail call zeroext i1 @resource_build_scaling_params(ptr noundef %arrayidx.2)
  br i1 %call.2, label %if.then.2.for.inc.2_crit_edge, label %if.then.2.cleanup_crit_edge

if.then.2.cleanup_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 8
  %cmp1.not.3 = icmp eq ptr %13, null
  br i1 %cmp1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream.3, align 4
  %cmp5.not.3 = icmp eq ptr %15, null
  br i1 %cmp5.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

if.then.3:                                        ; preds = %land.lhs.true.3
  %call.3 = tail call zeroext i1 @resource_build_scaling_params(ptr noundef %arrayidx.3)
  br i1 %call.3, label %if.then.3.for.inc.3_crit_edge, label %if.then.3.cleanup_crit_edge

if.then.3.cleanup_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 8
  %cmp1.not.4 = icmp eq ptr %17, null
  br i1 %cmp1.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream.4, align 4
  %cmp5.not.4 = icmp eq ptr %19, null
  br i1 %cmp5.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

if.then.4:                                        ; preds = %land.lhs.true.4
  %call.4 = tail call zeroext i1 @resource_build_scaling_params(ptr noundef %arrayidx.4)
  br i1 %call.4, label %if.then.4.for.inc.4_crit_edge, label %if.then.4.cleanup_crit_edge

if.then.4.cleanup_crit_edge:                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 8
  %cmp1.not.5 = icmp eq ptr %21, null
  br i1 %cmp1.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream.5, align 4
  %cmp5.not.5 = icmp eq ptr %23, null
  br i1 %cmp5.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %if.then.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5

if.then.5:                                        ; preds = %land.lhs.true.5
  %call.5 = tail call zeroext i1 @resource_build_scaling_params(ptr noundef %arrayidx.5)
  br i1 %call.5, label %if.then.5.for.inc.5_crit_edge, label %if.then.5.cleanup_crit_edge

if.then.5.cleanup_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.5.for.inc.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5.for.inc.5_crit_edge, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.5, %if.then.5.cleanup_crit_edge, %if.then.4.cleanup_crit_edge, %if.then.3.cleanup_crit_edge, %if.then.2.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %if.then.cleanup_crit_edge ], [ 14, %if.then.1.cleanup_crit_edge ], [ 14, %if.then.2.cleanup_crit_edge ], [ 14, %if.then.3.cleanup_crit_edge ], [ 14, %if.then.4.cleanup_crit_edge ], [ 14, %if.then.5.cleanup_crit_edge ], [ 1, %for.inc.5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_idle_secondary_pipe(ptr noundef %res_ctx, ptr nocapture noundef readonly %pool, ptr noundef readonly %primary_pipe) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %primary_pipe, null
  br i1 %tobool.not, label %entry.if.then10_crit_edge, label %if.then

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

if.then:                                          ; preds = %entry
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 19
  %0 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe_count, align 4
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %primary_pipe, i32 0, i32 7
  %2 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pipe_idx, align 8
  %conv = zext i8 %3 to i32
  %4 = xor i32 %conv, -1
  %sub1 = add i32 %1, %4
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %sub1, i32 1
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.end8, label %if.then.if.then10_crit_edge

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

if.end8:                                          ; preds = %if.then
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %sub1
  %conv6 = trunc i32 %sub1 to i8
  %pipe_idx7 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %sub1, i32 7
  %7 = ptrtoint ptr %pipe_idx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %pipe_idx7, align 8
  %tobool9.not = icmp eq ptr %arrayidx, null
  br i1 %tobool9.not, label %if.end8.if.then10_crit_edge, label %if.end8.if.end26_crit_edge

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.then.if.then10_crit_edge, %entry.if.then10_crit_edge
  %pipe_count11 = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 19
  %8 = ptrtoint ptr %pipe_count11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe_count11, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then10
  %i.0.in = phi i32 [ %9, %if.then10 ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp13 = icmp sgt i32 %i.0, -1
  br i1 %cmp13, label %for.body, label %for.cond.if.end26_crit_edge

for.cond.if.end26_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

for.body:                                         ; preds = %for.cond
  %stream17 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0, i32 1
  %10 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream17, align 4
  %cmp18 = icmp eq ptr %11, null
  br i1 %cmp18, label %if.then20, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx16 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0
  %conv23 = trunc i32 %i.0 to i8
  %pipe_idx24 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0, i32 7
  %12 = ptrtoint ptr %pipe_idx24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23, ptr %pipe_idx24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %for.cond.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %secondary_pipe.2 = phi ptr [ %arrayidx, %if.end8.if.end26_crit_edge ], [ %arrayidx16, %if.then20 ], [ null, %for.cond.if.end26_crit_edge ]
  ret ptr %secondary_pipe.2
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @resource_get_head_pipe_for_stream(ptr noundef readonly %res_ctx, ptr noundef readnone %stream) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %cmp2 = icmp eq ptr %1, %stream
  br i1 %cmp2, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %top_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 0, i32 9
  %2 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top_pipe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %prev_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 0, i32 12
  %4 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %land.lhs.true5.cleanup.split.loop.exit19_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true5.cleanup.split.loop.exit19_crit_edge: ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.split.loop.exit19

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %stream1.1 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %stream1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1.1, align 4
  %cmp2.1 = icmp eq ptr %7, %stream
  br i1 %cmp2.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %top_pipe.1 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %top_pipe.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %top_pipe.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %land.lhs.true5.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %prev_odm_pipe.1 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %prev_odm_pipe.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev_odm_pipe.1, align 8
  %tobool8.not.1 = icmp eq ptr %11, null
  br i1 %tobool8.not.1, label %land.lhs.true5.1.cleanup.split.loop.exit19_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

land.lhs.true5.1.cleanup.split.loop.exit19_crit_edge: ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.split.loop.exit19

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %stream1.2 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %stream1.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream1.2, align 4
  %cmp2.2 = icmp eq ptr %13, %stream
  br i1 %cmp2.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %top_pipe.2 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %top_pipe.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %top_pipe.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %land.lhs.true5.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %prev_odm_pipe.2 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 2, i32 12
  %16 = ptrtoint ptr %prev_odm_pipe.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev_odm_pipe.2, align 8
  %tobool8.not.2 = icmp eq ptr %17, null
  br i1 %tobool8.not.2, label %land.lhs.true5.2.cleanup.split.loop.exit19_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

land.lhs.true5.2.cleanup.split.loop.exit19_crit_edge: ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.split.loop.exit19

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %stream1.3 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %stream1.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream1.3, align 4
  %cmp2.3 = icmp eq ptr %19, %stream
  br i1 %cmp2.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %top_pipe.3 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 3, i32 9
  %20 = ptrtoint ptr %top_pipe.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %top_pipe.3, align 4
  %tobool.not.3 = icmp eq ptr %21, null
  br i1 %tobool.not.3, label %land.lhs.true5.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %prev_odm_pipe.3 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %prev_odm_pipe.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev_odm_pipe.3, align 8
  %tobool8.not.3 = icmp eq ptr %23, null
  br i1 %tobool8.not.3, label %land.lhs.true5.3.cleanup.split.loop.exit19_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

land.lhs.true5.3.cleanup.split.loop.exit19_crit_edge: ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.split.loop.exit19

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %stream1.4 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %stream1.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream1.4, align 4
  %cmp2.4 = icmp eq ptr %25, %stream
  br i1 %cmp2.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %top_pipe.4 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %top_pipe.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %top_pipe.4, align 4
  %tobool.not.4 = icmp eq ptr %27, null
  br i1 %tobool.not.4, label %land.lhs.true5.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %prev_odm_pipe.4 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 4, i32 12
  %28 = ptrtoint ptr %prev_odm_pipe.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev_odm_pipe.4, align 8
  %tobool8.not.4 = icmp eq ptr %29, null
  br i1 %tobool8.not.4, label %land.lhs.true5.4.cleanup.split.loop.exit19_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

land.lhs.true5.4.cleanup.split.loop.exit19_crit_edge: ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.split.loop.exit19

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %stream1.5 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %stream1.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stream1.5, align 4
  %cmp2.5 = icmp eq ptr %31, %stream
  br i1 %cmp2.5, label %land.lhs.true.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.5:                                  ; preds = %for.inc.4
  %top_pipe.5 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 5, i32 9
  %32 = ptrtoint ptr %top_pipe.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %top_pipe.5, align 4
  %tobool.not.5 = icmp eq ptr %33, null
  br i1 %tobool.not.5, label %land.lhs.true5.5, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %prev_odm_pipe.5 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 5, i32 12
  %34 = ptrtoint ptr %prev_odm_pipe.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev_odm_pipe.5, align 8
  %tobool8.not.5 = icmp eq ptr %35, null
  br i1 %tobool8.not.5, label %land.lhs.true5.5.cleanup.split.loop.exit19_crit_edge, label %land.lhs.true5.5.cleanup_crit_edge

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true5.5.cleanup.split.loop.exit19_crit_edge: ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.split.loop.exit19

cleanup.split.loop.exit19:                        ; preds = %land.lhs.true5.5.cleanup.split.loop.exit19_crit_edge, %land.lhs.true5.4.cleanup.split.loop.exit19_crit_edge, %land.lhs.true5.3.cleanup.split.loop.exit19_crit_edge, %land.lhs.true5.2.cleanup.split.loop.exit19_crit_edge, %land.lhs.true5.1.cleanup.split.loop.exit19_crit_edge, %land.lhs.true5.cleanup.split.loop.exit19_crit_edge
  %i.021.lcssa = phi i32 [ 0, %land.lhs.true5.cleanup.split.loop.exit19_crit_edge ], [ 1, %land.lhs.true5.1.cleanup.split.loop.exit19_crit_edge ], [ 2, %land.lhs.true5.2.cleanup.split.loop.exit19_crit_edge ], [ 3, %land.lhs.true5.3.cleanup.split.loop.exit19_crit_edge ], [ 4, %land.lhs.true5.4.cleanup.split.loop.exit19_crit_edge ], [ 5, %land.lhs.true5.5.cleanup.split.loop.exit19_crit_edge ]
  %arrayidx.le = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.021.lcssa
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit19, %land.lhs.true5.5.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.le, %cleanup.split.loop.exit19 ], [ null, %land.lhs.true5.5.cleanup_crit_edge ], [ null, %land.lhs.true.5.cleanup_crit_edge ], [ null, %for.inc.4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_add_plane_to_context(ptr nocapture noundef readonly %dc, ptr noundef %stream, ptr noundef %plane_state, ptr noundef %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp202.not = icmp eq i8 %3, 0
  br i1 %cmp202.not, label %entry.if.then8_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0203 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.0203
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %5, %stream
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0203, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.if.then8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.if.then8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.end:                                          ; preds = %for.body
  %arrayidx5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0203
  %cmp6 = icmp eq ptr %arrayidx5, null
  br i1 %cmp6, label %for.end.if.then8_crit_edge, label %if.end9

for.end.if.then8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then8:                                         ; preds = %for.end.if.then8_crit_edge, %for.inc.if.then8_crit_edge, %entry.if.then8_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #18
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %plane_count = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0203, i32 2
  %6 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plane_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp10 = icmp eq i32 %7, 4
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, ptr noundef %plane_state, i32 noundef 4) #18
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %call = tail call ptr @resource_get_head_pipe_for_stream(ptr noundef %res_ctx, ptr noundef %stream)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, ptr noundef %stream) #18
  br label %cleanup

if.end15:                                         ; preds = %if.end13
  tail call void @dc_plane_state_retain(ptr noundef %plane_state) #18
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 19
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 40
  br label %while.body

while.body:                                       ; preds = %if.end119.while.body_crit_edge, %if.end15
  %head_pipe.0206 = phi ptr [ %call, %if.end15 ], [ %71, %if.end119.while.body_crit_edge ]
  %8 = ptrtoint ptr %head_pipe.0206 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head_pipe.0206, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body.if.end20_crit_edge, label %if.end.i

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end.i:                                         ; preds = %while.body
  %10 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe_count.i, align 4
  %i.032.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.032.i)
  %cmp33.i = icmp sgt i32 %i.032.i, -1
  br i1 %cmp33.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %stream2.i = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.0206, i32 0, i32 1
  %12 = ptrtoint ptr %stream2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ %i.032.i, %for.body.lr.ph.i ], [ %i.0.i, %for.inc.i.for.body.i_crit_edge ]
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.034.i, i32 1
  %14 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream.i, align 4
  %cmp3.i = icmp eq ptr %15, %13
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.034.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.acquire_free_pipe_for_head.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i.acquire_free_pipe_for_head.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %acquire_free_pipe_for_head.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.034.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs.i, align 4
  %acquire_idle_pipe_for_layer.i = getelementptr inbounds %struct.resource_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %acquire_idle_pipe_for_layer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %acquire_idle_pipe_for_layer.i, align 4
  %tobool12.not.i = icmp eq ptr %21, null
  br i1 %tobool12.not.i, label %for.end.i.if.then19_crit_edge, label %if.end14.i

for.end.i.if.then19_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then19

if.end14.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %stream17.i = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.0206, i32 0, i32 1
  %22 = ptrtoint ptr %stream17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream17.i, align 4
  %call.i = tail call ptr %21(ptr noundef %context, ptr noundef %1, ptr noundef %23) #18
  br label %acquire_free_pipe_for_head.exit

acquire_free_pipe_for_head.exit:                  ; preds = %if.end14.i, %land.lhs.true.i.acquire_free_pipe_for_head.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end14.i ], [ %arrayidx.i, %land.lhs.true.i.acquire_free_pipe_for_head.exit_crit_edge ]
  %tobool18.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool18.not, label %acquire_free_pipe_for_head.exit.if.then19_crit_edge, label %acquire_free_pipe_for_head.exit.if.end20_crit_edge

acquire_free_pipe_for_head.exit.if.end20_crit_edge: ; preds = %acquire_free_pipe_for_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

acquire_free_pipe_for_head.exit.if.then19_crit_edge: ; preds = %acquire_free_pipe_for_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then19

if.then19:                                        ; preds = %acquire_free_pipe_for_head.exit.if.then19_crit_edge, %for.end.i.if.then19_crit_edge
  tail call void @dc_plane_state_release(ptr noundef %plane_state) #18
  br label %cleanup

if.end20:                                         ; preds = %acquire_free_pipe_for_head.exit.if.end20_crit_edge, %while.body.if.end20_crit_edge
  %retval.0.i200 = phi ptr [ %retval.0.i, %acquire_free_pipe_for_head.exit.if.end20_crit_edge ], [ %head_pipe.0206, %while.body.if.end20_crit_edge ]
  %24 = ptrtoint ptr %retval.0.i200 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %plane_state, ptr %retval.0.i200, align 8
  %cmp22.not = icmp eq ptr %head_pipe.0206, %retval.0.i200
  br i1 %cmp22.not, label %if.end20.if.end119_crit_edge, label %if.end20.while.cond.i_crit_edge

if.end20.while.cond.i_crit_edge:                  ; preds = %if.end20
  br label %while.cond.i

if.end20.if.end119_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end20.while.cond.i_crit_edge
  %head_pipe.addr.0.i = phi ptr [ %tail_pipe.0.i, %while.cond.i.while.cond.i_crit_edge ], [ %head_pipe.0206, %if.end20.while.cond.i_crit_edge ]
  %tail_pipe.0.in.i = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 10
  %25 = ptrtoint ptr %tail_pipe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %tail_pipe.0.i = load ptr, ptr %tail_pipe.0.in.i, align 8
  %tobool.not.i192 = icmp eq ptr %tail_pipe.0.i, null
  br i1 %tobool.not.i192, label %resource_get_tail_pipe.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

resource_get_tail_pipe.exit:                      ; preds = %while.cond.i
  %tail_pipe.0.in.i.le = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 10
  %tobool27.not = icmp eq ptr %head_pipe.addr.0.i, null
  br i1 %tobool27.not, label %land.rhs, label %resource_get_tail_pipe.exit.do.end72_crit_edge

resource_get_tail_pipe.exit.do.end72_crit_edge:   ; preds = %resource_get_tail_pipe.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end72

land.rhs:                                         ; preds = %resource_get_tail_pipe.exit
  %.b190 = load i1, ptr @dc_add_plane_to_context.__already_done, align 1
  br i1 %.b190, label %land.rhs.if.then69_crit_edge, label %if.then37, !prof !85

land.rhs.if.then69_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then69

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_add_plane_to_context.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1439, i32 noundef 9, ptr noundef null) #18
  br label %if.then69

if.then69:                                        ; preds = %if.then37, %land.rhs.if.then69_crit_edge
  tail call void @kgdb_breakpoint() #18
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %resource_get_tail_pipe.exit.do.end72_crit_edge
  %stream_res = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 3
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tg, align 8
  %stream_res73 = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 3
  %tg74 = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %tg74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %tg74, align 8
  %abm = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %abm, align 4
  %abm77 = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 3, i32 7
  %31 = ptrtoint ptr %abm77 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %abm77, align 4
  %32 = ptrtoint ptr %stream_res to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream_res, align 8
  %34 = ptrtoint ptr %stream_res73 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %stream_res73, align 8
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stream_enc, align 4
  %stream_enc83 = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %stream_enc83 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %stream_enc83, align 4
  %audio = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %audio, align 8
  %audio86 = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %audio86 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %audio86, align 8
  %clock_source = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 5
  %41 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clock_source, align 8
  %clock_source87 = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 5
  %43 = ptrtoint ptr %clock_source87 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %clock_source87, align 8
  %top_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 9
  %44 = ptrtoint ptr %top_pipe to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head_pipe.addr.0.i, ptr %top_pipe, align 4
  %45 = ptrtoint ptr %tail_pipe.0.in.i.le to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i200, ptr %tail_pipe.0.in.i.le, align 8
  %next_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 11
  %46 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %next_odm_pipe, align 4
  %tobool88.not = icmp eq ptr %47, null
  br i1 %tobool88.not, label %land.lhs.true, label %do.end72.if.end101_crit_edge

do.end72.if.end101_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end101

land.lhs.true:                                    ; preds = %do.end72
  %next_odm_pipe89 = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 11
  %48 = ptrtoint ptr %next_odm_pipe89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %next_odm_pipe89, align 4
  %tobool90.not = icmp eq ptr %49, null
  br i1 %tobool90.not, label %land.lhs.true.if.end101_crit_edge, label %land.lhs.true91

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end101

land.lhs.true91:                                  ; preds = %land.lhs.true
  %bottom_pipe93 = getelementptr inbounds %struct.pipe_ctx, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %bottom_pipe93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bottom_pipe93, align 8
  %tobool94.not = icmp eq ptr %51, null
  br i1 %tobool94.not, label %land.lhs.true91.if.end101_crit_edge, label %if.then95

land.lhs.true91.if.end101_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end101

if.then95:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #20
  %52 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %next_odm_pipe, align 4
  %53 = ptrtoint ptr %next_odm_pipe89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next_odm_pipe89, align 4
  %bottom_pipe100 = getelementptr inbounds %struct.pipe_ctx, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %bottom_pipe100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bottom_pipe100, align 8
  %prev_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %retval.0.i200, ptr %prev_odm_pipe, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then95, %land.lhs.true91.if.end101_crit_edge, %land.lhs.true.if.end101_crit_edge, %do.end72.if.end101_crit_edge
  %prev_odm_pipe102 = getelementptr inbounds %struct.pipe_ctx, ptr %retval.0.i200, i32 0, i32 12
  %58 = ptrtoint ptr %prev_odm_pipe102 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev_odm_pipe102, align 8
  %tobool103.not = icmp eq ptr %59, null
  br i1 %tobool103.not, label %land.lhs.true104, label %if.end101.if.end119_crit_edge

if.end101.if.end119_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

land.lhs.true104:                                 ; preds = %if.end101
  %prev_odm_pipe105 = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.addr.0.i, i32 0, i32 12
  %60 = ptrtoint ptr %prev_odm_pipe105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev_odm_pipe105, align 8
  %tobool106.not = icmp eq ptr %61, null
  br i1 %tobool106.not, label %land.lhs.true104.if.end119_crit_edge, label %land.lhs.true107

land.lhs.true104.if.end119_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

land.lhs.true107:                                 ; preds = %land.lhs.true104
  %bottom_pipe109 = getelementptr inbounds %struct.pipe_ctx, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %bottom_pipe109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bottom_pipe109, align 8
  %tobool110.not = icmp eq ptr %63, null
  br i1 %tobool110.not, label %land.lhs.true107.if.end119_crit_edge, label %if.then111

land.lhs.true107.if.end119_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

if.then111:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #20
  %64 = ptrtoint ptr %prev_odm_pipe102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %prev_odm_pipe102, align 8
  %65 = ptrtoint ptr %prev_odm_pipe105 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev_odm_pipe105, align 8
  %bottom_pipe116 = getelementptr inbounds %struct.pipe_ctx, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %bottom_pipe116 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bottom_pipe116, align 8
  %next_odm_pipe117 = getelementptr inbounds %struct.pipe_ctx, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %next_odm_pipe117 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %retval.0.i200, ptr %next_odm_pipe117, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then111, %land.lhs.true107.if.end119_crit_edge, %land.lhs.true104.if.end119_crit_edge, %if.end101.if.end119_crit_edge, %if.end20.if.end119_crit_edge
  %next_odm_pipe120 = getelementptr inbounds %struct.pipe_ctx, ptr %head_pipe.0206, i32 0, i32 11
  %70 = ptrtoint ptr %next_odm_pipe120 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %next_odm_pipe120, align 4
  %tobool16.not = icmp eq ptr %71, null
  br i1 %tobool16.not, label %while.end, label %if.end119.while.body_crit_edge

if.end119.while.body_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #20
  %72 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %plane_count, align 4
  %arrayidx122 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0203, i32 5, i32 %73
  %74 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %plane_state, ptr %arrayidx122, align 4
  %75 = load i32, ptr %plane_count, align 4
  %inc124 = add i32 %75, 1
  store i32 %inc124, ptr %plane_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then19, %if.then14, %if.then12, %if.then8
  %retval.0 = phi i1 [ false, %if.then8 ], [ false, %if.then12 ], [ false, %if.then19 ], [ true, %while.end ], [ false, %if.then14 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_plane_state_retain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_plane_state_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_remove_plane_from_context(ptr nocapture noundef readonly %dc, ptr noundef readnone %stream, ptr noundef readnone %plane_state, ptr noundef %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp134.not = icmp eq i8 %3, 0
  br i1 %cmp134.not, label %entry.if.then8_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.0135
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %5, %stream
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.if.then8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.if.then8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.end:                                          ; preds = %for.body
  %arrayidx5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0135
  %cmp6 = icmp eq ptr %arrayidx5, null
  br i1 %cmp6, label %for.end.if.then8_crit_edge, label %if.end9

for.end.if.then8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then8:                                         ; preds = %for.end.if.then8_crit_edge, %for.inc.if.then8_crit_edge, %entry.if.then8_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #18
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_count, align 4
  %i.1136 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1136)
  %cmp11137 = icmp sgt i32 %i.1136, -1
  br i1 %cmp11137, label %for.body13.lr.ph, label %if.end9.for.cond41.preheader_crit_edge

if.end9.for.cond41.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond41.preheader

for.body13.lr.ph:                                 ; preds = %if.end9
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body13

for.cond41.preheader:                             ; preds = %if.end38.for.cond41.preheader_crit_edge, %if.end9.for.cond41.preheader_crit_edge
  %plane_count = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0135, i32 2
  %8 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %plane_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp42139 = icmp sgt i32 %9, 0
  br i1 %cmp42139, label %for.cond41.preheader.for.body44_crit_edge, label %for.cond41.preheader.for.end54_crit_edge

for.cond41.preheader.for.end54_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end54

for.cond41.preheader.for.body44_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body44

for.body13:                                       ; preds = %if.end38.for.body13_crit_edge, %for.body13.lr.ph
  %i.1138 = phi i32 [ %i.1136, %for.body13.lr.ph ], [ %i.1, %if.end38.for.body13_crit_edge ]
  %arrayidx15 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.1138
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %cmp17 = icmp eq ptr %11, %plane_state
  br i1 %cmp17, label %if.then19, label %for.body13.if.end38_crit_edge

for.body13.if.end38_crit_edge:                    ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then19:                                        ; preds = %for.body13
  %top_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.1138, i32 9
  %12 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %top_pipe, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then19.if.end23_crit_edge, label %if.then20

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then20:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  %bottom_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.1138, i32 10
  %14 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bottom_pipe, align 8
  %bottom_pipe22 = getelementptr inbounds %struct.pipe_ctx, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %bottom_pipe22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %bottom_pipe22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then19.if.end23_crit_edge
  %bottom_pipe24 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.1138, i32 10
  %17 = ptrtoint ptr %bottom_pipe24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bottom_pipe24, align 8
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %land.lhs.true

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end23
  %19 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %top_pipe, align 4
  %tobool27.not = icmp eq ptr %20, null
  br i1 %tobool27.not, label %land.lhs.true.if.then35_crit_edge, label %if.then28

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then35

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %top_pipe31 = getelementptr inbounds %struct.pipe_ctx, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %top_pipe31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %top_pipe31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end23.if.end32_crit_edge
  %22 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %top_pipe, align 4
  %tobool34.not = icmp eq ptr %.pr, null
  br i1 %tobool34.not, label %if.end32.if.then35_crit_edge, label %if.else

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then35

if.then35:                                        ; preds = %if.end32.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx15, align 8
  br label %if.end38

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %24 = call ptr @memset(ptr %arrayidx15, i32 0, i32 640)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35, %for.body13.if.end38_crit_edge
  %i.1 = add i32 %i.1138, -1
  %cmp11 = icmp sgt i32 %i.1, -1
  br i1 %cmp11, label %if.end38.for.body13_crit_edge, label %if.end38.for.cond41.preheader_crit_edge

if.end38.for.cond41.preheader_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond41.preheader

if.end38.for.body13_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body13

for.body44:                                       ; preds = %for.inc52.for.body44_crit_edge, %for.cond41.preheader.for.body44_crit_edge
  %i.2140 = phi i32 [ %inc53, %for.inc52.for.body44_crit_edge ], [ 0, %for.cond41.preheader.for.body44_crit_edge ]
  %arrayidx45 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0135, i32 5, i32 %i.2140
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx45, align 4
  %cmp46 = icmp eq ptr %26, %plane_state
  br i1 %cmp46, label %if.then48, label %for.inc52

if.then48:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dc_plane_state_release(ptr noundef %plane_state) #18
  br label %for.end54

for.inc52:                                        ; preds = %for.body44
  %inc53 = add nuw nsw i32 %i.2140, 1
  %exitcond151.not = icmp eq i32 %inc53, %9
  br i1 %exitcond151.not, label %for.inc52.for.end54_crit_edge, label %for.inc52.for.body44_crit_edge

for.inc52.for.body44_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body44

for.inc52.for.end54_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end54

for.end54:                                        ; preds = %for.inc52.for.end54_crit_edge, %if.then48, %for.cond41.preheader.for.end54_crit_edge
  %i.2130 = phi i32 [ %i.2140, %if.then48 ], [ 0, %for.cond41.preheader.for.end54_crit_edge ], [ %9, %for.inc52.for.end54_crit_edge ]
  %27 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %plane_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2130, i32 %28)
  %cmp56 = icmp eq i32 %i.2130, %28
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #18
  br label %cleanup

if.end59:                                         ; preds = %for.end54
  %dec61 = add i32 %28, -1
  %29 = ptrtoint ptr %plane_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dec61, ptr %plane_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2130, i32 %dec61)
  %cmp64142 = icmp slt i32 %i.2130, %dec61
  br i1 %cmp64142, label %if.end59.for.body66_crit_edge, label %if.end59.for.end73_crit_edge

if.end59.for.end73_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end73

if.end59.for.body66_crit_edge:                    ; preds = %if.end59
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %if.end59.for.body66_crit_edge
  %i.3143 = phi i32 [ %add, %for.body66.for.body66_crit_edge ], [ %i.2130, %if.end59.for.body66_crit_edge ]
  %add = add nuw nsw i32 %i.3143, 1
  %arrayidx68 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0135, i32 5, i32 %add
  %30 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx68, align 4
  %arrayidx70 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0135, i32 5, i32 %i.3143
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx70, align 4
  %33 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %plane_count, align 4
  %cmp64 = icmp slt i32 %add, %34
  br i1 %cmp64, label %for.body66.for.body66_crit_edge, label %for.body66.for.end73_crit_edge

for.body66.for.end73_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end73

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body66

for.end73:                                        ; preds = %for.body66.for.end73_crit_edge, %if.end59.for.end73_crit_edge
  %.lcssa = phi i32 [ %dec61, %if.end59.for.end73_crit_edge ], [ %34, %for.body66.for.end73_crit_edge ]
  %arrayidx76 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0135, i32 5, i32 %.lcssa
  %35 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx76, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end73, %if.then58, %if.then8
  %retval.0 = phi i1 [ false, %if.then8 ], [ false, %if.then58 ], [ true, %for.end73 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_rem_all_planes_for_stream(ptr nocapture noundef readonly %dc, ptr noundef %stream, ptr noundef %context) local_unnamed_addr #2 align 64 {
entry:
  %del_planes = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %del_planes) #18
  %0 = call ptr @memset(ptr %del_planes, i32 0, i32 16)
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %1 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp53.not = icmp eq i8 %2, 0
  br i1 %cmp53.not, label %entry.if.then8_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.054
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %4, %stream
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.if.then8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.if.then8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.end:                                          ; preds = %for.body
  %arrayidx5 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.054
  %cmp6 = icmp eq ptr %arrayidx5, null
  br i1 %cmp6, label %for.end.if.then8_crit_edge, label %if.end9

for.end.if.then8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then8:                                         ; preds = %for.end.if.then8_crit_edge, %for.inc.if.then8_crit_edge, %entry.if.then8_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, ptr noundef %stream) #18
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %plane_count = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.054, i32 2
  %5 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %plane_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1155 = icmp sgt i32 %6, 0
  br i1 %cmp1155, label %for.body22.preheader, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body22.preheader:                             ; preds = %if.end9
  %7 = mul nuw nsw i32 %i.054, 48
  %8 = add nuw nsw i32 %7, 52
  %uglygep = getelementptr i8, ptr %context, i32 %8
  %9 = shl nuw i32 %6, 2
  %10 = call ptr @memcpy(ptr %del_planes, ptr %uglygep, i32 %9)
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.preheader
  %i.258 = phi i32 [ 0, %for.body22.preheader ], [ %inc27, %for.body22.for.body22_crit_edge ]
  %arrayidx23 = getelementptr [4 x ptr], ptr %del_planes, i32 0, i32 %i.258
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx23, align 4
  %call = tail call zeroext i1 @dc_remove_plane_from_context(ptr noundef %dc, ptr noundef %stream, ptr noundef %12, ptr noundef %context)
  %call.not = xor i1 %call, true
  %inc27 = add nuw nsw i32 %i.258, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27, i32 %6)
  %exitcond61.not = icmp eq i32 %inc27, %6
  %or.cond = select i1 %call.not, i1 true, i1 %exitcond61.not
  br i1 %or.cond, label %for.body22.cleanup_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body22

for.body22.cleanup_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.body22.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8
  %retval.0 = phi i1 [ false, %if.then8 ], [ true, %if.end9.cleanup_crit_edge ], [ %call, %for.body22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %del_planes) #18
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_add_all_planes_for_stream(ptr nocapture noundef readonly %dc, ptr noundef %stream, ptr nocapture noundef readonly %plane_states, i32 noundef %plane_count, ptr noundef %context) local_unnamed_addr #2 align 64 {
entry:
  %set = alloca %struct.dc_validation_set, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %set) #18
  %0 = getelementptr inbounds i8, ptr %set, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %stream, ptr %set, align 4
  %conv = trunc i32 %plane_count to i8
  %plane_count2 = getelementptr inbounds %struct.dc_validation_set, ptr %set, i32 0, i32 2
  %3 = ptrtoint ptr %plane_count2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %plane_count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plane_count)
  %cmp11 = icmp sgt i32 %plane_count, 0
  br i1 %cmp11, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %uglygep = getelementptr inbounds i8, ptr %set, i32 4
  %4 = shl nuw i32 %plane_count, 2
  %5 = call ptr @memcpy(ptr %uglygep, ptr %plane_states, i32 %4)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set, align 4
  %cmp2.not.i = icmp eq ptr %7, %stream
  br i1 %cmp2.not.i, label %for.cond6.preheader.i, label %if.then4.i

for.cond6.preheader.i:                            ; preds = %for.end
  %8 = ptrtoint ptr %plane_count2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %plane_count2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp83.not.i = icmp eq i8 %9, 0
  br i1 %cmp83.not.i, label %for.cond6.preheader.i.add_all_planes_for_stream.exit_crit_edge, label %for.body10.i.preheader

for.cond6.preheader.i.add_all_planes_for_stream.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %add_all_planes_for_stream.exit

for.body10.i.preheader:                           ; preds = %for.cond6.preheader.i
  %conv.i = zext i8 %9 to i32
  br label %for.body10.i

if.then4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, ptr noundef %stream) #18
  br label %add_all_planes_for_stream.exit

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body10.i.preheader
  %j.04.i = phi i32 [ 0, %for.body10.i.preheader ], [ %inc16.i, %for.body10.i.for.body10.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.dc_validation_set, ptr %set, i32 0, i32 1, i32 %j.04.i
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12.i, align 4
  %call.i = tail call zeroext i1 @dc_add_plane_to_context(ptr noundef %dc, ptr noundef %stream, ptr noundef %11, ptr noundef %context) #18
  %call.i.not = xor i1 %call.i, true
  %inc16.i = add nuw nsw i32 %j.04.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16.i, i32 %conv.i)
  %exitcond.not = icmp eq i32 %inc16.i, %conv.i
  %or.cond = select i1 %call.i.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body10.i.add_all_planes_for_stream.exit_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body10.i

for.body10.i.add_all_planes_for_stream.exit_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %add_all_planes_for_stream.exit

add_all_planes_for_stream.exit:                   ; preds = %for.body10.i.add_all_planes_for_stream.exit_crit_edge, %if.then4.i, %for.cond6.preheader.i.add_all_planes_for_stream.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.then4.i ], [ true, %for.cond6.preheader.i.add_all_planes_for_stream.exit_crit_edge ], [ %call.i, %for.body10.i.add_all_planes_for_stream.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %set) #18
  ret i1 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dc_is_stream_unchanged(ptr noundef readonly %old_stream, ptr noundef readonly %stream) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %old_stream, %stream
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp eq ptr %old_stream, null
  %cmp2.i = icmp eq ptr %stream, null
  %or.cond.i = or i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.end.i.return_crit_edge, label %if.end.i.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i.i:                                       ; preds = %if.end.i
  %output_color_space.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %old_stream, i32 0, i32 20
  %0 = ptrtoint ptr %output_color_space.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_color_space.i.i, align 4
  %output_color_space1.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 20
  %2 = ptrtoint ptr %output_color_space1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_color_space1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2.not.i.i = icmp eq i32 %1, %3
  br i1 %cmp2.not.i.i, label %is_timing_changed.exit.i, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

is_timing_changed.exit.i:                         ; preds = %if.end.i.i
  %timing.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %old_stream, i32 0, i32 5
  %timing5.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(128) %timing.i.i, ptr noundef dereferenceable(128) %timing5.i.i, i32 128) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp6.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp6.i.not.i, label %are_stream_backends_same.exit, label %is_timing_changed.exit.i.return_crit_edge

is_timing_changed.exit.i.return_crit_edge:        ; preds = %is_timing_changed.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

are_stream_backends_same.exit:                    ; preds = %is_timing_changed.exit.i
  %dpms_off.i = getelementptr inbounds %struct.dc_stream_state, ptr %old_stream, i32 0, i32 37
  %4 = ptrtoint ptr %dpms_off.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpms_off.i, align 8, !range !84
  %dpms_off7.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 37
  %6 = ptrtoint ptr %dpms_off7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dpms_off7.i, align 8, !range !84
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp10.not.i = icmp eq i8 %5, %7
  br i1 %cmp10.not.i, label %are_stream_backends_same.exit.if.end_crit_edge, label %are_stream_backends_same.exit.return_crit_edge

are_stream_backends_same.exit.return_crit_edge:   ; preds = %are_stream_backends_same.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

are_stream_backends_same.exit.if.end_crit_edge:   ; preds = %are_stream_backends_same.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %are_stream_backends_same.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ignore_msa_timing_param = getelementptr inbounds %struct.dc_stream_state, ptr %old_stream, i32 0, i32 24
  %8 = ptrtoint ptr %ignore_msa_timing_param to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ignore_msa_timing_param, align 1, !range !84
  %ignore_msa_timing_param1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 24
  %10 = ptrtoint ptr %ignore_msa_timing_param1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ignore_msa_timing_param1, align 1, !range !84
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.not = icmp eq i8 %9, %11
  br i1 %cmp.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %mode_count = getelementptr inbounds %struct.dc_stream_state, ptr %old_stream, i32 0, i32 13, i32 8
  %12 = ptrtoint ptr %mode_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_count, align 4
  %mode_count8 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 13, i32 8
  %14 = ptrtoint ptr %mode_count8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_count8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9.not = icmp eq i32 %13, %15
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %are_stream_backends_same.exit.return_crit_edge, %is_timing_changed.exit.i.return_crit_edge, %if.end.i.i.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i1 [ false, %are_stream_backends_same.exit.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %cmp9.not, %if.end6 ], [ false, %if.end.i.return_crit_edge ], [ false, %is_timing_changed.exit.i.return_crit_edge ], [ false, %if.end.i.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dc_is_stream_scaling_unchanged(ptr noundef readonly %old_stream, ptr noundef readonly %stream) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %old_stream, %stream
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %old_stream, null
  %cmp2 = icmp eq ptr %stream, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end4:                                          ; preds = %if.end
  %src = getelementptr inbounds %struct.dc_stream_state, ptr %old_stream, i32 0, i32 10
  %src5 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %src, ptr noundef dereferenceable(16) %src5, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp6.not = icmp eq i32 %bcmp, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %dst = getelementptr inbounds %struct.dc_stream_state, ptr %old_stream, i32 0, i32 11
  %dst9 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 11
  %bcmp20 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst, ptr noundef dereferenceable(16) %dst9, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp20)
  %cmp11.not = icmp eq i32 %bcmp20, 0
  br label %return

return:                                           ; preds = %if.end8, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end4.return_crit_edge ], [ %cmp11.not, %if.end8 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_audio_usage(ptr nocapture noundef writeonly %res_ctx, ptr nocapture noundef readonly %pool, ptr noundef readnone %audio, i1 noundef zeroext %acquired) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %acquired to i8
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 33
  %0 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 32, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, %audio
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx2 = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 2, i32 %i.09
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %5 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %audio_count, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_add_stream_to_ctx(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %stream) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %1 to i32
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %2 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_pool, align 8
  %timing_generator_count = getelementptr inbounds %struct.resource_pool, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %timing_generator_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timing_generator_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp ugt i32 %5, %conv
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %stream) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %stream, ptr %arrayidx, align 4
  tail call void @dc_stream_retain(ptr noundef %stream) #18
  %7 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stream_count, align 8
  %inc = add i8 %8, 1
  store i8 %inc, ptr %stream_count, align 8
  %9 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %10, i32 0, i32 40
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs, align 4
  %add_stream_to_ctx = getelementptr inbounds %struct.resource_funcs, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %add_stream_to_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add_stream_to_ctx, align 4
  %call5 = tail call i32 %14(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %stream) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  br i1 %cmp6.not, label %if.end.cleanup_crit_edge, label %do.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %stream, i32 noundef %call5) #24
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call5, %do.end11 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_stream_retain(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_remove_stream_from_ctx(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %stream) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 4
  %call = tail call ptr @resource_get_head_pipe_for_stream(ptr noundef %res_ctx, ptr noundef %stream)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, ptr noundef %stream) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_odm_pipe, align 4
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_enc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.rhs, label %if.end.do.end48_crit_edge

if.end.do.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end48

land.rhs:                                         ; preds = %if.end
  %.b170 = load i1, ptr @dc_remove_stream_from_ctx.__already_done, align 1
  br i1 %.b170, label %land.rhs.if.then45_crit_edge, label %if.then11, !prof !85

land.rhs.if.then45_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then45

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_remove_stream_from_ctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1961, i32 noundef 9, ptr noundef null) #18
  br label %if.then45

if.then45:                                        ; preds = %if.then11, %land.rhs.if.then45_crit_edge
  tail call void @kgdb_breakpoint() #18
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %if.end.do.end48_crit_edge
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool, align 8
  %6 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream_enc, align 4
  %stream_enc_count.i = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %stream_enc_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream_enc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not.i = icmp eq i32 %9, 0
  br i1 %cmp9.not.i, label %do.end48.update_stream_engine_usage.exit_crit_edge, label %do.end48.for.body.i_crit_edge

do.end48.for.body.i_crit_edge:                    ; preds = %do.end48
  br label %for.body.i

do.end48.update_stream_engine_usage.exit_crit_edge: ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %update_stream_engine_usage.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end48.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end48.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %5, i32 0, i32 7, i32 %i.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %11, %7
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx3.i = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 4, i32 1, i32 %i.010.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx3.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %13 = ptrtoint ptr %stream_enc_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream_enc_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.update_stream_engine_usage.exit_crit_edge

for.inc.i.update_stream_engine_usage.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %update_stream_engine_usage.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

update_stream_engine_usage.exit:                  ; preds = %for.inc.i.update_stream_engine_usage.exit_crit_edge, %do.end48.update_stream_engine_usage.exit_crit_edge
  %audio = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %audio, align 8
  %tobool53.not = icmp eq ptr %16, null
  br i1 %tobool53.not, label %update_stream_engine_usage.exit.if.end59_crit_edge, label %if.then54

update_stream_engine_usage.exit.if.end59_crit_edge: ; preds = %update_stream_engine_usage.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

if.then54:                                        ; preds = %update_stream_engine_usage.exit
  %17 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %res_pool, align 8
  %audio_count.i = getelementptr inbounds %struct.resource_pool, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %audio_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %audio_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp8.not.i = icmp eq i32 %20, 0
  br i1 %cmp8.not.i, label %if.then54.if.end59_crit_edge, label %if.then54.for.body.i173_crit_edge

if.then54.for.body.i173_crit_edge:                ; preds = %if.then54
  br label %for.body.i173

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

for.body.i173:                                    ; preds = %for.inc.i177.for.body.i173_crit_edge, %if.then54.for.body.i173_crit_edge
  %i.09.i = phi i32 [ %inc.i175, %for.inc.i177.for.body.i173_crit_edge ], [ 0, %if.then54.for.body.i173_crit_edge ]
  %arrayidx.i172 = getelementptr %struct.resource_pool, ptr %18, i32 0, i32 32, i32 %i.09.i
  %21 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i172, align 4
  %cmp1.i = icmp eq ptr %22, %16
  br i1 %cmp1.i, label %if.then.i174, label %for.body.i173.for.inc.i177_crit_edge

for.body.i173.for.inc.i177_crit_edge:             ; preds = %for.body.i173
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i177

if.then.i174:                                     ; preds = %for.body.i173
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx2.i = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 4, i32 2, i32 %i.09.i
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx2.i, align 1
  br label %for.inc.i177

for.inc.i177:                                     ; preds = %if.then.i174, %for.body.i173.for.inc.i177_crit_edge
  %inc.i175 = add nuw i32 %i.09.i, 1
  %24 = ptrtoint ptr %audio_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %audio_count.i, align 4
  %cmp.i176 = icmp ult i32 %inc.i175, %25
  br i1 %cmp.i176, label %for.inc.i177.for.body.i173_crit_edge, label %for.inc.i177.if.end59_crit_edge

for.inc.i177.if.end59_crit_edge:                  ; preds = %for.inc.i177
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

for.inc.i177.for.body.i173_crit_edge:             ; preds = %for.inc.i177
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i173

if.end59:                                         ; preds = %for.inc.i177.if.end59_crit_edge, %if.then54.if.end59_crit_edge, %update_stream_engine_usage.exit.if.end59_crit_edge
  %26 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %res_pool, align 8
  %clock_source = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 5
  %28 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clock_source, align 8
  %clk_src_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %27, i32 0, i32 31
  %30 = ptrtoint ptr %clk_src_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clk_src_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp6.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp6.not.i.i, label %if.end59.if.end.i_crit_edge, label %if.end59.for.body.i.i_crit_edge

if.end59.for.body.i.i_crit_edge:                  ; preds = %if.end59
  br label %for.body.i.i

if.end59.if.end.i_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end59.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end59.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.resource_pool, ptr %27, i32 0, i32 30, i32 %i.07.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %33, %29
  br i1 %cmp1.i.i, label %find_matching_clock_source.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %31
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

find_matching_clock_source.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i.i)
  %cmp.i178 = icmp sgt i32 %i.07.i.i, -1
  br i1 %cmp.i178, label %if.then.i180, label %find_matching_clock_source.exit.i.if.end.i_crit_edge

find_matching_clock_source.exit.i.if.end.i_crit_edge: ; preds = %find_matching_clock_source.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i180:                                     ; preds = %find_matching_clock_source.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i179 = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 4, i32 3, i32 %i.07.i.i
  %34 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i179, align 1
  %dec.i = add i8 %35, -1
  store i8 %dec.i, ptr %arrayidx.i179, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i180, %find_matching_clock_source.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.end59.if.end.i_crit_edge
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %27, i32 0, i32 29
  %36 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dp_clock_source.i, align 4
  %cmp1.i181 = icmp eq ptr %37, %29
  br i1 %cmp1.i181, label %if.then2.i, label %if.end.i.resource_unreference_clock_source.exit_crit_edge

if.end.i.resource_unreference_clock_source.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %resource_unreference_clock_source.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %dp_clock_source_ref_count.i = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %dp_clock_source_ref_count.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dp_clock_source_ref_count.i, align 1
  %dec3.i = add i8 %39, -1
  store i8 %dec3.i, ptr %dp_clock_source_ref_count.i, align 1
  br label %resource_unreference_clock_source.exit

resource_unreference_clock_source.exit:           ; preds = %if.then2.i, %if.end.i.resource_unreference_clock_source.exit_crit_edge
  %40 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %41, i32 0, i32 40
  %42 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %funcs, align 4
  %remove_stream_from_ctx = getelementptr inbounds %struct.resource_funcs, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %remove_stream_from_ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %remove_stream_from_ctx, align 4
  %tobool63.not = icmp eq ptr %45, null
  br i1 %tobool63.not, label %resource_unreference_clock_source.exit.if.end69_crit_edge, label %if.then64

resource_unreference_clock_source.exit.if.end69_crit_edge: ; preds = %resource_unreference_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then64:                                        ; preds = %resource_unreference_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call68 = tail call i32 %45(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %stream) #18
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %resource_unreference_clock_source.exit.if.end69_crit_edge
  %tobool70.not183 = icmp eq ptr %1, null
  br i1 %tobool70.not183, label %if.end69.while.end_crit_edge, label %if.end69.while.body_crit_edge

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  br label %while.body

if.end69.while.end_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end69.while.body_crit_edge
  %odm_pipe.0184 = phi ptr [ %47, %while.body.while.body_crit_edge ], [ %1, %if.end69.while.body_crit_edge ]
  %next_odm_pipe72 = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.0184, i32 0, i32 11
  %46 = ptrtoint ptr %next_odm_pipe72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %next_odm_pipe72, align 4
  %48 = call ptr @memset(ptr %odm_pipe.0184, i32 0, i32 640)
  %tobool70.not = icmp eq ptr %47, null
  br i1 %tobool70.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end69.while.end_crit_edge
  %49 = call ptr @memset(ptr %call, i32 0, i32 640)
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 2
  %50 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp185.not = icmp eq i8 %51, 0
  br i1 %cmp185.not, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end.for.body_crit_edge
  %i.0186 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %while.end.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %i.0186
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %cmp74 = icmp eq ptr %53, %stream
  br i1 %cmp74, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %while.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.end.for.end_crit_edge ], [ %i.0186, %for.body.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  %arrayidx79 = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %i.0.lcssa
  %54 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx79, align 4
  %cmp80.not = icmp eq ptr %55, %stream
  br i1 %cmp80.not, label %if.end86, label %do.body83

do.body83:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef %stream) #18
  br label %cleanup

if.end86:                                         ; preds = %for.end
  tail call void @dc_stream_release(ptr noundef %stream) #18
  %56 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %stream_count, align 8
  %dec = add i8 %57, -1
  store i8 %dec, ptr %stream_count, align 8
  %conv92188 = zext i8 %dec to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %conv92188)
  %cmp93189 = icmp ult i32 %i.0.lcssa, %conv92188
  br i1 %cmp93189, label %if.end86.for.body95_crit_edge, label %if.end86.for.end106_crit_edge

if.end86.for.end106_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end106

if.end86.for.body95_crit_edge:                    ; preds = %if.end86
  br label %for.body95

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %if.end86.for.body95_crit_edge
  %i.1190 = phi i32 [ %add, %for.body95.for.body95_crit_edge ], [ %i.0.lcssa, %if.end86.for.body95_crit_edge ]
  %add = add nuw nsw i32 %i.1190, 1
  %arrayidx97 = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %add
  %58 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx97, align 4
  %arrayidx99 = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %i.1190
  %60 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %arrayidx99, align 4
  %arrayidx100 = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 1, i32 %i.1190
  %arrayidx103 = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 1, i32 %add
  %61 = call ptr @memcpy(ptr %arrayidx100, ptr %arrayidx103, i32 48)
  %62 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %stream_count, align 8
  %conv92 = zext i8 %63 to i32
  %cmp93 = icmp ult i32 %add, %conv92
  br i1 %cmp93, label %for.body95.for.body95_crit_edge, label %for.end106.loopexit

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body95

for.end106.loopexit:                              ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #20
  %conv92.le = zext i8 %63 to i32
  br label %for.end106

for.end106:                                       ; preds = %for.end106.loopexit, %if.end86.for.end106_crit_edge
  %conv92.le.pre-phi = phi i32 [ %conv92188, %if.end86.for.end106_crit_edge ], [ %conv92.le, %for.end106.loopexit ]
  %arrayidx109 = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %conv92.le.pre-phi
  %64 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx109, align 4
  %65 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %stream_count, align 8
  %idxprom112 = zext i8 %66 to i32
  %arrayidx113 = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 1, i32 %idxprom112
  %67 = call ptr @memset(ptr %arrayidx113, i32 0, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %for.end106, %do.body83, %do.body
  %retval.0 = phi i32 [ -1, %do.body83 ], [ 1, %for.end106 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_stream_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @resource_map_pool_resources(ptr noundef %dc, ptr noundef %context, ptr noundef %stream) local_unnamed_addr #2 align 64 {
entry:
  %s.i = alloca %struct.mpcc_state, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  tail call fastcc void @calculate_phy_pix_clks(ptr noundef %stream)
  %allow_seamless_boot_optimization.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %allow_seamless_boot_optimization.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %allow_seamless_boot_optimization.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.mark_seamless_boot_stream.exit_crit_edge, label %land.lhs.true.i

entry.mark_seamless_boot_stream.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mark_seamless_boot_stream.exit

land.lhs.true.i:                                  ; preds = %entry
  %ctx.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 8
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_bios.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %is_accelerated_mode.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %is_accelerated_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_accelerated_mode.i, align 4
  %call.i = tail call zeroext i1 %11(ptr noundef %7) #18
  br i1 %call.i, label %land.lhs.true.i.mark_seamless_boot_stream.exit_crit_edge, label %if.then.i

land.lhs.true.i.mark_seamless_boot_stream.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mark_seamless_boot_stream.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 8
  %timing.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %call1.i = tail call zeroext i1 @dc_validate_seamless_boot_timing(ptr noundef %dc, ptr noundef %13, ptr noundef %timing.i) #18
  br i1 %call1.i, label %if.then2.i, label %if.then.i.mark_seamless_boot_stream.exit_crit_edge

if.then.i.mark_seamless_boot_stream.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mark_seamless_boot_stream.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %apply_seamless_boot_optimization.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 51
  %14 = ptrtoint ptr %apply_seamless_boot_optimization.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %apply_seamless_boot_optimization.i, align 1
  br label %mark_seamless_boot_stream.exit

mark_seamless_boot_stream.exit:                   ; preds = %if.then2.i, %if.then.i.mark_seamless_boot_stream.exit_crit_edge, %land.lhs.true.i.mark_seamless_boot_stream.exit_crit_edge, %entry.mark_seamless_boot_stream.exit_crit_edge
  %apply_seamless_boot_optimization = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 51
  %15 = ptrtoint ptr %apply_seamless_boot_optimization to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %apply_seamless_boot_optimization, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %mark_seamless_boot_stream.exit.if.then5_crit_edge, label %if.then

mark_seamless_boot_stream.exit.if.then5_crit_edge: ; preds = %mark_seamless_boot_stream.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.then:                                          ; preds = %mark_seamless_boot_stream.exit
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %link1.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %17 = ptrtoint ptr %link1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link1.i, align 4
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %18, i32 0, i32 38
  %19 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link_enc.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %is_dig_enabled.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %is_dig_enabled.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %is_dig_enabled.i, align 4
  %call.i149 = tail call zeroext i1 %24(ptr noundef %20) #18
  br i1 %call.i149, label %if.end.i, label %if.then.if.then1_crit_edge

if.then.if.then1_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1

if.end.i:                                         ; preds = %if.then
  %25 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_enc.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %get_dig_frontend.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %get_dig_frontend.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_dig_frontend.i, align 4
  %call6.i = tail call i32 %30(ptr noundef %26) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp.i = icmp eq i32 %call6.i, -1
  br i1 %cmp.i, label %if.end.i.if.then1_crit_edge, label %for.cond.preheader.i

if.end.i.if.then1_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1

for.cond.preheader.i:                             ; preds = %if.end.i
  %stream_enc_count.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %stream_enc_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream_enc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp9167.not.i = icmp eq i32 %32, 0
  br i1 %cmp9167.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0168.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 7, i32 %i.0168.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %id.i = getelementptr inbounds %struct.stream_encoder, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %call6.i)
  %cmp10.i = icmp eq i32 %36, %call6.i
  br i1 %cmp10.i, label %if.then11.i, label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %dig_source_otg.i = getelementptr inbounds %struct.stream_encoder_funcs, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %dig_source_otg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dig_source_otg.i, align 4
  %call17.i = tail call i32 %40(ptr noundef %34) #18
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0168.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %32
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then11.i, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0165.i = phi i32 [ %i.0168.i, %if.then11.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %32, %for.inc.i.for.end.i_crit_edge ]
  %tg_inst.0.i = phi i32 [ %call17.i, %if.then11.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %41 = ptrtoint ptr %stream_enc_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stream_enc_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0165.i, i32 %42)
  %cmp20.i = icmp eq i32 %i.0165.i, %42
  br i1 %cmp20.i, label %for.end.i.if.then1_crit_edge, label %if.end22.i

for.end.i.if.then1_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1

if.end22.i:                                       ; preds = %for.end.i
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 26
  %43 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %timing_generator_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tg_inst.0.i, i32 %44)
  %cmp23.not.i = icmp ult i32 %tg_inst.0.i, %44
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end22.i.if.then1_crit_edge

if.end22.i.if.then1_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1

if.end25.i:                                       ; preds = %if.end22.i
  %stream27.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 1
  %45 = ptrtoint ptr %stream27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stream27.i, align 4
  %tobool.not.i150 = icmp eq ptr %46, null
  br i1 %tobool.not.i150, label %if.then28.i, label %if.end25.i.if.then1_crit_edge

if.end25.i.if.then1_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1

if.then28.i:                                      ; preds = %if.end25.i
  %arrayidx32.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 6, i32 %tg_inst.0.i
  %47 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx32.i, align 4
  %stream_res.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 3
  %tg.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 3, i32 2
  %49 = ptrtoint ptr %tg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %tg.i, align 8
  %arrayidx33.i = getelementptr [6 x ptr], ptr %1, i32 0, i32 %tg_inst.0.i
  %50 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx33.i, align 4
  %mi.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 2, i32 2
  %52 = ptrtoint ptr %mi.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %mi.i, align 4
  %arrayidx34.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 1, i32 %tg_inst.0.i
  %53 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx34.i, align 4
  %hubp.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 2, i32 1
  %55 = ptrtoint ptr %hubp.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %hubp.i, align 8
  %arrayidx36.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 2, i32 %tg_inst.0.i
  %56 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx36.i, align 4
  %ipp.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 2, i32 3
  %58 = ptrtoint ptr %ipp.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %ipp.i, align 8
  %arrayidx38.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 3, i32 %tg_inst.0.i
  %59 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx38.i, align 4
  %xfm.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 2, i32 4
  %61 = ptrtoint ptr %xfm.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %xfm.i, align 4
  %arrayidx40.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 4, i32 %tg_inst.0.i
  %62 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx40.i, align 4
  %dpp.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 2, i32 5
  %64 = ptrtoint ptr %dpp.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %dpp.i, align 8
  %arrayidx42.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 5, i32 %tg_inst.0.i
  %65 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx42.i, align 4
  %67 = ptrtoint ptr %stream_res.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %stream_res.i, align 8
  %68 = load ptr, ptr %arrayidx40.i, align 4
  %tobool46.not.i = icmp eq ptr %68, null
  br i1 %tobool46.not.i, label %if.then28.i.acquire_resource_from_hw_enabled_state.exit_crit_edge, label %if.then47.i

if.then28.i.acquire_resource_from_hw_enabled_state.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %acquire_resource_from_hw_enabled_state.exit

if.then47.i:                                      ; preds = %if.then28.i
  %inst50.i = getelementptr inbounds %struct.dpp, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %inst50.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %inst50.i, align 8
  %conv.i = trunc i32 %70 to i8
  %mpcc_inst.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 2, i32 6
  %71 = ptrtoint ptr %mpcc_inst.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i, ptr %mpcc_inst.i, align 4
  %mpc.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 9
  %72 = ptrtoint ptr %mpc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mpc.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %tobool53.not.i = icmp eq ptr %77, null
  br i1 %tobool53.not.i, label %if.then47.i.acquire_resource_from_hw_enabled_state.exit_crit_edge, label %if.then54.i

if.then47.i.acquire_resource_from_hw_enabled_state.exit_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %acquire_resource_from_hw_enabled_state.exit

if.then54.i:                                      ; preds = %if.then47.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %s.i) #18
  %78 = call ptr @memset(ptr %s.i, i32 0, i32 36)
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %73, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %conv61.i = and i32 %70, 255
  call void %82(ptr noundef %73, i32 noundef %conv61.i, ptr noundef nonnull %s.i) #18
  %dpp_id.i = getelementptr inbounds %struct.mpcc_state, ptr %s.i, i32 0, i32 1
  %83 = ptrtoint ptr %dpp_id.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dpp_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %84)
  %cmp62.i = icmp ult i32 %84, 6
  br i1 %cmp62.i, label %if.then64.i, label %if.then54.i.if.end71.i_crit_edge

if.then54.i.if.end71.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end71.i

if.then64.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #20
  %85 = ptrtoint ptr %mpc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mpc.i, align 4
  %87 = ptrtoint ptr %mpcc_inst.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mpcc_inst.i, align 4
  %idxprom.i = zext i8 %88 to i32
  %dpp_id70.i = getelementptr %struct.mpc, ptr %86, i32 0, i32 2, i32 %idxprom.i, i32 1
  %89 = ptrtoint ptr %dpp_id70.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %84, ptr %dpp_id70.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then64.i, %if.then54.i.if.end71.i_crit_edge
  %bot_mpcc_id.i = getelementptr inbounds %struct.mpcc_state, ptr %s.i, i32 0, i32 2
  %90 = ptrtoint ptr %bot_mpcc_id.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bot_mpcc_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %91)
  %cmp72.i = icmp ult i32 %91, 6
  br i1 %cmp72.i, label %if.then74.i, label %if.end71.i.if.end85.i_crit_edge

if.end71.i.if.end85.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85.i

if.then74.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #20
  %92 = ptrtoint ptr %mpc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mpc.i, align 4
  %arrayidx78.i = getelementptr %struct.mpc, ptr %93, i32 0, i32 2, i32 %91
  %94 = ptrtoint ptr %mpcc_inst.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mpcc_inst.i, align 4
  %idxprom83.i = zext i8 %95 to i32
  %mpcc_bot.i = getelementptr %struct.mpc, ptr %93, i32 0, i32 2, i32 %idxprom83.i, i32 2
  %96 = ptrtoint ptr %mpcc_bot.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx78.i, ptr %mpcc_bot.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then74.i, %if.end71.i.if.end85.i_crit_edge
  %97 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %98)
  %cmp86.i = icmp ult i32 %98, 6
  br i1 %cmp86.i, label %if.then88.i, label %if.end85.i.if.end93.i_crit_edge

if.end85.i.if.end93.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end93.i

if.then88.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #20
  %99 = ptrtoint ptr %stream_res.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stream_res.i, align 8
  %mpc_tree_params.i = getelementptr inbounds %struct.output_pixel_processor, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %mpc_tree_params.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %98, ptr %mpc_tree_params.i, align 8
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then88.i, %if.end85.i.if.end93.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %s.i) #18
  br label %acquire_resource_from_hw_enabled_state.exit

acquire_resource_from_hw_enabled_state.exit:      ; preds = %if.end93.i, %if.then47.i.acquire_resource_from_hw_enabled_state.exit_crit_edge, %if.then28.i.acquire_resource_from_hw_enabled_state.exit_crit_edge
  %conv96.i = trunc i32 %tg_inst.0.i to i8
  %pipe_idx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %tg_inst.0.i, i32 7
  %102 = ptrtoint ptr %pipe_idx.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv96.i, ptr %pipe_idx.i, align 8
  %103 = ptrtoint ptr %stream27.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %stream, ptr %stream27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tg_inst.0.i)
  %cmp = icmp slt i32 %tg_inst.0.i, 0
  br i1 %cmp, label %acquire_resource_from_hw_enabled_state.exit.if.then1_crit_edge, label %acquire_resource_from_hw_enabled_state.exit.lor.lhs.false_crit_edge

acquire_resource_from_hw_enabled_state.exit.lor.lhs.false_crit_edge: ; preds = %acquire_resource_from_hw_enabled_state.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

acquire_resource_from_hw_enabled_state.exit.if.then1_crit_edge: ; preds = %acquire_resource_from_hw_enabled_state.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1

if.then1:                                         ; preds = %acquire_resource_from_hw_enabled_state.exit.if.then1_crit_edge, %if.end25.i.if.then1_crit_edge, %if.end22.i.if.then1_crit_edge, %for.end.i.if.then1_crit_edge, %if.end.i.if.then1_crit_edge, %if.then.if.then1_crit_edge
  %104 = ptrtoint ptr %apply_seamless_boot_optimization to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %apply_seamless_boot_optimization, align 1
  br label %if.then5

if.then5:                                         ; preds = %if.then1, %mark_seamless_boot_stream.exit.if.then5_crit_edge
  %res_ctx6 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 19
  %105 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp62.not.i = icmp eq i32 %106, 0
  br i1 %cmp62.not.i, label %if.then5.cleanup_crit_edge, label %if.then5.for.body.i152_crit_edge

if.then5.for.body.i152_crit_edge:                 ; preds = %if.then5
  br label %for.body.i152

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.i152:                                    ; preds = %for.inc.i167.for.body.i152_crit_edge, %if.then5.for.body.i152_crit_edge
  %i.063.i = phi i32 [ %inc.i165, %for.inc.i167.for.body.i152_crit_edge ], [ 0, %if.then5.for.body.i152_crit_edge ]
  %stream1.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 1
  %107 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %stream1.i, align 4
  %tobool.not.i151 = icmp eq ptr %108, null
  br i1 %tobool.not.i151, label %if.then.i160, label %for.inc.i167

if.then.i160:                                     ; preds = %for.body.i152
  %arrayidx5.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 6, i32 %i.063.i
  %109 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx5.i, align 4
  %stream_res.i153 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 3
  %tg.i154 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 3, i32 2
  %111 = ptrtoint ptr %tg.i154 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %tg.i154, align 8
  %arrayidx6.i = getelementptr [6 x ptr], ptr %1, i32 0, i32 %i.063.i
  %112 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx6.i, align 4
  %mi.i155 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 2, i32 2
  %114 = ptrtoint ptr %mi.i155 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %mi.i155, align 4
  %arrayidx7.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 1, i32 %i.063.i
  %115 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx7.i, align 4
  %hubp.i156 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 2, i32 1
  %117 = ptrtoint ptr %hubp.i156 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %hubp.i156, align 8
  %arrayidx9.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 2, i32 %i.063.i
  %118 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx9.i, align 4
  %ipp.i157 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 2, i32 3
  %120 = ptrtoint ptr %ipp.i157 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %ipp.i157, align 8
  %arrayidx11.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 3, i32 %i.063.i
  %121 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx11.i, align 4
  %xfm.i158 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 2, i32 4
  %123 = ptrtoint ptr %xfm.i158 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %xfm.i158, align 4
  %arrayidx13.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 4, i32 %i.063.i
  %124 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx13.i, align 4
  %dpp.i159 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 2, i32 5
  %126 = ptrtoint ptr %dpp.i159 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %dpp.i159, align 8
  %arrayidx15.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 5, i32 %i.063.i
  %127 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx15.i, align 4
  %129 = ptrtoint ptr %stream_res.i153 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %stream_res.i153, align 8
  %130 = load ptr, ptr %arrayidx13.i, align 4
  %tobool19.not.i = icmp eq ptr %130, null
  br i1 %tobool19.not.i, label %if.then.i160.if.end8_crit_edge, label %if.then20.i

if.then.i160.if.end8_crit_edge:                   ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then20.i:                                      ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #20
  %inst.i = getelementptr inbounds %struct.dpp, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %inst.i, align 8
  %conv.i161 = trunc i32 %132 to i8
  %mpcc_inst.i162 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 2, i32 6
  %133 = ptrtoint ptr %mpcc_inst.i162 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv.i161, ptr %mpcc_inst.i162, align 4
  br label %if.end8

for.inc.i167:                                     ; preds = %for.body.i152
  %inc.i165 = add nuw i32 %i.063.i, 1
  %exitcond.not.i166 = icmp eq i32 %inc.i165, %106
  br i1 %exitcond.not.i166, label %for.inc.i167.cleanup_crit_edge, label %for.inc.i167.for.body.i152_crit_edge

for.inc.i167.for.body.i152_crit_edge:             ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i152

for.inc.i167.cleanup_crit_edge:                   ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.then20.i, %if.then.i160.if.end8_crit_edge
  %conv24.i = trunc i32 %i.063.i to i8
  %pipe_idx.i163 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx6, i32 0, i32 %i.063.i, i32 7
  %134 = ptrtoint ptr %pipe_idx.i163 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv24.i, ptr %pipe_idx.i163, align 8
  %135 = ptrtoint ptr %stream1.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %stream, ptr %stream1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.063.i)
  %cmp9 = icmp slt i32 %i.063.i, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end8.lor.lhs.false_crit_edge

if.end8.lor.lhs.false_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8.lor.lhs.false_crit_edge, %acquire_resource_from_hw_enabled_state.exit.lor.lhs.false_crit_edge
  %pipe_idx.1197 = phi i32 [ %i.063.i, %if.end8.lor.lhs.false_crit_edge ], [ %tg_inst.0.i, %acquire_resource_from_hw_enabled_state.exit.lor.lhs.false_crit_edge ]
  %res_ctx10 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %pipe_idx.1197, i32 3, i32 2
  %136 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tg, align 8
  %cmp12 = icmp eq ptr %137, null
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %138 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %139, i32 0, i32 40
  %140 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %funcs, align 4
  %find_first_free_match_stream_enc_for_link = getelementptr inbounds %struct.resource_funcs, ptr %141, i32 0, i32 17
  %142 = ptrtoint ptr %find_first_free_match_stream_enc_for_link to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %find_first_free_match_stream_enc_for_link, align 4
  %call20 = call ptr %143(ptr noundef %res_ctx10, ptr noundef %1, ptr noundef %stream) #18
  %stream_enc = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %pipe_idx.1197, i32 3, i32 3
  %144 = ptrtoint ptr %stream_enc to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call20, ptr %stream_enc, align 4
  %tobool24.not = icmp eq ptr %call20, null
  br i1 %tobool24.not, label %if.end14.cleanup_crit_edge, label %if.end26

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %stream_enc_count.i169 = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 21
  %145 = ptrtoint ptr %stream_enc_count.i169 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %stream_enc_count.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp9.not.i = icmp eq i32 %146, 0
  br i1 %cmp9.not.i, label %if.end26.update_stream_engine_usage.exit_crit_edge, label %if.end26.for.body.i171_crit_edge

if.end26.for.body.i171_crit_edge:                 ; preds = %if.end26
  br label %for.body.i171

if.end26.update_stream_engine_usage.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %update_stream_engine_usage.exit

for.body.i171:                                    ; preds = %for.inc.i175.for.body.i171_crit_edge, %if.end26.for.body.i171_crit_edge
  %i.010.i = phi i32 [ %inc.i173, %for.inc.i175.for.body.i171_crit_edge ], [ 0, %if.end26.for.body.i171_crit_edge ]
  %arrayidx.i170 = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 7, i32 %i.010.i
  %147 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i170, align 4
  %cmp2.i = icmp eq ptr %148, %call20
  br i1 %cmp2.i, label %if.then.i172, label %for.body.i171.for.inc.i175_crit_edge

for.body.i171.for.inc.i175_crit_edge:             ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i175

if.then.i172:                                     ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx3.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 1, i32 %i.010.i
  %149 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %arrayidx3.i, align 1
  br label %for.inc.i175

for.inc.i175:                                     ; preds = %if.then.i172, %for.body.i171.for.inc.i175_crit_edge
  %inc.i173 = add nuw i32 %i.010.i, 1
  %150 = ptrtoint ptr %stream_enc_count.i169 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %stream_enc_count.i169, align 4
  %cmp.i174 = icmp ult i32 %inc.i173, %151
  br i1 %cmp.i174, label %for.inc.i175.for.body.i171_crit_edge, label %for.inc.i175.update_stream_engine_usage.exit_crit_edge

for.inc.i175.update_stream_engine_usage.exit_crit_edge: ; preds = %for.inc.i175
  call void @__sanitizer_cov_trace_pc() #20
  br label %update_stream_engine_usage.exit

for.inc.i175.for.body.i171_crit_edge:             ; preds = %for.inc.i175
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i171

update_stream_engine_usage.exit:                  ; preds = %for.inc.i175.update_stream_engine_usage.exit_crit_edge, %if.end26.update_stream_engine_usage.exit_crit_edge
  %converter_disable_audio = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 26
  %152 = ptrtoint ptr %converter_disable_audio to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %converter_disable_audio, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool30.not = icmp eq i8 %153, 0
  br i1 %tobool30.not, label %land.lhs.true, label %update_stream_engine_usage.exit.if.end52_crit_edge

update_stream_engine_usage.exit.if.end52_crit_edge: ; preds = %update_stream_engine_usage.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

land.lhs.true:                                    ; preds = %update_stream_engine_usage.exit
  %stream31 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %pipe_idx.1197, i32 1
  %154 = ptrtoint ptr %stream31 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %stream31, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %155, i32 0, i32 36
  %156 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %signal, align 4
  %158 = zext i32 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %157, label %land.lhs.true.if.end52_crit_edge [
    i32 32, label %land.lhs.true.land.lhs.true33_crit_edge
    i32 64, label %land.lhs.true.land.lhs.true33_crit_edge230
    i32 4, label %land.lhs.true.land.lhs.true33_crit_edge231
  ]

land.lhs.true.land.lhs.true33_crit_edge231:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true33

land.lhs.true.land.lhs.true33_crit_edge230:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true33

land.lhs.true.land.lhs.true33_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true33

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

land.lhs.true33:                                  ; preds = %land.lhs.true.land.lhs.true33_crit_edge, %land.lhs.true.land.lhs.true33_crit_edge230, %land.lhs.true.land.lhs.true33_crit_edge231
  %mode_count = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 13, i32 8
  %159 = ptrtoint ptr %mode_count to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mode_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool34.not = icmp eq i32 %160, 0
  br i1 %tobool34.not, label %land.lhs.true33.if.end52_crit_edge, label %land.lhs.true35

land.lhs.true33.if.end52_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %audio_info = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 13
  %161 = ptrtoint ptr %audio_info to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %audio_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool37.not = icmp eq i8 %162, 0
  br i1 %tobool37.not, label %land.lhs.true35.if.end52_crit_edge, label %if.then38

land.lhs.true35.if.end52_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then38:                                        ; preds = %land.lhs.true35
  %163 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %stream_enc, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %id, align 4
  %call42 = call fastcc ptr @find_first_free_audio(ptr noundef %res_ctx10, ptr noundef %1, i32 noundef %166)
  %audio = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %pipe_idx.1197, i32 3, i32 4
  %167 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call42, ptr %audio, align 8
  %tobool46.not = icmp eq ptr %call42, null
  br i1 %tobool46.not, label %if.then38.if.end52_crit_edge, label %if.then47

if.then38.if.end52_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then47:                                        ; preds = %if.then38
  %audio_count.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 33
  %168 = ptrtoint ptr %audio_count.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %audio_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp8.not.i = icmp eq i32 %169, 0
  br i1 %cmp8.not.i, label %if.then47.if.end52_crit_edge, label %if.then47.for.body.i178_crit_edge

if.then47.for.body.i178_crit_edge:                ; preds = %if.then47
  br label %for.body.i178

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

for.body.i178:                                    ; preds = %for.inc.i182.for.body.i178_crit_edge, %if.then47.for.body.i178_crit_edge
  %i.09.i = phi i32 [ %inc.i180, %for.inc.i182.for.body.i178_crit_edge ], [ 0, %if.then47.for.body.i178_crit_edge ]
  %arrayidx.i177 = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 32, i32 %i.09.i
  %170 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i177, align 4
  %cmp1.i = icmp eq ptr %171, %call42
  br i1 %cmp1.i, label %if.then.i179, label %for.body.i178.for.inc.i182_crit_edge

for.body.i178.for.inc.i182_crit_edge:             ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i182

if.then.i179:                                     ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx2.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 2, i32 %i.09.i
  %172 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %arrayidx2.i, align 1
  br label %for.inc.i182

for.inc.i182:                                     ; preds = %if.then.i179, %for.body.i178.for.inc.i182_crit_edge
  %inc.i180 = add nuw i32 %i.09.i, 1
  %173 = ptrtoint ptr %audio_count.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %audio_count.i, align 4
  %cmp.i181 = icmp ult i32 %inc.i180, %174
  br i1 %cmp.i181, label %for.inc.i182.for.body.i178_crit_edge, label %for.inc.i182.if.end52_crit_edge

for.inc.i182.if.end52_crit_edge:                  ; preds = %for.inc.i182
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

for.inc.i182.for.body.i178_crit_edge:             ; preds = %for.inc.i182
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i178

if.end52:                                         ; preds = %for.inc.i182.if.end52_crit_edge, %if.then47.if.end52_crit_edge, %if.then38.if.end52_crit_edge, %land.lhs.true35.if.end52_crit_edge, %land.lhs.true33.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %update_stream_engine_usage.exit.if.end52_crit_edge
  %stream53 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %pipe_idx.1197, i32 1
  %175 = ptrtoint ptr %stream53 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %stream53, align 4
  %tobool54.not = icmp eq ptr %176, null
  br i1 %tobool54.not, label %if.end52.if.end63_crit_edge, label %land.lhs.true55

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end63

land.lhs.true55:                                  ; preds = %if.end52
  %signal57 = getelementptr inbounds %struct.dc_stream_state, ptr %176, i32 0, i32 36
  %177 = ptrtoint ptr %signal57 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %signal57, align 4
  %179 = zext i32 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %178, label %land.lhs.true55.if.end63_crit_edge [
    i32 128, label %land.lhs.true55.if.then60_crit_edge
    i32 8, label %land.lhs.true55.if.then60_crit_edge232
  ]

land.lhs.true55.if.then60_crit_edge232:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then60

land.lhs.true55.if.then60_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then60

land.lhs.true55.if.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end63

if.then60:                                        ; preds = %land.lhs.true55.if.then60_crit_edge, %land.lhs.true55.if.then60_crit_edge232
  %abm = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 37
  %180 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %abm, align 4
  %abm62 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %pipe_idx.1197, i32 3, i32 7
  %182 = ptrtoint ptr %abm62 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %abm62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %land.lhs.true55.if.end63_crit_edge, %if.end52.if.end63_crit_edge
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %183 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %stream_count, align 8
  %conv64 = zext i8 %184 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp65203.not = icmp eq i8 %184, 0
  br i1 %cmp65203.not, label %if.end63.do.body_crit_edge, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  br label %for.body

if.end63.do.body_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end63.for.body_crit_edge
  %i.0204 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end63.for.body_crit_edge ]
  %arrayidx67 = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.0204
  %185 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx67, align 4
  %cmp68 = icmp eq ptr %186, %stream
  br i1 %cmp68, label %if.then70, label %for.inc

if.then70:                                        ; preds = %for.body
  %187 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %inst, align 4
  %arrayidx73 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0204
  %191 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %arrayidx73, align 8
  %192 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %stream_enc, align 4
  %stream_enc_inst = getelementptr inbounds %struct.stream_encoder, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %stream_enc_inst to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %stream_enc_inst, align 4
  %stream_enc_inst78 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0204, i32 1
  %196 = ptrtoint ptr %stream_enc_inst78 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %stream_enc_inst78, align 4
  %audio80 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx10, i32 0, i32 %pipe_idx.1197, i32 3, i32 4
  %197 = ptrtoint ptr %audio80 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %audio80, align 8
  %tobool81.not = icmp eq ptr %198, null
  br i1 %tobool81.not, label %if.then70.cond.end_crit_edge, label %cond.true

if.then70.cond.end_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #20
  %inst84 = getelementptr inbounds %struct.audio, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %inst84 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %inst84, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then70.cond.end_crit_edge
  %cond = phi i32 [ %200, %cond.true ], [ -1, %if.then70.cond.end_crit_edge ]
  %audio_inst = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.0204, i32 3
  %201 = ptrtoint ptr %audio_inst to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %cond, ptr %audio_inst, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %inc, %conv64
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end63.do.body_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, ptr noundef %stream) #18
  br label %cleanup

cleanup:                                          ; preds = %do.body, %cond.end, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.inc.i167.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %cond.end ], [ -1, %do.body ], [ 2, %lor.lhs.false.cleanup_crit_edge ], [ 2, %if.end8.cleanup_crit_edge ], [ 3, %if.end14.cleanup_crit_edge ], [ 2, %if.then5.cleanup_crit_edge ], [ 2, %for.inc.i167.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calculate_phy_pix_clks(ptr nocapture noundef %stream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp eq i32 %1, 4
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pix_clk_100hz.i, align 4
  %pixel_encoding.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %4 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i15 = icmp eq i32 %5, 4
  %div64.i = zext i1 %cmp.i15 to i32
  %spec.select.i = lshr i32 %3, %div64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.not.i, label %if.then.get_norm_pix_clk.exit_crit_edge, label %if.then3.i

if.then.get_norm_pix_clk.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_norm_pix_clk.exit

if.then3.i:                                       ; preds = %if.then
  %display_color_depth.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 16
  %6 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %display_color_depth.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %land.end.i [
    i32 1, label %if.then3.i.get_norm_pix_clk.exit_crit_edge
    i32 2, label %if.then3.i.get_norm_pix_clk.exit_crit_edge16
    i32 3, label %sw.bb4.i
    i32 4, label %sw.bb6.i
    i32 6, label %sw.bb9.i
  ]

if.then3.i.get_norm_pix_clk.exit_crit_edge16:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_norm_pix_clk.exit

if.then3.i.get_norm_pix_clk.exit_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_norm_pix_clk.exit

sw.bb4.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i = mul i32 %spec.select.i, 30
  %div5.i = udiv i32 %mul.i, 24
  br label %get_norm_pix_clk.exit

sw.bb6.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul7.i = mul i32 %spec.select.i, 36
  %div8.i = udiv i32 %mul7.i, 24
  br label %get_norm_pix_clk.exit

sw.bb9.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul10.i = mul i32 %spec.select.i, 48
  %div11.i = udiv i32 %mul10.i, 24
  br label %get_norm_pix_clk.exit

land.end.i:                                       ; preds = %if.then3.i
  %.b63.i = load i1, ptr @get_norm_pix_clk.__already_done, align 1
  br i1 %.b63.i, label %land.end.i.if.then48.i_crit_edge, label %if.then16.i, !prof !85

land.end.i.if.then48.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then48.i

if.then16.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @get_norm_pix_clk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2071, i32 noundef 9, ptr noundef null) #18
  br label %if.then48.i

if.then48.i:                                      ; preds = %if.then16.i, %land.end.i.if.then48.i_crit_edge
  tail call void @kgdb_breakpoint() #18
  br label %get_norm_pix_clk.exit

get_norm_pix_clk.exit:                            ; preds = %if.then48.i, %sw.bb9.i, %sw.bb6.i, %sw.bb4.i, %if.then3.i.get_norm_pix_clk.exit_crit_edge, %if.then3.i.get_norm_pix_clk.exit_crit_edge16, %if.then.get_norm_pix_clk.exit_crit_edge
  %normalized_pix_clk.0.i = phi i32 [ %3, %if.then48.i ], [ %div11.i, %sw.bb9.i ], [ %div8.i, %sw.bb6.i ], [ %div5.i, %sw.bb4.i ], [ %3, %if.then.get_norm_pix_clk.exit_crit_edge ], [ %spec.select.i, %if.then3.i.get_norm_pix_clk.exit_crit_edge ], [ %spec.select.i, %if.then3.i.get_norm_pix_clk.exit_crit_edge16 ]
  %div = sdiv i32 %normalized_pix_clk.0.i, 10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pix_clk_100hz.i, align 8
  %div3 = udiv i32 %10, 10
  br label %if.end

if.end:                                           ; preds = %if.else, %get_norm_pix_clk.exit
  %div3.sink = phi i32 [ %div3, %if.else ], [ %div, %get_norm_pix_clk.exit ]
  %phy_pix_clk4 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 35
  %11 = ptrtoint ptr %phy_pix_clk4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div3.sink, ptr %phy_pix_clk4, align 8
  %timing_3d_format = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 15
  %12 = ptrtoint ptr %timing_3d_format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timing_3d_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp = icmp eq i32 %13, 5
  br i1 %cmp, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %phy_pix_clk7 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 35
  %14 = ptrtoint ptr %phy_pix_clk7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_pix_clk7, align 8
  %mul = shl i32 %15, 1
  store i32 %mul, ptr %phy_pix_clk7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_first_free_audio(ptr nocapture noundef readonly %res_ctx, ptr nocapture noundef readonly %pool, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 33
  %0 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 2, i32 %i.04
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx3 = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 1, i32 %i.04
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.04, i32 %id)
  %cmp8.not = icmp eq i32 %i.04, %id
  %or.cond = select i1 %tobool4.not, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp13 = icmp sgt i32 %1, %id
  br i1 %cmp13, label %land.lhs.true15, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

land.lhs.true15:                                  ; preds = %for.end
  %arrayidx17 = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 2, i32 %id
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp20 = icmp eq i8 %7, 0
  br i1 %cmp20, label %land.lhs.true15.cleanup.sink.split_crit_edge, label %land.lhs.true15.if.end25_crit_edge

land.lhs.true15.if.end25_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

land.lhs.true15.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end25:                                         ; preds = %land.lhs.true15.if.end25_crit_edge, %for.end.if.end25_crit_edge
  br i1 %cmp3, label %if.end25.for.body29_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end25.for.body29_crit_edge:                    ; preds = %if.end25
  br label %for.body29

for.body29:                                       ; preds = %for.inc40.for.body29_crit_edge, %if.end25.for.body29_crit_edge
  %i.17 = phi i32 [ %inc41, %for.inc40.for.body29_crit_edge ], [ 0, %if.end25.for.body29_crit_edge ]
  %arrayidx31 = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 2, i32 %i.17
  %8 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx31, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp34 = icmp eq i8 %9, 0
  br i1 %cmp34, label %for.body29.cleanup.sink.split_crit_edge, label %for.inc40

for.body29.cleanup.sink.split_crit_edge:          ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

for.inc40:                                        ; preds = %for.body29
  %inc41 = add nuw nsw i32 %i.17, 1
  %exitcond10.not = icmp eq i32 %inc41, %1
  br i1 %exitcond10.not, label %for.inc40.cleanup_crit_edge, label %for.inc40.for.body29_crit_edge

for.inc40.for.body29_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body29

for.inc40.cleanup_crit_edge:                      ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body29.cleanup.sink.split_crit_edge, %land.lhs.true15.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %i.17.lcssa.sink = phi i32 [ %id, %land.lhs.true15.cleanup.sink.split_crit_edge ], [ %i.17, %for.body29.cleanup.sink.split_crit_edge ], [ %id, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %arrayidx38 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 32, i32 %i.17.lcssa.sink
  %10 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx38, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc40.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end25.cleanup_crit_edge ], [ %11, %cleanup.sink.split ], [ null, %for.inc40.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_resource_state_copy_construct_current(ptr nocapture noundef readonly %dc, ptr noundef %dst_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  tail call void @dc_resource_state_copy_construct(ptr noundef %1, ptr noundef %dst_ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_resource_state_copy_construct(ptr nocapture noundef readonly %src_ctx, ptr noundef %dst_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount1 = getelementptr inbounds %struct.dc_state, ptr %dst_ctx, i32 0, i32 8
  %0 = ptrtoint ptr %refcount1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %refcount.sroa.0.0.copyload = load i32, ptr %refcount1, align 8
  %1 = call ptr @memcpy(ptr %dst_ctx, ptr %src_ctx, i32 67552)
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %dst_ctx, i32 0, i32 4
  br label %for.body

for.cond37.preheader:                             ; preds = %if.end36
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %dst_ctx, i32 0, i32 2
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3896.not = icmp eq i8 %3, 0
  br i1 %cmp3896.not, label %for.cond37.preheader.for.end55_crit_edge, label %for.cond37.preheader.for.body40_crit_edge

for.cond37.preheader.for.body40_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body40

for.cond37.preheader.for.end55_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end55

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %entry
  %i.092 = phi i32 [ 0, %entry ], [ %inc, %if.end36.for.body_crit_edge ]
  %top_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.092, i32 9
  %4 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %top_pipe, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pipe_idx, align 8
  %idxprom = zext i8 %7 to i32
  %arrayidx5 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %top_pipe to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx5, ptr %top_pipe, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %bottom_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.092, i32 10
  %9 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bottom_pipe, align 8
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %if.then8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %pipe_idx12 = getelementptr inbounds %struct.pipe_ctx, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %pipe_idx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pipe_idx12, align 8
  %idxprom13 = zext i8 %12 to i32
  %arrayidx14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom13
  %13 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx14, ptr %bottom_pipe, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end.if.end16_crit_edge
  %next_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.092, i32 11
  %14 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next_odm_pipe, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end16.if.end26_crit_edge, label %if.then18

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %pipe_idx22 = getelementptr inbounds %struct.pipe_ctx, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %pipe_idx22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pipe_idx22, align 8
  %idxprom23 = zext i8 %17 to i32
  %arrayidx24 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom23
  %18 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx24, ptr %next_odm_pipe, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end16.if.end26_crit_edge
  %prev_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.092, i32 12
  %19 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool27.not = icmp eq ptr %20, null
  br i1 %tobool27.not, label %if.end26.if.end36_crit_edge, label %if.then28

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %pipe_idx32 = getelementptr inbounds %struct.pipe_ctx, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %pipe_idx32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pipe_idx32, align 8
  %idxprom33 = zext i8 %22 to i32
  %arrayidx34 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom33
  %23 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx34, ptr %prev_odm_pipe, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %if.end26.if.end36_crit_edge
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond37.preheader, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body40:                                       ; preds = %for.inc53.for.body40_crit_edge, %for.cond37.preheader.for.body40_crit_edge
  %i.197 = phi i32 [ %inc54, %for.inc53.for.body40_crit_edge ], [ 0, %for.cond37.preheader.for.body40_crit_edge ]
  %arrayidx41 = getelementptr [6 x ptr], ptr %dst_ctx, i32 0, i32 %i.197
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx41, align 4
  tail call void @dc_stream_retain(ptr noundef %25) #18
  %plane_count = getelementptr %struct.dc_state, ptr %dst_ctx, i32 0, i32 1, i32 %i.197, i32 2
  %26 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %plane_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4493 = icmp sgt i32 %27, 0
  br i1 %cmp4493, label %for.body40.for.body46_crit_edge, label %for.body40.for.inc53_crit_edge

for.body40.for.inc53_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc53

for.body40.for.body46_crit_edge:                  ; preds = %for.body40
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body40.for.body46_crit_edge
  %j.094 = phi i32 [ %inc51, %for.body46.for.body46_crit_edge ], [ 0, %for.body40.for.body46_crit_edge ]
  %arrayidx49 = getelementptr %struct.dc_state, ptr %dst_ctx, i32 0, i32 1, i32 %i.197, i32 5, i32 %j.094
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx49, align 4
  tail call void @dc_plane_state_retain(ptr noundef %29) #18
  %inc51 = add nuw nsw i32 %j.094, 1
  %30 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %plane_count, align 8
  %cmp44 = icmp slt i32 %inc51, %31
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.for.inc53_crit_edge

for.body46.for.inc53_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc53

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body46

for.inc53:                                        ; preds = %for.body46.for.inc53_crit_edge, %for.body40.for.inc53_crit_edge
  %inc54 = add nuw nsw i32 %i.197, 1
  %32 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %33 to i32
  %cmp38 = icmp ult i32 %inc54, %conv
  br i1 %cmp38, label %for.inc53.for.body40_crit_edge, label %for.inc53.for.end55_crit_edge

for.inc53.for.end55_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end55

for.inc53.for.body40_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body40

for.end55:                                        ; preds = %for.inc53.for.end55_crit_edge, %for.cond37.preheader.for.end55_crit_edge
  %34 = ptrtoint ptr %refcount1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %refcount.sroa.0.0.copyload, ptr %refcount1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_resource_state_construct(ptr noundef %dc, ptr noundef %dst_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 13
  %0 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_mgr, align 4
  %clk_mgr1 = getelementptr inbounds %struct.dc_state, ptr %dst_ctx, i32 0, i32 7
  %2 = ptrtoint ptr %clk_mgr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_mgr1, align 4
  tail call void @link_enc_cfg_init(ptr noundef %dc, ptr noundef %dst_ctx) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @link_enc_cfg_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dc_resource_is_dsc_encoding_supported(ptr nocapture noundef readonly %dc) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cap, align 4
  %num_dsc = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %num_dsc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_dsc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_validate_global_state(ptr noundef %dc, ptr noundef %new_ctx, i1 noundef zeroext %fast_validate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %new_ctx, null
  br i1 %tobool.not, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup74

if.end:                                           ; preds = %entry
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %validate_global = getelementptr inbounds %struct.resource_funcs, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %validate_global to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %validate_global, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call = tail call i32 %5(ptr noundef %dc, ptr noundef nonnull %new_ctx) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup74_crit_edge

if.then2.cleanup74_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup74

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 2
  %6 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp9155.not = icmp eq i8 %7, 0
  br i1 %cmp9155.not, label %if.end8.for.end62_crit_edge, label %for.body.lr.ph

if.end8.for.end62_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end62

for.body.lr.ph:                                   ; preds = %if.end8
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 4
  %dp_clock_source_ref_count.i = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 4, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %for.body.lr.ph
  %i.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc61, %for.inc60.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %i.0156
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res_pool, align 8
  %pipe_count150 = getelementptr inbounds %struct.resource_pool, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %pipe_count150 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipe_count150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13151.not = icmp eq i32 %13, 0
  br i1 %cmp13151.not, label %for.body.for.inc60_crit_edge, label %for.body.for.body15_crit_edge

for.body.for.body15_crit_edge:                    ; preds = %for.body
  br label %for.body15

for.body.for.inc60_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc60

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body.for.body15_crit_edge
  %14 = phi ptr [ %72, %for.inc.for.body15_crit_edge ], [ %11, %for.body.for.body15_crit_edge ]
  %j.0152 = phi i32 [ %inc, %for.inc.for.body15_crit_edge ], [ 0, %for.body.for.body15_crit_edge ]
  %arrayidx17 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %j.0152
  %stream18 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %j.0152, i32 1
  %15 = ptrtoint ptr %stream18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream18, align 4
  %cmp19.not = icmp eq ptr %16, %9
  br i1 %cmp19.not, label %if.end22, label %for.body15.for.inc_crit_edge

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end22:                                         ; preds = %for.body15
  %funcs24 = getelementptr inbounds %struct.resource_pool, ptr %14, i32 0, i32 40
  %17 = ptrtoint ptr %funcs24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs24, align 4
  %patch_unknown_plane_state = getelementptr inbounds %struct.resource_funcs, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %patch_unknown_plane_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %patch_unknown_plane_state, align 4
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %if.end22.if.end41_crit_edge, label %land.lhs.true

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end22
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx17, align 8
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true27

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

land.lhs.true27:                                  ; preds = %land.lhs.true
  %tiling_info = getelementptr inbounds %struct.dc_plane_state, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %tiling_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tiling_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp29 = icmp eq i32 %24, 32
  br i1 %cmp29, label %if.then31, label %land.lhs.true27.if.end41_crit_edge

land.lhs.true27.if.end41_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then31:                                        ; preds = %land.lhs.true27
  %call36 = tail call i32 %20(ptr noundef nonnull %22) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 1
  br i1 %cmp37.not, label %if.then31.if.end41_crit_edge, label %if.then31.cleanup74_crit_edge

if.then31.cleanup74_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup74

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.end41:                                         ; preds = %if.then31.if.end41_crit_edge, %land.lhs.true27.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end22.if.end41_crit_edge
  %25 = ptrtoint ptr %stream18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream18, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 36
  %27 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %signal, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %28, label %if.end41.for.inc_crit_edge [
    i32 32, label %if.end41.land.lhs.true45_crit_edge
    i32 128, label %if.end41.land.lhs.true45_crit_edge172
    i32 64, label %if.end41.land.lhs.true45_crit_edge173
  ]

if.end41.land.lhs.true45_crit_edge173:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true45

if.end41.land.lhs.true45_crit_edge172:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true45

if.end41.land.lhs.true45_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true45

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true45:                                  ; preds = %if.end41.land.lhs.true45_crit_edge, %if.end41.land.lhs.true45_crit_edge172, %if.end41.land.lhs.true45_crit_edge173
  %30 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stream_count, align 8
  %conv.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp17.not.i = icmp eq i8 %31, 0
  br i1 %cmp17.not.i, label %land.lhs.true45.if.then48_crit_edge, label %land.lhs.true45.for.body.i_crit_edge

land.lhs.true45.for.body.i_crit_edge:             ; preds = %land.lhs.true45
  br label %for.body.i

land.lhs.true45.if.then48_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then48

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true45.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %land.lhs.true45.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x ptr], ptr %new_ctx, i32 0, i32 %i.018.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 @resource_are_streams_timing_synchronizable(ptr noundef %9, ptr noundef %33) #18
  br i1 %call.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 36
  %34 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %signal.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %35, label %land.lhs.true4.i [
    i32 32, label %land.lhs.true.i.for.inc.i_crit_edge
    i32 128, label %land.lhs.true.i.for.inc.i_crit_edge174
    i32 64, label %land.lhs.true.i.for.inc.i_crit_edge175
  ]

land.lhs.true.i.for.inc.i_crit_edge175:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i.for.inc.i_crit_edge174:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %link.i, align 4
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %40)
  %cmp5.not.i = icmp eq i32 %40, 512
  br i1 %cmp5.not.i, label %land.lhs.true4.i.for.inc.i_crit_edge, label %find_pll_sharable_stream.exit

land.lhs.true4.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true4.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge174, %land.lhs.true.i.for.inc.i_crit_edge175, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then48_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.then48_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then48

find_pll_sharable_stream.exit:                    ; preds = %land.lhs.true4.i
  %tobool47.not = icmp eq ptr %33, null
  br i1 %tobool47.not, label %find_pll_sharable_stream.exit.if.then48_crit_edge, label %find_pll_sharable_stream.exit.for.inc_crit_edge

find_pll_sharable_stream.exit.for.inc_crit_edge:  ; preds = %find_pll_sharable_stream.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

find_pll_sharable_stream.exit.if.then48_crit_edge: ; preds = %find_pll_sharable_stream.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then48

if.then48:                                        ; preds = %find_pll_sharable_stream.exit.if.then48_crit_edge, %for.inc.i.if.then48_crit_edge, %land.lhs.true45.if.then48_crit_edge
  %41 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %res_pool, align 8
  %clock_source = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %j.0152, i32 5
  %43 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clock_source, align 8
  %clk_src_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %42, i32 0, i32 31
  %45 = ptrtoint ptr %clk_src_count.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clk_src_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp6.not.i.i = icmp eq i32 %46, 0
  br i1 %cmp6.not.i.i, label %if.then48.if.end.i_crit_edge, label %if.then48.for.body.i.i_crit_edge

if.then48.for.body.i.i_crit_edge:                 ; preds = %if.then48
  br label %for.body.i.i

if.then48.if.end.i_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then48.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then48.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.resource_pool, ptr %42, i32 0, i32 30, i32 %i.07.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %48, %44
  br i1 %cmp1.i.i, label %find_matching_clock_source.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %46
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

find_matching_clock_source.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i.i)
  %cmp.i = icmp sgt i32 %i.07.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %find_matching_clock_source.exit.i.if.end.i_crit_edge

find_matching_clock_source.exit.i.if.end.i_crit_edge: ; preds = %find_matching_clock_source.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %find_matching_clock_source.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i118 = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 4, i32 3, i32 %i.07.i.i
  %49 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i118, align 1
  %dec.i = add i8 %50, -1
  store i8 %dec.i, ptr %arrayidx.i118, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %find_matching_clock_source.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.then48.if.end.i_crit_edge
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %42, i32 0, i32 29
  %51 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dp_clock_source.i, align 4
  %cmp1.i = icmp eq ptr %52, %44
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.resource_unreference_clock_source.exit_crit_edge

if.end.i.resource_unreference_clock_source.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %resource_unreference_clock_source.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %dp_clock_source_ref_count.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dp_clock_source_ref_count.i, align 1
  %dec3.i = add i8 %54, -1
  store i8 %dec3.i, ptr %dp_clock_source_ref_count.i, align 1
  br label %resource_unreference_clock_source.exit

resource_unreference_clock_source.exit:           ; preds = %if.then2.i, %if.end.i.resource_unreference_clock_source.exit_crit_edge
  %55 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %res_pool, align 8
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %56, i32 0, i32 29
  %57 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dp_clock_source, align 4
  %59 = ptrtoint ptr %clock_source to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %clock_source, align 8
  %60 = load ptr, ptr %res_pool, align 8
  %clk_src_count.i.i119 = getelementptr inbounds %struct.resource_pool, ptr %60, i32 0, i32 31
  %61 = ptrtoint ptr %clk_src_count.i.i119 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clk_src_count.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp6.not.i.i120 = icmp eq i32 %62, 0
  br i1 %cmp6.not.i.i120, label %resource_unreference_clock_source.exit.if.end.i135_crit_edge, label %resource_unreference_clock_source.exit.for.body.i.i124_crit_edge

resource_unreference_clock_source.exit.for.body.i.i124_crit_edge: ; preds = %resource_unreference_clock_source.exit
  br label %for.body.i.i124

resource_unreference_clock_source.exit.if.end.i135_crit_edge: ; preds = %resource_unreference_clock_source.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i135

for.body.i.i124:                                  ; preds = %for.inc.i.i127.for.body.i.i124_crit_edge, %resource_unreference_clock_source.exit.for.body.i.i124_crit_edge
  %i.07.i.i121 = phi i32 [ %inc.i.i125, %for.inc.i.i127.for.body.i.i124_crit_edge ], [ 0, %resource_unreference_clock_source.exit.for.body.i.i124_crit_edge ]
  %arrayidx.i.i122 = getelementptr %struct.resource_pool, ptr %60, i32 0, i32 30, i32 %i.07.i.i121
  %63 = ptrtoint ptr %arrayidx.i.i122 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i122, align 4
  %cmp1.i.i123 = icmp eq ptr %64, %58
  br i1 %cmp1.i.i123, label %find_matching_clock_source.exit.i129, label %for.inc.i.i127

for.inc.i.i127:                                   ; preds = %for.body.i.i124
  %inc.i.i125 = add nuw i32 %i.07.i.i121, 1
  %exitcond.not.i.i126 = icmp eq i32 %inc.i.i125, %62
  br i1 %exitcond.not.i.i126, label %for.inc.i.i127.if.end.i135_crit_edge, label %for.inc.i.i127.for.body.i.i124_crit_edge

for.inc.i.i127.for.body.i.i124_crit_edge:         ; preds = %for.inc.i.i127
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i124

for.inc.i.i127.if.end.i135_crit_edge:             ; preds = %for.inc.i.i127
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i135

find_matching_clock_source.exit.i129:             ; preds = %for.body.i.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i.i121)
  %cmp.i128 = icmp sgt i32 %i.07.i.i121, -1
  br i1 %cmp.i128, label %if.then.i132, label %find_matching_clock_source.exit.i129.if.end.i135_crit_edge

find_matching_clock_source.exit.i129.if.end.i135_crit_edge: ; preds = %find_matching_clock_source.exit.i129
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i135

if.then.i132:                                     ; preds = %find_matching_clock_source.exit.i129
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i130 = getelementptr %struct.dc_state, ptr %new_ctx, i32 0, i32 4, i32 3, i32 %i.07.i.i121
  %65 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i130, align 1
  %inc.i131 = add i8 %66, 1
  store i8 %inc.i131, ptr %arrayidx.i130, align 1
  br label %if.end.i135

if.end.i135:                                      ; preds = %if.then.i132, %find_matching_clock_source.exit.i129.if.end.i135_crit_edge, %for.inc.i.i127.if.end.i135_crit_edge, %resource_unreference_clock_source.exit.if.end.i135_crit_edge
  %dp_clock_source.i133 = getelementptr inbounds %struct.resource_pool, ptr %60, i32 0, i32 29
  %67 = ptrtoint ptr %dp_clock_source.i133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dp_clock_source.i133, align 4
  %cmp1.i134 = icmp eq ptr %68, %58
  br i1 %cmp1.i134, label %if.then2.i137, label %if.end.i135.for.inc_crit_edge

if.end.i135.for.inc_crit_edge:                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then2.i137:                                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #20
  %69 = ptrtoint ptr %dp_clock_source_ref_count.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dp_clock_source_ref_count.i, align 1
  %inc3.i = add i8 %70, 1
  store i8 %inc3.i, ptr %dp_clock_source_ref_count.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then2.i137, %if.end.i135.for.inc_crit_edge, %find_pll_sharable_stream.exit.for.inc_crit_edge, %if.end41.for.inc_crit_edge, %for.body15.for.inc_crit_edge
  %inc = add nuw i32 %j.0152, 1
  %71 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %72, i32 0, i32 19
  %73 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pipe_count, align 4
  %cmp13 = icmp ult i32 %inc, %74
  br i1 %cmp13, label %for.inc.for.body15_crit_edge, label %for.inc.for.inc60_crit_edge

for.inc.for.inc60_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc60

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body15

for.inc60:                                        ; preds = %for.inc.for.inc60_crit_edge, %for.body.for.inc60_crit_edge
  %inc61 = add nuw nsw i32 %i.0156, 1
  %75 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %76 to i32
  %cmp9 = icmp ult i32 %inc61, %conv
  br i1 %cmp9, label %for.inc60.for.body_crit_edge, label %for.inc60.for.end62_crit_edge

for.inc60.for.end62_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end62

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end62:                                        ; preds = %for.inc60.for.end62_crit_edge, %if.end8.for.end62_crit_edge
  %call63 = tail call i32 @resource_build_scaling_params_for_context(ptr undef, ptr noundef nonnull %new_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63)
  %cmp64 = icmp eq i32 %call63, 1
  br i1 %cmp64, label %if.then66, label %for.end62.cleanup74_crit_edge

for.end62.cleanup74_crit_edge:                    ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup74

if.then66:                                        ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #20
  %77 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %res_pool, align 8
  %funcs68 = getelementptr inbounds %struct.resource_pool, ptr %78, i32 0, i32 40
  %79 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %funcs68, align 4
  %validate_bandwidth = getelementptr inbounds %struct.resource_funcs, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %validate_bandwidth to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %validate_bandwidth, align 4
  %call70 = tail call zeroext i1 %82(ptr noundef %dc, ptr noundef nonnull %new_ctx, i1 noundef zeroext %fast_validate) #18
  %spec.select = select i1 %call70, i32 1, i32 13
  br label %cleanup74

cleanup74:                                        ; preds = %if.then66, %for.end62.cleanup74_crit_edge, %if.then31.cleanup74_crit_edge, %if.then2.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %retval.4 = phi i32 [ -1, %entry.cleanup74_crit_edge ], [ %call, %if.then2.cleanup74_crit_edge ], [ %call63, %for.end62.cleanup74_crit_edge ], [ %spec.select, %if.then66 ], [ %call36, %if.then31.cleanup74_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_resource_state_destruct(ptr nocapture noundef %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp36.not = icmp eq i8 %1, 0
  br i1 %cmp36.not, label %entry.for.end17_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end17

for.cond2.preheader:                              ; preds = %for.end.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %i.037 = phi i32 [ %inc16, %for.end.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %plane_count = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.037, i32 2
  %2 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plane_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp333 = icmp sgt i32 %3, 0
  br i1 %cmp333, label %for.cond2.preheader.for.body5_crit_edge, label %for.cond2.preheader.for.end_crit_edge

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond2.preheader.for.body5_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond2.preheader.for.body5_crit_edge
  %j.034 = phi i32 [ %inc, %for.body5.for.body5_crit_edge ], [ 0, %for.cond2.preheader.for.body5_crit_edge ]
  %arrayidx8 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.037, i32 5, i32 %j.034
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  tail call void @dc_plane_state_release(ptr noundef %5) #18
  %inc = add nuw nsw i32 %j.034, 1
  %6 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plane_count, align 8
  %cmp3 = icmp slt i32 %inc, %7
  br i1 %cmp3, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %plane_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %plane_count, align 8
  %arrayidx12 = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.037
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  tail call void @dc_stream_release(ptr noundef %10) #18
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx12, align 4
  %inc16 = add nuw nsw i32 %i.037, 1
  %12 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc16, %conv
  br i1 %cmp, label %for.end.for.cond2.preheader_crit_edge, label %for.end.for.end17_crit_edge

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end17

for.end.for.cond2.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond2.preheader

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %entry.for.end17_crit_edge
  %14 = ptrtoint ptr %stream_count to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %stream_count, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_resource_find_first_free_pll(ptr nocapture noundef readonly %res_ctx, ptr nocapture noundef readonly %pool) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_src_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 31
  %0 = ptrtoint ptr %clk_src_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_src_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 3, i32 %i.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx3 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 30, i32 %i.010
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resource_build_info_frame(ptr nocapture noundef %pipe_ctx) local_unnamed_addr #13 align 64 {
entry:
  %hdmi_info.i = alloca %union.hdmi_info_packet, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_info_frame = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %encoder_info_frame to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %encoder_info_frame, align 1
  %gamut = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 1
  %1 = ptrtoint ptr %gamut to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %gamut, align 1
  %vendor = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 2
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vendor, align 1
  %spd = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 4
  %3 = ptrtoint ptr %spd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %spd, align 1
  %hdrsmd = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 6
  %4 = ptrtoint ptr %hdrsmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hdrsmd, align 1
  %vsc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 5
  %5 = ptrtoint ptr %vsc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vsc, align 1
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream, align 4
  %signal6 = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %signal6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal6, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %9, label %entry.patch_gamut_packet_checksum.exit_crit_edge [
    i32 4, label %if.then
    i32 32, label %entry.if.then15_crit_edge
    i32 128, label %entry.if.then15_crit_edge72
    i32 64, label %entry.if.then15_crit_edge73
  ]

entry.if.then15_crit_edge73:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

entry.if.then15_crit_edge72:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

entry.patch_gamut_packet_checksum.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %patch_gamut_packet_checksum.exit

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %hdmi_info.i) #18
  %11 = getelementptr inbounds %struct.hdmi_info_frame_header, ptr %hdmi_info.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.hdmi_info_frame_header, ptr %hdmi_info.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.avi_info_frame, ptr %hdmi_info.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.avi_info_frame, ptr %hdmi_info.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.avi_info_frame, ptr %hdmi_info.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.avi_info_frame, ptr %hdmi_info.i, i32 0, i32 4
  %17 = getelementptr inbounds %struct.avi_info_frame, ptr %hdmi_info.i, i32 0, i32 5
  %18 = getelementptr inbounds %struct.avi_info_frame, ptr %hdmi_info.i, i32 0, i32 6
  %vic3.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 13
  %19 = ptrtoint ptr %vic3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vic3.i, align 4
  %21 = call ptr @memset(ptr %13, i32 0, i32 28)
  %output_color_space.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 20
  %22 = ptrtoint ptr %output_color_space.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %output_color_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i46 = icmp eq i32 %23, 0
  br i1 %cmp.i46, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %pixel_encoding6.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 17
  %24 = ptrtoint ptr %pixel_encoding6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixel_encoding6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp7.i = icmp eq i32 %25, 1
  %cond.i = select i1 %cmp7.i, i32 1, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %color_space.0.i = phi i32 [ %cond.i, %if.then.i ], [ %23, %if.then.if.end.i_crit_edge ]
  %26 = ptrtoint ptr %hdmi_info.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -126, ptr %hdmi_info.i, align 1
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %11, align 1
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 13, ptr %12, align 1
  %timing10.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5
  %pixel_encoding11.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 17
  %29 = ptrtoint ptr %pixel_encoding11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixel_encoding11.i, align 4
  %switch.tableidx = add i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %31 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %32 = zext i8 %switch.offset to i48
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 6)
  %bf.load.i = load i48, ptr %13, align 1
  %.op = shl nuw nsw i48 %32, 32
  %bf.shl.i = select i1 %31, i48 %.op, i48 0
  %bf.clear.i = and i48 %bf.load.i, -1095229243393
  %bf.set.i = or i48 %bf.clear.i, %bf.shl.i
  %bf.set29.i = or i48 %bf.set.i, 790273982464
  %34 = zext i32 %color_space.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %color_space.0.i, label %if.else49.i [
    i32 6, label %if.end.i.if.then35.i_crit_edge
    i32 10, label %if.end.i.if.then35.i_crit_edge74
    i32 5, label %if.end.i.if.then44.i_crit_edge
    i32 9, label %if.end.i.if.then44.i_crit_edge75
  ]

if.end.i.if.then44.i_crit_edge75:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then44.i

if.end.i.if.then44.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then44.i

if.end.i.if.then35.i_crit_edge74:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then35.i

if.end.i.if.then35.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then35.i

if.then35.i:                                      ; preds = %if.end.i.if.then35.i_crit_edge, %if.end.i.if.then35.i_crit_edge74
  %bf.clear37.i = and i48 %bf.set29.i, -62914561
  %bf.set38.i = or i48 %bf.clear37.i, 33554432
  br label %if.end55.i

if.then44.i:                                      ; preds = %if.end.i.if.then44.i_crit_edge, %if.end.i.if.then44.i_crit_edge75
  %bf.clear47.i = and i48 %bf.set29.i, -62914561
  %bf.set48.i = or i48 %bf.clear47.i, 16777216
  br label %if.end55.i

if.else49.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear52.i = and i48 %bf.set29.i, -62914561
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else49.i, %if.then44.i, %if.then35.i
  %bf.set48.sink.i = phi i48 [ %bf.set48.i, %if.then44.i ], [ %bf.clear52.i, %if.else49.i ], [ %bf.set38.i, %if.then35.i ]
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 6)
  store i48 %bf.set48.sink.i, ptr %13, align 1
  %36 = zext i32 %color_space.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %color_space.0.i, label %if.end55.i.if.end85.i_crit_edge [
    i32 13, label %if.end55.i.if.end85.sink.split.i_crit_edge
    i32 12, label %if.end55.i.if.end85.sink.split.i_crit_edge76
    i32 11, label %if.end55.i.if.end85.sink.split.i_crit_edge77
    i32 14, label %if.then75.i
  ]

if.end55.i.if.end85.sink.split.i_crit_edge77:     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85.sink.split.i

if.end55.i.if.end85.sink.split.i_crit_edge76:     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85.sink.split.i

if.end55.i.if.end85.sink.split.i_crit_edge:       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85.sink.split.i

if.end55.i.if.end85.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85.i

if.then75.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85.sink.split.i

if.end85.sink.split.i:                            ; preds = %if.then75.i, %if.end55.i.if.end85.sink.split.i_crit_edge, %if.end55.i.if.end85.sink.split.i_crit_edge76, %if.end55.i.if.end85.sink.split.i_crit_edge77
  %.sink.i = phi i48 [ 50855936, %if.then75.i ], [ 51118080, %if.end55.i.if.end85.sink.split.i_crit_edge ], [ 51118080, %if.end55.i.if.end85.sink.split.i_crit_edge76 ], [ 51118080, %if.end55.i.if.end85.sink.split.i_crit_edge77 ]
  %bf.clear78.i = and i48 %bf.set48.sink.i, -51249153
  %bf.set83.i = or i48 %.sink.i, %bf.clear78.i
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 6)
  store i48 %bf.set83.i, ptr %13, align 1
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.end85.sink.split.i, %if.end55.i.if.end85.i_crit_edge
  %aspect_ratio.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 18
  %38 = ptrtoint ptr %aspect_ratio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %aspect_ratio.i, align 8
  %.off.i = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 6)
  %bf.load89.i = load i48, ptr %13, align 1
  br i1 %switch.i, label %sw.bb87.i, label %sw.default96.i

sw.bb87.i:                                        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #20
  %41 = shl nuw nsw i32 %39, 26
  %42 = and i32 %41, 201326592
  %bf.shl91.i = zext i32 %42 to i48
  %bf.clear92.i = and i48 %bf.load89.i, -201326593
  %bf.set93.i = or i48 %bf.clear92.i, %bf.shl91.i
  br label %sw.epilog101.i

sw.default96.i:                                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear99.i = and i48 %bf.load89.i, -201326593
  br label %sw.epilog101.i

sw.epilog101.i:                                   ; preds = %sw.default96.i, %sw.bb87.i
  %storemerge.i = phi i48 [ %bf.set93.i, %sw.bb87.i ], [ %bf.clear99.i, %sw.default96.i ]
  %bf.set104.i = and i48 %storemerge.i, -4026597389
  %bf.set176.i = or i48 %bf.set104.i, 2147549184
  %qs_bit.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 27
  %43 = ptrtoint ptr %qs_bit.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %qs_bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp180.i = icmp eq i8 %44, 1
  br i1 %cmp180.i, label %if.then182.i, label %if.else210.i

if.then182.i:                                     ; preds = %sw.epilog101.i
  %45 = zext i32 %color_space.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %color_space.0.i, label %if.else203.i [
    i32 11, label %if.then182.i.if.then188.i_crit_edge
    i32 1, label %if.then182.i.if.then188.i_crit_edge78
    i32 3, label %if.then182.i.if.then198.i_crit_edge
    i32 12, label %if.then182.i.if.then198.i_crit_edge79
  ]

if.then182.i.if.then198.i_crit_edge79:            ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then198.i

if.then182.i.if.then198.i_crit_edge:              ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then198.i

if.then182.i.if.then188.i_crit_edge78:            ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then188.i

if.then182.i.if.then188.i_crit_edge:              ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then188.i

if.then188.i:                                     ; preds = %if.then182.i.if.then188.i_crit_edge, %if.then182.i.if.then188.i_crit_edge78
  %bf.clear190.i = and i48 %bf.set176.i, -1882193933
  %bf.set191.i = or i48 %bf.clear190.i, 2097152
  br label %if.end215.i

if.then198.i:                                     ; preds = %if.then182.i.if.then198.i_crit_edge, %if.then182.i.if.then198.i_crit_edge79
  %bf.clear201.i = and i48 %bf.set176.i, -1882193933
  %bf.set202.i = or i48 %bf.clear201.i, 1048576
  br label %if.end215.i

if.else203.i:                                     ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear206.i = and i48 %bf.set176.i, -1882193933
  br label %if.end215.i

if.else210.i:                                     ; preds = %sw.epilog101.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear213.i = and i48 %bf.set176.i, -1882193933
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.else210.i, %if.else203.i, %if.then198.i, %if.then188.i
  %bf.set191.sink.i = phi i48 [ %bf.set191.i, %if.then188.i ], [ %bf.clear206.i, %if.else203.i ], [ %bf.set202.i, %if.then198.i ], [ %bf.clear213.i, %if.else210.i ]
  %timing_3d_format.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 15
  %46 = ptrtoint ptr %timing_3d_format.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timing_3d_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp220.not.i = icmp eq i32 %47, 0
  br i1 %cmp220.not.i, label %if.end215.i.if.end231.i_crit_edge, label %if.then222.i

if.end215.i.if.end231.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end231.i

if.then222.i:                                     ; preds = %if.end215.i
  %hdmi_vic.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 14
  %48 = ptrtoint ptr %hdmi_vic.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hdmi_vic.i, align 8
  %switch.tableidx71 = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx71)
  %50 = icmp ult i32 %switch.tableidx71, 4
  br i1 %50, label %switch.lookup70, label %if.then222.i.if.end231.i_crit_edge

if.then222.i.if.end231.i_crit_edge:               ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end231.i

switch.lookup70:                                  ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.resource_build_info_frame, i32 0, i32 %switch.tableidx71
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bf.shl235376.i = zext i32 %switch.load to i48
  %bf.clear236377.i = and i48 %bf.set191.sink.i, -65284
  %bf.set237378.i = or i48 %bf.clear236377.i, %bf.shl235376.i
  br label %if.end244.i

if.end231.i:                                      ; preds = %if.then222.i.if.end231.i_crit_edge, %if.end215.i.if.end231.i_crit_edge
  %52 = shl i32 %20, 8
  %53 = and i32 %52, 65280
  %bf.shl235.i = zext i32 %53 to i48
  %bf.clear236.i = and i48 %bf.set191.sink.i, -65284
  %bf.set237.i = or i48 %bf.clear236.i, %bf.shl235.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %20)
  %cmp239.i = icmp ugt i32 %20, 127
  br i1 %cmp239.i, label %if.then241.i, label %if.end231.i.if.end244.i_crit_edge

if.end231.i.if.end244.i_crit_edge:                ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end244.i

if.then241.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %11, align 1
  br label %if.end244.i

if.end244.i:                                      ; preds = %if.then241.i, %if.end231.i.if.end244.i_crit_edge, %switch.lookup70
  %bf.set237380.i = phi i48 [ %bf.set237378.i, %switch.lookup70 ], [ %bf.set237.i, %if.then241.i ], [ %bf.set237.i, %if.end231.i.if.end244.i_crit_edge ]
  %55 = and i48 %bf.set237380.i, 51249152
  %56 = icmp eq i48 %55, 51249152
  br i1 %56, label %if.then260.i, label %if.end244.i.if.end265.i_crit_edge

if.end244.i.if.end265.i_crit_edge:                ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end265.i

if.then260.i:                                     ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #20
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %11, align 1
  %58 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 14, ptr %12, align 1
  br label %if.end265.i

if.end265.i:                                      ; preds = %if.then260.i, %if.end244.i.if.end265.i_crit_edge
  %bf.clear267.i = and i48 %bf.set237380.i, -241
  %59 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 6)
  store i48 %bf.clear267.i, ptr %13, align 1
  %v_border_top.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 7
  %60 = ptrtoint ptr %v_border_top.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %v_border_top.i, align 4
  %conv270.i = trunc i32 %61 to i16
  %62 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %conv270.i, ptr %14, align 1
  %v_total.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 6
  %63 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %v_total.i, align 8
  %v_border_bottom.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 9
  %65 = ptrtoint ptr %v_border_bottom.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %v_border_bottom.i, align 4
  %sub.i = sub i32 %64, %66
  %67 = trunc i32 %sub.i to i16
  %conv273.i = add i16 %67, 1
  %68 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %conv273.i, ptr %15, align 1
  %h_border_left.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %h_border_left.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %h_border_left.i, align 4
  %conv275.i = trunc i32 %70 to i16
  %71 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %conv275.i, ptr %16, align 1
  %72 = ptrtoint ptr %timing10.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %timing10.i, align 8
  %h_border_right.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 3
  %74 = ptrtoint ptr %h_border_right.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %h_border_right.i, align 4
  %sub278.i = sub i32 %73, %75
  %76 = trunc i32 %sub278.i to i16
  %conv280.i = add i16 %76, 1
  %77 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %conv280.i, ptr %17, align 1
  %78 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load281.i = load i8, ptr %18, align 1
  %bf.clear282.i = and i8 %bf.load281.i, -16
  store i8 %bf.clear282.i, ptr %18, align 1
  %79 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %12, align 1
  %add287.i = add i8 %80, -126
  %81 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %11, align 1
  %add291.i = add i8 %add287.i, %82
  store i8 %add291.i, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp297.not381.i = icmp eq i8 %80, 0
  br i1 %cmp297.not381.i, label %if.end265.i.set_avi_info_frame.exit_crit_edge, label %if.end265.i.for.body.i_crit_edge

if.end265.i.for.body.i_crit_edge:                 ; preds = %if.end265.i
  br label %for.body.i

if.end265.i.set_avi_info_frame.exit_crit_edge:    ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_avi_info_frame.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end265.i.for.body.i_crit_edge
  %byte_index.0382.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end265.i.for.body.i_crit_edge ]
  %conv293.i = zext i8 %byte_index.0382.i to i32
  %arrayidx300.i = getelementptr %struct.info_packet_raw_data, ptr %hdmi_info.i, i32 0, i32 3, i32 %conv293.i
  %83 = ptrtoint ptr %arrayidx300.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx300.i, align 1
  %85 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %13, align 1
  %add303.i = add i8 %86, %84
  store i8 %add303.i, ptr %13, align 1
  %inc.i = add i8 %byte_index.0382.i, 1
  %cmp297.not.i = icmp ugt i8 %inc.i, %80
  br i1 %cmp297.not.i, label %for.body.i.set_avi_info_frame.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.set_avi_info_frame.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_avi_info_frame.exit

set_avi_info_frame.exit:                          ; preds = %for.body.i.set_avi_info_frame.exit_crit_edge, %if.end265.i.set_avi_info_frame.exit_crit_edge
  %87 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %13, align 1
  %sub306.i = sub i8 0, %88
  store i8 %sub306.i, ptr %13, align 1
  %hb0308.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 0, i32 1
  %89 = ptrtoint ptr %hb0308.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -126, ptr %hb0308.i, align 1
  %hb1309.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 0, i32 2
  %90 = ptrtoint ptr %hb1309.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %82, ptr %hb1309.i, align 1
  %hb2310.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 0, i32 3
  %91 = ptrtoint ptr %hb2310.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %80, ptr %hb2310.i, align 1
  %uglygep.i = getelementptr %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6, i32 0, i32 5
  %92 = call ptr @memcpy(ptr %uglygep.i, ptr %13, i32 28)
  %93 = ptrtoint ptr %encoder_info_frame to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %encoder_info_frame, align 1
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %hdmi_info.i) #18
  %vsp_infopacket.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 9
  %94 = ptrtoint ptr %vsp_infopacket.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %vsp_infopacket.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i, label %set_avi_info_frame.exit.set_vendor_info_packet.exit_crit_edge, label %if.end.i47

set_avi_info_frame.exit.set_vendor_info_packet.exit_crit_edge: ; preds = %set_avi_info_frame.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_vendor_info_packet.exit

if.end.i47:                                       ; preds = %set_avi_info_frame.exit
  call void @__sanitizer_cov_trace_pc() #20
  %96 = call ptr @memcpy(ptr %vendor, ptr %vsp_infopacket.i, i32 37)
  br label %set_vendor_info_packet.exit

set_vendor_info_packet.exit:                      ; preds = %if.end.i47, %set_avi_info_frame.exit.set_vendor_info_packet.exit_crit_edge
  %vrr_infopacket.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 7
  %97 = ptrtoint ptr %vrr_infopacket.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vrr_infopacket.i, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i48 = icmp eq i8 %98, 0
  br i1 %tobool.not.i48, label %set_vendor_info_packet.exit.set_spd_info_packet.exit_crit_edge, label %if.end.i49

set_vendor_info_packet.exit.set_spd_info_packet.exit_crit_edge: ; preds = %set_vendor_info_packet.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_spd_info_packet.exit

if.end.i49:                                       ; preds = %set_vendor_info_packet.exit
  call void @__sanitizer_cov_trace_pc() #20
  %99 = call ptr @memcpy(ptr %spd, ptr %vrr_infopacket.i, i32 37)
  br label %set_spd_info_packet.exit

set_spd_info_packet.exit:                         ; preds = %if.end.i49, %set_vendor_info_packet.exit.set_spd_info_packet.exit_crit_edge
  %hdr_static_metadata.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 14
  %100 = ptrtoint ptr %hdr_static_metadata.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %hdr_static_metadata.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i50 = icmp eq i8 %101, 0
  br i1 %tobool.not.i50, label %set_spd_info_packet.exit.patch_gamut_packet_checksum.exit_crit_edge, label %lor.lhs.false.i

set_spd_info_packet.exit.patch_gamut_packet_checksum.exit_crit_edge: ; preds = %set_spd_info_packet.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %patch_gamut_packet_checksum.exit

lor.lhs.false.i:                                  ; preds = %set_spd_info_packet.exit
  %use_dynamic_meta.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 16
  %102 = ptrtoint ptr %use_dynamic_meta.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %use_dynamic_meta.i, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool1.not.i = icmp eq i8 %103, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.patch_gamut_packet_checksum.exit.sink.split_crit_edge, label %lor.lhs.false.i.patch_gamut_packet_checksum.exit_crit_edge

lor.lhs.false.i.patch_gamut_packet_checksum.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %patch_gamut_packet_checksum.exit

lor.lhs.false.i.patch_gamut_packet_checksum.exit.sink.split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %patch_gamut_packet_checksum.exit.sink.split

if.then15:                                        ; preds = %entry.if.then15_crit_edge, %entry.if.then15_crit_edge72, %entry.if.then15_crit_edge73
  %vsc_infopacket.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 8
  %104 = ptrtoint ptr %vsc_infopacket.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %vsc_infopacket.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i52 = icmp eq i8 %105, 0
  br i1 %tobool.not.i52, label %if.then15.set_vsc_info_packet.exit_crit_edge, label %if.end.i53

if.then15.set_vsc_info_packet.exit_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_vsc_info_packet.exit

if.end.i53:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  %106 = call ptr @memcpy(ptr %vsc, ptr %vsc_infopacket.i, i32 37)
  br label %set_vsc_info_packet.exit

set_vsc_info_packet.exit:                         ; preds = %if.end.i53, %if.then15.set_vsc_info_packet.exit_crit_edge
  %vrr_infopacket.i54 = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 7
  %107 = ptrtoint ptr %vrr_infopacket.i54 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vrr_infopacket.i54, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i55 = icmp eq i8 %108, 0
  br i1 %tobool.not.i55, label %set_vsc_info_packet.exit.set_spd_info_packet.exit57_crit_edge, label %if.end.i56

set_vsc_info_packet.exit.set_spd_info_packet.exit57_crit_edge: ; preds = %set_vsc_info_packet.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_spd_info_packet.exit57

if.end.i56:                                       ; preds = %set_vsc_info_packet.exit
  call void @__sanitizer_cov_trace_pc() #20
  %109 = call ptr @memcpy(ptr %spd, ptr %vrr_infopacket.i54, i32 37)
  br label %set_spd_info_packet.exit57

set_spd_info_packet.exit57:                       ; preds = %if.end.i56, %set_vsc_info_packet.exit.set_spd_info_packet.exit57_crit_edge
  %hdr_static_metadata.i58 = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 14
  %110 = ptrtoint ptr %hdr_static_metadata.i58 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %hdr_static_metadata.i58, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i59 = icmp eq i8 %111, 0
  br i1 %tobool.not.i59, label %set_spd_info_packet.exit57.patch_gamut_packet_checksum.exit_crit_edge, label %lor.lhs.false.i62

set_spd_info_packet.exit57.patch_gamut_packet_checksum.exit_crit_edge: ; preds = %set_spd_info_packet.exit57
  call void @__sanitizer_cov_trace_pc() #20
  br label %patch_gamut_packet_checksum.exit

lor.lhs.false.i62:                                ; preds = %set_spd_info_packet.exit57
  %use_dynamic_meta.i60 = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 16
  %112 = ptrtoint ptr %use_dynamic_meta.i60 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %use_dynamic_meta.i60, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool1.not.i61 = icmp eq i8 %113, 0
  br i1 %tobool1.not.i61, label %lor.lhs.false.i62.patch_gamut_packet_checksum.exit.sink.split_crit_edge, label %lor.lhs.false.i62.patch_gamut_packet_checksum.exit_crit_edge

lor.lhs.false.i62.patch_gamut_packet_checksum.exit_crit_edge: ; preds = %lor.lhs.false.i62
  call void @__sanitizer_cov_trace_pc() #20
  br label %patch_gamut_packet_checksum.exit

lor.lhs.false.i62.patch_gamut_packet_checksum.exit.sink.split_crit_edge: ; preds = %lor.lhs.false.i62
  call void @__sanitizer_cov_trace_pc() #20
  br label %patch_gamut_packet_checksum.exit.sink.split

patch_gamut_packet_checksum.exit.sink.split:      ; preds = %lor.lhs.false.i62.patch_gamut_packet_checksum.exit.sink.split_crit_edge, %lor.lhs.false.i.patch_gamut_packet_checksum.exit.sink.split_crit_edge
  %hdr_static_metadata.i.sink = phi ptr [ %hdr_static_metadata.i, %lor.lhs.false.i.patch_gamut_packet_checksum.exit.sink.split_crit_edge ], [ %hdr_static_metadata.i58, %lor.lhs.false.i62.patch_gamut_packet_checksum.exit.sink.split_crit_edge ]
  %114 = call ptr @memcpy(ptr %hdrsmd, ptr %hdr_static_metadata.i.sink, i32 37)
  br label %patch_gamut_packet_checksum.exit

patch_gamut_packet_checksum.exit:                 ; preds = %patch_gamut_packet_checksum.exit.sink.split, %lor.lhs.false.i62.patch_gamut_packet_checksum.exit_crit_edge, %set_spd_info_packet.exit57.patch_gamut_packet_checksum.exit_crit_edge, %lor.lhs.false.i.patch_gamut_packet_checksum.exit_crit_edge, %set_spd_info_packet.exit.patch_gamut_packet_checksum.exit_crit_edge, %entry.patch_gamut_packet_checksum.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @resource_map_clock_resources(ptr nocapture noundef readonly %dc, ptr noundef %context, ptr noundef %stream) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %call = tail call ptr @resource_get_head_pipe_for_stream(ptr noundef %res_ctx, ptr noundef %stream)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %signal, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %if.else [
    i32 32, label %if.end.if.then5_crit_edge
    i32 128, label %if.end.if.then5_crit_edge61
    i32 64, label %if.end.if.then5_crit_edge62
    i32 512, label %if.end.if.then5_crit_edge63
  ]

if.end.if.then5_crit_edge63:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.end.if.then5_crit_edge62:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.end.if.then5_crit_edge61:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge61, %if.end.if.then5_crit_edge62, %if.end.if.then5_crit_edge63
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp_clock_source, align 4
  %clock_source = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %clock_source to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %clock_source, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end
  %clock_source6 = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %clock_source6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %clock_source6, align 8
  %disable_disp_pll_sharing = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %disable_disp_pll_sharing to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disable_disp_pll_sharing, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %if.end12, label %if.else.if.then15_crit_edge

if.else.if.then15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

if.end12:                                         ; preds = %if.else
  %call10 = tail call ptr @resource_find_used_clk_src_for_sharing(ptr noundef %res_ctx, ptr noundef nonnull %call)
  %13 = ptrtoint ptr %clock_source6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %clock_source6, align 8
  %cmp14 = icmp eq ptr %call10, null
  br i1 %cmp14, label %if.end12.if.then15_crit_edge, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

if.then15:                                        ; preds = %if.end12.if.then15_crit_edge, %if.else.if.then15_crit_edge
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 31
  %14 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not.i = icmp eq i32 %15, 0
  br i1 %cmp9.not.i, label %if.then15.dc_resource_find_first_free_pll.exit_crit_edge, label %if.then15.for.body.i_crit_edge

if.then15.for.body.i_crit_edge:                   ; preds = %if.then15
  br label %for.body.i

if.then15.dc_resource_find_first_free_pll.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_resource_find_first_free_pll.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then15.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then15.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 3, i32 %i.010.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp1.i = icmp eq i8 %17, 0
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx3.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 30, i32 %i.010.i
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.i, align 4
  br label %dc_resource_find_first_free_pll.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.dc_resource_find_first_free_pll.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.dc_resource_find_first_free_pll.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_resource_find_first_free_pll.exit

dc_resource_find_first_free_pll.exit:             ; preds = %for.inc.i.dc_resource_find_first_free_pll.exit_crit_edge, %if.then.i, %if.then15.dc_resource_find_first_free_pll.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.then.i ], [ null, %if.then15.dc_resource_find_first_free_pll.exit_crit_edge ], [ null, %for.inc.i.dc_resource_find_first_free_pll.exit_crit_edge ]
  %20 = ptrtoint ptr %clock_source6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %clock_source6, align 8
  br label %if.end20

if.end20:                                         ; preds = %dc_resource_find_first_free_pll.exit, %if.end12.if.end20_crit_edge, %if.then5
  %clock_source21 = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %clock_source21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clock_source21, align 8
  %cmp22 = icmp eq ptr %22, null
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %clk_src_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 31
  %23 = ptrtoint ptr %clk_src_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_src_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp6.not.i.i, label %if.end24.if.end.i_crit_edge, label %if.end24.for.body.i.i_crit_edge

if.end24.for.body.i.i_crit_edge:                  ; preds = %if.end24
  br label %for.body.i.i

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end24.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end24.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.resource_pool, ptr %1, i32 0, i32 30, i32 %i.07.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %26, %22
  br i1 %cmp1.i.i, label %find_matching_clock_source.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %24
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

find_matching_clock_source.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i.i)
  %cmp.i = icmp sgt i32 %i.07.i.i, -1
  br i1 %cmp.i, label %if.then.i46, label %find_matching_clock_source.exit.i.if.end.i_crit_edge

find_matching_clock_source.exit.i.if.end.i_crit_edge: ; preds = %find_matching_clock_source.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i46:                                      ; preds = %find_matching_clock_source.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i44 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 4, i32 3, i32 %i.07.i.i
  %27 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i44, align 1
  %inc.i45 = add i8 %28, 1
  store i8 %inc.i45, ptr %arrayidx.i44, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i46, %find_matching_clock_source.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.end24.if.end.i_crit_edge
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 29
  %29 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dp_clock_source.i, align 4
  %cmp1.i47 = icmp eq ptr %30, %22
  br i1 %cmp1.i47, label %if.then2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %dp_clock_source_ref_count.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %dp_clock_source_ref_count.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp_clock_source_ref_count.i, align 1
  %inc3.i = add i8 %32, 1
  store i8 %inc3.i, ptr %dp_clock_source_ref_count.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 4, %if.end20.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pipe_need_reprogram(ptr nocapture noundef readonly %pipe_ctx_old, ptr nocapture noundef readonly %pipe_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx_old, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %stream2 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %4 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end5:                                          ; preds = %if.end
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal, align 4
  %signal8 = getelementptr inbounds %struct.dc_stream_state, ptr %5, i32 0, i32 36
  %10 = ptrtoint ptr %signal8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %signal8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9.not = icmp eq i32 %9, %11
  br i1 %cmp9.not, label %if.end11, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end11:                                         ; preds = %if.end5
  %audio = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx_old, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %audio, align 8
  %audio13 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %audio13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %audio13, align 8
  %cmp14.not = icmp eq ptr %13, %15
  br i1 %cmp14.not, label %if.end16, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end16:                                         ; preds = %if.end11
  %clock_source = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx_old, i32 0, i32 5
  %16 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clock_source, align 8
  %clock_source17 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 5
  %18 = ptrtoint ptr %clock_source17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clock_source17, align 8
  %cmp18.not = icmp eq ptr %17, %19
  %cmp21.not = icmp eq ptr %1, %5
  %or.cond = select i1 %cmp18.not, i1 true, i1 %cmp21.not
  br i1 %or.cond, label %if.end23, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end23:                                         ; preds = %if.end16
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx_old, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream_enc, align 4
  %stream_enc26 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %stream_enc26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream_enc26, align 4
  %cmp27.not = icmp eq ptr %21, %23
  br i1 %cmp27.not, label %if.end.i, label %if.end23.return_crit_edge

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i:                                         ; preds = %if.end23
  %output_color_space.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %output_color_space.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %output_color_space.i, align 4
  %output_color_space1.i = getelementptr inbounds %struct.dc_stream_state, ptr %5, i32 0, i32 20
  %26 = ptrtoint ptr %output_color_space1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %output_color_space1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp2.not.i = icmp eq i32 %25, %27
  br i1 %cmp2.not.i, label %is_timing_changed.exit, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

is_timing_changed.exit:                           ; preds = %if.end.i
  %timing.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5
  %timing5.i = getelementptr inbounds %struct.dc_stream_state, ptr %5, i32 0, i32 5
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(128) %timing.i, ptr noundef dereferenceable(128) %timing5.i, i32 128) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp6.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp6.i.not, label %if.end33, label %is_timing_changed.exit.return_crit_edge

is_timing_changed.exit.return_crit_edge:          ; preds = %is_timing_changed.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end33:                                         ; preds = %is_timing_changed.exit
  %dpms_off = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 37
  %28 = ptrtoint ptr %dpms_off to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dpms_off, align 8, !range !84
  %dpms_off37 = getelementptr inbounds %struct.dc_stream_state, ptr %5, i32 0, i32 37
  %30 = ptrtoint ptr %dpms_off37 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dpms_off37, align 8, !range !84
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp40.not = icmp eq i8 %29, %31
  br i1 %cmp40.not, label %if.end43, label %if.end33.return_crit_edge

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end43:                                         ; preds = %if.end33
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link, align 4
  %link_state_valid = getelementptr inbounds %struct.dc_link, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %link_state_valid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %link_state_valid, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp47 = icmp eq i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp54 = icmp eq i8 %29, 0
  %or.cond116 = select i1 %cmp47, i1 %cmp54, i1 false
  br i1 %or.cond116, label %if.end43.return_crit_edge, label %if.end57

if.end43.return_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end57:                                         ; preds = %if.end43
  %dsc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx_old, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %dsc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc, align 4
  %dsc60 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %dsc60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsc60, align 4
  %cmp61.not = icmp eq ptr %37, %39
  br i1 %cmp61.not, label %if.end64, label %if.end57.return_crit_edge

if.end57.return_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end64:                                         ; preds = %if.end57
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %45, i32 0, i32 40
  %46 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %link_encs_assign, align 4
  %tobool66.not = icmp eq ptr %49, null
  br i1 %tobool66.not, label %if.end64.return_crit_edge, label %if.then67

if.end64.return_crit_edge:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  %current_state = getelementptr inbounds %struct.dc, ptr %43, i32 0, i32 11
  %50 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %current_state, align 4
  %link_enc_cfg_ctx = getelementptr inbounds %struct.dc_state, ptr %51, i32 0, i32 4, i32 6
  %52 = ptrtoint ptr %link_enc_cfg_ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link_enc_cfg_ctx, align 8
  store i32 0, ptr %link_enc_cfg_ctx, align 8
  %54 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stream, align 4
  %call78 = tail call ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr noundef %43, ptr noundef %55) #18
  %56 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stream2, align 4
  %link_enc = getelementptr inbounds %struct.dc_stream_state, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %link_enc, align 8
  %cmp80.not = icmp ne ptr %call78, %59
  %60 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %current_state, align 4
  %link_enc_cfg_ctx86 = getelementptr inbounds %struct.dc_state, ptr %61, i32 0, i32 4, i32 6
  %62 = ptrtoint ptr %link_enc_cfg_ctx86 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %53, ptr %link_enc_cfg_ctx86, align 8
  br label %return

return:                                           ; preds = %if.then67, %if.end64.return_crit_edge, %if.end57.return_crit_edge, %if.end43.return_crit_edge, %if.end33.return_crit_edge, %is_timing_changed.exit.return_crit_edge, %if.end.i.return_crit_edge, %if.end23.return_crit_edge, %if.end16.return_crit_edge, %if.end11.return_crit_edge, %if.end5.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp80.not, %if.then67 ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ true, %if.end5.return_crit_edge ], [ true, %if.end11.return_crit_edge ], [ true, %if.end16.return_crit_edge ], [ true, %if.end23.return_crit_edge ], [ true, %is_timing_changed.exit.return_crit_edge ], [ true, %if.end33.return_crit_edge ], [ true, %if.end43.return_crit_edge ], [ true, %if.end57.return_crit_edge ], [ false, %if.end64.return_crit_edge ], [ true, %if.end.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @resource_build_bit_depth_reduction_params(ptr nocapture noundef readonly %stream, ptr noundef %fmt_bit_depth) local_unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dither_option = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 21
  %0 = ptrtoint ptr %dither_option to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dither_option, align 8
  %pixel_encoding1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %2 = ptrtoint ptr %pixel_encoding1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_encoding1, align 4
  %4 = call ptr @memset(ptr %fmt_bit_depth, i32 0, i32 20)
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %entry.if.else168_crit_edge [
    i32 0, label %if.then
    i32 1, label %entry.cleanup_crit_edge
    i32 11, label %if.end50.thread
    i32 12, label %entry.if.end50_crit_edge
    i32 21, label %entry.if.end50_crit_edge326
    i32 22, label %entry.if.end50_crit_edge327
    i32 13, label %entry.if.then39_crit_edge
    i32 15, label %entry.if.then39_crit_edge328
    i32 14, label %entry.if.then39_crit_edge329
    i32 16, label %entry.if.then39_crit_edge330
    i32 17, label %entry.if.then39_crit_edge331
    i32 18, label %entry.if.then39_crit_edge332
    i32 8, label %entry.if.then56_crit_edge
    i32 5, label %entry.if.then56_crit_edge333
    i32 2, label %entry.if.then56_crit_edge334
    i32 6, label %entry.if.then105_crit_edge
    i32 9, label %entry.if.then105_crit_edge335
    i32 23, label %entry.if.then105_crit_edge336
    i32 7, label %entry.if.then134_crit_edge
    i32 10, label %entry.if.then134_crit_edge337
    i32 19, label %entry.if.then134_crit_edge338
    i32 20, label %entry.if.then134_crit_edge339
  ]

entry.if.then134_crit_edge339:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

entry.if.then134_crit_edge338:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

entry.if.then134_crit_edge337:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

entry.if.then134_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

entry.if.then105_crit_edge336:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

entry.if.then105_crit_edge335:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

entry.if.then105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

entry.if.then56_crit_edge334:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then56

entry.if.then56_crit_edge333:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then56

entry.if.then56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then56

entry.if.then39_crit_edge332:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then39

entry.if.then39_crit_edge331:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then39

entry.if.then39_crit_edge330:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then39

entry.if.then39_crit_edge329:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then39

entry.if.then39_crit_edge328:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then39

entry.if.then39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then39

entry.if.end50_crit_edge327:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

entry.if.end50_crit_edge326:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.if.else168_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else168

if.then:                                          ; preds = %entry
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 16
  %6 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %display_color_depth, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %7, label %if.then.cleanup_crit_edge [
    i32 1, label %if.then56.thread
    i32 2, label %if.then.if.then105_crit_edge
    i32 3, label %if.then.if.then134_crit_edge
  ]

if.then.if.then134_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

if.then.if.then105_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then56.thread:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load58321 = load i32, ptr %fmt_bit_depth, align 4
  %bf.set60322 = and i32 %bf.load58321, 268435455
  %bf.set68323 = or i32 %bf.set60322, -805306368
  store i32 %bf.set68323, ptr %fmt_bit_depth, align 4
  br label %if.then77

if.end50.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %fmt_bit_depth, align 4
  %bf.set = and i32 %bf.load, 536870911
  %bf.clear12 = or i32 %bf.set, -2147483648
  store i32 %bf.clear12, ptr %fmt_bit_depth, align 4
  br label %if.else168

if.then39:                                        ; preds = %entry.if.then39_crit_edge, %entry.if.then39_crit_edge328, %entry.if.then39_crit_edge329, %entry.if.then39_crit_edge330, %entry.if.then39_crit_edge331, %entry.if.then39_crit_edge332
  br label %if.end50

if.end50:                                         ; preds = %if.then39, %entry.if.end50_crit_edge, %entry.if.end50_crit_edge326, %entry.if.end50_crit_edge327
  %.sink = phi i32 [ -1073741824, %if.then39 ], [ -1610612736, %entry.if.end50_crit_edge ], [ -1610612736, %entry.if.end50_crit_edge326 ], [ -1610612736, %entry.if.end50_crit_edge327 ]
  %11 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load20 = load i32, ptr %fmt_bit_depth, align 4
  %bf.set22 = and i32 %bf.load20, 536870911
  %bf.set26 = or i32 %bf.set22, %.sink
  store i32 %bf.set26, ptr %fmt_bit_depth, align 4
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %if.end50.if.else168_crit_edge [
    i32 20, label %if.end50.if.then134_crit_edge
    i32 19, label %if.end50.if.then134_crit_edge340
    i32 18, label %if.end50.if.then105_crit_edge
    i32 21, label %if.end50.if.then77_crit_edge
    i32 15, label %if.end50.if.then77_crit_edge341
    i32 14, label %if.end50.if.then105_crit_edge342
  ]

if.end50.if.then105_crit_edge342:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

if.end50.if.then77_crit_edge341:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then77

if.end50.if.then77_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then77

if.end50.if.then105_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

if.end50.if.then134_crit_edge340:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

if.end50.if.then134_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

if.end50.if.else168_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else168

if.then56:                                        ; preds = %entry.if.then56_crit_edge, %entry.if.then56_crit_edge333, %entry.if.then56_crit_edge334
  %13 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load58 = load i32, ptr %fmt_bit_depth, align 4
  %bf.set60 = and i32 %bf.load58, 268435455
  %bf.set68 = or i32 %bf.set60, -805306368
  store i32 %bf.set68, ptr %fmt_bit_depth, align 4
  %14 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %1, label %if.then56.if.else168_crit_edge [
    i32 7, label %if.then56.if.then134_crit_edge
    i32 6, label %if.then56.if.then105_crit_edge
    i32 8, label %if.then56.if.then77_crit_edge
    i32 5, label %if.then56.if.then77_crit_edge343
  ]

if.then56.if.then77_crit_edge343:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then77

if.then56.if.then77_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then77

if.then56.if.then105_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

if.then56.if.then134_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then134

if.then56.if.else168_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else168

if.then77:                                        ; preds = %if.then56.if.then77_crit_edge, %if.then56.if.then77_crit_edge343, %if.end50.if.then77_crit_edge, %if.end50.if.then77_crit_edge341, %if.then56.thread
  %option.0311 = phi i32 [ %1, %if.end50.if.then77_crit_edge ], [ %1, %if.end50.if.then77_crit_edge341 ], [ %1, %if.then56.if.then77_crit_edge ], [ %1, %if.then56.if.then77_crit_edge343 ], [ 8, %if.then56.thread ]
  %15 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load79 = load i32, ptr %fmt_bit_depth, align 4
  %bf.set81 = and i32 %bf.load79, -240123905
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp90 = icmp eq i32 %3, 1
  %bf.set89 = select i1 %cmp90, i32 139460608, i32 135266304
  %bf.set94 = or i32 %bf.set89, %bf.set81
  br label %if.end157

if.then105:                                       ; preds = %if.then56.if.then105_crit_edge, %if.end50.if.then105_crit_edge, %if.end50.if.then105_crit_edge342, %if.then.if.then105_crit_edge, %entry.if.then105_crit_edge, %entry.if.then105_crit_edge335, %entry.if.then105_crit_edge336
  %option.0310 = phi i32 [ %1, %if.end50.if.then105_crit_edge ], [ %1, %if.end50.if.then105_crit_edge342 ], [ %1, %if.then56.if.then105_crit_edge ], [ 9, %if.then.if.then105_crit_edge ], [ %1, %entry.if.then105_crit_edge ], [ %1, %entry.if.then105_crit_edge335 ], [ %1, %entry.if.then105_crit_edge336 ]
  %16 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load107 = load i32, ptr %fmt_bit_depth, align 4
  %bf.set109 = and i32 %bf.load107, -240123905
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp118 = icmp eq i32 %3, 1
  %bf.set117 = select i1 %cmp118, i32 173015040, i32 168820736
  %bf.set125 = or i32 %bf.set117, %bf.set109
  br label %if.end157

if.then134:                                       ; preds = %if.then56.if.then134_crit_edge, %if.end50.if.then134_crit_edge, %if.end50.if.then134_crit_edge340, %if.then.if.then134_crit_edge, %entry.if.then134_crit_edge, %entry.if.then134_crit_edge337, %entry.if.then134_crit_edge338, %entry.if.then134_crit_edge339
  %option.0309 = phi i32 [ %1, %if.end50.if.then134_crit_edge ], [ %1, %if.end50.if.then134_crit_edge340 ], [ %1, %if.then56.if.then134_crit_edge ], [ 10, %if.then.if.then134_crit_edge ], [ %1, %entry.if.then134_crit_edge ], [ %1, %entry.if.then134_crit_edge337 ], [ %1, %entry.if.then134_crit_edge338 ], [ %1, %entry.if.then134_crit_edge339 ]
  %17 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load136 = load i32, ptr %fmt_bit_depth, align 4
  %bf.set138 = and i32 %bf.load136, -240123905
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp147 = icmp eq i32 %3, 1
  %bf.set146 = select i1 %cmp147, i32 206569472, i32 202375168
  %bf.set154 = or i32 %bf.set146, %bf.set138
  br label %if.end157

if.end157:                                        ; preds = %if.then134, %if.then105, %if.then77
  %bf.set125.sink = phi i32 [ %bf.set125, %if.then105 ], [ %bf.set154, %if.then134 ], [ %bf.set94, %if.then77 ]
  %option.0308 = phi i32 [ %option.0310, %if.then105 ], [ %option.0309, %if.then134 ], [ %option.0311, %if.then77 ]
  %18 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.set125.sink, ptr %fmt_bit_depth, align 4
  %option.0.off = add nsw i32 %option.0308, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %option.0.off)
  %switch = icmp ult i32 %option.0.off, 3
  br i1 %switch, label %if.then163, label %if.end157.if.else168_crit_edge

if.end157.if.else168_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else168

if.then163:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load165 = load i32, ptr %fmt_bit_depth, align 4
  %bf.clear166 = and i32 %bf.load165, -2097153
  br label %if.end173

if.else168:                                       ; preds = %if.end157.if.else168_crit_edge, %if.then56.if.else168_crit_edge, %if.end50.if.else168_crit_edge, %if.end50.thread, %entry.if.else168_crit_edge
  %option.0312 = phi i32 [ %1, %if.end50.if.else168_crit_edge ], [ %option.0308, %if.end157.if.else168_crit_edge ], [ %1, %if.then56.if.else168_crit_edge ], [ 11, %if.end50.thread ], [ %1, %entry.if.else168_crit_edge ]
  %20 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load170 = load i32, ptr %fmt_bit_depth, align 4
  %bf.set172 = or i32 %bf.load170, 2097152
  br label %if.end173

if.end173:                                        ; preds = %if.else168, %if.then163
  %option.0307 = phi i32 [ %option.0312, %if.else168 ], [ %option.0308, %if.then163 ]
  %storemerge = phi i32 [ %bf.set172, %if.else168 ], [ %bf.clear166, %if.then163 ]
  %21 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %fmt_bit_depth, align 4
  %switch.tableidx = add i32 %option.0307, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 22
  br i1 %22, label %switch.hole_check, label %if.end173.if.end222_crit_edge

if.end173.if.end222_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end222

switch.hole_check:                                ; preds = %if.end173
  %switch.shifted = lshr i32 3653639, %switch.tableidx
  %23 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %switch.lobit.not = icmp eq i32 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end222_crit_edge, label %switch.lookup

switch.hole_check.if.end222_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end222

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [22 x i32], ptr @switch.table.resource_build_bit_depth_reduction_params, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bf.set204 = and i32 %storemerge, -917505
  %bf.set208 = or i32 %bf.set204, %switch.load
  %25 = ptrtoint ptr %fmt_bit_depth to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %bf.set208, ptr %fmt_bit_depth, align 4
  br label %if.end222

if.end222:                                        ; preds = %switch.lookup, %switch.hole_check.if.end222_crit_edge, %if.end173.if.end222_crit_edge
  %pixel_encoding223 = getelementptr inbounds %struct.bit_depth_reduction_params, ptr %fmt_bit_depth, i32 0, i32 4
  %26 = ptrtoint ptr %pixel_encoding223 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %3, ptr %pixel_encoding223, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end222, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_validate_stream(ptr nocapture noundef readonly %dc, ptr noundef %stream) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link1, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %2 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_pool, align 8
  %timing_generators = getelementptr inbounds %struct.resource_pool, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %timing_generators to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timing_generators, align 4
  tail call fastcc void @calculate_phy_pix_clks(ptr noundef %stream)
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %call = tail call zeroext i1 %9(ptr noundef %5, ptr noundef %timing) #18
  br i1 %call, label %if.then2, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then2:                                         ; preds = %entry
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %land.lhs.true, label %if.then2.if.then11_crit_edge

if.then2.if.then11_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11

land.lhs.true:                                    ; preds = %if.then2
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 38
  %12 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_enc, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %validate_output_with_stream = getelementptr inbounds %struct.link_encoder_funcs, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %validate_output_with_stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %validate_output_with_stream, align 4
  %call6 = tail call zeroext i1 %17(ptr noundef %13, ptr noundef %stream) #18
  br i1 %call6, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11

if.then11:                                        ; preds = %land.lhs.true.if.then11_crit_edge, %if.then2.if.then11_crit_edge
  %call13 = tail call i32 @dc_link_validate_mode_timing(ptr noundef %stream, ptr noundef %1, ptr noundef %timing) #18
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %res.2 = phi i32 [ %call13, %if.then11 ], [ 6, %land.lhs.true.if.end14_crit_edge ], [ 5, %entry.if.end14_crit_edge ]
  ret i32 %res.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_link_validate_mode_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_validate_plane(ptr noundef %dc, ptr noundef %plane_state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %width4 = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %height8 = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %8 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %9, i32 0, i32 40
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %validate_plane = getelementptr inbounds %struct.resource_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %validate_plane to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %validate_plane, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %caps = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2
  %call = tail call i32 %13(ptr noundef %plane_state, ptr noundef %caps) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then10 ], [ 9, %lor.lhs.false6.cleanup_crit_edge ], [ 9, %lor.lhs.false3.cleanup_crit_edge ], [ 9, %lor.lhs.false.cleanup_crit_edge ], [ 9, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @resource_pixel_format_to_bpp(i32 noundef %format) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %format)
  %0 = icmp ult i32 %format, 22
  br i1 %0, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3146, i32 noundef 9, ptr noundef null) #18
  tail call void @kgdb_breakpoint() #18
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 3936255, %format
  %1 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.lobit.not = icmp eq i32 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [22 x i32], ptr @switch.table.resource_pixel_format_to_bpp, i32 0, i32 %format
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_audio_check(ptr noundef readonly %aud_modes, ptr nocapture noundef %audio_chk) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %aud_modes, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %audio_chk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %audio_chk, align 4
  %max_audiosample_rate = getelementptr inbounds %struct.audio_check, ptr %audio_chk, i32 0, i32 1
  %1 = ptrtoint ptr %max_audiosample_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_audiosample_rate, align 4
  %mode_count = getelementptr inbounds %struct.audio_info, ptr %aud_modes, i32 0, i32 8
  %2 = ptrtoint ptr %mode_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %if.then.if.end9_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.audio_info, ptr %aud_modes, i32 0, i32 9, i32 %i.023
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.if.end44.i_crit_edge, label %if.then.i

for.body.if.end44.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44.i

if.then.i:                                        ; preds = %for.body
  %sample_rates.i = getelementptr %struct.audio_info, ptr %aud_modes, i32 0, i32 9, i32 %i.023, i32 2
  %4 = ptrtoint ptr %sample_rates.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %sample_rates.i, align 1
  %5 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.get_max_audio_sample_rate.exit_crit_edge

if.then.i.get_max_audio_sample_rate.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_max_audio_sample_rate.exit

if.end.i:                                         ; preds = %if.then.i
  %6 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not.i = icmp eq i8 %6, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.get_max_audio_sample_rate.exit_crit_edge

if.end.i.get_max_audio_sample_rate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_max_audio_sample_rate.exit

if.end9.i:                                        ; preds = %if.end.i
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not.i = icmp eq i8 %7, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end9.i.get_max_audio_sample_rate.exit_crit_edge

if.end9.i.get_max_audio_sample_rate.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_max_audio_sample_rate.exit

if.end16.i:                                       ; preds = %if.end9.i
  %8 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not.i = icmp eq i8 %8, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end16.i.get_max_audio_sample_rate.exit_crit_edge

if.end16.i.get_max_audio_sample_rate.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_max_audio_sample_rate.exit

if.end23.i:                                       ; preds = %if.end16.i
  %9 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool28.not.i = icmp eq i8 %9, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end23.i.get_max_audio_sample_rate.exit_crit_edge

if.end23.i.get_max_audio_sample_rate.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_max_audio_sample_rate.exit

if.end30.i:                                       ; preds = %if.end23.i
  %10 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool35.not.i = icmp eq i8 %10, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end30.i.get_max_audio_sample_rate.exit_crit_edge

if.end30.i.get_max_audio_sample_rate.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_max_audio_sample_rate.exit

if.end37.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool41.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool41.not.i, label %if.end37.i.if.end44.i_crit_edge, label %if.end37.i.get_max_audio_sample_rate.exit_crit_edge

if.end37.i.get_max_audio_sample_rate.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_max_audio_sample_rate.exit

if.end37.i.if.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end37.i.if.end44.i_crit_edge, %for.body.if.end44.i_crit_edge
  br label %get_max_audio_sample_rate.exit

get_max_audio_sample_rate.exit:                   ; preds = %if.end44.i, %if.end37.i.get_max_audio_sample_rate.exit_crit_edge, %if.end30.i.get_max_audio_sample_rate.exit_crit_edge, %if.end23.i.get_max_audio_sample_rate.exit_crit_edge, %if.end16.i.get_max_audio_sample_rate.exit_crit_edge, %if.end9.i.get_max_audio_sample_rate.exit_crit_edge, %if.end.i.get_max_audio_sample_rate.exit_crit_edge, %if.then.i.get_max_audio_sample_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 441000, %if.end44.i ], [ 192000, %if.then.i.get_max_audio_sample_rate.exit_crit_edge ], [ 176400, %if.end.i.get_max_audio_sample_rate.exit_crit_edge ], [ 96000, %if.end9.i.get_max_audio_sample_rate.exit_crit_edge ], [ 88200, %if.end16.i.get_max_audio_sample_rate.exit_crit_edge ], [ 48000, %if.end23.i.get_max_audio_sample_rate.exit_crit_edge ], [ 44100, %if.end30.i.get_max_audio_sample_rate.exit_crit_edge ], [ 32000, %if.end37.i.get_max_audio_sample_rate.exit_crit_edge ]
  %11 = ptrtoint ptr %max_audiosample_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_audiosample_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %retval.0.i)
  %cmp2 = icmp ult i32 %12, %retval.0.i
  br i1 %cmp2, label %if.then3, label %get_max_audio_sample_rate.exit.for.inc_crit_edge

get_max_audio_sample_rate.exit.for.inc_crit_edge: ; preds = %get_max_audio_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then3:                                         ; preds = %get_max_audio_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %max_audiosample_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %max_audiosample_rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %get_max_audio_sample_rate.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.023, 1
  %14 = ptrtoint ptr %mode_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_count, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  %16 = ptrtoint ptr %max_audiosample_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %max_audiosample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %.pr)
  %cmp6 = icmp ugt i32 %.pr, 192000
  br i1 %cmp6, label %if.then7, label %for.end.if.end9_crit_edge

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %audio_chk to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 9, ptr %audio_chk, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.end.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %acat = getelementptr inbounds %struct.audio_check, ptr %audio_chk, i32 0, i32 2
  %18 = ptrtoint ptr %acat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %acat, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reset_syncd_pipes_from_disabled_pipes(ptr nocapture noundef readonly %dc, ptr nocapture noundef %context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %pipe_count57 = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %pipe_count57 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe_count57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp58.not = icmp eq i32 %3, 0
  br i1 %cmp58.not, label %entry.for.end36_crit_edge, label %for.body.lr.ph

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %res_ctx2 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc34.for.body_crit_edge ]
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.059
  %arrayidx4 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %i.059
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.059, i32 1
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc34_crit_edge, label %if.end

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34

if.end:                                           ; preds = %for.body
  %top_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.059, i32 9
  %8 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %top_pipe, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.for.inc34_crit_edge

if.end.for.inc34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34

lor.lhs.false:                                    ; preds = %if.end
  %prev_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.059, i32 12
  %10 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.for.inc34_crit_edge

lor.lhs.false.for.inc34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34

if.end8:                                          ; preds = %lor.lhs.false
  %stream9 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %i.059, i32 1
  %12 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream9, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end8.if.then12_crit_edge, label %lor.lhs.false11

if.end8.if.then12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

lor.lhs.false11:                                  ; preds = %if.end8
  %call = tail call zeroext i1 @pipe_need_reprogram(ptr noundef %arrayidx, ptr noundef %arrayidx4)
  br i1 %call, label %lor.lhs.false11.if.then12_crit_edge, label %lor.lhs.false11.for.inc34_crit_edge

lor.lhs.false11.for.inc34_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34

lor.lhs.false11.if.then12_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false11.if.then12_crit_edge, %if.end8.if.then12_crit_edge
  %14 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res_pool, align 8
  %pipe_count1553 = getelementptr inbounds %struct.resource_pool, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %pipe_count1553 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe_count1553, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1654.not = icmp eq i32 %17, 0
  br i1 %cmp1654.not, label %if.then12.for.inc34_crit_edge, label %for.body17.lr.ph

if.then12.for.inc34_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34

for.body17.lr.ph:                                 ; preds = %if.then12
  %pipe_idx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.059, i32 7
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %j.055 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc.for.body17_crit_edge ]
  %pipe_idx_syncd = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %j.055, i32 8
  %18 = ptrtoint ptr %pipe_idx_syncd to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pipe_idx_syncd, align 1
  %conv = zext i8 %19 to i32
  %and = and i32 %conv, 127
  %20 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pipe_idx, align 8
  %conv21 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv21)
  %cmp22 = icmp eq i32 %and, %conv21
  %and27 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond = or i1 %cmp22, %tobool28.not
  br i1 %or.cond, label %if.then29, label %for.body17.for.inc_crit_edge

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then29:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #20
  %22 = trunc i32 %j.055 to i8
  %conv30 = or i8 %22, -128
  %23 = ptrtoint ptr %pipe_idx_syncd to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv30, ptr %pipe_idx_syncd, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %for.body17.for.inc_crit_edge
  %inc = add nuw i32 %j.055, 1
  %24 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %res_pool, align 8
  %pipe_count15 = getelementptr inbounds %struct.resource_pool, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %pipe_count15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pipe_count15, align 4
  %cmp16 = icmp ult i32 %inc, %27
  br i1 %cmp16, label %for.inc.for.body17_crit_edge, label %for.inc.for.inc34_crit_edge

for.inc.for.inc34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body17

for.inc34:                                        ; preds = %for.inc.for.inc34_crit_edge, %if.then12.for.inc34_crit_edge, %lor.lhs.false11.for.inc34_crit_edge, %lor.lhs.false.for.inc34_crit_edge, %if.end.for.inc34_crit_edge, %for.body.for.inc34_crit_edge
  %inc35 = add nuw i32 %i.059, 1
  %28 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pipe_count, align 4
  %cmp = icmp ult i32 %inc35, %31
  br i1 %cmp, label %for.inc34.for.body_crit_edge, label %for.inc34.for.end36_crit_edge

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end36

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %entry.for.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @check_syncd_pipes_for_disabled_master_pipe(ptr nocapture noundef readonly %dc, ptr nocapture noundef %context, i8 noundef zeroext %disabled_master_pipe_idx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %idxprom = zext i8 %disabled_master_pipe_idx to i32
  %pipe_idx_syncd = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom, i32 8
  %0 = ptrtoint ptr %pipe_idx_syncd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pipe_idx_syncd, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %idxprom)
  %cmp.not = icmp ne i32 %and, %idxprom
  %and6 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %or = or i8 %disabled_master_pipe_idx, -128
  %2 = ptrtoint ptr %pipe_idx_syncd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %or, ptr %pipe_idx_syncd, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %3 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res_pool, align 8
  %pipe_count52 = getelementptr inbounds %struct.resource_pool, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %pipe_count52 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe_count52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1053.not = icmp eq i32 %6, 0
  br i1 %cmp1053.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %pipe_idx_syncd15 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.054, i32 8
  %7 = ptrtoint ptr %pipe_idx_syncd15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pipe_idx_syncd15, align 1
  %conv16 = zext i8 %8 to i32
  %and17 = and i32 %conv16, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and17, i32 %idxprom)
  %cmp19 = icmp ne i32 %and17, %idxprom
  %and23 = and i32 %conv16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond50 = or i1 %cmp19, %tobool24.not
  call void @__sanitizer_cov_trace_cmp4(i32 %i.054, i32 %idxprom)
  %cmp29.not = icmp eq i32 %i.054, %idxprom
  %or.cond51 = select i1 %or.cond50, i1 true, i1 %cmp29.not
  br i1 %or.cond51, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %i.054, i32 noundef %idxprom) #18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.check_syncd_pipes_for_disabled_master_pipe, i32 noundef 3266) #18
  tail call void @kgdb_breakpoint() #18
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.054, 1
  %9 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe_count, align 4
  %cmp10 = icmp ult i32 %inc, %12
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @resource_transmitter_to_phy_idx(ptr nocapture noundef readnone %dc, i32 noundef %transmitter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %transmitter to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8, [1 x i64], [1 x i64]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calculate_init_and_vp(i1 noundef zeroext %flip_scan_dir, i32 noundef %recout_offset_within_recout_full, i32 noundef %recout_size, i32 noundef %src_size, i32 noundef %taps, [1 x i64] %ratio.coerce, ptr nocapture noundef %init, ptr nocapture noundef %vp_offset, ptr nocapture noundef %vp_size) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp4 = alloca %struct.fixed31_32, align 8
  %agg.tmp20 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #18
  %conv1.i.i = zext i32 %recout_offset_within_recout_full to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %shl.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp, [1 x i64] %ratio.coerce, [1 x i64] %.fca.0.insert.i) #18
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %0)
  %temp.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #18
  %1 = call i64 @llvm.abs.i64(i64 %temp.sroa.0.0.copyload, i1 false) #18
  %extract12.i = lshr i64 %1, 32
  %extract.t13.i = trunc i64 %extract12.i to i32
  %sub7.i = sub i32 0, %extract.t13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %temp.sroa.0.0.copyload)
  %cmp414.i = icmp slt i64 %temp.sroa.0.0.copyload, 0
  %retval.0.i = select i1 %cmp414.i, i32 %sub7.i, i32 %extract.t13.i
  %2 = ptrtoint ptr %vp_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %retval.0.i, ptr %vp_offset, align 4
  %and = and i64 %temp.sroa.0.0.copyload, 4294967295
  %add = add i32 %taps, 1
  %conv1.i.i92 = zext i32 %add to i64
  %shl.i.i93 = shl nuw i64 %conv1.i.i92, 32
  %arg1.coerce.fca.0.extract.i.i = extractvalue [1 x i64] %ratio.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg1.coerce.fca.0.extract.i.i)
  %cmp.i.i = icmp slt i64 %arg1.coerce.fca.0.extract.i.i, 0
  %sub.i.i = sub i64 9223372036854775807, %arg1.coerce.fca.0.extract.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %shl.i.i93)
  %cmp4.not.i.i = icmp slt i64 %sub.i.i, %shl.i.i93
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp4.not.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %entry.dc_fixpt_add_int.exit_crit_edge

entry.dc_fixpt_add_int.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add_int.exit

lor.rhs.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %arg1.coerce.fca.0.extract.i.i)
  %cmp6.i.i = icmp sgt i64 %arg1.coerce.fca.0.extract.i.i, -1
  %sub8.i.i = sub i64 -9223372036854775808, %arg1.coerce.fca.0.extract.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i, i64 %shl.i.i93)
  %cmp10.i.i = icmp sgt i64 %sub8.i.i, %shl.i.i93
  %or.cond67.i.i = select i1 %cmp6.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond67.i.i, label %land.rhs13.i.i, label %lor.rhs.i.i.dc_fixpt_add_int.exit_crit_edge

lor.rhs.i.i.dc_fixpt_add_int.exit_crit_edge:      ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add_int.exit

land.rhs13.i.i:                                   ; preds = %lor.rhs.i.i
  %.b65.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !88
  br i1 %.b65.i.i, label %land.rhs13.i.i.if.then50.i.i_crit_edge, label %if.then.i.i, !prof !85

land.rhs13.i.i.if.then50.i.i_crit_edge:           ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50.i.i

if.then.i.i:                                      ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !88
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 250, i32 noundef 9, ptr noundef null) #18, !noalias !88
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then.i.i, %land.rhs13.i.i.if.then50.i.i_crit_edge
  call void @kgdb_breakpoint() #18, !noalias !88
  br label %dc_fixpt_add_int.exit

dc_fixpt_add_int.exit:                            ; preds = %if.then50.i.i, %lor.rhs.i.i.dc_fixpt_add_int.exit_crit_edge, %entry.dc_fixpt_add_int.exit_crit_edge
  %add.i.i = add i64 %shl.i.i93, %arg1.coerce.fca.0.extract.i.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4, i64 noundef %add.i.i, i64 noundef 8589934592) #18
  %3 = ptrtoint ptr %agg.tmp4 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.fca.0.load40 = load i64, ptr %agg.tmp4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load40)
  %cmp.i = icmp slt i64 %.fca.0.load40, 0
  %sub.i = sub i64 9223372036854775807, %.fca.0.load40
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %and)
  %cmp4.not.i = icmp slt i64 %sub.i, %and
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %dc_fixpt_add_int.exit.dc_fixpt_add.exit_crit_edge

dc_fixpt_add_int.exit.dc_fixpt_add.exit_crit_edge: ; preds = %dc_fixpt_add_int.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add.exit

lor.rhs.i:                                        ; preds = %dc_fixpt_add_int.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load40)
  %cmp6.i = icmp sgt i64 %.fca.0.load40, -1
  %sub8.i = sub i64 -9223372036854775808, %.fca.0.load40
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i, i64 %and)
  %cmp10.i = icmp sgt i64 %sub8.i, %and
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_add.exit_crit_edge

lor.rhs.i.dc_fixpt_add.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !93
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i, !prof !85

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50.i

if.then.i:                                        ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !93
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 250, i32 noundef 9, ptr noundef null) #18, !noalias !93
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i, %land.rhs13.i.if.then50.i_crit_edge
  call void @kgdb_breakpoint() #18, !noalias !93
  br label %dc_fixpt_add.exit

dc_fixpt_add.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_add.exit_crit_edge, %dc_fixpt_add_int.exit.dc_fixpt_add.exit_crit_edge
  %add.i = add i64 %.fca.0.load40, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp.i94 = icmp slt i64 %add.i, 0
  %4 = call i64 @llvm.abs.i64(i64 %add.i, i1 false) #18
  %and.i = and i64 %4, -8192
  %sub57.i = sub i64 0, %and.i
  %arg.sroa.0.1.i = select i1 %cmp.i94, i64 %sub57.i, i64 %and.i
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %arg.sroa.0.1.i, ptr %init, align 8
  %extract12.i95 = lshr i64 %4, 32
  %extract.t13.i96 = trunc i64 %extract12.i95 to i32
  %sub7.i97 = sub i32 0, %extract.t13.i96
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg.sroa.0.1.i)
  %cmp414.i98 = icmp slt i64 %arg.sroa.0.1.i, 0
  %retval.0.i99 = select i1 %cmp414.i98, i32 %sub7.i97, i32 %extract.t13.i96
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i99, i32 %taps)
  %cmp = icmp slt i32 %retval.0.i99, %taps
  br i1 %cmp, label %if.then, label %dc_fixpt_add.exit.if.end18_crit_edge

dc_fixpt_add.exit.if.end18_crit_edge:             ; preds = %dc_fixpt_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then:                                          ; preds = %dc_fixpt_add.exit
  %sub = sub i32 %taps, %retval.0.i99
  %6 = ptrtoint ptr %vp_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vp_offset, align 4
  %8 = call i32 @llvm.smin.i32(i32 %sub, i32 %7)
  %sub15 = sub i32 %7, %8
  %9 = ptrtoint ptr %vp_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub15, ptr %vp_offset, align 4
  %10 = ptrtoint ptr %init to i32
  call void @__asan_load8_noabort(i32 %10)
  %.unpack91 = load i64, ptr %init, align 8
  %conv1.i.i100 = zext i32 %8 to i64
  %shl.i.i101 = shl nuw i64 %conv1.i.i100, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack91)
  %cmp.i.i102 = icmp slt i64 %.unpack91, 0
  %sub.i.i103 = sub i64 9223372036854775807, %.unpack91
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i103, i64 %shl.i.i101)
  %cmp4.not.i.i104 = icmp slt i64 %sub.i.i103, %shl.i.i101
  %or.cond.i.i105 = select i1 %cmp.i.i102, i1 true, i1 %cmp4.not.i.i104
  br i1 %or.cond.i.i105, label %lor.rhs.i.i110, label %if.then.dc_fixpt_add_int.exit116_crit_edge

if.then.dc_fixpt_add_int.exit116_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add_int.exit116

lor.rhs.i.i110:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack91)
  %cmp6.i.i106 = icmp sgt i64 %.unpack91, -1
  %sub8.i.i107 = sub i64 -9223372036854775808, %.unpack91
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i107, i64 %shl.i.i101)
  %cmp10.i.i108 = icmp sgt i64 %sub8.i.i107, %shl.i.i101
  %or.cond67.i.i109 = select i1 %cmp6.i.i106, i1 true, i1 %cmp10.i.i108
  br i1 %or.cond67.i.i109, label %land.rhs13.i.i112, label %lor.rhs.i.i110.dc_fixpt_add_int.exit116_crit_edge

lor.rhs.i.i110.dc_fixpt_add_int.exit116_crit_edge: ; preds = %lor.rhs.i.i110
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add_int.exit116

land.rhs13.i.i112:                                ; preds = %lor.rhs.i.i110
  %.b65.i.i111 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !96
  br i1 %.b65.i.i111, label %land.rhs13.i.i112.if.then50.i.i114_crit_edge, label %if.then.i.i113, !prof !85

land.rhs13.i.i112.if.then50.i.i114_crit_edge:     ; preds = %land.rhs13.i.i112
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50.i.i114

if.then.i.i113:                                   ; preds = %land.rhs13.i.i112
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !96
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 250, i32 noundef 9, ptr noundef null) #18, !noalias !96
  br label %if.then50.i.i114

if.then50.i.i114:                                 ; preds = %if.then.i.i113, %land.rhs13.i.i112.if.then50.i.i114_crit_edge
  call void @kgdb_breakpoint() #18, !noalias !96
  br label %dc_fixpt_add_int.exit116

dc_fixpt_add_int.exit116:                         ; preds = %if.then50.i.i114, %lor.rhs.i.i110.dc_fixpt_add_int.exit116_crit_edge, %if.then.dc_fixpt_add_int.exit116_crit_edge
  %add.i.i115 = add i64 %shl.i.i101, %.unpack91
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i.i115, ptr %init, align 8
  br label %if.end18

if.end18:                                         ; preds = %dc_fixpt_add_int.exit116, %dc_fixpt_add.exit.if.end18_crit_edge
  %sub21 = add i32 %recout_size, -1
  %conv1.i.i117 = zext i32 %sub21 to i64
  %shl.i.i118 = shl nuw i64 %conv1.i.i117, 32
  %.fca.0.insert.i119 = insertvalue [1 x i64] poison, i64 %shl.i.i118, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp20, [1 x i64] %ratio.coerce, [1 x i64] %.fca.0.insert.i119) #18
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load8_noabort(i32 %12)
  %.unpack = load i64, ptr %init, align 8
  %13 = ptrtoint ptr %agg.tmp20 to i32
  call void @__asan_load8_noabort(i32 %13)
  %.fca.0.load = load i64, ptr %agg.tmp20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack)
  %cmp.i120 = icmp slt i64 %.unpack, 0
  %sub.i121 = sub i64 9223372036854775807, %.unpack
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i121, i64 %.fca.0.load)
  %cmp4.not.i122 = icmp slt i64 %sub.i121, %.fca.0.load
  %or.cond.i123 = select i1 %cmp.i120, i1 true, i1 %cmp4.not.i122
  br i1 %or.cond.i123, label %lor.rhs.i128, label %if.end18.dc_fixpt_add.exit134_crit_edge

if.end18.dc_fixpt_add.exit134_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add.exit134

lor.rhs.i128:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack)
  %cmp6.i124 = icmp sgt i64 %.unpack, -1
  %sub8.i125 = sub i64 -9223372036854775808, %.unpack
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i125, i64 %.fca.0.load)
  %cmp10.i126 = icmp sgt i64 %sub8.i125, %.fca.0.load
  %or.cond67.i127 = select i1 %cmp6.i124, i1 true, i1 %cmp10.i126
  br i1 %or.cond67.i127, label %land.rhs13.i130, label %lor.rhs.i128.dc_fixpt_add.exit134_crit_edge

lor.rhs.i128.dc_fixpt_add.exit134_crit_edge:      ; preds = %lor.rhs.i128
  call void @__sanitizer_cov_trace_pc() #20
  br label %dc_fixpt_add.exit134

land.rhs13.i130:                                  ; preds = %lor.rhs.i128
  %.b65.i129 = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !101
  br i1 %.b65.i129, label %land.rhs13.i130.if.then50.i132_crit_edge, label %if.then.i131, !prof !85

land.rhs13.i130.if.then50.i132_crit_edge:         ; preds = %land.rhs13.i130
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50.i132

if.then.i131:                                     ; preds = %land.rhs13.i130
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !101
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 250, i32 noundef 9, ptr noundef null) #18, !noalias !101
  br label %if.then50.i132

if.then50.i132:                                   ; preds = %if.then.i131, %land.rhs13.i130.if.then50.i132_crit_edge
  call void @kgdb_breakpoint() #18, !noalias !101
  br label %dc_fixpt_add.exit134

dc_fixpt_add.exit134:                             ; preds = %if.then50.i132, %lor.rhs.i128.dc_fixpt_add.exit134_crit_edge, %if.end18.dc_fixpt_add.exit134_crit_edge
  %add.i133 = add i64 %.fca.0.load, %.unpack
  %14 = call i64 @llvm.abs.i64(i64 %add.i133, i1 false) #18
  %extract12.i135 = lshr i64 %14, 32
  %extract.t13.i136 = trunc i64 %extract12.i135 to i32
  %sub7.i137 = sub i32 0, %extract.t13.i136
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i133)
  %cmp414.i138 = icmp slt i64 %add.i133, 0
  %retval.0.i139 = select i1 %cmp414.i138, i32 %sub7.i137, i32 %extract.t13.i136
  %15 = ptrtoint ptr %vp_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i139, ptr %vp_size, align 4
  %16 = ptrtoint ptr %vp_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vp_offset, align 4
  %add27 = add i32 %17, %retval.0.i139
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %src_size)
  %cmp28 = icmp sgt i32 %add27, %src_size
  br i1 %cmp28, label %if.then29, label %dc_fixpt_add.exit134.if.end31_crit_edge

dc_fixpt_add.exit134.if.end31_crit_edge:          ; preds = %dc_fixpt_add.exit134
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then29:                                        ; preds = %dc_fixpt_add.exit134
  call void @__sanitizer_cov_trace_pc() #20
  %sub30 = sub i32 %src_size, %17
  %18 = ptrtoint ptr %vp_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub30, ptr %vp_size, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %dc_fixpt_add.exit134.if.end31_crit_edge
  br i1 %flip_scan_dir, label %if.then32, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then32:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %vp_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vp_offset, align 4
  %21 = ptrtoint ptr %vp_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vp_size, align 4
  %23 = add i32 %20, %22
  %sub34 = sub i32 %src_size, %23
  store i32 %sub34, ptr %vp_offset, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end31.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_validate_seamless_boot_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nobuiltin }
attributes #24 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !51, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 265, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 337, i32 5}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.resource_construct, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 354, i32 5}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1149, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1170, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @resource_build_scaling_params.__UNIQUE_ID_ddebug303, !11, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1399, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1405, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1413, i32 3}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1439, i32 4}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1484, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1524, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1555, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1925, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dc_add_stream_to_ctx._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dc_add_stream_to_ctx._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1935, i32 3}
!36 = !{ptr @dc_add_stream_to_ctx._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dc_add_stream_to_ctx._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1954, i32 3}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1961, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 2004, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 2294, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 3265, i32 4}
!48 = !{ptr @__func__.check_syncd_pipes_for_disabled_master_pipe, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 304, i32 3}
!51 = !{ptr @__func__.update_num_audio, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 810, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 822, i32 4}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 522, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 487, i32 2}
!61 = distinct !{null, !62, !"dc_fixpt_one", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 70, i32 32}
!63 = distinct !{null, !64, !"dc_fixpt_epsilon", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 68, i32 32}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 984, i32 2}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1049, i32 2}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 249, i32 2}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 1585, i32 3}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_resource.c", i32 2071, i32 4}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148525528, i64 2148525808, i64 2148526142, i64 2148526476}
!87 = !{i64 2148296469, i64 2148296474, i64 2148296487, i64 2148296531, i64 2148296565, i64 2148296586}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"dc_fixpt_add: %agg.result"}
!90 = distinct !{!90, !"dc_fixpt_add"}
!91 = distinct !{!91, !92, !"dc_fixpt_add_int: %agg.result"}
!92 = distinct !{!92, !"dc_fixpt_add_int"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"dc_fixpt_add: %agg.result"}
!95 = distinct !{!95, !"dc_fixpt_add"}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"dc_fixpt_add: %agg.result"}
!98 = distinct !{!98, !"dc_fixpt_add"}
!99 = distinct !{!99, !100, !"dc_fixpt_add_int: %agg.result"}
!100 = distinct !{!100, !"dc_fixpt_add_int"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"dc_fixpt_add: %agg.result"}
!103 = distinct !{!103, !"dc_fixpt_add"}
