; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_link_hwss.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.59 }
%struct.anon.59 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.60 }
%struct.anon.60 = type { i8 }
%union.max_lane_count = type { %struct.anon.61 }
%struct.anon.61 = type { i8 }
%union.max_down_spread = type { %struct.anon.62 }
%struct.anon.62 = type { i8 }
%union.dprx_feature = type { %struct.anon.63 }
%struct.anon.63 = type { i8 }
%union.sink_count = type { %struct.anon.64 }
%struct.anon.64 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.65 }
%struct.anon.65 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.67 }
%struct.anon.67 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.68 }
%struct.anon.68 = type { i8 }
%union.dpia_info = type { %struct.anon.69 }
%struct.anon.69 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.70 }
%struct.anon.70 = type { i8, i8, %struct.anon.71 }
%struct.anon.71 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.72 }
%struct.anon.72 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.73 }
%struct.anon.73 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.5 }
%struct.anon.5 = type { i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.6, %struct.anon.7, %struct.anon.8, i32, i32 }
%struct.anon.6 = type { i8, [3 x i8] }
%struct.anon.7 = type { i32, i32, i32 }
%struct.anon.8 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.12, %struct.anon.13, i8, i8, i64 }
%struct.anon.12 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.13 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.58 }
%struct.anon.58 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.50, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.51, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.50 = type { i8, [3 x i8] }
%struct.anon.51 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.48 }
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
%struct.anon.48 = type { i32 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.39, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.15 }
%union.anon.15 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.16 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.16 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.27, i32, i32, i32, i32 }
%struct.anon.27 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.28 }
%struct.anon.28 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.39 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.clock_source = type { ptr, ptr, i32, i8 }
%struct.clock_source_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.clk_mgr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.encoder_set_dp_phy_pattern_param = type { i32, ptr, i32, i32 }
%struct.link_training_settings = type { %struct.dc_link_settings, [4 x %struct.dc_lane_settings], ptr, ptr, ptr, i8, i16, i16, i16, i32, i32, i8, i32, i8, i8, [4 x %struct.dc_lane_settings], [4 x %union.dpcd_training_lane] }
%union.dpcd_training_lane = type { %struct.anon.14 }
%struct.anon.14 = type { i8 }
%struct.stream_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.audio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dsc_config = type { i32, i32, i32, i32, i8, %struct.dc_dsc_config }
%struct.dsc_optc_config = type { i32, i32, i8 }
%struct.dsc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.output_pixel_processor = type { ptr, i32, %struct.pwl_params, %struct.mpc_tree, [6 x i8], ptr, i32 }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.26, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.26 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.mpc_tree = type { i32, ptr }
%struct.stream_encoder = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@dp_enable_link_phy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dp_disable_link_phy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dp_set_dsc_on_stream.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Setting stream encoder DSC config for engine %d:\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Setting optc DSC config for tg instance %d:\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Setting stream encoder DSC PPS SDP for engine %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\09bytes_per_pixel 0x%08x (%d.%07d)\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09is_pixel_format_444 %d\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09slice_width %d\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.8 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 94, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 588, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 599, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 695, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 698, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 520, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 522, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 523, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_receiver_power_ctrl(ptr noundef %link, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #3
  %conv = select i1 %on, i8 1, i8 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %state, align 1
  %sync_lt_in_progress = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 12
  %1 = ptrtoint ptr %sync_lt_in_progress to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sync_lt_in_progress, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 1536, ptr noundef nonnull %state, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_write_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_source_sequence_trace(ptr noundef %link, i8 noundef zeroext %dp_test_mode) local_unnamed_addr #0 align 64 {
entry:
  %dp_test_mode.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp_test_mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %dp_test_mode, ptr %dp_test_mode.addr, align 1
  %cmp.not = icmp eq ptr %link, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %1 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dc, align 4
  %enable_driver_sequence_debug = getelementptr inbounds %struct.dc_debug_options, ptr %2, i32 0, i32 85
  %3 = ptrtoint ptr %enable_driver_sequence_debug to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_driver_sequence_debug, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call = call i32 @core_link_write_dpcd(ptr noundef nonnull %link, i32 noundef 780, ptr noundef nonnull %dp_test_mode.addr, i32 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_enable_link_phy(ptr noundef %link, ptr nocapture noundef readnone %link_res, i32 noundef %signal, i32 noundef %clock_source, ptr noundef %link_settings) local_unnamed_addr #0 align 64 {
entry:
  %state.i = alloca i8, align 1
  %dp_test_mode.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool, align 8
  %dmcu2 = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %dmcu2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmcu2, align 4
  %dc3 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %8 = ptrtoint ptr %dc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc3, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %res_pool5 = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %res_pool5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res_pool5, align 8
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp_clock_source, align 4
  %is_dig_mapping_flexible = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 15
  %16 = ptrtoint ptr %is_dig_mapping_flexible to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_dig_mapping_flexible, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 40
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_encs_assign, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %3, ptr noundef %link) #3
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %link_enc8 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %22 = ptrtoint ptr %link_enc8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_enc8, align 8
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %link_enc.0 = phi ptr [ %call, %if.then ], [ %23, %if.else ]
  %tobool9.not = icmp eq ptr %link_enc.0, null
  br i1 %tobool9.not, label %land.rhs, label %do.body.do.end53_crit_edge

do.body.do.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end53

land.rhs:                                         ; preds = %do.body
  %.b187 = load i1, ptr @dp_enable_link_phy.__already_done, align 1
  br i1 %.b187, label %land.rhs.if.then50_crit_edge, label %if.then18, !prof !31

land.rhs.if.then50_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @dp_enable_link_phy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #3
  br label %if.then50

if.then50:                                        ; preds = %if.then18, %land.rhs.if.then50_crit_edge
  tail call void @kgdb_breakpoint() #3
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body.do.end53_crit_edge
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %24 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %25)
  %cmp = icmp eq i32 %25, 128
  br i1 %cmp, label %if.then54, label %do.end53.for.body.preheader_crit_edge

do.end53.for.body.preheader_crit_edge:            ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

if.then54:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %dc3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dc3, align 4
  %edp_power_control = getelementptr inbounds %struct.dc, ptr %27, i32 0, i32 17, i32 1
  %28 = ptrtoint ptr %edp_power_control to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edp_power_control, align 4
  tail call void %29(ptr noundef %link, i1 noundef zeroext true) #3
  %30 = ptrtoint ptr %dc3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dc3, align 4
  %edp_wait_for_hpd_ready = getelementptr inbounds %struct.dc, ptr %31, i32 0, i32 17, i32 2
  %32 = ptrtoint ptr %edp_wait_for_hpd_ready to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edp_wait_for_hpd_ready, align 4
  tail call void %33(ptr noundef %link, i1 noundef zeroext true) #3
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then54, %do.end53.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0190 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %stream = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0190, i32 1
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream, align 4
  %cmp60.not = icmp eq ptr %35, null
  br i1 %cmp60.not, label %for.body.for.inc_crit_edge, label %land.lhs.true61

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true61:                                  ; preds = %for.body
  %link64 = getelementptr inbounds %struct.dc_stream_state, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %link64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link64, align 4
  %cmp65 = icmp eq ptr %37, %link
  br i1 %cmp65, label %if.then66, label %land.lhs.true61.for.inc_crit_edge

land.lhs.true61.for.inc_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then66:                                        ; preds = %land.lhs.true61
  %clock_source68 = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0190, i32 5
  %38 = ptrtoint ptr %clock_source68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clock_source68, align 8
  %cmp69.not = icmp eq ptr %39, null
  br i1 %cmp69.not, label %if.then66.for.inc_crit_edge, label %land.lhs.true70

if.then66.for.inc_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true70:                                  ; preds = %if.then66
  %id = getelementptr inbounds %struct.clock_source, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %41)
  %cmp73.not = icmp eq i32 %41, 8
  br i1 %cmp73.not, label %land.lhs.true70.for.inc_crit_edge, label %if.then74

land.lhs.true70.for.inc_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then74:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %clock_source68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %15, ptr %clock_source68, align 8
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %35, i32 0, i32 5, i32 12
  %43 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pix_clk_100hz, align 8
  %pix_clk_params = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0190, i32 3, i32 5
  %45 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %pix_clk_params, align 4
  %46 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %15, align 4
  %program_pix_clk = getelementptr inbounds %struct.clock_source_funcs, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %program_pix_clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %program_pix_clk, align 4
  %pll_settings = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0190, i32 6
  %call89 = tail call zeroext i1 %49(ptr noundef %15, ptr noundef %pix_clk_params, ptr noundef %pll_settings) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then74, %land.lhs.true70.for.inc_crit_edge, %if.then66.for.inc_crit_edge, %land.lhs.true61.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0190, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21
  %50 = call ptr @memcpy(ptr %cur_link_settings, ptr %link_settings, i32 16)
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 13
  %51 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_mgr, align 4
  %funcs92 = getelementptr inbounds %struct.clk_mgr, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %funcs92 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %funcs92, align 4
  %notify_link_rate_change = getelementptr inbounds %struct.clk_mgr_funcs, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %notify_link_rate_change to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %notify_link_rate_change, align 4
  %tobool93.not = icmp eq ptr %56, null
  br i1 %tobool93.not, label %for.end.if.end99_crit_edge, label %if.then94

for.end.if.end99_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99

if.then94:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %56(ptr noundef %52, ptr noundef %link) #3
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %for.end.if.end99_crit_edge
  %cmp100.not = icmp eq ptr %7, null
  br i1 %cmp100.not, label %if.end99.if.end108_crit_edge, label %land.lhs.true101

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end108

land.lhs.true101:                                 ; preds = %if.end99
  %funcs102 = getelementptr inbounds %struct.dmcu, ptr %7, i32 0, i32 1
  %57 = ptrtoint ptr %funcs102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %funcs102, align 4
  %lock_phy = getelementptr inbounds %struct.dmcu_funcs, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %lock_phy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lock_phy, align 4
  %tobool103.not = icmp eq ptr %60, null
  br i1 %tobool103.not, label %land.lhs.true101.if.end108_crit_edge, label %if.then104

land.lhs.true101.if.end108_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end108

if.then104:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #5
  %call107 = tail call zeroext i1 %60(ptr noundef nonnull %7) #3
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %land.lhs.true101.if.end108_crit_edge, %if.end99.if.end108_crit_edge
  %61 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i32 %signal, label %if.else112 [
    i32 128, label %if.end108.if.then110_crit_edge
    i32 32, label %if.end108.if.then110_crit_edge192
  ]

if.end108.if.then110_crit_edge192:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then110

if.end108.if.then110_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then110

if.then110:                                       ; preds = %if.end108.if.then110_crit_edge, %if.end108.if.then110_crit_edge192
  %62 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %link_enc.0, align 4
  %enable_dp_output = getelementptr inbounds %struct.link_encoder_funcs, ptr %63, i32 0, i32 5
  br label %if.end114

if.else112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %link_enc.0, align 4
  %enable_dp_mst_output = getelementptr inbounds %struct.link_encoder_funcs, ptr %65, i32 0, i32 6
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.then110
  %enable_dp_mst_output.sink = phi ptr [ %enable_dp_mst_output, %if.else112 ], [ %enable_dp_output, %if.then110 ]
  %66 = ptrtoint ptr %enable_dp_mst_output.sink to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %enable_dp_mst_output.sink, align 4
  tail call void %67(ptr noundef %link_enc.0, ptr noundef %link_settings, i32 noundef %clock_source) #3
  br i1 %cmp100.not, label %if.end114.if.end123_crit_edge, label %land.lhs.true116

if.end114.if.end123_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end123

land.lhs.true116:                                 ; preds = %if.end114
  %funcs117 = getelementptr inbounds %struct.dmcu, ptr %7, i32 0, i32 1
  %68 = ptrtoint ptr %funcs117 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs117, align 4
  %unlock_phy = getelementptr inbounds %struct.dmcu_funcs, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %unlock_phy to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %unlock_phy, align 4
  %tobool118.not = icmp eq ptr %71, null
  br i1 %tobool118.not, label %land.lhs.true116.if.end123_crit_edge, label %if.then119

land.lhs.true116.if.end123_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end123

if.then119:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #5
  %call122 = tail call zeroext i1 %71(ptr noundef nonnull %7) #3
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %land.lhs.true116.if.end123_crit_edge, %if.end114.if.end123_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_test_mode.addr.i)
  %72 = ptrtoint ptr %dp_test_mode.addr.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 5, ptr %dp_test_mode.addr.i, align 1
  %cmp.not.i = icmp eq ptr %link, null
  br i1 %cmp.not.i, label %if.end123.dp_source_sequence_trace.exit_crit_edge, label %land.lhs.true.i

if.end123.dp_source_sequence_trace.exit_crit_edge: ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_source_sequence_trace.exit

land.lhs.true.i:                                  ; preds = %if.end123
  %73 = ptrtoint ptr %dc3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dc3, align 4
  %enable_driver_sequence_debug.i = getelementptr inbounds %struct.dc_debug_options, ptr %74, i32 0, i32 85
  %75 = ptrtoint ptr %enable_driver_sequence_debug.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %enable_driver_sequence_debug.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge, label %if.then.i

land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_source_sequence_trace.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = call i32 @core_link_write_dpcd(ptr noundef nonnull %link, i32 noundef 780, ptr noundef nonnull %dp_test_mode.addr.i, i32 noundef 1) #3
  br label %dp_source_sequence_trace.exit

dp_source_sequence_trace.exit:                    ; preds = %if.then.i, %land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge, %if.end123.dp_source_sequence_trace.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_test_mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state.i) #3
  %77 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %state.i, align 1
  %sync_lt_in_progress.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 12
  %78 = ptrtoint ptr %sync_lt_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sync_lt_in_progress.i, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool1.not.i = icmp eq i8 %79, 0
  br i1 %tobool1.not.i, label %if.end.i, label %dp_source_sequence_trace.exit.dp_receiver_power_ctrl.exit_crit_edge

dp_source_sequence_trace.exit.dp_receiver_power_ctrl.exit_crit_edge: ; preds = %dp_source_sequence_trace.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_receiver_power_ctrl.exit

if.end.i:                                         ; preds = %dp_source_sequence_trace.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call.i189 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 1536, ptr noundef nonnull %state.i, i32 noundef 1) #3
  br label %dp_receiver_power_ctrl.exit

dp_receiver_power_ctrl.exit:                      ; preds = %if.end.i, %dp_source_sequence_trace.exit.dp_receiver_power_ctrl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edp_add_delay_for_T9(ptr nocapture noundef readonly %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %0 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_sink, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %extra_delay_backlight_off = getelementptr inbounds %struct.dc_sink, ptr %1, i32 0, i32 2, i32 18, i32 2
  %2 = ptrtoint ptr %extra_delay_backlight_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_delay_backlight_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %cond.false19

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

cond.false19:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %mul = mul i32 %3, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %mul) #3
  br label %if.end

if.end:                                           ; preds = %cond.false19, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @edp_receiver_ready_T9(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %sinkstatus = alloca i8, align 1
  %edpRev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sinkstatus) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %edpRev) #3
  %0 = ptrtoint ptr %edpRev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %edpRev, align 1
  %call = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 1792, ptr noundef nonnull %edpRev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %edpRev to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %edpRev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp1.not = icmp eq i8 %2, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  br label %do.body

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %tries.0 = phi i32 [ %inc, %if.end11.do.body_crit_edge ], [ 0, %land.lhs.true.do.body_crit_edge ]
  %3 = ptrtoint ptr %sinkstatus to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %sinkstatus, align 1
  %call3 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 517, ptr noundef nonnull %sinkstatus, i32 noundef 1) #3
  %4 = ptrtoint ptr %sinkstatus to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sinkstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5 = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp8.not = icmp eq i32 %call3, 1
  %or.cond = select i1 %cmp5, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %if.end11, label %do.body.if.end14_crit_edge

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.end11:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 21474800) #3
  %inc = add nuw nsw i32 %tries.0, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %if.end11.if.end14_crit_edge, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.end14:                                         ; preds = %if.end11.if.end14_crit_edge, %do.body.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %result.0 = phi i32 [ 1, %land.lhs.true.if.end14_crit_edge ], [ %call, %entry.if.end14_crit_edge ], [ 1, %if.end11.if.end14_crit_edge ], [ %call3, %do.body.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool = icmp ne i32 %result.0, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %edpRev) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sinkstatus) #3
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_read_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @edp_receiver_ready_T7(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %sinkstatus = alloca i8, align 1
  %edpRev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sinkstatus) #3
  %0 = ptrtoint ptr %sinkstatus to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sinkstatus, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %edpRev) #3
  %1 = ptrtoint ptr %edpRev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %edpRev, align 1
  %call = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 1792, ptr noundef nonnull %edpRev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %edpRev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %edpRev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.not = icmp eq i8 %3, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end19_crit_edge, label %if.then

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %call.i.i = call i64 @ktime_get_raw() #3
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %if.then
  %4 = ptrtoint ptr %sinkstatus to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sinkstatus, align 1
  %call4 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 517, ptr noundef nonnull %sinkstatus, i32 noundef 1) #3
  %5 = ptrtoint ptr %sinkstatus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sinkstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp6 = icmp ne i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp9.not = icmp eq i32 %call4, 1
  %or.cond = select i1 %cmp6, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end12, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end12:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 5368700) #3
  %call.i.i65 = call i64 @ktime_get_raw() #3
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 8
  %call16 = call i64 @dm_get_elapse_time_in_ns(ptr noundef %9, i64 noundef %call.i.i65, i64 noundef %call.i.i) #3
  %cmp17 = icmp ult i64 %call16, 50000000
  br i1 %cmp17, label %if.end12.do.body_crit_edge, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end19:                                         ; preds = %if.end12.if.end19_crit_edge, %do.body.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %result.0 = phi i32 [ 1, %land.lhs.true.if.end19_crit_edge ], [ %call, %entry.if.end19_crit_edge ], [ 1, %if.end12.if.end19_crit_edge ], [ %call4, %do.body.if.end19_crit_edge ]
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %10 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %local_sink, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end19.if.end50_crit_edge, label %land.lhs.true20

if.end19.if.end50_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

land.lhs.true20:                                  ; preds = %if.end19
  %extra_t7_ms = getelementptr inbounds %struct.dc_sink, ptr %11, i32 0, i32 2, i32 18, i32 3
  %12 = ptrtoint ptr %extra_t7_ms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extra_t7_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22.not = icmp eq i32 %13, 0
  br i1 %cmp22.not, label %land.lhs.true20.if.end50_crit_edge, label %cond.false43

land.lhs.true20.if.end50_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

cond.false43:                                     ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #5
  %mul = mul i32 %13, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %14(i32 noundef %mul) #3
  br label %if.end50

if.end50:                                         ; preds = %cond.false43, %land.lhs.true20.if.end50_crit_edge, %if.end19.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool51 = icmp ne i32 %result.0, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %edpRev) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sinkstatus) #3
  ret i1 %tobool51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_get_elapse_time_in_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_disable_link_phy(ptr noundef %link, ptr nocapture readnone %link_res, i32 noundef %signal) local_unnamed_addr #0 align 64 {
entry:
  %dp_test_mode.addr.i = alloca i8, align 1
  %state.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool, align 8
  %dmcu2 = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %dmcu2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmcu2, align 4
  %is_dig_mapping_flexible = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 15
  %8 = ptrtoint ptr %is_dig_mapping_flexible to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_dig_mapping_flexible, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 40
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_encs_assign, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %3, ptr noundef %link) #3
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %link_enc5 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %14 = ptrtoint ptr %link_enc5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_enc5, align 8
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %link_enc.0 = phi ptr [ %call, %if.then ], [ %15, %if.else ]
  %tobool6.not = icmp eq ptr %link_enc.0, null
  br i1 %tobool6.not, label %land.rhs, label %do.body.do.end50_crit_edge

do.body.do.end50_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end50

land.rhs:                                         ; preds = %do.body
  %.b132 = load i1, ptr @dp_disable_link_phy.__already_done, align 1
  br i1 %.b132, label %land.rhs.if.then47_crit_edge, label %if.then15, !prof !31

land.rhs.if.then47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then47

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @dp_disable_link_phy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #3
  br label %if.then47

if.then47:                                        ; preds = %if.then15, %land.rhs.if.then47_crit_edge
  tail call void @kgdb_breakpoint() #3
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body.do.end50_crit_edge
  %wa_flags = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 54
  %16 = ptrtoint ptr %wa_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wa_flags, align 2, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool51.not = icmp eq i8 %17, 0
  br i1 %tobool51.not, label %if.then52, label %do.end50.if.end53_crit_edge

do.end50.if.end53_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then52:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state.i) #3
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %state.i, align 1
  %sync_lt_in_progress.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 12
  %19 = ptrtoint ptr %sync_lt_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sync_lt_in_progress.i, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then52.dp_receiver_power_ctrl.exit_crit_edge

if.then52.dp_receiver_power_ctrl.exit_crit_edge:  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_receiver_power_ctrl.exit

if.end.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 1536, ptr noundef nonnull %state.i, i32 noundef 1) #3
  br label %dp_receiver_power_ctrl.exit

dp_receiver_power_ctrl.exit:                      ; preds = %if.end.i, %if.then52.dp_receiver_power_ctrl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state.i) #3
  br label %if.end53

if.end53:                                         ; preds = %dp_receiver_power_ctrl.exit, %do.end50.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %signal)
  %cmp = icmp eq i32 %signal, 128
  br i1 %cmp, label %if.then54, label %if.else65

if.then54:                                        ; preds = %if.end53
  %dc55 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %21 = ptrtoint ptr %dc55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc55, align 4
  %edp_backlight_control = getelementptr inbounds %struct.dc, ptr %22, i32 0, i32 17, i32 17
  %23 = ptrtoint ptr %edp_backlight_control to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %edp_backlight_control, align 4
  %tobool56.not = icmp eq ptr %24, null
  br i1 %tobool56.not, label %if.then54.if.end61_crit_edge, label %if.then57

if.then54.if.end61_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #5
  call void %24(ptr noundef %link, i1 noundef zeroext false) #3
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.then54.if.end61_crit_edge
  %25 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_enc.0, align 4
  %disable_output = getelementptr inbounds %struct.link_encoder_funcs, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %disable_output to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disable_output, align 4
  call void %28(ptr noundef %link_enc.0, i32 noundef 128) #3
  %29 = ptrtoint ptr %dc55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc55, align 4
  %edp_power_control = getelementptr inbounds %struct.dc, ptr %30, i32 0, i32 17, i32 1
  %31 = ptrtoint ptr %edp_power_control to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edp_power_control, align 4
  call void %32(ptr noundef %link, i1 noundef zeroext false) #3
  br label %if.end86

if.else65:                                        ; preds = %if.end53
  %cmp66.not = icmp eq ptr %7, null
  br i1 %cmp66.not, label %if.end86.critedge, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.else65
  %funcs68 = getelementptr inbounds %struct.dmcu, ptr %7, i32 0, i32 1
  %33 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs68, align 4
  %lock_phy = getelementptr inbounds %struct.dmcu_funcs, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %lock_phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock_phy, align 4
  %tobool69.not = icmp eq ptr %36, null
  br i1 %tobool69.not, label %land.lhs.true67.land.lhs.true78_crit_edge, label %if.then70

land.lhs.true67.land.lhs.true78_crit_edge:        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true78

if.then70:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #5
  %call73 = call zeroext i1 %36(ptr noundef nonnull %7) #3
  br label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.then70, %land.lhs.true67.land.lhs.true78_crit_edge
  %37 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %link_enc.0, align 4
  %disable_output76.c135 = getelementptr inbounds %struct.link_encoder_funcs, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %disable_output76.c135 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %disable_output76.c135, align 4
  call void %40(ptr noundef %link_enc.0, i32 noundef %signal) #3
  %41 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs68, align 4
  %unlock_phy = getelementptr inbounds %struct.dmcu_funcs, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %unlock_phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %unlock_phy, align 4
  %tobool80.not = icmp eq ptr %44, null
  br i1 %tobool80.not, label %land.lhs.true78.if.end86_crit_edge, label %if.then81

land.lhs.true78.if.end86_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end86

if.then81:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #5
  %call84 = call zeroext i1 %44(ptr noundef nonnull %7) #3
  br label %if.end86

if.end86.critedge:                                ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %link_enc.0, align 4
  %disable_output76.c136 = getelementptr inbounds %struct.link_encoder_funcs, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %disable_output76.c136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %disable_output76.c136, align 4
  call void %48(ptr noundef %link_enc.0, i32 noundef %signal) #3
  br label %if.end86

if.end86:                                         ; preds = %if.end86.critedge, %if.then81, %land.lhs.true78.if.end86_crit_edge, %if.end61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_test_mode.addr.i)
  %49 = ptrtoint ptr %dp_test_mode.addr.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 12, ptr %dp_test_mode.addr.i, align 1
  %cmp.not.i = icmp eq ptr %link, null
  br i1 %cmp.not.i, label %if.end86.dp_source_sequence_trace.exit_crit_edge, label %land.lhs.true.i

if.end86.dp_source_sequence_trace.exit_crit_edge: ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_source_sequence_trace.exit

land.lhs.true.i:                                  ; preds = %if.end86
  %dc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %50 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dc.i, align 4
  %enable_driver_sequence_debug.i = getelementptr inbounds %struct.dc_debug_options, ptr %51, i32 0, i32 85
  %52 = ptrtoint ptr %enable_driver_sequence_debug.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable_driver_sequence_debug.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge, label %if.then.i

land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_source_sequence_trace.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i137 = call i32 @core_link_write_dpcd(ptr noundef nonnull %link, i32 noundef 780, ptr noundef nonnull %dp_test_mode.addr.i, i32 noundef 1) #3
  br label %dp_source_sequence_trace.exit

dp_source_sequence_trace.exit:                    ; preds = %if.then.i, %land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge, %if.end86.dp_source_sequence_trace.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_test_mode.addr.i)
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21
  %54 = call ptr @memset(ptr %cur_link_settings, i32 0, i32 16)
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 13
  %55 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_mgr, align 4
  %funcs87 = getelementptr inbounds %struct.clk_mgr, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %funcs87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %funcs87, align 4
  %notify_link_rate_change = getelementptr inbounds %struct.clk_mgr_funcs, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %notify_link_rate_change to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %notify_link_rate_change, align 4
  %tobool88.not = icmp eq ptr %60, null
  br i1 %tobool88.not, label %dp_source_sequence_trace.exit.if.end94_crit_edge, label %if.then89

dp_source_sequence_trace.exit.if.end94_crit_edge: ; preds = %dp_source_sequence_trace.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.then89:                                        ; preds = %dp_source_sequence_trace.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void %60(ptr noundef %56, ptr noundef %link) #3
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %dp_source_sequence_trace.exit.if.end94_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_disable_link_phy_mst(ptr noundef %link, ptr nocapture noundef readnone %link_res, i32 noundef %signal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_stream_alloc_table = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 55
  %0 = ptrtoint ptr %mst_stream_alloc_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mst_stream_alloc_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dp_disable_link_phy(ptr noundef %link, ptr undef, i32 noundef %signal)
  tail call void @dp_enable_mst_on_sink(ptr noundef %link, i1 noundef zeroext false) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_enable_mst_on_sink(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_set_hw_training_pattern(ptr noundef %link, ptr nocapture noundef readnone %link_res, i32 noundef %pattern, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %dp_test_mode.addr.i.i = alloca i8, align 1
  %pattern_param.i = alloca %struct.encoder_set_dp_phy_pattern_param, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %pattern)
  %0 = icmp ult i32 %pattern, 4
  %switch.offset = add i32 %pattern, 8
  %spec.select = select i1 %0, i32 %switch.offset, i32 19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pattern_param.i) #3
  %is_dig_mapping_flexible.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 15
  %1 = ptrtoint ptr %is_dig_mapping_flexible.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_dig_mapping_flexible.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %dc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %3 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc.i, align 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res_pool.i, align 8
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %6, i32 0, i32 40
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %link_encs_assign.i = getelementptr inbounds %struct.resource_funcs, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %link_encs_assign.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_encs_assign.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call.i = tail call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %14, ptr noundef %link) #3
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %15 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_enc.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %encoder.0.i = phi ptr [ %call.i, %if.then.i ], [ %16, %if.else.i ]
  %17 = ptrtoint ptr %pattern_param.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %pattern_param.i, align 4
  %custom_pattern3.i = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param.i, i32 0, i32 1
  %18 = ptrtoint ptr %custom_pattern3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %custom_pattern3.i, align 4
  %custom_pattern_size4.i = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param.i, i32 0, i32 2
  %19 = ptrtoint ptr %custom_pattern_size4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %custom_pattern_size4.i, align 4
  %call5.i = tail call i32 @dp_get_panel_mode(ptr noundef %link) #3
  %dp_panel_mode.i = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param.i, i32 0, i32 3
  %20 = ptrtoint ptr %dp_panel_mode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call5.i, ptr %dp_panel_mode.i, align 4
  %21 = ptrtoint ptr %encoder.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encoder.0.i, align 4
  %dp_set_phy_pattern.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %dp_set_phy_pattern.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dp_set_phy_pattern.i, align 4
  call void %24(ptr noundef %encoder.0.i, ptr noundef nonnull %pattern_param.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_test_mode.addr.i.i) #3
  %25 = ptrtoint ptr %dp_test_mode.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %dp_test_mode.addr.i.i, align 1
  %cmp.not.i.i = icmp eq ptr %link, null
  br i1 %cmp.not.i.i, label %if.end.i.dp_set_hw_test_pattern.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.dp_set_hw_test_pattern.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_set_hw_test_pattern.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  %dc.i.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %26 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dc.i.i, align 4
  %enable_driver_sequence_debug.i.i = getelementptr inbounds %struct.dc_debug_options, ptr %27, i32 0, i32 85
  %28 = ptrtoint ptr %enable_driver_sequence_debug.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_driver_sequence_debug.i.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.dp_set_hw_test_pattern.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.dp_set_hw_test_pattern.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_set_hw_test_pattern.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = call i32 @core_link_write_dpcd(ptr noundef nonnull %link, i32 noundef 780, ptr noundef nonnull %dp_test_mode.addr.i.i, i32 noundef 1) #3
  br label %dp_set_hw_test_pattern.exit

dp_set_hw_test_pattern.exit:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.dp_set_hw_test_pattern.exit_crit_edge, %if.end.i.dp_set_hw_test_pattern.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_test_mode.addr.i.i) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pattern_param.i) #3
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_set_hw_test_pattern(ptr noundef %link, ptr nocapture readnone %link_res, i32 noundef %test_pattern, ptr noundef %custom_pattern, i32 noundef %custom_pattern_size) local_unnamed_addr #0 align 64 {
entry:
  %dp_test_mode.addr.i = alloca i8, align 1
  %pattern_param = alloca %struct.encoder_set_dp_phy_pattern_param, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pattern_param) #3
  %is_dig_mapping_flexible = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 15
  %0 = ptrtoint ptr %is_dig_mapping_flexible to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_dig_mapping_flexible, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %dc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_encs_assign, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call = tail call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %13, ptr noundef %link) #3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %14 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_enc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %encoder.0 = phi ptr [ %call, %if.then ], [ %15, %if.else ]
  %16 = ptrtoint ptr %pattern_param to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %test_pattern, ptr %pattern_param, align 4
  %custom_pattern3 = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param, i32 0, i32 1
  %17 = ptrtoint ptr %custom_pattern3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %custom_pattern, ptr %custom_pattern3, align 4
  %custom_pattern_size4 = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param, i32 0, i32 2
  %18 = ptrtoint ptr %custom_pattern_size4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %custom_pattern_size, ptr %custom_pattern_size4, align 4
  %call5 = tail call i32 @dp_get_panel_mode(ptr noundef %link) #3
  %dp_panel_mode = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param, i32 0, i32 3
  %19 = ptrtoint ptr %dp_panel_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call5, ptr %dp_panel_mode, align 4
  %20 = ptrtoint ptr %encoder.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder.0, align 4
  %dp_set_phy_pattern = getelementptr inbounds %struct.link_encoder_funcs, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %dp_set_phy_pattern to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dp_set_phy_pattern, align 4
  call void %23(ptr noundef %encoder.0, ptr noundef nonnull %pattern_param) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_test_mode.addr.i)
  %24 = ptrtoint ptr %dp_test_mode.addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %dp_test_mode.addr.i, align 1
  %cmp.not.i = icmp eq ptr %link, null
  br i1 %cmp.not.i, label %if.end.dp_source_sequence_trace.exit_crit_edge, label %land.lhs.true.i

if.end.dp_source_sequence_trace.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_source_sequence_trace.exit

land.lhs.true.i:                                  ; preds = %if.end
  %dc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %25 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dc.i, align 4
  %enable_driver_sequence_debug.i = getelementptr inbounds %struct.dc_debug_options, ptr %26, i32 0, i32 85
  %27 = ptrtoint ptr %enable_driver_sequence_debug.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enable_driver_sequence_debug.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge, label %if.then.i

land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_source_sequence_trace.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = call i32 @core_link_write_dpcd(ptr noundef nonnull %link, i32 noundef 780, ptr noundef nonnull %dp_test_mode.addr.i, i32 noundef 1) #3
  br label %dp_source_sequence_trace.exit

dp_source_sequence_trace.exit:                    ; preds = %if.then.i, %land.lhs.true.i.dp_source_sequence_trace.exit_crit_edge, %if.end.dp_source_sequence_trace.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_test_mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pattern_param) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_set_hw_lane_settings(ptr nocapture noundef %link, ptr nocapture noundef readnone %link_res, ptr noundef %link_settings, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %0 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_enc, align 8
  %lttpr_mode = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 13
  %2 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lttpr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phy_repeater_cnt.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 25, i32 4
  %4 = ptrtoint ptr %phy_repeater_cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_repeater_cnt.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %5, label %sw.epilog.i.i [
    i8 -128, label %land.lhs.true.is_immediate_downstream.exit_crit_edge
    i8 64, label %sw.bb1.i.i
    i8 32, label %sw.bb2.i.i
    i8 16, label %sw.bb3.i.i
    i8 8, label %sw.bb4.i.i
    i8 4, label %sw.bb5.i.i
    i8 2, label %sw.bb6.i.i
    i8 1, label %sw.bb7.i.i
  ]

land.lhs.true.is_immediate_downstream.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.bb1.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.bb2.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.bb3.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.bb4.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.bb5.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.bb6.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.bb7.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

sw.epilog.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_immediate_downstream.exit

is_immediate_downstream.exit:                     ; preds = %sw.epilog.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %land.lhs.true.is_immediate_downstream.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ 8, %sw.bb7.i.i ], [ 7, %sw.bb6.i.i ], [ 6, %sw.bb5.i.i ], [ 5, %sw.bb4.i.i ], [ 4, %sw.bb3.i.i ], [ 3, %sw.bb2.i.i ], [ 2, %sw.bb1.i.i ], [ 1, %land.lhs.true.is_immediate_downstream.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %offset)
  %cmp.i = icmp eq i32 %retval.0.i.i, %offset
  br i1 %cmp.i, label %is_immediate_downstream.exit.if.end_crit_edge, label %is_immediate_downstream.exit.cleanup_crit_edge

is_immediate_downstream.exit.cleanup_crit_edge:   ; preds = %is_immediate_downstream.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

is_immediate_downstream.exit.if.end_crit_edge:    ; preds = %is_immediate_downstream.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %is_immediate_downstream.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dp_set_lane_settings = getelementptr inbounds %struct.link_encoder_funcs, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %dp_set_lane_settings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dp_set_lane_settings, align 4
  tail call void %10(ptr noundef %1, ptr noundef %link_settings) #3
  %cur_lane_setting = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 22
  %lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %link_settings, i32 0, i32 1
  %11 = call ptr @memmove(ptr %cur_lane_setting, ptr %lane_settings, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_immediate_downstream.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_get_panel_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_retrain_link_dp_test(ptr noundef %link, ptr noundef %link_setting, i1 noundef zeroext %skip_video_pattern) local_unnamed_addr #0 align 64 {
entry:
  %state.i = alloca i8, align 1
  %dp_test_mode.addr.i.i = alloca i8, align 1
  %pattern_param.i = alloca %struct.encoder_set_dp_phy_pattern_param, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %3, i32 0, i32 4
  %is_dig_mapping_flexible.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 15
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %custom_pattern3.i = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param.i, i32 0, i32 1
  %custom_pattern_size4.i = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param.i, i32 0, i32 2
  %dp_panel_mode.i = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %pattern_param.i, i32 0, i32 3
  %cmp.not.i.i = icmp eq ptr %link, null
  %sync_lt_in_progress.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 12
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0140 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0140
  %stream = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0140, i32 1
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  %cmp2.not = icmp eq ptr %5, null
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %top_pipe = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0140, i32 9
  %6 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %top_pipe, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %prev_odm_pipe = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0140, i32 12
  %8 = ptrtoint ptr %prev_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev_odm_pipe, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %link10 = getelementptr inbounds %struct.dc_stream_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %link10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link10, align 4
  %cmp11.not = icmp eq ptr %11, null
  br i1 %cmp11.not, label %land.lhs.true7.for.inc_crit_edge, label %land.lhs.true12

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %stream_enc = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0140, i32 3, i32 3
  %12 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream_enc, align 4
  %cmp14.not = icmp ne ptr %13, null
  %cmp19 = icmp eq ptr %11, %link
  %or.cond = select i1 %cmp14.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 21474800) #3
  %15 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream_enc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dp_blank = getelementptr inbounds %struct.stream_encoder_funcs, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %dp_blank to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dp_blank, align 4
  call void %20(ptr noundef %link, ptr noundef %16) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pattern_param.i) #3
  %21 = ptrtoint ptr %is_dig_mapping_flexible.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_dig_mapping_flexible.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %23 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dc, align 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res_pool.i, align 8
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %26, i32 0, i32 40
  %27 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs.i, align 4
  %link_encs_assign.i = getelementptr inbounds %struct.resource_funcs, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %link_encs_assign.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link_encs_assign.i, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %call.i = call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %34, ptr noundef %link) #3
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %35 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link_enc.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %encoder.0.i = phi ptr [ %call.i, %if.then.i ], [ %36, %if.else.i ]
  %37 = ptrtoint ptr %pattern_param.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pattern_param.i, align 4
  %38 = ptrtoint ptr %custom_pattern3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %custom_pattern3.i, align 4
  %39 = ptrtoint ptr %custom_pattern_size4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %custom_pattern_size4.i, align 4
  %call5.i = call i32 @dp_get_panel_mode(ptr noundef %link) #3
  %40 = ptrtoint ptr %dp_panel_mode.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call5.i, ptr %dp_panel_mode.i, align 4
  %41 = ptrtoint ptr %encoder.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %encoder.0.i, align 4
  %dp_set_phy_pattern.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %dp_set_phy_pattern.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dp_set_phy_pattern.i, align 4
  call void %44(ptr noundef %encoder.0.i, ptr noundef nonnull %pattern_param.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_test_mode.addr.i.i) #3
  %45 = ptrtoint ptr %dp_test_mode.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 6, ptr %dp_test_mode.addr.i.i, align 1
  br i1 %cmp.not.i.i, label %if.end.i.dp_set_hw_test_pattern.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.dp_set_hw_test_pattern.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_set_hw_test_pattern.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  %46 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dc, align 4
  %enable_driver_sequence_debug.i.i = getelementptr inbounds %struct.dc_debug_options, ptr %47, i32 0, i32 85
  %48 = ptrtoint ptr %enable_driver_sequence_debug.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %enable_driver_sequence_debug.i.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.dp_set_hw_test_pattern.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.dp_set_hw_test_pattern.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_set_hw_test_pattern.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = call i32 @core_link_write_dpcd(ptr noundef nonnull %link, i32 noundef 780, ptr noundef nonnull %dp_test_mode.addr.i.i, i32 noundef 1) #3
  br label %dp_set_hw_test_pattern.exit

dp_set_hw_test_pattern.exit:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.dp_set_hw_test_pattern.exit_crit_edge, %if.end.i.dp_set_hw_test_pattern.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_test_mode.addr.i.i) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pattern_param.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state.i) #3
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %state.i, align 1
  %51 = ptrtoint ptr %sync_lt_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sync_lt_in_progress.i, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool1.not.i137 = icmp eq i8 %52, 0
  br i1 %tobool1.not.i137, label %if.end.i139, label %dp_set_hw_test_pattern.exit.dp_receiver_power_ctrl.exit_crit_edge

dp_set_hw_test_pattern.exit.dp_receiver_power_ctrl.exit_crit_edge: ; preds = %dp_set_hw_test_pattern.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_receiver_power_ctrl.exit

if.end.i139:                                      ; preds = %dp_set_hw_test_pattern.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call.i138 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 1536, ptr noundef nonnull %state.i, i32 noundef 1) #3
  br label %dp_receiver_power_ctrl.exit

dp_receiver_power_ctrl.exit:                      ; preds = %if.end.i139, %dp_set_hw_test_pattern.exit.dp_receiver_power_ctrl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state.i) #3
  %53 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dc, align 4
  %disable_stream = getelementptr inbounds %struct.dc, ptr %54, i32 0, i32 17, i32 36
  %55 = ptrtoint ptr %disable_stream to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disable_stream, align 4
  call void %56(ptr noundef %arrayidx1) #3
  %audio = getelementptr %struct.pipe_ctx, ptr %res_ctx, i32 %i.0140, i32 3, i32 4
  %57 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %audio, align 8
  %tobool31.not = icmp eq ptr %58, null
  br i1 %tobool31.not, label %dp_receiver_power_ctrl.exit.if.end_crit_edge, label %land.lhs.true32

dp_receiver_power_ctrl.exit.if.end_crit_edge:     ; preds = %dp_receiver_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true32:                                  ; preds = %dp_receiver_power_ctrl.exit
  %59 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dc, align 4
  %az_endpoint_mute_only = getelementptr inbounds %struct.dc_debug_options, ptr %60, i32 0, i32 49
  %61 = ptrtoint ptr %az_endpoint_mute_only to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %az_endpoint_mute_only, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool34.not = icmp eq i8 %62, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true32.if.end_crit_edge

land.lhs.true32.if.end_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %58, align 4
  %az_disable = getelementptr inbounds %struct.audio_funcs, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %az_disable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %az_disable, align 4
  call void %66(ptr noundef nonnull %58) #3
  br label %if.end

if.end:                                           ; preds = %if.then35, %land.lhs.true32.if.end_crit_edge, %dp_receiver_power_ctrl.exit.if.end_crit_edge
  %67 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %link_enc.i, align 8
  %tobool43.not = icmp eq ptr %68, null
  br i1 %tobool43.not, label %if.end.if.end48_crit_edge, label %if.then44

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %disable_output = getelementptr inbounds %struct.link_encoder_funcs, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %disable_output to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disable_output, align 4
  call void %72(ptr noundef nonnull %68, i32 noundef 32) #3
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end.if.end48_crit_edge
  %73 = call ptr @memset(ptr %cur_link_settings, i32 0, i32 16)
  %call = call zeroext i1 @perform_link_training_with_retries(ptr noundef %link_setting, i1 noundef zeroext %skip_video_pattern, i32 noundef 4, ptr noundef %arrayidx1, i32 noundef 32, i1 noundef zeroext false) #3
  %74 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dc, align 4
  %enable_stream = getelementptr inbounds %struct.dc, ptr %75, i32 0, i32 17, i32 35
  %76 = ptrtoint ptr %enable_stream to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %enable_stream, align 4
  call void %77(ptr noundef %arrayidx1) #3
  %78 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dc, align 4
  %unblank_stream = getelementptr inbounds %struct.dc, ptr %79, i32 0, i32 17, i32 38
  %80 = ptrtoint ptr %unblank_stream to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %unblank_stream, align 4
  call void %81(ptr noundef %arrayidx1, ptr noundef %link_setting) #3
  %82 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %audio, align 8
  %tobool60.not = icmp eq ptr %83, null
  br i1 %tobool60.not, label %if.end48.for.inc_crit_edge, label %if.then61

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then61:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %az_enable = getelementptr inbounds %struct.audio_funcs, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %az_enable to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %az_enable, align 4
  call void %87(ptr noundef nonnull %83) #3
  %88 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %stream_enc, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %audio_mute_control = getelementptr inbounds %struct.stream_encoder_funcs, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %audio_mute_control to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %audio_mute_control, align 4
  call void %93(ptr noundef %89, i1 noundef zeroext false) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %if.end48.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true7.for.inc_crit_edge, %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0140, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @perform_link_training_with_retries(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_set_dsc_on_rx(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp.i = icmp eq i32 %3, 512
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ctx4 = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx4, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %lor.lhs.false.if.end_crit_edge, label %if.else

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call zeroext i1 @dm_helpers_dp_write_dsc_enable(ptr noundef %9, ptr noundef %1, i1 noundef zeroext %enable) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %result.0.off0 = phi i1 [ %call6, %if.else ], [ true, %lor.lhs.false.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ]
  ret i1 %result.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_write_dsc_enable(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_set_dsc_on_stream(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %dsc_cfg = alloca %struct.dsc_config, align 4
  %dsc_optc_cfg = alloca %struct.dsc_optc_config, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_res = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3
  %dsc1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %dsc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsc1, align 4
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %next_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 11
  %8 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %odm_pipe.0229 = load ptr, ptr %next_odm_pipe, align 4
  %tobool.not230 = icmp eq ptr %odm_pipe.0229, null
  br i1 %tobool.not230, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %odm_pipe.0232 = phi ptr [ %odm_pipe.0, %for.body.for.body_crit_edge ], [ %odm_pipe.0229, %entry.for.body_crit_edge ]
  %opp_cnt.0231 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %inc = add i32 %opp_cnt.0231, 1
  %next_odm_pipe5 = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.0232, i32 0, i32 11
  %9 = ptrtoint ptr %next_odm_pipe5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %odm_pipe.0 = load ptr, ptr %next_odm_pipe5, align 4
  %tobool.not = icmp eq ptr %odm_pipe.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %opp_cnt.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dsc_cfg) #3
  %10 = getelementptr inbounds i8, ptr %dsc_cfg, i32 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dsc_optc_cfg) #3
  %12 = call ptr @memset(ptr %dsc_optc_cfg, i32 255, i32 12)
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h_addressable, align 8
  %h_border_left = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_border_left, align 4
  %add = add i32 %16, %14
  %h_border_right = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_border_right, align 4
  %add9 = add i32 %add, %18
  %div = udiv i32 %add9, %opp_cnt.0.lcssa
  %19 = ptrtoint ptr %dsc_cfg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %dsc_cfg, align 4
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 8
  %20 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_addressable, align 8
  %v_border_top = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 7
  %22 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v_border_top, align 4
  %add12 = add i32 %23, %21
  %v_border_bottom = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 9
  %24 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v_border_bottom, align 4
  %add14 = add i32 %add12, %25
  %pic_height = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 1
  %26 = ptrtoint ptr %pic_height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add14, ptr %pic_height, align 4
  %pixel_encoding = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 17
  %27 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pixel_encoding, align 4
  %pixel_encoding16 = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 2
  %29 = ptrtoint ptr %pixel_encoding16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pixel_encoding16, align 4
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 16
  %30 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %display_color_depth, align 8
  %color_depth = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 3
  %32 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %color_depth, align 4
  %33 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_odm_pipe, align 4
  %tobool19 = icmp ne ptr %34, null
  %is_odm = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 4
  %frombool21 = zext i1 %tobool19 to i8
  %35 = ptrtoint ptr %is_odm to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool21, ptr %is_odm, align 4
  %dc_dsc_cfg = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 5
  %dsc_cfg23 = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 23
  %36 = call ptr @memcpy(ptr %dc_dsc_cfg, ptr %dsc_cfg23, i32 36)
  %37 = ptrtoint ptr %dc_dsc_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dc_dsc_cfg, align 4
  %rem = urem i32 %38, %opp_cnt.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.then.do.end68_crit_edge, label %land.rhs

if.then.do.end68_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end68

land.rhs:                                         ; preds = %if.then
  %.b217 = load i1, ptr @dp_set_dsc_on_stream.__already_done, align 1
  br i1 %.b217, label %land.rhs.if.then65_crit_edge, label %if.then34, !prof !31

land.rhs.if.then65_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then65

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @dp_set_dsc_on_stream.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 565, i32 noundef 9, ptr noundef null) #3
  br label %if.then65

if.then65:                                        ; preds = %if.then34, %land.rhs.if.then65_crit_edge
  tail call void @kgdb_breakpoint() #3
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %if.then.do.end68_crit_edge
  %39 = ptrtoint ptr %dc_dsc_cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dc_dsc_cfg, align 4
  %div71 = udiv i32 %40, %opp_cnt.0.lcssa
  store i32 %div71, ptr %dc_dsc_cfg, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %dsc_set_config = getelementptr inbounds %struct.dsc_funcs, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dsc_set_config to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dsc_set_config, align 4
  call void %44(ptr noundef %1, ptr noundef nonnull %dsc_cfg, ptr noundef nonnull %dsc_optc_cfg) #3
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dsc_enable = getelementptr inbounds %struct.dsc_funcs, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %dsc_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dsc_enable, align 4
  %49 = ptrtoint ptr %stream_res to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream_res, align 8
  %inst = getelementptr inbounds %struct.output_pixel_processor, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %inst, align 4
  call void %48(ptr noundef %1, i32 noundef %52) #3
  %53 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %53)
  %odm_pipe.1236 = load ptr, ptr %next_odm_pipe, align 4
  %tobool76.not237 = icmp eq ptr %odm_pipe.1236, null
  br i1 %tobool76.not237, label %do.end68.for.end89_crit_edge, label %do.end68.for.body77_crit_edge

do.end68.for.body77_crit_edge:                    ; preds = %do.end68
  br label %for.body77

do.end68.for.end89_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end89

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %do.end68.for.body77_crit_edge
  %odm_pipe.1238 = phi ptr [ %odm_pipe.1, %for.body77.for.body77_crit_edge ], [ %odm_pipe.1236, %do.end68.for.body77_crit_edge ]
  %stream_res78 = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.1238, i32 0, i32 3
  %dsc79 = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.1238, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %dsc79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dsc79, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dsc_set_config81 = getelementptr inbounds %struct.dsc_funcs, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %dsc_set_config81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dsc_set_config81, align 4
  call void %59(ptr noundef %55, ptr noundef nonnull %dsc_cfg, ptr noundef nonnull %dsc_optc_cfg) #3
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %55, align 4
  %dsc_enable83 = getelementptr inbounds %struct.dsc_funcs, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %dsc_enable83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dsc_enable83, align 4
  %64 = ptrtoint ptr %stream_res78 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stream_res78, align 8
  %inst86 = getelementptr inbounds %struct.output_pixel_processor, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %inst86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %inst86, align 4
  call void %63(ptr noundef %55, i32 noundef %67) #3
  %next_odm_pipe88 = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.1238, i32 0, i32 11
  %68 = ptrtoint ptr %next_odm_pipe88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %odm_pipe.1 = load ptr, ptr %next_odm_pipe88, align 4
  %tobool76.not = icmp eq ptr %odm_pipe.1, null
  br i1 %tobool76.not, label %for.body77.for.end89_crit_edge, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body77

for.body77.for.end89_crit_edge:                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end89

for.end89:                                        ; preds = %for.body77.for.end89_crit_edge, %do.end68.for.end89_crit_edge
  %69 = ptrtoint ptr %dc_dsc_cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dc_dsc_cfg, align 4
  %mul = mul i32 %70, %opp_cnt.0.lcssa
  store i32 %mul, ptr %dc_dsc_cfg, align 4
  %71 = ptrtoint ptr %dsc_cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dsc_cfg, align 4
  %mul93 = mul i32 %72, %opp_cnt.0.lcssa
  store i32 %mul93, ptr %dsc_cfg, align 4
  %is_pixel_format_444 = getelementptr inbounds %struct.dsc_optc_config, ptr %dsc_optc_cfg, i32 0, i32 2
  %73 = ptrtoint ptr %is_pixel_format_444 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_pixel_format_444, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool94.not = icmp eq i8 %74, 0
  %cond95 = select i1 %tobool94.not, i32 2, i32 1
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 36
  %75 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %signal, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %76, label %for.end89.if.end105_crit_edge [
    i32 32, label %for.end89.land.lhs.true_crit_edge
    i32 128, label %for.end89.land.lhs.true_crit_edge239
    i32 64, label %for.end89.land.lhs.true_crit_edge240
  ]

for.end89.land.lhs.true_crit_edge240:             ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

for.end89.land.lhs.true_crit_edge239:             ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

for.end89.land.lhs.true_crit_edge:                ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

for.end89.if.end105_crit_edge:                    ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

land.lhs.true:                                    ; preds = %for.end89.land.lhs.true_crit_edge, %for.end89.land.lhs.true_crit_edge239, %for.end89.land.lhs.true_crit_edge240
  %ctx96 = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 7
  %78 = ptrtoint ptr %ctx96 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx96, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp97 = icmp eq i32 %81, 1
  br i1 %cmp97, label %land.lhs.true.if.end105_crit_edge, label %if.then98

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %82 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stream_enc, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %85) #3
  %bytes_per_pixel.i = getelementptr inbounds %struct.dsc_optc_config, ptr %dsc_optc_cfg, i32 0, i32 1
  %86 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bytes_per_pixel.i, align 4
  %div1.i = lshr i32 %87, 28
  %rem.i = and i32 %87, 268435455
  %conv.i = zext i32 %rem.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 10000000
  %div32.i = lshr i64 %mul.i, 28
  %conv5.i = trunc i64 %div32.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %87, i32 noundef %div1.i, i32 noundef %conv5.i) #3
  %88 = ptrtoint ptr %is_pixel_format_444 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %is_pixel_format_444, align 4, !range !30
  %90 = zext i8 %89 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %90) #3
  %91 = ptrtoint ptr %dsc_optc_cfg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dsc_optc_cfg, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %92) #3
  %93 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stream_enc, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %dp_set_dsc_config = getelementptr inbounds %struct.stream_encoder_funcs, ptr %96, i32 0, i32 25
  %97 = ptrtoint ptr %dp_set_dsc_config to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dp_set_dsc_config, align 4
  %99 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bytes_per_pixel.i, align 4
  %101 = ptrtoint ptr %dsc_optc_cfg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dsc_optc_cfg, align 4
  call void %98(ptr noundef %94, i32 noundef %cond95, i32 noundef %100, i32 noundef %102) #3
  br label %if.end105

if.end105:                                        ; preds = %if.then98, %land.lhs.true.if.end105_crit_edge, %for.end89.if.end105_crit_edge
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %103 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tg, align 8
  %inst107 = getelementptr inbounds %struct.timing_generator, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %inst107 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %inst107, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %106) #3
  %bytes_per_pixel.i219 = getelementptr inbounds %struct.dsc_optc_config, ptr %dsc_optc_cfg, i32 0, i32 1
  %107 = ptrtoint ptr %bytes_per_pixel.i219 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bytes_per_pixel.i219, align 4
  %div1.i220 = lshr i32 %108, 28
  %rem.i221 = and i32 %108, 268435455
  %conv.i222 = zext i32 %rem.i221 to i64
  %mul.i223 = mul nuw nsw i64 %conv.i222, 10000000
  %div32.i224 = lshr i64 %mul.i223, 28
  %conv5.i225 = trunc i64 %div32.i224 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %108, i32 noundef %div1.i220, i32 noundef %conv5.i225) #3
  %109 = ptrtoint ptr %is_pixel_format_444 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_pixel_format_444, align 4, !range !30
  %111 = zext i8 %110 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %111) #3
  %112 = ptrtoint ptr %dsc_optc_cfg to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dsc_optc_cfg, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %113) #3
  %114 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tg, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %set_dsc_config = getelementptr inbounds %struct.timing_generator_funcs, ptr %117, i32 0, i32 59
  %118 = ptrtoint ptr %set_dsc_config to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %set_dsc_config, align 4
  %120 = ptrtoint ptr %bytes_per_pixel.i219 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bytes_per_pixel.i219, align 4
  %122 = ptrtoint ptr %dsc_optc_cfg to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dsc_optc_cfg, align 4
  call void %119(ptr noundef %115, i32 noundef %cond95, i32 noundef %121, i32 noundef %123) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dsc_optc_cfg) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dsc_cfg) #3
  br label %if.end159

if.else:                                          ; preds = %for.end
  %tg116 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %124 = ptrtoint ptr %tg116 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tg116, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %set_dsc_config118 = getelementptr inbounds %struct.timing_generator_funcs, ptr %127, i32 0, i32 59
  %128 = ptrtoint ptr %set_dsc_config118 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %set_dsc_config118, align 4
  tail call void %129(ptr noundef %125, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %signal121 = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 36
  %130 = ptrtoint ptr %signal121 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %signal121, align 4
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %131, label %if.else.if.end140_crit_edge [
    i32 32, label %if.else.if.then123_crit_edge
    i32 128, label %if.else.if.then123_crit_edge241
    i32 64, label %if.else.if.then123_crit_edge242
  ]

if.else.if.then123_crit_edge242:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then123

if.else.if.then123_crit_edge241:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then123

if.else.if.then123_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then123

if.else.if.end140_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end140

if.then123:                                       ; preds = %if.else.if.then123_crit_edge, %if.else.if.then123_crit_edge241, %if.else.if.then123_crit_edge242
  %ctx124 = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 7
  %133 = ptrtoint ptr %ctx124 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ctx124, align 8
  %dce_environment125 = getelementptr inbounds %struct.dc_context, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %dce_environment125 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dce_environment125, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp126 = icmp eq i32 %136, 1
  br i1 %cmp126, label %if.then123.if.end140_crit_edge, label %if.then127

if.then123.if.end140_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end140

if.then127:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #5
  %stream_enc129 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %137 = ptrtoint ptr %stream_enc129 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stream_enc129, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %dp_set_dsc_config131 = getelementptr inbounds %struct.stream_encoder_funcs, ptr %140, i32 0, i32 25
  %141 = ptrtoint ptr %dp_set_dsc_config131 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dp_set_dsc_config131, align 4
  tail call void %142(ptr noundef %138, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %143 = ptrtoint ptr %stream_enc129 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %stream_enc129, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %dp_set_dsc_pps_info_packet = getelementptr inbounds %struct.stream_encoder_funcs, ptr %146, i32 0, i32 26
  %147 = ptrtoint ptr %dp_set_dsc_pps_info_packet to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dp_set_dsc_pps_info_packet, align 4
  tail call void %148(ptr noundef %144, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext true) #3
  br label %if.end140

if.end140:                                        ; preds = %if.then127, %if.then123.if.end140_crit_edge, %if.else.if.end140_crit_edge
  %149 = ptrtoint ptr %dsc1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dsc1, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %dsc_disable = getelementptr inbounds %struct.dsc_funcs, ptr %152, i32 0, i32 6
  %153 = ptrtoint ptr %dsc_disable to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dsc_disable, align 4
  tail call void %154(ptr noundef %150) #3
  %155 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %155)
  %odm_pipe.2233 = load ptr, ptr %next_odm_pipe, align 4
  %tobool148.not234 = icmp eq ptr %odm_pipe.2233, null
  br i1 %tobool148.not234, label %if.end140.if.end159_crit_edge, label %if.end140.for.body149_crit_edge

if.end140.for.body149_crit_edge:                  ; preds = %if.end140
  br label %for.body149

if.end140.if.end159_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end159

for.body149:                                      ; preds = %for.body149.for.body149_crit_edge, %if.end140.for.body149_crit_edge
  %odm_pipe.2235 = phi ptr [ %odm_pipe.2, %for.body149.for.body149_crit_edge ], [ %odm_pipe.2233, %if.end140.for.body149_crit_edge ]
  %dsc151 = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.2235, i32 0, i32 3, i32 1
  %156 = ptrtoint ptr %dsc151 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dsc151, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %dsc_disable153 = getelementptr inbounds %struct.dsc_funcs, ptr %159, i32 0, i32 6
  %160 = ptrtoint ptr %dsc_disable153 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dsc_disable153, align 4
  tail call void %161(ptr noundef %157) #3
  %next_odm_pipe157 = getelementptr inbounds %struct.pipe_ctx, ptr %odm_pipe.2235, i32 0, i32 11
  %162 = ptrtoint ptr %next_odm_pipe157 to i32
  call void @__asan_load4_noabort(i32 %162)
  %odm_pipe.2 = load ptr, ptr %next_odm_pipe157, align 4
  %tobool148.not = icmp eq ptr %odm_pipe.2, null
  br i1 %tobool148.not, label %for.body149.if.end159_crit_edge, label %for.body149.for.body149_crit_edge

for.body149.for.body149_crit_edge:                ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body149

for.body149.if.end159_crit_edge:                  ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end159

if.end159:                                        ; preds = %for.body149.if.end159_crit_edge, %if.end140.if.end159_crit_edge, %if.end105
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_set_dsc_enable(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 21
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %flags, align 4
  %3 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %dsc1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %dsc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsc1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end4:                                          ; preds = %if.end
  br i1 %enable, label %if.end4.out.sink.split_crit_edge, label %if.else

if.end4.out.sink.split_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.else:                                          ; preds = %if.end4
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 512
  br i1 %cmp.i.i, label %if.else.out.sink.split_crit_edge, label %lor.lhs.false.i

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

lor.lhs.false.i:                                  ; preds = %if.else
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ctx4.i = getelementptr inbounds %struct.dc, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %ctx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx4.i, align 8
  %dce_environment.i = getelementptr inbounds %struct.dc_context, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %dce_environment.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dce_environment.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %lor.lhs.false.i.out.sink.split_crit_edge, label %if.else.i

lor.lhs.false.i.out.sink.split_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %call6.i = tail call zeroext i1 @dm_helpers_dp_write_dsc_enable(ptr noundef %13, ptr noundef %1, i1 noundef zeroext false) #3
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else.i, %lor.lhs.false.i.out.sink.split_crit_edge, %if.else.out.sink.split_crit_edge, %if.end4.out.sink.split_crit_edge
  tail call void @dp_set_dsc_on_stream(ptr noundef %pipe_ctx, i1 noundef zeroext %enable)
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge, %entry.out_crit_edge
  %result.0.off0 = phi i1 [ false, %if.end.out_crit_edge ], [ false, %entry.out_crit_edge ], [ true, %out.sink.split ]
  ret i1 %result.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_set_dsc_pps_sdp(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %enable, i1 noundef zeroext %immediate_update) local_unnamed_addr #0 align 64 {
entry:
  %dsc_cfg = alloca %struct.dsc_config, align 4
  %dsc_packed_pps = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dsc2 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %dsc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsc2, align 4
  %stream3 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream3, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 21
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %flags, align 4
  %5 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %tobool5.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dsc_cfg) #3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dsc_packed_pps) #3
  %6 = getelementptr inbounds i8, ptr %dsc_cfg, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %8 = call ptr @memset(ptr %dsc_packed_pps, i32 0, i32 128)
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %h_addressable, align 8
  %h_border_left = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %h_border_left to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h_border_left, align 4
  %add = add i32 %12, %10
  %h_border_right = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %h_border_right to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h_border_right, align 4
  %add11 = add i32 %add, %14
  %15 = ptrtoint ptr %dsc_cfg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add11, ptr %dsc_cfg, align 4
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 8
  %16 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_addressable, align 8
  %v_border_top = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %v_border_top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %v_border_top, align 4
  %add14 = add i32 %19, %17
  %v_border_bottom = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 9
  %20 = ptrtoint ptr %v_border_bottom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_border_bottom, align 4
  %add16 = add i32 %add14, %21
  %pic_height = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 1
  %22 = ptrtoint ptr %pic_height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add16, ptr %pic_height, align 4
  %pixel_encoding = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 17
  %23 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixel_encoding, align 4
  %pixel_encoding18 = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 2
  %25 = ptrtoint ptr %pixel_encoding18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pixel_encoding18, align 4
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 16
  %26 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %display_color_depth, align 8
  %color_depth = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 3
  %28 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %color_depth, align 4
  %next_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 11
  %29 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next_odm_pipe, align 4
  %tobool20 = icmp ne ptr %30, null
  %is_odm = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 4
  %frombool22 = zext i1 %tobool20 to i8
  %31 = ptrtoint ptr %is_odm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool22, ptr %is_odm, align 4
  %dc_dsc_cfg = getelementptr inbounds %struct.dsc_config, ptr %dsc_cfg, i32 0, i32 5
  %dsc_cfg24 = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 5, i32 23
  %32 = call ptr @memcpy(ptr %dc_dsc_cfg, ptr %dsc_cfg24, i32 36)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3) #3
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %dsc_get_packed_pps = getelementptr inbounds %struct.dsc_funcs, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dsc_get_packed_pps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dsc_get_packed_pps, align 4
  %call = call zeroext i1 %36(ptr noundef nonnull %1, ptr noundef nonnull %dsc_cfg, ptr noundef nonnull %dsc_packed_pps) #3
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 36
  %37 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %signal, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %38, label %if.then7.if.end35_crit_edge [
    i32 32, label %if.then7.if.then26_crit_edge
    i32 128, label %if.then7.if.then26_crit_edge70
    i32 64, label %if.then7.if.then26_crit_edge71
  ]

if.then7.if.then26_crit_edge71:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then26

if.then7.if.then26_crit_edge70:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then26

if.then7.if.then26_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then26

if.then7.if.end35_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then26:                                        ; preds = %if.then7.if.then26_crit_edge, %if.then7.if.then26_crit_edge70, %if.then7.if.then26_crit_edge71
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stream_enc, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %43) #3
  %44 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream_enc, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %dp_set_dsc_pps_info_packet = getelementptr inbounds %struct.stream_encoder_funcs, ptr %47, i32 0, i32 26
  %48 = ptrtoint ptr %dp_set_dsc_pps_info_packet to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dp_set_dsc_pps_info_packet, align 4
  call void %49(ptr noundef %45, i1 noundef zeroext true, ptr noundef nonnull %dsc_packed_pps, i1 noundef zeroext %immediate_update) #3
  br label %if.end35

if.end35:                                         ; preds = %if.then26, %if.then7.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dsc_packed_pps) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dsc_cfg) #3
  br label %cleanup

if.else:                                          ; preds = %if.end
  %signal36 = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 36
  %50 = ptrtoint ptr %signal36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %signal36, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %51, label %if.else.cleanup_crit_edge [
    i32 32, label %if.else.if.then38_crit_edge
    i32 128, label %if.else.if.then38_crit_edge72
    i32 64, label %if.else.if.then38_crit_edge73
  ]

if.else.if.then38_crit_edge73:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

if.else.if.then38_crit_edge72:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

if.else.if.then38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then38:                                        ; preds = %if.else.if.then38_crit_edge, %if.else.if.then38_crit_edge72, %if.else.if.then38_crit_edge73
  %stream_enc40 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %stream_enc40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stream_enc40, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %dp_set_dsc_pps_info_packet42 = getelementptr inbounds %struct.stream_encoder_funcs, ptr %56, i32 0, i32 26
  %57 = ptrtoint ptr %dp_set_dsc_pps_info_packet42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dp_set_dsc_pps_info_packet42, align 4
  tail call void %58(ptr noundef %54, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.else.cleanup_crit_edge, %if.end35, %entry.cleanup_crit_edge
  %59 = xor i1 %or.cond, true
  ret i1 %59
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_update_dsc_config(ptr nocapture noundef readonly %pipe_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 21
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %flags, align 4
  %3 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsc1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %dsc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsc1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dp_set_dsc_on_stream(ptr noundef %pipe_ctx, i1 noundef zeroext true)
  %call = tail call zeroext i1 @dp_set_dsc_pps_sdp(ptr noundef %pipe_ctx, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end4 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 94, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 255, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 565, i32 3}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 588, i32 4}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 599, i32 3}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 695, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 698, i32 4}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 520, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 522, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_hwss.c", i32 523, i32 2}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!"auto-init"}
