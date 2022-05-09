; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_stream.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.68, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.36 }
%union.anon.36 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.37 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.37 = type { i8 }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.fixed31_32 = type { i64 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.30, i32, i32, i32, i32 }
%struct.anon.30 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.29 }
%struct.anon.29 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.68 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.4 }
%struct.anon.4 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.54 }
%struct.anon.54 = type { i8 }
%union.max_lane_count = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%union.max_down_spread = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%union.dprx_feature = type { %struct.anon.57 }
%struct.anon.57 = type { i8 }
%union.sink_count = type { %struct.anon.58 }
%struct.anon.58 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.59 }
%struct.anon.59 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.61 }
%struct.anon.61 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.62 }
%struct.anon.62 = type { i8 }
%union.dpia_info = type { %struct.anon.63 }
%struct.anon.63 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.64 }
%struct.anon.64 = type { i8, i8, %struct.anon.65 }
%struct.anon.65 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.66 }
%struct.anon.66 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.67 }
%struct.anon.67 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
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
%union.dpcd_ieee_vendor_signature = type { %struct.anon.52 }
%struct.anon.52 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc_sink = type { i32, %struct.dc_edid, %struct.dc_edid_caps, ptr, i32, ptr, [14 x %struct.stereo_3d_features], i8, %struct.dc_sink_dsc_caps, %struct.dc_sink_fec_caps, i8, ptr, ptr, i32, %struct.kref }
%struct.dc_edid = type { i32, [2048 x i8] }
%struct.dc_edid_caps = type { i16, i16, i32, i8, i8, [20 x i8], i8, i32, [16 x %struct.dc_cea_audio_mode], i32, i32, %union.display_content_support, i8, i8, i32, i8, i8, i8, %struct.dc_panel_patch }
%struct.dc_cea_audio_mode = type { i8, i8, i8, %union.anon }
%union.anon = type { i8 }
%struct.stereo_3d_features = type { i8, i8, i8, i8, i8 }
%struct.dc_sink_dsc_caps = type { i8, %struct.dsc_dec_dpcd_caps }
%struct.dsc_dec_dpcd_caps = type { i8, i8, i32, %union.dsc_slice_caps1, %union.dsc_slice_caps2, i32, i8, i32, %union.dsc_color_formats, %union.dsc_color_depth, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dsc_slice_caps1 = type { %struct.anon.0 }
%struct.anon.0 = type { i8 }
%union.dsc_slice_caps2 = type { %struct.anon.1 }
%struct.anon.1 = type { i8 }
%union.dsc_color_formats = type { %struct.anon.2 }
%struct.anon.2 = type { i8 }
%union.dsc_color_depth = type { %struct.anon.3 }
%struct.anon.3 = type { i8 }
%struct.dc_sink_fec_caps = type { i8, i8 }
%struct.dc_container_id = type { [16 x i8], [2 x i32], i16, i16 }
%struct.dc_transfer_func = type { %struct.kref, i32, i32, i32, %union.anon.24 }
%union.anon.24 = type { %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], i16, i16, i16, i16 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.42, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.46, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.42 = type { i8, [3 x i8] }
%struct.anon.46 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.40 }
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
%struct.anon.40 = type { i32 }
%struct.dwbc = type { ptr, ptr, i32, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i32, i32, i8 }
%struct.dwbc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_dmdata_attributes = type { i32, i8, i32, i8, %union.large_integer, i8, i32, i32, ptr }
%struct.hubp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC: dc_stream is NULL!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC: attributes is NULL!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC: Cursor address is 0!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC: cursor position is NULL!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DC: dc_writeback_info is NULL!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DC: writeback pipe is invalid!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC: update_bandwidth failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@dc_stream_send_dp_sdp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014[drm] %s:send_immediate_sdp_message not implemented on this ASIC\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dc_stream_send_dp_sdp\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c\00", [38 x i8] zeroinitializer }, align 32
@dc_stream_send_dp_sdp._entry_ptr = internal global ptr @dc_stream_send_dp_sdp._entry, section ".printk_index", align 4
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"core_stream 0x%p: src: %d, %d, %d, %d; dst: %d, %d, %d, %d, colorSpace:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\09pix_clk_khz: %d, h_total: %d, v_total: %d, pixelencoder:%d, displaycolorDepth:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09link: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 317, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 321, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 326, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 404, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 445, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 450, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 481, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 605, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 718, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 730, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 737, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @dc_stream_send_dp_sdp._entry, ptr @dc_stream_send_dp_sdp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_stream_send_dp_sdp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_stream_signal(ptr nocapture noundef %stream, ptr nocapture noundef readonly %sink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_signal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %5, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %6, align 4
  %signal.off.i = add i32 %.sink, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %signal.off.i)
  %switch.i = icmp ult i32 %signal.off.i, 2
  br i1 %switch.i, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dual_link_dvi = getelementptr inbounds %struct.dc, ptr %11, i32 0, i32 2, i32 18
  %12 = ptrtoint ptr %dual_link_dvi to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dual_link_dvi, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then4.if.else11_crit_edge, label %land.lhs.true

if.then4.if.else11_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11

land.lhs.true:                                    ; preds = %if.then4
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pix_clk_100hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650009, i32 %15)
  %cmp5 = icmp ugt i32 %15, 1650009
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.else11_crit_edge

land.lhs.true.if.else11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %16 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp8.not = icmp eq i32 %17, 1
  br i1 %cmp8.not, label %land.lhs.true6.if.else11_crit_edge, label %land.lhs.true6.if.end14.sink.split_crit_edge

land.lhs.true6.if.end14.sink.split_crit_edge:     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split

land.lhs.true6.if.else11_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11

if.else11:                                        ; preds = %land.lhs.true6.if.else11_crit_edge, %land.lhs.true.if.else11_crit_edge, %if.then4.if.else11_crit_edge
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else11, %land.lhs.true6.if.end14.sink.split_crit_edge
  %.sink24 = phi i32 [ 1, %if.else11 ], [ 2, %land.lhs.true6.if.end14.sink.split_crit_edge ]
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink24, ptr %6, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stream_retain(ptr noundef %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 42
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !37

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !38

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stream_release(ptr noundef %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %stream, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 42
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !38

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream, align 8
  tail call void @dc_sink_release(ptr noundef %2) #8
  %out_transfer_func.i.i.i = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 17
  %3 = ptrtoint ptr %out_transfer_func.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %out_transfer_func.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %4, null
  br i1 %cmp.not.i.i.i, label %if.then.i.dc_stream_free.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.dc_stream_free.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_stream_free.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dc_transfer_func_release(ptr noundef nonnull %4) #8
  %5 = ptrtoint ptr %out_transfer_func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %out_transfer_func.i.i.i, align 4
  br label %dc_stream_free.exit.i

dc_stream_free.exit.i:                            ; preds = %if.then.i.i.i, %if.then.i.dc_stream_free.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %stream) #8
  br label %if.end

if.end:                                           ; preds = %dc_stream_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_create_stream_for_sink(ptr noundef %sink) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sink, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1304) #11
  %cmp1 = icmp eq ptr %call7.i.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sink, ptr %call7.i.i, align 8
  tail call void @dc_sink_retain(ptr noundef nonnull %sink) #8
  %ctx.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 12
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %ctx1.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 32
  %4 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ctx1.i, align 4
  %link.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 11
  %5 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link.i, align 4
  %link2.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %link2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %link2.i, align 4
  %sink_patches.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 3
  %edid_caps.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2
  %panel_patch.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 18
  %8 = call ptr @memcpy(ptr %sink_patches.i, ptr %panel_patch.i, i32 40)
  %converter_disable_audio.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 7
  %9 = ptrtoint ptr %converter_disable_audio.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %converter_disable_audio.i, align 2, !range !35
  %converter_disable_audio3.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 26
  %11 = ptrtoint ptr %converter_disable_audio3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %converter_disable_audio3.i, align 1
  %qs_bit.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 12
  %12 = ptrtoint ptr %qs_bit.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %qs_bit.i, align 4
  %qs_bit5.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 27
  %14 = ptrtoint ptr %qs_bit5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %qs_bit5.i, align 4
  %qy_bit.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 13
  %15 = ptrtoint ptr %qy_bit.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %qy_bit.i, align 1
  %qy_bit7.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 28
  %17 = ptrtoint ptr %qy_bit7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %qy_bit7.i, align 1
  %audio_mode_count.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %audio_mode_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audio_mode_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp172.not.i = icmp eq i32 %19, 0
  br i1 %cmp172.not.i, label %if.end3.for.end.i_crit_edge, label %if.end3.for.body.i_crit_edge

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

if.end3.for.end.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %i.0173.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 8, i32 %i.0173.i
  %channel_count.i = getelementptr %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 8, i32 %i.0173.i, i32 1
  %20 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %channel_count.i, align 1
  %arrayidx10.i = getelementptr %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 9, i32 %i.0173.i
  %channel_count11.i = getelementptr %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 9, i32 %i.0173.i, i32 1
  %22 = ptrtoint ptr %channel_count11.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %channel_count11.i, align 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %arrayidx10.i, align 4
  %sample_rate.i = getelementptr %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 8, i32 %i.0173.i, i32 2
  %26 = ptrtoint ptr %sample_rate.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sample_rate.i, align 2
  %sample_rates.i = getelementptr %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 9, i32 %i.0173.i, i32 2
  %28 = ptrtoint ptr %sample_rates.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %sample_rates.i, align 1
  %29 = getelementptr %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 8, i32 %i.0173.i, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %32 = getelementptr %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 9, i32 %i.0173.i, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %32, align 2
  %inc.i = add nuw i32 %i.0173.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end3.for.end.i_crit_edge
  %audio_info33.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13
  %mode_count.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 8
  %34 = ptrtoint ptr %mode_count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %19, ptr %mode_count.i, align 8
  %audio_latency.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 9
  %35 = ptrtoint ptr %audio_latency.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %audio_latency.i, align 4
  %audio_latency36.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 2
  %37 = ptrtoint ptr %audio_latency36.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %audio_latency36.i, align 4
  %video_latency.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 10
  %38 = ptrtoint ptr %video_latency.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %video_latency.i, align 4
  %video_latency39.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %video_latency39.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %video_latency39.i, align 8
  %display_name.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 4
  %display_name42.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 5
  %41 = call ptr @memcpy(ptr %display_name.i, ptr %display_name42.i, i32 20)
  %42 = ptrtoint ptr %edid_caps.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %edid_caps.i, align 4
  %conv45.i = zext i16 %43 to i32
  %manufacture_id.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 5
  %44 = ptrtoint ptr %manufacture_id.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv45.i, ptr %manufacture_id.i, align 8
  %product_id.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %product_id.i, align 2
  %conv48.i = zext i16 %46 to i32
  %product_id50.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 6
  %47 = ptrtoint ptr %product_id50.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv48.i, ptr %product_id50.i, align 4
  %speaker_flags.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 6
  %48 = ptrtoint ptr %speaker_flags.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %speaker_flags.i, align 2
  %50 = ptrtoint ptr %audio_info33.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %audio_info33.i, align 4
  %dc_container_id.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 3
  %51 = ptrtoint ptr %dc_container_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dc_container_id.i, align 4
  %cmp53.not.i = icmp eq ptr %52, null
  br i1 %cmp53.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %portId.i = getelementptr inbounds %struct.dc_container_id, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %portId.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %portId.i, align 4
  %port_id.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 7
  %55 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %port_id.i, align 8
  %arrayidx61.i = getelementptr %struct.dc_container_id, ptr %52, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx61.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %port_id66.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 7
  %58 = ptrtoint ptr %port_id66.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1431864734, ptr %port_id66.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 228103241, %if.else.i ], [ %57, %if.then.i ]
  %59 = getelementptr %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 13, i32 7, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink.i, ptr %59, align 4
  %lte_340mcsc_scramble.i = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2, i32 15
  %61 = ptrtoint ptr %lte_340mcsc_scramble.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %lte_340mcsc_scramble.i, align 4, !range !35
  %63 = zext i8 %62 to i32
  %flags74.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 5, i32 21
  %64 = ptrtoint ptr %flags74.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load.i = load i32, ptr %flags74.i, align 4
  %bf.shl.i = shl nuw nsw i32 %63, 14
  %bf.clear.i = and i32 %bf.load.i, -16385
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %flags74.i, align 4
  %dsc_cfg.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 5, i32 23
  %bits_per_pixel.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 5, i32 23, i32 2
  %65 = call ptr @memset(ptr %dsc_cfg.i, i32 0, i32 36)
  %66 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 128, ptr %bits_per_pixel.i, align 4
  %block_pred_enable.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 5, i32 23, i32 3
  %67 = ptrtoint ptr %block_pred_enable.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %block_pred_enable.i, align 8
  %linebuf_depth.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 5, i32 23, i32 4
  %68 = ptrtoint ptr %linebuf_depth.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 9, ptr %linebuf_depth.i, align 4
  %version_minor.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 5, i32 23, i32 5
  %69 = ptrtoint ptr %version_minor.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %version_minor.i, align 8
  %70 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %link2.i, align 4
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %connector_signal.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %.sink.i.i = phi i32 [ %75, %if.then.i.i ], [ %71, %if.end.i.if.end.i.i_crit_edge ]
  %76 = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 36
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink.i.i, ptr %76, align 4
  %signal.off.i.i.i = add i32 %.sink.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %signal.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %signal.off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.then4.i.i, label %if.end.i.i.update_stream_signal.exit.i_crit_edge

if.end.i.i.update_stream_signal.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_stream_signal.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %78 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx1.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %dual_link_dvi.i.i = getelementptr inbounds %struct.dc, ptr %81, i32 0, i32 2, i32 18
  %82 = ptrtoint ptr %dual_link_dvi.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dual_link_dvi.i.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i.if.else11.i.i_crit_edge, label %land.lhs.true.i.i

if.then4.i.i.if.else11.i.i_crit_edge:             ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11.i.i

land.lhs.true.i.i:                                ; preds = %if.then4.i.i
  %pix_clk_100hz.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 5, i32 12
  %84 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pix_clk_100hz.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650010, i32 %85)
  %cmp5.i.i = icmp ult i32 %85, 1650010
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp8.not.i.i = icmp eq i32 %71, 1
  %or.cond = select i1 %cmp5.i.i, i1 true, i1 %cmp8.not.i.i
  br i1 %or.cond, label %land.lhs.true.i.i.if.else11.i.i_crit_edge, label %land.lhs.true.i.i.if.end14.sink.split.i.i_crit_edge

land.lhs.true.i.i.if.end14.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split.i.i

land.lhs.true.i.i.if.else11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11.i.i

if.else11.i.i:                                    ; preds = %land.lhs.true.i.i.if.else11.i.i_crit_edge, %if.then4.i.i.if.else11.i.i_crit_edge
  br label %if.end14.sink.split.i.i

if.end14.sink.split.i.i:                          ; preds = %if.else11.i.i, %land.lhs.true.i.i.if.end14.sink.split.i.i_crit_edge
  %.sink24.i.i = phi i32 [ 1, %if.else11.i.i ], [ 2, %land.lhs.true.i.i.if.end14.sink.split.i.i_crit_edge ]
  %86 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %.sink24.i.i, ptr %76, align 4
  br label %update_stream_signal.exit.i

update_stream_signal.exit.i:                      ; preds = %if.end14.sink.split.i.i, %if.end.i.i.update_stream_signal.exit.i_crit_edge
  %call.i = tail call ptr @dc_create_transfer_func() #8
  %out_transfer_func.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 17
  %87 = ptrtoint ptr %out_transfer_func.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %out_transfer_func.i, align 4
  %cmp91.i = icmp eq ptr %call.i, null
  br i1 %cmp91.i, label %construct_fail, label %if.end8

if.end8:                                          ; preds = %update_stream_signal.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %type.i = getelementptr inbounds %struct.dc_transfer_func, ptr %call.i, i32 0, i32 1
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %type.i, align 4
  %89 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctx1.i, align 4
  %dc_stream_id_count.i = getelementptr inbounds %struct.dc_context, ptr %90, i32 0, i32 11
  %91 = ptrtoint ptr %dc_stream_id_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dc_stream_id_count.i, align 4
  %stream_id.i = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 52
  %93 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %stream_id.i, align 4
  %94 = load i32, ptr %dc_stream_id_count.i, align 4
  %inc99.i = add i32 %94, 1
  store i32 %inc99.i, ptr %dc_stream_id_count.i, align 4
  %refcount = getelementptr inbounds %struct.dc_stream_state, ptr %call7.i.i, i32 0, i32 42
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %95 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 1, ptr %refcount, align 8
  br label %cleanup

construct_fail:                                   ; preds = %update_stream_signal.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dc_sink_release(ptr noundef %sink) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %construct_fail, %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %construct_fail ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_copy_stream(ptr noundef %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %stream, i32 noundef 1304, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dc_sink_retain(ptr noundef nonnull %1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %out_transfer_func = getelementptr inbounds %struct.dc_stream_state, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %out_transfer_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_transfer_func, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dc_transfer_func_retain(ptr noundef nonnull %3) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %call, i32 0, i32 32
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %dc_stream_id_count = getelementptr inbounds %struct.dc_context, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %dc_stream_id_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dc_stream_id_count, align 4
  %stream_id = getelementptr inbounds %struct.dc_stream_state, ptr %call, i32 0, i32 52
  %8 = ptrtoint ptr %stream_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %stream_id, align 4
  %9 = load i32, ptr %dc_stream_id_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %dc_stream_id_count, align 4
  %10 = load ptr, ptr %ctx, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %14, i32 0, i32 40
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_encs_assign, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.end8.if.end14_crit_edge, label %if.then13

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %link_enc = getelementptr inbounds %struct.dc_stream_state, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %link_enc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %link_enc, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end8.if.end14_crit_edge
  %refcount = getelementptr inbounds %struct.dc_stream_state, ptr %call, i32 0, i32 42
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_retain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_transfer_func_retain(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_stream_get_status_from_state(ptr noundef readonly %state, ptr noundef readnone %stream) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %state, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp217.not = icmp eq i8 %1, 0
  br i1 %cmp217.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i8 %1 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr %state, i32 0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %3, %stream
  br i1 %cmp4, label %if.then6, label %for.cond

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.dc_state, ptr %state, i32 0, i32 1, i32 %indvars.iv
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx8, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_stream_get_status(ptr noundef readonly %stream) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %entry.dc_stream_get_status_from_state.exit_crit_edge, label %for.cond.preheader.i

entry.dc_stream_get_status_from_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_stream_get_status_from_state.exit

for.cond.preheader.i:                             ; preds = %entry
  %stream_count.i = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp217.not.i = icmp eq i8 %7, 0
  br i1 %cmp217.not.i, label %for.cond.preheader.i.dc_stream_get_status_from_state.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.dc_stream_get_status_from_state.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_stream_get_status_from_state.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count.i = zext i8 %7 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond.i.dc_stream_get_status_from_state.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.dc_stream_get_status_from_state.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_stream_get_status_from_state.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x ptr], ptr %5, i32 0, i32 %indvars.iv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %9, %stream
  br i1 %cmp4.i, label %if.then6.i, label %for.cond.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 1, i32 %indvars.iv.i
  br label %dc_stream_get_status_from_state.exit

dc_stream_get_status_from_state.exit:             ; preds = %if.then6.i, %for.cond.i.dc_stream_get_status_from_state.exit_crit_edge, %for.cond.preheader.i.dc_stream_get_status_from_state.exit_crit_edge, %entry.dc_stream_get_status_from_state.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx8.i, %if.then6.i ], [ null, %entry.dc_stream_get_status_from_state.exit_crit_edge ], [ null, %for.cond.preheader.i.dc_stream_get_status_from_state.exit_crit_edge ], [ null, %for.cond.i.dc_stream_get_status_from_state.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_optimize_timing_for_fsft(ptr noundef %pStream, i32 noundef %max_input_rate_in_khz) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %pStream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %optimize_timing_for_fsft = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 17, i32 34
  %4 = ptrtoint ptr %optimize_timing_for_fsft to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %optimize_timing_for_fsft, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %pStream, i32 0, i32 5
  %call = tail call zeroext i1 %5(ptr noundef %3, ptr noundef %timing, i32 noundef %max_input_rate_in_khz) #8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call, %land.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_set_cursor_attributes(ptr noundef %stream, ptr noundef readonly %attributes) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %stream, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %attributes, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %attributes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp4 = icmp eq i64 %1, 0
  br i1 %cmp4, label %if.then5, label %if.end.i

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cursor_attributes = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 39
  %6 = call ptr @memcpy(ptr %cursor_attributes, ptr %attributes, i32 40)
  %current_state.i = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_state.i, align 4
  %res_ctx1.i = getelementptr inbounds %struct.dc_state, ptr %8, i32 0, i32 4
  %cursor_lock.i = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 24
  %set_cursor_attribute.i = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 49
  %set_cursor_sdr_white_level.i = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 50
  %stream3.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %stream3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream3.i, align 4
  %cmp4.not.i = icmp eq ptr %10, %stream
  br i1 %cmp4.not.i, label %if.end9.i, label %cleanup.thread.i

if.end9.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %12(ptr noundef %5, ptr noundef %res_ctx1.i, i1 noundef zeroext true) #8
  %13 = ptrtoint ptr %set_cursor_attribute.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_cursor_attribute.i, align 4
  tail call void %14(ptr noundef %res_ctx1.i) #8
  %15 = ptrtoint ptr %set_cursor_sdr_white_level.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_cursor_sdr_white_level.i, align 4
  %tobool12.not.i = icmp eq ptr %16, null
  br i1 %tobool12.not.i, label %if.end9.i.cleanup.i_crit_edge, label %if.then13.i

if.end9.i.cleanup.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %16(ptr noundef %res_ctx1.i) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then13.i, %if.end9.i.cleanup.i_crit_edge
  %stream3.1.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %stream3.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream3.1.i, align 4
  %cmp4.not.1.i = icmp eq ptr %18, %stream
  br i1 %cmp4.not.1.i, label %if.end6.1.i, label %cleanup.i.cleanup.1.i_crit_edge

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1.i

cleanup.thread.i:                                 ; preds = %if.end.i
  %stream3.15.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %stream3.15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stream3.15.i, align 4
  %cmp4.not.16.i = icmp eq ptr %20, %stream
  br i1 %cmp4.not.16.i, label %if.then8.1.i, label %cleanup.1.thread.i

if.end6.1.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 1
  br label %if.end9.1.i

if.then8.1.i:                                     ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.14.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %22(ptr noundef %5, ptr noundef %arrayidx.14.i, i1 noundef zeroext true) #8
  br label %if.end9.1.i

if.end9.1.i:                                      ; preds = %if.then8.1.i, %if.end6.1.i
  %arrayidx.1812.i = phi ptr [ %arrayidx.1.i, %if.end6.1.i ], [ %arrayidx.14.i, %if.then8.1.i ]
  %pipe_to_program.1.1.i = phi ptr [ %res_ctx1.i, %if.end6.1.i ], [ %arrayidx.14.i, %if.then8.1.i ]
  %23 = ptrtoint ptr %set_cursor_attribute.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_cursor_attribute.i, align 4
  tail call void %24(ptr noundef %arrayidx.1812.i) #8
  %25 = ptrtoint ptr %set_cursor_sdr_white_level.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_cursor_sdr_white_level.i, align 4
  %tobool12.not.1.i = icmp eq ptr %26, null
  br i1 %tobool12.not.1.i, label %if.end9.1.i.cleanup.1.i_crit_edge, label %if.then13.1.i

if.end9.1.i.cleanup.1.i_crit_edge:                ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1.i

if.then13.1.i:                                    ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %arrayidx.1812.i) #8
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.then13.1.i, %if.end9.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %pipe_to_program.2.1.i = phi ptr [ %res_ctx1.i, %cleanup.i.cleanup.1.i_crit_edge ], [ %pipe_to_program.1.1.i, %if.then13.1.i ], [ %pipe_to_program.1.1.i, %if.end9.1.i.cleanup.1.i_crit_edge ]
  %stream3.2.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %stream3.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream3.2.i, align 4
  %cmp4.not.2.i = icmp eq ptr %28, %stream
  br i1 %cmp4.not.2.i, label %if.end6.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2.i

cleanup.1.thread.i:                               ; preds = %cleanup.thread.i
  %arrayidx.215.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 2
  %stream3.216.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %stream3.216.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream3.216.i, align 4
  %cmp4.not.217.i = icmp eq ptr %30, %stream
  br i1 %cmp4.not.217.i, label %cleanup.1.thread.i.if.then8.2.i_crit_edge, label %cleanup.2.thread.i

cleanup.1.thread.i.if.then8.2.i_crit_edge:        ; preds = %cleanup.1.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.2.i

if.end6.2.i:                                      ; preds = %cleanup.1.i
  %arrayidx.2.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 2
  %tobool7.not.2.i = icmp eq ptr %pipe_to_program.2.1.i, null
  br i1 %tobool7.not.2.i, label %if.end6.2.i.if.then8.2.i_crit_edge, label %if.end6.2.i.if.end9.2.i_crit_edge

if.end6.2.i.if.end9.2.i_crit_edge:                ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.2.i

if.end6.2.i.if.then8.2.i_crit_edge:               ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.2.i

if.then8.2.i:                                     ; preds = %if.end6.2.i.if.then8.2.i_crit_edge, %cleanup.1.thread.i.if.then8.2.i_crit_edge
  %arrayidx.21924.i = phi ptr [ %arrayidx.2.i, %if.end6.2.i.if.then8.2.i_crit_edge ], [ %arrayidx.215.i, %cleanup.1.thread.i.if.then8.2.i_crit_edge ]
  %31 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %32(ptr noundef %5, ptr noundef %arrayidx.21924.i, i1 noundef zeroext true) #8
  br label %if.end9.2.i

if.end9.2.i:                                      ; preds = %if.then8.2.i, %if.end6.2.i.if.end9.2.i_crit_edge
  %arrayidx.21923.i = phi ptr [ %arrayidx.2.i, %if.end6.2.i.if.end9.2.i_crit_edge ], [ %arrayidx.21924.i, %if.then8.2.i ]
  %pipe_to_program.1.2.i = phi ptr [ %pipe_to_program.2.1.i, %if.end6.2.i.if.end9.2.i_crit_edge ], [ %arrayidx.21924.i, %if.then8.2.i ]
  %33 = ptrtoint ptr %set_cursor_attribute.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_cursor_attribute.i, align 4
  tail call void %34(ptr noundef %arrayidx.21923.i) #8
  %35 = ptrtoint ptr %set_cursor_sdr_white_level.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_cursor_sdr_white_level.i, align 4
  %tobool12.not.2.i = icmp eq ptr %36, null
  br i1 %tobool12.not.2.i, label %if.end9.2.i.cleanup.2.i_crit_edge, label %if.then13.2.i

if.end9.2.i.cleanup.2.i_crit_edge:                ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2.i

if.then13.2.i:                                    ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %36(ptr noundef %arrayidx.21923.i) #8
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.then13.2.i, %if.end9.2.i.cleanup.2.i_crit_edge, %cleanup.1.i.cleanup.2.i_crit_edge
  %pipe_to_program.2.2.i = phi ptr [ %pipe_to_program.2.1.i, %cleanup.1.i.cleanup.2.i_crit_edge ], [ %pipe_to_program.1.2.i, %if.then13.2.i ], [ %pipe_to_program.1.2.i, %if.end9.2.i.cleanup.2.i_crit_edge ]
  %stream3.3.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %stream3.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stream3.3.i, align 4
  %cmp4.not.3.i = icmp eq ptr %38, %stream
  br i1 %cmp4.not.3.i, label %if.end6.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3.i

cleanup.2.thread.i:                               ; preds = %cleanup.1.thread.i
  %arrayidx.326.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 3
  %stream3.327.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %stream3.327.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream3.327.i, align 4
  %cmp4.not.328.i = icmp eq ptr %40, %stream
  br i1 %cmp4.not.328.i, label %cleanup.2.thread.i.if.then8.3.i_crit_edge, label %cleanup.3.thread.i

cleanup.2.thread.i.if.then8.3.i_crit_edge:        ; preds = %cleanup.2.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.3.i

if.end6.3.i:                                      ; preds = %cleanup.2.i
  %arrayidx.3.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 3
  %tobool7.not.3.i = icmp eq ptr %pipe_to_program.2.2.i, null
  br i1 %tobool7.not.3.i, label %if.end6.3.i.if.then8.3.i_crit_edge, label %if.end6.3.i.if.end9.3.i_crit_edge

if.end6.3.i.if.end9.3.i_crit_edge:                ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.3.i

if.end6.3.i.if.then8.3.i_crit_edge:               ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.3.i

if.then8.3.i:                                     ; preds = %if.end6.3.i.if.then8.3.i_crit_edge, %cleanup.2.thread.i.if.then8.3.i_crit_edge
  %arrayidx.33035.i = phi ptr [ %arrayidx.3.i, %if.end6.3.i.if.then8.3.i_crit_edge ], [ %arrayidx.326.i, %cleanup.2.thread.i.if.then8.3.i_crit_edge ]
  %41 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %42(ptr noundef %5, ptr noundef %arrayidx.33035.i, i1 noundef zeroext true) #8
  br label %if.end9.3.i

if.end9.3.i:                                      ; preds = %if.then8.3.i, %if.end6.3.i.if.end9.3.i_crit_edge
  %arrayidx.33034.i = phi ptr [ %arrayidx.3.i, %if.end6.3.i.if.end9.3.i_crit_edge ], [ %arrayidx.33035.i, %if.then8.3.i ]
  %pipe_to_program.1.3.i = phi ptr [ %pipe_to_program.2.2.i, %if.end6.3.i.if.end9.3.i_crit_edge ], [ %arrayidx.33035.i, %if.then8.3.i ]
  %43 = ptrtoint ptr %set_cursor_attribute.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_cursor_attribute.i, align 4
  tail call void %44(ptr noundef %arrayidx.33034.i) #8
  %45 = ptrtoint ptr %set_cursor_sdr_white_level.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_cursor_sdr_white_level.i, align 4
  %tobool12.not.3.i = icmp eq ptr %46, null
  br i1 %tobool12.not.3.i, label %if.end9.3.i.cleanup.3.i_crit_edge, label %if.then13.3.i

if.end9.3.i.cleanup.3.i_crit_edge:                ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3.i

if.then13.3.i:                                    ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %46(ptr noundef %arrayidx.33034.i) #8
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.then13.3.i, %if.end9.3.i.cleanup.3.i_crit_edge, %cleanup.2.i.cleanup.3.i_crit_edge
  %pipe_to_program.2.3.i = phi ptr [ %pipe_to_program.2.2.i, %cleanup.2.i.cleanup.3.i_crit_edge ], [ %pipe_to_program.1.3.i, %if.then13.3.i ], [ %pipe_to_program.1.3.i, %if.end9.3.i.cleanup.3.i_crit_edge ]
  %stream3.4.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %stream3.4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stream3.4.i, align 4
  %cmp4.not.4.i = icmp eq ptr %48, %stream
  br i1 %cmp4.not.4.i, label %if.end6.4.i, label %cleanup.3.i.cleanup.4.i_crit_edge

cleanup.3.i.cleanup.4.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4.i

cleanup.3.thread.i:                               ; preds = %cleanup.2.thread.i
  %arrayidx.437.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 4
  %stream3.438.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %stream3.438.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream3.438.i, align 4
  %cmp4.not.439.i = icmp eq ptr %50, %stream
  br i1 %cmp4.not.439.i, label %cleanup.3.thread.i.if.then8.4.i_crit_edge, label %cleanup.4.thread.i

cleanup.3.thread.i.if.then8.4.i_crit_edge:        ; preds = %cleanup.3.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.4.i

if.end6.4.i:                                      ; preds = %cleanup.3.i
  %arrayidx.4.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 4
  %tobool7.not.4.i = icmp eq ptr %pipe_to_program.2.3.i, null
  br i1 %tobool7.not.4.i, label %if.end6.4.i.if.then8.4.i_crit_edge, label %if.end6.4.i.if.end9.4.i_crit_edge

if.end6.4.i.if.end9.4.i_crit_edge:                ; preds = %if.end6.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.4.i

if.end6.4.i.if.then8.4.i_crit_edge:               ; preds = %if.end6.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.4.i

if.then8.4.i:                                     ; preds = %if.end6.4.i.if.then8.4.i_crit_edge, %cleanup.3.thread.i.if.then8.4.i_crit_edge
  %arrayidx.44146.i = phi ptr [ %arrayidx.4.i, %if.end6.4.i.if.then8.4.i_crit_edge ], [ %arrayidx.437.i, %cleanup.3.thread.i.if.then8.4.i_crit_edge ]
  %51 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %52(ptr noundef %5, ptr noundef %arrayidx.44146.i, i1 noundef zeroext true) #8
  br label %if.end9.4.i

if.end9.4.i:                                      ; preds = %if.then8.4.i, %if.end6.4.i.if.end9.4.i_crit_edge
  %arrayidx.44145.i = phi ptr [ %arrayidx.4.i, %if.end6.4.i.if.end9.4.i_crit_edge ], [ %arrayidx.44146.i, %if.then8.4.i ]
  %pipe_to_program.1.4.i = phi ptr [ %pipe_to_program.2.3.i, %if.end6.4.i.if.end9.4.i_crit_edge ], [ %arrayidx.44146.i, %if.then8.4.i ]
  %53 = ptrtoint ptr %set_cursor_attribute.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_cursor_attribute.i, align 4
  tail call void %54(ptr noundef %arrayidx.44145.i) #8
  %55 = ptrtoint ptr %set_cursor_sdr_white_level.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_cursor_sdr_white_level.i, align 4
  %tobool12.not.4.i = icmp eq ptr %56, null
  br i1 %tobool12.not.4.i, label %if.end9.4.i.cleanup.4.i_crit_edge, label %if.then13.4.i

if.end9.4.i.cleanup.4.i_crit_edge:                ; preds = %if.end9.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4.i

if.then13.4.i:                                    ; preds = %if.end9.4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %56(ptr noundef %arrayidx.44145.i) #8
  br label %cleanup.4.i

cleanup.4.i:                                      ; preds = %if.then13.4.i, %if.end9.4.i.cleanup.4.i_crit_edge, %cleanup.3.i.cleanup.4.i_crit_edge
  %pipe_to_program.2.4.i = phi ptr [ %pipe_to_program.2.3.i, %cleanup.3.i.cleanup.4.i_crit_edge ], [ %pipe_to_program.1.4.i, %if.then13.4.i ], [ %pipe_to_program.1.4.i, %if.end9.4.i.cleanup.4.i_crit_edge ]
  %stream3.5.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %stream3.5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stream3.5.i, align 4
  %cmp4.not.5.i = icmp eq ptr %58, %stream
  br i1 %cmp4.not.5.i, label %if.end6.5.i, label %cleanup.4.i.cleanup.5.i_crit_edge

cleanup.4.i.cleanup.5.i_crit_edge:                ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.5.i

cleanup.4.thread.i:                               ; preds = %cleanup.3.thread.i
  %arrayidx.548.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 5
  %stream3.549.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %stream3.549.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stream3.549.i, align 4
  %cmp4.not.550.i = icmp eq ptr %60, %stream
  br i1 %cmp4.not.550.i, label %cleanup.4.thread.i.if.then8.5.i_crit_edge, label %cleanup.4.thread.i.cleanup_crit_edge

cleanup.4.thread.i.cleanup_crit_edge:             ; preds = %cleanup.4.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.4.thread.i.if.then8.5.i_crit_edge:        ; preds = %cleanup.4.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.5.i

if.end6.5.i:                                      ; preds = %cleanup.4.i
  %arrayidx.5.i = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 5
  %tobool7.not.5.i = icmp eq ptr %pipe_to_program.2.4.i, null
  br i1 %tobool7.not.5.i, label %if.end6.5.i.if.then8.5.i_crit_edge, label %if.end6.5.i.if.end9.5.i_crit_edge

if.end6.5.i.if.end9.5.i_crit_edge:                ; preds = %if.end6.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.5.i

if.end6.5.i.if.then8.5.i_crit_edge:               ; preds = %if.end6.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.5.i

if.then8.5.i:                                     ; preds = %if.end6.5.i.if.then8.5.i_crit_edge, %cleanup.4.thread.i.if.then8.5.i_crit_edge
  %arrayidx.55257.i = phi ptr [ %arrayidx.5.i, %if.end6.5.i.if.then8.5.i_crit_edge ], [ %arrayidx.548.i, %cleanup.4.thread.i.if.then8.5.i_crit_edge ]
  %61 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %62(ptr noundef %5, ptr noundef %arrayidx.55257.i, i1 noundef zeroext true) #8
  br label %if.end9.5.i

if.end9.5.i:                                      ; preds = %if.then8.5.i, %if.end6.5.i.if.end9.5.i_crit_edge
  %arrayidx.55256.i = phi ptr [ %arrayidx.5.i, %if.end6.5.i.if.end9.5.i_crit_edge ], [ %arrayidx.55257.i, %if.then8.5.i ]
  %pipe_to_program.1.5.i = phi ptr [ %pipe_to_program.2.4.i, %if.end6.5.i.if.end9.5.i_crit_edge ], [ %arrayidx.55257.i, %if.then8.5.i ]
  %63 = ptrtoint ptr %set_cursor_attribute.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_cursor_attribute.i, align 4
  tail call void %64(ptr noundef %arrayidx.55256.i) #8
  %65 = ptrtoint ptr %set_cursor_sdr_white_level.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_cursor_sdr_white_level.i, align 4
  %tobool12.not.5.i = icmp eq ptr %66, null
  br i1 %tobool12.not.5.i, label %if.end9.5.i.cleanup.5.i_crit_edge, label %if.then13.5.i

if.end9.5.i.cleanup.5.i_crit_edge:                ; preds = %if.end9.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.5.i

if.then13.5.i:                                    ; preds = %if.end9.5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %66(ptr noundef %arrayidx.55256.i) #8
  br label %cleanup.5.i

cleanup.5.i:                                      ; preds = %if.then13.5.i, %if.end9.5.i.cleanup.5.i_crit_edge, %cleanup.4.i.cleanup.5.i_crit_edge
  %pipe_to_program.2.5.i = phi ptr [ %pipe_to_program.2.4.i, %cleanup.4.i.cleanup.5.i_crit_edge ], [ %pipe_to_program.1.5.i, %if.then13.5.i ], [ %pipe_to_program.1.5.i, %if.end9.5.i.cleanup.5.i_crit_edge ]
  %tobool17.not.i = icmp eq ptr %pipe_to_program.2.5.i, null
  br i1 %tobool17.not.i, label %cleanup.5.i.cleanup_crit_edge, label %if.then18.i

cleanup.5.i.cleanup_crit_edge:                    ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18.i:                                      ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %68(ptr noundef %5, ptr noundef nonnull %pipe_to_program.2.5.i, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18.i, %cleanup.5.i.cleanup_crit_edge, %cleanup.4.thread.i.cleanup_crit_edge, %if.then5, %if.then2, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then2 ], [ false, %if.then5 ], [ true, %cleanup.4.thread.i.cleanup_crit_edge ], [ true, %cleanup.5.i.cleanup_crit_edge ], [ true, %if.then18.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_set_cursor_position(ptr noundef %stream, ptr noundef readonly %position) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %stream, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %position, null
  br i1 %cmp1, label %if.then2, label %if.end.i

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cursor_position = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 40
  %4 = call ptr @memcpy(ptr %cursor_position, ptr %position, i32 20)
  %current_state.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_state.i, align 4
  %res_ctx1.i = getelementptr inbounds %struct.dc_state, ptr %6, i32 0, i32 4
  %cursor_lock.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 17, i32 24
  %set_cursor_position.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 17, i32 48
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i
  %pipe_to_program.04.i = phi ptr [ null, %if.end.i ], [ %pipe_to_program.2.i, %cleanup.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i
  %stream3.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i, i32 1
  %7 = ptrtoint ptr %stream3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream3.i, align 4
  %cmp4.not.i = icmp eq ptr %8, %stream
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %mi.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i, i32 2, i32 2
  %9 = ptrtoint ptr %mi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mi.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false8.i_crit_edge

lor.lhs.false.i.lor.lhs.false8.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %hubp.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i, i32 2, i32 1
  %11 = ptrtoint ptr %hubp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hubp.i, align 8
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.lor.lhs.false8.i_crit_edge

land.lhs.true.i.lor.lhs.false8.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false8.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false8.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false8.i_crit_edge, %lor.lhs.false.i.lor.lhs.false8.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 8
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.cleanup.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false8.i.cleanup.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false8.i
  %xfm.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i, i32 2, i32 4
  %15 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xfm.i, align 4
  %tobool12.not.i = icmp eq ptr %16, null
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %lor.lhs.false10.i.lor.lhs.false16.i_crit_edge

lor.lhs.false10.i.lor.lhs.false16.i_crit_edge:    ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false16.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false10.i
  %dpp.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i, i32 2, i32 5
  %17 = ptrtoint ptr %dpp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dpp.i, align 8
  %tobool15.not.i = icmp eq ptr %18, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.cleanup.i_crit_edge, label %land.lhs.true13.i.lor.lhs.false16.i_crit_edge

land.lhs.true13.i.lor.lhs.false16.i_crit_edge:    ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false16.i

land.lhs.true13.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false16.i:                                ; preds = %land.lhs.true13.i.lor.lhs.false16.i_crit_edge, %lor.lhs.false10.i.lor.lhs.false16.i_crit_edge
  %ipp.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i, i32 2, i32 3
  %19 = ptrtoint ptr %ipp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipp.i, align 8
  %tobool18.not.i = icmp eq ptr %20, null
  br i1 %tobool18.not.i, label %land.lhs.true19.i, label %lor.lhs.false16.i.if.end24.i_crit_edge

lor.lhs.false16.i.if.end24.i_crit_edge:           ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

land.lhs.true19.i:                                ; preds = %lor.lhs.false16.i
  %dpp21.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.01.i, i32 2, i32 5
  %21 = ptrtoint ptr %dpp21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dpp21.i, align 8
  %tobool22.not.i = icmp eq ptr %22, null
  br i1 %tobool22.not.i, label %land.lhs.true19.i.cleanup.i_crit_edge, label %land.lhs.true19.i.if.end24.i_crit_edge

land.lhs.true19.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

land.lhs.true19.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end24.i:                                       ; preds = %land.lhs.true19.i.if.end24.i_crit_edge, %lor.lhs.false16.i.if.end24.i_crit_edge
  %tobool25.not.i = icmp eq ptr %pipe_to_program.04.i, null
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end24.i.if.end27.i_crit_edge

if.end24.i.if.end27.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %24(ptr noundef %3, ptr noundef %arrayidx.i, i1 noundef zeroext true) #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end27.i_crit_edge
  %pipe_to_program.1.i = phi ptr [ %pipe_to_program.04.i, %if.end24.i.if.end27.i_crit_edge ], [ %arrayidx.i, %if.then26.i ]
  %25 = ptrtoint ptr %set_cursor_position.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_cursor_position.i, align 4
  tail call void %26(ptr noundef %arrayidx.i) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end27.i, %land.lhs.true19.i.cleanup.i_crit_edge, %land.lhs.true13.i.cleanup.i_crit_edge, %lor.lhs.false8.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %pipe_to_program.2.i = phi ptr [ %pipe_to_program.1.i, %if.end27.i ], [ %pipe_to_program.04.i, %land.lhs.true19.i.cleanup.i_crit_edge ], [ %pipe_to_program.04.i, %land.lhs.true13.i.cleanup.i_crit_edge ], [ %pipe_to_program.04.i, %lor.lhs.false8.i.cleanup.i_crit_edge ], [ %pipe_to_program.04.i, %land.lhs.true.i.cleanup.i_crit_edge ], [ %pipe_to_program.04.i, %for.body.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  %tobool29.not.i = icmp eq ptr %pipe_to_program.2.i, null
  br i1 %tobool29.not.i, label %for.end.i.cleanup_crit_edge, label %if.then30.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %cursor_lock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cursor_lock.i, align 4
  tail call void %28(ptr noundef %3, ptr noundef nonnull %pipe_to_program.2.i, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30.i, %for.end.i.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then2 ], [ true, %for.end.i.cleanup_crit_edge ], [ true, %if.then30.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_add_writeback(ptr noundef %dc, ptr noundef %stream, ptr noundef %wb_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %stream, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %wb_info, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dwb_pipe_inst = getelementptr inbounds %struct.dc_writeback_info, ptr %wb_info, i32 0, i32 1
  %0 = ptrtoint ptr %dwb_pipe_inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dwb_pipe_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %out_transfer_func = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 17
  %2 = ptrtoint ptr %out_transfer_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_transfer_func, align 4
  %out_transfer_func7 = getelementptr inbounds %struct.dc_writeback_info, ptr %wb_info, i32 0, i32 2, i32 12
  %4 = ptrtoint ptr %out_transfer_func7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %out_transfer_func7, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %5 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res_pool, align 8
  %arrayidx = getelementptr %struct.resource_pool, ptr %6, i32 0, i32 15, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %dwb_is_drc = getelementptr inbounds %struct.dwbc, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %dwb_is_drc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dwb_is_drc, align 1
  %num_wb_info = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 44
  %10 = ptrtoint ptr %num_wb_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_wb_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9107.not = icmp eq i32 %11, 0
  br i1 %cmp9107.not, label %if.end6.if.then21_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.if.then21_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %isDrc.0.off0110 = phi i1 [ %isDrc.1.off0, %for.inc.for.body_crit_edge ], [ false, %if.end6.for.body_crit_edge ]
  %i.0108 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx10 = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %i.0108
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dwb_pipe_inst13 = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %i.0108, i32 1
  %14 = ptrtoint ptr %dwb_pipe_inst13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dwb_pipe_inst13, align 4
  %16 = ptrtoint ptr %dwb_pipe_inst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dwb_pipe_inst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp15 = icmp eq i32 %15, %17
  br i1 %cmp15, label %if.then16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = call ptr @memcpy(ptr %arrayidx10, ptr %wb_info, i32 352)
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %isDrc.1.off0 = phi i1 [ true, %if.then16 ], [ %isDrc.0.off0110, %land.lhs.true.for.inc_crit_edge ], [ %isDrc.0.off0110, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0108, 1
  %19 = ptrtoint ptr %num_wb_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_wb_info, align 4
  %cmp9 = icmp ult i32 %inc, %20
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %isDrc.1.off0, label %for.end.if.end26_crit_edge, label %for.end.if.then21_crit_edge

for.end.if.then21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %for.end.if.then21_crit_edge, %if.end6.if.then21_crit_edge
  %.lcssa116 = phi i32 [ %20, %for.end.if.then21_crit_edge ], [ 0, %if.end6.if.then21_crit_edge ]
  %inc24 = add i32 %.lcssa116, 1
  %21 = ptrtoint ptr %num_wb_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc24, ptr %num_wb_info, align 4
  %arrayidx25 = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %.lcssa116
  %22 = call ptr @memcpy(ptr %arrayidx25, ptr %wb_info, i32 352)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %for.end.if.end26_crit_edge
  %enable_writeback = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 56
  %23 = ptrtoint ptr %enable_writeback to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enable_writeback, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %if.end26.if.end34_crit_edge, label %if.then28

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then28:                                        ; preds = %if.end26
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %25 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %current_state.i = getelementptr inbounds %struct.dc, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %current_state.i, align 4
  %cmp.i.i = icmp eq ptr %30, null
  br i1 %cmp.i.i, label %if.then28.dc_stream_get_status.exit_crit_edge, label %for.cond.preheader.i.i

if.then28.dc_stream_get_status.exit_crit_edge:    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_stream_get_status.exit

for.cond.preheader.i.i:                           ; preds = %if.then28
  %stream_count.i.i = getelementptr inbounds %struct.dc_state, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp217.not.i.i = icmp eq i8 %32, 0
  br i1 %cmp217.not.i.i, label %for.cond.preheader.i.i.dc_stream_get_status.exit_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.dc_stream_get_status.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_stream_get_status.exit

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %wide.trip.count.i.i = zext i8 %32 to i32
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.dc_stream_get_status.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.dc_stream_get_status.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dc_stream_get_status.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [6 x ptr], ptr %30, i32 0, i32 %indvars.iv.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp4.i.i = icmp eq ptr %34, %stream
  br i1 %cmp4.i.i, label %if.then6.i.i, label %for.cond.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i.i = getelementptr %struct.dc_state, ptr %30, i32 0, i32 1, i32 %indvars.iv.i.i
  br label %dc_stream_get_status.exit

dc_stream_get_status.exit:                        ; preds = %if.then6.i.i, %for.cond.i.i.dc_stream_get_status.exit_crit_edge, %for.cond.preheader.i.i.dc_stream_get_status.exit_crit_edge, %if.then28.dc_stream_get_status.exit_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx8.i.i, %if.then6.i.i ], [ null, %if.then28.dc_stream_get_status.exit_crit_edge ], [ null, %for.cond.preheader.i.i.dc_stream_get_status.exit_crit_edge ], [ null, %for.cond.i.i.dc_stream_get_status.exit_crit_edge ]
  %35 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %res_pool, align 8
  %37 = ptrtoint ptr %dwb_pipe_inst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dwb_pipe_inst, align 4
  %arrayidx33 = getelementptr %struct.resource_pool, ptr %36, i32 0, i32 15, i32 %38
  %39 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx33, align 4
  %41 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retval.0.i.i, align 4
  %otg_inst = getelementptr inbounds %struct.dwbc, ptr %40, i32 0, i32 13
  %43 = ptrtoint ptr %otg_inst to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %otg_inst, align 4
  br label %if.end34

if.end34:                                         ; preds = %dc_stream_get_status.exit, %if.end26.if.end34_crit_edge
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dce_environment, align 8
  %.off = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %if.end34
  %update_bandwidth = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 40
  %48 = ptrtoint ptr %update_bandwidth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %update_bandwidth, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %50 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %current_state, align 4
  %call41 = tail call zeroext i1 %49(ptr noundef %dc, ptr noundef %51) #8
  br i1 %call41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end43:                                         ; preds = %if.then39
  %52 = ptrtoint ptr %enable_writeback to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %enable_writeback, align 4
  %tobool46.not = icmp eq ptr %53, null
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %if.then47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.end43
  %54 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %res_pool, align 8
  %56 = ptrtoint ptr %dwb_pipe_inst to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dwb_pipe_inst, align 4
  %arrayidx52 = getelementptr %struct.resource_pool, ptr %55, i32 0, i32 15, i32 %57
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx52, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %is_enabled = getelementptr inbounds %struct.dwbc_funcs, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %is_enabled, align 4
  %call53 = tail call zeroext i1 %63(ptr noundef %59) #8
  br i1 %call53, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %update_writeback = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 55
  %64 = ptrtoint ptr %update_writeback to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %update_writeback, align 4
  %66 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %current_state, align 4
  tail call void %65(ptr noundef %dc, ptr noundef nonnull %wb_info, ptr noundef %67) #8
  br label %cleanup

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %enable_writeback to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %enable_writeback, align 4
  %70 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %current_state, align 4
  tail call void %69(ptr noundef %dc, ptr noundef nonnull %wb_info, ptr noundef %71) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then54, %if.end43.cleanup_crit_edge, %if.then42, %if.end34.cleanup_crit_edge, %if.then5, %if.then2, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then2 ], [ false, %if.then5 ], [ false, %if.then42 ], [ true, %if.then54 ], [ true, %if.else ], [ true, %if.end34.cleanup_crit_edge ], [ true, %if.end43.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_remove_writeback(ptr noundef %dc, ptr noundef %stream, i32 noundef %dwb_pipe_inst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %stream, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dwb_pipe_inst)
  %cmp1.not = icmp eq i32 %dwb_pipe_inst, 0
  br i1 %cmp1.not, label %for.cond.preheader, label %if.then2

for.cond.preheader:                               ; preds = %if.end
  %num_wb_info = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 44
  %0 = ptrtoint ptr %num_wb_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_wb_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp482.not = icmp eq i32 %1, 0
  br i1 %cmp482.not, label %for.cond.preheader.for.end34_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end34_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #8
  br label %cleanup

for.cond14.preheader:                             ; preds = %for.inc
  %2 = ptrtoint ptr %num_wb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %num_wb_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1685.not = icmp eq i32 %.pr, 0
  br i1 %cmp1685.not, label %for.cond14.preheader.for.end34_crit_edge, label %for.cond14.preheader.for.body17_crit_edge

for.cond14.preheader.for.body17_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body17

for.cond14.preheader.for.end34_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %i.083
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dwb_pipe_inst7 = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %i.083, i32 1
  %5 = ptrtoint ptr %dwb_pipe_inst7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dwb_pipe_inst7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body17:                                       ; preds = %for.inc32.for.body17_crit_edge, %for.cond14.preheader.for.body17_crit_edge
  %j.088 = phi i32 [ %j.1, %for.inc32.for.body17_crit_edge ], [ 0, %for.cond14.preheader.for.body17_crit_edge ]
  %i.186 = phi i32 [ %inc33, %for.inc32.for.body17_crit_edge ], [ 0, %for.cond14.preheader.for.body17_crit_edge ]
  %arrayidx19 = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %i.186
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool21.not = icmp eq i8 %9, 0
  br i1 %tobool21.not, label %for.body17.for.inc32_crit_edge, label %if.then22

for.body17.for.inc32_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32

if.then22:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_cmp4(i32 %i.186, i32 %j.088)
  %cmp23.not = icmp eq i32 %i.186, %j.088
  br i1 %cmp23.not, label %if.then22.if.end29_crit_edge, label %if.then24

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26 = getelementptr %struct.dc_stream_state, ptr %stream, i32 0, i32 45, i32 %j.088
  %10 = call ptr @memcpy(ptr %arrayidx26, ptr %arrayidx19, i32 352)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.then22.if.end29_crit_edge
  %inc30 = add i32 %j.088, 1
  br label %for.inc32

for.inc32:                                        ; preds = %if.end29, %for.body17.for.inc32_crit_edge
  %j.1 = phi i32 [ %inc30, %if.end29 ], [ %j.088, %for.body17.for.inc32_crit_edge ]
  %inc33 = add nuw i32 %i.186, 1
  %11 = ptrtoint ptr %num_wb_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_wb_info, align 4
  %cmp16 = icmp ult i32 %inc33, %12
  br i1 %cmp16, label %for.inc32.for.body17_crit_edge, label %for.inc32.for.end34_crit_edge

for.inc32.for.end34_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.inc32.for.body17_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.end34:                                        ; preds = %for.inc32.for.end34_crit_edge, %for.cond14.preheader.for.end34_crit_edge, %for.cond.preheader.for.end34_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond14.preheader.for.end34_crit_edge ], [ 0, %for.cond.preheader.for.end34_crit_edge ], [ %j.1, %for.inc32.for.end34_crit_edge ]
  %13 = ptrtoint ptr %num_wb_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %j.0.lcssa, ptr %num_wb_info, align 4
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dce_environment, align 8
  %.off = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then40, label %for.end34.cleanup_crit_edge

for.end34.cleanup_crit_edge:                      ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %for.end34
  %update_bandwidth = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 40
  %18 = ptrtoint ptr %update_bandwidth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update_bandwidth, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %20 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_state, align 4
  %call = tail call zeroext i1 %19(ptr noundef %dc, ptr noundef %21) #8
  br i1 %call, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end42:                                         ; preds = %if.then40
  %disable_writeback = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 57
  %22 = ptrtoint ptr %disable_writeback to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disable_writeback, align 4
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %dc, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %if.then41, %for.end34.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then2 ], [ false, %if.then41 ], [ true, %for.end34.cleanup_crit_edge ], [ true, %if.end42.cleanup_crit_edge ], [ true, %if.then45 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_warmup_writeback(ptr noundef %dc, i32 noundef %num_dwb, ptr noundef %wb_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmhubbub_warmup = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 58
  %0 = ptrtoint ptr %mmhubbub_warmup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmhubbub_warmup, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 %1(ptr noundef %dc, i32 noundef %num_dwb, ptr noundef %wb_info) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_stream_get_vblank_counter(ptr noundef readonly %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state, align 4
  %res_ctx2 = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4
  %stream8 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %stream8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream8, align 4
  %cmp9.not = icmp eq ptr %7, %stream
  br i1 %cmp9.not, label %entry.cleanup.thread_crit_edge, label %for.cond

entry.cleanup.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond:                                         ; preds = %entry
  %stream8.1 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %stream8.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream8.1, align 4
  %cmp9.not.1 = icmp eq ptr %9, %stream
  br i1 %cmp9.not.1, label %for.cond.cleanup.thread_crit_edge, label %for.cond.1

for.cond.cleanup.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond.1:                                       ; preds = %for.cond
  %stream8.2 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %stream8.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream8.2, align 4
  %cmp9.not.2 = icmp eq ptr %11, %stream
  br i1 %cmp9.not.2, label %for.cond.1.cleanup.thread_crit_edge, label %for.cond.2

for.cond.1.cleanup.thread_crit_edge:              ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond.2:                                       ; preds = %for.cond.1
  %stream8.3 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %stream8.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream8.3, align 4
  %cmp9.not.3 = icmp eq ptr %13, %stream
  br i1 %cmp9.not.3, label %for.cond.2.cleanup.thread_crit_edge, label %for.cond.3

for.cond.2.cleanup.thread_crit_edge:              ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond.3:                                       ; preds = %for.cond.2
  %stream8.4 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %stream8.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream8.4, align 4
  %cmp9.not.4 = icmp eq ptr %15, %stream
  br i1 %cmp9.not.4, label %for.cond.3.cleanup.thread_crit_edge, label %for.cond.4

for.cond.3.cleanup.thread_crit_edge:              ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond.4:                                       ; preds = %for.cond.3
  %stream8.5 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %stream8.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream8.5, align 4
  %cmp9.not.5 = icmp eq ptr %17, %stream
  br i1 %cmp9.not.5, label %for.cond.4.cleanup.thread_crit_edge, label %for.cond.4.cleanup11_crit_edge

for.cond.4.cleanup11_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

for.cond.4.cleanup.thread_crit_edge:              ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.cond.4.cleanup.thread_crit_edge, %for.cond.3.cleanup.thread_crit_edge, %for.cond.2.cleanup.thread_crit_edge, %for.cond.1.cleanup.thread_crit_edge, %for.cond.cleanup.thread_crit_edge, %entry.cleanup.thread_crit_edge
  %conv.lcssa = phi i32 [ 0, %entry.cleanup.thread_crit_edge ], [ 1, %for.cond.cleanup.thread_crit_edge ], [ 2, %for.cond.1.cleanup.thread_crit_edge ], [ 3, %for.cond.2.cleanup.thread_crit_edge ], [ 4, %for.cond.3.cleanup.thread_crit_edge ], [ 5, %for.cond.4.cleanup.thread_crit_edge ]
  %tg4 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %conv.lcssa, i32 3, i32 2
  %18 = ptrtoint ptr %tg4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg4, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %get_frame_count = getelementptr inbounds %struct.timing_generator_funcs, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %get_frame_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_frame_count, align 4
  %call = tail call i32 %23(ptr noundef %19) #8
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup.thread, %for.cond.4.cleanup11_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup.thread ], [ 0, %for.cond.4.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_send_dp_sdp(ptr noundef readonly %stream, ptr noundef %custom_sdp_message, i32 noundef %sdp_message_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %stream, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %cleanup14

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state, align 4
  %res_ctx2 = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4
  %send_immediate_sdp_message = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 17, i32 43
  %stream5 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %stream5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream5, align 4
  %cmp6.not = icmp eq ptr %7, %stream
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %send_immediate_sdp_message to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_immediate_sdp_message, align 4
  %cmp9.not = icmp eq ptr %9, null
  br i1 %cmp9.not, label %do.end, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %res_ctx2, ptr noundef %custom_sdp_message, i32 noundef %sdp_message_size) #8
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10, %if.end.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1
  %stream5.1 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %stream5.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream5.1, align 4
  %cmp6.not.1 = icmp eq ptr %11, %stream
  br i1 %cmp6.not.1, label %if.end8.1, label %cleanup.cleanup.1_crit_edge

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end8.1:                                        ; preds = %cleanup
  %12 = ptrtoint ptr %send_immediate_sdp_message to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_immediate_sdp_message, align 4
  %cmp9.not.1 = icmp eq ptr %13, null
  br i1 %cmp9.not.1, label %do.end.1, label %if.then10.1

if.then10.1:                                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %arrayidx.1, ptr noundef %custom_sdp_message, i32 noundef %sdp_message_size) #8
  br label %cleanup.1

do.end.1:                                         ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #10
  %call.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %cleanup.1

cleanup.1:                                        ; preds = %do.end.1, %if.then10.1, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2
  %stream5.2 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %stream5.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream5.2, align 4
  %cmp6.not.2 = icmp eq ptr %15, %stream
  br i1 %cmp6.not.2, label %if.end8.2, label %cleanup.1.cleanup.2_crit_edge

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end8.2:                                        ; preds = %cleanup.1
  %16 = ptrtoint ptr %send_immediate_sdp_message to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send_immediate_sdp_message, align 4
  %cmp9.not.2 = icmp eq ptr %17, null
  br i1 %cmp9.not.2, label %do.end.2, label %if.then10.2

if.then10.2:                                      ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %arrayidx.2, ptr noundef %custom_sdp_message, i32 noundef %sdp_message_size) #8
  br label %cleanup.2

do.end.2:                                         ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %cleanup.2

cleanup.2:                                        ; preds = %do.end.2, %if.then10.2, %cleanup.1.cleanup.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3
  %stream5.3 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %stream5.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream5.3, align 4
  %cmp6.not.3 = icmp eq ptr %19, %stream
  br i1 %cmp6.not.3, label %if.end8.3, label %cleanup.2.cleanup.3_crit_edge

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.end8.3:                                        ; preds = %cleanup.2
  %20 = ptrtoint ptr %send_immediate_sdp_message to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_immediate_sdp_message, align 4
  %cmp9.not.3 = icmp eq ptr %21, null
  br i1 %cmp9.not.3, label %do.end.3, label %if.then10.3

if.then10.3:                                      ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef %arrayidx.3, ptr noundef %custom_sdp_message, i32 noundef %sdp_message_size) #8
  br label %cleanup.3

do.end.3:                                         ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #10
  %call.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %cleanup.3

cleanup.3:                                        ; preds = %do.end.3, %if.then10.3, %cleanup.2.cleanup.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4
  %stream5.4 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %stream5.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream5.4, align 4
  %cmp6.not.4 = icmp eq ptr %23, %stream
  br i1 %cmp6.not.4, label %if.end8.4, label %cleanup.3.cleanup.4_crit_edge

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

if.end8.4:                                        ; preds = %cleanup.3
  %24 = ptrtoint ptr %send_immediate_sdp_message to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %send_immediate_sdp_message, align 4
  %cmp9.not.4 = icmp eq ptr %25, null
  br i1 %cmp9.not.4, label %do.end.4, label %if.then10.4

if.then10.4:                                      ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %25(ptr noundef %arrayidx.4, ptr noundef %custom_sdp_message, i32 noundef %sdp_message_size) #8
  br label %cleanup.4

do.end.4:                                         ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #10
  %call.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %cleanup.4

cleanup.4:                                        ; preds = %do.end.4, %if.then10.4, %cleanup.3.cleanup.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5
  %stream5.5 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %stream5.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream5.5, align 4
  %cmp6.not.5 = icmp eq ptr %27, %stream
  br i1 %cmp6.not.5, label %if.end8.5, label %cleanup.4.cleanup14_crit_edge

cleanup.4.cleanup14_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

if.end8.5:                                        ; preds = %cleanup.4
  %28 = ptrtoint ptr %send_immediate_sdp_message to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %send_immediate_sdp_message, align 4
  %cmp9.not.5 = icmp eq ptr %29, null
  br i1 %cmp9.not.5, label %do.end.5, label %if.then10.5

if.then10.5:                                      ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %arrayidx.5, ptr noundef %custom_sdp_message, i32 noundef %sdp_message_size) #8
  br label %cleanup14

do.end.5:                                         ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #10
  %call.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %cleanup14

cleanup14:                                        ; preds = %do.end.5, %if.then10.5, %cleanup.4.cleanup14_crit_edge, %if.then
  %30 = xor i1 %cmp, true
  ret i1 %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_get_scanoutpos(ptr noundef readonly %stream, ptr noundef %v_blank_start, ptr noundef %v_blank_end, ptr noundef %h_position, ptr noundef %v_position) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state, align 4
  %res_ctx2 = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4
  %stream8 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %stream8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream8, align 4
  %cmp9.not = icmp eq ptr %7, %stream
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %stream8.1 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %stream8.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream8.1, align 4
  %cmp9.not.1 = icmp eq ptr %9, %stream
  br i1 %cmp9.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %stream8.2 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %stream8.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream8.2, align 4
  %cmp9.not.2 = icmp eq ptr %11, %stream
  br i1 %cmp9.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %stream8.3 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %stream8.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream8.3, align 4
  %cmp9.not.3 = icmp eq ptr %13, %stream
  br i1 %cmp9.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %stream8.4 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %stream8.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream8.4, align 4
  %cmp9.not.4 = icmp eq ptr %15, %stream
  br i1 %cmp9.not.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %stream8.5 = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %stream8.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream8.5, align 4
  %cmp9.not.5 = icmp eq ptr %17, %stream
  br i1 %cmp9.not.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %conv.lcssa = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ 2, %for.cond.1.cleanup_crit_edge ], [ 3, %for.cond.2.cleanup_crit_edge ], [ 4, %for.cond.3.cleanup_crit_edge ], [ 5, %for.cond.4.cleanup_crit_edge ]
  %tg4 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %conv.lcssa, i32 3, i32 2
  %18 = ptrtoint ptr %tg4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg4, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %get_scanoutpos = getelementptr inbounds %struct.timing_generator_funcs, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %get_scanoutpos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_scanoutpos, align 4
  tail call void %23(ptr noundef %19, ptr noundef %v_blank_start, ptr noundef %v_blank_end, ptr noundef %h_position, ptr noundef %v_position) #8
  br label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.4.for.end_crit_edge
  %cmp30 = phi i1 [ true, %cleanup ], [ false, %for.cond.4.for.end_crit_edge ]
  ret i1 %cmp30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_dmdata_status_done(ptr nocapture noundef readonly %dc, ptr noundef readnone %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dmdata_status_done = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 47
  %0 = ptrtoint ptr %dmdata_status_done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmdata_status_done, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %3, i32 0, i32 4
  %stream1 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream1, align 4
  %cmp2 = icmp eq ptr %5, %stream
  br i1 %cmp2, label %for.cond.preheader.if.end7_crit_edge, label %for.inc

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.inc:                                          ; preds = %for.cond.preheader
  %stream1.1 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %stream1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1.1, align 4
  %cmp2.1 = icmp eq ptr %7, %stream
  br i1 %cmp2.1, label %for.inc.if.end7_crit_edge, label %for.inc.1

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.inc.1:                                        ; preds = %for.inc
  %stream1.2 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %stream1.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream1.2, align 4
  %cmp2.2 = icmp eq ptr %9, %stream
  br i1 %cmp2.2, label %for.inc.1.if.end7_crit_edge, label %for.inc.2

for.inc.1.if.end7_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.inc.2:                                        ; preds = %for.inc.1
  %stream1.3 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %stream1.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream1.3, align 4
  %cmp2.3 = icmp eq ptr %11, %stream
  br i1 %cmp2.3, label %for.inc.2.if.end7_crit_edge, label %for.inc.3

for.inc.2.if.end7_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.inc.3:                                        ; preds = %for.inc.2
  %stream1.4 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %stream1.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream1.4, align 4
  %cmp2.4 = icmp eq ptr %13, %stream
  br i1 %cmp2.4, label %for.inc.3.if.end7_crit_edge, label %for.inc.4

for.inc.3.if.end7_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.inc.4:                                        ; preds = %for.inc.3
  %stream1.5 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %stream1.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream1.5, align 4
  %cmp2.5 = icmp eq ptr %15, %stream
  br i1 %cmp2.5, label %for.inc.4.if.end7_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.4.if.end7_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %for.inc.4.if.end7_crit_edge, %for.inc.3.if.end7_crit_edge, %for.inc.2.if.end7_crit_edge, %for.inc.1.if.end7_crit_edge, %for.inc.if.end7_crit_edge, %for.cond.preheader.if.end7_crit_edge
  %i.022.lcssa = phi i32 [ 0, %for.cond.preheader.if.end7_crit_edge ], [ 1, %for.inc.if.end7_crit_edge ], [ 2, %for.inc.1.if.end7_crit_edge ], [ 3, %for.inc.2.if.end7_crit_edge ], [ 4, %for.inc.3.if.end7_crit_edge ], [ 5, %for.inc.4.if.end7_crit_edge ]
  %pipe.119 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.022.lcssa
  %call = tail call zeroext i1 %1(ptr noundef %pipe.119) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.inc.4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.end7 ], [ false, %entry.cleanup_crit_edge ], [ true, %for.inc.4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_stream_set_dynamic_metadata(ptr nocapture noundef readonly %dc, ptr noundef readonly %stream, ptr noundef %attr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %signal, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 4, label %entry.if.end_crit_edge
    i32 32, label %entry.if.end_crit_edge57
    i32 128, label %entry.if.end_crit_edge58
    i32 64, label %entry.if.end_crit_edge59
  ]

entry.if.end_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge57, %entry.if.end_crit_edge58, %entry.if.end_crit_edge59
  %program_dmdata_engine = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 46
  %3 = ptrtoint ptr %program_dmdata_engine to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %program_dmdata_engine, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %5 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %6, i32 0, i32 4
  %stream6 = getelementptr %struct.dc_state, ptr %6, i32 0, i32 4, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream6, align 4
  %cmp7 = icmp eq ptr %8, %stream
  br i1 %cmp7, label %for.cond.preheader.if.end12_crit_edge, label %for.inc

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc:                                          ; preds = %for.cond.preheader
  %stream6.1 = getelementptr %struct.dc_state, ptr %6, i32 0, i32 4, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %stream6.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream6.1, align 4
  %cmp7.1 = icmp eq ptr %10, %stream
  br i1 %cmp7.1, label %for.inc.if.end12_crit_edge, label %for.inc.1

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.1:                                        ; preds = %for.inc
  %stream6.2 = getelementptr %struct.dc_state, ptr %6, i32 0, i32 4, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %stream6.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream6.2, align 4
  %cmp7.2 = icmp eq ptr %12, %stream
  br i1 %cmp7.2, label %for.inc.1.if.end12_crit_edge, label %for.inc.2

for.inc.1.if.end12_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.2:                                        ; preds = %for.inc.1
  %stream6.3 = getelementptr %struct.dc_state, ptr %6, i32 0, i32 4, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %stream6.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream6.3, align 4
  %cmp7.3 = icmp eq ptr %14, %stream
  br i1 %cmp7.3, label %for.inc.2.if.end12_crit_edge, label %for.inc.3

for.inc.2.if.end12_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.3:                                        ; preds = %for.inc.2
  %stream6.4 = getelementptr %struct.dc_state, ptr %6, i32 0, i32 4, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %stream6.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream6.4, align 4
  %cmp7.4 = icmp eq ptr %16, %stream
  br i1 %cmp7.4, label %for.inc.3.if.end12_crit_edge, label %for.inc.4

for.inc.3.if.end12_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.4:                                        ; preds = %for.inc.3
  %stream6.5 = getelementptr %struct.dc_state, ptr %6, i32 0, i32 4, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %stream6.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream6.5, align 4
  %cmp7.5 = icmp eq ptr %18, %stream
  br i1 %cmp7.5, label %for.inc.4.if.end12_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.4.if.end12_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %for.inc.4.if.end12_crit_edge, %for.inc.3.if.end12_crit_edge, %for.inc.2.if.end12_crit_edge, %for.inc.1.if.end12_crit_edge, %for.inc.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge
  %i.052.lcssa = phi i32 [ 0, %for.cond.preheader.if.end12_crit_edge ], [ 1, %for.inc.if.end12_crit_edge ], [ 2, %for.inc.1.if.end12_crit_edge ], [ 3, %for.inc.2.if.end12_crit_edge ], [ 4, %for.inc.3.if.end12_crit_edge ], [ 5, %for.inc.4.if.end12_crit_edge ]
  %hubp13 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.052.lcssa, i32 2, i32 1
  %19 = ptrtoint ptr %hubp13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hubp13, align 8
  %cmp14 = icmp eq ptr %20, null
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %pipe_ctx.149 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.052.lcssa
  %stream17 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.052.lcssa, i32 1
  %21 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream17, align 4
  %dmdata_address = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 15
  %address = getelementptr inbounds %struct.dc_dmdata_attributes, ptr %attr, i32 0, i32 4
  %23 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %address, align 8
  %25 = ptrtoint ptr %dmdata_address to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %dmdata_address, align 8
  %26 = ptrtoint ptr %program_dmdata_engine to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %program_dmdata_engine, align 4
  tail call void %27(ptr noundef %pipe_ctx.149) #8
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %20, align 8
  %dmdata_set_attributes = getelementptr inbounds %struct.hubp_funcs, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %dmdata_set_attributes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dmdata_set_attributes, align 4
  %cmp20.not = icmp eq ptr %31, null
  br i1 %cmp20.not, label %if.end16.cleanup_crit_edge, label %land.lhs.true21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true21:                                  ; preds = %if.end16
  %32 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream17, align 4
  %dmdata_address23 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %dmdata_address23 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dmdata_address23, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp24.not = icmp eq i64 %35, 0
  br i1 %cmp24.not, label %land.lhs.true21.cleanup_crit_edge, label %if.then25

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %31(ptr noundef nonnull %20, ptr noundef %attr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %land.lhs.true21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ], [ true, %if.then25 ], [ true, %land.lhs.true21.cleanup_crit_edge ], [ true, %if.end16.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_stream_add_dsc_to_resource(ptr noundef %dc, ptr noundef %state, ptr noundef %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %add_dsc_to_stream_resource = getelementptr inbounds %struct.resource_funcs, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %add_dsc_to_stream_resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add_dsc_to_stream_resource, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef %dc, ptr noundef %state, ptr noundef %stream) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 17, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_stream_log(ptr nocapture noundef readnone %dc, ptr noundef %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 8
  %y = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y, align 4
  %width = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %dst = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 11
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst, align 8
  %y6 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %y6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y6, align 4
  %width8 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width8, align 8
  %height10 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height10, align 4
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 20
  %16 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %output_color_space, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, ptr noundef %stream, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %18 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %19, 10
  %20 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timing, align 8
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %22 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v_total, align 8
  %pixel_encoding = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %24 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixel_encoding, align 4
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 16
  %26 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %display_color_depth, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %div, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #8
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link, align 4
  %link_index = getelementptr inbounds %struct.dc_link, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %link_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link_index, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %31) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_transfer_func_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_create_transfer_func() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 317, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 321, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 326, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 404, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 445, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 450, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 481, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 605, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dc_stream_send_dp_sdp._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @dc_stream_send_dp_sdp._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 718, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 730, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_stream.c", i32 737, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
!36 = !{i64 2148208112, i64 2148208144, i64 2148208173, i64 2148208207, i64 2148208238, i64 2148208261}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148296113}
!40 = !{i64 2148210577, i64 2148210609, i64 2148210638, i64 2148210672, i64 2148210703, i64 2148210726}
!41 = !{i64 2149574831}
