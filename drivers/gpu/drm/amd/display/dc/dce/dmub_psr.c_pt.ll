; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dmub_psr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dmub_psr = type { ptr, ptr }
%union.dmub_rb_cmd = type { %struct.dmub_rb_cmd_common }
%struct.dmub_rb_cmd_common = type { %struct.dmub_cmd_header, [60 x i8] }
%struct.dmub_cmd_header = type { i32 }
%struct.dmub_rb_cmd_psr_copy_settings = type { %struct.dmub_cmd_header, %struct.dmub_cmd_psr_copy_settings_data }
%struct.dmub_cmd_psr_copy_settings_data = type { %union.dmub_psr_debug_flags, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i16, i16, i32, i8, i8, i8, i8, i8, [3 x i8] }
%union.dmub_psr_debug_flags = type { i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.14 }
%struct.anon.14 = type { i8 }
%struct.graphics_object_id = type { i32 }
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
%struct.dmub_rb_cmd_psr_set_version = type { %struct.dmub_cmd_header, %struct.dmub_cmd_psr_set_version_data }
%struct.dmub_cmd_psr_set_version_data = type { i32, i8, i8, [2 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psr_context = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, %union.dmcu_psr_level, i32, i8, i8 }
%union.dmcu_psr_level = type { %struct.anon.64 }
%struct.anon.64 = type { i32 }
%struct.dpp = type { ptr, ptr, i32, ptr, %struct.pwl_params, %struct.pwl_params, %struct.dpp_cursor_attributes, %union.defer_reg_writes, %struct.pwl_params, i8 }
%struct.dpp_cursor_attributes = type { i32, i32 }
%union.defer_reg_writes = type { i32 }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.21, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.21 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.output_pixel_processor = type { ptr, i32, %struct.pwl_params, %struct.mpc_tree, [6 x i8], ptr, i32 }
%struct.mpc_tree = type { i32, ptr }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.dmub_rb_cmd_psr_enable = type { %struct.dmub_cmd_header, %struct.dmub_rb_cmd_psr_enable_data }
%struct.dmub_rb_cmd_psr_enable_data = type { i8, i8, [2 x i8] }
%struct.dmub_rb_cmd_psr_set_level = type { %struct.dmub_cmd_header, %struct.dmub_cmd_psr_set_level_data }
%struct.dmub_cmd_psr_set_level_data = type { i16, i8, i8 }
%struct.dmub_rb_cmd_psr_force_static = type { %struct.dmub_cmd_header, %struct.dmub_cmd_psr_force_static_data }
%struct.dmub_cmd_psr_force_static_data = type { i8, i8, [2 x i8] }
%struct.dmub_rb_cmd_psr_set_power_opt = type { %struct.dmub_cmd_header, %struct.dmub_cmd_psr_set_power_opt_data }
%struct.dmub_cmd_psr_set_power_opt_data = type { i8, i8, [2 x i8], i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dmub_psr_create = private unnamed_addr constant [16 x i8] c"dmub_psr_create\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@psr_funcs = internal constant { %struct.dmub_psr_funcs, [36 x i8] } { %struct.dmub_psr_funcs { ptr @dmub_psr_copy_settings, ptr @dmub_psr_enable, ptr @dmub_psr_get_state, ptr @dmub_psr_set_level, ptr @dmub_psr_force_static, ptr @dmub_psr_get_residency, ptr @dmub_psr_set_power_opt }, [36 x i8] zeroinitializer }, align 32
@DP_SINK_DEVICE_STR_ID_1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\07\01\08\07\03\00", [26 x i8] zeroinitializer }, align 32
@DP_SINK_DEVICE_STR_ID_2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\07\01\08\07\05\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dmub_psr_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c\00", [40 x i8] zeroinitializer }, align 32
@dmub_psr_get_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 16, i64 17, i64 32, i64 33, i64 34, i64 48, i64 49, i64 64, i64 65, i64 66, i64 67, i64 68, i64 80, i64 81, i64 82, i64 83]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 412, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"psr_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 385, i32 36 }
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"DP_SINK_DEVICE_STR_ID_1\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 121, i32 22 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"DP_SINK_DEVICE_STR_ID_2\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/ddc_service_types.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 122, i32 22 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [59 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 200, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @psr_funcs, ptr @DP_SINK_DEVICE_STR_ID_1, ptr @DP_SINK_DEVICE_STR_ID_2, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psr_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DP_SINK_DEVICE_STR_ID_1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DP_SINK_DEVICE_STR_ID_2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dmub_psr_create(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dmub_psr_create, i32 noundef 412) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %funcs.i = getelementptr inbounds %struct.dmub_psr, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @psr_funcs, ptr %funcs.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_psr_destroy(ptr nocapture noundef %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %dmub to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dmub, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dmub_psr_copy_settings(ptr nocapture noundef readonly %dmub, ptr noundef readonly %link, ptr nocapture noundef readonly %psr_context, i8 noundef zeroext %panel_inst) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 64)
  %1 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dmub, align 4
  %psr_copy_settings_data = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1
  %ctx1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %3 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx1, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %current_state = getelementptr inbounds %struct.dc, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_state, align 4
  %res_ctx3 = getelementptr inbounds %struct.dc_state, ptr %8, i32 0, i32 4
  %stream = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %link8 = getelementptr inbounds %struct.dc_stream_state, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %link8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link8, align 4
  %cmp9 = icmp eq ptr %12, %link
  br i1 %cmp9, label %land.lhs.true10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %13 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %cmp15 = icmp eq i32 %14, 128
  br i1 %cmp15, label %land.lhs.true10.for.end_crit_edge, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true10.for.end_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %stream.1 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream.1, align 4
  %tobool.not.1 = icmp eq ptr %16, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %link8.1 = getelementptr inbounds %struct.dc_stream_state, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %link8.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link8.1, align 4
  %cmp9.1 = icmp eq ptr %18, %link
  br i1 %cmp9.1, label %land.lhs.true10.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true10.1:                                ; preds = %land.lhs.true.1
  %connector_signal.1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %19 = ptrtoint ptr %connector_signal.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %connector_signal.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %20)
  %cmp15.1 = icmp eq i32 %20, 128
  br i1 %cmp15.1, label %land.lhs.true10.1.for.end_crit_edge, label %land.lhs.true10.1.for.inc.1_crit_edge

land.lhs.true10.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true10.1.for.end_crit_edge:              ; preds = %land.lhs.true10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.1:                                        ; preds = %land.lhs.true10.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %stream.2 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream.2, align 4
  %tobool.not.2 = icmp eq ptr %22, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %link8.2 = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %link8.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link8.2, align 4
  %cmp9.2 = icmp eq ptr %24, %link
  br i1 %cmp9.2, label %land.lhs.true10.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true10.2:                                ; preds = %land.lhs.true.2
  %connector_signal.2 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %25 = ptrtoint ptr %connector_signal.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %connector_signal.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %26)
  %cmp15.2 = icmp eq i32 %26, 128
  br i1 %cmp15.2, label %land.lhs.true10.2.for.end_crit_edge, label %land.lhs.true10.2.for.inc.2_crit_edge

land.lhs.true10.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true10.2.for.end_crit_edge:              ; preds = %land.lhs.true10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %land.lhs.true10.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %stream.3 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stream.3, align 4
  %tobool.not.3 = icmp eq ptr %28, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %link8.3 = getelementptr inbounds %struct.dc_stream_state, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %link8.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link8.3, align 4
  %cmp9.3 = icmp eq ptr %30, %link
  br i1 %cmp9.3, label %land.lhs.true10.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true10.3:                                ; preds = %land.lhs.true.3
  %connector_signal.3 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %31 = ptrtoint ptr %connector_signal.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %connector_signal.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %32)
  %cmp15.3 = icmp eq i32 %32, 128
  br i1 %cmp15.3, label %land.lhs.true10.3.for.end_crit_edge, label %land.lhs.true10.3.for.inc.3_crit_edge

land.lhs.true10.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true10.3.for.end_crit_edge:              ; preds = %land.lhs.true10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.3:                                        ; preds = %land.lhs.true10.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %stream.4 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.4, align 4
  %tobool.not.4 = icmp eq ptr %34, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %link8.4 = getelementptr inbounds %struct.dc_stream_state, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %link8.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link8.4, align 4
  %cmp9.4 = icmp eq ptr %36, %link
  br i1 %cmp9.4, label %land.lhs.true10.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true10.4:                                ; preds = %land.lhs.true.4
  %connector_signal.4 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %37 = ptrtoint ptr %connector_signal.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %connector_signal.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %38)
  %cmp15.4 = icmp eq i32 %38, 128
  br i1 %cmp15.4, label %land.lhs.true10.4.for.end_crit_edge, label %land.lhs.true10.4.for.inc.4_crit_edge

land.lhs.true10.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true10.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true10.4.for.end_crit_edge:              ; preds = %land.lhs.true10.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.4:                                        ; preds = %land.lhs.true10.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %stream.5 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream.5, align 4
  %tobool.not.5 = icmp eq ptr %40, null
  br i1 %tobool.not.5, label %for.inc.4.cleanup_crit_edge, label %land.lhs.true.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.5:                                  ; preds = %for.inc.4
  %link8.5 = getelementptr inbounds %struct.dc_stream_state, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %link8.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %link8.5, align 4
  %cmp9.5 = icmp eq ptr %42, %link
  br i1 %cmp9.5, label %land.lhs.true10.5, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true10.5:                                ; preds = %land.lhs.true.5
  %connector_signal.5 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %43 = ptrtoint ptr %connector_signal.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %connector_signal.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %44)
  %cmp15.5 = icmp eq i32 %44, 128
  br i1 %cmp15.5, label %land.lhs.true10.5.for.end_crit_edge, label %land.lhs.true10.5.cleanup_crit_edge

land.lhs.true10.5.cleanup_crit_edge:              ; preds = %land.lhs.true10.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true10.5.for.end_crit_edge:              ; preds = %land.lhs.true10.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %land.lhs.true10.5.for.end_crit_edge, %land.lhs.true10.4.for.end_crit_edge, %land.lhs.true10.3.for.end_crit_edge, %land.lhs.true10.2.for.end_crit_edge, %land.lhs.true10.1.for.end_crit_edge, %land.lhs.true10.for.end_crit_edge
  %i.0212.lcssa = phi i32 [ 0, %land.lhs.true10.for.end_crit_edge ], [ 1, %land.lhs.true10.1.for.end_crit_edge ], [ 2, %land.lhs.true10.2.for.end_crit_edge ], [ 3, %land.lhs.true10.3.for.end_crit_edge ], [ 4, %land.lhs.true10.4.for.end_crit_edge ], [ 5, %land.lhs.true10.5.for.end_crit_edge ]
  %arrayidx.le = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx3, i32 0, i32 %i.0212.lcssa
  %tobool18.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool18.not, label %for.end.cleanup_crit_edge, label %if.end20

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %stream21 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx3, i32 0, i32 %i.0212.lcssa, i32 1
  %45 = ptrtoint ptr %stream21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stream21, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #5
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %link.i, align 4
  %psr_version.i = getelementptr inbounds %struct.dc_link, ptr %48, i32 0, i32 50, i32 2
  %49 = ptrtoint ptr %psr_version.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %psr_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.i = icmp eq i32 %50, -1
  br i1 %cmp.i, label %dmub_psr_set_version.exit, label %if.end23

dmub_psr_set_version.exit:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %51 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %52 = call ptr @memset(ptr %51, i32 0, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cond.i = icmp ne i32 %50, 0
  %spec.select.i = sext i1 %cond.i to i32
  %53 = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_version, ptr %cmd.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select.i, ptr %53, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %51, align 4
  %panel_inst13.i = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_version, ptr %cmd.i, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %panel_inst13.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %panel_inst, ptr %panel_inst13.i, align 1
  %57 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1073741856, ptr %cmd.i, align 4
  %dmub_srv.i = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 14
  %58 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %59, ptr noundef nonnull %cmd.i) #5
  %60 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %61) #5
  %62 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %63) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %64 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %link_enc, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %psr_program_dp_dphy_fast_training = getelementptr inbounds %struct.link_encoder_funcs, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %psr_program_dp_dphy_fast_training to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %psr_program_dp_dphy_fast_training, align 4
  %psrExitLinkTrainingRequired = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 8
  %70 = ptrtoint ptr %psrExitLinkTrainingRequired to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %psrExitLinkTrainingRequired, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool25 = icmp ne i8 %71, 0
  call void %69(ptr noundef %65, i1 noundef zeroext %tobool25) #5
  %72 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %link_enc, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %psr_program_secondary_packet = getelementptr inbounds %struct.link_encoder_funcs, ptr %75, i32 0, i32 13
  %76 = ptrtoint ptr %psr_program_secondary_packet to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %psr_program_secondary_packet, align 4
  %sdpTransmitLineNumDeadline = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 10
  %78 = ptrtoint ptr %sdpTransmitLineNumDeadline to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sdpTransmitLineNumDeadline, align 4
  call void %77(ptr noundef %73, i32 noundef %79) #5
  %80 = getelementptr inbounds i8, ptr %cmd, i32 4
  %81 = call ptr @memset(ptr %80, i32 0, i32 60)
  %82 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1073807504, ptr %cmd, align 4
  %transmitterId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 1
  %83 = ptrtoint ptr %transmitterId to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %transmitterId, align 4
  %conv = trunc i32 %84 to i8
  %dpphy_inst = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 8
  %85 = ptrtoint ptr %dpphy_inst to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv, ptr %dpphy_inst, align 4
  %86 = ptrtoint ptr %psr_context to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %psr_context, align 4
  %conv37 = trunc i32 %87 to i8
  %aux_inst = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 9
  %88 = ptrtoint ptr %aux_inst to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv37, ptr %aux_inst, align 1
  %engineId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 2
  %89 = ptrtoint ptr %engineId to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %engineId, align 4
  %conv38 = trunc i32 %90 to i8
  %digfe_inst = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 6
  %91 = ptrtoint ptr %digfe_inst to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv38, ptr %digfe_inst, align 2
  %digbe_inst = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 7
  %92 = ptrtoint ptr %digbe_inst to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv, ptr %digbe_inst, align 1
  %mpcc_inst = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx3, i32 0, i32 %i.0212.lcssa, i32 2, i32 6
  %93 = ptrtoint ptr %mpcc_inst to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mpcc_inst, align 4
  %mpcc_inst41 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %mpcc_inst41 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %mpcc_inst41, align 1
  %dpp = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx3, i32 0, i32 %i.0212.lcssa, i32 2, i32 5
  %96 = ptrtoint ptr %dpp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dpp, align 8
  %tobool43.not = icmp eq ptr %97, null
  br i1 %tobool43.not, label %if.end23.if.end49_crit_edge, label %if.then44

if.end23.if.end49_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then44:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %inst = getelementptr inbounds %struct.dpp, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %inst, align 8
  %conv47 = trunc i32 %99 to i8
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end23.if.end49_crit_edge
  %conv47.sink = phi i8 [ %conv47, %if.then44 ], [ 0, %if.end23.if.end49_crit_edge ]
  %100 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv47.sink, ptr %100, align 2
  %stream_res = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx3, i32 0, i32 %i.0212.lcssa, i32 3
  %102 = ptrtoint ptr %stream_res to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %stream_res, align 8
  %tobool50.not = icmp eq ptr %103, null
  br i1 %tobool50.not, label %if.end49.if.end58_crit_edge, label %if.then51

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %inst54 = getelementptr inbounds %struct.output_pixel_processor, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %inst54 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %inst54, align 4
  %conv55 = trunc i32 %105 to i8
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.end49.if.end58_crit_edge
  %conv55.sink = phi i8 [ %conv55, %if.then51 ], [ 0, %if.end49.if.end58_crit_edge ]
  %106 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv55.sink, ptr %106, align 4
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx3, i32 0, i32 %i.0212.lcssa, i32 3, i32 2
  %108 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tg, align 8
  %tobool60.not = icmp eq ptr %109, null
  br i1 %tobool60.not, label %if.end58.if.end68_crit_edge, label %if.then61

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %inst64 = getelementptr inbounds %struct.timing_generator, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %inst64 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %inst64, align 4
  %conv65 = trunc i32 %111 to i8
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %if.end58.if.end68_crit_edge
  %conv65.sink = phi i8 [ %conv65, %if.then61 ], [ 0, %if.end58.if.end68_crit_edge ]
  %112 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 5
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv65.sink, ptr %112, align 1
  %psr_level = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 18
  %114 = ptrtoint ptr %psr_level to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %psr_level, align 4
  %conv69 = trunc i32 %115 to i16
  %psr_level70 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %psr_level70 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv69, ptr %psr_level70, align 4
  %allow_smu_optimizations = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 20
  %117 = ptrtoint ptr %allow_smu_optimizations to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %allow_smu_optimizations, align 4, !range !23
  %smu_optimizations_en = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 10
  %119 = ptrtoint ptr %smu_optimizations_en to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %smu_optimizations_en, align 2
  %allow_multi_disp_optimizations = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 21
  %120 = ptrtoint ptr %allow_multi_disp_optimizations to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %allow_multi_disp_optimizations, align 1, !range !23
  %multi_disp_optimizations_en = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 14
  %122 = ptrtoint ptr %multi_disp_optimizations_en to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %multi_disp_optimizations_en, align 1
  %frame_delay = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 19
  %123 = ptrtoint ptr %frame_delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %frame_delay, align 4
  %conv75 = trunc i32 %124 to i8
  %frame_delay76 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 11
  %125 = ptrtoint ptr %frame_delay76 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv75, ptr %frame_delay76, align 1
  %psrFrameCaptureIndicationReq = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 9
  %126 = ptrtoint ptr %psrFrameCaptureIndicationReq to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %psrFrameCaptureIndicationReq, align 2, !range !23
  %frame_cap_ind = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 12
  %128 = ptrtoint ptr %frame_cap_ind to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %frame_cap_ind, align 4
  %129 = ptrtoint ptr %sdpTransmitLineNumDeadline to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sdpTransmitLineNumDeadline, align 4
  %conv80 = trunc i32 %130 to i16
  %init_sdp_deadline = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 15
  %131 = ptrtoint ptr %init_sdp_deadline to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv80, ptr %init_sdp_deadline, align 4
  %132 = ptrtoint ptr %psr_copy_settings_data to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %psr_copy_settings_data, align 4
  %133 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %2, align 8
  %visual_confirm = getelementptr inbounds %struct.dc_debug_options, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %visual_confirm to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %visual_confirm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %136)
  %cmp83 = icmp eq i32 %136, 5
  %bf.set92 = select i1 %cmp83, i8 -64, i8 64
  %137 = ptrtoint ptr %psr_copy_settings_data to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %bf.set92, ptr %psr_copy_settings_data, align 4
  %fec_state = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 59
  %138 = ptrtoint ptr %fec_state to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fec_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %139)
  %cmp93 = icmp eq i32 %139, 2
  %conv95 = zext i1 %cmp93 to i8
  %fec_enable_status = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 18
  %140 = ptrtoint ptr %fec_enable_status to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv95, ptr %fec_enable_status, align 4
  %dc96 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %141 = ptrtoint ptr %dc96 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dc96, align 4
  %fec_enable_delay_in100us = getelementptr inbounds %struct.dc_debug_options, ptr %142, i32 0, i32 84
  %143 = ptrtoint ptr %fec_enable_delay_in100us to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %fec_enable_delay_in100us, align 4
  %fec_enable_delay_in100us98 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 19
  %145 = ptrtoint ptr %fec_enable_delay_in100us98 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %fec_enable_delay_in100us98, align 1
  %cmd_version = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 20
  %146 = ptrtoint ptr %cmd_version to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %cmd_version, align 2
  %panel_inst99 = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 21
  %147 = ptrtoint ptr %panel_inst99 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %panel_inst, ptr %panel_inst99, align 1
  %148 = ptrtoint ptr %stream21 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %stream21, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %149, i32 0, i32 5, i32 21
  %150 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %150)
  %bf.load101 = load i32, ptr %flags, align 4
  %151 = lshr i32 %bf.load101, 13
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %dsc_enable_status = getelementptr inbounds %struct.dmub_rb_cmd_psr_copy_settings, ptr %cmd, i32 0, i32 1, i32 22
  %154 = ptrtoint ptr %dsc_enable_status to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %dsc_enable_status, align 4
  br i1 %cmp93, label %land.lhs.true109, label %if.end68.if.end127_crit_edge

if.end68.if.end127_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

land.lhs.true109:                                 ; preds = %if.end68
  %sink_dev_id_str = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 11
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %sink_dev_id_str, ptr noundef nonnull dereferenceable(6) @DP_SINK_DEVICE_STR_ID_1, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool111.not = icmp eq i32 %bcmp, 0
  br i1 %tobool111.not, label %land.lhs.true109.if.then117_crit_edge, label %lor.lhs.false

land.lhs.true109.if.then117_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then117

lor.lhs.false:                                    ; preds = %land.lhs.true109
  %bcmp208 = call i32 @bcmp(ptr noundef dereferenceable(6) %sink_dev_id_str, ptr noundef nonnull dereferenceable(6) @DP_SINK_DEVICE_STR_ID_2, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp208)
  %tobool116.not = icmp eq i32 %bcmp208, 0
  br i1 %tobool116.not, label %lor.lhs.false.if.then117_crit_edge, label %lor.lhs.false.if.end127_crit_edge

lor.lhs.false.if.end127_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

lor.lhs.false.if.then117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then117

if.then117:                                       ; preds = %lor.lhs.false.if.then117_crit_edge, %land.lhs.true109.if.then117_crit_edge
  %bf.set121 = or i8 %bf.set92, 32
  br label %if.end127

if.end127:                                        ; preds = %if.then117, %lor.lhs.false.if.end127_crit_edge, %if.end68.if.end127_crit_edge
  %storemerge = phi i8 [ %bf.set121, %if.then117 ], [ %bf.set92, %lor.lhs.false.if.end127_crit_edge ], [ %bf.set92, %if.end68.if.end127_crit_edge ]
  %155 = ptrtoint ptr %psr_copy_settings_data to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %storemerge, ptr %psr_copy_settings_data, align 4
  %156 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %157, ptr noundef nonnull %cmd) #5
  %158 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %159) #5
  %160 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %161) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %dmub_psr_set_version.exit, %for.end.cleanup_crit_edge, %land.lhs.true10.5.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end127 ], [ false, %for.end.cleanup_crit_edge ], [ false, %dmub_psr_set_version.exit ], [ false, %land.lhs.true10.5.cleanup_crit_edge ], [ false, %land.lhs.true.5.cleanup_crit_edge ], [ false, %for.inc.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmub_psr_enable(ptr nocapture noundef readonly %dmub, i1 noundef zeroext %enable, i1 noundef zeroext %wait, i8 noundef zeroext %panel_inst) #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %3 = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 60)
  %data = getelementptr inbounds %struct.dmub_rb_cmd_psr_enable, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %data, align 4
  %panel_inst3 = getelementptr inbounds %struct.dmub_rb_cmd_psr_enable, ptr %cmd, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %panel_inst3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %panel_inst, ptr %panel_inst3, align 1
  %storemerge = select i1 %enable, i32 1073872896, i32 1073938432
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %cmd, align 4
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %9, ptr noundef nonnull %cmd) #5
  %10 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %11) #5
  %12 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %13) #5
  br i1 %wait, label %entry.for.body_crit_edge, label %entry.if.end74_crit_edge

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %entry.for.body_crit_edge
  %retry_count.087 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @dmub_psr_get_state(ptr noundef %dmub, ptr noundef nonnull %state, i8 noundef zeroext %panel_inst)
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp22.not = icmp eq i32 %15, 0
  br i1 %enable, label %if.then21, label %if.else25

if.then21:                                        ; preds = %for.body
  br i1 %cmp22.not, label %if.then21.if.end29_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else25:                                        ; preds = %for.body
  br i1 %cmp22.not, label %if.else25.for.end_crit_edge, label %if.else25.if.end29_crit_edge

if.else25.if.end29_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else25.for.end_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end29:                                         ; preds = %if.else25.if.end29_crit_edge, %if.then21.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 107374000) #5
  %inc = add nuw nsw i32 %retry_count.087, 1
  %exitcond.not = icmp eq i32 %inc, 1001
  br i1 %exitcond.not, label %if.end29.land.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end29.land.end_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

for.end:                                          ; preds = %if.else25.for.end_crit_edge, %if.then21.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %retry_count.087)
  %cmp30 = icmp ugt i32 %retry_count.087, 999
  br i1 %cmp30, label %for.end.land.end_crit_edge, label %for.end.if.end74_crit_edge

for.end.if.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

for.end.land.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %for.end.land.end_crit_edge, %if.end29.land.end_crit_edge
  %.b84 = load i1, ptr @dmub_psr_enable.__already_done, align 1
  br i1 %.b84, label %land.end.if.then69_crit_edge, label %if.then37, !prof !24

land.end.if.then69_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then69

if.then37:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dmub_psr_enable.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef null) #5
  br label %if.then69

if.then69:                                        ; preds = %if.then37, %land.end.if.then69_crit_edge
  call void @kgdb_breakpoint() #5
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %for.end.if.end74_crit_edge, %entry.if.end74_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmub_psr_get_state(ptr nocapture noundef readonly %dmub, ptr nocapture noundef %state, i8 noundef zeroext %panel_inst) #0 align 64 {
entry:
  %raw_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub, align 4
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_srv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_state) #5
  %6 = ptrtoint ptr %raw_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %raw_state, align 4
  %conv = zext i8 %panel_inst to i16
  br label %do.body

do.body:                                          ; preds = %do.cond.thread.do.body_crit_edge, %entry
  %retry_count.0 = phi i32 [ 0, %entry ], [ %inc79, %do.cond.thread.do.body_crit_edge ]
  %call = tail call i32 @dmub_srv_send_gpint_command(ptr noundef %5, i32 noundef 7, i16 noundef zeroext %conv, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.cond.thread

if.then:                                          ; preds = %do.body
  %call3 = call i32 @dmub_srv_get_gpint_response(ptr noundef %5, ptr noundef nonnull %raw_state) #5
  %7 = ptrtoint ptr %raw_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %raw_state, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.then.do.cond_crit_edge [
    i32 83, label %if.then47.i
    i32 16, label %if.then2.i
    i32 17, label %if.then5.i
    i32 32, label %if.then8.i
    i32 33, label %if.then11.i
    i32 34, label %if.then14.i
    i32 48, label %if.then17.i
    i32 49, label %if.then20.i
    i32 64, label %if.then23.i
    i32 65, label %if.then26.i
    i32 66, label %if.then29.i
    i32 67, label %if.then32.i
    i32 68, label %if.then35.i
    i32 80, label %if.then38.i
    i32 81, label %if.then41.i
    i32 82, label %if.then44.i
  ]

if.then.do.cond_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then11.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then14.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then17.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then20.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then23.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then26.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then29.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then32.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then35.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then38.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then41.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then44.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.then47.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

do.cond:                                          ; preds = %if.then47.i, %if.then44.i, %if.then41.i, %if.then38.i, %if.then35.i, %if.then32.i, %if.then29.i, %if.then26.i, %if.then23.i, %if.then20.i, %if.then17.i, %if.then14.i, %if.then11.i, %if.then8.i, %if.then5.i, %if.then2.i, %if.then.do.cond_crit_edge
  %storemerge = phi i32 [ 1, %if.then2.i ], [ 2, %if.then5.i ], [ 3, %if.then8.i ], [ 4, %if.then11.i ], [ 5, %if.then14.i ], [ 6, %if.then17.i ], [ 7, %if.then20.i ], [ 8, %if.then23.i ], [ 9, %if.then26.i ], [ 10, %if.then29.i ], [ 11, %if.then32.i ], [ 12, %if.then35.i ], [ 13, %if.then38.i ], [ 14, %if.then41.i ], [ 15, %if.then44.i ], [ 16, %if.then47.i ], [ 0, %if.then.do.cond_crit_edge ]
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %state, align 4
  br label %if.end67

do.cond.thread:                                   ; preds = %do.body
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 255, ptr %state, align 4
  %inc79 = add nuw nsw i32 %retry_count.0, 1
  %exitcond.not = icmp eq i32 %inc79, 1001
  br i1 %exitcond.not, label %land.end18, label %do.cond.thread.do.body_crit_edge

do.cond.thread.do.body_crit_edge:                 ; preds = %do.cond.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.end18:                                       ; preds = %do.cond.thread
  %.b75 = load i1, ptr @dmub_psr_get_state.__already_done, align 1
  br i1 %.b75, label %land.end18.if.then56_crit_edge, label %if.then22, !prof !24

land.end18.if.then56_crit_edge:                   ; preds = %land.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then56

if.then22:                                        ; preds = %land.end18
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dmub_psr_get_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 9, ptr noundef null) #5
  br label %if.then56

if.then56:                                        ; preds = %if.then22, %land.end18.if.then56_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %if.end67

if.end67:                                         ; preds = %if.then56, %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmub_psr_set_level(ptr nocapture noundef readonly %dmub, i16 noundef zeroext %psr_level, i8 noundef zeroext %panel_inst) #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %1 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dmub, align 4
  call void @dmub_psr_get_state(ptr noundef %dmub, ptr noundef nonnull %state, i8 noundef zeroext %panel_inst)
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = getelementptr inbounds i8, ptr %cmd, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 56)
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1074003984, ptr %cmd, align 4
  %psr_set_level_data = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_level, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %psr_set_level_data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %psr_level, ptr %psr_set_level_data, align 4
  %cmd_version = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_level, ptr %cmd, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %cmd_version to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %cmd_version, align 2
  %panel_inst12 = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_level, ptr %cmd, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %panel_inst12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %panel_inst, ptr %panel_inst12, align 1
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 14
  %11 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %12, ptr noundef nonnull %cmd) #5
  %13 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %14) #5
  %15 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmub_psr_force_static(ptr nocapture noundef readonly %dmub, i8 noundef zeroext %panel_inst) #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub, align 4
  %2 = getelementptr inbounds i8, ptr %cmd, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %psr_force_static_data = getelementptr inbounds %struct.dmub_rb_cmd_psr_force_static, ptr %cmd, i32 0, i32 1
  %panel_inst1 = getelementptr inbounds %struct.dmub_rb_cmd_psr_force_static, ptr %cmd, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %panel_inst1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %panel_inst, ptr %panel_inst1, align 1
  %5 = ptrtoint ptr %psr_force_static_data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %psr_force_static_data, align 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1074069504, ptr %cmd, align 4
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %8, ptr noundef nonnull %cmd) #5
  %9 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %10) #5
  %11 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %12) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmub_psr_get_residency(ptr nocapture noundef readonly %dmub, ptr noundef %residency, i8 noundef zeroext %panel_inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub, align 4
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_srv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %conv = zext i8 %panel_inst to i16
  %shl = shl nuw i16 %conv, 8
  %call = tail call i32 @dmub_srv_send_gpint_command(ptr noundef %5, i32 noundef 9, i16 noundef zeroext %shl, i32 noundef 30) #5
  %call3 = tail call i32 @dmub_srv_get_gpint_response(ptr noundef %5, ptr noundef %residency) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmub_psr_set_power_opt(ptr nocapture noundef readonly %dmub, i32 noundef %power_opt, i8 noundef zeroext %panel_inst) #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub, align 4
  %2 = getelementptr inbounds i8, ptr %cmd, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1074200608, ptr %cmd, align 4
  %psr_set_power_opt_data = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_power_opt, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %psr_set_power_opt_data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %psr_set_power_opt_data, align 4
  %power_opt10 = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_power_opt, ptr %cmd, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %power_opt10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %power_opt, ptr %power_opt10, align 4
  %panel_inst12 = getelementptr inbounds %struct.dmub_rb_cmd_psr_set_power_opt, ptr %cmd, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %panel_inst12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %panel_inst, ptr %panel_inst12, align 1
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %9, ptr noundef nonnull %cmd) #5
  %10 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %11) #5
  %12 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %13) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_execute(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_send_gpint_command(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmub_srv_get_gpint_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c", i32 412, i32 3}
!2 = !{ptr @__func__.dmub_psr_create, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @psr_funcs, !4, !"psr_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c", i32 385, i32 36}
!5 = !{ptr @DP_SINK_DEVICE_STR_ID_1, !6, !"DP_SINK_DEVICE_STR_ID_1", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/ddc_service_types.h", i32 121, i32 22}
!7 = !{ptr @DP_SINK_DEVICE_STR_ID_2, !8, !"DP_SINK_DEVICE_STR_ID_2", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/ddc_service_types.h", i32 122, i32 22}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c", i32 200, i32 4}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c", i32 107, i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
!24 = !{!"branch_weights", i32 2000, i32 1}
