; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_hw_sequencer.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dce110_hw_seq_reg_offsets = type { i32 }
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
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.33, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.25 }
%union.anon.25 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.26 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.26 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.29, i32, i32, i32, i32 }
%struct.anon.29 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.30 }
%struct.anon.30 = type { i32 }
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
%struct.anon.33 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.stream_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.23 }
%struct.anon.23 = type { i8 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.42 }
%struct.anon.42 = type { i8 }
%union.max_lane_count = type { %struct.anon.43 }
%struct.anon.43 = type { i8 }
%union.max_down_spread = type { %struct.anon.44 }
%struct.anon.44 = type { i8 }
%union.dprx_feature = type { %struct.anon.45 }
%struct.anon.45 = type { i8 }
%union.sink_count = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.47 }
%struct.anon.47 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.48 }
%struct.anon.48 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.49 }
%struct.anon.49 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.50 }
%struct.anon.50 = type { i8 }
%union.dpia_info = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.52 }
%struct.anon.52 = type { i8, i8, %struct.anon.53 }
%struct.anon.53 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.54 }
%struct.anon.54 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
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
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.8 }
%struct.anon.8 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.9, %struct.anon.10, %struct.anon.11, i32, i32 }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.10 = type { i32, i32, i32 }
%struct.anon.11 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.15, %struct.anon.16, i8, i8, i64 }
%struct.anon.15 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.16 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.encoder_feature_support = type { %union.anon.40, i32, i32, i8, i8, i8 }
%union.anon.40 = type { i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_sink = type { i32, %struct.dc_edid, %struct.dc_edid_caps, ptr, i32, ptr, [14 x %struct.stereo_3d_features], i8, %struct.dc_sink_dsc_caps, %struct.dc_sink_fec_caps, i8, ptr, ptr, i32, %struct.kref }
%struct.dc_edid = type { i32, [2048 x i8] }
%struct.dc_edid_caps = type { i16, i16, i32, i8, i8, [20 x i8], i8, i32, [16 x %struct.dc_cea_audio_mode], i32, i32, %union.display_content_support, i8, i8, i32, i8, i8, i8, %struct.dc_panel_patch }
%struct.dc_cea_audio_mode = type { i8, i8, i8, %union.anon.17 }
%union.anon.17 = type { i8 }
%struct.stereo_3d_features = type { i8, i8, i8, i8, i8 }
%struct.dc_sink_dsc_caps = type { i8, %struct.dsc_dec_dpcd_caps }
%struct.dsc_dec_dpcd_caps = type { i8, i8, i32, %union.dsc_slice_caps1, %union.dsc_slice_caps2, i32, i8, i32, %union.dsc_color_formats, %union.dsc_color_depth, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dsc_slice_caps1 = type { %struct.anon.19 }
%struct.anon.19 = type { i8 }
%union.dsc_slice_caps2 = type { %struct.anon.20 }
%struct.anon.20 = type { i8 }
%union.dsc_color_formats = type { %struct.anon.21 }
%struct.anon.21 = type { i8 }
%union.dsc_color_depth = type { %struct.anon.22 }
%struct.anon.22 = type { i8 }
%struct.dc_sink_fec_caps = type { i8, i8 }
%struct.bp_transmitter_control = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, i8, i8, i8 }
%struct.panel_cntl_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panel_cntl = type { ptr, ptr, i32, %struct.panel_cntl_backlight_registers }
%struct.panel_cntl_backlight_registers = type { i32, i32, i32, i32 }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.audio = type { ptr, ptr, i32, i8 }
%struct.audio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.59, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.60, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.59 = type { i8, [3 x i8] }
%struct.anon.60 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.encoder_unblank_param = type { %struct.dc_link_settings, %struct.dc_crtc_timing, i32 }
%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.72 }
%struct.dc_stream_status = type { i32, i32, i32, i32, %struct.timing_sync_info, [4 x ptr], i8 }
%struct.timing_sync_info = type { i32, i32, i8 }
%struct.resource_context = type { [6 x %struct.pipe_ctx], [12 x i8], [6 x i8], [7 x i8], i8, [6 x i8], %struct.link_enc_cfg_context }
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
%struct.anon.72 = type { i32 }
%struct.compressor = type { ptr, i32, i8, ptr, %union.anon.66, %union.fbc_physical_address, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.66 = type { i32 }
%union.fbc_physical_address = type { i64 }
%struct.compressor_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mem_input_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drr_params = type { i32, i32, i32, i32, i8 }
%struct.audio_output = type { i32, i32, %struct.audio_crtc_info, %struct.audio_pll_info }
%struct.audio_crtc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.audio_pll_info = type { i32, i32, i32, i8, i32, i32 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.output_pixel_processor = type { ptr, i32, %struct.pwl_params, %struct.mpc_tree, [6 x i8], ptr, i32 }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.28, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.28 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.mpc_tree = type { i32, ptr }
%struct.opp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.compr_addr_and_pitch_params = type { i32, i32, i32 }
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
%union.surface_update_flags = type { %struct.anon.70 }
%struct.anon.70 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.bw_calcs_vbios = type { i32, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, i8, %struct.bw_fixed, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed }
%struct.bw_fixed = type { i64 }
%struct.abm = type { ptr, ptr, i8 }
%struct.abm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mem_input = type { ptr, ptr, %struct.dc_plane_address, %struct.dc_plane_address, i32, %struct.stutter_modes }
%struct.stutter_modes = type { i8, i8, i8 }
%struct.dcp_gsl_params = type { i32, i32 }
%struct.anon.65 = type { i8, i8, i8, i8 }
%struct.dc_static_screen_params = type { %struct.anon.65, i32 }
%struct.dc_cursor_mi_param = type { i32, i32, %struct.rect, %struct.fixed31_32, %struct.fixed31_32, i32, i8 }
%struct.input_pixel_processor = type { ptr, i32, ptr }
%struct.ipp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.transform_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32 }
%struct.out_csc_color_matrix = type { i32, [12 x i16] }
%struct.tg_color = type { i16, i16, i16 }
%struct.default_adjustment = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.0 = type { i32, i32 }
%struct.ipp_prescale_params = type { i32, i16, i16 }
%struct.dc_gamma = type { %struct.kref, i32, i32, %struct.dc_gamma_entries, ptr, i8 }
%struct.dc_gamma_entries = type { [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32] }
%struct.dc_transfer_func = type { %struct.kref, i32, i32, i32, %union.anon.27 }
%union.anon.27 = type { %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], i16, i16, i16, i16 }
%struct.custom_float_format = type { i32, i32, i8 }
%struct.transform = type { ptr, ptr, i32, ptr, %struct.pwl_params }
%struct.clock_source_funcs = type { ptr, ptr, ptr, ptr, ptr }

@dce110_update_info_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce110_edp_wait_for_hpd_ready = private unnamed_addr constant [30 x i8] c"dce110_edp_wait_for_hpd_ready\00", align 1
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: wait timed out!\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dce110_edp_power_control = private unnamed_addr constant [25 x i8] c"dce110_edp_power_control\00", align 1
@.str.3 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"%s: transition: power_up=%d current_ts=%llu edp_poweroff=%llu edp_poweron=%llu time_since_edp_poweroff_ms=%llu time_since_edp_poweron_ms=%llu\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: remaining_min_edp_poweroff_time_ms=%llu: begin wait.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: remaining_min_edp_poweroff_time_ms=%llu: end wait.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: wait %lld ms to power on eDP.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: remaining_min_edp_poweroff_time_ms=%llu: no wait required.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: BEGIN: Panel Power action: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: END: Panel Power action: %s bp_result=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: updated values: edp_poweroff=%llu edp_poweron=%llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Panel Power bp_result: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Skipping Panel Power action: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dce110_edp_wait_for_T12 = private unnamed_addr constant [24 x i8] c"dce110_edp_wait_for_T12\00", align 1
@__func__.dce110_edp_backlight_control = private unnamed_addr constant [29 x i8] c"dce110_edp_backlight_control\00", align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: panel already powered up/off. Do nothing.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: backlight action: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"edp_receiver_ready_T7 skipped\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"edp_receiver_ready_T9 skipped\0A\00", [33 x i8] zeroinitializer }, align 32
@dce110_disable_stream.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"eDP fast boot disabled to optimize link rate\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Keep eDP Vdd on\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No eDP stream enabled, turn eDP Vdd off\0A\00", [55 x i8] zeroinitializer }, align 32
@dce110_funcs = internal constant { %struct.hw_sequencer_funcs, [64 x i8] } { %struct.hw_sequencer_funcs { ptr null, ptr @dce110_edp_power_control, ptr @dce110_edp_wait_for_hpd_ready, ptr null, ptr @init_hw, ptr null, ptr @dce110_enable_accelerated_mode, ptr @dce110_apply_ctx_to_hw, ptr @dce110_power_down_fe, ptr null, ptr @dce110_apply_ctx_for_surface, ptr null, ptr null, ptr @dce110_post_unlock_program_front_end, ptr @update_plane_addr, ptr null, ptr @dce110_wait_for_mpcc_disconnect, ptr @dce110_edp_backlight_control, ptr null, ptr @dce110_update_pending_status, ptr null, ptr @dce_pipe_control_lock, ptr null, ptr null, ptr @dce_pipe_control_lock, ptr @get_position, ptr null, ptr null, ptr @dce110_enable_per_frame_crtc_position_reset, ptr @dce110_enable_timing_synchronization, ptr null, ptr null, ptr @set_drr, ptr @set_static_screen_control, ptr null, ptr @dce110_enable_stream, ptr @dce110_disable_stream, ptr @dce110_blank_stream, ptr @dce110_unblank_stream, ptr @dce110_prepare_bandwidth, ptr null, ptr @dce110_optimize_bandwidth, ptr @dce110_set_avmute, ptr null, ptr @dce110_update_info_frame, ptr null, ptr null, ptr null, ptr @dce110_set_cursor_position, ptr @dce110_set_cursor_attribute, ptr null, ptr @program_gamut_remap, ptr @program_output_csc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce110_enable_audio_stream, ptr @dce110_disable_audio_stream, ptr null, ptr null, ptr null, ptr null, ptr @dce110_set_backlight_level, ptr @dce110_set_abm_immediate_disable, ptr @dce110_set_pipe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [64 x i8] zeroinitializer }, align 32
@dce110_private_funcs = internal constant { %struct.hwseq_private_funcs, [40 x i8] } { %struct.hwseq_private_funcs { ptr null, ptr null, ptr @init_pipes, ptr @dce110_reset_hw_ctx_wrap, ptr @update_plane_addr, ptr null, ptr null, ptr @dce110_set_input_transfer_func, ptr @dce110_set_output_transfer_func, ptr @dce110_power_down, ptr @enable_display_pipe_clock_gating, ptr @dce110_enable_display_power_gating, ptr null, ptr @dce110_enable_stream_timing, ptr @dce110_edp_backlight_control, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to power down pll! (dp clk src)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to power down pll! (clk src index=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@should_enable_fbc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str, ptr @.str.26, i8 2, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dce110_program_front_end_for_pipe\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"[SURFACE]:Pipe:%d %p: addr hi:0x%x, addr low:0x%x, src: %d, %d, %d, %d; dst: %d, %d, %d, %d;clip: %d, %d, %d, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str, ptr @.str.27, i8 2, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"[SURFACE]:Pipe %d: width, height, x, y\0Aviewport:%d, %d, %d, %d\0Arecout:  %d, %d, %d, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@program_surface_visibility.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GSL: enabling trigger-reset\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"GSL: waiting for reset to occur.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TG counter is not moving!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GSL: reset occurred at wait count: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GSL: Timeout on reset trigger!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GSL: Setting-up...\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"GSL: Restoring register states.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GSL: Set-up complete.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: failed to blank crtc!\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.dce110_reset_hw_ctx_wrap = private unnamed_addr constant [25 x i8] c"dce110_reset_hw_ctx_wrap\00", align 1
@build_prescale_params.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_sub.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@__func__.convert_to_custom_float = private unnamed_addr constant [24 x i8] c"convert_to_custom_float\00", align 1
@reg_offsets = internal constant { [4 x %struct.dce110_hw_seq_reg_offsets], [16 x i8] } { [4 x %struct.dce110_hw_seq_reg_offsets] [%struct.dce110_hw_seq_reg_offsets zeroinitializer, %struct.dce110_hw_seq_reg_offsets { i32 512 }, %struct.dce110_hw_seq_reg_offsets { i32 1024 }, %struct.dce110_hw_seq_reg_offsets { i32 11264 }], [16 x i8] zeroinitializer }, align 32
@__func__.dce110_enable_display_power_gating = private unnamed_addr constant [35 x i8] c"dce110_enable_display_power_gating\00", align 1
@__func__.dce110_init_pte = private unnamed_addr constant [16 x i8] c"dce110_init_pte\00", align 1
@__func__.dce110_enable_stream_timing = private unnamed_addr constant [28 x i8] c"dce110_enable_stream_timing\00", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 128]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.52 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 11]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 644, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 741, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 798, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 835, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 865, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 869, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 872, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 875, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 881, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 909, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 920, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 927, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 931, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 991, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1000, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1041, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1078, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1832, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1856, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1858, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"dce110_funcs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3082, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"dce110_private_funcs\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3123, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1700, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1705, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2829, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2852, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2630, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2638, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2544, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2551, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2562, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2578, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2607, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2611, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 2192, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 274, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"reg_offsets\00", align 1
@___asan_gen_.176 = private constant [73 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 103, i32 47 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dce110_funcs, ptr @dce110_private_funcs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @reg_offsets], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_funcs to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_private_funcs to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_offsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_update_info_frame(ptr noundef %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.do.end42_crit_edge

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

land.rhs:                                         ; preds = %entry
  %.b83 = load i1, ptr @dce110_update_info_frame.__already_done, align 1
  br i1 %.b83, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !123

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dce110_update_info_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 644, i32 noundef 9, ptr noundef null) #6
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %entry.do.end42_crit_edge
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_enc, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end42.cleanup_crit_edge, label %if.end44

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %do.end42
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %signal, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end44.cleanup_crit_edge [
    i32 32, label %if.end44.if.else_crit_edge
    i32 128, label %if.end44.if.else_crit_edge86
    i32 64, label %if.end44.if.else_crit_edge87
    i32 4, label %if.then56
  ]

if.end44.if.else_crit_edge87:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end44.if.else_crit_edge86:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end44.if.else_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then56:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %update_hdmi_info_packets = getelementptr inbounds %struct.stream_encoder_funcs, ptr %10, i32 0, i32 5
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end44.if.else_crit_edge, %if.end44.if.else_crit_edge86, %if.end44.if.else_crit_edge87
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %update_dp_info_packets = getelementptr inbounds %struct.stream_encoder_funcs, ptr %12, i32 0, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then56
  %update_hdmi_info_packets.sink = phi ptr [ %update_hdmi_info_packets, %if.then56 ], [ %update_dp_info_packets, %if.else ]
  %13 = ptrtoint ptr %update_hdmi_info_packets.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %update_hdmi_info_packets.sink, align 4
  %encoder_info_frame = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 6
  tail call void %14(ptr noundef nonnull %3, ptr noundef %encoder_info_frame) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge, %do.end42.cleanup_crit_edge
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
define dso_local void @dce110_enable_stream(ptr noundef %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_link_settings, align 8
  %dc7 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %dc7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc7, align 4
  %tg8 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %tg8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tg8, align 8
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 38
  %10 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_enc, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %connect_dig_be_to_fe = getelementptr inbounds %struct.link_encoder_funcs, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %connect_dig_be_to_fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %connect_dig_be_to_fe, align 4
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream_enc, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  tail call void %15(ptr noundef %11, i32 noundef %19, i1 noundef zeroext true) #6
  %update_info_frame = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 17, i32 44
  %20 = ptrtoint ptr %update_info_frame to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %update_info_frame, align 4
  tail call void %21(ptr noundef %pipe_ctx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end.thread_crit_edge, label %if.end

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.end:                                           ; preds = %entry
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h_addressable, align 4
  %h_border_left = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_border_left, align 4
  %add = add i32 %25, %23
  %h_border_right = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h_border_right, align 4
  %add11 = add i32 %add, %27
  %rem = urem i32 %add11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp12 = icmp eq i32 %rem, 0
  br i1 %cmp12, label %if.end.if.end.thread_crit_edge, label %if.end._crit_edge

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %28

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  br label %28

28:                                               ; preds = %if.end.thread, %if.end._crit_edge
  %29 = phi i32 [ %5, %if.end.thread ], [ %rem, %if.end._crit_edge ]
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %9, align 4
  %set_early_control = getelementptr inbounds %struct.timing_generator_funcs, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %set_early_control to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_early_control, align 4
  tail call void %33(ptr noundef %9, i32 noundef %29) #6
  %audio = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %audio, align 8
  %cmp17.not = icmp eq ptr %35, null
  br i1 %cmp17.not, label %.if.end27_crit_edge, label %if.then18

.if.end27_crit_edge:                              ; preds = %28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then18:                                        ; preds = %28
  %36 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stream, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %37, i32 0, i32 36
  %38 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %signal, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %39, label %if.then18.if.end27_crit_edge [
    i32 32, label %if.then18.if.then20_crit_edge
    i32 128, label %if.then18.if.then20_crit_edge47
    i32 64, label %if.then18.if.then20_crit_edge48
  ]

if.then18.if.then20_crit_edge48:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then18.if.then20_crit_edge47:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then18.if.then20_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20:                                        ; preds = %if.then18.if.then20_crit_edge, %if.then18.if.then20_crit_edge47, %if.then18.if.then20_crit_edge48
  %41 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream_enc, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %dp_audio_enable = getelementptr inbounds %struct.stream_encoder_funcs, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %dp_audio_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dp_audio_enable, align 4
  tail call void %46(ptr noundef %42) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.then18.if.end27_crit_edge, %.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_edp_wait_for_hpd_ready(ptr nocapture noundef readonly %link, i1 noundef zeroext %power_up) #0 align 64 {
entry:
  %hpd = alloca ptr, align 4
  %detected = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %2 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_enc, align 8
  %connector2 = getelementptr inbounds %struct.link_encoder, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %connector2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %connector.sroa.0.0.copyload = load i32, ptr %connector2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd) #6
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %5 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local_sink, align 4
  %cond = select i1 %power_up, i32 300, i32 500
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %connector.sroa.0.0.copyload, 0
  %7 = and i32 %connector.sroa.0.0.copyload, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 335740928, i32 %7)
  %8 = icmp eq i32 %7, 335740928
  br i1 %8, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_edp_wait_for_hpd_ready, i32 noundef 741) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup40

if.end:                                           ; preds = %entry
  br i1 %power_up, label %if.end5, label %if.end.cleanup40_crit_edge

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

if.end5:                                          ; preds = %if.end
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dc_bios, align 4
  %gpio_service = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %gpio_service to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_service, align 4
  %call7 = tail call ptr @get_hpd_gpio(ptr noundef %10, [1 x i32] %.fca.0.insert, ptr noundef %12) #6
  %13 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %hpd, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body10, label %if.end13

do.body10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_edp_wait_for_hpd_ready, i32 noundef 762) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup40

if.end13:                                         ; preds = %if.end5
  %cmp14.not = icmp eq ptr %6, null
  br i1 %cmp14.not, label %if.end13.if.end22_crit_edge, label %if.then15

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.end13
  %extra_t3_ms = getelementptr inbounds %struct.dc_sink, ptr %6, i32 0, i32 2, i32 18, i32 7
  %14 = ptrtoint ptr %extra_t3_ms to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %extra_t3_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16.not = icmp eq i32 %15, 0
  br i1 %cmp16.not, label %if.then15.if.end22_crit_edge, label %if.then17

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %15) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then15.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %16 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hpd, align 4
  %call23 = tail call i32 @dal_gpio_open(ptr noundef %17, i32 noundef 4) #6
  br label %do.body24

do.body24:                                        ; preds = %cleanup.do.body24_crit_edge, %if.end22
  %time_elapsed.0 = phi i32 [ 0, %if.end22 ], [ %add, %cleanup.do.body24_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %detected) #6
  %18 = ptrtoint ptr %detected to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %detected, align 4
  %19 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hpd, align 4
  %call25 = call i32 @dal_gpio_get_value(ptr noundef %20, ptr noundef nonnull %detected) #6
  %21 = ptrtoint ptr %detected to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %detected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %tobool27.not = icmp eq i32 %22, 1
  br i1 %tobool27.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %detected) #6
  %23 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hpd, align 4
  call void @dal_gpio_close(ptr noundef %24) #6
  call void @dal_gpio_destroy_irq(ptr noundef nonnull %hpd) #6
  br label %cleanup40

cleanup:                                          ; preds = %do.body24
  call void @msleep(i32 noundef 10) #6
  %add = add nuw nsw i32 %time_elapsed.0, 10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %detected) #6
  %cmp31 = icmp ult i32 %add, %cond
  br i1 %cmp31, label %cleanup.do.body24_crit_edge, label %do.end33

cleanup.do.body24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.end33:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hpd, align 4
  call void @dal_gpio_close(ptr noundef %26) #6
  call void @dal_gpio_destroy_irq(ptr noundef nonnull %hpd) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dce110_edp_wait_for_hpd_ready) #6
  br label %cleanup40

cleanup40:                                        ; preds = %do.end33, %cleanup.thread, %do.body10, %if.end.cleanup40_crit_edge, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_hpd_gpio(ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_get_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_destroy_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_edp_power_control(ptr nocapture noundef %link, i1 noundef zeroext %power_up) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #6
  %2 = getelementptr inbounds i8, ptr %cntl, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %4 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_enc, align 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %connector, align 4
  %7 = and i32 %.unpack, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 335740928, i32 %7)
  %8 = icmp eq i32 %7, 335740928
  br i1 %8, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_edp_power_control, i32 noundef 815) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel_cntl = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 37
  %9 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel_cntl, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %is_panel_powered_on = getelementptr inbounds %struct.panel_cntl_funcs, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %is_panel_powered_on to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %is_panel_powered_on, align 4
  %call7 = tail call zeroext i1 %14(ptr noundef nonnull %10) #6
  %15 = xor i1 %call7, %power_up
  br i1 %15, label %if.then11, label %if.else112

if.then11:                                        ; preds = %if.end3
  %conv = zext i1 %power_up to i32
  %call.i.i = tail call i64 @ktime_get_raw() #6
  %link_trace = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 57
  %16 = ptrtoint ptr %link_trace to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %link_trace, align 8
  %call13 = tail call i64 @dm_get_elapse_time_in_ns(ptr noundef %1, i64 noundef %call.i.i, i64 noundef %17) #6
  %call14 = tail call i64 @div64_u64(i64 noundef %call13, i64 noundef 1000000) #6
  %edp_poweron = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 57, i32 0, i32 1
  %18 = ptrtoint ptr %edp_poweron to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %edp_poweron, align 8
  %call17 = tail call i64 @dm_get_elapse_time_in_ns(ptr noundef %1, i64 noundef %call.i.i, i64 noundef %19) #6
  %call18 = tail call i64 @div64_u64(i64 noundef %call17, i64 noundef 1000000) #6
  %20 = ptrtoint ptr %link_trace to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %link_trace, align 8
  %22 = ptrtoint ptr %edp_poweron to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %edp_poweron, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_edp_power_control, i32 noundef %conv, i64 noundef %call.i.i, i64 noundef %21, i64 noundef %23, i64 noundef %call14, i64 noundef %call18) #6
  br i1 %power_up, label %if.then28, label %if.then11.if.end51_crit_edge

if.then11.if.end51_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then28:                                        ; preds = %if.then11
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %24 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %local_sink, align 4
  %cmp29.not = icmp eq ptr %25, null
  br i1 %cmp29.not, label %if.then28.if.end34_crit_edge, label %if.then31

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %extra_t12_ms = getelementptr inbounds %struct.dc_sink, ptr %25, i32 0, i32 2, i32 18, i32 1
  %26 = ptrtoint ptr %extra_t12_ms to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %extra_t12_ms, align 4
  %conv33 = zext i32 %27 to i64
  %add = add nuw nsw i64 %conv33, 500
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then28.if.end34_crit_edge
  %remaining_min_edp_poweroff_time_ms.0 = phi i64 [ %add, %if.then31 ], [ 500, %if.then28.if.end34_crit_edge ]
  %28 = ptrtoint ptr %link_trace to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %link_trace, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp38.not = icmp eq i64 %29, 0
  %30 = tail call i64 @llvm.usub.sat.i64(i64 %remaining_min_edp_poweroff_time_ms.0, i64 %call14)
  %remaining_min_edp_poweroff_time_ms.1 = select i1 %cmp38.not, i64 %remaining_min_edp_poweroff_time_ms.0, i64 %30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remaining_min_edp_poweroff_time_ms.1)
  %tobool46.not = icmp eq i64 %remaining_min_edp_poweroff_time_ms.1, 0
  br i1 %tobool46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_edp_power_control, i64 noundef %remaining_min_edp_poweroff_time_ms.1) #6
  %conv48 = trunc i64 %remaining_min_edp_poweroff_time_ms.1 to i32
  tail call void @msleep(i32 noundef %conv48) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dce110_edp_power_control, i64 noundef %remaining_min_edp_poweroff_time_ms.1) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce110_edp_power_control, i64 noundef %remaining_min_edp_poweroff_time_ms.1) #6
  br label %if.end51

if.else49:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dce110_edp_power_control, i64 noundef 0) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47, %if.then11.if.end51_crit_edge
  %cond56 = phi i32 [ 13, %if.then11.if.end51_crit_edge ], [ 12, %if.else49 ], [ 12, %if.then47 ]
  %cond = phi ptr [ @.str.10, %if.then11.if.end51_crit_edge ], [ @.str.9, %if.else49 ], [ @.str.9, %if.then47 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dce110_edp_power_control, ptr noundef nonnull %cond) #6
  %31 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond56, ptr %cntl, align 4
  %32 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link_enc, align 8
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %transmitter, align 4
  %transmitter58 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %36 = ptrtoint ptr %transmitter58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %transmitter58, align 4
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector60 = getelementptr inbounds %struct.link_encoder, ptr %33, i32 0, i32 4
  %37 = ptrtoint ptr %connector60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %connector60, align 4
  %39 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %connector_obj_id, align 4
  %coherent = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 12
  %40 = ptrtoint ptr %coherent to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %coherent, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %41 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %33, i32 0, i32 9
  %42 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %44 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hpd_sel, align 4
  %45 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %panel_cntl, align 4
  %inst = getelementptr inbounds %struct.panel_cntl, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %inst, align 4
  %conv63 = trunc i32 %48 to i8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %ctx64 = getelementptr inbounds %struct.dc, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %ctx64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx64, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dmub_srv, align 8
  %tobool65.not = icmp eq ptr %54, null
  br i1 %tobool65.not, label %if.end51.if.end84_crit_edge, label %land.lhs.true

if.end51.if.end84_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

land.lhs.true:                                    ; preds = %if.end51
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %50, i32 0, i32 63
  %55 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dmub_command_table, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool67.not = icmp eq i8 %56, 0
  br i1 %tobool67.not, label %land.lhs.true.if.end84_crit_edge, label %if.then69

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dc_bios, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %enable_lvtma_control = getelementptr inbounds %struct.dc_vbios_funcs, ptr %60, i32 0, i32 28
  %61 = ptrtoint ptr %enable_lvtma_control to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %enable_lvtma_control, align 4
  %. = select i1 %power_up, i8 12, i8 13
  %call76 = tail call i32 %62(ptr noundef %58, i8 noundef zeroext %., i8 noundef zeroext %conv63) #6
  br label %if.end84

if.end84:                                         ; preds = %if.then69, %land.lhs.true.if.end84_crit_edge, %if.end51.if.end84_crit_edge
  %dc_bios85 = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %63 = ptrtoint ptr %dc_bios85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dc_bios85, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %transmitter_control.i, align 4
  %call.i = call i32 %68(ptr noundef %64, ptr noundef nonnull %cntl) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dce110_edp_power_control, ptr noundef nonnull %cond, i32 noundef %call.i) #6
  %edp_poweron.link_trace = select i1 %power_up, ptr %edp_poweron, ptr %link_trace
  %call.i.i174 = call i64 @ktime_get_raw() #6
  %69 = ptrtoint ptr %edp_poweron.link_trace to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %call.i.i174, ptr %edp_poweron.link_trace, align 8
  %70 = ptrtoint ptr %link_trace to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %link_trace, align 8
  %72 = ptrtoint ptr %edp_poweron to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %edp_poweron, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dce110_edp_power_control, i64 noundef %71, i64 noundef %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp108.not = icmp eq i32 %call.i, 0
  br i1 %cmp108.not, label %if.end84.cleanup_crit_edge, label %if.then110

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then110:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dce110_edp_power_control, i32 noundef %call.i) #6
  br label %cleanup

if.else112:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %cond115 = select i1 %power_up, ptr @.str.9, ptr @.str.10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dce110_edp_power_control, ptr noundef nonnull %cond115) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else112, %if.then110, %if.end84.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_get_elapse_time_in_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_edp_wait_for_T12(ptr nocapture noundef readonly %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %2 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_enc, align 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %connector, align 4
  %5 = and i32 %.unpack, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 335740928, i32 %5)
  %6 = icmp eq i32 %5, 335740928
  br i1 %6, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_edp_wait_for_T12, i32 noundef 944) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel_cntl = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 37
  %7 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel_cntl, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %is_panel_powered_on = getelementptr inbounds %struct.panel_cntl_funcs, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %is_panel_powered_on to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %is_panel_powered_on, align 4
  %call6 = tail call zeroext i1 %12(ptr noundef nonnull %8) #6
  br i1 %call6, label %if.end3.cleanup_crit_edge, label %land.lhs.true

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %link_trace = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 57
  %13 = ptrtoint ptr %link_trace to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %link_trace, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp7.not = icmp eq i64 %14, 0
  br i1 %cmp7.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  %call.i.i = tail call i64 @ktime_get_raw() #6
  %15 = ptrtoint ptr %link_trace to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %link_trace, align 8
  %call13 = tail call i64 @dm_get_elapse_time_in_ns(ptr noundef %1, i64 noundef %call.i.i, i64 noundef %16) #6
  %call14 = tail call i64 @div64_u64(i64 noundef %call13, i64 noundef 1000000) #6
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %17 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %local_sink, align 4
  %extra_t12_ms = getelementptr inbounds %struct.dc_sink, ptr %18, i32 0, i32 2, i32 18, i32 1
  %19 = ptrtoint ptr %extra_t12_ms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %extra_t12_ms, align 4
  %add = add i32 %20, 500
  %conv = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %conv)
  %cmp15 = icmp ult i64 %call14, %conv
  br i1 %cmp15, label %if.then17, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = trunc i64 %call14 to i32
  %conv19 = sub i32 %add, %21
  tail call void @msleep(i32 noundef %conv19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_edp_backlight_control(ptr noundef %link, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #6
  %2 = getelementptr inbounds i8, ptr %cntl, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %4 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_enc, align 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %connector, align 4
  %7 = and i32 %.unpack, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 335740928, i32 %7)
  %8 = icmp eq i32 %7, 335740928
  br i1 %8, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_edp_backlight_control, i32 noundef 983) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup112

if.end:                                           ; preds = %entry
  %panel_cntl = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 37
  %9 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel_cntl, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then2

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then2:                                         ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %is_panel_backlight_on = getelementptr inbounds %struct.panel_cntl_funcs, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %is_panel_backlight_on to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %is_panel_backlight_on, align 4
  %call5 = tail call zeroext i1 %14(ptr noundef nonnull %10) #6
  %15 = select i1 %enable, i1 %call5, i1 false
  %brmerge = xor i1 %15, true
  %brmerge150 = select i1 %enable, i1 true, i1 %call5
  %or.cond152 = select i1 %brmerge, i1 %brmerge150, i1 false
  br i1 %or.cond152, label %if.then2.if.end14_crit_edge, label %if.then12

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dce110_edp_backlight_control) #6
  br label %cleanup112

if.end14:                                         ; preds = %if.then2.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %cond = select i1 %enable, ptr @.str.9, ptr @.str.10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dce110_edp_backlight_control, ptr noundef nonnull %cond) #6
  %cond17 = select i1 %enable, i32 3, i32 2
  %16 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond17, ptr %cntl, align 4
  %17 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_enc, align 8
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transmitter, align 4
  %transmitter19 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %21 = ptrtoint ptr %transmitter19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %transmitter19, align 4
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector21 = getelementptr inbounds %struct.link_encoder, ptr %18, i32 0, i32 4
  %22 = ptrtoint ptr %connector21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connector21, align 4
  %24 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %connector_obj_id, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %25 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %18, i32 0, i32 9
  %26 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %28 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hpd_sel, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %29 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 128, ptr %signal, align 4
  %30 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %panel_cntl, align 4
  %inst = getelementptr inbounds %struct.panel_cntl, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inst, align 4
  %conv = trunc i32 %33 to i8
  br i1 %enable, label %if.then27, label %if.end14.if.end32_crit_edge

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then27:                                        ; preds = %if.end14
  %dc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %34 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dc, align 4
  %edp_no_power_sequencing = getelementptr inbounds %struct.dc, ptr %35, i32 0, i32 4, i32 7
  %36 = ptrtoint ptr %edp_no_power_sequencing to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %edp_no_power_sequencing, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool28.not = icmp eq i8 %37, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call zeroext i1 @edp_receiver_ready_T7(ptr noundef %link) #6
  br label %if.end32

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29, %if.end14.if.end32_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %ctx34 = getelementptr inbounds %struct.dc, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx34, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dmub_srv, align 8
  %tobool35.not = icmp eq ptr %43, null
  br i1 %tobool35.not, label %if.end32.if.end55_crit_edge, label %land.lhs.true36

if.end32.if.end55_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true36:                                  ; preds = %if.end32
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %39, i32 0, i32 63
  %44 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dmub_command_table, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool38.not = icmp eq i8 %45, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end55_crit_edge, label %if.then40

land.lhs.true36.if.end55_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cntl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp42 = icmp eq i32 %47, 3
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dc_bios, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %enable_lvtma_control = getelementptr inbounds %struct.dc_vbios_funcs, ptr %51, i32 0, i32 28
  %52 = ptrtoint ptr %enable_lvtma_control to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %enable_lvtma_control, align 4
  %. = select i1 %cmp42, i8 3, i8 2
  %call47 = tail call i32 %53(ptr noundef %49, i8 noundef zeroext %., i8 noundef zeroext %conv) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then40, %land.lhs.true36.if.end55_crit_edge, %if.end32.if.end55_crit_edge
  %dc_bios56 = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %dc_bios56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dc_bios56, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %transmitter_control.i, align 4
  %call.i = call i32 %59(ptr noundef %55, ptr noundef nonnull %cntl) #6
  br i1 %enable, label %land.lhs.true60, label %if.end55.if.end64_crit_edge

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

land.lhs.true60:                                  ; preds = %if.end55
  %dpcd_sink_ext_caps = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 49
  %60 = ptrtoint ptr %dpcd_sink_ext_caps to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load = load i8, ptr %dpcd_sink_ext_caps, align 8
  %61 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool62.not = icmp eq i8 %61, 0
  br i1 %tobool62.not, label %land.lhs.true60.if.end64_crit_edge, label %if.then63

land.lhs.true60.if.end64_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 100) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true60.if.end64_crit_edge, %if.end55.if.end64_crit_edge
  %dpcd_sink_ext_caps65 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 49
  %62 = ptrtoint ptr %dpcd_sink_ext_caps65 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load66 = load i8, ptr %dpcd_sink_ext_caps65, align 8
  %63 = and i8 %bf.load66, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %.not = icmp eq i8 %63, 0
  br i1 %.not, label %if.end64.if.end89_crit_edge, label %if.then86

if.end64.if.end89_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then86:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = call zeroext i1 @dc_link_backlight_enable_aux(ptr noundef %link, i1 noundef zeroext %enable) #6
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end64.if.end89_crit_edge
  %64 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cntl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp91 = icmp eq i32 %65, 2
  br i1 %cmp91, label %if.then93, label %if.end89.if.end101_crit_edge

if.end89.if.end101_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then93:                                        ; preds = %if.end89
  %dc94 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %66 = ptrtoint ptr %dc94 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dc94, align 4
  %edp_no_power_sequencing96 = getelementptr inbounds %struct.dc, ptr %67, i32 0, i32 4, i32 7
  %68 = ptrtoint ptr %edp_no_power_sequencing96 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %edp_no_power_sequencing96, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool97.not = icmp eq i8 %69, 0
  br i1 %tobool97.not, label %if.then98, label %if.else99

if.then98:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  call void @edp_add_delay_for_T9(ptr noundef %link) #6
  br label %if.end101

if.else99:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18) #6
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then98, %if.end89.if.end101_crit_edge
  br i1 %enable, label %if.end101.cleanup112_crit_edge, label %land.lhs.true103

if.end101.cleanup112_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

land.lhs.true103:                                 ; preds = %if.end101
  %70 = ptrtoint ptr %dpcd_sink_ext_caps65 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load105 = load i8, ptr %dpcd_sink_ext_caps65, align 8
  %71 = and i8 %bf.load105, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool109.not = icmp eq i8 %71, 0
  br i1 %tobool109.not, label %land.lhs.true103.cleanup112_crit_edge, label %if.then110

land.lhs.true103.cleanup112_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

if.then110:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 150) #6
  br label %cleanup112

cleanup112:                                       ; preds = %if.then110, %land.lhs.true103.cleanup112_crit_edge, %if.end101.cleanup112_crit_edge, %if.then12, %do.body
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edp_receiver_ready_T7(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_backlight_enable_aux(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @edp_add_delay_for_T9(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_enable_audio_stream(ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %clk_mgr3 = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %clk_mgr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_mgr3, align 4
  %audio = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %audio, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end50_crit_edge, label %land.lhs.true

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end
  %enabled = getelementptr inbounds %struct.audio, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.lhs.true31, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true31:                                  ; preds = %land.lhs.true
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %az_enable = getelementptr inbounds %struct.audio_funcs, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %az_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %az_enable, align 4
  tail call void %15(ptr noundef nonnull %9) #6
  %funcs32 = getelementptr inbounds %struct.clk_mgr, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %funcs32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs32, align 4
  %enable_pme_wa = getelementptr inbounds %struct.clk_mgr_funcs, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %enable_pme_wa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable_pme_wa, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true31.if.end37_crit_edge, label %if.then34

land.lhs.true31.if.end37_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef %7) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true31.if.end37_crit_edge
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream_enc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %audio_mute_control = getelementptr inbounds %struct.stream_encoder_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %audio_mute_control to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %audio_mute_control, align 4
  tail call void %25(ptr noundef %21, i1 noundef zeroext false) #6
  %26 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %audio, align 8
  %tobool44.not = icmp eq ptr %27, null
  br i1 %tobool44.not, label %if.end37.if.end50_crit_edge, label %if.then45

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %enabled48 = getelementptr inbounds %struct.audio, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %enabled48 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %enabled48, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end37.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %29 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 36
  %31 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %signal, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %32, label %if.end50.cleanup_crit_edge [
    i32 32, label %if.end50.if.then52_crit_edge
    i32 128, label %if.end50.if.then52_crit_edge81
    i32 64, label %if.end50.if.then52_crit_edge82
  ]

if.end50.if.then52_crit_edge82:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end50.if.then52_crit_edge81:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end50.if.then52_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %if.end50.if.then52_crit_edge, %if.end50.if.then52_crit_edge81, %if.end50.if.then52_crit_edge82
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 4
  tail call void @dp_source_sequence_trace(ptr noundef %35, i8 noundef zeroext 7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_source_sequence_trace(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_disable_audio_stream(ptr noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pipe_ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %clk_mgr4 = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %clk_mgr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_mgr4, align 4
  %audio = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %audio, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %enabled = getelementptr inbounds %struct.audio, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream_enc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %audio_mute_control = getelementptr inbounds %struct.stream_encoder_funcs, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %audio_mute_control to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %audio_mute_control, align 4
  tail call void %17(ptr noundef %13, i1 noundef zeroext true) #6
  %18 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %audio, align 8
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.end11.if.end41_crit_edge, label %if.then18

if.end11.if.end41_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then18:                                        ; preds = %if.end11
  %enabled21 = getelementptr inbounds %struct.audio, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %enabled21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enabled21, align 4
  %21 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 36
  %23 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %signal, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %24, label %if.else [
    i32 32, label %if.then18.if.then23_crit_edge
    i32 128, label %if.then18.if.then23_crit_edge72
    i32 64, label %if.then18.if.then23_crit_edge73
  ]

if.then18.if.then23_crit_edge73:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then18.if.then23_crit_edge72:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then18.if.then23_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %if.then18.if.then23_crit_edge, %if.then18.if.then23_crit_edge72, %if.then18.if.then23_crit_edge73
  %26 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream_enc, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dp_audio_disable = getelementptr inbounds %struct.stream_encoder_funcs, ptr %29, i32 0, i32 15
  br label %if.end34

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stream_enc, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %hdmi_audio_disable = getelementptr inbounds %struct.stream_encoder_funcs, ptr %33, i32 0, i32 17
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then23
  %hdmi_audio_disable.sink = phi ptr [ %hdmi_audio_disable, %if.else ], [ %dp_audio_disable, %if.then23 ]
  %.sink = phi ptr [ %31, %if.else ], [ %27, %if.then23 ]
  %34 = ptrtoint ptr %hdmi_audio_disable.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdmi_audio_disable.sink, align 4
  tail call void %35(ptr noundef %.sink) #6
  %funcs35 = getelementptr inbounds %struct.clk_mgr, ptr %7, i32 0, i32 1
  %36 = ptrtoint ptr %funcs35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs35, align 4
  %enable_pme_wa = getelementptr inbounds %struct.clk_mgr_funcs, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %enable_pme_wa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enable_pme_wa, align 4
  %tobool36.not = icmp eq ptr %39, null
  br i1 %tobool36.not, label %if.end34.if.end41_crit_edge, label %if.then37

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %39(ptr noundef %7) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end34.if.end41_crit_edge, %if.end11.if.end41_crit_edge
  %40 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stream, align 4
  %signal43 = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 36
  %42 = ptrtoint ptr %signal43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %signal43, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %43, label %if.end41.cleanup_crit_edge [
    i32 32, label %if.end41.if.then45_crit_edge
    i32 128, label %if.end41.if.then45_crit_edge74
    i32 64, label %if.end41.if.then45_crit_edge75
  ]

if.end41.if.then45_crit_edge75:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.end41.if.then45_crit_edge74:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.end41.if.then45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end41.if.then45_crit_edge, %if.end41.if.then45_crit_edge74, %if.end41.if.then45_crit_edge75
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %41, i32 0, i32 1
  %45 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %link, align 4
  tail call void @dp_source_sequence_trace(ptr noundef %46, i8 noundef zeroext 11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end41.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_disable_stream(ptr noundef %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %link2 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link2, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i = icmp eq i32 %9, 4
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream_enc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %stop_hdmi_info_packets = getelementptr inbounds %struct.stream_encoder_funcs, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %stop_hdmi_info_packets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop_hdmi_info_packets, align 4
  tail call void %15(ptr noundef %11) #6
  %16 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream_enc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %hdmi_reset_stream_attribute = getelementptr inbounds %struct.stream_encoder_funcs, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %hdmi_reset_stream_attribute to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdmi_reset_stream_attribute, align 4
  tail call void %21(ptr noundef %17) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream1, align 4
  %signal14 = getelementptr inbounds %struct.dc_stream_state, ptr %23, i32 0, i32 36
  %24 = ptrtoint ptr %signal14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signal14, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %25, label %if.end.if.end22_crit_edge [
    i32 32, label %if.end.if.then16_crit_edge
    i32 128, label %if.end.if.then16_crit_edge117
    i32 64, label %if.end.if.then16_crit_edge118
  ]

if.end.if.then16_crit_edge118:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end.if.then16_crit_edge117:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge117, %if.end.if.then16_crit_edge118
  %stream_enc18 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %stream_enc18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream_enc18, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %stop_dp_info_packets = getelementptr inbounds %struct.stream_encoder_funcs, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %stop_dp_info_packets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stop_dp_info_packets, align 4
  tail call void %32(ptr noundef %28) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end.if.end22_crit_edge
  %disable_audio_stream = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 17, i32 64
  %33 = ptrtoint ptr %disable_audio_stream to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disable_audio_stream, align 4
  tail call void %34(ptr noundef %pipe_ctx) #6
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 40
  %35 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp eq i32 %36, 0
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %link_enc24 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 38
  %37 = ptrtoint ptr %link_enc24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %link_enc24, align 8
  br label %do.body

if.else:                                          ; preds = %if.end22
  %res_pool = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 12
  %39 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %res_pool, align 8
  %funcs25 = getelementptr inbounds %struct.resource_pool, ptr %40, i32 0, i32 40
  %41 = ptrtoint ptr %funcs25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs25, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link_encs_assign, align 4
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %if.else.land.rhs_crit_edge, label %if.then26

if.else.land.rhs_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ctx27 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 36
  %45 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx27, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %call29 = tail call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %48, ptr noundef %3) #6
  br label %do.body

do.body:                                          ; preds = %if.then26, %if.then23
  %link_enc.0 = phi ptr [ %38, %if.then23 ], [ %call29, %if.then26 ]
  %tobool32.not = icmp eq ptr %link_enc.0, null
  br i1 %tobool32.not, label %do.body.land.rhs_crit_edge, label %if.then78.critedge

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %do.body.land.rhs_crit_edge, %if.else.land.rhs_crit_edge
  %.b111 = load i1, ptr @dce110_disable_stream.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.then73_crit_edge, label %if.then41, !prof !123

land.rhs.if.then73_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then73

if.then41:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dce110_disable_stream.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1225, i32 noundef 9, ptr noundef null) #6
  br label %if.then73

if.then73:                                        ; preds = %if.then41, %land.rhs.if.then73_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %if.end83

if.then78.critedge:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %link_enc.0, align 4
  %connect_dig_be_to_fe = getelementptr inbounds %struct.link_encoder_funcs, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %connect_dig_be_to_fe to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %connect_dig_be_to_fe, align 4
  %link_enc80 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 38
  %53 = ptrtoint ptr %link_enc80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %link_enc80, align 8
  %stream_enc82 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %stream_enc82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stream_enc82, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  tail call void %52(ptr noundef %54, i32 noundef %58, i1 noundef zeroext false) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then78.critedge, %if.then73
  %59 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stream1, align 4
  %signal85 = getelementptr inbounds %struct.dc_stream_state, ptr %60, i32 0, i32 36
  %61 = ptrtoint ptr %signal85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %signal85, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %62, label %if.end83.if.end88_crit_edge [
    i32 32, label %if.end83.if.then87_crit_edge
    i32 128, label %if.end83.if.then87_crit_edge119
    i32 64, label %if.end83.if.then87_crit_edge120
  ]

if.end83.if.then87_crit_edge120:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

if.end83.if.then87_crit_edge119:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

if.end83.if.then87_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

if.end83.if.end88_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then87:                                        ; preds = %if.end83.if.then87_crit_edge, %if.end83.if.then87_crit_edge119, %if.end83.if.then87_crit_edge120
  tail call void @dp_source_sequence_trace(ptr noundef %3, i8 noundef zeroext 13) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end83.if.end88_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_unblank_stream(ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef readonly %link_settings) #0 align 64 {
entry:
  %params = alloca %struct.encoder_unblank_param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %params) #6
  %0 = call ptr @memset(ptr %params, i32 0, i32 148)
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %1 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream1, align 4
  %link2 = getelementptr inbounds %struct.dc_stream_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link2, align 4
  %dc = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 35
  %5 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dc, align 4
  %hwseq = getelementptr inbounds %struct.dc, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwseq, align 4
  %timing = getelementptr inbounds %struct.encoder_unblank_param, ptr %params, i32 0, i32 1
  %timing4 = getelementptr inbounds %struct.dc_stream_state, ptr %2, i32 0, i32 5
  %9 = call ptr @memcpy(ptr %timing, ptr %timing4, i32 128)
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings, i32 0, i32 1
  %10 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_rate, align 4
  %link_rate6 = getelementptr inbounds %struct.dc_link_settings, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %link_rate6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %link_rate6, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %2, i32 0, i32 36
  %13 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %signal, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %14, label %entry.if.end_crit_edge [
    i32 32, label %entry.if.then_crit_edge
    i32 128, label %entry.if.then_crit_edge22
    i32 64, label %entry.if.then_crit_edge23
  ]

entry.if.then_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge22, %entry.if.then_crit_edge23
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream_enc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dp_unblank = getelementptr inbounds %struct.stream_encoder_funcs, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %dp_unblank to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dp_unblank, align 4
  call void %21(ptr noundef %4, ptr noundef %17, ptr noundef nonnull %params) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 2
  %22 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %local_sink, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %25)
  %cmp = icmp eq i32 %25, 128
  br i1 %cmp, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %edp_backlight_control = getelementptr inbounds %struct.dce_hwseq, ptr %8, i32 0, i32 6, i32 14
  %26 = ptrtoint ptr %edp_backlight_control to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edp_backlight_control, align 8
  call void %27(ptr noundef %4, i1 noundef zeroext true) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %params) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_blank_stream(ptr noundef %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %link2 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link2, align 4
  %dc = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc, align 4
  %hwseq = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwseq, align 4
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %local_sink, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %cmp = icmp eq i32 %11, 128
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %edp_backlight_control = getelementptr inbounds %struct.dce_hwseq, ptr %7, i32 0, i32 6, i32 14
  %12 = ptrtoint ptr %edp_backlight_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edp_backlight_control, align 8
  tail call void %13(ptr noundef %3, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dc, align 4
  %set_abm_immediate_disable = getelementptr inbounds %struct.dc, ptr %15, i32 0, i32 17, i32 70
  %16 = ptrtoint ptr %set_abm_immediate_disable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_abm_immediate_disable, align 4
  tail call void %17(ptr noundef %pipe_ctx) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream1, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %19, i32 0, i32 36
  %20 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %21, label %if.end.if.end21_crit_edge [
    i32 32, label %if.end.if.then6_crit_edge
    i32 128, label %if.end.if.then6_crit_edge34
    i32 64, label %if.end.if.then6_crit_edge35
  ]

if.end.if.then6_crit_edge35:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.if.then6_crit_edge34:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge34, %if.end.if.then6_crit_edge35
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stream_enc, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dp_blank = getelementptr inbounds %struct.stream_encoder_funcs, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %dp_blank to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dp_blank, align 4
  tail call void %28(ptr noundef %3, ptr noundef %24) #6
  %29 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream1, align 4
  %signal11 = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 36
  %31 = ptrtoint ptr %signal11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %signal11, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %32, label %if.then13 [
    i32 128, label %if.then17
    i32 8, label %if.then6.if.end21_crit_edge
  ]

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 60) #6
  br label %if.end21

if.then17:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call zeroext i1 @edp_receiver_ready_T9(ptr noundef %3) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then13, %if.then6.if.end21_crit_edge, %if.end.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edp_receiver_ready_T9(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_set_avmute(ptr noundef readonly %pipe_ctx, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %pipe_ctx, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream_enc, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_avmute = getelementptr inbounds %struct.stream_encoder_funcs, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %set_avmute to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_avmute, align 4
  tail call void %5(ptr noundef nonnull %1, i1 noundef zeroext %enable) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_enable_accelerated_mode(ptr noundef %dc, ptr noundef %context) #0 align 64 {
entry:
  %edp_links_with_sink = alloca [2 x ptr], align 4
  %edp_links = alloca [2 x ptr], align 4
  %edp_streams = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links_with_sink) #6
  %0 = ptrtoint ptr %edp_links_with_sink to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links_with_sink, align 4, !annotation !125
  %1 = getelementptr inbounds [2 x ptr], ptr %edp_links_with_sink, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links) #6
  %3 = ptrtoint ptr %edp_links to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links, align 4, !annotation !125
  %4 = getelementptr inbounds [2 x ptr], ptr %edp_links, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_streams) #6
  %6 = ptrtoint ptr %edp_streams to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_streams, align 4, !annotation !125
  %7 = getelementptr inbounds [2 x ptr], ptr %edp_streams, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !125
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %9 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwseq, align 4
  %link_count.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %11 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp25.not.i = icmp eq i8 %12, 0
  br i1 %cmp25.not.i, label %entry.get_edp_links.exit_crit_edge, label %for.body.i.preheader

entry.get_edp_links.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_links.exit

for.body.i.preheader:                             ; preds = %entry
  %conv.i = zext i8 %12 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %edp_with_sink_num.0 = phi i32 [ %edp_with_sink_num.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.026.i = phi i32 [ %inc14.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.026.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %local_sink.i = getelementptr inbounds %struct.dc_link, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %local_sink.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local_sink.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %18)
  %cmp5.i = icmp eq i32 %18, 128
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %arrayidx9.i = getelementptr ptr, ptr %edp_links_with_sink, i32 %edp_with_sink_num.0
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %arrayidx9.i, align 4
  %inc.i = add i32 %edp_with_sink_num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp10.i = icmp eq i32 %inc.i, 2
  br i1 %cmp10.i, label %if.then.i.for.body.i124.preheader_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i.for.body.i124.preheader_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i124.preheader

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %edp_with_sink_num.1 = phi i32 [ %edp_with_sink_num.0, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then.i.for.inc.i_crit_edge ], [ %edp_with_sink_num.0, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc14.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not = icmp eq i32 %inc14.i, %conv.i
  br i1 %exitcond.not, label %for.inc.i.for.body.i124.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.body.i124.preheader_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i124.preheader

for.body.i124.preheader:                          ; preds = %for.inc.i.for.body.i124.preheader_crit_edge, %if.then.i.for.body.i124.preheader_crit_edge
  %edp_with_sink_num.2 = phi i32 [ %edp_with_sink_num.1, %for.inc.i.for.body.i124.preheader_crit_edge ], [ 2, %if.then.i.for.body.i124.preheader_crit_edge ]
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.inc.i130.for.body.i124_crit_edge, %for.body.i124.preheader
  %edp_num.0 = phi i32 [ %edp_num.1, %for.inc.i130.for.body.i124_crit_edge ], [ 0, %for.body.i124.preheader ]
  %i.027.i = phi i32 [ %inc15.i, %for.inc.i130.for.body.i124_crit_edge ], [ 0, %for.body.i124.preheader ]
  %arrayidx.i122 = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.027.i
  %20 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i122, align 4
  %tobool.not.i123 = icmp eq ptr %21, null
  br i1 %tobool.not.i123, label %for.body.i124.for.inc.i130_crit_edge, label %if.end.i

for.body.i124.for.inc.i130_crit_edge:             ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i130

if.end.i:                                         ; preds = %for.body.i124
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %23)
  %cmp4.i = icmp eq i32 %23, 128
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.for.inc.i130_crit_edge

if.end.i.for.inc.i130_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i130

if.then6.i:                                       ; preds = %if.end.i
  %arrayidx9.i125 = getelementptr ptr, ptr %edp_links, i32 %edp_num.0
  %24 = ptrtoint ptr %arrayidx9.i125 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %arrayidx9.i125, align 4
  %inc.i126 = add i32 %edp_num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i126)
  %cmp10.i127 = icmp eq i32 %inc.i126, 2
  br i1 %cmp10.i127, label %if.then6.i.get_edp_links.exit_crit_edge, label %if.then6.i.for.inc.i130_crit_edge

if.then6.i.for.inc.i130_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i130

if.then6.i.get_edp_links.exit_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_links.exit

for.inc.i130:                                     ; preds = %if.then6.i.for.inc.i130_crit_edge, %if.end.i.for.inc.i130_crit_edge, %for.body.i124.for.inc.i130_crit_edge
  %edp_num.1 = phi i32 [ %edp_num.0, %for.body.i124.for.inc.i130_crit_edge ], [ %inc.i126, %if.then6.i.for.inc.i130_crit_edge ], [ %edp_num.0, %if.end.i.for.inc.i130_crit_edge ]
  %inc15.i = add nuw nsw i32 %i.027.i, 1
  %exitcond177.not = icmp eq i32 %inc15.i, %conv.i
  br i1 %exitcond177.not, label %for.inc.i130.get_edp_links.exit_crit_edge, label %for.inc.i130.for.body.i124_crit_edge

for.inc.i130.for.body.i124_crit_edge:             ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i124

for.inc.i130.get_edp_links.exit_crit_edge:        ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_links.exit

get_edp_links.exit:                               ; preds = %for.inc.i130.get_edp_links.exit_crit_edge, %if.then6.i.get_edp_links.exit_crit_edge, %entry.get_edp_links.exit_crit_edge
  %edp_with_sink_num.2157 = phi i32 [ 0, %entry.get_edp_links.exit_crit_edge ], [ %edp_with_sink_num.2, %for.inc.i130.get_edp_links.exit_crit_edge ], [ %edp_with_sink_num.2, %if.then6.i.get_edp_links.exit_crit_edge ]
  %edp_num.2 = phi i32 [ 0, %entry.get_edp_links.exit_crit_edge ], [ 2, %if.then6.i.get_edp_links.exit_crit_edge ], [ %edp_num.1, %for.inc.i130.get_edp_links.exit_crit_edge ]
  %init_pipes = getelementptr inbounds %struct.dce_hwseq, ptr %10, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %init_pipes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_pipes, align 8
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %get_edp_links.exit.if.end_crit_edge, label %if.then

get_edp_links.exit.if.end_crit_edge:              ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %26(ptr noundef %dc, ptr noundef %context) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %get_edp_links.exit.if.end_crit_edge
  %stream_count.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %27 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp20.not.i = icmp eq i8 %28, 0
  br i1 %cmp20.not.i, label %if.end.for.end59_crit_edge, label %for.body.i132.preheader

if.end.for.end59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.body.i132.preheader:                          ; preds = %if.end
  %conv.i135 = zext i8 %28 to i32
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.inc.i137.for.body.i132_crit_edge, %for.body.i132.preheader
  %edp_stream_num.0 = phi i32 [ %edp_stream_num.1, %for.inc.i137.for.body.i132_crit_edge ], [ 0, %for.body.i132.preheader ]
  %i.021.i = phi i32 [ %inc11.i, %for.inc.i137.for.body.i132_crit_edge ], [ 0, %for.body.i132.preheader ]
  %arrayidx.i131 = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.021.i
  %29 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i131, align 4
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 36
  %31 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %32)
  %cmp2.i = icmp eq i32 %32, 128
  br i1 %cmp2.i, label %if.then.i134, label %for.body.i132.for.inc.i137_crit_edge

for.body.i132.for.inc.i137_crit_edge:             ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i137

if.then.i134:                                     ; preds = %for.body.i132
  %arrayidx6.i = getelementptr ptr, ptr %edp_streams, i32 %edp_stream_num.0
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %arrayidx6.i, align 4
  %inc.i133 = add i32 %edp_stream_num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i133)
  %cmp7.i = icmp eq i32 %inc.i133, 2
  br i1 %cmp7.i, label %if.then.i134.get_edp_streams.exit_crit_edge, label %if.then.i134.for.inc.i137_crit_edge

if.then.i134.for.inc.i137_crit_edge:              ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i137

if.then.i134.get_edp_streams.exit_crit_edge:      ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_streams.exit

for.inc.i137:                                     ; preds = %if.then.i134.for.inc.i137_crit_edge, %for.body.i132.for.inc.i137_crit_edge
  %edp_stream_num.1 = phi i32 [ %inc.i133, %if.then.i134.for.inc.i137_crit_edge ], [ %edp_stream_num.0, %for.body.i132.for.inc.i137_crit_edge ]
  %inc11.i = add nuw nsw i32 %i.021.i, 1
  %exitcond178.not = icmp eq i32 %inc11.i, %conv.i135
  br i1 %exitcond178.not, label %for.inc.i137.get_edp_streams.exit_crit_edge, label %for.inc.i137.for.body.i132_crit_edge

for.inc.i137.for.body.i132_crit_edge:             ; preds = %for.inc.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i132

for.inc.i137.get_edp_streams.exit_crit_edge:      ; preds = %for.inc.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_edp_streams.exit

get_edp_streams.exit:                             ; preds = %for.inc.i137.get_edp_streams.exit_crit_edge, %if.then.i134.get_edp_streams.exit_crit_edge
  %edp_stream_num.2 = phi i32 [ 2, %if.then.i134.get_edp_streams.exit_crit_edge ], [ %edp_stream_num.1, %for.inc.i137.get_edp_streams.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_num.2)
  %tobool5.not = icmp eq i32 %edp_num.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_stream_num.2)
  %tobool6.not = icmp eq i32 %edp_stream_num.2, 0
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %get_edp_streams.exit.if.end48_crit_edge, label %land.lhs.true7

get_edp_streams.exit.if.end48_crit_edge:          ; preds = %get_edp_streams.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true7:                                   ; preds = %get_edp_streams.exit
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 8
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dce_version, align 8
  %.off = add i32 %37, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.lhs.true7.if.end48_crit_edge, label %for.cond.preheader

land.lhs.true7.if.end48_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

for.cond.preheader:                               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_num.2)
  %cmp17171 = icmp sgt i32 %edp_num.2, 0
  br i1 %cmp17171, label %for.body.lr.ph, label %for.cond.preheader.for.end.thread_crit_edge

for.cond.preheader.for.end.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %38 = ptrtoint ptr %edp_streams to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edp_streams, align 4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %edp_links, i32 0, i32 %i.0172
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link, align 4
  %cmp19.not = icmp eq ptr %41, %43
  br i1 %cmp19.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %41, i32 0, i32 38
  %44 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %link_enc, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %is_dig_enabled = getelementptr inbounds %struct.link_encoder_funcs, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %is_dig_enabled to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %is_dig_enabled, align 4
  %tobool23.not = icmp eq ptr %49, null
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %land.lhs.true24

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true24:                                  ; preds = %if.end21
  %call = tail call zeroext i1 %49(ptr noundef %45) #6
  br i1 %call, label %land.lhs.true29, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %link_status = getelementptr inbounds %struct.dc_link, ptr %41, i32 0, i32 56
  %50 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %link_status, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool30.not = icmp eq i8 %51, 0
  br i1 %tobool30.not, label %land.lhs.true29.for.inc_crit_edge, label %if.then31

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then31:                                        ; preds = %land.lhs.true29
  %52 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %link, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 5
  %call34 = tail call zeroext i1 @is_edp_ilr_optimization_required(ptr noundef %53, ptr noundef %timing) #6
  %lnot = xor i1 %call34, true
  %frombool = zext i1 %lnot to i8
  %apply_edp_fast_boot_optimization = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 50
  %54 = ptrtoint ptr %apply_edp_fast_boot_optimization to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool, ptr %apply_edp_fast_boot_optimization, align 2
  br i1 %call34, label %for.end, label %for.end.thread181

for.inc:                                          ; preds = %land.lhs.true29.for.inc_crit_edge, %land.lhs.true24.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond179.not = icmp eq i32 %inc, %edp_num.2
  br i1 %exitcond179.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %edp_stream_num.2)
  %cmp41 = icmp eq i32 %edp_stream_num.2, 1
  br i1 %cmp41, label %for.end.land.lhs.true42_crit_edge, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.end.land.lhs.true42_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true42

for.end.thread181:                                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19) #6
  br label %if.end48.sink.split

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %for.cond.preheader.for.end.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %edp_stream_num.2)
  %cmp41164 = icmp eq i32 %edp_stream_num.2, 1
  br i1 %cmp41164, label %for.end.thread.land.lhs.true42_crit_edge, label %for.end.thread.if.else_crit_edge

for.end.thread.if.else_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.end.thread.land.lhs.true42_crit_edge:         ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true42

land.lhs.true42:                                  ; preds = %for.end.thread.land.lhs.true42_crit_edge, %for.end.land.lhs.true42_crit_edge
  %can_apply_edp_fast_boot.0167 = phi i1 [ false, %for.end.thread.land.lhs.true42_crit_edge ], [ %lnot, %for.end.land.lhs.true42_crit_edge ]
  %55 = ptrtoint ptr %edp_streams to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %edp_streams, align 4
  %cmp44.not = icmp ne ptr %56, null
  %brmerge = select i1 %cmp44.not, i1 true, i1 %can_apply_edp_fast_boot.0167
  br i1 %brmerge, label %land.lhs.true42.if.end48.sink.split_crit_edge, label %land.lhs.true42.if.else_crit_edge

land.lhs.true42.if.else_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true42.if.end48.sink.split_crit_edge:    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.sink.split

if.else:                                          ; preds = %land.lhs.true42.if.else_crit_edge, %for.end.thread.if.else_crit_edge, %for.end.if.else_crit_edge
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.else, %land.lhs.true42.if.end48.sink.split_crit_edge, %for.end.thread181
  %.str.20.sink = phi ptr [ @.str.21, %if.else ], [ @.str.20, %for.end.thread181 ], [ @.str.20, %land.lhs.true42.if.end48.sink.split_crit_edge ]
  %can_apply_edp_fast_boot.1.off0.ph.ph = phi i1 [ false, %if.else ], [ true, %for.end.thread181 ], [ %can_apply_edp_fast_boot.0167, %land.lhs.true42.if.end48.sink.split_crit_edge ]
  %keep_edp_vdd_on.0.off0.ph.ph = phi i1 [ false, %if.else ], [ true, %for.end.thread181 ], [ true, %land.lhs.true42.if.end48.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.20.sink) #6
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %land.lhs.true7.if.end48_crit_edge, %get_edp_streams.exit.if.end48_crit_edge
  %can_apply_edp_fast_boot.1.off0.ph = phi i1 [ false, %land.lhs.true7.if.end48_crit_edge ], [ false, %get_edp_streams.exit.if.end48_crit_edge ], [ %can_apply_edp_fast_boot.1.off0.ph.ph, %if.end48.sink.split ]
  %keep_edp_vdd_on.0.off0.ph = phi i1 [ false, %land.lhs.true7.if.end48_crit_edge ], [ false, %get_edp_streams.exit.if.end48_crit_edge ], [ %keep_edp_vdd_on.0.off0.ph.ph, %if.end48.sink.split ]
  %57 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr = load i8, ptr %stream_count.i, align 8
  %conv = zext i8 %.pr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp50173.not = icmp eq i8 %.pr, 0
  br i1 %cmp50173.not, label %if.end48.for.end59_crit_edge, label %for.body52.preheader

if.end48.for.end59_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.body52.preheader:                             ; preds = %if.end48
  %58 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %context, align 4
  %apply_seamless_boot_optimization192 = getelementptr inbounds %struct.dc_stream_state, ptr %59, i32 0, i32 51
  %60 = ptrtoint ptr %apply_seamless_boot_optimization192 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %apply_seamless_boot_optimization192, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool54.not193 = icmp eq i8 %61, 0
  br i1 %tobool54.not193, label %for.body52.preheader.for.cond49_crit_edge, label %for.body52.preheader.for.end59_crit_edge

for.body52.preheader.for.end59_crit_edge:         ; preds = %for.body52.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.body52.preheader.for.cond49_crit_edge:        ; preds = %for.body52.preheader
  br label %for.cond49

for.cond49:                                       ; preds = %for.body52.for.cond49_crit_edge, %for.body52.preheader.for.cond49_crit_edge
  %i.1174194 = phi i32 [ %inc58, %for.body52.for.cond49_crit_edge ], [ 0, %for.body52.preheader.for.cond49_crit_edge ]
  %inc58 = add nuw nsw i32 %i.1174194, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %conv)
  %exitcond180.not = icmp eq i32 %inc58, %conv
  br i1 %exitcond180.not, label %for.cond49.for.end59.loopexit_crit_edge, label %for.body52

for.cond49.for.end59.loopexit_crit_edge:          ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59.loopexit

for.body52:                                       ; preds = %for.cond49
  %arrayidx53 = getelementptr [6 x ptr], ptr %context, i32 0, i32 %inc58
  %62 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx53, align 4
  %apply_seamless_boot_optimization = getelementptr inbounds %struct.dc_stream_state, ptr %63, i32 0, i32 51
  %64 = ptrtoint ptr %apply_seamless_boot_optimization to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %apply_seamless_boot_optimization, align 1, !range !124
  %tobool54.not = icmp eq i8 %65, 0
  br i1 %tobool54.not, label %for.body52.for.cond49_crit_edge, label %for.body52.for.end59.loopexit_crit_edge

for.body52.for.end59.loopexit_crit_edge:          ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59.loopexit

for.body52.for.cond49_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond49

for.end59.loopexit:                               ; preds = %for.body52.for.end59.loopexit_crit_edge, %for.cond49.for.end59.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %conv)
  %cmp50.le = icmp ult i32 %inc58, %conv
  br label %for.end59

for.end59:                                        ; preds = %for.end59.loopexit, %for.body52.preheader.for.end59_crit_edge, %if.end48.for.end59_crit_edge, %if.end.for.end59_crit_edge
  %keep_edp_vdd_on.0.off0188 = phi i1 [ %keep_edp_vdd_on.0.off0.ph, %if.end48.for.end59_crit_edge ], [ false, %if.end.for.end59_crit_edge ], [ %keep_edp_vdd_on.0.off0.ph, %for.body52.preheader.for.end59_crit_edge ], [ %keep_edp_vdd_on.0.off0.ph, %for.end59.loopexit ]
  %can_apply_edp_fast_boot.1.off0187 = phi i1 [ %can_apply_edp_fast_boot.1.off0.ph, %if.end48.for.end59_crit_edge ], [ false, %if.end.for.end59_crit_edge ], [ %can_apply_edp_fast_boot.1.off0.ph, %for.body52.preheader.for.end59_crit_edge ], [ %can_apply_edp_fast_boot.1.off0.ph, %for.end59.loopexit ]
  %cmp50.lcssa = phi i1 [ false, %if.end48.for.end59_crit_edge ], [ false, %if.end.for.end59_crit_edge ], [ true, %for.body52.preheader.for.end59_crit_edge ], [ %cmp50.le, %for.end59.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_with_sink_num.2157)
  %tobool60.not = icmp eq i32 %edp_with_sink_num.2157, 0
  br i1 %tobool60.not, label %for.end59.if.end63_crit_edge, label %if.then61

for.end59.if.end63_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then61:                                        ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %edp_links_with_sink to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %edp_links_with_sink, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %for.end59.if.end63_crit_edge
  %edp_link_with_sink.0 = phi ptr [ %67, %if.then61 ], [ null, %for.end59.if.end63_crit_edge ]
  %brmerge118 = select i1 %can_apply_edp_fast_boot.1.off0187, i1 true, i1 %cmp50.lcssa
  br i1 %brmerge118, label %if.end63.if.end79_crit_edge, label %if.then67

if.end63.if.end79_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then67:                                        ; preds = %if.end63
  %tobool68.not = icmp eq ptr %edp_link_with_sink.0, null
  %brmerge119 = or i1 %keep_edp_vdd_on.0.off0188, %tobool68.not
  br i1 %brmerge119, label %if.then67.if.end73_crit_edge, label %if.then71

if.then67.if.end73_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %edp_backlight_control = getelementptr inbounds %struct.dce_hwseq, ptr %10, i32 0, i32 6, i32 14
  %68 = ptrtoint ptr %edp_backlight_control to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %edp_backlight_control, align 8
  tail call void %69(ptr noundef nonnull %edp_link_with_sink.0, i1 noundef zeroext false) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.then67.if.end73_crit_edge
  tail call fastcc void @power_down_all_hw_blocks(ptr noundef %dc)
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %70 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %res_pool.i, align 8
  %timing_generator_count33.i = getelementptr inbounds %struct.resource_pool, ptr %71, i32 0, i32 26
  %72 = ptrtoint ptr %timing_generator_count33.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %timing_generator_count33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp34.not.i = icmp eq i32 %73, 0
  br i1 %cmp34.not.i, label %if.end73.for.cond5.preheader.i_crit_edge, label %if.end73.for.body.i140_crit_edge

if.end73.for.body.i140_crit_edge:                 ; preds = %if.end73
  br label %for.body.i140

if.end73.for.cond5.preheader.i_crit_edge:         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc.i144.for.cond5.preheader.i_crit_edge, %if.end73.for.cond5.preheader.i_crit_edge
  %74 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %res_pool.i, align 8
  %pipe_count36.i = getelementptr inbounds %struct.resource_pool, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %pipe_count36.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pipe_count36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp737.not.i = icmp eq i32 %77, 0
  br i1 %cmp737.not.i, label %for.cond5.preheader.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge, label %for.body8.lr.ph.i

for.cond5.preheader.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_vga_and_power_gate_all_controllers.exit

for.body8.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %current_state.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %disable_plane.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 8
  br label %for.body8.i

for.body.i140:                                    ; preds = %for.inc.i144.for.body.i140_crit_edge, %if.end73.for.body.i140_crit_edge
  %78 = phi ptr [ %86, %for.inc.i144.for.body.i140_crit_edge ], [ %71, %if.end73.for.body.i140_crit_edge ]
  %i.035.i = phi i32 [ %inc.i142, %for.inc.i144.for.body.i140_crit_edge ], [ 0, %if.end73.for.body.i140_crit_edge ]
  %arrayidx.i138 = getelementptr %struct.resource_pool, ptr %78, i32 0, i32 6, i32 %i.035.i
  %79 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i138, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %disable_vga.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %82, i32 0, i32 22
  %83 = ptrtoint ptr %disable_vga.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %disable_vga.i, align 4
  %tobool.not.i139 = icmp eq ptr %84, null
  br i1 %tobool.not.i139, label %for.body.i140.for.inc.i144_crit_edge, label %if.then.i141

for.body.i140.for.inc.i144_crit_edge:             ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i144

if.then.i141:                                     ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %84(ptr noundef %80) #6
  br label %for.inc.i144

for.inc.i144:                                     ; preds = %if.then.i141, %for.body.i140.for.inc.i144_crit_edge
  %inc.i142 = add nuw i32 %i.035.i, 1
  %85 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %res_pool.i, align 8
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %86, i32 0, i32 26
  %87 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %timing_generator_count.i, align 4
  %cmp.i143 = icmp ult i32 %inc.i142, %88
  br i1 %cmp.i143, label %for.inc.i144.for.body.i140_crit_edge, label %for.inc.i144.for.cond5.preheader.i_crit_edge

for.inc.i144.for.cond5.preheader.i_crit_edge:     ; preds = %for.inc.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.inc.i144.for.body.i140_crit_edge:             ; preds = %for.inc.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i140

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.138.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc15.i146, %for.body8.i.for.body8.i_crit_edge ]
  %conv.i145 = trunc i32 %i.138.i to i8
  %89 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %current_state.i, align 4
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %90, i32 0, i32 4
  %pipe_idx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.138.i, i32 7
  %91 = ptrtoint ptr %pipe_idx.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv.i145, ptr %pipe_idx.i, align 8
  %92 = ptrtoint ptr %disable_plane.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %disable_plane.i, align 4
  %94 = load ptr, ptr %current_state.i, align 4
  %res_ctx11.i = getelementptr inbounds %struct.dc_state, ptr %94, i32 0, i32 4
  %arrayidx13.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx11.i, i32 0, i32 %i.138.i
  tail call void %93(ptr noundef %dc, ptr noundef %arrayidx13.i) #6
  %inc15.i146 = add nuw i32 %i.138.i, 1
  %95 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %res_pool.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pipe_count.i, align 4
  %cmp7.i147 = icmp ult i32 %inc15.i146, %98
  br i1 %cmp7.i147, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge

for.body8.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge: ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_vga_and_power_gate_all_controllers.exit

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i

disable_vga_and_power_gate_all_controllers.exit:  ; preds = %for.body8.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge, %for.cond5.preheader.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge
  br i1 %brmerge119, label %disable_vga_and_power_gate_all_controllers.exit.if.end79_crit_edge, label %if.then77

disable_vga_and_power_gate_all_controllers.exit.if.end79_crit_edge: ; preds = %disable_vga_and_power_gate_all_controllers.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then77:                                        ; preds = %disable_vga_and_power_gate_all_controllers.exit
  call void @__sanitizer_cov_trace_pc() #8
  %edp_power_control = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 1
  %99 = ptrtoint ptr %edp_power_control to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %edp_power_control, align 4
  tail call void %100(ptr noundef nonnull %edp_link_with_sink.0, i1 noundef zeroext false) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %disable_vga_and_power_gate_all_controllers.exit.if.end79_crit_edge, %if.end63.if.end79_crit_edge
  %ctx80 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %101 = ptrtoint ptr %ctx80 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ctx80, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dc_bios, align 4
  tail call void @bios_set_scratch_acc_mode_change(ptr noundef %104, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_streams) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links_with_sink) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_edp_ilr_optimization_required(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @power_down_all_hw_blocks(ptr nocapture noundef readonly %dc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %link_count.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %0 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp38.not.i = icmp eq i8 %1, 0
  br i1 %cmp38.not.i, label %entry.power_down_encoders.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.power_down_encoders.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down_encoders.exit

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.039.i = phi i32 [ %inc.i, %if.end16.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.039.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_signal.i, align 8
  tail call void @dc_link_blank_dp_stream(ptr noundef %3, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %ep_type.i = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 40
  %8 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.i = icmp eq i32 %9, 0
  br i1 %cmp8.i, label %if.then10.i, label %for.body.i.if.end16.i_crit_edge

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 128
  %spec.store.select.i = select i1 %cmp4.not.i, i32 128, i32 0
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 38
  %10 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_enc.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %disable_output.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %disable_output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_output.i, align 4
  tail call void %15(ptr noundef %11, i32 noundef %spec.store.select.i) #6
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %for.body.i.if.end16.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %link_status.i = getelementptr inbounds %struct.dc_link, ptr %17, i32 0, i32 56
  %18 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %link_status.i, align 8
  %19 = load ptr, ptr %arrayidx.i, align 4
  %cur_link_settings.i = getelementptr inbounds %struct.dc_link, ptr %19, i32 0, i32 21
  %20 = call ptr @memset(ptr %cur_link_settings.i, i32 0, i32 16)
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %21 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_count.i, align 8
  %conv.i = zext i8 %22 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %if.end16.i.for.body.i_crit_edge, label %if.end16.i.power_down_encoders.exit_crit_edge

if.end16.i.power_down_encoders.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down_encoders.exit

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

power_down_encoders.exit:                         ; preds = %if.end16.i.power_down_encoders.exit_crit_edge, %entry.power_down_encoders.exit_crit_edge
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %23 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res_pool.i, align 8
  %timing_generator_count10.i = getelementptr inbounds %struct.resource_pool, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %timing_generator_count10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timing_generator_count10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11.not.i = icmp eq i32 %26, 0
  br i1 %cmp11.not.i, label %power_down_encoders.exit.power_down_controllers.exit_crit_edge, label %power_down_encoders.exit.for.body.i11_crit_edge

power_down_encoders.exit.for.body.i11_crit_edge:  ; preds = %power_down_encoders.exit
  br label %for.body.i11

power_down_encoders.exit.power_down_controllers.exit_crit_edge: ; preds = %power_down_encoders.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down_controllers.exit

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %power_down_encoders.exit.for.body.i11_crit_edge
  %27 = phi ptr [ %35, %for.body.i11.for.body.i11_crit_edge ], [ %24, %power_down_encoders.exit.for.body.i11_crit_edge ]
  %i.012.i = phi i32 [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ], [ 0, %power_down_encoders.exit.for.body.i11_crit_edge ]
  %arrayidx.i8 = getelementptr %struct.resource_pool, ptr %27, i32 0, i32 6, i32 %i.012.i
  %28 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i8, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %disable_crtc.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %disable_crtc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disable_crtc.i, align 4
  %call.i = tail call zeroext i1 %33(ptr noundef %29) #6
  %inc.i9 = add nuw i32 %i.012.i, 1
  %34 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %res_pool.i, align 8
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %35, i32 0, i32 26
  %36 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timing_generator_count.i, align 4
  %cmp.i10 = icmp ult i32 %inc.i9, %37
  br i1 %cmp.i10, label %for.body.i11.for.body.i11_crit_edge, label %for.body.i11.power_down_controllers.exit_crit_edge

for.body.i11.power_down_controllers.exit_crit_edge: ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down_controllers.exit

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i11

power_down_controllers.exit:                      ; preds = %for.body.i11.power_down_controllers.exit_crit_edge, %power_down_encoders.exit.power_down_controllers.exit_crit_edge
  %38 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %res_pool.i, align 8
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %39, i32 0, i32 29
  %40 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dp_clock_source.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call.i13 = tail call zeroext i1 %45(ptr noundef %41) #6
  br i1 %call.i13, label %power_down_controllers.exit.if.end.i_crit_edge, label %if.then.i

power_down_controllers.exit.if.end.i_crit_edge:   ; preds = %power_down_controllers.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %power_down_controllers.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %power_down_controllers.exit.if.end.i_crit_edge
  %46 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %res_pool.i, align 8
  %clk_src_count27.i = getelementptr inbounds %struct.resource_pool, ptr %47, i32 0, i32 31
  %48 = ptrtoint ptr %clk_src_count27.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %clk_src_count27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp528.not.i = icmp eq i32 %49, 0
  br i1 %cmp528.not.i, label %if.end.i.power_down_clock_sources.exit_crit_edge, label %if.end.i.for.body.i15_crit_edge

if.end.i.for.body.i15_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i15

if.end.i.power_down_clock_sources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down_clock_sources.exit

for.body.i15:                                     ; preds = %for.inc.i.for.body.i15_crit_edge, %if.end.i.for.body.i15_crit_edge
  %50 = phi ptr [ %58, %for.inc.i.for.body.i15_crit_edge ], [ %47, %if.end.i.for.body.i15_crit_edge ]
  %i.029.i = phi i32 [ %inc.i16, %for.inc.i.for.body.i15_crit_edge ], [ 0, %if.end.i.for.body.i15_crit_edge ]
  %arrayidx.i14 = getelementptr %struct.resource_pool, ptr %50, i32 0, i32 30, i32 %i.029.i
  %51 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i14, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call13.i = tail call zeroext i1 %56(ptr noundef %52) #6
  br i1 %call13.i, label %for.body.i15.for.inc.i_crit_edge, label %if.then17.i

for.body.i15.for.inc.i_crit_edge:                 ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %i.029.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %for.body.i15.for.inc.i_crit_edge
  %inc.i16 = add nuw i32 %i.029.i, 1
  %57 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %res_pool.i, align 8
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %58, i32 0, i32 31
  %59 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %clk_src_count.i, align 4
  %cmp5.i = icmp ult i32 %inc.i16, %60
  br i1 %cmp5.i, label %for.inc.i.for.body.i15_crit_edge, label %for.inc.i.power_down_clock_sources.exit_crit_edge

for.inc.i.power_down_clock_sources.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_down_clock_sources.exit

for.inc.i.for.body.i15_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i15

power_down_clock_sources.exit:                    ; preds = %for.inc.i.power_down_clock_sources.exit_crit_edge, %if.end.i.power_down_clock_sources.exit_crit_edge
  %fbc_compressor = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 21
  %61 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fbc_compressor, align 4
  %tobool.not = icmp eq ptr %62, null
  br i1 %tobool.not, label %power_down_clock_sources.exit.if.end_crit_edge, label %if.then

power_down_clock_sources.exit.if.end_crit_edge:   ; preds = %power_down_clock_sources.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %power_down_clock_sources.exit
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.compressor, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %funcs, align 4
  %disable_fbc = getelementptr inbounds %struct.compressor_funcs, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %disable_fbc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disable_fbc, align 4
  tail call void %66(ptr noundef nonnull %62) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %power_down_clock_sources.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bios_set_scratch_acc_mode_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_set_safe_displaymarks(ptr nocapture noundef readonly %res_ctx, ptr nocapture noundef readonly %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %underlay_pipe_index = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 20
  %0 = ptrtoint ptr %underlay_pipe_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %underlay_pipe_index, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.098 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.098, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %mi = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.098, i32 2, i32 2
  %4 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mi, align 4
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %mem_input_program_display_marks = getelementptr inbounds %struct.mem_input_funcs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mem_input_program_display_marks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem_input_program_display_marks, align 4
  tail call void %9(ptr noundef nonnull %5, [4 x i32] [i32 32767, i32 32767, i32 32767, i32 32767], [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], [4 x i32] zeroinitializer, [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], i32 noundef 65535) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098, i32 %1)
  %cmp13 = icmp eq i32 %i.098, %1
  br i1 %cmp13, label %if.then14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mi, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %mem_input_program_chroma_display_marks = getelementptr inbounds %struct.mem_input_funcs, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %mem_input_program_chroma_display_marks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_input_program_chroma_display_marks, align 4
  tail call void %15(ptr noundef %11, [4 x i32] [i32 32767, i32 32767, i32 32767, i32 32767], [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], i32 noundef 65535) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce110_apply_ctx_to_hw(ptr noundef %dc, ptr noundef %context) #0 align 64 {
entry:
  %params.i = alloca %struct.drr_params, align 4
  %audio_output.i159 = alloca %struct.audio_output, align 4
  %audio_output.i = alloca %struct.audio_output, align 4
  %audio_output47.i = alloca %struct.audio_output, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %0 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwseq, align 4
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_bios, align 4
  %use_pipe_ctx_sync_logic = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4, i32 20
  %6 = ptrtoint ptr %use_pipe_ctx_sync_logic to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_pipe_ctx_sync_logic, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @reset_syncd_pipes_from_disabled_pipes(ptr noundef %dc, ptr noundef %context) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reset_hw_ctx_wrap = getelementptr inbounds %struct.dce_hwseq, ptr %1, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %reset_hw_ctx_wrap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_hw_ctx_wrap, align 4
  tail call void %9(ptr noundef %dc, ptr noundef %context) #6
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %10 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %if.end.cleanup100_crit_edge, label %if.end3

if.end.cleanup100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup100

if.end3:                                          ; preds = %if.end
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %set_scratch_critical_state = getelementptr inbounds %struct.dc_vbios_funcs, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %set_scratch_critical_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_scratch_critical_state, align 4
  tail call void %15(ptr noundef %5, i1 noundef zeroext true) #6
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %16 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res_pool, align 8
  %pipe_count169 = getelementptr inbounds %struct.resource_pool, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %pipe_count169 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe_count169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5170.not = icmp eq i32 %19, 0
  br i1 %cmp5170.not, label %if.end3.for.end_crit_edge, label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %res_ctx8 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %enable_display_power_gating = getelementptr inbounds %struct.dce_hwseq, ptr %1, i32 0, i32 6, i32 11
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %20 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %21, i32 0, i32 4
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx8, i32 0, i32 %i.0171, i32 1
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream, align 4
  %cmp11 = icmp eq ptr %23, null
  br i1 %cmp11, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %top_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx8, i32 0, i32 %i.0171, i32 9
  %24 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %top_pipe, align 4
  %tobool13.not = icmp eq ptr %25, null
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %stream17 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0171, i32 1
  %26 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream17, align 4
  %cmp18 = icmp eq ptr %23, %27
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end15
  %clock_source = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0171, i32 5
  %28 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clock_source, align 8
  %clock_source21 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx8, i32 0, i32 %i.0171, i32 5
  %30 = ptrtoint ptr %clock_source21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clock_source21, align 8
  %cmp22.not = icmp eq ptr %29, %31
  br i1 %cmp22.not, label %if.then20.cleanup_crit_edge, label %if.then24

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hwseq, align 4
  tail call void @dce_crtc_switch_to_clk_src(ptr noundef %33, ptr noundef %31, i32 noundef %i.0171) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enable_display_power_gating, align 4
  %conv30 = trunc i32 %i.0171 to i8
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 8
  %dc_bios32 = getelementptr inbounds %struct.dc_context, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %dc_bios32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dc_bios32, align 4
  %call = tail call zeroext i1 %35(ptr noundef %dc, i8 noundef zeroext %conv30, ptr noundef %39, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then24, %if.then20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0171, 1
  %40 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pipe_count, align 4
  %cmp5 = icmp ult i32 %inc, %43
  br i1 %cmp5, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end3.for.end_crit_edge
  %fbc_compressor = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 21
  %44 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fbc_compressor, align 4
  %tobool34.not = icmp eq ptr %45, null
  br i1 %tobool34.not, label %for.end.if.end39_crit_edge, label %if.then35

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %funcs37 = getelementptr inbounds %struct.compressor, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %funcs37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs37, align 4
  %disable_fbc = getelementptr inbounds %struct.compressor_funcs, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %disable_fbc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disable_fbc, align 4
  tail call void %49(ptr noundef nonnull %45) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %for.end.if.end39_crit_edge
  %50 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %res_pool, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp107.not.i = icmp eq i32 %53, 0
  br i1 %cmp107.not.i, label %if.end39.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end39.for.end.i_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end39
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0108.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.0108.i, i32 1
  %54 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stream.i, align 4
  %cmp2.i = icmp eq ptr %55, null
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %top_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.0108.i, i32 9
  %56 = ptrtoint ptr %top_pipe.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %top_pipe.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end4.i:                                        ; preds = %if.end.i
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %55, i32 0, i32 36
  %58 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %59)
  %cmp6.not.i = icmp eq i32 %59, 4
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end4.i
  %audio.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.0108.i, i32 3, i32 4
  %60 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %audio.i, align 8
  %cmp9.not.i = icmp eq ptr %61, null
  br i1 %cmp9.not.i, label %if.end8.i.for.inc.i_crit_edge, label %cleanup.i

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.0108.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %audio_output.i) #6
  %62 = call ptr @memset(ptr %audio_output.i, i32 255, i32 68)
  call fastcc void @build_audio_output(ptr noundef %context, ptr noundef %arrayidx.le.i, ptr noundef nonnull %audio_output.i) #6
  %63 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %audio.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %wall_dto_setup.i = getelementptr inbounds %struct.audio_funcs, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %wall_dto_setup.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wall_dto_setup.i, align 4
  %69 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stream.i, align 4
  %signal16.i = getelementptr inbounds %struct.dc_stream_state, ptr %70, i32 0, i32 36
  %71 = ptrtoint ptr %signal16.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %signal16.i, align 4
  %crtc_info.i = getelementptr inbounds %struct.audio_output, ptr %audio_output.i, i32 0, i32 2
  %pll_info.i = getelementptr inbounds %struct.audio_output, ptr %audio_output.i, i32 0, i32 3
  call void %68(ptr noundef %64, i32 noundef %72, ptr noundef %crtc_info.i, ptr noundef %pll_info.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %audio_output.i) #6
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0108.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %53
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i, %if.end39.for.end.i_crit_edge
  %i.0104.i = phi i32 [ %i.0108.i, %cleanup.i ], [ 0, %if.end39.for.end.i_crit_edge ], [ %53, %for.inc.i.for.end.i_crit_edge ]
  %73 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %res_pool, align 8
  %pipe_count19.i = getelementptr inbounds %struct.resource_pool, ptr %74, i32 0, i32 19
  %75 = ptrtoint ptr %pipe_count19.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pipe_count19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0104.i, i32 %76)
  %cmp20.i = icmp ne i32 %i.0104.i, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp25110.not.i = icmp eq i32 %76, 0
  %or.cond = or i1 %cmp20.i, %cmp25110.not.i
  br i1 %or.cond, label %for.end.i.dce110_setup_audio_dto.exit_crit_edge, label %for.body26.lr.ph.i

for.end.i.dce110_setup_audio_dto.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce110_setup_audio_dto.exit

for.body26.lr.ph.i:                               ; preds = %for.end.i
  %res_ctx28.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc63.i.for.body26.i_crit_edge, %for.body26.lr.ph.i
  %i.1111.i = phi i32 [ 0, %for.body26.lr.ph.i ], [ %inc64.i, %for.inc63.i.for.body26.i_crit_edge ]
  %stream31.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx28.i, i32 0, i32 %i.1111.i, i32 1
  %77 = ptrtoint ptr %stream31.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stream31.i, align 4
  %cmp32.i = icmp eq ptr %78, null
  br i1 %cmp32.i, label %for.body26.i.for.inc63.i_crit_edge, label %if.end34.i

for.body26.i.for.inc63.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i

if.end34.i:                                       ; preds = %for.body26.i
  %top_pipe35.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx28.i, i32 0, i32 %i.1111.i, i32 9
  %79 = ptrtoint ptr %top_pipe35.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %top_pipe35.i, align 4
  %tobool36.not.i = icmp eq ptr %80, null
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.for.inc63.i_crit_edge

if.end34.i.for.inc63.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i

if.end38.i:                                       ; preds = %if.end34.i
  %signal40.i = getelementptr inbounds %struct.dc_stream_state, ptr %78, i32 0, i32 36
  %81 = ptrtoint ptr %signal40.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %signal40.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %82, label %if.end38.i.for.inc63.i_crit_edge [
    i32 32, label %if.end38.i.if.end42.i_crit_edge
    i32 128, label %if.end38.i.if.end42.i_crit_edge200
    i32 64, label %if.end38.i.if.end42.i_crit_edge201
  ]

if.end38.i.if.end42.i_crit_edge201:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.end38.i.if.end42.i_crit_edge200:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.end38.i.if.end42.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.end38.i.for.inc63.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i

if.end42.i:                                       ; preds = %if.end38.i.if.end42.i_crit_edge, %if.end38.i.if.end42.i_crit_edge200, %if.end38.i.if.end42.i_crit_edge201
  %audio44.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx28.i, i32 0, i32 %i.1111.i, i32 3, i32 4
  %84 = ptrtoint ptr %audio44.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %audio44.i, align 8
  %cmp45.not.i = icmp eq ptr %85, null
  br i1 %cmp45.not.i, label %if.end42.i.for.inc63.i_crit_edge, label %cleanup60.i

if.end42.i.for.inc63.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i

cleanup60.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30.le.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx28.i, i32 0, i32 %i.1111.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %audio_output47.i) #6
  %86 = call ptr @memset(ptr %audio_output47.i, i32 255, i32 68)
  call fastcc void @build_audio_output(ptr noundef %context, ptr noundef %arrayidx30.le.i, ptr noundef nonnull %audio_output47.i) #6
  %87 = ptrtoint ptr %audio44.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %audio44.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %wall_dto_setup51.i = getelementptr inbounds %struct.audio_funcs, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %wall_dto_setup51.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wall_dto_setup51.i, align 4
  %93 = ptrtoint ptr %stream31.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stream31.i, align 4
  %signal55.i = getelementptr inbounds %struct.dc_stream_state, ptr %94, i32 0, i32 36
  %95 = ptrtoint ptr %signal55.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %signal55.i, align 4
  %crtc_info56.i = getelementptr inbounds %struct.audio_output, ptr %audio_output47.i, i32 0, i32 2
  %pll_info57.i = getelementptr inbounds %struct.audio_output, ptr %audio_output47.i, i32 0, i32 3
  call void %92(ptr noundef %88, i32 noundef %96, ptr noundef %crtc_info56.i, ptr noundef %pll_info57.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %audio_output47.i) #6
  br label %dce110_setup_audio_dto.exit

for.inc63.i:                                      ; preds = %if.end42.i.for.inc63.i_crit_edge, %if.end38.i.for.inc63.i_crit_edge, %if.end34.i.for.inc63.i_crit_edge, %for.body26.i.for.inc63.i_crit_edge
  %inc64.i = add nuw i32 %i.1111.i, 1
  %exitcond117.not.i = icmp eq i32 %inc64.i, %i.0104.i
  br i1 %exitcond117.not.i, label %for.inc63.i.dce110_setup_audio_dto.exit_crit_edge, label %for.inc63.i.for.body26.i_crit_edge

for.inc63.i.for.body26.i_crit_edge:               ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.i

for.inc63.i.dce110_setup_audio_dto.exit_crit_edge: ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce110_setup_audio_dto.exit

dce110_setup_audio_dto.exit:                      ; preds = %for.inc63.i.dce110_setup_audio_dto.exit_crit_edge, %cleanup60.i, %for.end.i.dce110_setup_audio_dto.exit_crit_edge
  %97 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %res_pool, align 8
  %pipe_count42173 = getelementptr inbounds %struct.resource_pool, ptr %98, i32 0, i32 19
  %99 = ptrtoint ptr %pipe_count42173 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pipe_count42173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp43174.not = icmp eq i32 %100, 0
  br i1 %cmp43174.not, label %dce110_setup_audio_dto.exit.for.end92_crit_edge, label %for.body45.lr.ph

dce110_setup_audio_dto.exit.for.end92_crit_edge:  ; preds = %dce110_setup_audio_dto.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end92

for.body45.lr.ph:                                 ; preds = %dce110_setup_audio_dto.exit
  %current_state47 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %res_ctx52 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %101 = getelementptr inbounds i8, ptr %params.i, i32 8
  %crtc_info.i164 = getelementptr inbounds %struct.audio_output, ptr %audio_output.i159, i32 0, i32 2
  %vertical_total_max.i = getelementptr inbounds %struct.drr_params, ptr %params.i, i32 0, i32 1
  br label %for.body45

for.body45:                                       ; preds = %for.inc90.for.body45_crit_edge, %for.body45.lr.ph
  %i.1175 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc91, %for.inc90.for.body45_crit_edge ]
  %102 = ptrtoint ptr %current_state47 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %current_state47, align 4
  %res_ctx48 = getelementptr inbounds %struct.dc_state, ptr %103, i32 0, i32 4
  %arrayidx50 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx48, i32 0, i32 %i.1175
  %arrayidx54 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175
  %stream55 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 1
  %104 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %stream55, align 4
  %cmp56 = icmp eq ptr %105, null
  br i1 %cmp56, label %for.body45.for.inc90_crit_edge, label %if.end59

for.body45.for.inc90_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc90

if.end59:                                         ; preds = %for.body45
  %stream61 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx48, i32 0, i32 %i.1175, i32 1
  %106 = ptrtoint ptr %stream61 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %stream61, align 4
  %cmp62 = icmp eq ptr %105, %107
  br i1 %cmp62, label %land.lhs.true, label %if.end59.if.end68_crit_edge

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end59
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %link, align 4
  %link_state_valid = getelementptr inbounds %struct.dc_link, ptr %109, i32 0, i32 10
  %110 = ptrtoint ptr %link_state_valid to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %link_state_valid, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool65.not = icmp eq i8 %111, 0
  br i1 %tobool65.not, label %land.lhs.true.if.end68_crit_edge, label %land.lhs.true.for.inc90_crit_edge

land.lhs.true.for.inc90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc90

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.end59.if.end68_crit_edge
  %tobool70.not = icmp eq ptr %107, null
  br i1 %tobool70.not, label %if.end68.if.end74_crit_edge, label %land.lhs.true71

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

land.lhs.true71:                                  ; preds = %if.end68
  %call72 = call zeroext i1 @pipe_need_reprogram(ptr noundef %arrayidx50, ptr noundef %arrayidx54) #6
  br i1 %call72, label %land.lhs.true71.if.end74_crit_edge, label %land.lhs.true71.for.inc90_crit_edge

land.lhs.true71.for.inc90_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc90

land.lhs.true71.if.end74_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true71.if.end74_crit_edge, %if.end68.if.end74_crit_edge
  %top_pipe75 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 9
  %112 = ptrtoint ptr %top_pipe75 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %top_pipe75, align 4
  %tobool76.not = icmp eq ptr %113, null
  br i1 %tobool76.not, label %lor.lhs.false77, label %if.end74.for.inc90_crit_edge

if.end74.for.inc90_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc90

lor.lhs.false77:                                  ; preds = %if.end74
  %prev_odm_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 12
  %114 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool78.not = icmp eq ptr %115, null
  br i1 %tobool78.not, label %if.end80, label %lor.lhs.false77.for.inc90_crit_edge

lor.lhs.false77.for.inc90_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc90

if.end80:                                         ; preds = %lor.lhs.false77
  %116 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %stream55, align 4
  %link2.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %link2.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params.i) #6
  %120 = call ptr @memset(ptr %101, i32 0, i32 12)
  %next_odm_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 11
  %121 = ptrtoint ptr %next_odm_pipe.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %next_odm_pipe.i, align 4
  %123 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hwseq, align 4
  %funcs.i = getelementptr inbounds %struct.dce_hwseq, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %funcs.i, align 8
  %tobool.not.i160 = icmp eq ptr %126, null
  br i1 %tobool.not.i160, label %if.end80.if.end.i162_crit_edge, label %if.then.i

if.end80.if.end.i162_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i162

if.then.i:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void %126(ptr noundef %dc, ptr noundef %arrayidx54) #6
  br label %if.end.i162

if.end.i162:                                      ; preds = %if.then.i, %if.end80.if.end.i162_crit_edge
  %stream_res.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 3
  %audio.i161 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 3, i32 4
  %127 = ptrtoint ptr %audio.i161 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %audio.i161, align 8
  %cmp.not.i = icmp eq ptr %128, null
  br i1 %cmp.not.i, label %if.end.i162.if.end36.i_crit_edge, label %if.then5.i

if.end.i162.if.end36.i_crit_edge:                 ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then5.i:                                       ; preds = %if.end.i162
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %audio_output.i159) #6
  %129 = call ptr @memset(ptr %audio_output.i159, i32 255, i32 68)
  call fastcc void @build_audio_output(ptr noundef %context, ptr noundef %arrayidx54, ptr noundef nonnull %audio_output.i159) #6
  %130 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %stream55, align 4
  %signal.i163 = getelementptr inbounds %struct.dc_stream_state, ptr %131, i32 0, i32 36
  %132 = ptrtoint ptr %signal.i163 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %signal.i163, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %133, label %if.else.i [
    i32 32, label %if.then5.i.if.then7.i_crit_edge
    i32 128, label %if.then5.i.if.then7.i_crit_edge202
    i32 64, label %if.then5.i.if.then7.i_crit_edge203
  ]

if.then5.i.if.then7.i_crit_edge203:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then5.i.if.then7.i_crit_edge202:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then5.i.if.then7.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.then5.i.if.then7.i_crit_edge, %if.then5.i.if.then7.i_crit_edge202, %if.then5.i.if.then7.i_crit_edge203
  %stream_enc.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 3, i32 3
  %135 = ptrtoint ptr %stream_enc.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %stream_enc.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %dp_audio_setup.i = getelementptr inbounds %struct.stream_encoder_funcs, ptr %138, i32 0, i32 13
  %139 = ptrtoint ptr %dp_audio_setup.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dp_audio_setup.i, align 4
  %141 = ptrtoint ptr %audio.i161 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %audio.i161, align 8
  %inst.i = getelementptr inbounds %struct.audio, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %inst.i, align 4
  %audio_info.i = getelementptr inbounds %struct.dc_stream_state, ptr %131, i32 0, i32 13
  call void %140(ptr noundef %136, i32 noundef %144, ptr noundef %audio_info.i) #6
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %stream_enc16.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 3, i32 3
  %145 = ptrtoint ptr %stream_enc16.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %stream_enc16.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %hdmi_audio_setup.i = getelementptr inbounds %struct.stream_encoder_funcs, ptr %148, i32 0, i32 16
  %149 = ptrtoint ptr %hdmi_audio_setup.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hdmi_audio_setup.i, align 4
  %151 = ptrtoint ptr %audio.i161 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %audio.i161, align 8
  %inst22.i = getelementptr inbounds %struct.audio, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %inst22.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %inst22.i, align 4
  %audio_info24.i = getelementptr inbounds %struct.dc_stream_state, ptr %131, i32 0, i32 13
  call void %150(ptr noundef %146, i32 noundef %154, ptr noundef %audio_info24.i, ptr noundef %crtc_info.i164) #6
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then7.i
  %155 = ptrtoint ptr %audio.i161 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %audio.i161, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %az_configure.i = getelementptr inbounds %struct.audio_funcs, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %az_configure.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %az_configure.i, align 4
  %161 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %stream55, align 4
  %signal32.i = getelementptr inbounds %struct.dc_stream_state, ptr %162, i32 0, i32 36
  %163 = ptrtoint ptr %signal32.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %signal32.i, align 4
  %audio_info35.i = getelementptr inbounds %struct.dc_stream_state, ptr %162, i32 0, i32 13
  call void %160(ptr noundef %156, i32 noundef %164, ptr noundef %crtc_info.i164, ptr noundef %audio_info35.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %audio_output.i159) #6
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end25.i, %if.end.i162.if.end36.i_crit_edge
  %165 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %stream55, align 4
  %apply_seamless_boot_optimization.i = getelementptr inbounds %struct.dc_stream_state, ptr %166, i32 0, i32 51
  %167 = ptrtoint ptr %apply_seamless_boot_optimization.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %apply_seamless_boot_optimization.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool38.not.i = icmp eq i8 %168, 0
  br i1 %tobool38.not.i, label %land.lhs.true.i, label %if.end36.i.if.end41.i_crit_edge

if.end36.i.if.end41.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end36.i
  %169 = ptrtoint ptr %use_pipe_ctx_sync_logic to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %use_pipe_ctx_sync_logic, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool39.not.i = icmp eq i8 %170, 0
  br i1 %tobool39.not.i, label %land.lhs.true.i.if.end41.i_crit_edge, label %if.then40.i

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %pipe_idx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 7
  %171 = ptrtoint ptr %pipe_idx.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %pipe_idx.i, align 8
  call void @check_syncd_pipes_for_disabled_master_pipe(ptr noundef %dc, ptr noundef %context, i8 noundef zeroext %172) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %land.lhs.true.i.if.end41.i_crit_edge, %if.end36.i.if.end41.i_crit_edge
  %173 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %stream55, align 4
  %apply_seamless_boot_optimization43.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 51
  %175 = ptrtoint ptr %apply_seamless_boot_optimization43.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %apply_seamless_boot_optimization43.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool44.not.i = icmp eq i8 %176, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end41.i.if.end48.i_crit_edge

if.end41.i.if.end48.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %enable_stream_timing.i = getelementptr inbounds %struct.dce_hwseq, ptr %124, i32 0, i32 6, i32 13
  %177 = ptrtoint ptr %enable_stream_timing.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %enable_stream_timing.i, align 4
  %call47.i = call i32 %178(ptr noundef %arrayidx54, ptr noundef %context, ptr noundef %dc) #6
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.end41.i.if.end48.i_crit_edge
  %setup_vupdate_interrupt.i = getelementptr inbounds %struct.dce_hwseq, ptr %124, i32 0, i32 6, i32 15
  %179 = ptrtoint ptr %setup_vupdate_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %setup_vupdate_interrupt.i, align 4
  %tobool50.not.i = icmp eq ptr %180, null
  br i1 %tobool50.not.i, label %if.end48.i.if.end54.i_crit_edge, label %if.then51.i

if.end48.i.if.end54.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %180(ptr noundef %dc, ptr noundef %arrayidx54) #6
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end54.i_crit_edge
  %adjust.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 6
  %181 = ptrtoint ptr %adjust.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %adjust.i, align 8
  %183 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %params.i, align 4
  %v_total_max.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 6, i32 1
  %184 = ptrtoint ptr %v_total_max.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %v_total_max.i, align 4
  %186 = ptrtoint ptr %vertical_total_max.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %vertical_total_max.i, align 4
  %tg.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 3, i32 2
  %187 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tg.i, align 8
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %set_drr.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %190, i32 0, i32 36
  %191 = ptrtoint ptr %set_drr.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %set_drr.i, align 4
  %tobool58.not.i = icmp eq ptr %192, null
  br i1 %tobool58.not.i, label %if.end54.i.if.end66.i_crit_edge, label %if.then59.i

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then59.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %192(ptr noundef %188, ptr noundef nonnull %params.i) #6
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then59.i, %if.end54.i.if.end66.i_crit_edge
  %193 = ptrtoint ptr %adjust.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %adjust.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp69.not.i = icmp eq i32 %194, 0
  br i1 %cmp69.not.i, label %if.end66.i.if.end75.i_crit_edge, label %land.lhs.true70.i

if.end66.i.if.end75.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i

land.lhs.true70.i:                                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  %195 = ptrtoint ptr %v_total_max.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %v_total_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp73.not.i = icmp eq i32 %196, 0
  %spec.select.i = select i1 %cmp73.not.i, i32 0, i32 128
  br label %if.end75.i

if.end75.i:                                       ; preds = %land.lhs.true70.i, %if.end66.i.if.end75.i_crit_edge
  %event_triggers.0.i = phi i32 [ 0, %if.end66.i.if.end75.i_crit_edge ], [ %spec.select.i, %land.lhs.true70.i ]
  %197 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tg.i, align 8
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %set_static_screen_control.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %200, i32 0, i32 39
  %201 = ptrtoint ptr %set_static_screen_control.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %set_static_screen_control.i, align 4
  %tobool79.not.i = icmp eq ptr %202, null
  br i1 %tobool79.not.i, label %if.end75.i.if.end87.i_crit_edge, label %if.then80.i

if.end75.i.if.end87.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

if.then80.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %202(ptr noundef %198, i32 noundef %event_triggers.0.i, i32 noundef 2) #6
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then80.i, %if.end75.i.if.end87.i_crit_edge
  %203 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %stream55, align 4
  %signal89.i = getelementptr inbounds %struct.dc_stream_state, ptr %204, i32 0, i32 36
  %205 = ptrtoint ptr %signal89.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %signal89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %206)
  %cmp.i.i = icmp eq i32 %206, 512
  br i1 %cmp.i.i, label %if.end87.i.if.end100.i_crit_edge, label %if.then91.i

if.end87.i.if.end100.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100.i

if.then91.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  %stream_enc93.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 3, i32 3
  %207 = ptrtoint ptr %stream_enc93.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %stream_enc93.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %dig_connect_to_otg.i = getelementptr inbounds %struct.stream_encoder_funcs, ptr %210, i32 0, i32 20
  %211 = ptrtoint ptr %dig_connect_to_otg.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dig_connect_to_otg.i, align 4
  %213 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %tg.i, align 8
  %inst99.i = getelementptr inbounds %struct.timing_generator, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %inst99.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %inst99.i, align 4
  call void %212(ptr noundef %208, i32 noundef %216) #6
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then91.i, %if.end87.i.if.end100.i_crit_edge
  %217 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %stream55, align 4
  %signal102.i = getelementptr inbounds %struct.dc_stream_state, ptr %218, i32 0, i32 36
  %219 = ptrtoint ptr %signal102.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %signal102.i, align 4
  %221 = zext i32 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %220, label %if.end100.i.if.end105.i_crit_edge [
    i32 32, label %if.end100.i.if.then104.i_crit_edge
    i32 128, label %if.end100.i.if.then104.i_crit_edge204
    i32 64, label %if.end100.i.if.then104.i_crit_edge205
  ]

if.end100.i.if.then104.i_crit_edge205:            ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then104.i

if.end100.i.if.then104.i_crit_edge204:            ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then104.i

if.end100.i.if.then104.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then104.i

if.end100.i.if.end105.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i

if.then104.i:                                     ; preds = %if.end100.i.if.then104.i_crit_edge, %if.end100.i.if.then104.i_crit_edge204, %if.end100.i.if.then104.i_crit_edge205
  call void @dp_source_sequence_trace(ptr noundef %119, i8 noundef zeroext 1) #6
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then104.i, %if.end100.i.if.end105.i_crit_edge
  %222 = ptrtoint ptr %stream_res.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %stream_res.i, align 8
  %funcs107.i = getelementptr inbounds %struct.output_pixel_processor, ptr %223, i32 0, i32 5
  %224 = ptrtoint ptr %funcs107.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %funcs107.i, align 8
  %opp_set_dyn_expansion.i = getelementptr inbounds %struct.opp_funcs, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %opp_set_dyn_expansion.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %opp_set_dyn_expansion.i, align 4
  %display_color_depth.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 5, i32 16
  %228 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %display_color_depth.i, align 8
  %signal110.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 36
  %230 = ptrtoint ptr %signal110.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %signal110.i, align 4
  call void %227(ptr noundef %223, i32 noundef 5, i32 noundef %229, i32 noundef %231) #6
  %232 = ptrtoint ptr %stream_res.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %stream_res.i, align 8
  %funcs113.i = getelementptr inbounds %struct.output_pixel_processor, ptr %233, i32 0, i32 5
  %234 = ptrtoint ptr %funcs113.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %funcs113.i, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %bit_depth_params.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 33
  %clamping.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 34
  call void %237(ptr noundef %233, ptr noundef %bit_depth_params.i, ptr noundef %clamping.i) #6
  %tobool116.not3.i = icmp eq ptr %122, null
  br i1 %tobool116.not3.i, label %if.end105.i.while.end.i_crit_edge, label %if.end105.i.while.body.i_crit_edge

if.end105.i.while.body.i_crit_edge:               ; preds = %if.end105.i
  br label %while.body.i

if.end105.i.while.end.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end105.i.while.body.i_crit_edge
  %odm_pipe.04.i = phi ptr [ %255, %while.body.i.while.body.i_crit_edge ], [ %122, %if.end105.i.while.body.i_crit_edge ]
  %stream_res117.i = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.04.i, i32 0, i32 3
  %238 = ptrtoint ptr %stream_res117.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %stream_res117.i, align 8
  %funcs119.i = getelementptr inbounds %struct.output_pixel_processor, ptr %239, i32 0, i32 5
  %240 = ptrtoint ptr %funcs119.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %funcs119.i, align 8
  %opp_set_dyn_expansion120.i = getelementptr inbounds %struct.opp_funcs, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %opp_set_dyn_expansion120.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %opp_set_dyn_expansion120.i, align 4
  %244 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %display_color_depth.i, align 8
  %246 = ptrtoint ptr %signal110.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %signal110.i, align 4
  call void %243(ptr noundef %239, i32 noundef 5, i32 noundef %245, i32 noundef %247) #6
  %248 = ptrtoint ptr %stream_res117.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %stream_res117.i, align 8
  %funcs128.i = getelementptr inbounds %struct.output_pixel_processor, ptr %249, i32 0, i32 5
  %250 = ptrtoint ptr %funcs128.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %funcs128.i, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  call void %253(ptr noundef %249, ptr noundef %bit_depth_params.i, ptr noundef %clamping.i) #6
  %next_odm_pipe134.i = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.04.i, i32 0, i32 11
  %254 = ptrtoint ptr %next_odm_pipe134.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %next_odm_pipe134.i, align 4
  %tobool116.not.i = icmp eq ptr %255, null
  br i1 %tobool116.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end105.i.while.end.i_crit_edge
  %dpms_off.i = getelementptr inbounds %struct.dc_stream_state, ptr %117, i32 0, i32 37
  %256 = ptrtoint ptr %dpms_off.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %dpms_off.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool135.not.i = icmp eq i8 %257, 0
  br i1 %tobool135.not.i, label %if.then136.i, label %while.end.i.apply_single_controller_ctx_to_hw.exit_crit_edge

while.end.i.apply_single_controller_ctx_to_hw.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apply_single_controller_ctx_to_hw.exit

if.then136.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @core_link_enable_stream(ptr noundef %context, ptr noundef %arrayidx54) #6
  br label %apply_single_controller_ctx_to_hw.exit

apply_single_controller_ctx_to_hw.exit:           ; preds = %if.then136.i, %while.end.i.apply_single_controller_ctx_to_hw.exit_crit_edge
  %bottom_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 10
  %258 = ptrtoint ptr %bottom_pipe.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %bottom_pipe.i, align 8
  %cmp138.i = icmp ne ptr %259, null
  %lb_params.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx52, i32 0, i32 %i.1175, i32 2, i32 0, i32 10
  %frombool.i = zext i1 %cmp138.i to i8
  %260 = ptrtoint ptr %lb_params.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %frombool.i, ptr %lb_params.i, align 4
  %261 = ptrtoint ptr %stream55 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %stream55, align 4
  %link140.i = getelementptr inbounds %struct.dc_stream_state, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %link140.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %link140.i, align 4
  %psr_settings.i = getelementptr inbounds %struct.dc_link, ptr %264, i32 0, i32 50
  %265 = ptrtoint ptr %psr_settings.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %psr_settings.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params.i) #6
  br label %for.inc90

for.inc90:                                        ; preds = %apply_single_controller_ctx_to_hw.exit, %lor.lhs.false77.for.inc90_crit_edge, %if.end74.for.inc90_crit_edge, %land.lhs.true71.for.inc90_crit_edge, %land.lhs.true.for.inc90_crit_edge, %for.body45.for.inc90_crit_edge
  %inc91 = add nuw i32 %i.1175, 1
  %266 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %res_pool, align 8
  %pipe_count42 = getelementptr inbounds %struct.resource_pool, ptr %267, i32 0, i32 19
  %268 = ptrtoint ptr %pipe_count42 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %pipe_count42, align 4
  %cmp43 = icmp ult i32 %inc91, %269
  br i1 %cmp43, label %for.inc90.for.body45_crit_edge, label %for.inc90.for.end92_crit_edge

for.inc90.for.end92_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end92

for.inc90.for.body45_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

for.end92:                                        ; preds = %for.inc90.for.end92_crit_edge, %dce110_setup_audio_dto.exit.for.end92_crit_edge
  %270 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %fbc_compressor, align 4
  %tobool94.not = icmp eq ptr %271, null
  br i1 %tobool94.not, label %for.end92.if.end97_crit_edge, label %if.then95

for.end92.if.end97_crit_edge:                     ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then95:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #8
  %current_state96 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %272 = ptrtoint ptr %current_state96 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %current_state96, align 4
  call fastcc void @enable_fbc(ptr noundef %dc, ptr noundef %273)
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %for.end92.if.end97_crit_edge
  %274 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %5, align 4
  %set_scratch_critical_state99 = getelementptr inbounds %struct.dc_vbios_funcs, ptr %275, i32 0, i32 12
  %276 = ptrtoint ptr %set_scratch_critical_state99 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %set_scratch_critical_state99, align 4
  call void %277(ptr noundef %5, i1 noundef zeroext false) #6
  br label %cleanup100

cleanup100:                                       ; preds = %if.end97, %if.end.cleanup100_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_syncd_pipes_from_disabled_pipes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_crtc_switch_to_clk_src(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pipe_need_reprogram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_fbc(ptr nocapture noundef readonly %dc, ptr noundef readonly %context) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.compr_addr_and_pitch_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %res_ctx1.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %underlay_pipe_index.i, align 4
  %fbc_compressor.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 21
  %4 = ptrtoint ptr %fbc_compressor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbc_compressor.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.do.end43.i_crit_edge

entry.do.end43.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i

land.rhs.i:                                       ; preds = %entry
  %.b120.i = load i1, ptr @should_enable_fbc.__already_done, align 1
  br i1 %.b120.i, label %land.rhs.i.if.then40.i_crit_edge, label %if.then.i, !prof !123

land.rhs.i.if.then40.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @should_enable_fbc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2063, i32 noundef 9, ptr noundef null) #6
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then40.i_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then40.i, %entry.do.end43.i_crit_edge
  %ctx.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 8
  %fbc_gpu_addr.i = getelementptr inbounds %struct.dc_context, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %fbc_gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fbc_gpu_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool44.not.i = icmp eq i64 %9, 0
  br i1 %tobool44.not.i, label %do.end43.i.if.end_crit_edge, label %if.end46.i

do.end43.i.if.end_crit_edge:                      ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end46.i:                                       ; preds = %do.end43.i
  %stream_count.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %10 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end46.i.if.end_crit_edge

if.end46.i.if.end_crit_edge:                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.end46.i
  %12 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res_pool.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp51125.not.i = icmp eq i32 %15, 0
  br i1 %cmp51125.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0127.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.0127.i
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.0127.i, i32 1
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.i, align 4
  %tobool54.not.i = icmp eq ptr %17, null
  %tobool58.not.i = icmp eq ptr %arrayidx.i, null
  %or.cond = select i1 %tobool54.not.i, i1 true, i1 %tobool58.not.i
  br i1 %or.cond, label %for.body.i.for.inc.i_crit_edge, label %if.end60.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end60.i:                                       ; preds = %for.body.i
  %pipe_idx61.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %i.0127.i, i32 7
  %18 = ptrtoint ptr %pipe_idx61.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pipe_idx61.i, align 8
  %conv62.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv62.i)
  %cmp63.not.i = icmp eq i32 %3, %conv62.i
  br i1 %cmp63.not.i, label %if.end60.i.for.inc.i_crit_edge, label %if.end60.i.for.end.i_crit_edge

if.end60.i.for.end.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end60.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0127.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end.i:                                        ; preds = %if.end60.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pipe_idx.0 = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.0127.i, %if.end60.i.for.end.i_crit_edge ]
  %pipe_ctx.2.i = phi ptr [ null, %for.cond.preheader.i.for.end.i_crit_edge ], [ %arrayidx.i, %if.end60.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pipe_idx.0, i32 %15)
  %cmp70.i = icmp eq i32 %pipe_idx.0, %15
  br i1 %cmp70.i, label %for.end.i.if.end_crit_edge, label %if.end73.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end73.i:                                       ; preds = %for.end.i
  %stream74.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx.2.i, i32 0, i32 1
  %20 = ptrtoint ptr %stream74.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream74.i, align 4
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.i, align 4
  %tobool75.not.i = icmp eq ptr %23, null
  br i1 %tobool75.not.i, label %if.end73.i.if.end_crit_edge, label %if.end77.i

if.end73.i.if.end_crit_edge:                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end77.i:                                       ; preds = %if.end73.i
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %25)
  %cmp80.not.i = icmp eq i32 %25, 128
  br i1 %cmp80.not.i, label %if.end83.i, label %if.end77.i.if.end_crit_edge

if.end77.i.if.end_crit_edge:                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end83.i:                                       ; preds = %if.end77.i
  %psr_settings.i = getelementptr inbounds %struct.dc_link, ptr %23, i32 0, i32 50
  %26 = ptrtoint ptr %psr_settings.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %psr_settings.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool86.not.i = icmp eq i8 %27, 0
  br i1 %tobool86.not.i, label %if.end88.i, label %if.end83.i.if.end_crit_edge

if.end83.i.if.end_crit_edge:                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end88.i:                                       ; preds = %if.end83.i
  %28 = ptrtoint ptr %pipe_ctx.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe_ctx.2.i, align 8
  %tobool89.not.i = icmp eq ptr %29, null
  br i1 %tobool89.not.i, label %if.end88.i.if.end_crit_edge, label %should_enable_fbc.exit

if.end88.i.if.end_crit_edge:                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

should_enable_fbc.exit:                           ; preds = %if.end88.i
  %array_mode.i = getelementptr inbounds %struct.dc_plane_state, ptr %29, i32 0, i32 8, i32 0, i32 12
  %30 = ptrtoint ptr %array_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %array_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp93.i.not = icmp eq i32 %31, 0
  br i1 %cmp93.i.not, label %should_enable_fbc.exit.if.end_crit_edge, label %if.then

should_enable_fbc.exit.if.end_crit_edge:          ; preds = %should_enable_fbc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %should_enable_fbc.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #6
  %32 = ptrtoint ptr %fbc_compressor.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fbc_compressor.i, align 4
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %pipe_idx.0, i32 1
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream, align 4
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %35, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %h_addressable, align 8
  %source_view_width = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 1
  %38 = ptrtoint ptr %source_view_width to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %source_view_width, align 4
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %35, i32 0, i32 5, i32 8
  %39 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v_addressable, align 8
  %source_view_height = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params, i32 0, i32 2
  %41 = ptrtoint ptr %source_view_height to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %source_view_height, align 4
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i, i32 0, i32 %pipe_idx.0, i32 3, i32 2
  %42 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %inst, align 4
  %46 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %params, align 4
  %compr_surface_address = getelementptr inbounds %struct.compressor, ptr %33, i32 0, i32 5
  %47 = ptrtoint ptr %compr_surface_address to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %9, ptr %compr_surface_address, align 8
  %funcs = getelementptr inbounds %struct.compressor, ptr %33, i32 0, i32 3
  %48 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs, align 4
  %surface_address_and_pitch = getelementptr inbounds %struct.compressor_funcs, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %surface_address_and_pitch to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %surface_address_and_pitch, align 4
  call void %51(ptr noundef %33, ptr noundef nonnull %params) #6
  %52 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs, align 4
  %set_fbc_invalidation_triggers = getelementptr inbounds %struct.compressor_funcs, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %set_fbc_invalidation_triggers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_fbc_invalidation_triggers, align 4
  call void %55(ptr noundef %33, i32 noundef 1) #6
  %56 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %funcs, align 4
  %enable_fbc = getelementptr inbounds %struct.compressor_funcs, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %enable_fbc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %enable_fbc, align 4
  call void %59(ptr noundef %33, ptr noundef nonnull %params) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %should_enable_fbc.exit.if.end_crit_edge, %if.end88.i.if.end_crit_edge, %if.end83.i.if.end_crit_edge, %if.end77.i.if.end_crit_edge, %if.end73.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end46.i.if.end_crit_edge, %do.end43.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_power_down(ptr noundef %dc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @power_down_all_hw_blocks(ptr noundef %dc)
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool.i, align 8
  %timing_generator_count33.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %timing_generator_count33.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing_generator_count33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34.not.i = icmp eq i32 %3, 0
  br i1 %cmp34.not.i, label %entry.for.cond5.preheader.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.cond5.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc.i.for.cond5.preheader.i_crit_edge, %entry.for.cond5.preheader.i_crit_edge
  %4 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool.i, align 8
  %pipe_count36.i = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %pipe_count36.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_count36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp737.not.i = icmp eq i32 %7, 0
  br i1 %cmp737.not.i, label %for.cond5.preheader.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge, label %for.body8.lr.ph.i

for.cond5.preheader.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_vga_and_power_gate_all_controllers.exit

for.body8.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %current_state.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %disable_plane.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 8
  br label %for.body8.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %8 = phi ptr [ %16, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %i.035.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 6, i32 %i.035.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %disable_vga.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %disable_vga.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disable_vga.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %14(ptr noundef %10) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.035.i, 1
  %15 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res_pool.i, align 8
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timing_generator_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond5.preheader.i_crit_edge

for.inc.i.for.cond5.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.138.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc15.i, %for.body8.i.for.body8.i_crit_edge ]
  %conv.i = trunc i32 %i.138.i to i8
  %19 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %current_state.i, align 4
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %20, i32 0, i32 4
  %pipe_idx.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.138.i, i32 7
  %21 = ptrtoint ptr %pipe_idx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %pipe_idx.i, align 8
  %22 = ptrtoint ptr %disable_plane.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disable_plane.i, align 4
  %24 = load ptr, ptr %current_state.i, align 4
  %res_ctx11.i = getelementptr inbounds %struct.dc_state, ptr %24, i32 0, i32 4
  %arrayidx13.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx11.i, i32 0, i32 %i.138.i
  tail call void %23(ptr noundef %dc, ptr noundef %arrayidx13.i) #6
  %inc15.i = add nuw i32 %i.138.i, 1
  %25 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res_pool.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe_count.i, align 4
  %cmp7.i = icmp ult i32 %inc15.i, %28
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge

for.body8.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge: ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_vga_and_power_gate_all_controllers.exit

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i

disable_vga_and_power_gate_all_controllers.exit:  ; preds = %for.body8.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge, %for.cond5.preheader.i.disable_vga_and_power_gate_all_controllers.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_prepare_bandwidth(ptr nocapture noundef readonly %dc, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 13
  %0 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_mgr, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %2 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_pool, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %underlay_pipe_index.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.098.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.098.i, i32 1
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream.i, align 4
  %cmp1.i = icmp eq ptr %7, null
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %mi.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.098.i, i32 2, i32 2
  %8 = ptrtoint ptr %mi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mi.i, align 4
  %cmp4.i = icmp eq ptr %9, null
  br i1 %cmp4.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %mem_input_program_display_marks.i = getelementptr inbounds %struct.mem_input_funcs, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mem_input_program_display_marks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem_input_program_display_marks.i, align 4
  tail call void %13(ptr noundef nonnull %9, [4 x i32] [i32 32767, i32 32767, i32 32767, i32 32767], [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], [4 x i32] zeroinitializer, [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], i32 noundef 65535) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098.i, i32 %5)
  %cmp13.i = icmp eq i32 %i.098.i, %5
  br i1 %cmp13.i, label %if.then14.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %mi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mi.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %mem_input_program_chroma_display_marks.i = getelementptr inbounds %struct.mem_input_funcs, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %mem_input_program_chroma_display_marks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_input_program_chroma_display_marks.i, align 4
  tail call void %19(ptr noundef %15, [4 x i32] [i32 32767, i32 32767, i32 32767, i32 32767], [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535], i32 noundef 65535) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %dce110_set_safe_displaymarks.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dce110_set_safe_displaymarks.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %1, ptr noundef %context, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_optimize_bandwidth(ptr nocapture noundef readonly %dc, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 13
  %0 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_mgr, align 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %2 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_pool.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %underlay_pipe_index.i, align 4
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %bw_vbios.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %cleanup.i.for.body.i_crit_edge ]
  %num_pipes.0125.i = phi i8 [ 0, %entry ], [ %num_pipes.2.i, %cleanup.i.for.body.i_crit_edge ]
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %indvars.iv.i, i32 1
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream.i, align 4
  %cmp3.i = icmp eq ptr %7, null
  br i1 %cmp3.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bw_vbios.i, align 8
  %blackout_duration.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %blackout_duration.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %.unpack.i = load i64, ptr %blackout_duration.i, align 8
  %mul.i.i = mul i64 %.unpack.i, 1000
  %11 = lshr i64 %mul.i.i, 24
  %conv.i.i = trunc i64 %11 to i32
  %timing.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timing.i.i, align 8
  %mul2.i.i = mul i32 %13, 10000000
  %pix_clk_100hz.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pix_clk_100hz.i.i, align 8
  %div.i.i = udiv i32 %mul2.i.i, %15
  %add.i.i = add i32 %div.i.i, %conv.i.i
  %mi.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %indvars.iv.i, i32 2, i32 2
  %16 = ptrtoint ptr %mi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mi.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %mem_input_program_display_marks.i = getelementptr inbounds %struct.mem_input_funcs, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mem_input_program_display_marks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_input_program_display_marks.i, align 4
  %idxprom8.i = zext i8 %num_pipes.0125.i to i32
  %arrayidx9.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 %idxprom8.i
  %arrayidx13.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 %idxprom8.i
  %arrayidx17.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 7, i32 %idxprom8.i
  %arrayidx21.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 %idxprom8.i
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack75.i = load i32, ptr %arrayidx9.i, align 8
  %23 = insertvalue [4 x i32] undef, i32 %.unpack75.i, 0
  %.elt76.i = getelementptr inbounds [4 x i32], ptr %arrayidx9.i, i32 0, i32 1
  %24 = ptrtoint ptr %.elt76.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack77.i = load i32, ptr %.elt76.i, align 4
  %25 = insertvalue [4 x i32] %23, i32 %.unpack77.i, 1
  %.elt78.i = getelementptr inbounds [4 x i32], ptr %arrayidx9.i, i32 0, i32 2
  %26 = ptrtoint ptr %.elt78.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack79.i = load i32, ptr %.elt78.i, align 8
  %27 = insertvalue [4 x i32] %25, i32 %.unpack79.i, 2
  %.elt80.i = getelementptr inbounds [4 x i32], ptr %arrayidx9.i, i32 0, i32 3
  %28 = ptrtoint ptr %.elt80.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack81.i = load i32, ptr %.elt80.i, align 4
  %29 = insertvalue [4 x i32] %27, i32 %.unpack81.i, 3
  %30 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack82.i = load i32, ptr %arrayidx13.i, align 8
  %31 = insertvalue [4 x i32] undef, i32 %.unpack82.i, 0
  %.elt83.i = getelementptr inbounds [4 x i32], ptr %arrayidx13.i, i32 0, i32 1
  %32 = ptrtoint ptr %.elt83.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack84.i = load i32, ptr %.elt83.i, align 4
  %33 = insertvalue [4 x i32] %31, i32 %.unpack84.i, 1
  %.elt85.i = getelementptr inbounds [4 x i32], ptr %arrayidx13.i, i32 0, i32 2
  %34 = ptrtoint ptr %.elt85.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack86.i = load i32, ptr %.elt85.i, align 8
  %35 = insertvalue [4 x i32] %33, i32 %.unpack86.i, 2
  %.elt87.i = getelementptr inbounds [4 x i32], ptr %arrayidx13.i, i32 0, i32 3
  %36 = ptrtoint ptr %.elt87.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack88.i = load i32, ptr %.elt87.i, align 4
  %37 = insertvalue [4 x i32] %35, i32 %.unpack88.i, 3
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack89.i = load i32, ptr %arrayidx17.i, align 8
  %39 = insertvalue [4 x i32] undef, i32 %.unpack89.i, 0
  %.elt90.i = getelementptr inbounds [4 x i32], ptr %arrayidx17.i, i32 0, i32 1
  %40 = ptrtoint ptr %.elt90.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack91.i = load i32, ptr %.elt90.i, align 4
  %41 = insertvalue [4 x i32] %39, i32 %.unpack91.i, 1
  %.elt92.i = getelementptr inbounds [4 x i32], ptr %arrayidx17.i, i32 0, i32 2
  %42 = ptrtoint ptr %.elt92.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack93.i = load i32, ptr %.elt92.i, align 8
  %43 = insertvalue [4 x i32] %41, i32 %.unpack93.i, 2
  %.elt94.i = getelementptr inbounds [4 x i32], ptr %arrayidx17.i, i32 0, i32 3
  %44 = ptrtoint ptr %.elt94.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack95.i = load i32, ptr %.elt94.i, align 4
  %45 = insertvalue [4 x i32] %43, i32 %.unpack95.i, 3
  %46 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack96.i = load i32, ptr %arrayidx21.i, align 8
  %47 = insertvalue [4 x i32] undef, i32 %.unpack96.i, 0
  %.elt97.i = getelementptr inbounds [4 x i32], ptr %arrayidx21.i, i32 0, i32 1
  %48 = ptrtoint ptr %.elt97.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack98.i = load i32, ptr %.elt97.i, align 4
  %49 = insertvalue [4 x i32] %47, i32 %.unpack98.i, 1
  %.elt99.i = getelementptr inbounds [4 x i32], ptr %arrayidx21.i, i32 0, i32 2
  %50 = ptrtoint ptr %.elt99.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack100.i = load i32, ptr %.elt99.i, align 8
  %51 = insertvalue [4 x i32] %49, i32 %.unpack100.i, 2
  %.elt101.i = getelementptr inbounds [4 x i32], ptr %arrayidx21.i, i32 0, i32 3
  %52 = ptrtoint ptr %.elt101.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack102.i = load i32, ptr %.elt101.i, align 4
  %53 = insertvalue [4 x i32] %51, i32 %.unpack102.i, 3
  tail call void %21(ptr noundef %17, [4 x i32] %29, [4 x i32] %37, [4 x i32] %45, [4 x i32] %53, i32 noundef %add.i.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %indvars.iv.i)
  %cmp23.i = icmp eq i32 %5, %indvars.iv.i
  br i1 %cmp23.i, label %if.then25.i, label %if.end.i.if.end46.i_crit_edge

if.end.i.if.end46.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i8 %num_pipes.0125.i, 1
  %54 = ptrtoint ptr %mi.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mi.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %mem_input_program_chroma_display_marks.i = getelementptr inbounds %struct.mem_input_funcs, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %mem_input_program_chroma_display_marks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mem_input_program_chroma_display_marks.i, align 4
  %idxprom34.i = zext i8 %inc.i to i32
  %arrayidx35.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 %idxprom34.i
  %arrayidx40.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 %idxprom34.i
  %arrayidx45.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 %idxprom34.i
  %60 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack103.i = load i32, ptr %arrayidx35.i, align 8
  %61 = insertvalue [4 x i32] undef, i32 %.unpack103.i, 0
  %.elt104.i = getelementptr inbounds [4 x i32], ptr %arrayidx35.i, i32 0, i32 1
  %62 = ptrtoint ptr %.elt104.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack105.i = load i32, ptr %.elt104.i, align 4
  %63 = insertvalue [4 x i32] %61, i32 %.unpack105.i, 1
  %.elt106.i = getelementptr inbounds [4 x i32], ptr %arrayidx35.i, i32 0, i32 2
  %64 = ptrtoint ptr %.elt106.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack107.i = load i32, ptr %.elt106.i, align 8
  %65 = insertvalue [4 x i32] %63, i32 %.unpack107.i, 2
  %.elt108.i = getelementptr inbounds [4 x i32], ptr %arrayidx35.i, i32 0, i32 3
  %66 = ptrtoint ptr %.elt108.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack109.i = load i32, ptr %.elt108.i, align 4
  %67 = insertvalue [4 x i32] %65, i32 %.unpack109.i, 3
  %68 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack110.i = load i32, ptr %arrayidx40.i, align 8
  %69 = insertvalue [4 x i32] undef, i32 %.unpack110.i, 0
  %.elt111.i = getelementptr inbounds [4 x i32], ptr %arrayidx40.i, i32 0, i32 1
  %70 = ptrtoint ptr %.elt111.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack112.i = load i32, ptr %.elt111.i, align 4
  %71 = insertvalue [4 x i32] %69, i32 %.unpack112.i, 1
  %.elt113.i = getelementptr inbounds [4 x i32], ptr %arrayidx40.i, i32 0, i32 2
  %72 = ptrtoint ptr %.elt113.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack114.i = load i32, ptr %.elt113.i, align 8
  %73 = insertvalue [4 x i32] %71, i32 %.unpack114.i, 2
  %.elt115.i = getelementptr inbounds [4 x i32], ptr %arrayidx40.i, i32 0, i32 3
  %74 = ptrtoint ptr %.elt115.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.unpack116.i = load i32, ptr %.elt115.i, align 4
  %75 = insertvalue [4 x i32] %73, i32 %.unpack116.i, 3
  %76 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack117.i = load i32, ptr %arrayidx45.i, align 8
  %77 = insertvalue [4 x i32] undef, i32 %.unpack117.i, 0
  %.elt118.i = getelementptr inbounds [4 x i32], ptr %arrayidx45.i, i32 0, i32 1
  %78 = ptrtoint ptr %.elt118.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack119.i = load i32, ptr %.elt118.i, align 4
  %79 = insertvalue [4 x i32] %77, i32 %.unpack119.i, 1
  %.elt120.i = getelementptr inbounds [4 x i32], ptr %arrayidx45.i, i32 0, i32 2
  %80 = ptrtoint ptr %.elt120.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack121.i = load i32, ptr %.elt120.i, align 8
  %81 = insertvalue [4 x i32] %79, i32 %.unpack121.i, 2
  %.elt122.i = getelementptr inbounds [4 x i32], ptr %arrayidx45.i, i32 0, i32 3
  %82 = ptrtoint ptr %.elt122.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack123.i = load i32, ptr %.elt122.i, align 4
  %83 = insertvalue [4 x i32] %81, i32 %.unpack123.i, 3
  tail call void %59(ptr noundef %55, [4 x i32] %67, [4 x i32] %75, [4 x i32] %83, i32 noundef %add.i.i) #6
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then25.i, %if.end.i.if.end46.i_crit_edge
  %num_pipes.1.i = phi i8 [ %inc.i, %if.then25.i ], [ %num_pipes.0125.i, %if.end.i.if.end46.i_crit_edge ]
  %inc47.i = add i8 %num_pipes.1.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end46.i, %for.body.i.cleanup.i_crit_edge
  %num_pipes.2.i = phi i8 [ %inc47.i, %if.end46.i ], [ %num_pipes.0125.i, %for.body.i.cleanup.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 6
  br i1 %exitcond.not.i, label %dce110_set_displaymarks.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dce110_set_displaymarks.exit:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %funcs, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  tail call void %87(ptr noundef %1, ptr noundef %context, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_set_backlight_level(ptr nocapture noundef readonly %pipe_ctx, i32 noundef %backlight_pwm_u16_16, i32 noundef %frame_ramp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link1, align 4
  %ctx = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %abm3 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %abm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %abm3, align 4
  %panel_cntl4 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 37
  %10 = ptrtoint ptr %panel_cntl4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel_cntl4, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res_pool, align 8
  %dmcu5 = getelementptr inbounds %struct.resource_pool, ptr %13, i32 0, i32 38
  %14 = ptrtoint ptr %dmcu5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmcu5, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inst, align 4
  %add = add i32 %19, 1
  %cmp = icmp eq ptr %9, null
  %cmp7 = icmp eq ptr %11, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false8:                                   ; preds = %entry
  %funcs = getelementptr inbounds %struct.abm, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %set_backlight_level_pwm = getelementptr inbounds %struct.abm_funcs, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %set_backlight_level_pwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_backlight_level_pwm, align 4
  %cmp9 = icmp eq ptr %23, null
  br i1 %cmp9, label %lor.lhs.false8.cleanup_crit_edge, label %if.end

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %if.then10

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then10:                                        ; preds = %if.end
  %funcs11 = getelementptr inbounds %struct.dmcu, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %funcs11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs11, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %is_dmcu_initialized, align 4
  %call = tail call zeroext i1 %27(ptr noundef nonnull %15) #6
  br i1 %call, label %if.then10.if.else_crit_edge, label %land.lhs.true

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then10
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 4
  %driver_set_backlight = getelementptr inbounds %struct.panel_cntl_funcs, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %driver_set_backlight to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_set_backlight, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %land.lhs.true.if.else_crit_edge, label %if.then16

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %31(ptr noundef nonnull %11, i32 noundef %backlight_pwm_u16_16) #6
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then10.if.else_crit_edge, %if.end.if.else_crit_edge
  %32 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs, align 4
  %set_backlight_level_pwm20 = getelementptr inbounds %struct.abm_funcs, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %set_backlight_level_pwm20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_backlight_level_pwm20, align 4
  %36 = ptrtoint ptr %panel_cntl4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %panel_cntl4, align 4
  %inst22 = getelementptr inbounds %struct.panel_cntl, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inst22, align 4
  %call23 = tail call zeroext i1 %35(ptr noundef nonnull %9, i32 noundef %backlight_pwm_u16_16, i32 noundef %frame_ramp, i32 noundef %add, i32 noundef %39) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %lor.lhs.false8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false8.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.else ], [ true, %if.then16 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_set_abm_immediate_disable(ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %abm1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %abm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm1, align 4
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %panel_cntl2 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %panel_cntl2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel_cntl2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.abm, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %set_abm_immediate_disable = getelementptr inbounds %struct.abm_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %set_abm_immediate_disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_abm_immediate_disable, align 4
  %inst = getelementptr inbounds %struct.panel_cntl, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inst, align 4
  %call = tail call zeroext i1 %11(ptr noundef nonnull %1, i32 noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %store_backlight_level = getelementptr inbounds %struct.panel_cntl_funcs, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %store_backlight_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %store_backlight_level, align 4
  tail call void %17(ptr noundef nonnull %7) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_set_pipe(ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %abm1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %abm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm1, align 4
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %panel_cntl2 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %panel_cntl2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel_cntl2, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool4.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst, align 4
  %add = add i32 %11, 1
  %funcs = getelementptr inbounds %struct.abm, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %set_pipe = getelementptr inbounds %struct.abm_funcs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %set_pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_pipe, align 4
  %inst5 = getelementptr inbounds %struct.panel_cntl, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %inst5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inst5, align 4
  %call = tail call zeroext i1 %15(ptr noundef nonnull %1, i32 noundef %add, i32 noundef %17) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce110_hw_sequencer_construct(ptr nocapture noundef %dc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwss = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17
  %0 = call ptr @memcpy(ptr %hwss, ptr @dce110_funcs, i32 320)
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %1 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwseq, align 4
  %funcs = getelementptr inbounds %struct.dce_hwseq, ptr %2, i32 0, i32 6
  %3 = call ptr @memcpy(ptr %funcs, ptr @dce110_private_funcs, i32 152)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_blank_dp_stream(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enable_display_pipe_clock_gating(ptr nocapture noundef %ctx, i1 noundef zeroext %clock_gating) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_audio_output(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef %audio_output) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_enc, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = ptrtoint ptr %audio_output to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %audio_output, align 4
  %7 = load ptr, ptr %stream1, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal, align 4
  %signal3 = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 1
  %10 = ptrtoint ptr %signal3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %signal3, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timing, align 8
  %crtc_info = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2
  %13 = ptrtoint ptr %crtc_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %crtc_info, align 4
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %h_addressable, align 8
  %h_border_left = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_border_left, align 4
  %add = add i32 %17, %15
  %h_border_right = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_border_right, align 4
  %add8 = add i32 %add, %19
  %h_active = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %h_active to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add8, ptr %h_active, align 4
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 8
  %21 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %v_addressable, align 8
  %v_border_top = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 7
  %23 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v_border_top, align 4
  %add12 = add i32 %24, %22
  %v_border_bottom = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 9
  %25 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v_border_bottom, align 4
  %add14 = add i32 %add12, %26
  %v_active = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %v_active to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add14, ptr %v_active, align 4
  %pixel_repetition = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %pixel_repetition to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %pixel_repetition, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 21
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %flags, align 4
  %interlaced = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 8
  %bf.load.lobit = lshr i32 %bf.load, 31
  %30 = trunc i32 %bf.load.lobit to i8
  %31 = ptrtoint ptr %interlaced to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %interlaced, align 4
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 12
  %32 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pix_clk_100hz, align 8
  %mul = mul i32 %33, 100
  %34 = load i32, ptr %timing, align 8
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 6
  %35 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %v_total, align 8
  %mul23 = mul i32 %36, %34
  %div = udiv i32 %mul, %mul23
  %refresh_rate = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 6
  %37 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %refresh_rate, align 4
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 16
  %38 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %display_color_depth, align 8
  %color_depth = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 7
  %40 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %color_depth, align 4
  %pix_clk_params = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pix_clk_params, align 4
  %requested_pixel_clock_100Hz = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %requested_pixel_clock_100Hz to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %requested_pixel_clock_100Hz, align 4
  %44 = load i32, ptr %pix_clk_params, align 4
  %calculated_pixel_clock_100Hz = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %calculated_pixel_clock_100Hz, align 4
  %46 = load ptr, ptr %stream1, align 4
  %signal34 = getelementptr inbounds %struct.dc_stream_state, ptr %46, i32 0, i32 36
  %47 = ptrtoint ptr %signal34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %signal34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp.i = icmp eq i32 %48, 4
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end54_crit_edge

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

land.lhs.true:                                    ; preds = %entry
  %49 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pix_clk_100hz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %50)
  %cmp = icmp eq i32 %42, %50
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then:                                          ; preds = %land.lhs.true
  %pixel_encoding = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 8
  %51 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp41 = icmp eq i32 %52, 4
  br i1 %cmp41, label %if.then42, label %if.then.if.end54_crit_edge

if.then.if.end54_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then42:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div45123 = lshr i32 %42, 1
  %53 = ptrtoint ptr %requested_pixel_clock_100Hz to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div45123, ptr %requested_pixel_clock_100Hz, align 4
  %54 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pix_clk_params, align 4
  %div51124 = lshr i32 %55, 1
  %56 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div51124, ptr %calculated_pixel_clock_100Hz, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then42, %if.then.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %entry.if.end54_crit_edge
  %clk_mgr = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 7
  %57 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_mgr, align 4
  %tobool55.not = icmp eq ptr %58, null
  br i1 %tobool55.not, label %if.end54.if.end67_crit_edge, label %land.lhs.true56

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

land.lhs.true56:                                  ; preds = %if.end54
  %59 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stream1, align 4
  %signal58 = getelementptr inbounds %struct.dc_stream_state, ptr %60, i32 0, i32 36
  %61 = ptrtoint ptr %signal58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %signal58, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %62, label %land.lhs.true56.if.end67_crit_edge [
    i32 32, label %land.lhs.true56.if.then63_crit_edge
    i32 64, label %land.lhs.true56.if.then63_crit_edge125
  ]

land.lhs.true56.if.then63_crit_edge125:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

land.lhs.true56.if.then63_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

land.lhs.true56.if.end67_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then63:                                        ; preds = %land.lhs.true56.if.then63_crit_edge, %land.lhs.true56.if.then63_crit_edge125
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %58, i32 0, i32 1
  %64 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %funcs, align 4
  %get_dp_ref_clk_frequency = getelementptr inbounds %struct.clk_mgr_funcs, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %get_dp_ref_clk_frequency to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %get_dp_ref_clk_frequency, align 4
  %call66 = tail call i32 %67(ptr noundef nonnull %58) #6
  %pll_info = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 3
  %68 = ptrtoint ptr %pll_info to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call66, ptr %pll_info, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true56.if.end67_crit_edge, %if.end54.if.end67_crit_edge
  %feedback_divider = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 6, i32 6
  %69 = ptrtoint ptr %feedback_divider to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %feedback_divider, align 4
  %feed_back_divider = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %feed_back_divider to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %feed_back_divider, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %76 = icmp ult i32 %75, 6
  %switch.offset = add i32 %75, 1
  %retval.0.i = select i1 %76, i32 %switch.offset, i32 0
  %dto_source = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %dto_source to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %retval.0.i, ptr %dto_source, align 4
  %ss_enabled = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 3, i32 3
  %78 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %ss_enabled, align 4
  %ss_percentage = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 6, i32 9
  %79 = ptrtoint ptr %ss_percentage to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ss_percentage, align 4
  %ss_percentage76 = getelementptr inbounds %struct.audio_output, ptr %audio_output, i32 0, i32 3, i32 4
  %81 = ptrtoint ptr %ss_percentage76 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ss_percentage76, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_syncd_pipes_for_disabled_master_pipe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_link_enable_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_hw(ptr noundef %dc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_bios, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool, align 8
  %pipe_count147 = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %pipe_count147 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_count147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp148.not = icmp eq i32 %7, 0
  br i1 %cmp148.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwseq, align 4
  %enable_display_power_gating = getelementptr inbounds %struct.dce_hwseq, ptr %9, i32 0, i32 6, i32 11
  %enable_display_pipe_clock_gating = getelementptr inbounds %struct.dce_hwseq, ptr %9, i32 0, i32 6, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %10 = phi ptr [ %5, %for.body.lr.ph ], [ %26, %for.body.for.body_crit_edge ]
  %i.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_pool, ptr %10, i32 0, i32 3, i32 %i.0149
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void %16(ptr noundef %12) #6
  %17 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_display_power_gating, align 4
  %conv = trunc i32 %i.0149 to i8
  %call = tail call zeroext i1 %18(ptr noundef %dc, i8 noundef zeroext %conv, ptr noundef %3, i32 noundef 2) #6
  %19 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enable_display_power_gating, align 4
  %call6 = tail call zeroext i1 %20(ptr noundef %dc, i8 noundef zeroext %conv, ptr noundef %3, i32 noundef 0) #6
  %21 = ptrtoint ptr %enable_display_pipe_clock_gating to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enable_display_pipe_clock_gating, align 8
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 8
  tail call void %22(ptr noundef %24, i1 noundef zeroext true) #6
  %inc = add nuw i32 %i.0149, 1
  %25 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe_count, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %29 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwseq, align 4
  tail call void @dce_clock_gating_power_up(ptr noundef %30, i1 noundef zeroext false) #6
  %link_count = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %31 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %link_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp12151.not = icmp eq i8 %32, 0
  br i1 %cmp12151.not, label %for.end.for.cond21.preheader_crit_edge, label %for.end.for.body14_crit_edge

for.end.for.body14_crit_edge:                     ; preds = %for.end
  br label %for.body14

for.end.for.cond21.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.body14.for.cond21.preheader_crit_edge, %for.end.for.cond21.preheader_crit_edge
  %33 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %res_pool, align 8
  %pipe_count23153 = getelementptr inbounds %struct.resource_pool, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %pipe_count23153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe_count23153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp24154.not = icmp eq i32 %36, 0
  br i1 %cmp24154.not, label %for.cond21.preheader.for.cond35.preheader_crit_edge, label %for.cond21.preheader.for.body26_crit_edge

for.cond21.preheader.for.body26_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body26

for.cond21.preheader.for.cond35.preheader_crit_edge: ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond35.preheader

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.end.for.body14_crit_edge
  %i.1152 = phi i32 [ %inc19, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.1152
  %37 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx15, align 4
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %38, i32 0, i32 38
  %39 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link_enc, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %hw_init = getelementptr inbounds %struct.link_encoder_funcs, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_init, align 4
  tail call void %44(ptr noundef %40) #6
  %inc19 = add nuw nsw i32 %i.1152, 1
  %45 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %link_count, align 8
  %conv11 = zext i8 %46 to i32
  %cmp12 = icmp ult i32 %inc19, %conv11
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.cond21.preheader_crit_edge

for.body14.for.cond21.preheader_crit_edge:        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond21.preheader

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.cond35.preheader:                             ; preds = %for.body26.for.cond35.preheader_crit_edge, %for.cond21.preheader.for.cond35.preheader_crit_edge
  %47 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %res_pool, align 8
  %audio_count156 = getelementptr inbounds %struct.resource_pool, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %audio_count156 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %audio_count156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp37157.not = icmp eq i32 %50, 0
  br i1 %cmp37157.not, label %for.cond35.preheader.for.cond47.preheader_crit_edge, label %for.cond35.preheader.for.body39_crit_edge

for.cond35.preheader.for.body39_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body39

for.cond35.preheader.for.cond47.preheader_crit_edge: ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond47.preheader

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond21.preheader.for.body26_crit_edge
  %51 = phi ptr [ %63, %for.body26.for.body26_crit_edge ], [ %34, %for.cond21.preheader.for.body26_crit_edge ]
  %i.2155 = phi i32 [ %inc33, %for.body26.for.body26_crit_edge ], [ 0, %for.cond21.preheader.for.body26_crit_edge ]
  %arrayidx28 = getelementptr %struct.resource_pool, ptr %51, i32 0, i32 6, i32 %i.2155
  %52 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx28, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %disable_vga = getelementptr inbounds %struct.timing_generator_funcs, ptr %55, i32 0, i32 22
  %56 = ptrtoint ptr %disable_vga to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %disable_vga, align 4
  tail call void %57(ptr noundef %53) #6
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 4
  %set_blank = getelementptr inbounds %struct.timing_generator_funcs, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %set_blank to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_blank, align 4
  tail call void %61(ptr noundef %53, i1 noundef zeroext true) #6
  %call31 = tail call zeroext i1 @hwss_wait_for_blank_complete(ptr noundef %53) #6
  %inc33 = add nuw i32 %i.2155, 1
  %62 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %res_pool, align 8
  %pipe_count23 = getelementptr inbounds %struct.resource_pool, ptr %63, i32 0, i32 19
  %64 = ptrtoint ptr %pipe_count23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pipe_count23, align 4
  %cmp24 = icmp ult i32 %inc33, %65
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.cond35.preheader_crit_edge

for.body26.for.cond35.preheader_crit_edge:        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond35.preheader

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.cond47.preheader:                             ; preds = %for.body39.for.cond47.preheader_crit_edge, %for.cond35.preheader.for.cond47.preheader_crit_edge
  %66 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %link_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp50160.not = icmp eq i8 %67, 0
  br i1 %cmp50160.not, label %for.cond47.preheader.for.end63_crit_edge, label %for.cond47.preheader.for.body52_crit_edge

for.cond47.preheader.for.body52_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body52

for.cond47.preheader.for.end63_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end63

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.cond35.preheader.for.body39_crit_edge
  %68 = phi ptr [ %76, %for.body39.for.body39_crit_edge ], [ %48, %for.cond35.preheader.for.body39_crit_edge ]
  %i.3158 = phi i32 [ %inc45, %for.body39.for.body39_crit_edge ], [ 0, %for.cond35.preheader.for.body39_crit_edge ]
  %arrayidx41 = getelementptr %struct.resource_pool, ptr %68, i32 0, i32 32, i32 %i.3158
  %69 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx41, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %hw_init43 = getelementptr inbounds %struct.audio_funcs, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %hw_init43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_init43, align 4
  tail call void %74(ptr noundef %70) #6
  %inc45 = add nuw i32 %i.3158, 1
  %75 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %res_pool, align 8
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %76, i32 0, i32 33
  %77 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %audio_count, align 4
  %cmp37 = icmp ult i32 %inc45, %78
  br i1 %cmp37, label %for.body39.for.body39_crit_edge, label %for.body39.for.cond47.preheader_crit_edge

for.body39.for.cond47.preheader_crit_edge:        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond47.preheader

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.body52:                                       ; preds = %if.end.for.body52_crit_edge, %for.cond47.preheader.for.body52_crit_edge
  %i.4162 = phi i32 [ %inc62, %if.end.for.body52_crit_edge ], [ 0, %for.cond47.preheader.for.body52_crit_edge ]
  %backlight.0161 = phi i32 [ %backlight.1, %if.end.for.body52_crit_edge ], [ 65535, %for.cond47.preheader.for.body52_crit_edge ]
  %arrayidx55 = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.4162
  %79 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx55, align 4
  %panel_cntl = getelementptr inbounds %struct.dc_link, ptr %80, i32 0, i32 37
  %81 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %panel_cntl, align 4
  %tobool.not = icmp eq ptr %82, null
  br i1 %tobool.not, label %for.body52.if.end_crit_edge, label %if.then

for.body52.if.end_crit_edge:                      ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %hw_init58 = getelementptr inbounds %struct.panel_cntl_funcs, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %hw_init58 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_init58, align 4
  %call60 = tail call i32 %86(ptr noundef nonnull %82) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body52.if.end_crit_edge
  %backlight.1 = phi i32 [ %call60, %if.then ], [ %backlight.0161, %for.body52.if.end_crit_edge ]
  %inc62 = add nuw nsw i32 %i.4162, 1
  %87 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %link_count, align 8
  %conv49 = zext i8 %88 to i32
  %cmp50 = icmp ult i32 %inc62, %conv49
  br i1 %cmp50, label %if.end.for.body52_crit_edge, label %if.end.for.end63_crit_edge

if.end.for.end63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end63

if.end.for.body52_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52

for.end63:                                        ; preds = %if.end.for.end63_crit_edge, %for.cond47.preheader.for.end63_crit_edge
  %backlight.0.lcssa = phi i32 [ 65535, %for.cond47.preheader.for.end63_crit_edge ], [ %backlight.1, %if.end.for.end63_crit_edge ]
  %89 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %res_pool, align 8
  %abm65 = getelementptr inbounds %struct.resource_pool, ptr %90, i32 0, i32 37
  %91 = ptrtoint ptr %abm65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %abm65, align 4
  %cmp66.not = icmp eq ptr %92, null
  br i1 %cmp66.not, label %for.end63.if.end80_crit_edge, label %if.end70

for.end63.if.end80_crit_edge:                     ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.end70:                                         ; preds = %for.end63
  %funcs69 = getelementptr inbounds %struct.abm, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %funcs69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %funcs69, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  tail call void %96(ptr noundef nonnull %92, i32 noundef %backlight.0.lcssa) #6
  %97 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %res_pool, align 8
  %dmcu72 = getelementptr inbounds %struct.resource_pool, ptr %98, i32 0, i32 38
  %99 = ptrtoint ptr %dmcu72 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dmcu72, align 4
  %cmp73.not = icmp eq ptr %100, null
  br i1 %cmp73.not, label %if.end70.if.end80_crit_edge, label %if.then77

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then77:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %funcs78 = getelementptr inbounds %struct.dmcu, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %funcs78 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %funcs78, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %is_dmcu_initialized, align 4
  %call79 = tail call zeroext i1 %104(ptr noundef nonnull %100) #6
  %dmcu_is_running = getelementptr inbounds %struct.abm, ptr %92, i32 0, i32 2
  %frombool = zext i1 %call79 to i8
  %105 = ptrtoint ptr %dmcu_is_running to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %frombool, ptr %dmcu_is_running, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end70.if.end80_crit_edge, %for.end63.if.end80_crit_edge
  %fbc_compressor = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 21
  %106 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fbc_compressor, align 4
  %tobool81.not = icmp eq ptr %107, null
  br i1 %tobool81.not, label %if.end80.if.end86_crit_edge, label %if.then82

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %funcs84 = getelementptr inbounds %struct.compressor, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %funcs84 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %funcs84, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  tail call void %111(ptr noundef nonnull %107) #6
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end80.if.end86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_power_down_fe(ptr noundef %dc, ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %0 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwseq, align 4
  %mi = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inst = getelementptr inbounds %struct.mem_input, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %6 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pipe_idx, align 8
  %conv = zext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %conv, %cond.false ]
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %8 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %9, i32 0, i32 4
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %cond, i32 1
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable_display_power_gating = getelementptr inbounds %struct.dce_hwseq, ptr %1, i32 0, i32 6, i32 11
  %12 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_display_power_gating, align 4
  %conv5 = trunc i32 %cond to i8
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dc_bios, align 4
  %call = tail call zeroext i1 %13(ptr noundef %dc, i8 noundef zeroext %conv5, ptr noundef %17, i32 noundef 1) #6
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %18 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res_pool, align 8
  %arrayidx6 = getelementptr %struct.resource_pool, ptr %19, i32 0, i32 3, i32 %cond
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void %25(ptr noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_apply_ctx_for_surface(ptr noundef %dc, ptr noundef readnone %stream, i32 noundef %num_planes, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_planes)
  %cmp = icmp eq i32 %num_planes, 0
  br i1 %cmp, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

if.end:                                           ; preds = %entry
  %fbc_compressor = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 21
  %0 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbc_compressor, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.compressor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %disable_fbc = getelementptr inbounds %struct.compressor_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disable_fbc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_fbc, align 4
  tail call void %5(ptr noundef nonnull %1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %6 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_pool, align 8
  %pipe_count48 = getelementptr inbounds %struct.resource_pool, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %pipe_count48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe_count48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp549.not = icmp eq i32 %9, 0
  br i1 %cmp549.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %update_plane_addr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 14
  %hwseq.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %stream7 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.050, i32 1
  %10 = ptrtoint ptr %stream7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream7, align 4
  %cmp8.not = icmp eq ptr %11, %stream
  br i1 %cmp8.not, label %if.end10, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.050
  %mi = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.050, i32 2, i32 2
  %12 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mi, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %allocate_mem_input = getelementptr inbounds %struct.mem_input_funcs, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %allocate_mem_input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %allocate_mem_input, align 4
  %18 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timing, align 8
  %20 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_total, align 8
  %22 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %23, 10
  %24 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %25 to i32
  tail call void %17(ptr noundef %13, i32 noundef %19, i32 noundef %21, i32 noundef %div, i32 noundef %conv) #6
  tail call fastcc void @dce110_program_front_end_for_pipe(ptr noundef %dc, ptr noundef %arrayidx)
  %26 = ptrtoint ptr %update_plane_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_plane_addr, align 4
  tail call void %27(ptr noundef %dc, ptr noundef %arrayidx) #6
  %bottom_pipe.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.050, i32 10
  %28 = ptrtoint ptr %bottom_pipe.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bottom_pipe.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.else61.i, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  %bottom_pipe2.i = getelementptr inbounds %struct.pipe_ctx, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %bottom_pipe2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bottom_pipe2.i, align 8
  %cmp.not.i = icmp eq ptr %31, null
  br i1 %cmp.not.i, label %do.body.i.do.end45.i_crit_edge, label %land.rhs.i

do.body.i.do.end45.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i

land.rhs.i:                                       ; preds = %do.body.i
  %.b83.i = load i1, ptr @program_surface_visibility.__already_done, align 1
  br i1 %.b83.i, label %land.rhs.i.if.then42.i_crit_edge, label %if.then11.i, !prof !123

land.rhs.i.if.then42.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42.i

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @program_surface_visibility.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2449, i32 noundef 9, ptr noundef null) #6
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.then11.i, %land.rhs.i.if.then42.i_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then42.i, %do.body.i.do.end45.i_crit_edge
  %32 = ptrtoint ptr %bottom_pipe.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bottom_pipe.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %visible.i = getelementptr inbounds %struct.dc_plane_state, ptr %35, i32 0, i32 29
  %36 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %visible.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool47.not.i = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 8
  %visible56.i = getelementptr inbounds %struct.dc_plane_state, ptr %39, i32 0, i32 29
  %40 = ptrtoint ptr %visible56.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %visible56.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool57.not.i = icmp eq i8 %41, 0
  %..i = select i1 %tobool57.not.i, i32 1, i32 2
  %spec.select.i = select i1 %tobool47.not.i, i1 %tobool57.not.i, i1 false
  %spec.select86.i = select i1 %tobool47.not.i, i32 0, i32 %..i
  br label %program_surface_visibility.exit

if.else61.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 8
  %visible63.i = getelementptr inbounds %struct.dc_plane_state, ptr %43, i32 0, i32 29
  %44 = ptrtoint ptr %visible63.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %visible63.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool64.not.i = icmp eq i8 %45, 0
  br label %program_surface_visibility.exit

program_surface_visibility.exit:                  ; preds = %if.else61.i, %do.end45.i
  %blank_target.0.off0.i = phi i1 [ %tobool64.not.i, %if.else61.i ], [ %spec.select.i, %do.end45.i ]
  %blender_mode.0.i = phi i32 [ 0, %if.else61.i ], [ %spec.select86.i, %do.end45.i ]
  %46 = ptrtoint ptr %hwseq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwseq.i, align 4
  %tg.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.050, i32 3, i32 2
  %48 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tg.i, align 8
  %inst.i = getelementptr inbounds %struct.timing_generator, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inst.i, align 4
  tail call void @dce_set_blender_mode(ptr noundef %47, i32 noundef %51, i32 noundef %blender_mode.0.i) #6
  %52 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tg.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %set_blank.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %set_blank.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_blank.i, align 4
  tail call void %57(ptr noundef %53, i1 noundef zeroext %blank_target.0.off0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %program_surface_visibility.exit, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.050, 1
  %58 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pipe_count, align 4
  %cmp5 = icmp ult i32 %inc, %61
  br i1 %cmp5, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end4.for.end_crit_edge
  %62 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fbc_compressor, align 4
  %tobool20.not = icmp eq ptr %63, null
  br i1 %tobool20.not, label %for.end.cleanup23_crit_edge, label %if.then21

for.end.cleanup23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @enable_fbc(ptr noundef %dc, ptr noundef %context)
  br label %cleanup23

cleanup23:                                        ; preds = %if.then21, %for.end.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce110_post_unlock_program_front_end(ptr nocapture noundef %dc, ptr nocapture noundef %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_plane_addr(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_ctx, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mi = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %mem_input_program_surface_flip_and_addr = getelementptr inbounds %struct.mem_input_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %mem_input_program_surface_flip_and_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_input_program_surface_flip_and_addr, align 4
  %flip_immediate = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %flip_immediate to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flip_immediate, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %call = tail call zeroext i1 %7(ptr noundef %3, ptr noundef nonnull %1, i1 noundef zeroext %tobool) #6
  %status = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 36
  %10 = call ptr @memcpy(ptr %status, ptr %1, i32 120)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce110_wait_for_mpcc_disconnect(ptr nocapture noundef %dc, ptr nocapture noundef %res_pool, ptr nocapture noundef %pipe_ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_update_pending_status(ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_ctx, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mi = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %mem_input_is_flip_pending = getelementptr inbounds %struct.mem_input_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %mem_input_is_flip_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_input_is_flip_pending, align 4
  %call = tail call zeroext i1 %7(ptr noundef %3) #6
  %is_flip_pending = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 36, i32 2
  %frombool = zext i1 %call to i8
  %8 = ptrtoint ptr %is_flip_pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %is_flip_pending, align 8
  br i1 %call, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %visible = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %visible, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mi, align 4
  %current_address = getelementptr inbounds %struct.mem_input, ptr %12, i32 0, i32 3
  %request_address = getelementptr inbounds %struct.mem_input, ptr %12, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %current_address, ptr %request_address, i32 120)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %current_address14 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 36, i32 1
  %14 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mi, align 4
  %current_address17 = getelementptr inbounds %struct.mem_input, ptr %15, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %current_address14, ptr %current_address17, i32 120)
  %17 = load ptr, ptr %mi, align 4
  %current_address20 = getelementptr inbounds %struct.mem_input, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %current_address20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_address20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp21 = icmp eq i32 %19, 1
  br i1 %cmp21, label %land.lhs.true22, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true22:                                  ; preds = %if.end12
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tg, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %is_stereo_left_eye = getelementptr inbounds %struct.timing_generator_funcs, ptr %23, i32 0, i32 45
  %24 = ptrtoint ptr %is_stereo_left_eye to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %is_stereo_left_eye, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %land.lhs.true22.cleanup_crit_edge, label %if.then25

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call zeroext i1 %25(ptr noundef %21) #6
  %lnot = xor i1 %call32, true
  %is_right_eye = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 36, i32 3
  %frombool34 = zext i1 %lnot to i8
  %26 = ptrtoint ptr %is_right_eye to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool34, ptr %is_right_eye, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %land.lhs.true22.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_pipe_control_lock(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_position(ptr nocapture noundef readonly %pipe_ctx, i32 noundef %num_pipes, ptr noundef %position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pipes)
  %cmp8 = icmp sgt i32 %num_pipes, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pipe_ctx, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %get_position = getelementptr inbounds %struct.timing_generator_funcs, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_position, align 4
  tail call void %7(ptr noundef %3, ptr noundef %position) #6
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %num_pipes
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_enable_per_frame_crtc_position_reset(ptr nocapture noundef readnone %dc, i32 noundef %group_size, ptr nocapture noundef readonly %grouped_pipes) #0 align 64 {
entry:
  %gsl_params = alloca %struct.dcp_gsl_params, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gsl_params) #6
  %gsl_master = getelementptr inbounds %struct.dcp_gsl_params, ptr %gsl_params, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_size)
  %cmp73 = icmp sgt i32 %group_size, 0
  %0 = ptrtoint ptr %gsl_params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %gsl_params, align 8
  br i1 %cmp73, label %entry.for.body_crit_edge, label %for.cond31.preheader.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond31.preheader.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29) #6
  br label %for.end43

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %grouped_pipes, i32 %i.074
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %2, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tg, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %setup_global_swap_lock = getelementptr inbounds %struct.timing_generator_funcs, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %setup_global_swap_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup_global_swap_lock, align 4
  call void %8(ptr noundef %4, ptr noundef nonnull %gsl_params) #6
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %group_size
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body:                                          ; preds = %for.body
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %group_size)
  %cmp575 = icmp sgt i32 %group_size, 1
  br i1 %cmp575, label %do.body.for.body6_crit_edge, label %do.body19.thread

do.body.for.body6_crit_edge:                      ; preds = %do.body
  br label %for.body6

do.body19.thread:                                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29) #6
  br label %for.cond31.preheader

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %do.body.for.body6_crit_edge
  %i.176 = phi i32 [ %inc17, %for.body6.for.body6_crit_edge ], [ 1, %do.body.for.body6_crit_edge ]
  %arrayidx7 = getelementptr ptr, ptr %grouped_pipes, i32 %i.176
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %tg9 = getelementptr inbounds %struct.pipe_ctx, ptr %10, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %tg9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tg9, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %enable_crtc_reset = getelementptr inbounds %struct.timing_generator_funcs, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %enable_crtc_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enable_crtc_reset, align 4
  %17 = ptrtoint ptr %gsl_master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gsl_master, align 4
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stream, align 4
  %triggered_crtc_reset = getelementptr inbounds %struct.dc_stream_state, ptr %20, i32 0, i32 43
  call void %16(ptr noundef %12, i32 noundef %18, ptr noundef %triggered_crtc_reset) #6
  %inc17 = add nuw nsw i32 %i.176, 1
  %exitcond83.not = icmp eq i32 %inc17, %group_size
  br i1 %exitcond83.not, label %do.body19, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

do.body19:                                        ; preds = %for.body6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29) #6
  br i1 %cmp575, label %do.body19.for.body24_crit_edge, label %do.body19.for.cond31.preheader_crit_edge

do.body19.for.cond31.preheader_crit_edge:         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond31.preheader

do.body19.for.body24_crit_edge:                   ; preds = %do.body19
  br label %for.body24

for.cond31.preheader:                             ; preds = %wait_for_reset_trigger_to_occur.exit.for.cond31.preheader_crit_edge, %do.body19.for.cond31.preheader_crit_edge, %do.body19.thread
  br i1 %cmp73, label %for.cond31.preheader.for.body33_crit_edge, label %for.cond31.preheader.for.end43_crit_edge

for.cond31.preheader.for.end43_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

for.cond31.preheader.for.body33_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body33

for.body24:                                       ; preds = %wait_for_reset_trigger_to_occur.exit.for.body24_crit_edge, %do.body19.for.body24_crit_edge
  %i.278 = phi i32 [ %inc29, %wait_for_reset_trigger_to_occur.exit.for.body24_crit_edge ], [ 1, %do.body19.for.body24_crit_edge ]
  %arrayidx25 = getelementptr ptr, ptr %grouped_pipes, i32 %i.278
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx25, align 4
  %tg27 = getelementptr inbounds %struct.pipe_ctx, ptr %22, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %tg27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tg27, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %for.body24
  %i.03.i = phi i32 [ 0, %for.body24 ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %is_counter_moving.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %is_counter_moving.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %is_counter_moving.i, align 4
  %call.i = call zeroext i1 %28(ptr noundef %24) #6
  br i1 %call.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #6
  br label %do.body14.i

if.end.i:                                         ; preds = %for.body.i
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %did_triggered_reset_occur.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %did_triggered_reset_occur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %did_triggered_reset_occur.i, align 4
  %call2.i = call zeroext i1 %32(ptr noundef %24) #6
  br i1 %call2.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %i.03.i) #6
  br label %wait_for_reset_trigger_to_occur.exit

if.end7.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %24, align 4
  %wait_for_state.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %wait_for_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wait_for_state.i, align 4
  call void %36(ptr noundef %24, i32 noundef 1) #6
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %24, align 4
  %wait_for_state10.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %wait_for_state10.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wait_for_state10.i, align 4
  call void %40(ptr noundef %24, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end7.i.do.body14.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end7.i.do.body14.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.end7.i.do.body14.i_crit_edge, %do.body.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #6
  br label %wait_for_reset_trigger_to_occur.exit

wait_for_reset_trigger_to_occur.exit:             ; preds = %do.body14.i, %if.then3.i
  %inc29 = add nuw nsw i32 %i.278, 1
  %exitcond84.not = icmp eq i32 %inc29, %group_size
  br i1 %exitcond84.not, label %wait_for_reset_trigger_to_occur.exit.for.cond31.preheader_crit_edge, label %wait_for_reset_trigger_to_occur.exit.for.body24_crit_edge

wait_for_reset_trigger_to_occur.exit.for.body24_crit_edge: ; preds = %wait_for_reset_trigger_to_occur.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24

wait_for_reset_trigger_to_occur.exit.for.cond31.preheader_crit_edge: ; preds = %wait_for_reset_trigger_to_occur.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond31.preheader

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.cond31.preheader.for.body33_crit_edge
  %i.380 = phi i32 [ %inc42, %for.body33.for.body33_crit_edge ], [ 0, %for.cond31.preheader.for.body33_crit_edge ]
  %arrayidx34 = getelementptr ptr, ptr %grouped_pipes, i32 %i.380
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx34, align 4
  %tg36 = getelementptr inbounds %struct.pipe_ctx, ptr %42, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %tg36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tg36, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tear_down_global_swap_lock = getelementptr inbounds %struct.timing_generator_funcs, ptr %46, i32 0, i32 34
  %47 = ptrtoint ptr %tear_down_global_swap_lock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tear_down_global_swap_lock, align 4
  call void %48(ptr noundef %44) #6
  %inc42 = add nuw nsw i32 %i.380, 1
  %exitcond85.not = icmp eq i32 %inc42, %group_size
  br i1 %exitcond85.not, label %for.body33.for.end43_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33

for.body33.for.end43_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

for.end43:                                        ; preds = %for.body33.for.end43_crit_edge, %for.cond31.preheader.for.end43_crit_edge, %for.cond31.preheader.thread
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gsl_params) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_enable_timing_synchronization(ptr nocapture noundef readnone %dc, i32 noundef %group_index, i32 noundef %group_size, ptr nocapture noundef readonly %grouped_pipes) #0 align 64 {
entry:
  %gsl_params = alloca %struct.dcp_gsl_params, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gsl_params) #6
  %0 = ptrtoint ptr %gsl_params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %gsl_params, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.33) #6
  %1 = ptrtoint ptr %grouped_pipes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %grouped_pipes, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %2, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst, align 4
  %gsl_master = getelementptr inbounds %struct.dcp_gsl_params, ptr %gsl_params, i32 0, i32 1
  %7 = ptrtoint ptr %gsl_master to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gsl_master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_size)
  %cmp97 = icmp sgt i32 %group_size, 0
  br i1 %cmp97, label %entry.for.body_crit_edge, label %do.body43.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.body43.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.34) #6
  br label %do.body59

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr ptr, ptr %grouped_pipes, i32 %i.098
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %tg3 = getelementptr inbounds %struct.pipe_ctx, ptr %9, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %tg3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tg3, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %setup_global_swap_lock = getelementptr inbounds %struct.timing_generator_funcs, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %setup_global_swap_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setup_global_swap_lock, align 4
  call void %15(ptr noundef %11, ptr noundef nonnull %gsl_params) #6
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %group_size
  br i1 %exitcond.not, label %do.body7, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body7:                                         ; preds = %for.body
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %group_size)
  %cmp1199 = icmp sgt i32 %group_size, 1
  br i1 %cmp1199, label %do.body7.for.body12_crit_edge, label %do.body7.do.body43_crit_edge

do.body7.do.body43_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

do.body7.for.body12_crit_edge:                    ; preds = %do.body7
  br label %for.body12

for.cond24.preheader:                             ; preds = %for.body12
  br i1 %cmp1199, label %for.cond24.preheader.do.body27_crit_edge, label %for.cond24.preheader.do.body43_crit_edge

for.cond24.preheader.do.body43_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

for.cond24.preheader.do.body27_crit_edge:         ; preds = %for.cond24.preheader
  br label %do.body27

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %do.body7.for.body12_crit_edge
  %i.1100 = phi i32 [ %inc22, %for.body12.for.body12_crit_edge ], [ 1, %do.body7.for.body12_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %grouped_pipes, i32 %i.1100
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx13, align 4
  %tg15 = getelementptr inbounds %struct.pipe_ctx, ptr %17, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %tg15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg15, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %enable_reset_trigger = getelementptr inbounds %struct.timing_generator_funcs, ptr %21, i32 0, i32 31
  %22 = ptrtoint ptr %enable_reset_trigger to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable_reset_trigger, align 4
  %24 = ptrtoint ptr %gsl_params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gsl_params, align 8
  call void %23(ptr noundef %19, i32 noundef %25) #6
  %inc22 = add nuw nsw i32 %i.1100, 1
  %exitcond107.not = icmp eq i32 %inc22, %group_size
  br i1 %exitcond107.not, label %for.cond24.preheader, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

do.body27:                                        ; preds = %wait_for_reset_trigger_to_occur.exit.do.body27_crit_edge, %for.cond24.preheader.do.body27_crit_edge
  %i.2102 = phi i32 [ %inc41, %wait_for_reset_trigger_to_occur.exit.do.body27_crit_edge ], [ 1, %for.cond24.preheader.do.body27_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29) #6
  %arrayidx30 = getelementptr ptr, ptr %grouped_pipes, i32 %i.2102
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx30, align 4
  %tg32 = getelementptr inbounds %struct.pipe_ctx, ptr %27, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %tg32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tg32, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %do.body27
  %i.03.i = phi i32 [ 0, %do.body27 ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %is_counter_moving.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %is_counter_moving.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %is_counter_moving.i, align 4
  %call.i = call zeroext i1 %33(ptr noundef %29) #6
  br i1 %call.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #6
  br label %do.body14.i

if.end.i:                                         ; preds = %for.body.i
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %did_triggered_reset_occur.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %35, i32 0, i32 23
  %36 = ptrtoint ptr %did_triggered_reset_occur.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %did_triggered_reset_occur.i, align 4
  %call2.i = call zeroext i1 %37(ptr noundef %29) #6
  br i1 %call2.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %i.03.i) #6
  br label %wait_for_reset_trigger_to_occur.exit

if.end7.i:                                        ; preds = %if.end.i
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %29, align 4
  %wait_for_state.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %wait_for_state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wait_for_state.i, align 4
  call void %41(ptr noundef %29, i32 noundef 1) #6
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %29, align 4
  %wait_for_state10.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %wait_for_state10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wait_for_state10.i, align 4
  call void %45(ptr noundef %29, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end7.i.do.body14.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end7.i.do.body14.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.end7.i.do.body14.i_crit_edge, %do.body.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #6
  br label %wait_for_reset_trigger_to_occur.exit

wait_for_reset_trigger_to_occur.exit:             ; preds = %do.body14.i, %if.then3.i
  %46 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx30, align 4
  %tg35 = getelementptr inbounds %struct.pipe_ctx, ptr %47, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %tg35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tg35, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %disable_reset_trigger = getelementptr inbounds %struct.timing_generator_funcs, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %disable_reset_trigger to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %disable_reset_trigger, align 4
  call void %53(ptr noundef %49) #6
  %inc41 = add nuw nsw i32 %i.2102, 1
  %exitcond108.not = icmp eq i32 %inc41, %group_size
  br i1 %exitcond108.not, label %wait_for_reset_trigger_to_occur.exit.do.body43_crit_edge, label %wait_for_reset_trigger_to_occur.exit.do.body27_crit_edge

wait_for_reset_trigger_to_occur.exit.do.body27_crit_edge: ; preds = %wait_for_reset_trigger_to_occur.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

wait_for_reset_trigger_to_occur.exit.do.body43_crit_edge: ; preds = %wait_for_reset_trigger_to_occur.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

do.body43:                                        ; preds = %wait_for_reset_trigger_to_occur.exit.do.body43_crit_edge, %for.cond24.preheader.do.body43_crit_edge, %do.body7.do.body43_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.34) #6
  br i1 %cmp97, label %do.body43.for.body48_crit_edge, label %do.body43.do.body59_crit_edge

do.body43.do.body59_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59

do.body43.for.body48_crit_edge:                   ; preds = %do.body43
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %do.body43.for.body48_crit_edge
  %i.3104 = phi i32 [ %inc57, %for.body48.for.body48_crit_edge ], [ 0, %do.body43.for.body48_crit_edge ]
  %arrayidx49 = getelementptr ptr, ptr %grouped_pipes, i32 %i.3104
  %54 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx49, align 4
  %tg51 = getelementptr inbounds %struct.pipe_ctx, ptr %55, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %tg51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tg51, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tear_down_global_swap_lock = getelementptr inbounds %struct.timing_generator_funcs, ptr %59, i32 0, i32 34
  %60 = ptrtoint ptr %tear_down_global_swap_lock to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tear_down_global_swap_lock, align 4
  call void %61(ptr noundef %57) #6
  %inc57 = add nuw nsw i32 %i.3104, 1
  %exitcond109.not = icmp eq i32 %inc57, %group_size
  br i1 %exitcond109.not, label %for.body48.do.body59_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48

for.body48.do.body59_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59

do.body59:                                        ; preds = %for.body48.do.body59_crit_edge, %do.body43.do.body59_crit_edge, %do.body43.thread
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gsl_params) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_drr(ptr nocapture noundef readonly %pipe_ctx, i32 noundef %num_pipes, [4 x i32] %adjust.coerce) #0 align 64 {
entry:
  %params = alloca %struct.drr_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adjust.coerce.fca.0.extract = extractvalue [4 x i32] %adjust.coerce, 0
  %adjust.coerce.fca.1.extract = extractvalue [4 x i32] %adjust.coerce, 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #6
  %0 = getelementptr inbounds i8, ptr %params, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %vertical_total_max = getelementptr inbounds %struct.drr_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %vertical_total_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %adjust.coerce.fca.1.extract, ptr %vertical_total_max, align 4
  %3 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %adjust.coerce.fca.0.extract, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pipes)
  %cmp25 = icmp sgt i32 %num_pipes, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adjust.coerce.fca.1.extract)
  %cmp5.not = icmp eq i32 %adjust.coerce.fca.1.extract, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adjust.coerce.fca.0.extract)
  %cmp7.not = icmp eq i32 %adjust.coerce.fca.0.extract, 0
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp7.not
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pipe_ctx, i32 %i.026
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %set_drr = getelementptr inbounds %struct.timing_generator_funcs, ptr %9, i32 0, i32 36
  %10 = ptrtoint ptr %set_drr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_drr, align 4
  call void %11(ptr noundef %7, ptr noundef nonnull %params) #6
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tg10 = getelementptr inbounds %struct.pipe_ctx, ptr %13, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %tg10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg10, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %set_static_screen_control = getelementptr inbounds %struct.timing_generator_funcs, ptr %17, i32 0, i32 39
  %18 = ptrtoint ptr %set_static_screen_control to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_static_screen_control, align 4
  call void %19(ptr noundef %15, i32 noundef 128, i32 noundef 2) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %num_pipes
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_static_screen_control(ptr nocapture noundef readonly %pipe_ctx, i32 noundef %num_pipes, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pipes)
  %tobool17.not = icmp eq i32 %num_pipes, 0
  br i1 %tobool17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cursor_update = getelementptr inbounds %struct.anon.65, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %cursor_update to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cursor_update, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool8.not = icmp eq i8 %1, 0
  %surface_update = getelementptr inbounds %struct.anon.65, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %surface_update to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surface_update, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %overlay_update = getelementptr inbounds %struct.anon.65, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %overlay_update to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %overlay_update, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 256
  %or5 = or i32 %spec.select, 128
  %triggers.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  %or10 = or i32 %triggers.1, 2
  %triggers.2 = select i1 %tobool8.not, i32 %triggers.1, i32 %or10
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %params, align 4, !range !124
  %8 = zext i8 %7 to i32
  %triggers.3 = or i32 %triggers.2, %8
  %9 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe_ctx, align 4
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %fbc_compressor = getelementptr inbounds %struct.dc, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbc_compressor, align 4
  %tobool20.not = icmp eq ptr %18, null
  %or22 = or i32 %triggers.3, 132
  %spec.select44 = select i1 %tobool20.not, i32 %triggers.3, i32 %or22
  %num_frames = getelementptr inbounds %struct.dc_static_screen_params, ptr %params, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx25 = getelementptr ptr, ptr %pipe_ctx, i32 %i.046
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx25, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %20, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tg, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %set_static_screen_control = getelementptr inbounds %struct.timing_generator_funcs, ptr %24, i32 0, i32 39
  %25 = ptrtoint ptr %set_static_screen_control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_static_screen_control, align 4
  %27 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_frames, align 4
  tail call void %26(ptr noundef %22, i32 noundef %spec.select44, i32 noundef %28) #6
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %num_pipes
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_set_cursor_position(ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  %pos_cpy = alloca %struct.dc_cursor_position, align 4
  %param = alloca %struct.dc_cursor_mi_param, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pos_cpy) #6
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %cursor_position = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 40
  %2 = call ptr @memcpy(ptr %pos_cpy, ptr %cursor_position, i32 20)
  %ipp1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %ipp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipp1, align 8
  %mi3 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mi3, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %param) #6
  %7 = getelementptr inbounds i8, ptr %param, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !125
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 12
  %9 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %10, 10
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %param, align 8
  %ref_clk_khz = getelementptr inbounds %struct.dc_cursor_mi_param, ptr %param, i32 0, i32 1
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res_pool, align 8
  %ref_clocks = getelementptr inbounds %struct.resource_pool, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %ref_clocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_clocks, align 4
  %20 = ptrtoint ptr %ref_clk_khz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ref_clk_khz, align 4
  %viewport = getelementptr inbounds %struct.dc_cursor_mi_param, ptr %param, i32 0, i32 2
  %viewport7 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3
  %21 = call ptr @memcpy(ptr %viewport, ptr %viewport7, i32 16)
  %h_scale_ratio = getelementptr inbounds %struct.dc_cursor_mi_param, ptr %param, i32 0, i32 3
  %ratios = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 6
  %22 = ptrtoint ptr %ratios to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ratios, align 8
  %24 = ptrtoint ptr %h_scale_ratio to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %h_scale_ratio, align 8
  %v_scale_ratio = getelementptr inbounds %struct.dc_cursor_mi_param, ptr %param, i32 0, i32 4
  %vert = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %vert to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vert, align 8
  %27 = ptrtoint ptr %v_scale_ratio to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %v_scale_ratio, align 8
  %rotation = getelementptr inbounds %struct.dc_cursor_mi_param, ptr %param, i32 0, i32 5
  %28 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe_ctx, align 8
  %rotation13 = getelementptr inbounds %struct.dc_plane_state, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %rotation13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rotation13, align 4
  %32 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rotation, align 8
  %mirror = getelementptr inbounds %struct.dc_cursor_mi_param, ptr %param, i32 0, i32 6
  %horizontal_mirror = getelementptr inbounds %struct.dc_plane_state, ptr %29, i32 0, i32 31
  %33 = ptrtoint ptr %horizontal_mirror to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %horizontal_mirror, align 2, !range !124
  %35 = ptrtoint ptr %mirror to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %mirror, align 4
  %translate_by_source = getelementptr inbounds %struct.dc_cursor_position, ptr %pos_cpy, i32 0, i32 5
  %36 = ptrtoint ptr %translate_by_source to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %translate_by_source, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool15.not = icmp eq i8 %37, 0
  br i1 %tobool15.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %src_rect = getelementptr inbounds %struct.dc_plane_state, ptr %29, i32 0, i32 4
  %38 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_rect, align 8
  %40 = ptrtoint ptr %pos_cpy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pos_cpy, align 4
  %add = add i32 %41, %39
  store i32 %add, ptr %pos_cpy, align 4
  %y = getelementptr inbounds %struct.dc_plane_state, ptr %29, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y, align 4
  %y20 = getelementptr inbounds %struct.dc_cursor_position, ptr %pos_cpy, i32 0, i32 1
  %44 = ptrtoint ptr %y20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %y20, align 4
  %add21 = add i32 %45, %43
  store i32 %add21, ptr %y20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %46 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp = icmp eq i32 %47, 2
  br i1 %cmp, label %if.then23, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable = getelementptr inbounds %struct.dc_cursor_position, ptr %pos_cpy, i32 0, i32 4
  %48 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %enable, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  %top_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 9
  %49 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %top_pipe, align 4
  %tobool25.not = icmp eq ptr %50, null
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %land.lhs.true

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end24
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %cmp29.not = icmp eq ptr %29, %52
  br i1 %cmp29.not, label %land.lhs.true.if.end32_crit_edge, label %if.then30

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %enable31 = getelementptr inbounds %struct.dc_cursor_position, ptr %pos_cpy, i32 0, i32 4
  %53 = ptrtoint ptr %enable31 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %enable31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %funcs = getelementptr inbounds %struct.input_pixel_processor, ptr %4, i32 0, i32 2
  %54 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %funcs, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool33.not = icmp eq ptr %57, null
  br i1 %tobool33.not, label %if.end32.if.end37_crit_edge, label %if.then34

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void %57(ptr noundef %4, ptr noundef nonnull %pos_cpy, ptr noundef nonnull %param) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %6, align 8
  %set_cursor_position = getelementptr inbounds %struct.mem_input_funcs, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %set_cursor_position to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_cursor_position, align 4
  %tobool39.not = icmp eq ptr %61, null
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void %61(ptr noundef %6, ptr noundef nonnull %pos_cpy, ptr noundef nonnull %param) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %param) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pos_cpy) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_set_cursor_attribute(ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %cursor_attributes = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 39
  %ipp = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipp, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.input_pixel_processor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %ipp_cursor_set_attributes = getelementptr inbounds %struct.ipp_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ipp_cursor_set_attributes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipp_cursor_set_attributes, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef nonnull %3, ptr noundef %cursor_attributes) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mi = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mi, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end.if.end24_crit_edge, label %land.lhs.true12

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true12:                                  ; preds = %if.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %set_cursor_attributes = getelementptr inbounds %struct.mem_input_funcs, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %set_cursor_attributes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_cursor_attributes, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %land.lhs.true12.if.end24_crit_edge, label %if.then17

land.lhs.true12.if.end24_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef nonnull %9, ptr noundef %cursor_attributes) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %land.lhs.true12.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %xfm = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %xfm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfm, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.end24.if.end40_crit_edge, label %land.lhs.true27

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true27:                                  ; preds = %if.end24
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %set_cursor_attributes31 = getelementptr inbounds %struct.transform_funcs, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %set_cursor_attributes31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_cursor_attributes31, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %land.lhs.true27.if.end40_crit_edge, label %if.then33

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then33:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef nonnull %15, ptr noundef %cursor_attributes) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %land.lhs.true27.if.end40_crit_edge, %if.end24.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @program_gamut_remap(ptr nocapture noundef readonly %pipe_ctx) #0 align 64 {
entry:
  %adjust = alloca %struct.xfm_grph_csc_adjustment, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %adjust) #6
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = call ptr @memset(ptr %adjust, i32 0, i32 104)
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream, align 4
  %enable_remap = getelementptr inbounds %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %enable_remap to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_remap, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gamut_adjust_type = getelementptr inbounds %struct.xfm_grph_csc_adjustment, ptr %adjust, i32 0, i32 1
  %5 = ptrtoint ptr %gamut_adjust_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %gamut_adjust_type, align 8
  %gamut_remap_matrix6 = getelementptr inbounds %struct.dc_stream_state, ptr %2, i32 0, i32 18
  %6 = ptrtoint ptr %gamut_remap_matrix6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gamut_remap_matrix6, align 8
  %8 = ptrtoint ptr %adjust to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %adjust, align 8
  %arrayidx.1 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 1
  %arrayidx7.1 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx7.1, align 8
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx.1, align 8
  %arrayidx.2 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 2
  %arrayidx7.2 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx7.2, align 8
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 3
  %arrayidx7.3 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx7.3, align 8
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx.3, align 8
  %arrayidx.4 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 4
  %arrayidx7.4 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx7.4, align 8
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx.4, align 8
  %arrayidx.5 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 5
  %arrayidx7.5 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx7.5, align 8
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx.5, align 8
  %arrayidx.6 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 6
  %arrayidx7.6 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx7.6, align 8
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx.6, align 8
  %arrayidx.7 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 7
  %arrayidx7.7 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 7
  %27 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx7.7, align 8
  %29 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx.7, align 8
  %arrayidx.8 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 8
  %arrayidx7.8 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx7.8 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx7.8, align 8
  %32 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx.8, align 8
  %arrayidx.9 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 9
  %arrayidx7.9 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 9
  %33 = ptrtoint ptr %arrayidx7.9 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx7.9, align 8
  %35 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx.9, align 8
  %arrayidx.10 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 10
  %arrayidx7.10 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 10
  %36 = ptrtoint ptr %arrayidx7.10 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx7.10, align 8
  %38 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx.10, align 8
  %arrayidx.11 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 11
  %arrayidx7.11 = getelementptr %struct.dc_stream_state, ptr %2, i32 0, i32 18, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx7.11 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx7.11, align 8
  %41 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx.11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xfm = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %xfm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xfm, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %transform_set_gamut_remap = getelementptr inbounds %struct.transform_funcs, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %transform_set_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %transform_set_gamut_remap, align 4
  call void %47(ptr noundef %43, ptr noundef nonnull %adjust) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %adjust) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @program_output_csc(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %pipe_ctx, i32 noundef %colorspace, ptr nocapture noundef readnone %matrix, i32 noundef %opp_id) #0 align 64 {
entry:
  %tbl_entry = alloca %struct.out_csc_color_matrix, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tbl_entry) #6
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %enable_adjustment = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %enable_adjustment to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_adjustment, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 11
  %5 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 10
  %6 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 9
  %7 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 8
  %8 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 7
  %9 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 6
  %10 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 5
  %11 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 4
  %12 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 2
  %14 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 1
  %15 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %output_color_space, align 4
  %csc_color_matrix6 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %csc_color_matrix6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %csc_color_matrix6, align 2
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %15, align 4
  %arrayidx.1 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.1, align 2
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %14, align 2
  %arrayidx.2 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.2, align 2
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %13, align 4
  %arrayidx.3 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.3, align 2
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %12, align 2
  %arrayidx.4 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.4, align 2
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %11, align 4
  %arrayidx.5 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.5, align 2
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %10, align 2
  %arrayidx.6 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.6, align 2
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %9, align 4
  %arrayidx.7 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.7, align 2
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %8, align 2
  %arrayidx.8 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 8
  %42 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.8, align 2
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %7, align 4
  %arrayidx.9 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 9
  %45 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.9, align 2
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %6, align 2
  %arrayidx.10 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 10
  %48 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.10, align 2
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %5, align 4
  %arrayidx.11 = getelementptr %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 0, i32 11
  %51 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.11, align 2
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %4, align 2
  %54 = ptrtoint ptr %tbl_entry to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %17, ptr %tbl_entry, align 4
  %xfm = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %xfm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xfm, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %opp_set_csc_adjustment = getelementptr inbounds %struct.transform_funcs, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %opp_set_csc_adjustment to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %opp_set_csc_adjustment, align 4
  call void %60(ptr noundef %56, ptr noundef nonnull %tbl_entry) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tbl_entry) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_clock_gating_power_up(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hwss_wait_for_blank_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce110_program_front_end_for_pipe(ptr noundef %dc, ptr noundef %pipe_ctx) unnamed_addr #0 align 64 {
entry:
  %color.i = alloca %struct.tg_color, align 2
  %default_adjust.i = alloca %struct.default_adjustment, align 4
  %adjust = alloca %struct.xfm_grph_csc_adjustment, align 8
  %tbl_entry = alloca %struct.out_csc_color_matrix, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mi1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %mi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mi1, align 4
  %2 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %adjust) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tbl_entry) #6
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %4 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwseq, align 4
  %6 = call ptr @memset(ptr %tbl_entry, i32 0, i32 28)
  %gamut_adjust_type = getelementptr inbounds %struct.xfm_grph_csc_adjustment, ptr %adjust, i32 0, i32 1
  %inst = getelementptr inbounds %struct.mem_input, ptr %1, i32 0, i32 4
  %7 = call ptr @memset(ptr %adjust, i32 0, i32 104)
  %8 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inst, align 8
  tail call void @dce_enable_fe_clock(ptr noundef %5, i32 noundef %9, i1 noundef zeroext true) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %default_adjust.i) #6
  %10 = getelementptr inbounds i8, ptr %default_adjust.i, i32 24
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %12 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipe_ctx, align 8
  %color_space.i = getelementptr inbounds %struct.dc_plane_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %color_space.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %color_space.i, align 8
  %in_color_space.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 2
  %16 = ptrtoint ptr %in_color_space.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %in_color_space.i, align 4
  %stream.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %17 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream.i, align 4
  %output_color_space.i = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %output_color_space.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_color_space.i, align 4
  %out_color_space.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 1
  %21 = ptrtoint ptr %out_color_space.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %out_color_space.i, align 4
  %csc_adjust_type.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 5
  %22 = ptrtoint ptr %csc_adjust_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %csc_adjust_type.i, align 4
  %format.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 9
  %23 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format.i, align 8
  %surface_pixel_format.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 4
  %25 = ptrtoint ptr %surface_pixel_format.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %surface_pixel_format.i, align 4
  %display_color_depth.i = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 5, i32 16
  %26 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %display_color_depth.i, align 8
  %color_depth.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 3
  %28 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %color_depth.i, align 4
  %depth.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 10, i32 4
  %29 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %depth.i, align 4
  %31 = ptrtoint ptr %default_adjust.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %default_adjust.i, align 4
  %xfm.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xfm.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %opp_set_csc_default.i = getelementptr inbounds %struct.transform_funcs, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %opp_set_csc_default.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %opp_set_csc_default.i, align 4
  call void %37(ptr noundef %33, ptr noundef nonnull %default_adjust.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %default_adjust.i) #6
  %38 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stream.i, align 4
  %enable_adjustment = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 1
  %40 = ptrtoint ptr %enable_adjustment to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enable_adjustment, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not = icmp eq i8 %41, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %42 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 11
  %43 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 10
  %44 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 9
  %45 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 8
  %46 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 7
  %47 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 6
  %48 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 5
  %49 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 4
  %50 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 3
  %51 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 2
  %52 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 1
  %53 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 20
  %54 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %output_color_space, align 4
  %56 = ptrtoint ptr %tbl_entry to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tbl_entry, align 4
  %csc_color_matrix9 = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 19
  %57 = ptrtoint ptr %csc_color_matrix9 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %csc_color_matrix9, align 2
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %53, align 4
  %arrayidx.1 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.1, align 2
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %52, align 2
  %arrayidx.2 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.2, align 2
  %65 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %51, align 4
  %arrayidx.3 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.3, align 2
  %68 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %50, align 2
  %arrayidx.4 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 4
  %69 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.4, align 2
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %49, align 4
  %arrayidx.5 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 5
  %72 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.5, align 2
  %74 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %48, align 2
  %arrayidx.6 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 6
  %75 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.6, align 2
  %77 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %47, align 4
  %arrayidx.7 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 7
  %78 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.7, align 2
  %80 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %46, align 2
  %arrayidx.8 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 8
  %81 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.8, align 2
  %83 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %45, align 4
  %arrayidx.9 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 9
  %84 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.9, align 2
  %86 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %44, align 2
  %arrayidx.10 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 10
  %87 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.10, align 2
  %89 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %43, align 4
  %arrayidx.11 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 11
  %90 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.11, align 2
  %92 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %42, align 2
  %93 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %xfm.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %opp_set_csc_adjustment = getelementptr inbounds %struct.transform_funcs, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %opp_set_csc_adjustment to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %opp_set_csc_adjustment, align 4
  call void %98(ptr noundef %94, ptr noundef nonnull %tbl_entry) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %99 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stream.i, align 4
  %enable_remap = getelementptr inbounds %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 1
  %101 = ptrtoint ptr %enable_remap to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %enable_remap, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool15.not = icmp eq i8 %102, 0
  br i1 %tobool15.not, label %if.end.if.end33_crit_edge, label %if.then19

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %gamut_adjust_type to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %gamut_adjust_type, align 8
  %gamut_remap_matrix27 = getelementptr inbounds %struct.dc_stream_state, ptr %100, i32 0, i32 18
  %104 = ptrtoint ptr %gamut_remap_matrix27 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %gamut_remap_matrix27, align 8
  %106 = ptrtoint ptr %adjust to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %adjust, align 8
  %arrayidx25.1 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 1
  %arrayidx29.1 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 1
  %107 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx29.1, align 8
  %109 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %arrayidx25.1, align 8
  %arrayidx25.2 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 2
  %arrayidx29.2 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 2
  %110 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx29.2, align 8
  %112 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %arrayidx25.2, align 8
  %arrayidx25.3 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 3
  %arrayidx29.3 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 3
  %113 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx29.3, align 8
  %115 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %arrayidx25.3, align 8
  %arrayidx25.4 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 4
  %arrayidx29.4 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 4
  %116 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx29.4, align 8
  %118 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %arrayidx25.4, align 8
  %arrayidx25.5 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 5
  %arrayidx29.5 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 5
  %119 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx29.5, align 8
  %121 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %arrayidx25.5, align 8
  %arrayidx25.6 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 6
  %arrayidx29.6 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 6
  %122 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx29.6, align 8
  %124 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %arrayidx25.6, align 8
  %arrayidx25.7 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 7
  %arrayidx29.7 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 7
  %125 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx29.7, align 8
  %127 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %arrayidx25.7, align 8
  %arrayidx25.8 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 8
  %arrayidx29.8 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 8
  %128 = ptrtoint ptr %arrayidx29.8 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx29.8, align 8
  %130 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %arrayidx25.8, align 8
  %arrayidx25.9 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 9
  %arrayidx29.9 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 9
  %131 = ptrtoint ptr %arrayidx29.9 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx29.9, align 8
  %133 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %arrayidx25.9, align 8
  %arrayidx25.10 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 10
  %arrayidx29.10 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 10
  %134 = ptrtoint ptr %arrayidx29.10 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx29.10, align 8
  %136 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %arrayidx25.10, align 8
  %arrayidx25.11 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 11
  %arrayidx29.11 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 11
  %137 = ptrtoint ptr %arrayidx29.11 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx29.11, align 8
  %139 = ptrtoint ptr %arrayidx25.11 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %arrayidx25.11, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then19, %if.end.if.end33_crit_edge
  %140 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %xfm.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 8
  %transform_set_gamut_remap = getelementptr inbounds %struct.transform_funcs, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %transform_set_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %transform_set_gamut_remap, align 4
  call void %145(ptr noundef %141, ptr noundef nonnull %adjust) #6
  %bottom_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 10
  %146 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bottom_pipe, align 8
  %cmp39 = icmp ne ptr %147, null
  %lb_params = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 10
  %frombool = zext i1 %cmp39 to i8
  %148 = ptrtoint ptr %lb_params to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %frombool, ptr %lb_params, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %color.i) #6
  %149 = call ptr @memset(ptr %color.i, i32 0, i32 6)
  %visual_confirm.i = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 2
  %150 = ptrtoint ptr %visual_confirm.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %visual_confirm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.i = icmp eq i32 %151, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @get_surface_visual_confirm_color(ptr noundef %pipe_ctx, ptr noundef nonnull %color.i) #6
  br label %if.end.i

if.else.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %stream.i, align 4
  %output_color_space.i259 = getelementptr inbounds %struct.dc_stream_state, ptr %153, i32 0, i32 20
  %154 = ptrtoint ptr %output_color_space.i259 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %output_color_space.i259, align 4
  call void @color_space_to_black_color(ptr noundef %dc, i32 noundef %155, ptr noundef nonnull %color.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %156 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %xfm.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  %transform_set_pixel_storage_depth.i = getelementptr inbounds %struct.transform_funcs, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %transform_set_pixel_storage_depth.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %transform_set_pixel_storage_depth.i, align 4
  %162 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %depth.i, align 4
  %164 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %stream.i, align 4
  %bit_depth_params.i = getelementptr inbounds %struct.dc_stream_state, ptr %165, i32 0, i32 33
  call void %161(ptr noundef %157, i32 noundef %163, ptr noundef %bit_depth_params.i) #6
  %tg.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %166 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tg.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %set_overscan_blank_color.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %169, i32 0, i32 19
  %170 = ptrtoint ptr %set_overscan_blank_color.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %set_overscan_blank_color.i, align 4
  %tobool.not.i = icmp eq ptr %171, null
  br i1 %tobool.not.i, label %if.end.i.program_scaler.exit_crit_edge, label %if.then6.i

if.end.i.program_scaler.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %program_scaler.exit

if.then6.i:                                       ; preds = %if.end.i
  %172 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %stream.i, align 4
  %pixel_encoding.i = getelementptr inbounds %struct.dc_stream_state, ptr %173, i32 0, i32 5, i32 17
  %174 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %cmp8.i = icmp eq i32 %175, 4
  br i1 %cmp8.i, label %if.then9.i, label %if.then6.i.if.end10.i_crit_edge

if.then6.i.if.end10.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %color_g_y.i = getelementptr inbounds %struct.tg_color, ptr %color.i, i32 0, i32 1
  %176 = ptrtoint ptr %color_g_y.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %color_g_y.i, align 2
  %178 = ptrtoint ptr %color.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %color.i, align 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end10.i_crit_edge
  %179 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %167, align 4
  %set_overscan_blank_color14.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %180, i32 0, i32 19
  %181 = ptrtoint ptr %set_overscan_blank_color14.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %set_overscan_blank_color14.i, align 4
  call void %182(ptr noundef %167, ptr noundef nonnull %color.i) #6
  br label %program_scaler.exit

program_scaler.exit:                              ; preds = %if.end10.i, %if.end.i.program_scaler.exit_crit_edge
  %plane_res.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2
  %183 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %xfm.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 8
  %transform_set_scaler.i = getelementptr inbounds %struct.transform_funcs, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %transform_set_scaler.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %transform_set_scaler.i, align 4
  call void %188(ptr noundef %184, ptr noundef %plane_res.i) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %color.i) #6
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 8
  %mem_input_program_surface_config = getelementptr inbounds %struct.mem_input_funcs, ptr %190, i32 0, i32 11
  %191 = ptrtoint ptr %mem_input_program_surface_config to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mem_input_program_surface_config, align 4
  %format = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 22
  %193 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %format, align 8
  %tiling_info = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 8
  %plane_size = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 7
  %rotation = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 23
  %195 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rotation, align 4
  call void %192(ptr noundef %1, i32 noundef %194, ptr noundef %tiling_info, ptr noundef %plane_size, i32 noundef %196, ptr noundef null, i1 noundef zeroext false) #6
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 8
  %set_blank = getelementptr inbounds %struct.mem_input_funcs, ptr %198, i32 0, i32 14
  %199 = ptrtoint ptr %set_blank to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %set_blank, align 4
  %tobool44.not = icmp eq ptr %200, null
  br i1 %tobool44.not, label %program_scaler.exit.if.end50_crit_edge, label %if.then45

program_scaler.exit.if.end50_crit_edge:           ; preds = %program_scaler.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then45:                                        ; preds = %program_scaler.exit
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pipe_ctx, align 8
  %visible = getelementptr inbounds %struct.dc_plane_state, ptr %202, i32 0, i32 29
  %203 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %visible, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool49 = icmp ne i8 %204, 0
  call void %200(ptr noundef %1, i1 noundef zeroext %tobool49) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %program_scaler.exit.if.end50_crit_edge
  %config = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4
  %205 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %config, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool51.not = icmp eq i8 %206, 0
  br i1 %tobool51.not, label %if.end50.if.end59_crit_edge, label %if.then52

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %1, align 8
  %mem_input_program_pte_vm = getelementptr inbounds %struct.mem_input_funcs, ptr %208, i32 0, i32 8
  %209 = ptrtoint ptr %mem_input_program_pte_vm to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mem_input_program_pte_vm, align 4
  %211 = ptrtoint ptr %mi1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mi1, align 4
  %213 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %format, align 8
  %215 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %rotation, align 4
  call void %210(ptr noundef %212, i32 noundef %214, ptr noundef %tiling_info, i32 noundef %216) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %if.end50.if.end59_crit_edge
  %217 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pipe_ctx, align 8
  %update_flags = getelementptr inbounds %struct.dc_plane_state, ptr %218, i32 0, i32 33
  %219 = ptrtoint ptr %update_flags to i32
  call void @__asan_load4_noabort(i32 %219)
  %bf.load = load i32, ptr %update_flags, align 4
  %220 = and i32 %bf.load, 1050688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %if.end59.if.end78_crit_edge, label %if.then75

if.end59.if.end78_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then75:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %set_input_transfer_func = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 6, i32 7
  %222 = ptrtoint ptr %set_input_transfer_func to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %set_input_transfer_func, align 4
  %call = call zeroext i1 %223(ptr noundef %dc, ptr noundef %pipe_ctx, ptr noundef %218) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end59.if.end78_crit_edge
  %224 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pipe_ctx, align 8
  %update_flags80 = getelementptr inbounds %struct.dc_plane_state, ptr %225, i32 0, i32 33
  %226 = ptrtoint ptr %update_flags80 to i32
  call void @__asan_load4_noabort(i32 %226)
  %bf.load81 = load i32, ptr %update_flags80, align 4
  %227 = and i32 %bf.load81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool84.not = icmp eq i32 %227, 0
  br i1 %tobool84.not, label %if.end78.do.body_crit_edge, label %if.then85

if.end78.do.body_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then85:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %set_output_transfer_func = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 6, i32 8
  %228 = ptrtoint ptr %set_output_transfer_func to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %set_output_transfer_func, align 8
  %230 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %stream.i, align 4
  %call88 = call zeroext i1 %229(ptr noundef %dc, ptr noundef %pipe_ctx, ptr noundef %231) #6
  br label %do.body

do.body:                                          ; preds = %if.then85, %if.end78.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce110_program_front_end_for_pipe, %if.then95)) #6
          to label %do.body132 [label %if.then95], !srcloc !126

if.then95:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %232 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %pipe_idx, align 8
  %conv96 = zext i8 %233 to i32
  %234 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pipe_ctx, align 8
  %236 = getelementptr inbounds %struct.dc_plane_address, ptr %235, i32 0, i32 2
  %high_part = getelementptr inbounds %struct.anon.0, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %high_part to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %high_part, align 4
  %239 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %236, align 8
  %src_rect = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 4
  %241 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %src_rect, align 8
  %y = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 4, i32 1
  %243 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %y, align 4
  %width = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 4, i32 2
  %245 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 4, i32 3
  %247 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %height, align 4
  %dst_rect = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 5
  %249 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dst_rect, align 8
  %y113 = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 5, i32 1
  %251 = ptrtoint ptr %y113 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %y113, align 4
  %width116 = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 5, i32 2
  %253 = ptrtoint ptr %width116 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %width116, align 8
  %height119 = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 5, i32 3
  %255 = ptrtoint ptr %height119 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %height119, align 4
  %clip_rect = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 6
  %257 = ptrtoint ptr %clip_rect to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %clip_rect, align 8
  %y124 = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 6, i32 1
  %259 = ptrtoint ptr %y124 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %y124, align 4
  %width127 = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 6, i32 2
  %261 = ptrtoint ptr %width127 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %width127, align 8
  %height130 = getelementptr inbounds %struct.dc_plane_state, ptr %235, i32 0, i32 6, i32 3
  %263 = ptrtoint ptr %height130 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %height130, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.26, i32 noundef %conv96, ptr noundef %235, i32 noundef %238, i32 noundef %240, i32 noundef %242, i32 noundef %244, i32 noundef %246, i32 noundef %248, i32 noundef %250, i32 noundef %252, i32 noundef %254, i32 noundef %256, i32 noundef %258, i32 noundef %260, i32 noundef %262, i32 noundef %264) #6
  br label %do.body132

do.body132:                                       ; preds = %if.then95, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce110_program_front_end_for_pipe, %if.then144)) #6
          to label %do.end179 [label %if.then144], !srcloc !126

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #8
  %pipe_idx145 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %265 = ptrtoint ptr %pipe_idx145 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %pipe_idx145, align 8
  %conv146 = zext i8 %266 to i32
  %viewport = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3
  %width149 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 2
  %267 = ptrtoint ptr %width149 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %width149, align 4
  %height153 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 3
  %269 = ptrtoint ptr %height153 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %height153, align 4
  %271 = ptrtoint ptr %viewport to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %viewport, align 4
  %y161 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 1
  %273 = ptrtoint ptr %y161 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %y161, align 4
  %recout = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5
  %width164 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 2
  %275 = ptrtoint ptr %width164 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %width164, align 4
  %height168 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 3
  %277 = ptrtoint ptr %height168 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %height168, align 4
  %279 = ptrtoint ptr %recout to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %recout, align 4
  %y176 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 1
  %281 = ptrtoint ptr %y176 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %y176, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.27, i32 noundef %conv146, i32 noundef %268, i32 noundef %270, i32 noundef %272, i32 noundef %274, i32 noundef %276, i32 noundef %278, i32 noundef %280, i32 noundef %282) #6
  br label %do.end179

do.end179:                                        ; preds = %if.then144, %do.body132
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tbl_entry) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %adjust) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_enable_fe_clock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_surface_visual_confirm_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @color_space_to_black_color(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_set_blender_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @init_pipes(ptr nocapture noundef %dc, ptr nocapture noundef %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_reset_hw_ctx_wrap(ptr noundef %dc, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %res_ctx2 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %dynamic_audio = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 16
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %disable_plane = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0107 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107
  %arrayidx4 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %i.0107
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %top_pipe = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107, i32 9
  %4 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %top_pipe, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %stream6 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %i.0107, i32 1
  %6 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.then9.thread, label %lor.lhs.false8

if.then9.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clock_source105 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107, i32 5
  %8 = ptrtoint ptr %clock_source105 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_source105, align 8
  br label %if.then15

lor.lhs.false8:                                   ; preds = %if.end
  %call = tail call zeroext i1 @pipe_need_reprogram(ptr noundef %arrayidx, ptr noundef %arrayidx4) #6
  br i1 %call, label %if.then9, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %lor.lhs.false8
  %10 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %stream6, align 4
  %clock_source = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107, i32 5
  %11 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clock_source, align 8
  %tobool11.not = icmp eq ptr %.pr, null
  br i1 %tobool11.not, label %if.then9.if.then15_crit_edge, label %lor.lhs.false12

if.then9.if.then15_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false12:                                  ; preds = %if.then9
  %dpms_off = getelementptr inbounds %struct.dc_stream_state, ptr %.pr, i32 0, i32 37
  %13 = ptrtoint ptr %dpms_off to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dpms_off, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %lor.lhs.false12.if.then15_crit_edge, label %lor.lhs.false12.if.end34_crit_edge

lor.lhs.false12.if.end34_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

lor.lhs.false12.if.then15_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false12.if.then15_crit_edge, %if.then9.if.then15_crit_edge, %if.then9.thread
  %15 = phi ptr [ %9, %if.then9.thread ], [ %12, %lor.lhs.false12.if.then15_crit_edge ], [ %12, %if.then9.if.then15_crit_edge ]
  tail call void @core_link_disable_stream(ptr noundef %arrayidx) #6
  %audio = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107, i32 3, i32 4
  %16 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %audio, align 8
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.then15.if.end34_crit_edge, label %if.then17

if.then15.if.end34_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then17:                                        ; preds = %if.then15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %az_disable = getelementptr inbounds %struct.audio_funcs, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %az_disable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %az_disable, align 4
  tail call void %21(ptr noundef nonnull %17) #6
  %22 = ptrtoint ptr %dynamic_audio to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dynamic_audio, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %if.then17.if.end34_crit_edge, label %if.then25

if.then17.if.end34_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_state, align 4
  %res_ctx27 = getelementptr inbounds %struct.dc_state, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %res_pool, align 8
  %28 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %audio, align 8
  tail call void @update_audio_usage(ptr noundef %res_ctx27, ptr noundef %27, ptr noundef %29, i1 noundef zeroext false) #6
  %30 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %audio, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.then17.if.end34_crit_edge, %if.then15.if.end34_crit_edge, %lor.lhs.false12.if.end34_crit_edge
  %31 = phi ptr [ %15, %if.then15.if.end34_crit_edge ], [ %15, %if.then25 ], [ %15, %if.then17.if.end34_crit_edge ], [ %12, %lor.lhs.false12.if.end34_crit_edge ]
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107, i32 3, i32 2
  %32 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tg, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %set_blank = getelementptr inbounds %struct.timing_generator_funcs, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %set_blank to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_blank, align 4
  tail call void %37(ptr noundef %33, i1 noundef zeroext true) #6
  %38 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tg, align 8
  %call41 = tail call zeroext i1 @hwss_wait_for_blank_complete(ptr noundef %39) #6
  br i1 %call41, label %if.end34.if.end43_crit_edge, label %if.then42

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_reset_hw_ctx_wrap, i32 noundef 2193) #6
  tail call void @kgdb_breakpoint() #6
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end34.if.end43_crit_edge
  %40 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tg, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %disable_crtc = getelementptr inbounds %struct.timing_generator_funcs, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %disable_crtc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %disable_crtc, align 4
  %call49 = tail call zeroext i1 %45(ptr noundef %41) #6
  %mi = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0107, i32 2, i32 2
  %46 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mi, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %free_mem_input = getelementptr inbounds %struct.mem_input_funcs, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %free_mem_input to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %free_mem_input, align 4
  %52 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %current_state, align 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %stream_count, align 8
  %conv54 = zext i8 %55 to i32
  tail call void %51(ptr noundef %47, i32 noundef %conv54) #6
  %tobool55.not = icmp eq ptr %31, null
  br i1 %tobool55.not, label %if.end43.if.end64_crit_edge, label %land.lhs.true

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end43
  %56 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %res_pool, align 8
  %call58 = tail call i32 @resource_get_clock_source_reference(ptr noundef %res_ctx2, ptr noundef %57, ptr noundef nonnull %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %land.lhs.true.if.end64_crit_edge

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %31, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call63 = tail call zeroext i1 %61(ptr noundef nonnull %31) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %land.lhs.true.if.end64_crit_edge, %if.end43.if.end64_crit_edge
  %62 = ptrtoint ptr %disable_plane to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %disable_plane, align 4
  tail call void %63(ptr noundef %dc, ptr noundef %arrayidx) #6
  %64 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %stream, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_set_input_transfer_func(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef readonly %plane_state) #0 align 64 {
entry:
  %prescale_params = alloca %struct.ipp_prescale_params, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipp1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %ipp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipp1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prescale_params) #6
  %2 = ptrtoint ptr %prescale_params to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 12884901888, ptr %prescale_params, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_transfer_func = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 11
  %3 = ptrtoint ptr %in_transfer_func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %in_transfer_func, align 4
  %tobool.not = icmp eq ptr %4, null
  %format.i = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 22
  %5 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format.i, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %6, label %land.end.i [
    i32 2, label %sw.bb.i
    i32 3, label %if.end.sw.bb1.i_crit_edge
    i32 4, label %if.end.sw.bb1.i_crit_edge70
    i32 5, label %if.end.sw.bb3.i_crit_edge
    i32 6, label %if.end.sw.bb3.i_crit_edge71
    i32 8, label %if.end.sw.bb5.i_crit_edge
    i32 9, label %if.end.sw.bb5.i_crit_edge72
    i32 11, label %if.end.sw.bb5.i_crit_edge73
  ]

if.end.sw.bb5.i_crit_edge73:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge72:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb3.i_crit_edge71:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end.sw.bb1.i_crit_edge70:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %scale.i = getelementptr inbounds %struct.ipp_prescale_params, ptr %prescale_params, i32 0, i32 2
  %8 = ptrtoint ptr %scale.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8322, ptr %scale.i, align 2
  br label %build_prescale_params.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge70
  %scale2.i = getelementptr inbounds %struct.ipp_prescale_params, ptr %prescale_params, i32 0, i32 2
  %9 = ptrtoint ptr %scale2.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8224, ptr %scale2.i, align 2
  br label %build_prescale_params.exit

sw.bb3.i:                                         ; preds = %if.end.sw.bb3.i_crit_edge, %if.end.sw.bb3.i_crit_edge71
  %scale4.i = getelementptr inbounds %struct.ipp_prescale_params, ptr %prescale_params, i32 0, i32 2
  %10 = ptrtoint ptr %scale4.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8200, ptr %scale4.i, align 2
  br label %build_prescale_params.exit

sw.bb5.i:                                         ; preds = %if.end.sw.bb5.i_crit_edge, %if.end.sw.bb5.i_crit_edge72, %if.end.sw.bb5.i_crit_edge73
  %scale6.i = getelementptr inbounds %struct.ipp_prescale_params, ptr %prescale_params, i32 0, i32 2
  %11 = ptrtoint ptr %scale6.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 8192, ptr %scale6.i, align 2
  br label %build_prescale_params.exit

land.end.i:                                       ; preds = %if.end
  %.b51.i = load i1, ptr @build_prescale_params.__already_done, align 1
  br i1 %.b51.i, label %land.end.i.if.then41.i_crit_edge, label %if.then.i, !prof !123

land.end.i.if.then41.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @build_prescale_params.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #6
  br label %if.then41.i

if.then41.i:                                      ; preds = %if.then.i, %land.end.i.if.then41.i_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %build_prescale_params.exit

build_prescale_params.exit:                       ; preds = %if.then41.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %funcs = getelementptr inbounds %struct.input_pixel_processor, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %ipp_program_prescale = getelementptr inbounds %struct.ipp_funcs, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ipp_program_prescale to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipp_program_prescale, align 4
  call void %15(ptr noundef nonnull %1, ptr noundef nonnull %prescale_params) #6
  %gamma_correction = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 10
  %16 = ptrtoint ptr %gamma_correction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gamma_correction, align 8
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %build_prescale_params.exit.if.end12_crit_edge, label %land.lhs.true

build_prescale_params.exit.if.end12_crit_edge:    ; preds = %build_prescale_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %build_prescale_params.exit
  %is_identity = getelementptr inbounds %struct.dc_gamma, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %is_identity to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_identity, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %20 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %format.i, align 8
  %call = call zeroext i1 @dce_use_lut(i32 noundef %21) #6
  br i1 %call, label %if.then9, label %land.lhs.true8.if.end12_crit_edge

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %ipp_program_input_lut = getelementptr inbounds %struct.ipp_funcs, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ipp_program_input_lut to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipp_program_input_lut, align 4
  %26 = ptrtoint ptr %gamma_correction to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gamma_correction, align 8
  call void %25(ptr noundef nonnull %1, ptr noundef %27) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true8.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %build_prescale_params.exit.if.end12_crit_edge
  br i1 %tobool.not, label %if.end12.cleanup.sink.split_crit_edge, label %if.else

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end12
  %type = getelementptr inbounds %struct.dc_transfer_func, ptr %4, i32 0, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %29, label %if.else.cleanup_crit_edge [
    i32 0, label %if.then17
    i32 2, label %if.else.cleanup.sink.split_crit_edge
  ]

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.else
  %tf18 = getelementptr inbounds %struct.dc_transfer_func, ptr %4, i32 0, i32 2
  %31 = ptrtoint ptr %tf18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tf18, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %32, label %if.then17.cleanup_crit_edge [
    i32 0, label %if.then17.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb21
    i32 3, label %sw.bb24
  ]

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb21:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb24, %sw.bb21, %if.then17.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb21 ], [ 0, %sw.bb24 ], [ 1, %if.end12.cleanup.sink.split_crit_edge ], [ 1, %if.then17.cleanup.sink.split_crit_edge ], [ 0, %if.else.cleanup.sink.split_crit_edge ]
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %ipp_set_degamma = getelementptr inbounds %struct.ipp_funcs, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %ipp_set_degamma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ipp_set_degamma, align 4
  call void %37(ptr noundef nonnull %1, i32 noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.then17.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ true, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prescale_params) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_set_output_transfer_func(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef readonly %stream) #0 align 64 {
entry:
  %fmt.i.i = alloca %struct.custom_float_format, align 4
  %agg.tmp.i431.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i432.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp4.i.i = alloca %struct.fixed31_32, align 8
  %seg_distr.i = alloca [16 x i32], align 4
  %tmp.i = alloca %struct.fixed31_32, align 8
  %tmp91.i = alloca %struct.fixed31_32, align 8
  %tmp110.i = alloca %struct.fixed31_32, align 8
  %tmp141.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xfm1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %xfm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xfm1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %opp_power_on_regamma_lut = getelementptr inbounds %struct.transform_funcs, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %opp_power_on_regamma_lut to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opp_power_on_regamma_lut, align 4
  tail call void %5(ptr noundef %1, i1 noundef zeroext true) #6
  %regamma_params = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4
  %hw_points_num = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %hw_points_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %hw_points_num, align 8
  %out_transfer_func = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 17
  %7 = ptrtoint ptr %out_transfer_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_transfer_func, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else.thread, label %land.lhs.true

if.else.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %seg_distr.i) #6
  br label %if.else14

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.dc_transfer_func, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %tf = getelementptr inbounds %struct.dc_transfer_func, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %opp_set_regamma_mode = getelementptr inbounds %struct.transform_funcs, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %opp_set_regamma_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %opp_set_regamma_mode, align 4
  tail call void %16(ptr noundef %1, i32 noundef 1) #6
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %seg_distr.i) #6
  %17 = call ptr @memset(ptr %seg_distr.i, i32 255, i32 64)
  %cmp1.i = icmp eq ptr %regamma_params, null
  br i1 %cmp1.i, label %if.else.if.else14_crit_edge, label %lor.lhs.false2.i

if.else.if.else14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else14

lor.lhs.false2.i:                                 ; preds = %if.else
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp3.i = icmp eq i32 %19, 2
  br i1 %cmp3.i, label %lor.lhs.false2.i.if.else14_crit_edge, label %if.end.i

lor.lhs.false2.i.if.else14_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else14

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %20 = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 1
  %rgb_resulted4.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 2
  %21 = call ptr @memset(ptr %regamma_params, i32 0, i32 19216)
  %tf.i = getelementptr inbounds %struct.dc_transfer_func, ptr %8, i32 0, i32 2
  %22 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp6.i = icmp eq i32 %23, 2
  %24 = ptrtoint ptr %seg_distr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %seg_distr.i, align 4
  %arrayidx.1.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 9
  %33 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 10
  br i1 %cmp6.i, label %for.body.preheader.i, label %if.else.i

for.body.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 12
  %36 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 13
  %37 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 14
  %38 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 15
  %39 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %arrayidx.15.i, align 4
  br label %for.body40.lr.ph.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx.10.i, align 4
  %arrayidx20.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 11
  %41 = call ptr @memset(ptr %arrayidx20.i, i32 255, i32 20)
  br label %for.body40.lr.ph.i

for.body40.lr.ph.i:                               ; preds = %if.else.i, %for.body.preheader.i
  %region_start.0.i = phi i32 [ -10, %if.else.i ], [ -11, %for.body.preheader.i ]
  %region_end.0.i = phi i32 [ 1, %if.else.i ], [ 5, %for.body.preheader.i ]
  %42 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp30.not.10.i = icmp eq i32 %43, -1
  %shl.10.i = shl nuw i32 1, %43
  %shl.10.i.op = add nuw i32 %shl.10.i, 160
  %hw_points.1.10.i = select i1 %cmp30.not.10.i, i32 160, i32 %shl.10.i.op
  %arrayidx29.11.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 11
  %44 = ptrtoint ptr %arrayidx29.11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx29.11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp30.not.11.i = icmp eq i32 %45, -1
  %shl.11.i = shl nuw i32 1, %45
  %add33.11.i = select i1 %cmp30.not.11.i, i32 0, i32 %shl.11.i
  %hw_points.1.11.i = add i32 %add33.11.i, %hw_points.1.10.i
  %arrayidx29.12.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 12
  %46 = ptrtoint ptr %arrayidx29.12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx29.12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp30.not.12.i = icmp eq i32 %47, -1
  %shl.12.i = shl nuw i32 1, %47
  %add33.12.i = select i1 %cmp30.not.12.i, i32 0, i32 %shl.12.i
  %hw_points.1.12.i = add i32 %hw_points.1.11.i, %add33.12.i
  %arrayidx29.13.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 13
  %48 = ptrtoint ptr %arrayidx29.13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx29.13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp30.not.13.i = icmp eq i32 %49, -1
  %shl.13.i = shl nuw i32 1, %49
  %add33.13.i = select i1 %cmp30.not.13.i, i32 0, i32 %shl.13.i
  %hw_points.1.13.i = add i32 %hw_points.1.12.i, %add33.13.i
  %arrayidx29.14.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 14
  %50 = ptrtoint ptr %arrayidx29.14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx29.14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp30.not.14.i = icmp eq i32 %51, -1
  %shl.14.i = shl nuw i32 1, %51
  %add33.14.i = select i1 %cmp30.not.14.i, i32 0, i32 %shl.14.i
  %hw_points.1.14.i = add i32 %hw_points.1.13.i, %add33.14.i
  %arrayidx29.15.i = getelementptr inbounds [16 x i32], ptr %seg_distr.i, i32 0, i32 15
  %52 = ptrtoint ptr %arrayidx29.15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx29.15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp30.not.15.i = icmp eq i32 %53, -1
  %shl.15.i = shl nuw i32 1, %53
  %add33.15.i = select i1 %cmp30.not.15.i, i32 0, i32 %shl.15.i
  %hw_points.1.15.i = add i32 %hw_points.1.14.i, %add33.15.i
  %sub.i = sub nsw i32 %region_end.0.i, %region_start.0.i
  %sub49.i = add i32 %hw_points.1.15.i, -1
  %54 = getelementptr inbounds %struct.dc_transfer_func, ptr %8, i32 0, i32 4
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.inc66.i.for.body40.i_crit_edge, %for.body40.lr.ph.i
  %k.1522.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %inc67.i, %for.inc66.i.for.body40.i_crit_edge ]
  %j.0521.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %j.1.lcssa.i, %for.inc66.i.for.body40.i_crit_edge ]
  %arrayidx41.i = getelementptr [16 x i32], ptr %seg_distr.i, i32 0, i32 %k.1522.i
  %55 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx41.i, align 4
  %div427.i = lshr i32 16, %56
  %add43.i = add nsw i32 %k.1522.i, %region_start.0.i
  %add44.i = shl i32 %add43.i, 4
  %mul.i = add nsw i32 %add44.i, 400
  %add46.i = add nsw i32 %add44.i, 416
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %add46.i)
  %cmp47515.i = icmp uge i32 %mul.i, %add46.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0521.i, i32 %sub49.i)
  %cmp50516.i = icmp eq i32 %j.0521.i, %sub49.i
  %or.cond428517.i = select i1 %cmp47515.i, i1 true, i1 %cmp50516.i
  br i1 %or.cond428517.i, label %for.body40.i.for.inc66.i_crit_edge, label %for.body40.i.if.end52.i_crit_edge

for.body40.i.if.end52.i_crit_edge:                ; preds = %for.body40.i
  br label %if.end52.i

for.body40.i.for.inc66.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.i

if.end52.i:                                       ; preds = %if.end52.i.if.end52.i_crit_edge, %for.body40.i.if.end52.i_crit_edge
  %j.1519.i = phi i32 [ %inc62.i, %if.end52.i.if.end52.i_crit_edge ], [ %j.0521.i, %for.body40.i.if.end52.i_crit_edge ]
  %i.1518.i = phi i32 [ %add64.i, %if.end52.i.if.end52.i_crit_edge ], [ %mul.i, %for.body40.i.if.end52.i_crit_edge ]
  %arrayidx53.i = getelementptr %struct.pwl_result_data, ptr %rgb_resulted4.i, i32 %j.1519.i
  %arrayidx55.i = getelementptr [1025 x %struct.fixed31_32], ptr %54, i32 0, i32 %i.1518.i
  %57 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx55.i, align 8
  %59 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx53.i, align 8
  %green.i = getelementptr %struct.pwl_result_data, ptr %rgb_resulted4.i, i32 %j.1519.i, i32 1
  %arrayidx58.i = getelementptr %struct.dc_transfer_func, ptr %8, i32 0, i32 4, i32 0, i32 1, i32 %i.1518.i
  %60 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx58.i, align 8
  %62 = ptrtoint ptr %green.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %green.i, align 8
  %blue.i = getelementptr %struct.pwl_result_data, ptr %rgb_resulted4.i, i32 %j.1519.i, i32 2
  %arrayidx61.i = getelementptr %struct.dc_transfer_func, ptr %8, i32 0, i32 4, i32 0, i32 2, i32 %i.1518.i
  %63 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx61.i, align 8
  %65 = ptrtoint ptr %blue.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %blue.i, align 8
  %inc62.i = add i32 %j.1519.i, 1
  %add64.i = add i32 %i.1518.i, %div427.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add64.i, i32 %add46.i)
  %cmp47.i = icmp uge i32 %add64.i, %add46.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc62.i, i32 %sub49.i)
  %cmp50.i = icmp eq i32 %inc62.i, %sub49.i
  %or.cond428.i = select i1 %cmp47.i, i1 true, i1 %cmp50.i
  br i1 %or.cond428.i, label %if.end52.i.for.inc66.i_crit_edge, label %if.end52.i.if.end52.i_crit_edge

if.end52.i.if.end52.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.end52.i.for.inc66.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %if.end52.i.for.inc66.i_crit_edge, %for.body40.i.for.inc66.i_crit_edge
  %j.1.lcssa.i = phi i32 [ %j.0521.i, %for.body40.i.for.inc66.i_crit_edge ], [ %inc62.i, %if.end52.i.for.inc66.i_crit_edge ]
  %inc67.i = add nuw nsw i32 %k.1522.i, 1
  %exitcond.not.i = icmp eq i32 %inc67.i, %sub.i
  br i1 %exitcond.not.i, label %dc_fixpt_pow.exit443.i, label %for.inc66.i.for.body40.i_crit_edge

for.inc66.i.for.body40.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body40.i

dc_fixpt_pow.exit443.i:                           ; preds = %for.inc66.i
  %add69.i = shl nuw nsw i32 %region_end.0.i, 4
  %mul70.i = add nuw nsw i32 %add69.i, 400
  %arrayidx72.i = getelementptr %struct.pwl_result_data, ptr %rgb_resulted4.i, i32 %sub49.i
  %arrayidx75.i = getelementptr [1025 x %struct.fixed31_32], ptr %54, i32 0, i32 %mul70.i
  %66 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx75.i, align 8
  %68 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx72.i, align 8
  %green78.i = getelementptr %struct.pwl_result_data, ptr %rgb_resulted4.i, i32 %sub49.i, i32 1
  %arrayidx80.i = getelementptr %struct.dc_transfer_func, ptr %8, i32 0, i32 4, i32 0, i32 1, i32 %mul70.i
  %69 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx80.i, align 8
  %71 = ptrtoint ptr %green78.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %green78.i, align 8
  %blue83.i = getelementptr %struct.pwl_result_data, ptr %rgb_resulted4.i, i32 %sub49.i, i32 2
  %arrayidx85.i = getelementptr %struct.dc_transfer_func, ptr %8, i32 0, i32 4, i32 0, i32 2, i32 %mul70.i
  %72 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx85.i, align 8
  %74 = ptrtoint ptr %blue83.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %blue83.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %conv1.i.i = zext i32 %region_start.0.i to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %.fca.0.insert266.i = insertvalue [1 x i64] poison, i64 %shl.i.i, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i.i) #6
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i.i, [1 x i64] [i64 8589934592]) #6, !noalias !127
  %75 = ptrtoint ptr %agg.tmp4.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %.fca.0.load.i.i = load i64, ptr %agg.tmp4.i.i, align 8, !noalias !127
  %.fca.0.insert.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i.i, [1 x i64] %.fca.0.insert.i.i, [1 x i64] %.fca.0.insert266.i) #6, !noalias !127
  %76 = ptrtoint ptr %agg.tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %.fca.0.load10.i.i = load i64, ptr %agg.tmp.i.i, align 8, !noalias !127
  %.fca.0.insert11.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, [1 x i64] %.fca.0.insert11.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i.i) #6
  %77 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tmp.i, align 8
  %79 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  %arrayidx89.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp91.i) #6
  %conv1.i429.i = zext i32 %region_end.0.i to i64
  %shl.i430.i = shl nuw nsw i64 %conv1.i429.i, 32
  %.fca.0.insert260.i = insertvalue [1 x i64] poison, i64 %shl.i430.i, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i431.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp4.i432.i) #6
  call void @dc_fixpt_log(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp4.i432.i, [1 x i64] [i64 8589934592]) #6, !noalias !130
  %80 = ptrtoint ptr %agg.tmp4.i432.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %.fca.0.load.i438.i = load i64, ptr %agg.tmp4.i432.i, align 8, !noalias !130
  %.fca.0.insert.i439.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i438.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i431.i, [1 x i64] %.fca.0.insert.i439.i, [1 x i64] %.fca.0.insert260.i) #6, !noalias !130
  %81 = ptrtoint ptr %agg.tmp.i431.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %.fca.0.load10.i440.i = load i64, ptr %agg.tmp.i431.i, align 8, !noalias !130
  %.fca.0.insert11.i441.i = insertvalue [1 x i64] poison, i64 %.fca.0.load10.i440.i, 0
  call void @dc_fixpt_exp(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp91.i, [1 x i64] %.fca.0.insert11.i441.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i431.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp4.i432.i) #6
  %82 = ptrtoint ptr %tmp91.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %tmp91.i, align 8
  %84 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %arrayidx89.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp91.i) #6
  %85 = ptrtoint ptr %rgb_resulted4.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %y_r.sroa.0.0.copyload.i = load i64, ptr %rgb_resulted4.i, align 8
  %green99.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 1
  %86 = ptrtoint ptr %green99.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %y_g.sroa.0.0.copyload.i = load i64, ptr %green99.i, align 8
  %blue101.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 2
  %87 = ptrtoint ptr %blue101.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %y_b.sroa.0.0.copyload.i = load i64, ptr %blue101.i, align 8
  %88 = call i64 @llvm.smin.i64(i64 %y_g.sroa.0.0.copyload.i, i64 %y_b.sroa.0.0.copyload.i) #6
  %89 = call i64 @llvm.smin.i64(i64 %y_r.sroa.0.0.copyload.i, i64 %88) #6
  %y.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 1
  %90 = ptrtoint ptr %y.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %y.i, align 8
  %slope.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp110.i) #6
  %91 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %91)
  %.unpack.i = load i64, ptr %20, align 8
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp110.i, i64 noundef %89, i64 noundef %.unpack.i) #6
  %92 = ptrtoint ptr %tmp110.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %tmp110.i, align 8
  %94 = ptrtoint ptr %slope.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %slope.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp110.i) #6
  %95 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %y_r.sroa.0.0.copyload345.i = load i64, ptr %arrayidx72.i, align 8
  %96 = ptrtoint ptr %green78.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %y_g.sroa.0.0.copyload337.i = load i64, ptr %green78.i, align 8
  %97 = ptrtoint ptr %blue83.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %y_b.sroa.0.0.copyload329.i = load i64, ptr %blue83.i, align 8
  %98 = call i64 @llvm.smax.i64(i64 %y_g.sroa.0.0.copyload337.i, i64 %y_b.sroa.0.0.copyload329.i) #6
  %99 = call i64 @llvm.smax.i64(i64 %y_r.sroa.0.0.copyload345.i, i64 %98) #6
  %y133.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %y133.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %y133.i, align 8
  %slope135.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 1, i32 3
  %101 = ptrtoint ptr %slope135.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 0, ptr %slope135.i, align 8
  %102 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp137.i = icmp eq i32 %103, 2
  br i1 %cmp137.i, label %if.then138.i, label %dc_fixpt_pow.exit443.i.if.end153.i_crit_edge

dc_fixpt_pow.exit443.i.if.end153.i_crit_edge:     ; preds = %dc_fixpt_pow.exit443.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153.i

if.then138.i:                                     ; preds = %dc_fixpt_pow.exit443.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp141.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372032559808511, i64 %99)
  %104 = icmp slt i64 %99, -9223372032559808511
  br i1 %104, label %land.rhs13.i.i, label %if.then138.i.dc_fixpt_sub.exit.i_crit_edge

if.then138.i.dc_fixpt_sub.exit.i_crit_edge:       ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit.i

land.rhs13.i.i:                                   ; preds = %if.then138.i
  %.b65.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !133
  br i1 %.b65.i.i, label %land.rhs13.i.i.if.then50.i.i_crit_edge, label %if.then.i445.i, !prof !123

land.rhs13.i.i.if.then50.i.i_crit_edge:           ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i.i

if.then.i445.i:                                   ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !133
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 275, i32 noundef 9, ptr noundef null) #6, !noalias !133
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then.i445.i, %land.rhs13.i.i.if.then50.i.i_crit_edge
  call void @kgdb_breakpoint() #6, !noalias !133
  br label %dc_fixpt_sub.exit.i

dc_fixpt_sub.exit.i:                              ; preds = %if.then50.i.i, %if.then138.i.dc_fixpt_sub.exit.i_crit_edge
  %sub.i.i = sub i64 4294967296, %99
  %105 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %.unpack426.i = load i64, ptr %arrayidx89.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223371499983863807, i64 %.unpack426.i)
  %106 = icmp slt i64 %.unpack426.i, -9223371499983863807
  br i1 %106, label %land.rhs13.i456.i, label %dc_fixpt_sub.exit.i.dc_fixpt_sub.exit460.i_crit_edge

dc_fixpt_sub.exit.i.dc_fixpt_sub.exit460.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit460.i

land.rhs13.i456.i:                                ; preds = %dc_fixpt_sub.exit.i
  %.b65.i455.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !136
  br i1 %.b65.i455.i, label %land.rhs13.i456.i.if.then50.i458.i_crit_edge, label %if.then.i457.i, !prof !123

land.rhs13.i456.i.if.then50.i458.i_crit_edge:     ; preds = %land.rhs13.i456.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i458.i

if.then.i457.i:                                   ; preds = %land.rhs13.i456.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !136
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 275, i32 noundef 9, ptr noundef null) #6, !noalias !136
  br label %if.then50.i458.i

if.then50.i458.i:                                 ; preds = %if.then.i457.i, %land.rhs13.i456.i.if.then50.i458.i_crit_edge
  call void @kgdb_breakpoint() #6, !noalias !136
  br label %dc_fixpt_sub.exit460.i

dc_fixpt_sub.exit460.i:                           ; preds = %if.then50.i458.i, %dc_fixpt_sub.exit.i.dc_fixpt_sub.exit460.i_crit_edge
  %sub.i459.i = sub i64 536870912000, %.unpack426.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp141.i, i64 noundef %sub.i.i, i64 noundef %sub.i459.i) #6
  %107 = ptrtoint ptr %tmp141.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %tmp141.i, align 8
  %109 = ptrtoint ptr %slope135.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %slope135.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp141.i) #6
  br label %if.end153.i

if.end153.i:                                      ; preds = %dc_fixpt_sub.exit460.i, %dc_fixpt_pow.exit443.i.if.end153.i_crit_edge
  %110 = ptrtoint ptr %hw_points_num to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %hw_points.1.15.i, ptr %hw_points_num, align 8
  br label %for.body156.i

for.body156.i:                                    ; preds = %if.end170.i.for.body156.i_crit_edge, %if.end153.i
  %k.2525.i = phi i32 [ 0, %if.end153.i ], [ %inc171.i, %if.end170.i.for.body156.i_crit_edge ]
  %i.2523.i = phi i32 [ 1, %if.end153.i ], [ %inc173.i, %if.end170.i.for.body156.i_crit_edge ]
  %arrayidx157.i = getelementptr [16 x i32], ptr %seg_distr.i, i32 0, i32 %k.2525.i
  %111 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp158.not.i = icmp eq i32 %112, -1
  br i1 %cmp158.not.i, label %for.body156.i.if.end170.i_crit_edge, label %if.then159.i

for.body156.i.if.end170.i_crit_edge:              ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170.i

if.then159.i:                                     ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx161.i = getelementptr [34 x %struct.gamma_curve], ptr %regamma_params, i32 0, i32 %k.2525.i
  %segments_num.i = getelementptr [34 x %struct.gamma_curve], ptr %regamma_params, i32 0, i32 %k.2525.i, i32 1
  %113 = ptrtoint ptr %segments_num.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %segments_num.i, align 4
  %114 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx161.i, align 8
  %shl165.i = shl nuw i32 1, %112
  %add166.i = add i32 %115, %shl165.i
  %arrayidx168.i = getelementptr [34 x %struct.gamma_curve], ptr %regamma_params, i32 0, i32 %i.2523.i
  %116 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add166.i, ptr %arrayidx168.i, align 8
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then159.i, %for.body156.i.if.end170.i_crit_edge
  %inc171.i = add nuw nsw i32 %k.2525.i, 1
  %inc173.i = add nuw nsw i32 %i.2523.i, 1
  %exitcond532.not.i = icmp eq i32 %inc171.i, 15
  br i1 %exitcond532.not.i, label %for.end174.i, label %if.end170.i.for.body156.i_crit_edge

if.end170.i.for.body156.i_crit_edge:              ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body156.i

for.end174.i:                                     ; preds = %if.end170.i
  %117 = ptrtoint ptr %arrayidx29.15.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx29.15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp176.not.i = icmp eq i32 %118, -1
  br i1 %cmp176.not.i, label %for.end174.i.if.end182.i_crit_edge, label %if.then177.i

for.end174.i.if.end182.i_crit_edge:               ; preds = %for.end174.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182.i

if.then177.i:                                     ; preds = %for.end174.i
  call void @__sanitizer_cov_trace_pc() #8
  %segments_num181.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 0, i32 15, i32 1
  %119 = ptrtoint ptr %segments_num181.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %segments_num181.i, align 4
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then177.i, %for.end174.i.if.end182.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hw_points.1.15.i)
  %cmp184.not527.i = icmp eq i32 %hw_points.1.15.i, 0
  br i1 %cmp184.not527.i, label %if.end182.i.while.end.i_crit_edge, label %while.body.preheader.i

if.end182.i.while.end.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end182.i
  %add.ptr.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %dc_fixpt_sub.exit508.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.3531.i = phi i32 [ %inc227.i, %dc_fixpt_sub.exit508.i.while.body.i_crit_edge ], [ 1, %while.body.preheader.i ]
  %rgb_plus_1.0529.i = phi ptr [ %incdec.ptr.i, %dc_fixpt_sub.exit508.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %rgb.0528.i = phi ptr [ %incdec.ptr226.i, %dc_fixpt_sub.exit508.i.while.body.i_crit_edge ], [ %rgb_resulted4.i, %while.body.preheader.i ]
  %120 = ptrtoint ptr %rgb_plus_1.0529.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %.unpack412.i = load i64, ptr %rgb_plus_1.0529.i, align 8
  %121 = ptrtoint ptr %rgb.0528.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %.unpack413.i = load i64, ptr %rgb.0528.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack412.i, i64 %.unpack413.i)
  %cmp.i461.i = icmp slt i64 %.unpack412.i, %.unpack413.i
  br i1 %cmp.i461.i, label %if.then189.i, label %while.body.i.if.end192.i_crit_edge

while.body.i.if.end192.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192.i

if.then189.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %rgb_plus_1.0529.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %.unpack413.i, ptr %rgb_plus_1.0529.i, align 8
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.then189.i, %while.body.i.if.end192.i_crit_edge
  %green193.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb_plus_1.0529.i, i32 0, i32 1
  %green194.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0528.i, i32 0, i32 1
  %123 = ptrtoint ptr %green193.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %.unpack414.i = load i64, ptr %green193.i, align 8
  %124 = ptrtoint ptr %green194.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %.unpack415.i = load i64, ptr %green194.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack414.i, i64 %.unpack415.i)
  %cmp.i462.i = icmp slt i64 %.unpack414.i, %.unpack415.i
  br i1 %cmp.i462.i, label %if.then198.i, label %if.end192.i.if.end201.i_crit_edge

if.end192.i.if.end201.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201.i

if.then198.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %green193.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %.unpack415.i, ptr %green193.i, align 8
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.then198.i, %if.end192.i.if.end201.i_crit_edge
  %blue202.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb_plus_1.0529.i, i32 0, i32 2
  %blue203.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0528.i, i32 0, i32 2
  %126 = ptrtoint ptr %blue202.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %.unpack416.i = load i64, ptr %blue202.i, align 8
  %127 = ptrtoint ptr %blue203.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %.unpack417.i = load i64, ptr %blue203.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack416.i, i64 %.unpack417.i)
  %cmp.i463.i = icmp slt i64 %.unpack416.i, %.unpack417.i
  br i1 %cmp.i463.i, label %if.then207.i, label %if.end201.i.if.end210.i_crit_edge

if.end201.i.if.end210.i_crit_edge:                ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end210.i

if.then207.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %blue202.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %.unpack417.i, ptr %blue202.i, align 8
  br label %if.end210.i

if.end210.i:                                      ; preds = %if.then207.i, %if.end201.i.if.end210.i_crit_edge
  %delta_red.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0528.i, i32 0, i32 3
  %129 = ptrtoint ptr %rgb_plus_1.0529.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %.unpack418.i = load i64, ptr %rgb_plus_1.0529.i, align 8
  %130 = ptrtoint ptr %rgb.0528.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %.unpack419.i = load i64, ptr %rgb.0528.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack419.i)
  %cmp.i464.i = icmp slt i64 %.unpack419.i, 0
  %add.i465.i = xor i64 %.unpack419.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i465.i, i64 %.unpack418.i)
  %cmp4.not.i466.i = icmp sgt i64 %add.i465.i, %.unpack418.i
  %or.cond.i467.i = select i1 %cmp.i464.i, i1 true, i1 %cmp4.not.i466.i
  br i1 %or.cond.i467.i, label %lor.rhs.i472.i, label %if.end210.i.dc_fixpt_sub.exit478.i_crit_edge

if.end210.i.dc_fixpt_sub.exit478.i_crit_edge:     ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit478.i

lor.rhs.i472.i:                                   ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack419.i)
  %cmp6.i468.i = icmp sgt i64 %.unpack419.i, -1
  %add8.i469.i = add i64 %.unpack419.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i469.i, i64 %.unpack418.i)
  %cmp10.i470.i = icmp slt i64 %add8.i469.i, %.unpack418.i
  %or.cond67.i471.i = select i1 %cmp6.i468.i, i1 true, i1 %cmp10.i470.i
  br i1 %or.cond67.i471.i, label %land.rhs13.i474.i, label %lor.rhs.i472.i.dc_fixpt_sub.exit478.i_crit_edge

lor.rhs.i472.i.dc_fixpt_sub.exit478.i_crit_edge:  ; preds = %lor.rhs.i472.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit478.i

land.rhs13.i474.i:                                ; preds = %lor.rhs.i472.i
  %.b65.i473.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !139
  br i1 %.b65.i473.i, label %land.rhs13.i474.i.if.then50.i476.i_crit_edge, label %if.then.i475.i, !prof !123

land.rhs13.i474.i.if.then50.i476.i_crit_edge:     ; preds = %land.rhs13.i474.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i476.i

if.then.i475.i:                                   ; preds = %land.rhs13.i474.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !139
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 275, i32 noundef 9, ptr noundef null) #6, !noalias !139
  br label %if.then50.i476.i

if.then50.i476.i:                                 ; preds = %if.then.i475.i, %land.rhs13.i474.i.if.then50.i476.i_crit_edge
  call void @kgdb_breakpoint() #6, !noalias !139
  br label %dc_fixpt_sub.exit478.i

dc_fixpt_sub.exit478.i:                           ; preds = %if.then50.i476.i, %lor.rhs.i472.i.dc_fixpt_sub.exit478.i_crit_edge, %if.end210.i.dc_fixpt_sub.exit478.i_crit_edge
  %sub.i477.i = sub i64 %.unpack418.i, %.unpack419.i
  %131 = ptrtoint ptr %delta_red.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %sub.i477.i, ptr %delta_red.i, align 8
  %delta_green.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0528.i, i32 0, i32 4
  %132 = ptrtoint ptr %green193.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %.unpack420.i = load i64, ptr %green193.i, align 8
  %133 = ptrtoint ptr %green194.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %.unpack421.i = load i64, ptr %green194.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack421.i)
  %cmp.i479.i = icmp slt i64 %.unpack421.i, 0
  %add.i480.i = xor i64 %.unpack421.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i480.i, i64 %.unpack420.i)
  %cmp4.not.i481.i = icmp sgt i64 %add.i480.i, %.unpack420.i
  %or.cond.i482.i = select i1 %cmp.i479.i, i1 true, i1 %cmp4.not.i481.i
  br i1 %or.cond.i482.i, label %lor.rhs.i487.i, label %dc_fixpt_sub.exit478.i.dc_fixpt_sub.exit493.i_crit_edge

dc_fixpt_sub.exit478.i.dc_fixpt_sub.exit493.i_crit_edge: ; preds = %dc_fixpt_sub.exit478.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit493.i

lor.rhs.i487.i:                                   ; preds = %dc_fixpt_sub.exit478.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack421.i)
  %cmp6.i483.i = icmp sgt i64 %.unpack421.i, -1
  %add8.i484.i = add i64 %.unpack421.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i484.i, i64 %.unpack420.i)
  %cmp10.i485.i = icmp slt i64 %add8.i484.i, %.unpack420.i
  %or.cond67.i486.i = select i1 %cmp6.i483.i, i1 true, i1 %cmp10.i485.i
  br i1 %or.cond67.i486.i, label %land.rhs13.i489.i, label %lor.rhs.i487.i.dc_fixpt_sub.exit493.i_crit_edge

lor.rhs.i487.i.dc_fixpt_sub.exit493.i_crit_edge:  ; preds = %lor.rhs.i487.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit493.i

land.rhs13.i489.i:                                ; preds = %lor.rhs.i487.i
  %.b65.i488.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !142
  br i1 %.b65.i488.i, label %land.rhs13.i489.i.if.then50.i491.i_crit_edge, label %if.then.i490.i, !prof !123

land.rhs13.i489.i.if.then50.i491.i_crit_edge:     ; preds = %land.rhs13.i489.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i491.i

if.then.i490.i:                                   ; preds = %land.rhs13.i489.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !142
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 275, i32 noundef 9, ptr noundef null) #6, !noalias !142
  br label %if.then50.i491.i

if.then50.i491.i:                                 ; preds = %if.then.i490.i, %land.rhs13.i489.i.if.then50.i491.i_crit_edge
  call void @kgdb_breakpoint() #6, !noalias !142
  br label %dc_fixpt_sub.exit493.i

dc_fixpt_sub.exit493.i:                           ; preds = %if.then50.i491.i, %lor.rhs.i487.i.dc_fixpt_sub.exit493.i_crit_edge, %dc_fixpt_sub.exit478.i.dc_fixpt_sub.exit493.i_crit_edge
  %sub.i492.i = sub i64 %.unpack420.i, %.unpack421.i
  %134 = ptrtoint ptr %delta_green.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %sub.i492.i, ptr %delta_green.i, align 8
  %delta_blue.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0528.i, i32 0, i32 5
  %135 = ptrtoint ptr %blue202.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %.unpack422.i = load i64, ptr %blue202.i, align 8
  %136 = ptrtoint ptr %blue203.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %.unpack423.i = load i64, ptr %blue203.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack423.i)
  %cmp.i494.i = icmp slt i64 %.unpack423.i, 0
  %add.i495.i = xor i64 %.unpack423.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i495.i, i64 %.unpack422.i)
  %cmp4.not.i496.i = icmp sgt i64 %add.i495.i, %.unpack422.i
  %or.cond.i497.i = select i1 %cmp.i494.i, i1 true, i1 %cmp4.not.i496.i
  br i1 %or.cond.i497.i, label %lor.rhs.i502.i, label %dc_fixpt_sub.exit493.i.dc_fixpt_sub.exit508.i_crit_edge

dc_fixpt_sub.exit493.i.dc_fixpt_sub.exit508.i_crit_edge: ; preds = %dc_fixpt_sub.exit493.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit508.i

lor.rhs.i502.i:                                   ; preds = %dc_fixpt_sub.exit493.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack423.i)
  %cmp6.i498.i = icmp sgt i64 %.unpack423.i, -1
  %add8.i499.i = add i64 %.unpack423.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i499.i, i64 %.unpack422.i)
  %cmp10.i500.i = icmp slt i64 %add8.i499.i, %.unpack422.i
  %or.cond67.i501.i = select i1 %cmp6.i498.i, i1 true, i1 %cmp10.i500.i
  br i1 %or.cond67.i501.i, label %land.rhs13.i504.i, label %lor.rhs.i502.i.dc_fixpt_sub.exit508.i_crit_edge

lor.rhs.i502.i.dc_fixpt_sub.exit508.i_crit_edge:  ; preds = %lor.rhs.i502.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_sub.exit508.i

land.rhs13.i504.i:                                ; preds = %lor.rhs.i502.i
  %.b65.i503.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !145
  br i1 %.b65.i503.i, label %land.rhs13.i504.i.if.then50.i506.i_crit_edge, label %if.then.i505.i, !prof !123

land.rhs13.i504.i.if.then50.i506.i_crit_edge:     ; preds = %land.rhs13.i504.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i506.i

if.then.i505.i:                                   ; preds = %land.rhs13.i504.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !145
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 275, i32 noundef 9, ptr noundef null) #6, !noalias !145
  br label %if.then50.i506.i

if.then50.i506.i:                                 ; preds = %if.then.i505.i, %land.rhs13.i504.i.if.then50.i506.i_crit_edge
  call void @kgdb_breakpoint() #6, !noalias !145
  br label %dc_fixpt_sub.exit508.i

dc_fixpt_sub.exit508.i:                           ; preds = %if.then50.i506.i, %lor.rhs.i502.i.dc_fixpt_sub.exit508.i_crit_edge, %dc_fixpt_sub.exit493.i.dc_fixpt_sub.exit508.i_crit_edge
  %sub.i507.i = sub i64 %.unpack422.i, %.unpack423.i
  %137 = ptrtoint ptr %delta_blue.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %sub.i507.i, ptr %delta_blue.i, align 8
  %incdec.ptr.i = getelementptr %struct.pwl_result_data, ptr %rgb_plus_1.0529.i, i32 1
  %incdec.ptr226.i = getelementptr %struct.pwl_result_data, ptr %rgb.0528.i, i32 1
  %inc227.i = add i32 %i.3531.i, 1
  %cmp184.not.i = icmp eq i32 %i.3531.i, %hw_points.1.15.i
  br i1 %cmp184.not.i, label %dc_fixpt_sub.exit508.i.while.end.i_crit_edge, label %dc_fixpt_sub.exit508.i.while.body.i_crit_edge

dc_fixpt_sub.exit508.i.while.body.i_crit_edge:    ; preds = %dc_fixpt_sub.exit508.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

dc_fixpt_sub.exit508.i.while.end.i_crit_edge:     ; preds = %dc_fixpt_sub.exit508.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %dc_fixpt_sub.exit508.i.while.end.i_crit_edge, %if.end182.i.while.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fmt.i.i) #6
  %138 = getelementptr inbounds i8, ptr %fmt.i.i, i32 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 33554431, ptr %138, align 4
  %exponenta_bits.i.i = getelementptr inbounds %struct.custom_float_format, ptr %fmt.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %exponenta_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 6, ptr %exponenta_bits.i.i, align 4
  %141 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 12, ptr %fmt.i.i, align 4
  %custom_float_x.i.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 4
  %142 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %142)
  %.unpack.i.i = load i64, ptr %20, align 8
  %143 = insertvalue [1 x i64] undef, i64 %.unpack.i.i, 0
  %call.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %143, ptr noundef nonnull %fmt.i.i, ptr noundef %custom_float_x.i.i) #6
  br i1 %call.i.i, label %if.end.i509.i, label %while.end.i.cleanup.sink.split.i.i_crit_edge

while.end.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end.i509.i:                                    ; preds = %while.end.i
  %offset.i.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 2
  %custom_float_offset.i.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6
  %144 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %.unpack1.i.i = load i64, ptr %offset.i.i, align 8
  %145 = insertvalue [1 x i64] undef, i64 %.unpack1.i.i, 0
  %call5.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %145, ptr noundef nonnull %fmt.i.i, ptr noundef %custom_float_offset.i.i) #6
  br i1 %call5.i.i, label %if.end10.i.i, label %if.end.i509.i.cleanup.sink.split.i.i_crit_edge

if.end.i509.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.end.i509.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end10.i.i:                                     ; preds = %if.end.i509.i
  %custom_float_slope.i.i = getelementptr inbounds %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7
  %146 = ptrtoint ptr %slope.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %.unpack2.i.i = load i64, ptr %slope.i, align 8
  %147 = insertvalue [1 x i64] undef, i64 %.unpack2.i.i, 0
  %call14.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %147, ptr noundef nonnull %fmt.i.i, ptr noundef %custom_float_slope.i.i) #6
  br i1 %call14.i.i, label %if.end19.i.i, label %if.end10.i.i.cleanup.sink.split.i.i_crit_edge

if.end10.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end19.i.i:                                     ; preds = %if.end10.i.i
  %148 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 10, ptr %fmt.i.i, align 4
  %149 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %138, align 4
  %custom_float_x25.i.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 1, i32 4
  %150 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %.unpack3.i.i = load i64, ptr %arrayidx89.i, align 8
  %151 = insertvalue [1 x i64] undef, i64 %.unpack3.i.i, 0
  %call27.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %151, ptr noundef nonnull %fmt.i.i, ptr noundef %custom_float_x25.i.i) #6
  br i1 %call27.i.i, label %if.end32.i.i, label %if.end19.i.i.cleanup.sink.split.i.i_crit_edge

if.end19.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end32.i.i:                                     ; preds = %if.end19.i.i
  %custom_float_y.i.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 1, i32 5
  %152 = ptrtoint ptr %y133.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %.unpack4.i.i = load i64, ptr %y133.i, align 8
  %153 = insertvalue [1 x i64] undef, i64 %.unpack4.i.i, 0
  %call36.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %153, ptr noundef nonnull %fmt.i.i, ptr noundef %custom_float_y.i.i) #6
  br i1 %call36.i.i, label %if.end41.i.i, label %if.end32.i.i.cleanup.sink.split.i.i_crit_edge

if.end32.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end41.i.i:                                     ; preds = %if.end32.i.i
  %custom_float_slope45.i.i = getelementptr %struct.transform, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 1, i32 7
  %154 = ptrtoint ptr %slope135.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %.unpack5.i.i = load i64, ptr %slope135.i, align 8
  %155 = insertvalue [1 x i64] undef, i64 %.unpack5.i.i, 0
  %call47.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %155, ptr noundef nonnull %fmt.i.i, ptr noundef %custom_float_slope45.i.i) #6
  br i1 %call47.i.i, label %if.end52.i.i, label %if.end41.i.i.cleanup.sink.split.i.i_crit_edge

if.end41.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end52.i.i:                                     ; preds = %if.end41.i.i
  %156 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 12, ptr %fmt.i.i, align 4
  %157 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %138, align 4
  br i1 %cmp184.not527.i, label %if.end52.i.i.if.then9_crit_edge, label %if.end52.i.i.while.body.i.i_crit_edge

if.end52.i.i.while.body.i.i_crit_edge:            ; preds = %if.end52.i.i
  br label %while.body.i.i

if.end52.i.i.if.then9_crit_edge:                  ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

while.body.i.i:                                   ; preds = %if.end96.i.i.while.body.i.i_crit_edge, %if.end52.i.i.while.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %if.end96.i.i.while.body.i.i_crit_edge ], [ 0, %if.end52.i.i.while.body.i.i_crit_edge ]
  %rgb.013.i.i = phi ptr [ %incdec.ptr.i.i, %if.end96.i.i.while.body.i.i_crit_edge ], [ %rgb_resulted4.i, %if.end52.i.i.while.body.i.i_crit_edge ]
  %red_reg.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 6
  %158 = ptrtoint ptr %rgb.013.i.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %.unpack6.i.i = load i64, ptr %rgb.013.i.i, align 8
  %159 = insertvalue [1 x i64] undef, i64 %.unpack6.i.i, 0
  %call56.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %159, ptr noundef nonnull %fmt.i.i, ptr noundef %red_reg.i.i) #6
  br i1 %call56.i.i, label %if.end61.i.i, label %while.body.i.i.cleanup.sink.split.i.i_crit_edge

while.body.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end61.i.i:                                     ; preds = %while.body.i.i
  %green.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 1
  %green_reg.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 7
  %160 = ptrtoint ptr %green.i.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %.unpack7.i.i = load i64, ptr %green.i.i, align 8
  %161 = insertvalue [1 x i64] undef, i64 %.unpack7.i.i, 0
  %call63.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %161, ptr noundef nonnull %fmt.i.i, ptr noundef %green_reg.i.i) #6
  br i1 %call63.i.i, label %if.end68.i.i, label %if.end61.i.i.cleanup.sink.split.i.i_crit_edge

if.end61.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end68.i.i:                                     ; preds = %if.end61.i.i
  %blue.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 2
  %blue_reg.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 8
  %162 = ptrtoint ptr %blue.i.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %.unpack8.i.i = load i64, ptr %blue.i.i, align 8
  %163 = insertvalue [1 x i64] undef, i64 %.unpack8.i.i, 0
  %call70.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %163, ptr noundef nonnull %fmt.i.i, ptr noundef %blue_reg.i.i) #6
  br i1 %call70.i.i, label %if.end75.i.i, label %if.end68.i.i.cleanup.sink.split.i.i_crit_edge

if.end68.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end75.i.i:                                     ; preds = %if.end68.i.i
  %delta_red.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 3
  %delta_red_reg.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 9
  %164 = ptrtoint ptr %delta_red.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %.unpack9.i.i = load i64, ptr %delta_red.i.i, align 8
  %165 = insertvalue [1 x i64] undef, i64 %.unpack9.i.i, 0
  %call77.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %165, ptr noundef nonnull %fmt.i.i, ptr noundef %delta_red_reg.i.i) #6
  br i1 %call77.i.i, label %if.end82.i.i, label %if.end75.i.i.cleanup.sink.split.i.i_crit_edge

if.end75.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end82.i.i:                                     ; preds = %if.end75.i.i
  %delta_green.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 4
  %delta_green_reg.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 10
  %166 = ptrtoint ptr %delta_green.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %.unpack10.i.i = load i64, ptr %delta_green.i.i, align 8
  %167 = insertvalue [1 x i64] undef, i64 %.unpack10.i.i, 0
  %call84.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %167, ptr noundef nonnull %fmt.i.i, ptr noundef %delta_green_reg.i.i) #6
  br i1 %call84.i.i, label %if.end89.i.i, label %if.end82.i.i.cleanup.sink.split.i.i_crit_edge

if.end82.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end89.i.i:                                     ; preds = %if.end82.i.i
  %delta_blue.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 5
  %delta_blue_reg.i.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.013.i.i, i32 0, i32 11
  %168 = ptrtoint ptr %delta_blue.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %.unpack11.i.i = load i64, ptr %delta_blue.i.i, align 8
  %169 = insertvalue [1 x i64] undef, i64 %.unpack11.i.i, 0
  %call91.i.i = call zeroext i1 @convert_to_custom_float_format([1 x i64] %169, ptr noundef nonnull %fmt.i.i, ptr noundef %delta_blue_reg.i.i) #6
  br i1 %call91.i.i, label %if.end96.i.i, label %if.end89.i.i.cleanup.sink.split.i.i_crit_edge

if.end89.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end96.i.i:                                     ; preds = %if.end89.i.i
  %incdec.ptr.i.i = getelementptr %struct.pwl_result_data, ptr %rgb.013.i.i, i32 1
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %cmp.not.i.i = icmp eq i32 %inc.i.i, %hw_points.1.15.i
  br i1 %cmp.not.i.i, label %if.end96.i.i.if.then9_crit_edge, label %if.end96.i.i.while.body.i.i_crit_edge

if.end96.i.i.while.body.i.i_crit_edge:            ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end96.i.i.if.then9_crit_edge:                  ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

cleanup.sink.split.i.i:                           ; preds = %if.end89.i.i.cleanup.sink.split.i.i_crit_edge, %if.end82.i.i.cleanup.sink.split.i.i_crit_edge, %if.end75.i.i.cleanup.sink.split.i.i_crit_edge, %if.end68.i.i.cleanup.sink.split.i.i_crit_edge, %if.end61.i.i.cleanup.sink.split.i.i_crit_edge, %while.body.i.i.cleanup.sink.split.i.i_crit_edge, %if.end41.i.i.cleanup.sink.split.i.i_crit_edge, %if.end32.i.i.cleanup.sink.split.i.i_crit_edge, %if.end19.i.i.cleanup.sink.split.i.i_crit_edge, %if.end10.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i509.i.cleanup.sink.split.i.i_crit_edge, %while.end.i.cleanup.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 353, %while.end.i.cleanup.sink.split.i.i_crit_edge ], [ 359, %if.end.i509.i.cleanup.sink.split.i.i_crit_edge ], [ 365, %if.end10.i.i.cleanup.sink.split.i.i_crit_edge ], [ 374, %if.end19.i.i.cleanup.sink.split.i.i_crit_edge ], [ 380, %if.end32.i.i.cleanup.sink.split.i.i_crit_edge ], [ 386, %if.end41.i.i.cleanup.sink.split.i.i_crit_edge ], [ 396, %while.body.i.i.cleanup.sink.split.i.i_crit_edge ], [ 402, %if.end61.i.i.cleanup.sink.split.i.i_crit_edge ], [ 408, %if.end68.i.i.cleanup.sink.split.i.i_crit_edge ], [ 414, %if.end75.i.i.cleanup.sink.split.i.i_crit_edge ], [ 420, %if.end82.i.i.cleanup.sink.split.i.i_crit_edge ], [ 426, %if.end89.i.i.cleanup.sink.split.i.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.convert_to_custom_float, i32 noundef %.sink.i.i) #6
  call void @kgdb_breakpoint() #6
  br label %if.then9

if.then9:                                         ; preds = %cleanup.sink.split.i.i, %if.end96.i.i.if.then9_crit_edge, %if.end52.i.i.if.then9_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fmt.i.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seg_distr.i) #6
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 8
  %opp_program_regamma_pwl = getelementptr inbounds %struct.transform_funcs, ptr %171, i32 0, i32 12
  %172 = ptrtoint ptr %opp_program_regamma_pwl to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %opp_program_regamma_pwl, align 4
  call void %173(ptr noundef %1, ptr noundef nonnull %regamma_params) #6
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 8
  %opp_set_regamma_mode13 = getelementptr inbounds %struct.transform_funcs, ptr %175, i32 0, i32 13
  %176 = ptrtoint ptr %opp_set_regamma_mode13 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %opp_set_regamma_mode13, align 4
  call void %177(ptr noundef %1, i32 noundef 3) #6
  br label %if.end17

if.else14:                                        ; preds = %lor.lhs.false2.i.if.else14_crit_edge, %if.else.if.else14_crit_edge, %if.else.thread
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seg_distr.i) #6
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 8
  %opp_set_regamma_mode16 = getelementptr inbounds %struct.transform_funcs, ptr %179, i32 0, i32 13
  %180 = ptrtoint ptr %opp_set_regamma_mode16 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %opp_set_regamma_mode16, align 4
  tail call void %181(ptr noundef %1, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then9, %if.then
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 8
  %opp_power_on_regamma_lut19 = getelementptr inbounds %struct.transform_funcs, ptr %183, i32 0, i32 7
  %184 = ptrtoint ptr %opp_power_on_regamma_lut19 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %opp_power_on_regamma_lut19, align 4
  call void %185(ptr noundef %1, i1 noundef zeroext false) #6
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_enable_display_power_gating(ptr nocapture noundef readonly %dc, i8 noundef zeroext %controller_id, ptr noundef %dcb, i32 noundef %power_gating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool, align 8
  %underlay_pipe_index = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %underlay_pipe_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %underlay_pipe_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %power_gating)
  %switch.selectcmp = icmp eq i32 %power_gating, 1
  %conv = zext i8 %controller_id to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp9 = icmp eq i32 %7, %conv
  %spec.store.select = select i1 %cmp9, i8 6, i8 %controller_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power_gating)
  %cmp13.not = icmp ne i32 %power_gating, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp16 = icmp eq i8 %spec.store.select, 0
  %or.cond = select i1 %cmp13.not, i1 true, i1 %cmp16
  br i1 %or.cond, label %if.then18, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power_gating)
  %switch.selectcmp49 = icmp eq i32 %power_gating, 2
  %switch.select = zext i1 %switch.selectcmp to i32
  %switch.select50 = select i1 %switch.selectcmp49, i32 2, i32 %switch.select
  %8 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dcb, align 4
  %enable_disp_power_gating = getelementptr inbounds %struct.dc_vbios_funcs, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %enable_disp_power_gating to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_disp_power_gating, align 4
  %conv19 = zext i8 %spec.store.select to i32
  %add = add nuw nsw i32 %conv19, 1
  %call = tail call i32 %11(ptr noundef %dcb, i32 noundef %add, i32 noundef %switch.select50) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %spec.store.select)
  %cmp21 = icmp ult i8 %spec.store.select, 6
  br i1 %cmp21, label %if.then23, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x %struct.dce110_hw_seq_reg_offsets], ptr @reg_offsets, i32 0, i32 %conv19
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add24 = add i32 %13, 7102
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %add24, i32 noundef 0, ptr noundef nonnull @__func__.dce110_enable_display_power_gating) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then18.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %bp_result.0 = phi i32 [ %call, %if.then23 ], [ %call, %if.then18.if.end26_crit_edge ], [ 0, %if.end.if.end26_crit_edge ]
  br i1 %switch.selectcmp, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 17961, ptr noundef nonnull @__func__.dce110_init_pte) #6
  %and.i26.i = and i32 %call.i, -3145730
  %or.i28.i = or i32 %and.i26.i, 3145728
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 17961, i32 noundef %or.i28.i, ptr noundef nonnull @__func__.dce110_init_pte) #6
  %call4.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 816, ptr noundef nonnull @__func__.dce110_init_pte) #6
  %14 = and i32 %call4.i, 4194048
  call void @__sanitizer_cov_trace_const_cmp4(i32 263168, i32 %14)
  %15 = icmp eq i32 %14, 263168
  br i1 %15, label %if.then29.if.end30_crit_edge, label %if.then.i

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %or.i33.i = and i32 %call4.i, -4194304
  %or.i37.i = or i32 %or.i33.i, 263423
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 816, i32 noundef %or.i37.i, ptr noundef nonnull @__func__.dce110_init_pte) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then.i, %if.then29.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bp_result.0)
  %cmp31 = icmp eq i32 %bp_result.0, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %cmp31, %if.end30 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce110_enable_stream_timing(ptr noundef %pipe_ctx, ptr nocapture noundef readnone %context, ptr noundef %dc) #0 align 64 {
entry:
  %black_color = alloca %struct.tg_color, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %3, i32 0, i32 4
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %4 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pipe_idx, align 8
  %idxprom = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %black_color) #6
  %6 = call ptr @memset(ptr %black_color, i32 0, i32 6)
  %stream3 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream3, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_color_space, align 4
  call void @color_space_to_black_color(ptr noundef %dc, i32 noundef %10, ptr noundef nonnull %black_color) #6
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tg, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %set_blank_color = getelementptr inbounds %struct.timing_generator_funcs, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %set_blank_color to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_blank_color, align 4
  call void %16(ptr noundef %12, ptr noundef nonnull %black_color) #6
  %17 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tg, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %set_blank = getelementptr inbounds %struct.timing_generator_funcs, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %set_blank to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_blank, align 4
  call void %22(ptr noundef %18, i1 noundef zeroext true) #6
  %clock_source = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 5
  %23 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clock_source, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %program_pix_clk = getelementptr inbounds %struct.clock_source_funcs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %program_pix_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %program_pix_clk, align 4
  %pix_clk_params = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5
  %pll_settings = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 6
  %call = call zeroext i1 %28(ptr noundef %24, ptr noundef %pix_clk_params, ptr noundef %pll_settings) #6
  br i1 %call, label %if.end22, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.then
  %29 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tg, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %program_timing = getelementptr inbounds %struct.timing_generator_funcs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %program_timing to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %program_timing, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stream1, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %36, i32 0, i32 36
  %37 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %signal, align 4
  call void %34(ptr noundef %30, ptr noundef %timing, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %38, i1 noundef zeroext true) #6
  %39 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load ptr, ptr %stream3, align 4
  %tobool24.not = icmp eq ptr %.pr, null
  br i1 %tobool24.not, label %if.then25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  %40 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tg, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %enable_crtc = getelementptr inbounds %struct.timing_generator_funcs, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %enable_crtc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enable_crtc, align 4
  %call31 = call zeroext i1 %45(ptr noundef %41) #6
  br i1 %call31, label %if.then25.cleanup_crit_edge, label %if.then25.cleanup.sink.split_crit_edge

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then25.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1490, %if.then.cleanup.sink.split_crit_edge ], [ 1508, %if.then25.cleanup.sink.split_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_enable_stream_timing, i32 noundef %.sink) #6
  call void @kgdb_breakpoint() #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then25.cleanup_crit_edge ], [ 1, %if.end22.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %black_color) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_link_disable_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_audio_usage(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_get_clock_source_reference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce_use_lut(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_exp(ptr sret(%struct.fixed31_32) align 8, [1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8, [1 x i64], [1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_log(ptr sret(%struct.fixed31_32) align 8, [1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @convert_to_custom_float_format([1 x i64], ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 644, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 741, i32 3}
!5 = !{ptr @__func__.dce110_edp_wait_for_hpd_ready, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 798, i32 3}
!8 = !{ptr @__func__.dce110_edp_power_control, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 815, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 835, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 865, i32 5}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 869, i32 5}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 872, i32 5}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 875, i32 5}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 881, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 909, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 920, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 927, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 931, i32 3}
!32 = !{ptr @__func__.dce110_edp_wait_for_T12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 944, i32 3}
!34 = !{ptr @__func__.dce110_edp_backlight_control, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 983, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 991, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1000, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1041, i32 4}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1078, i32 4}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1225, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1832, i32 6}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1856, i32 4}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1858, i32 4}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1700, i32 3}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1705, i32 4}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2063, i32 2}
!58 = !{ptr @dce110_funcs, !59, !"dce110_funcs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 3082, i32 40}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2829, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug303, !61, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2852, i32 2}
!67 = !{ptr @dce110_program_front_end_for_pipe.__UNIQUE_ID_ddebug304, !66, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2449, i32 3}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2630, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2638, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2544, i32 4}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2551, i32 4}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2562, i32 3}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2578, i32 2}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2607, i32 2}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2611, i32 2}
!86 = !{ptr @dce110_private_funcs, !87, !"dce110_private_funcs", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 3123, i32 41}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2192, i32 5}
!90 = !{ptr @__func__.dce110_reset_hw_ctx_wrap, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 2193, i32 5}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 280, i32 3}
!94 = distinct !{null, !95, !"dc_fixpt_zero", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 67, i32 32}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!98 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"dc_fixpt_one", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 70, i32 32}
!101 = !{ptr @__func__.convert_to_custom_float, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 353, i32 3}
!103 = !{ptr @__func__.dce110_enable_display_power_gating, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 243, i32 4}
!105 = !{ptr @reg_offsets, !106, !"reg_offsets", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 103, i32 47}
!107 = !{ptr @__func__.dce110_init_pte, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 139, i32 10}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!111 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @__func__.dce110_enable_stream_timing, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c", i32 1490, i32 4}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i8 0, i8 2}
!125 = !{!"auto-init"}
!126 = !{i64 2148846474, i64 2148846479, i64 2148846492, i64 2148846536, i64 2148846570, i64 2148846591}
!127 = !{!128}
!128 = distinct !{!128, !129, !"dc_fixpt_pow: %agg.result"}
!129 = distinct !{!129, !"dc_fixpt_pow"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"dc_fixpt_pow: %agg.result"}
!132 = distinct !{!132, !"dc_fixpt_pow"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"dc_fixpt_sub: %agg.result"}
!135 = distinct !{!135, !"dc_fixpt_sub"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"dc_fixpt_sub: %agg.result"}
!138 = distinct !{!138, !"dc_fixpt_sub"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"dc_fixpt_sub: %agg.result"}
!141 = distinct !{!141, !"dc_fixpt_sub"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"dc_fixpt_sub: %agg.result"}
!144 = distinct !{!144, !"dc_fixpt_sub"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"dc_fixpt_sub: %agg.result"}
!147 = distinct !{!147, !"dc_fixpt_sub"}
