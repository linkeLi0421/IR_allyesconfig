; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_link.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.graphics_object_hpd_info = type { i8, i8 }
%struct.gpio_pin_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.18 }
%struct.anon.18 = type { i8 }
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
%union.root_clock_optimization_options = type { %struct.anon.3 }
%struct.anon.3 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.4, %struct.anon.5, %struct.anon.6, i32, i32 }
%struct.anon.4 = type { i8, [3 x i8] }
%struct.anon.5 = type { i32, i32, i32 }
%struct.anon.6 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.10, %struct.anon.11, i8, i8, i64 }
%struct.anon.10 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.11 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.72 }
%struct.anon.72 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.ddc = type { ptr, ptr, %struct.gpio_ddc_hw_info, ptr }
%struct.gpio_ddc_hw_info = type { i8, i32 }
%struct.hdcp_protection_message = type { i32, i32, i32, i32, i8, ptr, i32 }
%struct.dc_sink_init_data = type { i32, ptr, i32, i8 }
%struct.display_sink_capability = type { i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i32, i32 }
%struct.link_resource = type { ptr }
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
%struct.csdp_ref_clk_ds_params = type { i8, i32, i32, i32 }
%struct.pixel_clk_flags = type { i8, [3 x i8] }
%struct.encoder_info_frame = type { %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
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
%struct.anon.63 = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.38, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.20 }
%union.anon.20 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.21 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.21 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.26, i32, i32, i32, i32 }
%struct.anon.26 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.27 }
%struct.anon.27 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.38 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.65, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.66, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.65 = type { i8, [3 x i8] }
%struct.anon.66 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.encoder_feature_support = type { %union.anon.41, i32, i32, i8, i8, i8 }
%union.anon.41 = type { i32 }
%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ddc_service = type { ptr, %struct.ddc_flags, %union.ddc_wa, i32, i32, ptr, ptr, i32, i32, [2048 x i8] }
%struct.ddc_flags = type { i8 }
%union.ddc_wa = type { i32 }
%struct.dc_sink = type { i32, %struct.dc_edid, %struct.dc_edid_caps, ptr, i32, ptr, [14 x %struct.stereo_3d_features], i8, %struct.dc_sink_dsc_caps, %struct.dc_sink_fec_caps, i8, ptr, ptr, i32, %struct.kref }
%struct.dc_edid = type { i32, [2048 x i8] }
%struct.dc_edid_caps = type { i16, i16, i32, i8, i8, [20 x i8], i8, i32, [16 x %struct.dc_cea_audio_mode], i32, i32, %union.display_content_support, i8, i8, i32, i8, i8, i8, %struct.dc_panel_patch }
%struct.dc_cea_audio_mode = type { i8, i8, i8, %union.anon.12 }
%union.anon.12 = type { i8 }
%struct.stereo_3d_features = type { i8, i8, i8, i8, i8 }
%struct.dc_sink_dsc_caps = type { i8, %struct.dsc_dec_dpcd_caps }
%struct.dsc_dec_dpcd_caps = type { i8, i8, i32, %union.dsc_slice_caps1, %union.dsc_slice_caps2, i32, i8, i32, %union.dsc_color_formats, %union.dsc_color_depth, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dsc_slice_caps1 = type { %struct.anon.14 }
%struct.anon.14 = type { i8 }
%union.dsc_slice_caps2 = type { %struct.anon.15 }
%struct.anon.15 = type { i8 }
%union.dsc_color_formats = type { %struct.anon.16 }
%struct.anon.16 = type { i8 }
%union.dsc_color_depth = type { %struct.anon.17 }
%struct.anon.17 = type { i8 }
%struct.dc_sink_fec_caps = type { i8, i8 }
%struct.ddc_service_init_data = type { %struct.graphics_object_id, ptr, ptr, i8 }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }
%struct.panel_cntl_init_data = type { ptr, i32 }
%struct.bp_disp_connector_caps_info = type { i8, [3 x i8] }
%struct.link_init_data = type { ptr, ptr, i32, i32, i8 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio = type { ptr, ptr, i32, i32, %union.gpio_hw_container, i32, i32 }
%union.gpio_hw_container = type { ptr }
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
%struct.available_s_clk_list = type { i32, i32, i32 }
%struct.i2c_reg_info = type { i8, i8 }
%struct.edp_info = type { i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.stream_encoder = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.stream_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panel_cntl_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.abm = type { ptr, ptr, i8 }
%struct.abm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmub_psr = type { ptr, ptr }
%struct.dmub_psr_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.dpcd_psr_configuration = type { %struct.anon.73 }
%struct.anon.73 = type { i8 }
%struct.psr_context = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, %union.dmcu_psr_level, i32, i8, i8 }
%union.dmcu_psr_level = type { %struct.anon.67 }
%struct.anon.67 = type { i32 }
%struct.psr_config = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.gpio_hpd_config = type { i32, i32 }
%struct.dp_mst_stream_allocation_table = type { i32, [6 x %struct.dp_mst_stream_allocation] }
%struct.dp_mst_stream_allocation = type { i8, i8 }
%union.down_spread_ctrl = type { %struct.anon.75 }
%struct.anon.75 = type { i8 }
%struct.ext_hdmi_settings = type { i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info] }
%struct.clock_source = type { ptr, ptr, i32, i8 }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cp_psp_stream_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8 }
%struct.i2c_command = type { ptr, i8, i32, i32 }
%struct.i2c_payload = type { i8, i8, i32, ptr }
%union.lane_count_set = type { %struct.anon.74 }
%struct.anon.74 = type { i8 }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }

@get_hpd_gpio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dc_link_is_dp_sink_present = private unnamed_addr constant [27 x i8] c"dc_link_is_dp_sink_present\00", align 1
@dc_link_is_dp_sink_present.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"New Backlight level: %d (0x%X)\0A\00", [32 x i8] zeroinitializer }, align 32
@dc_link_setup_psr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_link_allocate_mst_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_link_allocate_mst_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 3526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014[drm] Failed to updateMST allocation table forpipe idx:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dc_link_allocate_mst_payload\00", [35 x i8] zeroinitializer }, align 32
@dc_link_allocate_mst_payload._entry_ptr = internal global ptr @dc_link_allocate_mst_payload._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s  stream_count: %d: \0A \00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"stream_enc[%d]: %p      stream[%d].vcp_id: %d      stream[%d].slot_count: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@dc_link_allocate_mst_payload.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_link_allocate_mst_payload.status = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dc_link_allocate_mst_payload.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dpia : status[%d]: alloc_slots[%d]: used_slots[%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Failure: pbn_per_slot==0 not allowed. Cannot continue, returning DC_UNSUPPORTED_VALUE.\0A\00", [40 x i8] zeroinitializer }, align 32
@core_link_enable_stream.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@core_link_enable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 4295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014[drm] enabling link %u failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"core_link_enable_stream\00", [40 x i8] zeroinitializer }, align 32
@core_link_enable_stream._entry_ptr = internal global ptr @core_link_enable_stream._entry, section ".printk_index", align 4
@dc_link_is_fec_supported.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_bandwidth_in_kbps_from_timing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.dc_link_detect_helper = private unnamed_addr constant [22 x i8] c"dc_link_detect_helper\00", align 1
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"link=%d, mst branch is now Connected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid connector type! signal:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to create sink!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EDID checksum invalid.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No EDID read.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: [Block %d] \00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [170 x i8], [54 x i8] } { [170 x i8] c"%s: manufacturer_id = %X, product_id = %X, serial_number = %X, manufacture_week = %d, manufacture_year = %d, display_name = %s, speaker_flag = %d, audio_mode_count = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s: mode number = %d, format_code = %d, channel_count = %d, sample_rate = %d, sample_size = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"link=%d, mst branch is now Disconnected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"link=%d, dc_sink_in=%p is now %s prev_sink=%p edid same=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@read_current_link_settings_on_detect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wait_for_entering_dp_alt_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014[drm] DP Alt mode state on HPD: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wait_for_entering_dp_alt_mode\00", [34 x i8] zeroinitializer }, align 32
@wait_for_entering_dp_alt_mode._entry_ptr = internal global ptr @wait_for_entering_dp_alt_mode._entry, section ".printk_index", align 4
@wait_for_entering_dp_alt_mode._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014[drm] Alt mode entered finished after %llu ms\0A\00", [47 x i8] zeroinitializer }, align 32
@wait_for_entering_dp_alt_mode._entry_ptr.29 = internal global ptr @wait_for_entering_dp_alt_mode._entry.27, section ".printk_index", align 4
@wait_for_entering_dp_alt_mode._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014[drm] Alt mode has timed out after %llu ms\0A\00", [50 x i8] zeroinitializer }, align 32
@wait_for_entering_dp_alt_mode._entry_ptr.32 = internal global ptr @wait_for_entering_dp_alt_mode._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Connector[%d] description:signal %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create ddc_service!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BIOS object table - link_id: %d\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BIOS object table - is_internal_display: %d\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%s: Invalid Connector ObjectID from Adapter Service for connector index:%d! type %d expected %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.dc_link_construct_legacy = private unnamed_addr constant [25 x i8] c"dc_link_construct_legacy\00", align 1
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BIOS object table - hpd_gpio id: %d\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BIOS object table - hpd_gpio en: %d\00", [60 x i8] zeroinitializer }, align 32
@dc_link_construct_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.dc_link_construct_legacy, ptr @.str, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014[drm] Unsupported Connector type:%d!\0A\00", [56 x i8] zeroinitializer }, align 32
@dc_link_construct_legacy._entry_ptr = internal global ptr @dc_link_construct_legacy._entry, section ".printk_index", align 4
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get I2C info for connector!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create link panel_cntl!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create link encoder!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BIOS object table - DP_IS_USB_C: %d\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to find device tag!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BIOS object table - device_tag.acpi_device: %d\00", [49 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"BIOS object table - device_tag.dev_id.device_type: %d\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BIOS object table - device_tag.dev_id.enum_id: %d\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"BIOS object table - ddi_channel_mapping: 0x%04X\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BIOS object table - chip_caps: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BIOS object table - %s finished successfully.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BIOS object table - %s failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.get_ddc_line = private unnamed_addr constant [13 x i8] c"get_ddc_line\00", align 1
@__func__.get_hpd_line = private unnamed_addr constant [13 x i8] c"get_hpd_line\00", align 1
@transmitter_to_phy_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown transmitter value %d\0A\00", [34 x i8] zeroinitializer }, align 32
@update_mst_stream_alloc_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@update_psp_stream_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@deallocate_mst_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@deallocate_mst_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.54, ptr @.str, i32 3883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"deallocate_mst_payload\00", [41 x i8] zeroinitializer }, align 32
@deallocate_mst_payload._entry_ptr = internal global ptr @deallocate_mst_payload._entry, section ".printk_index", align 4
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sstream_count: %d: \00", [43 x i8] zeroinitializer }, align 32
@deallocate_mst_payload.__already_done.56 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"retimer write to slave_address = 0x%x,\09\09\09\09offset = 0x%x, reg_val= 0x%x, i2c_success = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"retimer write to slave_address = 0x%x,\09\09\09\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"above 340Mhz: retimer write to slave_address = 0x%x,\09\09\09\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"retimer write to slave_address = 0x%x,\09\09\09\09\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"retimer write to slave_address = 0x%x,\09\09\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"retimer write to slave_address = 0x%x,\09\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set retimer failed\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"retimer writes default setting to slave_address = 0x%x,\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"retimer write to slave_addr = 0x%x,\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"retimer write to slave_addr = 0x%x,\09\09offset = 0x%x, reg_val= 0x%x, i2c_success = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"retimer write to slave_addr = 0x%x,\09\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"retimer write to slave_addr = 0x%x,\09\09\09offset = 0x%x, reg_val= 0x%x, i2c_success = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"retimer write default setting to slave_addr = 0x%x,\09\09\09offset = 0x%x, reg_val= 0x%x, i2c_success = %d end here\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set default retimer failed\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [185 x i8], [39 x i8] } { [185 x i8] c"redriver write 0 to all 16 reg offset expect following:\0A\09\09\09 slave_addr = 0x%x, offset[3] = 0x%x, offset[4] = 0x%x,\09\09offset[5] = 0x%x,offset[6] is_over_340mhz = 0x%x,\09\09i2c_success = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Set redriver failed\00", [44 x i8] zeroinitializer }, align 32
@switch.table.dc_link_detect = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16, i32 16, i32 1, i32 1, i32 1, i32 16, i32 16], [36 x i8] zeroinitializer }, align 32
@switch.table.dc_link_detect.73 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16, i32 16, i32 2, i32 2, i32 2, i32 16, i32 16], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 128]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 32, i64 64]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 32, i64 64]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 128, i64 512]
@__sancov_gen_cov_switch_values.78 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 12, i64 14, i64 19, i64 20]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 19]
@__sancov_gen_cov_switch_values.82 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 128]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.92 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 12, i64 14, i64 19, i64 20]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 14, i64 20]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 8, i64 13, i64 15, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 128]
@__sancov_gen_cov_switch_values.109 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 32, i64 64]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.113 = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.114 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 7, i64 4, i64 8]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.118 = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 7, i64 4, i64 8]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 118, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 387, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2965, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3523, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3528, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3548, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3563, i32 25 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3572, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3614, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 4293, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 955, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1038, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1062, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1079, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1082, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1148, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1154, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1174, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1189, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1219, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 798, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 814, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 822, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1730, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1747, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1456, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1461, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1465, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1482, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1483, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1522, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1544, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1564, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1584, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1588, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1606, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1623, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1624, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1625, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1644, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1645, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1678, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1696, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3081, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3880, i32 5 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 3887, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2195, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2226, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2245, i32 5 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2276, i32 6 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2294, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2305, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2327, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2348, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2359, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2381, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2418, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2429, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2440, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2450, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2472, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [59 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2479, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [28 x i8] c"switch.table.dc_link_detect\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [31 x i8] c"switch.table.dc_link_detect.73\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @core_link_enable_stream._entry, ptr @core_link_enable_stream._entry_ptr, ptr @dc_link_allocate_mst_payload._entry, ptr @dc_link_allocate_mst_payload._entry_ptr, ptr @dc_link_construct_legacy._entry, ptr @dc_link_construct_legacy._entry_ptr, ptr @deallocate_mst_payload._entry, ptr @deallocate_mst_payload._entry_ptr, ptr @wait_for_entering_dp_alt_mode._entry, ptr @wait_for_entering_dp_alt_mode._entry.27, ptr @wait_for_entering_dp_alt_mode._entry.30, ptr @wait_for_entering_dp_alt_mode._entry_ptr, ptr @wait_for_entering_dp_alt_mode._entry_ptr.29, ptr @wait_for_entering_dp_alt_mode._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dc_link_allocate_mst_payload.status, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @switch.table.dc_link_detect, ptr @switch.table.dc_link_detect.73], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_link_allocate_mst_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_link_allocate_mst_payload.status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_link_enable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 170, i32 224, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_entering_dp_alt_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_entering_dp_alt_mode._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_entering_dp_alt_mode._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_link_construct_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deallocate_mst_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dc_link_detect to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dc_link_detect.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_hpd_gpio(ptr noundef %dcb, [1 x i32] %link_id.coerce, ptr noundef %gpio_service) local_unnamed_addr #0 align 64 {
entry:
  %hpd_info = alloca %struct.graphics_object_hpd_info, align 1
  %pin_info = alloca %struct.gpio_pin_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hpd_info) #11
  %0 = ptrtoint ptr %hpd_info to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hpd_info, align 1, !annotation !188
  %1 = getelementptr inbounds %struct.graphics_object_hpd_info, ptr %hpd_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !188
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pin_info) #11
  %3 = getelementptr inbounds %struct.gpio_pin_info, ptr %pin_info, i32 0, i32 4
  %4 = call ptr @memset(ptr %pin_info, i32 255, i32 32)
  %5 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcb, align 4
  %get_hpd_info = getelementptr inbounds %struct.dc_vbios_funcs, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %get_hpd_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_hpd_info, align 4
  %call = call i32 %8(ptr noundef %dcb, [1 x i32] %link_id.coerce, ptr noundef nonnull %hpd_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dcb, align 4
  %get_gpio_pin_info = getelementptr inbounds %struct.dc_vbios_funcs, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %get_gpio_pin_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_gpio_pin_info, align 4
  %13 = ptrtoint ptr %hpd_info to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hpd_info, align 1
  %conv = zext i8 %14 to i32
  %call3 = call i32 %12(ptr noundef %dcb, i32 noundef %conv, ptr noundef nonnull %pin_info) #11
  %15 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %land.rhs [
    i32 0, label %if.end53
    i32 4, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  %.b63 = load i1, ptr @get_hpd_gpio.__already_done, align 1
  br i1 %.b63, label %land.rhs.if.then49_crit_edge, label %if.then17, !prof !189

land.rhs.if.then49_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_hpd_gpio.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #11
  br label %if.then49

if.then49:                                        ; preds = %if.then17, %land.rhs.if.then49_crit_edge
  call void @kgdb_breakpoint() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %pin_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pin_info, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %call54 = call ptr @dal_gpio_service_create_irq(ptr noundef %gpio_service, i32 noundef %17, i32 noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then49, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call54, %if.end53 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then49 ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pin_info) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hpd_info) #11
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_gpio_service_create_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_wait_for_t12(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %0 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp eq i32 %1, 128
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true:                                    ; preds = %entry
  %dc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 4
  %edp_wait_for_T12 = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %edp_wait_for_T12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edp_wait_for_T12, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %link) #11
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_detect_sink(ptr noundef %link, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  %is_hpd_high = alloca i32, align 4
  %hpd_pin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_hpd_high) #11
  %0 = ptrtoint ptr %is_hpd_high to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %is_hpd_high, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd_pin) #11
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %1 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %connector_signal, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %2, label %entry.if.end6_crit_edge [
    i32 8, label %entry.cleanup.sink.split_crit_edge
    i32 128, label %if.then3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc, align 4
  %edp_power_control = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %edp_power_control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edp_power_control, align 4
  tail call void %7(ptr noundef %link, i1 noundef zeroext true) #11
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %edp_wait_for_hpd_ready = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 17, i32 2
  %10 = ptrtoint ptr %edp_wait_for_hpd_ready to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edp_wait_for_hpd_ready, align 4
  tail call void %11(ptr noundef %link, i1 noundef zeroext true) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %entry.if.end6_crit_edge
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 40
  %12 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not = icmp eq i32 %13, 0
  br i1 %cmp7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end6
  %is_hpd_pending = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %14 = ptrtoint ptr %is_hpd_pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_hpd_pending, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %hpd_status = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 16
  %16 = ptrtoint ptr %hpd_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hpd_status, align 2, !range !190
  %18 = zext i8 %17 to i32
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc_bios, align 4
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %gpio_service = getelementptr inbounds %struct.dc_context, ptr %20, i32 0, i32 9
  %23 = ptrtoint ptr %gpio_service to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpio_service, align 4
  %25 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack = load i32, ptr %link_id, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call ptr @get_hpd_gpio(ptr noundef %22, [1 x i32] %26, ptr noundef %24)
  %27 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %hpd_pin, align 4
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 @dal_gpio_open(ptr noundef nonnull %call, i32 noundef 4) #11
  %28 = ptrtoint ptr %hpd_pin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hpd_pin, align 4
  %call18 = call i32 @dal_gpio_get_value(ptr noundef %29, ptr noundef nonnull %is_hpd_high) #11
  call void @dal_gpio_close(ptr noundef %29) #11
  call void @dal_gpio_destroy_irq(ptr noundef nonnull %hpd_pin) #11
  %30 = ptrtoint ptr %is_hpd_high to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %is_hpd_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool19.not = icmp ne i32 %31, 0
  %. = zext i1 %tobool19.not to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end16, %lor.lhs.false, %if.then8.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %..sink = phi i32 [ %., %if.end16 ], [ 1, %entry.cleanup.sink.split_crit_edge ], [ 0, %if.then8.cleanup.sink.split_crit_edge ], [ %18, %lor.lhs.false ]
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %..sink, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end12.cleanup_crit_edge ], [ true, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd_pin) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_hpd_high) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_get_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_destroy_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_is_dp_sink_present(ptr nocapture noundef readonly %link) local_unnamed_addr #0 align 64 {
entry:
  %clock_pin = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_pin) #11
  %0 = ptrtoint ptr %clock_pin to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %clock_pin, align 4
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %1 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %link_id, align 4
  %2 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %2)
  %cmp.i = icmp eq i32 %2, 196608
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %bf.lshr2.i.op = add nsw i32 %bf.lshr2.i, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.lshr2.i.op)
  %3 = icmp ult i32 %bf.lshr2.i.op, 2
  %4 = select i1 %cmp.i, i1 %3, i1 false
  %ddc2 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %5 = ptrtoint ptr %ddc2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddc2, align 4
  %call3 = tail call ptr @dal_ddc_service_get_ddc_pin(ptr noundef %6) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dc_link_is_dp_sink_present, i32 noundef 387) #11
  tail call void @kgdb_breakpoint() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @dal_ddc_open(ptr noundef nonnull %call3, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %do.body10.preheader, label %if.then7

do.body10.preheader:                              ; preds = %if.end
  %pin_clock = getelementptr inbounds %struct.ddc, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pin_clock, align 4
  %call11 = call i32 @dal_gpio_get_value(ptr noundef %8, ptr noundef nonnull %clock_pin) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp eq i32 %call11, 0
  br i1 %cmp13, label %do.body10.preheader.do.end60_crit_edge, label %land.rhs

do.body10.preheader.do.end60_crit_edge:           ; preds = %do.body10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dal_ddc_close(ptr noundef nonnull %call3) #11
  br label %cleanup

land.rhs:                                         ; preds = %do.body10.preheader
  %.b93 = load i1, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  br i1 %.b93, label %land.rhs.if.then57_crit_edge, label %if.then23, !prof !189

land.rhs.if.then57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef null) #11
  br label %if.then57

if.then57:                                        ; preds = %if.then23, %land.rhs.if.then57_crit_edge
  call void @kgdb_breakpoint() #11
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body10.preheader.do.end60_crit_edge
  %9 = ptrtoint ptr %clock_pin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool61.not = icmp eq i32 %10, 0
  br i1 %tobool61.not, label %do.end60.do.end67_crit_edge, label %if.then62

do.end60.do.end67_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then62:                                        ; preds = %do.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #11
  %12 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pin_clock, align 4
  %call11.1 = call i32 @dal_gpio_get_value(ptr noundef %13, ptr noundef nonnull %clock_pin) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %cmp13.1 = icmp eq i32 %call11.1, 0
  br i1 %cmp13.1, label %if.then62.do.end60.1_crit_edge, label %land.rhs.1

if.then62.do.end60.1_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.1

land.rhs.1:                                       ; preds = %if.then62
  %.b93.1 = load i1, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  br i1 %.b93.1, label %land.rhs.1.if.then57.1_crit_edge, label %if.then23.1, !prof !189

land.rhs.1.if.then57.1_crit_edge:                 ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57.1

if.then23.1:                                      ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef null) #11
  br label %if.then57.1

if.then57.1:                                      ; preds = %if.then23.1, %land.rhs.1.if.then57.1_crit_edge
  call void @kgdb_breakpoint() #11
  br label %do.end60.1

do.end60.1:                                       ; preds = %if.then57.1, %if.then62.do.end60.1_crit_edge
  %14 = ptrtoint ptr %clock_pin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool61.not.1 = icmp eq i32 %15, 0
  br i1 %tobool61.not.1, label %do.end60.1.do.end67_crit_edge, label %if.then62.1

do.end60.1.do.end67_crit_edge:                    ; preds = %do.end60.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then62.1:                                      ; preds = %do.end60.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #11
  %17 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pin_clock, align 4
  %call11.2 = call i32 @dal_gpio_get_value(ptr noundef %18, ptr noundef nonnull %clock_pin) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2)
  %cmp13.2 = icmp eq i32 %call11.2, 0
  br i1 %cmp13.2, label %if.then62.1.do.end60.2_crit_edge, label %land.rhs.2

if.then62.1.do.end60.2_crit_edge:                 ; preds = %if.then62.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.2

land.rhs.2:                                       ; preds = %if.then62.1
  %.b93.2 = load i1, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  br i1 %.b93.2, label %land.rhs.2.if.then57.2_crit_edge, label %if.then23.2, !prof !189

land.rhs.2.if.then57.2_crit_edge:                 ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57.2

if.then23.2:                                      ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef null) #11
  br label %if.then57.2

if.then57.2:                                      ; preds = %if.then23.2, %land.rhs.2.if.then57.2_crit_edge
  call void @kgdb_breakpoint() #11
  br label %do.end60.2

do.end60.2:                                       ; preds = %if.then57.2, %if.then62.1.do.end60.2_crit_edge
  %19 = ptrtoint ptr %clock_pin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clock_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool61.not.2 = icmp eq i32 %20, 0
  br i1 %tobool61.not.2, label %do.end60.2.do.end67_crit_edge, label %if.then62.2

do.end60.2.do.end67_crit_edge:                    ; preds = %do.end60.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then62.2:                                      ; preds = %do.end60.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #11
  %22 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pin_clock, align 4
  %call11.3 = call i32 @dal_gpio_get_value(ptr noundef %23, ptr noundef nonnull %clock_pin) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.3)
  %cmp13.3 = icmp eq i32 %call11.3, 0
  br i1 %cmp13.3, label %if.then62.2.do.end60.3_crit_edge, label %land.rhs.3

if.then62.2.do.end60.3_crit_edge:                 ; preds = %if.then62.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.3

land.rhs.3:                                       ; preds = %if.then62.2
  %.b93.3 = load i1, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  br i1 %.b93.3, label %land.rhs.3.if.then57.3_crit_edge, label %if.then23.3, !prof !189

land.rhs.3.if.then57.3_crit_edge:                 ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57.3

if.then23.3:                                      ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_is_dp_sink_present.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef null) #11
  br label %if.then57.3

if.then57.3:                                      ; preds = %if.then23.3, %land.rhs.3.if.then57.3_crit_edge
  call void @kgdb_breakpoint() #11
  br label %do.end60.3

do.end60.3:                                       ; preds = %if.then57.3, %if.then62.2.do.end60.3_crit_edge
  %24 = ptrtoint ptr %clock_pin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clock_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool61.not.3 = icmp eq i32 %25, 0
  br i1 %tobool61.not.3, label %do.end60.3.do.end67_crit_edge, label %if.then62.3

do.end60.3.do.end67_crit_edge:                    ; preds = %do.end60.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then62.3:                                      ; preds = %do.end60.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #11
  br i1 %cmp13.3, label %if.then62.3.land.rhs70_crit_edge, label %if.then62.3.land.end74_crit_edge

if.then62.3.land.end74_crit_edge:                 ; preds = %if.then62.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end74

if.then62.3.land.rhs70_crit_edge:                 ; preds = %if.then62.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs70

do.end67:                                         ; preds = %do.end60.3.do.end67_crit_edge, %do.end60.2.do.end67_crit_edge, %do.end60.1.do.end67_crit_edge, %do.end60.do.end67_crit_edge
  %cmp13.lcssa = phi i1 [ %cmp13, %do.end60.do.end67_crit_edge ], [ %cmp13.1, %do.end60.1.do.end67_crit_edge ], [ %cmp13.2, %do.end60.2.do.end67_crit_edge ], [ %cmp13.3, %do.end60.3.do.end67_crit_edge ]
  br i1 %cmp13.lcssa, label %do.end67.land.rhs70_crit_edge, label %do.end67.land.end74_crit_edge

do.end67.land.end74_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end74

do.end67.land.rhs70_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs70

land.rhs70:                                       ; preds = %do.end67.land.rhs70_crit_edge, %if.then62.3.land.rhs70_crit_edge
  %27 = ptrtoint ptr %clock_pin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool71.not = icmp eq i32 %28, 0
  br label %land.end74

land.end74:                                       ; preds = %land.rhs70, %do.end67.land.end74_crit_edge, %if.then62.3.land.end74_crit_edge
  %29 = phi i1 [ false, %do.end67.land.end74_crit_edge ], [ %tobool71.not, %land.rhs70 ], [ false, %if.then62.3.land.end74_crit_edge ]
  call void @dal_ddc_close(ptr noundef nonnull %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %land.end74, %if.then7, %do.body
  %retval.0 = phi i1 [ %4, %if.then7 ], [ %29, %land.end74 ], [ %4, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_pin) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_ddc_service_get_ddc_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_ddc_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dc_link_is_hdcp14(ptr nocapture noundef readonly %link, i32 noundef %signal) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %signal, label %entry.sw.epilog_crit_edge [
    i32 32, label %entry.sw.bb_crit_edge
    i32 64, label %entry.sw.bb_crit_edge3
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge4
    i32 4, label %entry.sw.bb1_crit_edge5
  ]

entry.sw.bb1_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3
  %bcaps = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47, i32 1
  %1 = ptrtoint ptr %bcaps to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %bcaps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge4, %entry.sw.bb1_crit_edge5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ true, %sw.bb1 ], [ %tobool, %sw.bb ]
  ret i1 %ret.0.off0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dc_link_is_hdcp22(ptr nocapture noundef readonly %link, i32 noundef %signal) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %signal, label %entry.sw.epilog_crit_edge [
    i32 32, label %entry.sw.bb_crit_edge
    i32 64, label %entry.sw.bb_crit_edge26
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %entry.sw.epilog.sink.split_crit_edge27
    i32 4, label %entry.sw.epilog.sink.split_crit_edge28
  ]

entry.sw.epilog.sink.split_crit_edge28:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge27:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26
  %bcaps = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47, i32 1
  %1 = ptrtoint ptr %bcaps to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %bcaps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %byte0 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %byte0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load2 = load i8, ptr %byte0, align 2
  %3 = and i8 %bf.load2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.sw.epilog.sink.split_crit_edge

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %land.lhs.true.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge27, %entry.sw.epilog.sink.split_crit_edge28
  %.sink25 = phi i8 [ 2, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ 4, %entry.sw.epilog.sink.split_crit_edge ], [ 4, %entry.sw.epilog.sink.split_crit_edge27 ], [ 4, %entry.sw.epilog.sink.split_crit_edge28 ]
  %hdcp_caps.sink = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47
  %4 = ptrtoint ptr %hdcp_caps.sink to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdcp_caps.sink, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %.sink25)
  %cmp = icmp eq i8 %5, %.sink25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0.shrunk = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ false, %land.lhs.true.sw.epilog_crit_edge ], [ false, %sw.bb.sw.epilog_crit_edge ], [ %cmp, %sw.epilog.sink.split ]
  ret i1 %ret.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_detect(ptr noundef %link, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  %msg22.i.i33 = alloca %struct.hdcp_protection_message, align 4
  %msg14.i.i34 = alloca %struct.hdcp_protection_message, align 4
  %msg22.i = alloca %struct.hdcp_protection_message, align 4
  %msg14.i = alloca %struct.hdcp_protection_message, align 4
  %msg22.i.i = alloca %struct.hdcp_protection_message, align 4
  %msg14.i.i = alloca %struct.hdcp_protection_message, align 4
  %sink_init_data.i = alloca %struct.dc_sink_init_data, align 4
  %sink_caps.i = alloca %struct.display_sink_capability, align 4
  %new_connection_type.i = alloca i32, align 4
  %link_res.i = alloca %struct.link_resource, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dc1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %0 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc1, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_state, align 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp86.not = icmp eq i8 %5, 0
  br i1 %cmp86.not, label %entry.land.lhs.true.critedge_crit_edge, label %for.body.preheader

entry.land.lhs.true.critedge_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.critedge

for.body.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %apply_seamless_boot_optimization95 = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %apply_seamless_boot_optimization95 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %apply_seamless_boot_optimization95, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not96 = icmp eq i8 %9, 0
  br i1 %tobool.not96, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.if.end8_crit_edge

for.body.preheader.if.end8_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.08797 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.08797, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %land.lhs.true.critedge.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [6 x ptr], ptr %3, i32 0, i32 %inc
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %apply_seamless_boot_optimization = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 51
  %12 = ptrtoint ptr %apply_seamless_boot_optimization to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %apply_seamless_boot_optimization, align 1, !range !190
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.end8.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

land.lhs.true.critedge.loopexit:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le106 = icmp ult i32 %inc, %conv
  br label %land.lhs.true.critedge

land.lhs.true.critedge:                           ; preds = %land.lhs.true.critedge.loopexit, %entry.land.lhs.true.critedge_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.land.lhs.true.critedge_crit_edge ], [ %cmp.le106, %land.lhs.true.critedge.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp5.not = icmp eq i32 %reason, 0
  br i1 %cmp5.not, label %land.lhs.true.critedge.if.end8_crit_edge, label %if.then7

land.lhs.true.critedge.if.end8_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_mgr, align 4
  tail call void @clk_mgr_exit_optimized_pwr_state(ptr noundef %1, ptr noundef %15) #11
  br label %if.end8

if.end8.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le = icmp ult i32 %inc, %conv
  br label %if.end8

if.end8:                                          ; preds = %if.end8.loopexit, %if.then7, %land.lhs.true.critedge.if.end8_crit_edge, %for.body.preheader.if.end8_crit_edge
  %cmp85 = phi i1 [ %cmp.lcssa, %if.then7 ], [ %cmp.lcssa, %land.lhs.true.critedge.if.end8_crit_edge ], [ true, %for.body.preheader.if.end8_crit_edge ], [ %cmp.le, %if.end8.loopexit ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sink_init_data.i) #11
  %16 = call ptr @memset(ptr %sink_init_data.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sink_caps.i) #11
  %17 = call ptr @memset(ptr %sink_caps.i, i32 0, i32 64)
  %18 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dc1, align 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res_pool.i, align 8
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_connection_type.i) #11
  %24 = ptrtoint ptr %new_connection_type.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %new_connection_type.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_res.i) #11
  %25 = ptrtoint ptr %link_res.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %link_res.i, align 4
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %26 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %connector_signal.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %27, label %if.end8.if.end13.i_crit_edge [
    i32 512, label %if.end8.dc_link_detect_helper.exit_crit_edge
    i32 8, label %if.end8.land.lhs.true.i_crit_edge
    i32 128, label %if.end8.land.lhs.true.i_crit_edge108
  ]

if.end8.land.lhs.true.i_crit_edge108:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end8.land.lhs.true.i_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end8.dc_link_detect_helper.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.end8.if.end13.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end8.land.lhs.true.i_crit_edge, %if.end8.land.lhs.true.i_crit_edge108
  %allow_edp_hotplug_detection.i = getelementptr inbounds %struct.dc, ptr %19, i32 0, i32 4, i32 15
  %29 = ptrtoint ptr %allow_edp_hotplug_detection.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %allow_edp_hotplug_detection.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %local_sink.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %31 = ptrtoint ptr %local_sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %local_sink.i, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.if.end13.i_crit_edge, label %if.then7.i

land.lhs.true5.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %27)
  %cmp9.i = icmp eq i32 %27, 128
  br i1 %cmp9.i, label %if.then10.i, label %if.then7.i.dc_link_detect_helper.exit_crit_edge

if.then7.i.dc_link_detect_helper.exit_crit_edge:  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dpcd_set_source_specific_data(ptr noundef %link) #11
  tail call void @msleep(i32 noundef 30) #11
  %call11.i = tail call zeroext i1 @dc_link_set_default_brightness_aux(ptr noundef %link) #11
  br label %dc_link_detect_helper.exit

if.end13.i:                                       ; preds = %land.lhs.true5.i.if.end13.i_crit_edge, %land.lhs.true.i.if.end13.i_crit_edge, %if.end8.if.end13.i_crit_edge
  %call14.i = call zeroext i1 @dc_link_detect_sink(ptr noundef %link, ptr noundef nonnull %new_connection_type.i) #11
  br i1 %call14.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dc_link_detect_helper, i32 noundef 876) #11
  tail call void @kgdb_breakpoint() #11
  br label %dc_link_detect_helper.exit

if.end16.i:                                       ; preds = %if.end13.i
  %local_sink17.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %33 = ptrtoint ptr %local_sink17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %local_sink17.i, align 4
  %tobool18.not.i = icmp eq ptr %34, null
  br i1 %tobool18.not.i, label %if.end16.i.link_disconnect_sink.exit.i_crit_edge, label %if.end20.i

if.end16.i.link_disconnect_sink.exit.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_disconnect_sink.exit.i

if.end20.i:                                       ; preds = %if.end16.i
  tail call void @dc_sink_retain(ptr noundef nonnull %34) #11
  %35 = ptrtoint ptr %local_sink17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr.i = load ptr, ptr %local_sink17.i, align 4
  %tobool.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i, label %if.end20.i.link_disconnect_sink.exit.i_crit_edge, label %if.then.i.i

if.end20.i.link_disconnect_sink.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_disconnect_sink.exit.i

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dc_sink_release(ptr noundef nonnull %.pr.i) #11
  %36 = ptrtoint ptr %local_sink17.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %local_sink17.i, align 4
  br label %link_disconnect_sink.exit.i

link_disconnect_sink.exit.i:                      ; preds = %if.then.i.i, %if.end20.i.link_disconnect_sink.exit.i_crit_edge, %if.end16.i.link_disconnect_sink.exit.i_crit_edge
  %dpcd_sink_count.i.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 46
  %37 = ptrtoint ptr %dpcd_sink_count.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dpcd_sink_count.i.i, align 4
  %38 = ptrtoint ptr %new_connection_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %new_connection_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp21.not.i = icmp eq i32 %39, 0
  %type272.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 4
  %40 = ptrtoint ptr %type272.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type272.i, align 4
  br i1 %cmp21.not.i, label %if.else271.i, label %if.then22.i

if.then22.i:                                      ; preds = %link_disconnect_sink.exit.i
  %42 = ptrtoint ptr %type272.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %type272.i, align 4
  %link_state_valid.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 10
  %43 = ptrtoint ptr %link_state_valid.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %link_state_valid.i, align 2
  %44 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %connector_signal.i, align 8
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %45, label %do.body121.i [
    i32 4, label %sw.bb.i
    i32 1, label %sw.bb29.i
    i32 2, label %sw.bb32.i
    i32 8, label %sw.bb35.i
    i32 128, label %sw.bb38.i
    i32 32, label %sw.bb41.i
  ]

sw.bb.i:                                          ; preds = %if.then22.i
  %transaction_type.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %47 = ptrtoint ptr %transaction_type.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %transaction_type.i, align 4
  %hdmi_audio_native.i = getelementptr inbounds %struct.resource_pool, ptr %21, i32 0, i32 34, i32 2
  %48 = ptrtoint ptr %hdmi_audio_native.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hdmi_audio_native.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool25.not.i = icmp eq i8 %49, 0
  %signal27.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  br i1 %tobool25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %signal27.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %signal27.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %signal27.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %signal27.i, align 4
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %transaction_type30.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %52 = ptrtoint ptr %transaction_type30.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %transaction_type30.i, align 4
  %signal31.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %53 = ptrtoint ptr %signal31.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %signal31.i, align 4
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %transaction_type33.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %54 = ptrtoint ptr %transaction_type33.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %transaction_type33.i, align 4
  %signal34.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %55 = ptrtoint ptr %signal34.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %signal34.i, align 4
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %transaction_type36.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %56 = ptrtoint ptr %transaction_type36.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %transaction_type36.i, align 4
  %signal37.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %57 = ptrtoint ptr %signal37.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %signal37.i, align 4
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @read_current_link_settings_on_detect(ptr noundef %link) #11
  tail call void @detect_edp_sink_caps(ptr noundef %link) #11
  tail call fastcc void @read_current_link_settings_on_detect(ptr noundef %link) #11
  %transaction_type39.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %58 = ptrtoint ptr %transaction_type39.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %transaction_type39.i, align 4
  %signal40.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %59 = ptrtoint ptr %signal40.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %signal40.i, align 4
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.then22.i
  %ep_type.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 40
  %60 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ep_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp42.i = icmp eq i32 %61, 0
  br i1 %cmp42.i, label %land.lhs.true43.i, label %sw.bb41.i.if.end49.i_crit_edge

sw.bb41.i.if.end49.i_crit_edge:                   ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

land.lhs.true43.i:                                ; preds = %sw.bb41.i
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %62 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %link_enc.i, align 8
  %features.i = getelementptr inbounds %struct.link_encoder, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i = load i16, ptr %features.i, align 4
  %65 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp44.not.i = icmp eq i16 %65, 0
  br i1 %cmp44.not.i, label %land.lhs.true43.i.if.end49.i_crit_edge, label %if.then45.i

land.lhs.true43.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then45.i:                                      ; preds = %land.lhs.true43.i
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %is_in_alt_mode1.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %67, i32 0, i32 23
  %68 = ptrtoint ptr %is_in_alt_mode1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %is_in_alt_mode1.i, align 4
  %tobool.not.i66 = icmp eq ptr %69, null
  br i1 %tobool.not.i66, label %if.then45.i.if.end49.i_crit_edge, label %if.end.i68

if.then45.i.if.end49.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.end.i68:                                       ; preds = %if.then45.i
  %call.i67 = tail call zeroext i1 %69(ptr noundef %63) #11
  %conv.i = zext i1 %call.i67 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv.i) #14
  br i1 %call.i67, label %if.end.i68.if.end49.i_crit_edge, label %if.end10.i

if.end.i68.if.end49.i_crit_edge:                  ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.end10.i:                                       ; preds = %if.end.i68
  %call.i.i.i = tail call i64 @ktime_get_raw() #11
  br label %cond.false.i

for.cond.i:                                       ; preds = %cond.false.i
  %inc.i70 = add nuw nsw i32 %tries_taken.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i70, 400
  br i1 %exitcond.not.i, label %wait_for_entering_dp_alt_mode.exit, label %for.cond.i.cond.false.i_crit_edge

for.cond.i.cond.false.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.false.i:                                     ; preds = %for.cond.i.cond.false.i_crit_edge, %if.end10.i
  %tries_taken.072.i = phi i32 [ 0, %if.end10.i ], [ %inc.i70, %for.cond.i.cond.false.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 107374000) #11
  %71 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %link_enc.i, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %is_in_alt_mode20.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %74, i32 0, i32 23
  %75 = ptrtoint ptr %is_in_alt_mode20.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %is_in_alt_mode20.i, align 4
  %call22.i = tail call zeroext i1 %76(ptr noundef %72) #11
  br i1 %call22.i, label %wait_for_entering_dp_alt_mode.exit.thread75, label %for.cond.i

wait_for_entering_dp_alt_mode.exit.thread75:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i68.i = tail call i64 @ktime_get_raw() #11
  %77 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx.i, align 8
  %call27.i = tail call i64 @dm_get_elapse_time_in_ns(ptr noundef %78, i64 noundef %call.i.i68.i, i64 noundef %call.i.i.i) #11
  %79 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call27.i) #15, !srcloc !191
  %80 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call27.i, i64 %79, i32 0) #15, !srcloc !192
  %asmresult10.i.i.i70.i78 = extractvalue { i64, i32 } %80, 0
  %div1581.i.i71.i79 = lshr i64 %asmresult10.i.i.i70.i78, 18
  %call44.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i64 noundef %div1581.i.i71.i79) #14
  br label %if.end49.i

wait_for_entering_dp_alt_mode.exit:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i69.i = tail call i64 @ktime_get_raw() #11
  %81 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx.i, align 8
  %call38.i = tail call i64 @dm_get_elapse_time_in_ns(ptr noundef %82, i64 noundef %call.i.i69.i, i64 noundef %call.i.i.i) #11
  %83 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call38.i) #15, !srcloc !191
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call38.i, i64 %83, i32 0) #15, !srcloc !192
  %asmresult10.i.i.i70.i = extractvalue { i64, i32 } %84, 0
  %div1581.i.i71.i = lshr i64 %asmresult10.i.i.i70.i, 18
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i64 noundef %div1581.i.i71.i) #14
  br label %dc_link_detect_helper.exit

if.end49.i:                                       ; preds = %wait_for_entering_dp_alt_mode.exit.thread75, %if.end.i68.if.end49.i_crit_edge, %if.then45.i.if.end49.i_crit_edge, %land.lhs.true43.i.if.end49.i_crit_edge, %sw.bb41.i.if.end49.i_crit_edge
  %85 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dc1, align 4
  %res_pool.i36 = getelementptr inbounds %struct.dc, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %res_pool.i36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %res_pool.i36, align 8
  %is_dig_mapping_flexible.i.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 15
  %89 = ptrtoint ptr %is_dig_mapping_flexible.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %is_dig_mapping_flexible.i.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i37 = icmp eq i8 %90, 0
  br i1 %tobool.not.i.i37, label %if.else.i.i38, label %if.end49.i.if.end.i.i39_crit_edge

if.end49.i.if.end.i.i39_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i39

if.else.i.i38:                                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %link_enc.i.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %91 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %link_enc.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.link_encoder, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %enc_id.sroa.0.0.copyload.i.i = load i32, ptr %id.i.i, align 4
  %phi.bo.i.i = lshr i32 %enc_id.sroa.0.0.copyload.i.i, 24
  %phi.cast.i.i = trunc i32 %phi.bo.i.i to i8
  br label %if.end.i.i39

if.end.i.i39:                                     ; preds = %if.else.i.i38, %if.end49.i.if.end.i.i39_crit_edge
  %enc_id.sroa.0.0.i.i = phi i8 [ %phi.cast.i.i, %if.else.i.i38 ], [ 0, %if.end49.i.if.end.i.i39_crit_edge ]
  %link_id.i.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %94 = ptrtoint ptr %link_id.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.unpack.i.i = load i32, ptr %link_id.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %.unpack.i.i, 16
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 15
  %95 = zext i32 %bf.clear.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %bf.clear.i.i.i, label %if.end.i.i39.get_basic_signal_type.exit.i.i_crit_edge [
    i32 3, label %if.then.i.i.i
    i32 2, label %if.then24.i.i.i
  ]

if.end.i.i39.get_basic_signal_type.exit.i.i_crit_edge: ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i39
  %bf.lshr3.i.i.i = lshr i32 %.unpack.i.i, 24
  %trunc34.i.i.i = trunc i32 %bf.lshr3.i.i.i to i8
  %96 = zext i8 %trunc34.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %trunc34.i.i.i, label %sw.default19.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb7.i.i.i
    i8 3, label %if.then.i.i.i.get_basic_signal_type.exit.i.i_crit_edge
    i8 4, label %sw.bb13.i.i.i
    i8 5, label %sw.bb14.i.i.i
    i8 12, label %sw.bb15.i.i.i
    i8 14, label %sw.bb16.i.i.i
    i8 19, label %sw.bb17.i.i.i
    i8 20, label %sw.bb18.i.i.i
  ]

if.then.i.i.i.get_basic_signal_type.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then.i.i.i
  %switch.tableidx = add i8 %enc_id.sroa.0.0.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %97 = icmp ult i8 %switch.tableidx, 7
  br i1 %97, label %switch.lookup, label %sw.bb.i.i.i.get_basic_signal_type.exit.i.i_crit_edge

sw.bb.i.i.i.get_basic_signal_type.exit.i.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %if.then.i.i.i
  %switch.tableidx99 = add i8 %enc_id.sroa.0.0.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx99)
  %98 = icmp ult i8 %switch.tableidx99, 7
  br i1 %98, label %switch.lookup98, label %sw.bb7.i.i.i.get_basic_signal_type.exit.i.i_crit_edge

sw.bb7.i.i.i.get_basic_signal_type.exit.i.i_crit_edge: ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb13.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb14.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb15.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb16.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb17.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.bb18.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

sw.default19.i.i.i:                               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_basic_signal_type.exit.i.i

if.then24.i.i.i:                                  ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr26.i.i.i = lshr i32 %.unpack.i.i, 24
  %trunc.i.i.i = trunc i32 %bf.lshr26.i.i.i to i8
  %trunc.off.i.i.i = add i8 %trunc.i.i.i, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %trunc.off.i.i.i)
  %switch.i.i.i = icmp ult i8 %trunc.off.i.i.i, 2
  %..i.i.i = select i1 %switch.i.i.i, i32 32, i32 0
  br label %get_basic_signal_type.exit.i.i

switch.lookup:                                    ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.dc_link_detect, i32 0, i32 %99
  %100 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %100)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_basic_signal_type.exit.i.i

switch.lookup98:                                  ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = sext i8 %switch.tableidx99 to i32
  %switch.gep100 = getelementptr inbounds [7 x i32], ptr @switch.table.dc_link_detect.73, i32 0, i32 %101
  %102 = ptrtoint ptr %switch.gep100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %switch.load101 = load i32, ptr %switch.gep100, align 4
  br label %get_basic_signal_type.exit.i.i

get_basic_signal_type.exit.i.i:                   ; preds = %switch.lookup98, %switch.lookup, %if.then24.i.i.i, %sw.default19.i.i.i, %sw.bb18.i.i.i, %sw.bb17.i.i.i, %sw.bb16.i.i.i, %sw.bb15.i.i.i, %sw.bb14.i.i.i, %sw.bb13.i.i.i, %sw.bb7.i.i.i.get_basic_signal_type.exit.i.i_crit_edge, %sw.bb.i.i.i.get_basic_signal_type.exit.i.i_crit_edge, %if.then.i.i.i.get_basic_signal_type.exit.i.i_crit_edge, %if.end.i.i39.get_basic_signal_type.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %sw.default19.i.i.i ], [ 128, %sw.bb18.i.i.i ], [ 32, %sw.bb17.i.i.i ], [ 8, %sw.bb16.i.i.i ], [ 4, %sw.bb15.i.i.i ], [ 16, %sw.bb14.i.i.i ], [ 2, %sw.bb13.i.i.i ], [ 1, %if.then.i.i.i.get_basic_signal_type.exit.i.i_crit_edge ], [ %..i.i.i, %if.then24.i.i.i ], [ 0, %if.end.i.i39.get_basic_signal_type.exit.i.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 1, %sw.bb.i.i.i.get_basic_signal_type.exit.i.i_crit_edge ], [ %switch.load101, %switch.lookup98 ], [ 2, %sw.bb7.i.i.i.get_basic_signal_type.exit.i.i_crit_edge ]
  %103 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ep_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.not.i.i40 = icmp eq i32 %104, 0
  br i1 %cmp.not.i.i40, label %if.end12.i.i, label %get_basic_signal_type.exit.i.i.link_detect_sink.exit.i_crit_edge

get_basic_signal_type.exit.i.i.link_detect_sink.exit.i_crit_edge: ; preds = %get_basic_signal_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_detect_sink.exit.i

if.end12.i.i:                                     ; preds = %get_basic_signal_type.exit.i.i
  %bf.lshr.i.i = lshr i32 %.unpack.i.i, 24
  %trunc.i.i = trunc i32 %bf.lshr.i.i to i8
  %105 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %trunc.i.i, label %if.end12.i.i.link_detect_sink.exit.i_crit_edge [
    i8 12, label %sw.bb.i.i
    i8 19, label %sw.bb30.i.i
  ]

if.end12.i.i.link_detect_sink.exit.i_crit_edge:   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_detect_sink.exit.i

sw.bb.i.i:                                        ; preds = %if.end12.i.i
  %hdmi_audio_native.i.i = getelementptr inbounds %struct.resource_pool, ptr %88, i32 0, i32 34, i32 2
  %106 = ptrtoint ptr %hdmi_audio_native.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %hdmi_audio_native.i.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool21.not.i.i = icmp eq i8 %107, 0
  br i1 %tobool21.not.i.i, label %sw.bb.i.i.link_detect_sink.exit.thread.i_crit_edge, label %sw.bb.i.i.link_detect_sink.exit.i_crit_edge

sw.bb.i.i.link_detect_sink.exit.i_crit_edge:      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_detect_sink.exit.i

sw.bb.i.i.link_detect_sink.exit.thread.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_detect_sink.exit.thread.i

sw.bb30.i.i:                                      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reason)
  %cmp31.not.i.i = icmp eq i32 %reason, 2
  br i1 %cmp31.not.i.i, label %sw.bb30.i.i.link_detect_sink.exit.i_crit_edge, label %if.then32.i.i

sw.bb30.i.i.link_detect_sink.exit.i_crit_edge:    ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_detect_sink.exit.i

if.then32.i.i:                                    ; preds = %sw.bb30.i.i
  %call33.i.i = tail call zeroext i1 @dm_helpers_is_dp_sink_present(ptr noundef %link) #11
  br i1 %call33.i.i, label %if.then32.i.i.link_detect_sink.exit.i_crit_edge, label %if.then32.i.i.link_detect_sink.exit.thread.i_crit_edge

if.then32.i.i.link_detect_sink.exit.thread.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_detect_sink.exit.thread.i

if.then32.i.i.link_detect_sink.exit.i_crit_edge:  ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %link_detect_sink.exit.i

link_detect_sink.exit.thread.i:                   ; preds = %if.then32.i.i.link_detect_sink.exit.thread.i_crit_edge, %sw.bb.i.i.link_detect_sink.exit.thread.i_crit_edge
  %signal54.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %108 = ptrtoint ptr %signal54.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %signal54.i, align 4
  br label %sw.bb.i46.i

link_detect_sink.exit.i:                          ; preds = %if.then32.i.i.link_detect_sink.exit.i_crit_edge, %sw.bb30.i.i.link_detect_sink.exit.i_crit_edge, %sw.bb.i.i.link_detect_sink.exit.i_crit_edge, %if.end12.i.i.link_detect_sink.exit.i_crit_edge, %get_basic_signal_type.exit.i.i.link_detect_sink.exit.i_crit_edge
  %signal.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %109 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %retval.0.i.i.i, ptr %signal.i, align 4
  %trunc.i = trunc i32 %retval.0.i.i.i to i8
  %110 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %trunc.i, label %link_detect_sink.exit.i.if.else.i63_crit_edge [
    i8 1, label %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge
    i8 2, label %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge109
    i8 4, label %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge110
    i8 8, label %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge111
    i8 16, label %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge112
    i8 32, label %link_detect_sink.exit.i.if.then.i_crit_edge
    i8 -128, label %link_detect_sink.exit.i.if.then.i_crit_edge113
  ]

link_detect_sink.exit.i.if.then.i_crit_edge113:   ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

link_detect_sink.exit.i.if.then.i_crit_edge:      ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

link_detect_sink.exit.i.sw.bb.i46.i_crit_edge112: ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i46.i

link_detect_sink.exit.i.sw.bb.i46.i_crit_edge111: ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i46.i

link_detect_sink.exit.i.sw.bb.i46.i_crit_edge110: ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i46.i

link_detect_sink.exit.i.sw.bb.i46.i_crit_edge109: ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i46.i

link_detect_sink.exit.i.sw.bb.i46.i_crit_edge:    ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i46.i

link_detect_sink.exit.i.if.else.i63_crit_edge:    ; preds = %link_detect_sink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i63

sw.bb.i46.i:                                      ; preds = %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge109, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge110, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge111, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge112, %link_detect_sink.exit.thread.i
  %signal55.i = phi ptr [ %signal54.i, %link_detect_sink.exit.thread.i ], [ %signal.i, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge ], [ %signal.i, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge109 ], [ %signal.i, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge110 ], [ %signal.i, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge111 ], [ %signal.i, %link_detect_sink.exit.i.sw.bb.i46.i_crit_edge112 ]
  br label %if.else.i63

if.then.i:                                        ; preds = %link_detect_sink.exit.i.if.then.i_crit_edge, %link_detect_sink.exit.i.if.then.i_crit_edge113
  %transaction_type59.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %111 = ptrtoint ptr %transaction_type59.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %transaction_type59.i, align 4
  %112 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 32, ptr %signal.i, align 4
  %call6.i = tail call zeroext i1 @detect_dp_sink_caps(ptr noundef %link) #11
  br i1 %call6.i, label %if.end.i41, label %if.then51.i

if.end.i41:                                       ; preds = %if.then.i
  %call8.i = tail call zeroext i1 @is_mst_supported(ptr noundef %link) #11
  br i1 %call8.i, label %if.then9.i, label %if.end.i41.if.end12.i_crit_edge

if.end.i41.if.end12.i_crit_edge:                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end.i41
  %113 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 64, ptr %signal.i, align 4
  %114 = ptrtoint ptr %type272.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %type272.i, align 4
  %ddc.i42 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %115 = ptrtoint ptr %ddc.i42 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ddc.i42, align 4
  %117 = ptrtoint ptr %transaction_type59.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %transaction_type59.i, align 4
  tail call void @dal_ddc_service_set_transaction_type(ptr noundef %116, i32 noundef %118) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg22.i.i33) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg14.i.i34) #11
  %119 = getelementptr inbounds i8, ptr %msg22.i.i33, i32 8
  %120 = getelementptr inbounds i8, ptr %msg22.i.i33, i32 16
  %121 = call ptr @memset(ptr %120, i32 0, i32 12)
  %122 = getelementptr inbounds i8, ptr %msg14.i.i34, i32 16
  %123 = call ptr @memset(ptr %122, i32 0, i32 12)
  %hdcp_caps.i.i43 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47
  %124 = call ptr @memset(ptr %hdcp_caps.i.i43, i32 0, i32 3)
  %125 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %connector_signal.i, align 8
  %127 = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %126, label %if.then9.i.if.else.i47.i_crit_edge [
    i32 32, label %land.lhs.true.i.i46
    i32 128, label %if.then9.i.query_hdcp_capability.exit.i60_crit_edge
  ]

if.then9.i.query_hdcp_capability.exit.i60_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hdcp_capability.exit.i60

if.then9.i.if.else.i47.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i47.i

land.lhs.true.i.i46:                              ; preds = %if.then9.i
  %128 = ptrtoint ptr %ddc.i42 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ddc.i42, align 4
  %transaction_type.i.i44 = getelementptr inbounds %struct.ddc_service, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %transaction_type.i.i44 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %transaction_type.i.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp1.i.i45 = icmp eq i32 %131, 2
  br i1 %cmp1.i.i45, label %land.lhs.true.i.i46.query_hdcp_capability.exit.i60_crit_edge, label %land.lhs.true.i.i46.if.else.i47.i_crit_edge

land.lhs.true.i.i46.if.else.i47.i_crit_edge:      ; preds = %land.lhs.true.i.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i47.i

land.lhs.true.i.i46.query_hdcp_capability.exit.i60_crit_edge: ; preds = %land.lhs.true.i.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hdcp_capability.exit.i60

if.else.i47.i:                                    ; preds = %land.lhs.true.i.i46.if.else.i47.i_crit_edge, %if.then9.i.if.else.i47.i_crit_edge
  br label %query_hdcp_capability.exit.i60

query_hdcp_capability.exit.i60:                   ; preds = %if.else.i47.i, %land.lhs.true.i.i46.query_hdcp_capability.exit.i60_crit_edge, %if.then9.i.query_hdcp_capability.exit.i60_crit_edge
  %.sink39.i.i47 = phi i32 [ 1, %if.else.i47.i ], [ 3, %if.then9.i.query_hdcp_capability.exit.i60_crit_edge ], [ 3, %land.lhs.true.i.i46.query_hdcp_capability.exit.i60_crit_edge ]
  %.sink.i.i48 = phi i32 [ 16, %if.else.i47.i ], [ 17, %if.then9.i.query_hdcp_capability.exit.i60_crit_edge ], [ 17, %land.lhs.true.i.i46.query_hdcp_capability.exit.i60_crit_edge ]
  %data9.i.i49 = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i.i33, i32 0, i32 5
  %132 = ptrtoint ptr %data9.i.i49 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %hdcp_caps.i.i43, ptr %data9.i.i49, align 4
  %length10.i.i50 = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i.i33, i32 0, i32 3
  %133 = ptrtoint ptr %length10.i.i50 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %.sink39.i.i47, ptr %length10.i.i50, align 4
  %134 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %.sink.i.i48, ptr %119, align 4
  %135 = ptrtoint ptr %msg22.i.i33 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 2, ptr %msg22.i.i33, align 4
  %link13.i.i51 = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i.i33, i32 0, i32 1
  %136 = ptrtoint ptr %link13.i.i51 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %link13.i.i51, align 4
  %137 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 5, ptr %120, align 4
  %call.i.i53 = call i32 @dc_process_hdcp_msg(i32 noundef 64, ptr noundef %link, ptr noundef nonnull %msg22.i.i33) #11
  %bcaps.i.i54 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47, i32 1
  %data19.i.i55 = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i34, i32 0, i32 5
  %138 = ptrtoint ptr %data19.i.i55 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %bcaps.i.i54, ptr %data19.i.i55, align 4
  %length20.i.i56 = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i34, i32 0, i32 3
  %139 = ptrtoint ptr %length20.i.i56 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %length20.i.i56, align 4
  %msg_id21.i.i57 = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i34, i32 0, i32 2
  %140 = ptrtoint ptr %msg_id21.i.i57 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 12, ptr %msg_id21.i.i57, align 4
  %141 = ptrtoint ptr %msg14.i.i34 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %msg14.i.i34, align 4
  %link23.i.i58 = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i34, i32 0, i32 1
  %142 = ptrtoint ptr %link23.i.i58 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %link23.i.i58, align 4
  %143 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 5, ptr %122, align 4
  %call25.i.i59 = call i32 @dc_process_hdcp_msg(i32 noundef 64, ptr noundef %link, ptr noundef nonnull %msg14.i.i34) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg14.i.i34) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg22.i.i33) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %query_hdcp_capability.exit.i60, %if.end.i41.if.end12.i_crit_edge
  %144 = ptrtoint ptr %type272.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %type272.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %145)
  %cmp14.not.i = icmp eq i32 %145, 2
  br i1 %cmp14.not.i, label %if.end12.i.if.then58.i_crit_edge, label %land.lhs.true.i61

if.end12.i.if.then58.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58.i

land.lhs.true.i61:                                ; preds = %if.end12.i
  %call15.i = call zeroext i1 @is_dp_branch_device(ptr noundef %link) #11
  br i1 %call15.i, label %if.end55.i.thread82, label %land.lhs.true.i61.if.end55.i_crit_edge

land.lhs.true.i61.if.end55.i_crit_edge:           ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

if.end55.i.thread82:                              ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %type272.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 3, ptr %type272.i, align 4
  br label %land.lhs.true75.i

if.else.i63:                                      ; preds = %sw.bb.i46.i, %link_detect_sink.exit.i.if.else.i63_crit_edge
  %signal56.i = phi ptr [ %signal.i, %link_detect_sink.exit.i.if.else.i63_crit_edge ], [ %signal55.i, %sw.bb.i46.i ]
  %transaction_type.0.i.i = phi i32 [ 0, %link_detect_sink.exit.i.if.else.i63_crit_edge ], [ 1, %sw.bb.i46.i ]
  %transaction_type.i62 = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %147 = ptrtoint ptr %transaction_type.i62 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %transaction_type.0.i.i, ptr %transaction_type.i62, align 4
  %ddc19.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %148 = ptrtoint ptr %ddc19.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ddc19.i, align 4
  call void @dal_ddc_service_i2c_query_dp_dual_mode_adaptor(ptr noundef %149, ptr noundef nonnull %sink_caps.i) #11
  %150 = ptrtoint ptr %sink_caps.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sink_caps.i, align 4
  %152 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %151, label %sw.default.i.i51.i [
    i32 5, label %sw.bb.i.i50.i
    i32 4, label %if.else.i63.dp_passive_dongle_detection.exit.i_crit_edge
    i32 6, label %sw.bb2.i.i.i
  ]

if.else.i63.dp_passive_dongle_detection.exit.i_crit_edge: ; preds = %if.else.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %dp_passive_dongle_detection.exit.i

sw.bb.i.i50.i:                                    ; preds = %if.else.i63
  call void @__sanitizer_cov_trace_pc() #13
  %hdmi_audio_on_dongle.i.i.i = getelementptr inbounds %struct.resource_pool, ptr %88, i32 0, i32 34, i32 1
  %153 = ptrtoint ptr %hdmi_audio_on_dongle.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %hdmi_audio_on_dongle.i.i.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i.i.i = icmp eq i8 %154, 0
  %..i.i49.i = select i1 %tobool.not.i.i.i, i32 1, i32 4
  br label %dp_passive_dongle_detection.exit.i

sw.bb2.i.i.i:                                     ; preds = %if.else.i63
  call void @__sanitizer_cov_trace_pc() #13
  %hdmi_audio_native.i.i.i = getelementptr inbounds %struct.resource_pool, ptr %88, i32 0, i32 34, i32 2
  %155 = ptrtoint ptr %hdmi_audio_native.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %hdmi_audio_native.i.i.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool3.not.i.i.i = icmp eq i8 %156, 0
  %.8.i.i.i = select i1 %tobool3.not.i.i.i, i32 1, i32 4
  br label %dp_passive_dongle_detection.exit.i

sw.default.i.i51.i:                               ; preds = %if.else.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %dp_passive_dongle_detection.exit.i

dp_passive_dongle_detection.exit.i:               ; preds = %sw.default.i.i51.i, %sw.bb2.i.i.i, %sw.bb.i.i50.i, %if.else.i63.dp_passive_dongle_detection.exit.i_crit_edge
  %signal.0.i.i.i = phi i32 [ 0, %sw.default.i.i51.i ], [ %..i.i49.i, %sw.bb.i.i50.i ], [ 1, %if.else.i63.dp_passive_dongle_detection.exit.i_crit_edge ], [ %.8.i.i.i, %sw.bb2.i.i.i ]
  %157 = ptrtoint ptr %signal56.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %signal.0.i.i.i, ptr %signal56.i, align 4
  %dpcd_caps.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43
  %dongle_type22.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 6
  %158 = ptrtoint ptr %dongle_type22.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %151, ptr %dongle_type22.i, align 4
  %159 = ptrtoint ptr %dpcd_caps.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %dpcd_caps.i, align 4
  br label %if.end55.i

if.then51.i:                                      ; preds = %if.then.i
  br i1 %tobool18.not.i, label %if.then51.i.dc_link_detect_helper.exit_crit_edge, label %if.then53.i

if.then51.i.dc_link_detect_helper.exit_crit_edge: ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then53.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dc_sink_release(ptr noundef nonnull %34) #11
  br label %dc_link_detect_helper.exit

if.end55.i:                                       ; preds = %dp_passive_dongle_detection.exit.i, %land.lhs.true.i61.if.end55.i_crit_edge
  %160 = ptrtoint ptr %type272.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pr = load i32, ptr %type272.i, align 4
  %161 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %.pr, label %if.end55.i.if.end97.i_crit_edge [
    i32 2, label %if.end55.i.if.then58.i_crit_edge
    i32 3, label %if.end55.i.land.lhs.true75.i_crit_edge
  ]

if.end55.i.land.lhs.true75.i_crit_edge:           ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true75.i

if.end55.i.if.then58.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58.i

if.end55.i.if.end97.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97.i

if.then58.i:                                      ; preds = %if.end55.i.if.then58.i_crit_edge, %if.end12.i.if.then58.i_crit_edge
  %link_index.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %162 = ptrtoint ptr %link_index.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %link_index.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %163) #11
  %call59.i = call zeroext i1 @dp_verify_mst_link_cap(ptr noundef %link, ptr noundef nonnull %link_res.i) #11
  %164 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ctx.i, align 8
  call void @dm_helpers_dp_update_branch_info(ptr noundef %165, ptr noundef %link) #11
  %166 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp62.i = icmp eq i32 %reason, 0
  %call63.i = call zeroext i1 @dm_helpers_dp_mst_start_top_mgr(ptr noundef %167, ptr noundef %link, i1 noundef zeroext %cmp62.i) #11
  br i1 %call63.i, label %if.then64.i, label %if.end72.thread.i

if.then64.i:                                      ; preds = %if.then58.i
  br i1 %tobool18.not.i, label %if.then64.i.dc_link_detect_helper.exit_crit_edge, label %if.then66.i

if.then64.i.dc_link_detect_helper.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then66.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dc_sink_release(ptr noundef nonnull %34) #11
  br label %dc_link_detect_helper.exit

if.end72.thread.i:                                ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %type272.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 3, ptr %type272.i, align 4
  %signal70.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %169 = ptrtoint ptr %signal70.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 32, ptr %signal70.i, align 4
  br label %land.lhs.true75.i

land.lhs.true75.i:                                ; preds = %if.end72.thread.i, %if.end55.i.land.lhs.true75.i_crit_edge, %if.end55.i.thread82
  %sink_count.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 8
  %170 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %bf.load77.i = load i8, ptr %sink_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load77.i)
  %cmp79.i = icmp ult i8 %bf.load77.i, 4
  br i1 %cmp79.i, label %if.then81.i, label %land.lhs.true89.i

if.then81.i:                                      ; preds = %land.lhs.true75.i
  br i1 %tobool18.not.i, label %if.then81.i.dc_link_detect_helper.exit_crit_edge, label %if.then83.i

if.then81.i.dc_link_detect_helper.exit_crit_edge: ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then83.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dc_sink_release(ptr noundef nonnull %34) #11
  br label %dc_link_detect_helper.exit

land.lhs.true89.i:                                ; preds = %land.lhs.true75.i
  %call90.i = call zeroext i1 @is_dp_active_dongle(ptr noundef %link) #11
  br i1 %call90.i, label %land.lhs.true92.i, label %land.lhs.true89.i.if.end97.i_crit_edge

land.lhs.true89.i.if.end97.i_crit_edge:           ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97.i

land.lhs.true92.i:                                ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #13
  %dongle_type.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 6
  %171 = ptrtoint ptr %dongle_type.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %dongle_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %172)
  %cmp94.not.i = icmp ne i32 %172, 3
  br label %if.end97.i

if.end97.i:                                       ; preds = %land.lhs.true92.i, %land.lhs.true89.i.if.end97.i_crit_edge, %if.end55.i.if.end97.i_crit_edge
  %converter_disable_audio.0.off0.i = phi i1 [ false, %land.lhs.true89.i.if.end97.i_crit_edge ], [ %cmp94.not.i, %land.lhs.true92.i ], [ false, %if.end55.i.if.end97.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp98.i = icmp eq i32 %41, 2
  br i1 %cmp98.i, label %land.lhs.true100.i, label %if.end97.i.if.end106.i_crit_edge

if.end97.i.if.end106.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

land.lhs.true100.i:                               ; preds = %if.end97.i
  %173 = ptrtoint ptr %type272.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %type272.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %174)
  %cmp102.not.i = icmp eq i32 %174, 2
  br i1 %cmp102.not.i, label %land.lhs.true100.i.if.end106.i_crit_edge, label %if.then104.i

land.lhs.true100.i.if.end106.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.then104.i:                                     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ctx.i, align 8
  call void @dm_helpers_dp_mst_stop_top_mgr(ptr noundef %176, ptr noundef %link) #11
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i, %land.lhs.true100.i.if.end106.i_crit_edge, %if.end97.i.if.end106.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp107.i = icmp eq i32 %reason, 0
  br i1 %cmp107.i, label %land.lhs.true109.i, label %if.end106.i.sw.epilog.i_crit_edge

if.end106.i.sw.epilog.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

land.lhs.true109.i:                               ; preds = %if.end106.i
  %177 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %23, align 8
  %power_down_display_on_boot.i = getelementptr inbounds %struct.dc, ptr %178, i32 0, i32 4, i32 5
  %179 = ptrtoint ptr %power_down_display_on_boot.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %power_down_display_on_boot.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool112.not.i = icmp eq i8 %180, 0
  br i1 %tobool112.not.i, label %if.end117.i, label %land.lhs.true109.i.sw.epilog.i_crit_edge

land.lhs.true109.i.sw.epilog.i_crit_edge:         ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end117.i:                                      ; preds = %land.lhs.true109.i
  %link_status.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 56
  %181 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %link_status.i, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool114.not.not.i = icmp eq i8 %182, 0
  br i1 %tobool114.not.not.i, label %if.end117.i.sw.epilog.i_crit_edge, label %if.then119.i

if.end117.i.sw.epilog.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then119.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @read_current_link_settings_on_detect(ptr noundef %link) #11
  %verified_link_cap.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 20
  %reported_link_cap.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 19
  %183 = call ptr @memcpy(ptr %verified_link_cap.i, ptr %reported_link_cap.i, i32 16)
  br label %sw.epilog.i

do.body121.i:                                     ; preds = %if.then22.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %45) #11
  br i1 %tobool18.not.i, label %do.body121.i.dc_link_detect_helper.exit_crit_edge, label %if.then126.i

do.body121.i.dc_link_detect_helper.exit_crit_edge: ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then126.i:                                     ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dc_sink_release(ptr noundef nonnull %34) #11
  br label %dc_link_detect_helper.exit

sw.epilog.i:                                      ; preds = %if.then119.i, %if.end117.i.sw.epilog.i_crit_edge, %land.lhs.true109.i.sw.epilog.i_crit_edge, %if.end106.i.sw.epilog.i_crit_edge, %sw.bb38.i, %sw.bb35.i, %sw.bb32.i, %sw.bb29.i, %if.else.i, %if.then26.i
  %converter_disable_audio.1.off0.i = phi i1 [ %converter_disable_audio.0.off0.i, %if.then119.i ], [ %converter_disable_audio.0.off0.i, %if.end117.i.sw.epilog.i_crit_edge ], [ false, %sw.bb38.i ], [ false, %sw.bb35.i ], [ false, %sw.bb32.i ], [ false, %sw.bb29.i ], [ false, %if.then26.i ], [ false, %if.else.i ], [ %converter_disable_audio.0.off0.i, %land.lhs.true109.i.sw.epilog.i_crit_edge ], [ %converter_disable_audio.0.off0.i, %if.end106.i.sw.epilog.i_crit_edge ]
  %perform_dp_seamless_boot.1.off0.i = phi i1 [ true, %if.then119.i ], [ false, %if.end117.i.sw.epilog.i_crit_edge ], [ false, %sw.bb38.i ], [ false, %sw.bb35.i ], [ false, %sw.bb32.i ], [ false, %sw.bb29.i ], [ false, %if.then26.i ], [ false, %if.else.i ], [ false, %land.lhs.true109.i.sw.epilog.i_crit_edge ], [ false, %if.end106.i.sw.epilog.i_crit_edge ]
  %sink_count129.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 8
  %184 = ptrtoint ptr %sink_count129.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %bf.load130.i = load i8, ptr %sink_count129.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load130.i)
  %tobool132.not.i = icmp ult i8 %bf.load130.i, 4
  %bf.lshr131.i = lshr i8 %bf.load130.i, 2
  %narrow.i = select i1 %tobool132.not.i, i8 1, i8 %bf.lshr131.i
  %storemerge.i = zext i8 %narrow.i to i32
  %185 = ptrtoint ptr %dpcd_sink_count.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %storemerge.i, ptr %dpcd_sink_count.i.i, align 4
  %ddc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %186 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ddc.i, align 4
  %transaction_type142.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 15
  %188 = ptrtoint ptr %transaction_type142.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %transaction_type142.i, align 4
  call void @dal_ddc_service_set_transaction_type(ptr noundef %187, i32 noundef %189) #11
  %190 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ddc.i, align 4
  %call144.i = call zeroext i1 @dal_ddc_service_is_in_aux_transaction_mode(ptr noundef %191) #11
  %aux_mode.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 34
  %frombool.i = zext i1 %call144.i to i8
  %192 = ptrtoint ptr %aux_mode.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %frombool.i, ptr %aux_mode.i, align 8
  %link145.i = getelementptr inbounds %struct.dc_sink_init_data, ptr %sink_init_data.i, i32 0, i32 1
  %193 = ptrtoint ptr %link145.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %link, ptr %link145.i, align 4
  %signal146.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %194 = ptrtoint ptr %signal146.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %signal146.i, align 4
  %196 = ptrtoint ptr %sink_init_data.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %sink_init_data.i, align 4
  %call147.i = call ptr @dc_sink_create(ptr noundef nonnull %sink_init_data.i) #11
  %tobool148.not.i = icmp eq ptr %call147.i, null
  br i1 %tobool148.not.i, label %do.body150.i, label %if.end156.i

do.body150.i:                                     ; preds = %sw.epilog.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #11
  br i1 %tobool18.not.i, label %do.body150.i.dc_link_detect_helper.exit_crit_edge, label %if.then154.i

do.body150.i.dc_link_detect_helper.exit_crit_edge: ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then154.i:                                     ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dc_sink_release(ptr noundef nonnull %34) #11
  br label %dc_link_detect_helper.exit

if.end156.i:                                      ; preds = %sw.epilog.i
  %max_hdmi_pixel_clock.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 7
  %197 = ptrtoint ptr %max_hdmi_pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %max_hdmi_pixel_clock.i, align 4
  %link157.i = getelementptr inbounds %struct.dc_sink, ptr %call147.i, i32 0, i32 11
  %199 = ptrtoint ptr %link157.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %link157.i, align 4
  %dongle_max_pix_clk.i = getelementptr inbounds %struct.dc_link, ptr %200, i32 0, i32 44
  %201 = ptrtoint ptr %dongle_max_pix_clk.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %198, ptr %dongle_max_pix_clk.i, align 4
  %converter_disable_audio159.i = getelementptr inbounds %struct.dc_sink, ptr %call147.i, i32 0, i32 7
  %frombool160.i = zext i1 %converter_disable_audio.1.off0.i to i8
  %202 = ptrtoint ptr %converter_disable_audio159.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %frombool160.i, ptr %converter_disable_audio159.i, align 2
  %203 = ptrtoint ptr %local_sink17.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call147.i, ptr %local_sink17.i, align 4
  %204 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ctx.i, align 8
  %call163.i = call i32 @dm_helpers_read_local_edid(ptr noundef %205, ptr noundef %link, ptr noundef nonnull %call147.i) #11
  %206 = zext i32 %call163.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call163.i, label %if.end156.i.sw.epilog179.i_crit_edge [
    i32 3, label %sw.bb164.i
    i32 2, label %sw.bb165.i
  ]

if.end156.i.sw.epilog179.i_crit_edge:             ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog179.i

sw.bb164.i:                                       ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #11
  br label %sw.epilog179.i

sw.bb165.i:                                       ; preds = %if.end156.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #11
  %207 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %connector_signal.i, align 8
  %209 = zext i32 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %208, label %sw.bb165.i.sw.epilog179.i_crit_edge [
    i32 4, label %sw.bb165.i.if.then173.i_crit_edge
    i32 2, label %sw.bb165.i.if.then173.i_crit_edge114
    i32 1, label %sw.bb165.i.if.then173.i_crit_edge115
  ]

sw.bb165.i.if.then173.i_crit_edge115:             ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173.i

sw.bb165.i.if.then173.i_crit_edge114:             ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173.i

sw.bb165.i.if.then173.i_crit_edge:                ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173.i

sw.bb165.i.sw.epilog179.i_crit_edge:              ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog179.i

if.then173.i:                                     ; preds = %sw.bb165.i.if.then173.i_crit_edge, %sw.bb165.i.if.then173.i_crit_edge114, %sw.bb165.i.if.then173.i_crit_edge115
  br i1 %tobool18.not.i, label %if.then173.i.dc_link_detect_helper.exit_crit_edge, label %if.then175.i

if.then173.i.dc_link_detect_helper.exit_crit_edge: ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then175.i:                                     ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dc_sink_release(ptr noundef nonnull %34) #11
  br label %dc_link_detect_helper.exit

sw.epilog179.i:                                   ; preds = %sw.bb165.i.sw.epilog179.i_crit_edge, %sw.bb164.i, %if.end156.i.sw.epilog179.i_crit_edge
  br i1 %tobool18.not.i, label %sw.epilog179.i.if.end191.i_crit_edge, label %land.lhs.true181.i

sw.epilog179.i.if.end191.i_crit_edge:             ; preds = %sw.epilog179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end191.i

land.lhs.true181.i:                               ; preds = %sw.epilog179.i
  %210 = zext i32 %call163.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call163.i, label %land.lhs.true181.i.if.end191.i_crit_edge [
    i32 4, label %land.lhs.true181.i.if.then187.i_crit_edge
    i32 0, label %land.lhs.true181.i.if.then187.i_crit_edge116
  ]

land.lhs.true181.i.if.then187.i_crit_edge116:     ; preds = %land.lhs.true181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then187.i

land.lhs.true181.i.if.then187.i_crit_edge:        ; preds = %land.lhs.true181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then187.i

land.lhs.true181.i.if.end191.i_crit_edge:         ; preds = %land.lhs.true181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end191.i

if.then187.i:                                     ; preds = %land.lhs.true181.i.if.then187.i_crit_edge, %land.lhs.true181.i.if.then187.i_crit_edge116
  %dc_edid.i = getelementptr inbounds %struct.dc_sink, ptr %34, i32 0, i32 1
  %dc_edid188.i = getelementptr inbounds %struct.dc_sink, ptr %call147.i, i32 0, i32 1
  %211 = ptrtoint ptr %dc_edid.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dc_edid.i, align 4
  %213 = ptrtoint ptr %dc_edid188.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %dc_edid188.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %214)
  %cmp.not.i.i = icmp ne i32 %212, %214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp3.i.i = icmp eq i32 %214, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %cmp3.i.i
  br i1 %or.cond.i.i, label %if.then187.i.if.end191.i_crit_edge, label %if.end5.i.i

if.then187.i.if.end191.i_crit_edge:               ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end191.i

if.end5.i.i:                                      ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #13
  %raw_edid.i.i = getelementptr inbounds %struct.dc_sink, ptr %34, i32 0, i32 1, i32 1
  %raw_edid6.i.i = getelementptr inbounds %struct.dc_sink, ptr %call147.i, i32 0, i32 1, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr %raw_edid.i.i, ptr %raw_edid6.i.i, i32 %212) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp9.i.i = icmp eq i32 %bcmp.i.i, 0
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.end5.i.i, %if.then187.i.if.end191.i_crit_edge, %land.lhs.true181.i.if.end191.i_crit_edge, %sw.epilog179.i.if.end191.i_crit_edge
  %same_edid.0.i = phi i1 [ false, %sw.epilog179.i.if.end191.i_crit_edge ], [ false, %land.lhs.true181.i.if.end191.i_crit_edge ], [ %cmp9.i.i, %if.end5.i.i ], [ false, %if.then187.i.if.end191.i_crit_edge ]
  %skip_scdc_overwrite.i = getelementptr inbounds %struct.dc_sink, ptr %call147.i, i32 0, i32 2, i32 18, i32 4
  %215 = ptrtoint ptr %skip_scdc_overwrite.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %skip_scdc_overwrite.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool192.not.i = icmp eq i32 %216, 0
  br i1 %tobool192.not.i, label %if.end191.i.if.end196.i_crit_edge, label %if.then193.i

if.end191.i.if.end196.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196.i

if.then193.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #13
  %217 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ctx.i, align 8
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 8
  %hdmi20_disable.i = getelementptr inbounds %struct.dc_debug_options, ptr %220, i32 0, i32 54
  %221 = ptrtoint ptr %hdmi20_disable.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %hdmi20_disable.i, align 2
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then193.i, %if.end191.i.if.end196.i_crit_edge
  %222 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %223)
  %cmp198.i = icmp eq i32 %223, 32
  br i1 %cmp198.i, label %land.lhs.true200.i, label %if.end196.i.if.else211.i_crit_edge

if.end196.i.if.else211.i_crit_edge:               ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else211.i

land.lhs.true200.i:                               ; preds = %if.end196.i
  %224 = ptrtoint ptr %transaction_type142.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %transaction_type142.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %225)
  %cmp202.i = icmp eq i32 %225, 2
  br i1 %cmp202.i, label %land.lhs.true.i31, label %land.lhs.true200.i.if.else211.i_crit_edge

land.lhs.true200.i.if.else211.i_crit_edge:        ; preds = %land.lhs.true200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else211.i

land.lhs.true.i31:                                ; preds = %land.lhs.true200.i
  %226 = ptrtoint ptr %call147.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %call147.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg22.i) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg14.i) #11
  %228 = getelementptr inbounds i8, ptr %msg22.i, i32 8
  %229 = getelementptr inbounds i8, ptr %msg22.i, i32 16
  %230 = call ptr @memset(ptr %229, i32 0, i32 12)
  %231 = getelementptr inbounds i8, ptr %msg14.i, i32 16
  %232 = call ptr @memset(ptr %231, i32 0, i32 12)
  %hdcp_caps.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47
  %233 = call ptr @memset(ptr %hdcp_caps.i, i32 0, i32 3)
  %234 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ddc.i, align 4
  %transaction_type.i30 = getelementptr inbounds %struct.ddc_service, ptr %235, i32 0, i32 3
  %236 = ptrtoint ptr %transaction_type.i30 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %transaction_type.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %237)
  %cmp1.i = icmp eq i32 %237, 2
  %spec.select = select i1 %cmp1.i, i32 3, i32 1
  %spec.select83 = select i1 %cmp1.i, i32 17, i32 16
  %data9.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i, i32 0, i32 5
  %238 = ptrtoint ptr %data9.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %hdcp_caps.i, ptr %data9.i, align 4
  %length10.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i, i32 0, i32 3
  %239 = ptrtoint ptr %length10.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %spec.select, ptr %length10.i, align 4
  %240 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %spec.select83, ptr %228, align 4
  %241 = ptrtoint ptr %msg22.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 2, ptr %msg22.i, align 4
  %link13.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i, i32 0, i32 1
  %242 = ptrtoint ptr %link13.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %link13.i, align 4
  %max_retries.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i, i32 0, i32 4
  %243 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 5, ptr %max_retries.i, align 4
  %call.i = call i32 @dc_process_hdcp_msg(i32 noundef %227, ptr noundef %link, ptr noundef nonnull %msg22.i) #11
  %244 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %227, label %land.lhs.true.i31.query_hdcp_capability.exit_crit_edge [
    i32 32, label %land.lhs.true.i31.if.then17.i_crit_edge
    i32 64, label %land.lhs.true.i31.if.then17.i_crit_edge117
  ]

land.lhs.true.i31.if.then17.i_crit_edge117:       ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

land.lhs.true.i31.if.then17.i_crit_edge:          ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

land.lhs.true.i31.query_hdcp_capability.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hdcp_capability.exit

if.then17.i:                                      ; preds = %land.lhs.true.i31.if.then17.i_crit_edge, %land.lhs.true.i31.if.then17.i_crit_edge117
  %bcaps.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47, i32 1
  %data19.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i, i32 0, i32 5
  %245 = ptrtoint ptr %data19.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %bcaps.i, ptr %data19.i, align 4
  %length20.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i, i32 0, i32 3
  %246 = ptrtoint ptr %length20.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 1, ptr %length20.i, align 4
  %msg_id21.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i, i32 0, i32 2
  %247 = ptrtoint ptr %msg_id21.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 12, ptr %msg_id21.i, align 4
  %248 = ptrtoint ptr %msg14.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 1, ptr %msg14.i, align 4
  %link23.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i, i32 0, i32 1
  %249 = ptrtoint ptr %link23.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %link23.i, align 4
  %250 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 5, ptr %231, align 4
  %call25.i = call i32 @dc_process_hdcp_msg(i32 noundef %227, ptr noundef %link, ptr noundef nonnull %msg14.i) #11
  br label %query_hdcp_capability.exit

query_hdcp_capability.exit:                       ; preds = %if.then17.i, %land.lhs.true.i31.query_hdcp_capability.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg14.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg22.i) #11
  br i1 %perform_dp_seamless_boot.1.off0.i, label %query_hdcp_capability.exit.if.end216.i_crit_edge, label %if.then207.i

query_hdcp_capability.exit.if.end216.i_crit_edge: ; preds = %query_hdcp_capability.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216.i

if.then207.i:                                     ; preds = %query_hdcp_capability.exit
  call void @__sanitizer_cov_trace_pc() #13
  %reported_link_cap208.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 19
  %call209.i = call zeroext i1 @dp_verify_link_cap_with_retries(ptr noundef %link, ptr noundef nonnull %link_res.i, ptr noundef %reported_link_cap208.i, i32 noundef 2) #11
  br label %if.end216.i

if.else211.i:                                     ; preds = %land.lhs.true200.i.if.else211.i_crit_edge, %if.end196.i.if.else211.i_crit_edge
  br i1 %same_edid.0.i, label %if.then213.i, label %if.else211.i.if.end214.i_crit_edge

if.else211.i.if.end214.i_crit_edge:               ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214.i

if.then213.i:                                     ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #13
  %251 = ptrtoint ptr %local_sink17.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %local_sink17.i, align 4
  call void @dc_sink_release(ptr noundef %252) #11
  %253 = ptrtoint ptr %local_sink17.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %34, ptr %local_sink17.i, align 4
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.then213.i, %if.else211.i.if.end214.i_crit_edge
  %sink.0.i = phi ptr [ %34, %if.then213.i ], [ %call147.i, %if.else211.i.if.end214.i_crit_edge ]
  %prev_sink.0.i = phi ptr [ null, %if.then213.i ], [ %34, %if.else211.i.if.end214.i_crit_edge ]
  %254 = ptrtoint ptr %sink.0.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %sink.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg22.i.i) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg14.i.i) #11
  %256 = getelementptr inbounds i8, ptr %msg22.i.i, i32 8
  %257 = getelementptr inbounds i8, ptr %msg22.i.i, i32 16
  %258 = call ptr @memset(ptr %257, i32 0, i32 12)
  %259 = getelementptr inbounds i8, ptr %msg14.i.i, i32 16
  %260 = call ptr @memset(ptr %259, i32 0, i32 12)
  %hdcp_caps.i.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47
  %261 = call ptr @memset(ptr %hdcp_caps.i.i, i32 0, i32 3)
  %262 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %connector_signal.i, align 8
  %264 = zext i32 %263 to i64
  call void @__sanitizer_cov_trace_switch(i64 %264, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %263, label %if.end214.i.if.else.i.i_crit_edge [
    i32 32, label %land.lhs.true.i.i
    i32 128, label %if.end214.i.if.end.i.i_crit_edge
  ]

if.end214.i.if.end.i.i_crit_edge:                 ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end214.i.if.else.i.i_crit_edge:                ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end214.i
  %265 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ddc.i, align 4
  %transaction_type.i.i = getelementptr inbounds %struct.ddc_service, ptr %266, i32 0, i32 3
  %267 = ptrtoint ptr %transaction_type.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %transaction_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %268)
  %cmp1.i.i = icmp eq i32 %268, 2
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end214.i.if.else.i.i_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end214.i.if.end.i.i_crit_edge
  %.sink39.i.i = phi i32 [ 1, %if.else.i.i ], [ 3, %if.end214.i.if.end.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 16, %if.else.i.i ], [ 17, %if.end214.i.if.end.i.i_crit_edge ], [ 17, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %data9.i.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i.i, i32 0, i32 5
  %269 = ptrtoint ptr %data9.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %hdcp_caps.i.i, ptr %data9.i.i, align 4
  %length10.i.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i.i, i32 0, i32 3
  %270 = ptrtoint ptr %length10.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %.sink39.i.i, ptr %length10.i.i, align 4
  %271 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %.sink.i.i, ptr %256, align 4
  %272 = ptrtoint ptr %msg22.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 2, ptr %msg22.i.i, align 4
  %link13.i.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg22.i.i, i32 0, i32 1
  %273 = ptrtoint ptr %link13.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %link13.i.i, align 4
  %274 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 5, ptr %257, align 4
  %call.i.i = call i32 @dc_process_hdcp_msg(i32 noundef %255, ptr noundef %link, ptr noundef nonnull %msg22.i.i) #11
  %275 = zext i32 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %255, label %if.end.i.i.query_hdcp_capability.exit.i_crit_edge [
    i32 32, label %if.end.i.i.if.then17.i.i_crit_edge
    i32 64, label %if.end.i.i.if.then17.i.i_crit_edge118
  ]

if.end.i.i.if.then17.i.i_crit_edge118:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i.i

if.end.i.i.if.then17.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i.i

if.end.i.i.query_hdcp_capability.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hdcp_capability.exit.i

if.then17.i.i:                                    ; preds = %if.end.i.i.if.then17.i.i_crit_edge, %if.end.i.i.if.then17.i.i_crit_edge118
  %bcaps.i.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 47, i32 1
  %data19.i.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i, i32 0, i32 5
  %276 = ptrtoint ptr %data19.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %bcaps.i.i, ptr %data19.i.i, align 4
  %length20.i.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i, i32 0, i32 3
  %277 = ptrtoint ptr %length20.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 1, ptr %length20.i.i, align 4
  %msg_id21.i.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i, i32 0, i32 2
  %278 = ptrtoint ptr %msg_id21.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 12, ptr %msg_id21.i.i, align 4
  %279 = ptrtoint ptr %msg14.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 1, ptr %msg14.i.i, align 4
  %link23.i.i = getelementptr inbounds %struct.hdcp_protection_message, ptr %msg14.i.i, i32 0, i32 1
  %280 = ptrtoint ptr %link23.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %link23.i.i, align 4
  %281 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 5, ptr %259, align 4
  %call25.i.i = call i32 @dc_process_hdcp_msg(i32 noundef %255, ptr noundef %link, ptr noundef nonnull %msg14.i.i) #11
  br label %query_hdcp_capability.exit.i

query_hdcp_capability.exit.i:                     ; preds = %if.then17.i.i, %if.end.i.i.query_hdcp_capability.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg14.i.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg22.i.i) #11
  br label %if.end216.i

if.end216.i:                                      ; preds = %query_hdcp_capability.exit.i, %if.then207.i, %query_hdcp_capability.exit.if.end216.i_crit_edge
  %sink.1.i = phi ptr [ %call147.i, %query_hdcp_capability.exit.if.end216.i_crit_edge ], [ %call147.i, %if.then207.i ], [ %sink.0.i, %query_hdcp_capability.exit.i ]
  %prev_sink.1.i = phi ptr [ %34, %query_hdcp_capability.exit.if.end216.i_crit_edge ], [ %34, %if.then207.i ], [ %prev_sink.0.i, %query_hdcp_capability.exit.i ]
  %282 = ptrtoint ptr %sink.1.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %sink.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %283)
  %cmp218.i = icmp eq i32 %283, 4
  br i1 %cmp218.i, label %land.lhs.true220.i, label %if.end216.i.if.end225.i_crit_edge

if.end216.i.if.end225.i_crit_edge:                ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.i

land.lhs.true220.i:                               ; preds = %if.end216.i
  %edid_hdmi.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 16
  %284 = ptrtoint ptr %edid_hdmi.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %edid_hdmi.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool222.not.i = icmp eq i8 %285, 0
  br i1 %tobool222.not.i, label %if.then223.i, label %land.lhs.true220.i.if.end225.i_crit_edge

land.lhs.true220.i.if.end225.i_crit_edge:         ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225.i

if.then223.i:                                     ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #13
  %286 = ptrtoint ptr %sink.1.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 1, ptr %sink.1.i, align 4
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then223.i, %land.lhs.true220.i.if.end225.i_crit_edge, %if.end216.i.if.end225.i_crit_edge
  %dc_edid226.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 1
  %287 = ptrtoint ptr %dc_edid226.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %dc_edid226.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %288)
  %cmp227470.not.i = icmp ult i32 %288, 128
  br i1 %cmp227470.not.i, label %if.end225.i.for.end.i_crit_edge, label %do.body229.lr.ph.i

if.end225.i.for.end.i_crit_edge:                  ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body229.lr.ph.i:                               ; preds = %if.end225.i
  %display_name.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 5
  br label %do.body229.i

do.body229.i:                                     ; preds = %do.body229.i.do.body229.i_crit_edge, %do.body229.lr.ph.i
  %i.0471.i = phi i32 [ 0, %do.body229.lr.ph.i ], [ %inc.i, %do.body229.i.do.body229.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef %display_name.i, i32 noundef %i.0471.i) #11
  %inc.i = add nuw nsw i32 %i.0471.i, 1
  %289 = ptrtoint ptr %dc_edid226.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %dc_edid226.i, align 4
  %div459.i = lshr i32 %290, 7
  %cmp227.i = icmp ult i32 %inc.i, %div459.i
  br i1 %cmp227.i, label %do.body229.i.do.body229.i_crit_edge, label %do.body229.i.for.end.i_crit_edge

do.body229.i.for.end.i_crit_edge:                 ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body229.i.do.body229.i_crit_edge:              ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body229.i

for.end.i:                                        ; preds = %do.body229.i.for.end.i_crit_edge, %if.end225.i.for.end.i_crit_edge
  %edid_caps233.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2
  %291 = ptrtoint ptr %edid_caps233.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %edid_caps233.i, align 4
  %conv234.i = zext i16 %292 to i32
  %product_id.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 1
  %293 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %product_id.i, align 2
  %conv236.i = zext i16 %294 to i32
  %serial_number.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 2
  %295 = ptrtoint ptr %serial_number.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %serial_number.i, align 4
  %manufacture_week.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 3
  %297 = ptrtoint ptr %manufacture_week.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %manufacture_week.i, align 4
  %conv239.i = zext i8 %298 to i32
  %manufacture_year.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 4
  %299 = ptrtoint ptr %manufacture_year.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %manufacture_year.i, align 1
  %conv241.i = zext i8 %300 to i32
  %display_name243.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 5
  %speaker_flags.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 6
  %301 = ptrtoint ptr %speaker_flags.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %speaker_flags.i, align 2
  %conv246.i = zext i8 %302 to i32
  %audio_mode_count.i = getelementptr inbounds %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 7
  %303 = ptrtoint ptr %audio_mode_count.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %audio_mode_count.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dc_link_detect_helper, i32 noundef %conv234.i, i32 noundef %conv236.i, i32 noundef %296, i32 noundef %conv239.i, i32 noundef %conv241.i, ptr noundef %display_name243.i, i32 noundef %conv246.i, i32 noundef %304) #11
  %305 = ptrtoint ptr %audio_mode_count.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %audio_mode_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp251472.not.i = icmp eq i32 %306, 0
  br i1 %cmp251472.not.i, label %for.end.i.if.end289.i_crit_edge, label %for.end.i.for.body253.i_crit_edge

for.end.i.for.body253.i_crit_edge:                ; preds = %for.end.i
  br label %for.body253.i

for.end.i.if.end289.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end289.i

for.body253.i:                                    ; preds = %for.body253.i.for.body253.i_crit_edge, %for.end.i.for.body253.i_crit_edge
  %i.1473.i = phi i32 [ %inc269.i, %for.body253.i.for.body253.i_crit_edge ], [ 0, %for.end.i.for.body253.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 8, i32 %i.1473.i
  %307 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx.i, align 4
  %conv255.i = zext i8 %308 to i32
  %channel_count.i = getelementptr %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 8, i32 %i.1473.i, i32 1
  %309 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %channel_count.i, align 1
  %conv259.i = zext i8 %310 to i32
  %sample_rate.i = getelementptr %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 8, i32 %i.1473.i, i32 2
  %311 = ptrtoint ptr %sample_rate.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %sample_rate.i, align 2
  %conv263.i = zext i8 %312 to i32
  %313 = getelementptr %struct.dc_sink, ptr %sink.1.i, i32 0, i32 2, i32 8, i32 %i.1473.i, i32 3
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %313, align 1
  %conv267.i = zext i8 %315 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dc_link_detect_helper, i32 noundef %i.1473.i, i32 noundef %conv255.i, i32 noundef %conv259.i, i32 noundef %conv263.i, i32 noundef %conv267.i) #11
  %inc269.i = add nuw i32 %i.1473.i, 1
  %316 = ptrtoint ptr %audio_mode_count.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %audio_mode_count.i, align 4
  %cmp251.i = icmp ult i32 %inc269.i, %317
  br i1 %cmp251.i, label %for.body253.i.for.body253.i_crit_edge, label %for.body253.i.if.end289.i_crit_edge

for.body253.i.if.end289.i_crit_edge:              ; preds = %for.body253.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end289.i

for.body253.i.for.body253.i_crit_edge:            ; preds = %for.body253.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body253.i

if.else271.i:                                     ; preds = %link_disconnect_sink.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp273.i = icmp eq i32 %41, 2
  br i1 %cmp273.i, label %if.then275.i, label %if.else271.i.if.end285.i_crit_edge

if.else271.i.if.end285.i_crit_edge:               ; preds = %if.else271.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end285.i

if.then275.i:                                     ; preds = %if.else271.i
  %link_index276.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %318 = ptrtoint ptr %link_index276.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %link_index276.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %319) #11
  %ep_type277.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 40
  %320 = ptrtoint ptr %ep_type277.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %ep_type277.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %321)
  %cmp278.i = icmp eq i32 %321, 1
  br i1 %cmp278.i, label %if.then280.i, label %if.then275.i.if.end281.i_crit_edge

if.then275.i.if.end281.i_crit_edge:               ; preds = %if.then275.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end281.i

if.then280.i:                                     ; preds = %if.then275.i
  call void @__sanitizer_cov_trace_pc() #13
  %dpia_mst_dsc_always_on.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 54, i32 4
  %322 = ptrtoint ptr %dpia_mst_dsc_always_on.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 0, ptr %dpia_mst_dsc_always_on.i, align 2
  br label %if.end281.i

if.end281.i:                                      ; preds = %if.then280.i, %if.then275.i.if.end281.i_crit_edge
  %323 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %ctx.i, align 8
  tail call void @dm_helpers_dp_mst_stop_top_mgr(ptr noundef %324, ptr noundef %link) #11
  %mst_stream_alloc_table.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 55
  %325 = call ptr @memset(ptr %mst_stream_alloc_table.i, i32 0, i32 52)
  br label %if.end285.i

if.end285.i:                                      ; preds = %if.end281.i, %if.else271.i.if.end285.i_crit_edge
  %326 = ptrtoint ptr %type272.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %type272.i, align 4
  %signal287.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %327 = ptrtoint ptr %signal287.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %signal287.i, align 4
  %dongle_max_pix_clk288.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 44
  %328 = ptrtoint ptr %dongle_max_pix_clk288.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %dongle_max_pix_clk288.i, align 4
  br label %if.end289.i

if.end289.i:                                      ; preds = %if.end285.i, %for.body253.i.if.end289.i_crit_edge, %for.end.i.if.end289.i_crit_edge
  %same_edid.1.off0.i = phi i1 [ false, %if.end285.i ], [ %same_edid.0.i, %for.end.i.if.end289.i_crit_edge ], [ %same_edid.0.i, %for.body253.i.if.end289.i_crit_edge ]
  %sink.2.i = phi ptr [ null, %if.end285.i ], [ %sink.1.i, %for.end.i.if.end289.i_crit_edge ], [ %sink.1.i, %for.body253.i.if.end289.i_crit_edge ]
  %prev_sink.2.i = phi ptr [ %34, %if.end285.i ], [ %prev_sink.1.i, %for.end.i.if.end289.i_crit_edge ], [ %prev_sink.1.i, %for.body253.i.if.end289.i_crit_edge ]
  %link_index290.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %329 = ptrtoint ptr %link_index290.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %link_index290.i, align 8
  %signal291.i = getelementptr inbounds %struct.display_sink_capability, ptr %sink_caps.i, i32 0, i32 16
  %331 = ptrtoint ptr %signal291.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %signal291.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp292.i = icmp eq i32 %332, 0
  %cond.i = select i1 %cmp292.i, ptr @.str.23, ptr @.str.24
  %conv295.i = zext i1 %same_edid.1.off0.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %330, ptr noundef %sink.2.i, ptr noundef nonnull %cond.i, ptr noundef %prev_sink.2.i, i32 noundef %conv295.i) #11
  %tobool296.not.i = icmp eq ptr %prev_sink.2.i, null
  br i1 %tobool296.not.i, label %if.end289.i.dc_link_detect_helper.exit_crit_edge, label %if.then297.i

if.end289.i.dc_link_detect_helper.exit_crit_edge: ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_detect_helper.exit

if.then297.i:                                     ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dc_sink_release(ptr noundef nonnull %prev_sink.2.i) #11
  br label %dc_link_detect_helper.exit

dc_link_detect_helper.exit:                       ; preds = %if.then297.i, %if.end289.i.dc_link_detect_helper.exit_crit_edge, %if.then175.i, %if.then173.i.dc_link_detect_helper.exit_crit_edge, %if.then154.i, %do.body150.i.dc_link_detect_helper.exit_crit_edge, %if.then126.i, %do.body121.i.dc_link_detect_helper.exit_crit_edge, %if.then83.i, %if.then81.i.dc_link_detect_helper.exit_crit_edge, %if.then66.i, %if.then64.i.dc_link_detect_helper.exit_crit_edge, %if.then53.i, %if.then51.i.dc_link_detect_helper.exit_crit_edge, %wait_for_entering_dp_alt_mode.exit, %do.body.i, %if.then10.i, %if.then7.i.dc_link_detect_helper.exit_crit_edge, %if.end8.dc_link_detect_helper.exit_crit_edge
  %retval.0.i = phi i1 [ false, %do.body.i ], [ false, %if.end8.dc_link_detect_helper.exit_crit_edge ], [ true, %if.then10.i ], [ true, %if.then7.i.dc_link_detect_helper.exit_crit_edge ], [ false, %wait_for_entering_dp_alt_mode.exit ], [ false, %if.then53.i ], [ false, %if.then51.i.dc_link_detect_helper.exit_crit_edge ], [ false, %if.then66.i ], [ false, %if.then64.i.dc_link_detect_helper.exit_crit_edge ], [ true, %if.then83.i ], [ true, %if.then81.i.dc_link_detect_helper.exit_crit_edge ], [ false, %if.then126.i ], [ false, %do.body121.i.dc_link_detect_helper.exit_crit_edge ], [ false, %if.then154.i ], [ false, %do.body150.i.dc_link_detect_helper.exit_crit_edge ], [ false, %if.then175.i ], [ false, %if.then173.i.dc_link_detect_helper.exit_crit_edge ], [ true, %if.then297.i ], [ true, %if.end289.i.dc_link_detect_helper.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_res.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_connection_type.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sink_caps.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sink_init_data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp11.not = icmp eq i32 %reason, 0
  %or.cond = or i1 %cmp11.not, %cmp85
  br i1 %or.cond, label %dc_link_detect_helper.exit.if.end15_crit_edge, label %if.then13

dc_link_detect_helper.exit.if.end15_crit_edge:    ; preds = %dc_link_detect_helper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %dc_link_detect_helper.exit
  call void @__sanitizer_cov_trace_pc() #13
  %clk_mgr14 = getelementptr inbounds %struct.dc, ptr %1, i32 0, i32 13
  %333 = ptrtoint ptr %clk_mgr14 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %clk_mgr14, align 4
  call void @clk_mgr_optimize_pwr_state(ptr noundef %1, ptr noundef %334) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %dc_link_detect_helper.exit.if.end15_crit_edge
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_mgr_exit_optimized_pwr_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_mgr_optimize_pwr_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_get_hpd_state(ptr nocapture noundef readonly %dc_link) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !188
  %hpd_gpio = getelementptr inbounds %struct.dc_link, ptr %dc_link, i32 0, i32 58
  %1 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hpd_gpio, align 8
  %call = tail call i32 @dal_gpio_lock_pin(ptr noundef %2) #11
  %3 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hpd_gpio, align 8
  %call2 = call i32 @dal_gpio_get_value(ptr noundef %4, ptr noundef nonnull %state) #11
  %5 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hpd_gpio, align 8
  %call4 = call i32 @dal_gpio_unlock_pin(ptr noundef %6) #11
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp ne i32 %8, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #11
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_lock_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_unlock_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @link_create(ptr nocapture noundef readonly %init_params) local_unnamed_addr #0 align 64 {
entry:
  %hpd.i.i.i = alloca ptr, align 4
  %ddc_service_init_data.i5.i = alloca %struct.ddc_service_init_data, align 4
  %enc_init_data.i.i = alloca %struct.encoder_init_data, align 4
  %panel_cntl_init_data.i.i = alloca %struct.panel_cntl_init_data, align 8
  %disp_connect_caps_info.i.i = alloca %struct.bp_disp_connector_caps_info, align 4
  %ddc_service_init_data.i.i = alloca %struct.ddc_service_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 616) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_dpia_link.i = getelementptr inbounds %struct.link_init_data, ptr %init_params, i32 0, i32 4
  %1 = ptrtoint ptr %is_dpia_link.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_dpia_link.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ddc_service_init_data.i.i) #11
  %3 = getelementptr inbounds i8, ptr %ddc_service_init_data.i.i, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %3, align 4
  %ctx.i.i = getelementptr inbounds %struct.link_init_data, ptr %init_params, i32 0, i32 1
  %5 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx.i.i, align 4
  %irq_source_hpd.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %irq_source_hpd.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %irq_source_hpd.i.i, align 4
  %irq_source_hpd_rx.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %irq_source_hpd_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_source_hpd_rx.i.i, align 8
  %dpcd_caps.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 43
  %dpcd_caps1.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 56, i32 1
  %9 = ptrtoint ptr %dpcd_caps1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dpcd_caps.i.i, ptr %dpcd_caps1.i.i, align 4
  %10 = ptrtoint ptr %init_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_params, align 4
  %dc2.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 35
  %12 = ptrtoint ptr %dc2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dc2.i.i, align 4
  %ctx3.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 36
  %13 = ptrtoint ptr %ctx3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %ctx3.i.i, align 8
  %link_index.i.i = getelementptr inbounds %struct.link_init_data, ptr %init_params, i32 0, i32 3
  %14 = ptrtoint ptr %link_index.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_index.i.i, align 4
  %link_index4.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %link_index4.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %link_index4.i.i, align 8
  %preferred_link_setting.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 23
  %link_id.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 39
  %17 = call ptr @memset(ptr %preferred_link_setting.i.i, i32 0, i32 64)
  %18 = ptrtoint ptr %link_id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i.i = load i32, ptr %link_id.i.i, align 4
  %connector_index.i.i = getelementptr inbounds %struct.link_init_data, ptr %init_params, i32 0, i32 2
  %19 = ptrtoint ptr %connector_index.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %connector_index.i.i, align 4
  %add.i.i = shl i32 %20, 20
  %bf.value.i.i = add i32 %add.i.i, 1048576
  %bf.shl.i.i = and i32 %bf.value.i.i, 15728640
  %bf.set8.i.i = and i32 %bf.load.i.i, 65535
  %bf.clear11.i.i = or i32 %bf.set8.i.i, 318963712
  %bf.set12.i.i = or i32 %bf.shl.i.i, %bf.clear11.i.i
  store i32 %bf.set12.i.i, ptr %link_id.i.i, align 4
  %is_internal_display.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %is_internal_display.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_internal_display.i.i, align 8
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %connector_signal.i.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %20, i32 noundef 32) #11
  %ep_type.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 40
  %23 = ptrtoint ptr %ep_type.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %ep_type.i.i, align 8
  %is_dig_mapping_flexible.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 15
  %24 = ptrtoint ptr %is_dig_mapping_flexible.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_dig_mapping_flexible.i.i, align 1
  %25 = ptrtoint ptr %ctx3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx3.i.i, align 8
  %ctx16.i.i = getelementptr inbounds %struct.ddc_service_init_data, ptr %ddc_service_init_data.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %ctx16.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %ctx16.i.i, align 4
  %28 = ptrtoint ptr %link_id.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_id.i.i, align 4
  %30 = ptrtoint ptr %ddc_service_init_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ddc_service_init_data.i.i, align 4
  %link18.i.i = getelementptr inbounds %struct.ddc_service_init_data, ptr %ddc_service_init_data.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %link18.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %link18.i.i, align 4
  %call.i.i = call ptr @dal_ddc_service_create(ptr noundef nonnull %ddc_service_init_data.i.i) #11
  %ddc.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 33
  %32 = ptrtoint ptr %ddc.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %ddc.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %dc_link_construct_dpia.exit.i, label %dc_link_construct_dpia.exit.i.thread

dc_link_construct_dpia.exit.i.thread:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %connector_index.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %connector_index.i.i, align 4
  %conv.i.i = trunc i32 %34 to i8
  %ddc_hw_inst.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 26
  %35 = ptrtoint ptr %ddc_hw_inst.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i.i, ptr %ddc_hw_inst.i.i, align 4
  %psr_version.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 50, i32 2
  %36 = ptrtoint ptr %psr_version.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %psr_version.i.i, align 8
  %dp_mot_reset_segment.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 54, i32 3
  %37 = ptrtoint ptr %dp_mot_reset_segment.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %dp_mot_reset_segment.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ddc_service_init_data.i.i) #11
  br label %if.end5

dc_link_construct_dpia.exit.i:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ddc_service_init_data.i.i) #11
  br label %construct_fail

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ddc_service_init_data.i5.i) #11
  %38 = call ptr @memset(ptr %ddc_service_init_data.i5.i, i32 0, i32 16)
  %ctx.i6.i = getelementptr inbounds %struct.link_init_data, ptr %init_params, i32 0, i32 1
  %39 = ptrtoint ptr %ctx.i6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx.i6.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %enc_init_data.i.i) #11
  %41 = call ptr @memset(ptr %enc_init_data.i.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %panel_cntl_init_data.i.i) #11
  %42 = ptrtoint ptr %panel_cntl_init_data.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %panel_cntl_init_data.i.i, align 8
  %43 = ptrtoint ptr %init_params to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_params, align 4
  %ctx1.i.i = getelementptr inbounds %struct.dc, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %ctx1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx1.i.i, align 8
  %dc_bios.i.i = getelementptr inbounds %struct.dc_context, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %dc_bios.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dc_bios.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disp_connect_caps_info.i.i) #11
  %51 = ptrtoint ptr %disp_connect_caps_info.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16777215, ptr %disp_connect_caps_info.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 716) #17
  %tobool.not.i7.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i7.i, label %if.else.i.create_fail.i.i_crit_edge, label %if.end.i17.i

if.else.i.create_fail.i.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_fail.i.i

if.end.i17.i:                                     ; preds = %if.else.i
  %irq_source_hpd.i8.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %irq_source_hpd.i8.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %irq_source_hpd.i8.i, align 4
  %irq_source_hpd_rx.i9.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %irq_source_hpd_rx.i9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %irq_source_hpd_rx.i9.i, align 8
  %dpcd_caps.i10.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 43
  %dpcd_caps2.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 56, i32 1
  %55 = ptrtoint ptr %dpcd_caps2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dpcd_caps.i10.i, ptr %dpcd_caps2.i.i, align 4
  %56 = ptrtoint ptr %init_params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_params, align 4
  %dc4.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 35
  %58 = ptrtoint ptr %dc4.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %dc4.i.i, align 4
  %ctx5.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 36
  %59 = ptrtoint ptr %ctx5.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %40, ptr %ctx5.i.i, align 8
  %link_index.i11.i = getelementptr inbounds %struct.link_init_data, ptr %init_params, i32 0, i32 3
  %60 = ptrtoint ptr %link_index.i11.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %link_index.i11.i, align 4
  %link_index6.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %link_index6.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %link_index6.i.i, align 8
  %preferred_link_setting.i12.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 23
  %link_id.i13.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 39
  %63 = call ptr @memset(ptr %preferred_link_setting.i12.i, i32 0, i32 64)
  %64 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %48, align 4
  %get_connector_id.i.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %get_connector_id.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %get_connector_id.i.i, align 4
  %connector_index.i14.i = getelementptr inbounds %struct.link_init_data, ptr %init_params, i32 0, i32 2
  %68 = ptrtoint ptr %connector_index.i14.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %connector_index.i14.i, align 4
  %conv.i15.i = trunc i32 %69 to i8
  %call8.i.i = tail call i32 %67(ptr noundef %48, i8 noundef zeroext %conv.i15.i) #11
  %70 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call8.i.i, ptr %link_id.i13.i, align 4
  %ep_type.i16.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 40
  %71 = ptrtoint ptr %ep_type.i16.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ep_type.i16.i, align 8
  %bf.lshr.i.i = lshr i32 %call8.i.i, 24
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %bf.lshr.i.i) #11
  %72 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %48, align 4
  %get_disp_connector_caps_info.i.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %73, i32 0, i32 30
  %74 = ptrtoint ptr %get_disp_connector_caps_info.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_disp_connector_caps_info.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %75, null
  br i1 %tobool11.not.i.i, label %if.end.i17.i.if.end24.i.i_crit_edge, label %if.then12.i.i

if.end.i17.i.if.end24.i.i_crit_edge:              ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i.i

if.then12.i.i:                                    ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack555.i.i = load i32, ptr %link_id.i13.i, align 4
  %77 = insertvalue [1 x i32] undef, i32 %.unpack555.i.i, 0
  %call17.i.i = call i32 %75(ptr noundef %48, [1 x i32] %77, ptr noundef nonnull %disp_connect_caps_info.i.i) #11
  %78 = ptrtoint ptr %disp_connect_caps_info.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load18.i.i = load i8, ptr %disp_connect_caps_info.i.i, align 4
  %is_internal_display.i18.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 14
  %bf.load18.lobit.i.i = lshr i8 %bf.load18.i.i, 7
  %79 = ptrtoint ptr %is_internal_display.i18.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.load18.lobit.i.i, ptr %is_internal_display.i18.i, align 8
  %80 = zext i8 %bf.load18.lobit.i.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %80) #11
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then12.i.i, %if.end.i17.i.if.end24.i.i_crit_edge
  %81 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load26.i.i = load i32, ptr %link_id.i13.i, align 4
  %bf.lshr27.i.i = lshr i32 %bf.load26.i.i, 16
  %bf.clear.i19.i = and i32 %bf.lshr27.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear.i19.i)
  %cmp.not.i.i = icmp eq i32 %bf.clear.i19.i, 3
  br i1 %cmp.not.i.i, label %if.end35.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %connector_index.i14.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %connector_index.i14.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.dc_link_construct_legacy, i32 noundef %83, i32 noundef %bf.clear.i19.i, i32 noundef 3) #11
  br label %create_fail.i.i

if.end35.i.i:                                     ; preds = %if.end24.i.i
  %84 = ptrtoint ptr %dc4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dc4.i.i, align 4
  %res_pool.i.i = getelementptr inbounds %struct.dc, ptr %85, i32 0, i32 12
  %86 = ptrtoint ptr %res_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %res_pool.i.i, align 8
  %funcs37.i.i = getelementptr inbounds %struct.resource_pool, ptr %87, i32 0, i32 40
  %88 = ptrtoint ptr %funcs37.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %funcs37.i.i, align 4
  %link_init.i.i = getelementptr inbounds %struct.resource_funcs, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %link_init.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %link_init.i.i, align 4
  %tobool38.not.i.i = icmp eq ptr %91, null
  br i1 %tobool38.not.i.i, label %if.end35.i.i.if.end44.i.i_crit_edge, label %if.then39.i.i

if.end35.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i.i

if.then39.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %91(ptr noundef nonnull %call7.i.i) #11
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then39.i.i, %if.end35.i.i.if.end44.i.i_crit_edge
  %92 = ptrtoint ptr %ctx5.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx5.i.i, align 8
  %dc_bios46.i.i = getelementptr inbounds %struct.dc_context, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %dc_bios46.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dc_bios46.i.i, align 4
  %gpio_service.i.i = getelementptr inbounds %struct.dc_context, ptr %93, i32 0, i32 9
  %96 = ptrtoint ptr %gpio_service.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %gpio_service.i.i, align 4
  %98 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.unpack.i.i = load i32, ptr %link_id.i13.i, align 4
  %99 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call50.i.i = call ptr @get_hpd_gpio(ptr noundef %95, [1 x i32] %99, ptr noundef %97) #11
  %hpd_gpio.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 58
  %100 = ptrtoint ptr %hpd_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call50.i.i, ptr %hpd_gpio.i.i, align 8
  %tobool52.not.i.i = icmp eq ptr %call50.i.i, null
  br i1 %tobool52.not.i.i, label %if.end44.i.i.if.end63.i.i_crit_edge, label %if.then53.i.i

if.end44.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i.i

if.then53.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call55.i.i = call i32 @dal_gpio_open(ptr noundef nonnull %call50.i.i, i32 noundef 4) #11
  %101 = ptrtoint ptr %hpd_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hpd_gpio.i.i, align 8
  %call57.i.i = call i32 @dal_gpio_unlock_pin(ptr noundef %102) #11
  %103 = ptrtoint ptr %hpd_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hpd_gpio.i.i, align 8
  %call59.i.i = call i32 @dal_irq_get_source(ptr noundef %104) #11
  %105 = ptrtoint ptr %irq_source_hpd.i8.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call59.i.i, ptr %irq_source_hpd.i8.i, align 4
  %106 = ptrtoint ptr %hpd_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hpd_gpio.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.gpio, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %id.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %109) #11
  %110 = ptrtoint ptr %hpd_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hpd_gpio.i.i, align 8
  %en.i.i = getelementptr inbounds %struct.gpio, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %en.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %en.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %113) #11
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.then53.i.i, %if.end44.i.i.if.end63.i.i_crit_edge
  %114 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load65.i.i = load i32, ptr %link_id.i13.i, align 4
  %bf.lshr66.i.i = lshr i32 %bf.load65.i.i, 24
  %trunc.i.i = trunc i32 %bf.lshr66.i.i to i8
  %115 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %trunc.i.i, label %do.end.i.i [
    i8 12, label %sw.bb.i.i
    i8 3, label %if.end63.i.i.sw.bb67.i.i_crit_edge
    i8 1, label %if.end63.i.i.sw.bb67.i.i_crit_edge12
    i8 4, label %if.end63.i.i.sw.bb69.i.i_crit_edge
    i8 2, label %if.end63.i.i.sw.bb69.i.i_crit_edge13
    i8 19, label %sw.bb71.i.i
    i8 20, label %sw.bb80.i.i
    i8 14, label %sw.bb94.i.i
  ]

if.end63.i.i.sw.bb69.i.i_crit_edge13:             ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69.i.i

if.end63.i.i.sw.bb69.i.i_crit_edge:               ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb69.i.i

if.end63.i.i.sw.bb67.i.i_crit_edge12:             ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb67.i.i

if.end63.i.i.sw.bb67.i.i_crit_edge:               ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb67.i.i

sw.bb.i.i:                                        ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %connector_signal.i20.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %116 = ptrtoint ptr %connector_signal.i20.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 4, ptr %connector_signal.i20.i, align 8
  br label %sw.epilog.i.i

sw.bb67.i.i:                                      ; preds = %if.end63.i.i.sw.bb67.i.i_crit_edge, %if.end63.i.i.sw.bb67.i.i_crit_edge12
  %connector_signal68.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %117 = ptrtoint ptr %connector_signal68.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %connector_signal68.i.i, align 8
  br label %sw.epilog.i.i

sw.bb69.i.i:                                      ; preds = %if.end63.i.i.sw.bb69.i.i_crit_edge, %if.end63.i.i.sw.bb69.i.i_crit_edge13
  %connector_signal70.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %118 = ptrtoint ptr %connector_signal70.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %connector_signal70.i.i, align 8
  br label %sw.epilog.i.i

sw.bb71.i.i:                                      ; preds = %if.end63.i.i
  %connector_signal72.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %119 = ptrtoint ptr %connector_signal72.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 32, ptr %connector_signal72.i.i, align 8
  %120 = ptrtoint ptr %hpd_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hpd_gpio.i.i, align 8
  %tobool74.not.i.i = icmp eq ptr %121, null
  br i1 %tobool74.not.i.i, label %sw.bb71.i.i.sw.epilog.i.i_crit_edge, label %if.then75.i.i

sw.bb71.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then75.i.i:                                    ; preds = %sw.bb71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call77.i.i = call i32 @dal_irq_get_rx_source(ptr noundef nonnull %121) #11
  %122 = ptrtoint ptr %irq_source_hpd_rx.i9.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call77.i.i, ptr %irq_source_hpd_rx.i9.i, align 8
  br label %sw.epilog.i.i

sw.bb80.i.i:                                      ; preds = %if.end63.i.i
  %connector_signal81.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %123 = ptrtoint ptr %connector_signal81.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 128, ptr %connector_signal81.i.i, align 8
  %124 = ptrtoint ptr %hpd_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hpd_gpio.i.i, align 8
  %tobool83.not.i.i = icmp eq ptr %125, null
  br i1 %tobool83.not.i.i, label %sw.bb80.i.i.sw.epilog.i.i_crit_edge, label %if.then84.i.i

sw.bb80.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then84.i.i:                                    ; preds = %sw.bb80.i.i
  %126 = ptrtoint ptr %dc4.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dc4.i.i, align 4
  %allow_edp_hotplug_detection.i.i = getelementptr inbounds %struct.dc, ptr %127, i32 0, i32 4, i32 15
  %128 = ptrtoint ptr %allow_edp_hotplug_detection.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %allow_edp_hotplug_detection.i.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool86.not.i.i = icmp eq i8 %129, 0
  br i1 %tobool86.not.i.i, label %if.then87.i.i, label %if.then84.i.i.if.end89.i.i_crit_edge

if.then84.i.i.if.end89.i.i_crit_edge:             ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i.i

if.then87.i.i:                                    ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %irq_source_hpd.i8.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %irq_source_hpd.i8.i, align 4
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %if.then87.i.i, %if.then84.i.i.if.end89.i.i_crit_edge
  %call91.i.i = call i32 @dal_irq_get_rx_source(ptr noundef nonnull %125) #11
  %131 = ptrtoint ptr %irq_source_hpd_rx.i9.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call91.i.i, ptr %irq_source_hpd_rx.i9.i, align 8
  br label %sw.epilog.i.i

sw.bb94.i.i:                                      ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %connector_signal95.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %132 = ptrtoint ptr %connector_signal95.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 8, ptr %connector_signal95.i.i, align 8
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call100.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %bf.lshr66.i.i) #14
  br label %create_fail.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb94.i.i, %if.end89.i.i, %sw.bb80.i.i.sw.epilog.i.i_crit_edge, %if.then75.i.i, %sw.bb71.i.i.sw.epilog.i.i_crit_edge, %sw.bb69.i.i, %sw.bb67.i.i, %sw.bb.i.i
  %133 = ptrtoint ptr %connector_index.i14.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %connector_index.i14.i, align 4
  %connector_signal102.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 5
  %135 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %connector_signal102.i.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %134, i32 noundef %136) #11
  %137 = ptrtoint ptr %ctx5.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ctx5.i.i, align 8
  %ctx104.i.i = getelementptr inbounds %struct.ddc_service_init_data, ptr %ddc_service_init_data.i5.i, i32 0, i32 1
  %139 = ptrtoint ptr %ctx104.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %ctx104.i.i, align 4
  %140 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %link_id.i13.i, align 4
  %142 = ptrtoint ptr %ddc_service_init_data.i5.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %ddc_service_init_data.i5.i, align 4
  %link107.i.i = getelementptr inbounds %struct.ddc_service_init_data, ptr %ddc_service_init_data.i5.i, i32 0, i32 2
  %143 = ptrtoint ptr %link107.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call7.i.i, ptr %link107.i.i, align 4
  %call108.i.i = call ptr @dal_ddc_service_create(ptr noundef nonnull %ddc_service_init_data.i5.i) #11
  %ddc.i21.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 33
  %144 = ptrtoint ptr %ddc.i21.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call108.i.i, ptr %ddc.i21.i, align 4
  %tobool110.not.i.i = icmp eq ptr %call108.i.i, null
  br i1 %tobool110.not.i.i, label %do.body112.i.i, label %if.end115.i.i

do.body112.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #11
  br label %create_fail.i.i

if.end115.i.i:                                    ; preds = %sw.epilog.i.i
  %145 = ptrtoint ptr %call108.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %call108.i.i, align 4
  %tobool117.not.i.i = icmp eq ptr %146, null
  br i1 %tobool117.not.i.i, label %do.body119.i.i, label %if.end122.i.i

do.body119.i.i:                                   ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #11
  br label %create_fail.i.i

if.end122.i.i:                                    ; preds = %if.end115.i.i
  %call124.i.i = call ptr @dal_ddc_service_get_ddc_pin(ptr noundef nonnull %call108.i.i) #11
  %call125.i.i = call i32 @dal_ddc_get_line(ptr noundef %call124.i.i) #11
  %conv126.i.i = trunc i32 %call125.i.i to i8
  %ddc_hw_inst.i22.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 26
  %147 = ptrtoint ptr %ddc_hw_inst.i22.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv126.i.i, ptr %ddc_hw_inst.i22.i, align 4
  %148 = ptrtoint ptr %dc4.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dc4.i.i, align 4
  %res_pool128.i.i = getelementptr inbounds %struct.dc, ptr %149, i32 0, i32 12
  %150 = ptrtoint ptr %res_pool128.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %res_pool128.i.i, align 8
  %funcs129.i.i = getelementptr inbounds %struct.resource_pool, ptr %151, i32 0, i32 40
  %152 = ptrtoint ptr %funcs129.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %funcs129.i.i, align 4
  %panel_cntl_create.i.i = getelementptr inbounds %struct.resource_funcs, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %panel_cntl_create.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %panel_cntl_create.i.i, align 4
  %tobool130.not.i.i = icmp eq ptr %155, null
  br i1 %tobool130.not.i.i, label %if.end122.i.i.if.end159.i.i_crit_edge, label %land.lhs.true.i.i

if.end122.i.i.if.end159.i.i_crit_edge:            ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i.i

land.lhs.true.i.i:                                ; preds = %if.end122.i.i
  %156 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %bf.load132.i.i = load i32, ptr %link_id.i13.i, align 4
  %bf.lshr133.i.i = lshr i32 %bf.load132.i.i, 24
  %trunc572.i.i = trunc i32 %bf.lshr133.i.i to i8
  %157 = zext i8 %trunc572.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %trunc572.i.i, label %land.lhs.true.i.i.if.end159.i.i_crit_edge [
    i8 20, label %land.lhs.true.i.i.if.then141.i.i_crit_edge
    i8 14, label %land.lhs.true.i.i.if.then141.i.i_crit_edge14
  ]

land.lhs.true.i.i.if.then141.i.i_crit_edge14:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then141.i.i

land.lhs.true.i.i.if.then141.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then141.i.i

land.lhs.true.i.i.if.end159.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i.i

if.then141.i.i:                                   ; preds = %land.lhs.true.i.i.if.then141.i.i_crit_edge, %land.lhs.true.i.i.if.then141.i.i_crit_edge14
  %158 = ptrtoint ptr %panel_cntl_init_data.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %40, ptr %panel_cntl_init_data.i.i, align 8
  %dc_edp_id_count.i.i = getelementptr inbounds %struct.dc_context, ptr %40, i32 0, i32 12
  %159 = ptrtoint ptr %dc_edp_id_count.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dc_edp_id_count.i.i, align 8
  %inst.i.i = getelementptr inbounds %struct.panel_cntl_init_data, ptr %panel_cntl_init_data.i.i, i32 0, i32 1
  %161 = ptrtoint ptr %inst.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %inst.i.i, align 4
  %call148.i.i = call ptr %155(ptr noundef nonnull %panel_cntl_init_data.i.i) #11
  %panel_cntl.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 37
  %162 = ptrtoint ptr %panel_cntl.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call148.i.i, ptr %panel_cntl.i.i, align 4
  %163 = ptrtoint ptr %panel_cntl_init_data.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %panel_cntl_init_data.i.i, align 8
  %dc_edp_id_count150.i.i = getelementptr inbounds %struct.dc_context, ptr %164, i32 0, i32 12
  %165 = ptrtoint ptr %dc_edp_id_count150.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dc_edp_id_count150.i.i, align 8
  %inc.i.i = add i32 %166, 1
  store i32 %inc.i.i, ptr %dc_edp_id_count150.i.i, align 8
  %167 = load ptr, ptr %panel_cntl.i.i, align 4
  %cmp152.i.i = icmp eq ptr %167, null
  br i1 %cmp152.i.i, label %do.body155.i.i, label %if.then141.i.i.if.end159.i.i_crit_edge

if.then141.i.i.if.end159.i.i_crit_edge:           ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i.i

do.body155.i.i:                                   ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42) #11
  br label %panel_cntl_create_fail.i.i

if.end159.i.i:                                    ; preds = %if.then141.i.i.if.end159.i.i_crit_edge, %land.lhs.true.i.i.if.end159.i.i_crit_edge, %if.end122.i.i.if.end159.i.i_crit_edge
  %ctx160.i.i = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data.i.i, i32 0, i32 4
  %168 = ptrtoint ptr %ctx160.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %40, ptr %ctx160.i.i, align 4
  %get_src_obj.i.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %50, i32 0, i32 2
  %169 = ptrtoint ptr %get_src_obj.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %get_src_obj.i.i, align 4
  %dc_bios161.i.i = getelementptr inbounds %struct.dc_context, ptr %40, i32 0, i32 7
  %171 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dc_bios161.i.i, align 4
  %encoder.i.i = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data.i.i, i32 0, i32 3
  %173 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %.unpack548.i.i = load i32, ptr %link_id.i13.i, align 4
  %174 = insertvalue [1 x i32] undef, i32 %.unpack548.i.i, 0
  %call164.i.i = call i32 %170(ptr noundef %172, [1 x i32] %174, i32 noundef 0, ptr noundef %encoder.i.i) #11
  %connector.i.i = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %link_id.i13.i, align 4
  %177 = ptrtoint ptr %connector.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %connector.i.i, align 4
  %178 = ptrtoint ptr %ddc.i21.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ddc.i21.i, align 4
  %call.i.i.i = call ptr @dal_ddc_service_get_ddc_pin(ptr noundef %179) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end159.i.i.get_ddc_line.exit.i.i_crit_edge, label %if.then.i.i.i

if.end159.i.i.get_ddc_line.exit.i.i_crit_edge:    ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_ddc_line.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end159.i.i
  %call2.i.i.i = call i32 @dal_ddc_get_line(ptr noundef nonnull %call.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call2.i.i.i)
  %180 = icmp ult i32 %call2.i.i.i, 8
  br i1 %180, label %switch.lookup, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.get_ddc_line, i32 noundef 1346) #11
  call void @kgdb_breakpoint() #11
  br label %get_ddc_line.exit.i.i

switch.lookup:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.offset = add i32 %call2.i.i.i, 1
  br label %get_ddc_line.exit.i.i

get_ddc_line.exit.i.i:                            ; preds = %switch.lookup, %do.body.i.i.i, %if.end159.i.i.get_ddc_line.exit.i.i_crit_edge
  %channel.0.i.i.i = phi i32 [ 0, %do.body.i.i.i ], [ 0, %if.end159.i.i.get_ddc_line.exit.i.i_crit_edge ], [ %switch.offset, %switch.lookup ]
  %181 = ptrtoint ptr %enc_init_data.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %channel.0.i.i.i, ptr %enc_init_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd.i.i.i) #11
  %182 = ptrtoint ptr %ctx5.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ctx5.i.i, align 8
  %dc_bios.i.i.i = getelementptr inbounds %struct.dc_context, ptr %183, i32 0, i32 7
  %184 = ptrtoint ptr %dc_bios.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dc_bios.i.i.i, align 4
  %gpio_service.i.i.i = getelementptr inbounds %struct.dc_context, ptr %183, i32 0, i32 9
  %186 = ptrtoint ptr %gpio_service.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %gpio_service.i.i.i, align 4
  %188 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %.unpack.i.i.i = load i32, ptr %link_id.i13.i, align 4
  %189 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call.i557.i.i = call ptr @get_hpd_gpio(ptr noundef %185, [1 x i32] %189, ptr noundef %187) #11
  %190 = ptrtoint ptr %hpd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call.i557.i.i, ptr %hpd.i.i.i, align 4
  %tobool.not.i558.i.i = icmp eq ptr %call.i557.i.i, null
  br i1 %tobool.not.i558.i.i, label %get_ddc_line.exit.i.i.get_hpd_line.exit.i.i_crit_edge, label %if.then.i560.i.i

get_ddc_line.exit.i.i.get_hpd_line.exit.i.i_crit_edge: ; preds = %get_ddc_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_hpd_line.exit.i.i

if.then.i560.i.i:                                 ; preds = %get_ddc_line.exit.i.i
  %call2.i559.i.i = call i32 @dal_irq_get_source(ptr noundef nonnull %call.i557.i.i) #11
  %switch.tableidx = add i32 %call2.i559.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %191 = icmp ult i32 %switch.tableidx, 6
  br i1 %191, label %if.then.i560.i.i.sw.epilog.i.i.i_crit_edge, label %do.body.i566.i.i

if.then.i560.i.i.sw.epilog.i.i.i_crit_edge:       ; preds = %if.then.i560.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i.i

do.body.i566.i.i:                                 ; preds = %if.then.i560.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.get_hpd_line, i32 noundef 1302) #11
  call void @kgdb_breakpoint() #11
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %do.body.i566.i.i, %if.then.i560.i.i.sw.epilog.i.i.i_crit_edge
  %hpd_id.0.i.i.i = phi i32 [ 7, %do.body.i566.i.i ], [ %switch.tableidx, %if.then.i560.i.i.sw.epilog.i.i.i_crit_edge ]
  call void @dal_gpio_destroy_irq(ptr noundef nonnull %hpd.i.i.i) #11
  br label %get_hpd_line.exit.i.i

get_hpd_line.exit.i.i:                            ; preds = %sw.epilog.i.i.i, %get_ddc_line.exit.i.i.get_hpd_line.exit.i.i_crit_edge
  %hpd_id.1.i.i.i = phi i32 [ %hpd_id.0.i.i.i, %sw.epilog.i.i.i ], [ 7, %get_ddc_line.exit.i.i.get_hpd_line.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd.i.i.i) #11
  %hpd_source.i.i = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data.i.i, i32 0, i32 2
  %192 = ptrtoint ptr %hpd_source.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %hpd_id.1.i.i.i, ptr %hpd_source.i.i, align 4
  %conv169.i.i = trunc i32 %hpd_id.1.i.i.i to i8
  %hpd_src.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 27
  %193 = ptrtoint ptr %hpd_src.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv169.i.i, ptr %hpd_src.i.i, align 1
  %194 = ptrtoint ptr %encoder.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %.fca.0.load.i.i = load i32, ptr %encoder.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %.fca.0.load.i.i, 24
  %trunc.i.i.i = trunc i32 %bf.lshr.i.i.i to i8
  %195 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %trunc.i.i.i, label %get_hpd_line.exit.i.i.translate_encoder_to_transmitter.exit.i.i_crit_edge [
    i8 13, label %sw.bb.i.i.i
    i8 15, label %sw.bb5.i567.i.i
    i8 16, label %sw.bb12.i.i.i
    i8 20, label %sw.bb19.i.i.i
    i8 17, label %sw.bb25.i.i.i
    i8 18, label %sw.bb31.i.i.i
  ]

get_hpd_line.exit.i.i.translate_encoder_to_transmitter.exit.i.i_crit_edge: ; preds = %get_hpd_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %translate_encoder_to_transmitter.exit.i.i

sw.bb.i.i.i:                                      ; preds = %get_hpd_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr2.i.i.i = lshr i32 %.fca.0.load.i.i, 20
  %bf.clear.i.i.i = and i32 %bf.lshr2.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %bf.clear.i.i.i, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i.i.i)
  %switch.selectcmp46.i.i.i = icmp eq i32 %bf.clear.i.i.i, 1
  %switch.select47.i.i.i = select i1 %switch.selectcmp46.i.i.i, i32 0, i32 %switch.select.i.i.i
  br label %translate_encoder_to_transmitter.exit.i.i

sw.bb5.i567.i.i:                                  ; preds = %get_hpd_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr7.i.i.i = lshr i32 %.fca.0.load.i.i, 20
  %bf.clear8.i.i.i = and i32 %bf.lshr7.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear8.i.i.i)
  %switch.selectcmp48.i.i.i = icmp eq i32 %bf.clear8.i.i.i, 2
  %switch.select49.i.i.i = select i1 %switch.selectcmp48.i.i.i, i32 3, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear8.i.i.i)
  %switch.selectcmp50.i.i.i = icmp eq i32 %bf.clear8.i.i.i, 1
  %switch.select51.i.i.i = select i1 %switch.selectcmp50.i.i.i, i32 2, i32 %switch.select49.i.i.i
  br label %translate_encoder_to_transmitter.exit.i.i

sw.bb12.i.i.i:                                    ; preds = %get_hpd_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr14.i.i.i = lshr i32 %.fca.0.load.i.i, 20
  %bf.clear15.i.i.i = and i32 %bf.lshr14.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear15.i.i.i)
  %switch.selectcmp52.i.i.i = icmp eq i32 %bf.clear15.i.i.i, 2
  %switch.select53.i.i.i = select i1 %switch.selectcmp52.i.i.i, i32 5, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear15.i.i.i)
  %switch.selectcmp54.i.i.i = icmp eq i32 %bf.clear15.i.i.i, 1
  %switch.select55.i.i.i = select i1 %switch.selectcmp54.i.i.i, i32 4, i32 %switch.select53.i.i.i
  br label %translate_encoder_to_transmitter.exit.i.i

sw.bb19.i.i.i:                                    ; preds = %get_hpd_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %196 = and i32 %.fca.0.load.i.i, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %196)
  %cond39.i.i.i = icmp eq i32 %196, 1048576
  %..i.i.i = select i1 %cond39.i.i.i, i32 9, i32 -1
  br label %translate_encoder_to_transmitter.exit.i.i

sw.bb25.i.i.i:                                    ; preds = %get_hpd_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = and i32 %.fca.0.load.i.i, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %197)
  %cond.i.i.i = icmp eq i32 %197, 1048576
  %.56.i.i.i = select i1 %cond.i.i.i, i32 6, i32 -1
  br label %translate_encoder_to_transmitter.exit.i.i

sw.bb31.i.i.i:                                    ; preds = %get_hpd_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr33.i.i.i = lshr i32 %.fca.0.load.i.i, 20
  %bf.clear34.i.i.i = and i32 %bf.lshr33.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear34.i.i.i)
  %switch.selectcmp57.i.i.i = icmp eq i32 %bf.clear34.i.i.i, 2
  %switch.select58.i.i.i = select i1 %switch.selectcmp57.i.i.i, i32 8, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear34.i.i.i)
  %switch.selectcmp59.i.i.i = icmp eq i32 %bf.clear34.i.i.i, 1
  %switch.select60.i.i.i = select i1 %switch.selectcmp59.i.i.i, i32 7, i32 %switch.select58.i.i.i
  br label %translate_encoder_to_transmitter.exit.i.i

translate_encoder_to_transmitter.exit.i.i:        ; preds = %sw.bb31.i.i.i, %sw.bb25.i.i.i, %sw.bb19.i.i.i, %sw.bb12.i.i.i, %sw.bb5.i567.i.i, %sw.bb.i.i.i, %get_hpd_line.exit.i.i.translate_encoder_to_transmitter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %switch.select47.i.i.i, %sw.bb.i.i.i ], [ %switch.select51.i.i.i, %sw.bb5.i567.i.i ], [ %switch.select55.i.i.i, %sw.bb12.i.i.i ], [ %..i.i.i, %sw.bb19.i.i.i ], [ %.56.i.i.i, %sw.bb25.i.i.i ], [ %switch.select60.i.i.i, %sw.bb31.i.i.i ], [ -1, %get_hpd_line.exit.i.i.translate_encoder_to_transmitter.exit.i.i_crit_edge ]
  %transmitter.i.i = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data.i.i, i32 0, i32 5
  %198 = ptrtoint ptr %transmitter.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %retval.0.i.i.i, ptr %transmitter.i.i, align 4
  %199 = ptrtoint ptr %dc4.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dc4.i.i, align 4
  %res_pool174.i.i = getelementptr inbounds %struct.dc, ptr %200, i32 0, i32 12
  %201 = ptrtoint ptr %res_pool174.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %res_pool174.i.i, align 8
  %funcs175.i.i = getelementptr inbounds %struct.resource_pool, ptr %202, i32 0, i32 40
  %203 = ptrtoint ptr %funcs175.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %funcs175.i.i, align 4
  %link_enc_create.i.i = getelementptr inbounds %struct.resource_funcs, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %link_enc_create.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %link_enc_create.i.i, align 4
  %call176.i.i = call ptr %206(ptr noundef nonnull %enc_init_data.i.i) #11
  %link_enc.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 38
  %207 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call176.i.i, ptr %link_enc.i.i, align 8
  %tobool178.not.i.i = icmp eq ptr %call176.i.i, null
  br i1 %tobool178.not.i.i, label %do.body180.i.i, label %if.end183.i.i

do.body180.i.i:                                   ; preds = %translate_encoder_to_transmitter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43) #11
  br label %link_enc_create_fail.i.i

if.end183.i.i:                                    ; preds = %translate_encoder_to_transmitter.exit.i.i
  %features.i.i = getelementptr inbounds %struct.link_encoder, ptr %call176.i.i, i32 0, i32 7
  %208 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %bf.load185.i.i = load i16, ptr %features.i.i, align 4
  %bf.lshr186.i.i = lshr i16 %bf.load185.i.i, 6
  %bf.clear187.i.i = and i16 %bf.lshr186.i.i, 1
  %bf.cast188.i.i = zext i16 %bf.clear187.i.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %bf.cast188.i.i) #11
  %209 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %link_enc.i.i, align 8
  %preferred_engine.i.i = getelementptr inbounds %struct.link_encoder, ptr %210, i32 0, i32 6
  %211 = ptrtoint ptr %preferred_engine.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %preferred_engine.i.i, align 4
  %eng_id.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 29
  %213 = ptrtoint ptr %eng_id.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %eng_id.i.i, align 8
  %214 = ptrtoint ptr %dc4.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dc4.i.i, align 4
  %res_pool192.i.i = getelementptr inbounds %struct.dc, ptr %215, i32 0, i32 12
  %216 = ptrtoint ptr %res_pool192.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %res_pool192.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.resource_pool, ptr %217, i32 0, i32 22, i32 %212
  %218 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %210, ptr %arrayidx.i.i, align 4
  %219 = load ptr, ptr %dc4.i.i, align 4
  %res_pool195.i.i = getelementptr inbounds %struct.dc, ptr %219, i32 0, i32 12
  %220 = ptrtoint ptr %res_pool195.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %res_pool195.i.i, align 8
  %dig_link_enc_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %221, i32 0, i32 23
  %222 = ptrtoint ptr %dig_link_enc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %dig_link_enc_count.i.i, align 4
  %inc196.i.i = add i32 %223, 1
  store i32 %inc196.i.i, ptr %dig_link_enc_count.i.i, align 4
  %224 = load ptr, ptr %link_enc.i.i, align 8
  %transmitter198.i.i = getelementptr inbounds %struct.link_encoder, ptr %224, i32 0, i32 8
  %225 = ptrtoint ptr %transmitter198.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %transmitter198.i.i, align 4
  %conv199.i.i = trunc i32 %226 to i8
  %link_enc_hw_inst.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 28
  %227 = ptrtoint ptr %link_enc_hw_inst.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv199.i.i, ptr %link_enc_hw_inst.i.i, align 2
  %get_device_tag.i.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %50, i32 0, i32 5
  %device_tag.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 42
  %is_device_id_supported.i.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %50, i32 0, i32 13
  %dev_id.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 42, i32 1
  %.elt553.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 42, i32 1, i32 1
  %228 = ptrtoint ptr %get_device_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %get_device_tag.i.i, align 4
  %230 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dc_bios161.i.i, align 4
  %232 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %.unpack551.i.i = load i32, ptr %link_id.i13.i, align 4
  %233 = insertvalue [1 x i32] undef, i32 %.unpack551.i.i, 0
  %call207.i.i = call i32 %229(ptr noundef %231, [1 x i32] %233, i32 noundef 0, ptr noundef %device_tag.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.i.i)
  %cmp208.not.i.i = icmp eq i32 %call207.i.i, 0
  br i1 %cmp208.not.i.i, label %if.end214.i.i, label %if.end183.i.i.do.body211.i.i_crit_edge

if.end183.i.i.do.body211.i.i_crit_edge:           ; preds = %if.end183.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211.i.i

do.body211.i.i:                                   ; preds = %for.inc.2.i.i.do.body211.i.i_crit_edge, %for.inc.1.i.i.do.body211.i.i_crit_edge, %for.inc.i.i.do.body211.i.i_crit_edge, %if.end183.i.i.do.body211.i.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #11
  %234 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %link_enc.i.i, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %destroy.i.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %237, i32 0, i32 19
  %238 = ptrtoint ptr %destroy.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %destroy.i.i, align 4
  call void %239(ptr noundef %link_enc.i.i) #11
  br label %link_enc_create_fail.i.i

if.end214.i.i:                                    ; preds = %if.end183.i.i
  %240 = ptrtoint ptr %is_device_id_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %is_device_id_supported.i.i, align 4
  %242 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dc_bios161.i.i, align 4
  %244 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %.unpack552.i.i = load i32, ptr %dev_id.i.i, align 4
  %245 = insertvalue [2 x i32] undef, i32 %.unpack552.i.i, 0
  %246 = ptrtoint ptr %.elt553.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %.unpack554.i.i = load i32, ptr %.elt553.i.i, align 8
  %247 = insertvalue [2 x i32] %245, i32 %.unpack554.i.i, 1
  %call217.i.i = call zeroext i1 %241(ptr noundef %243, [2 x i32] %247) #11
  br i1 %call217.i.i, label %if.end219.i.i, label %if.end214.i.i.for.inc.i.i_crit_edge

if.end214.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end214.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end219.i.i:                                    ; preds = %if.end214.i.i
  %248 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %bf.load222.i.i = load i32, ptr %dev_id.i.i, align 4
  %bf.lshr223.mask.i.i = and i32 %bf.load222.i.i, -65536
  %249 = zext i32 %bf.lshr223.mask.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %bf.lshr223.mask.i.i, label %if.end219.i.i.if.end243.i.i_crit_edge [
    i32 131072, label %land.lhs.true226.i.i
    i32 65536, label %land.lhs.true238.i.i
  ]

if.end219.i.i.if.end243.i.i_crit_edge:            ; preds = %if.end219.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true226.i.i:                             ; preds = %if.end219.i.i
  %250 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %251)
  %cmp228.not.i.i = icmp eq i32 %251, 16
  br i1 %cmp228.not.i.i, label %land.lhs.true226.i.i.if.end243.i.i_crit_edge, label %land.lhs.true226.i.i.for.inc.i.i_crit_edge

land.lhs.true226.i.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true226.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true226.i.i.if.end243.i.i_crit_edge:     ; preds = %land.lhs.true226.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.i.i:                             ; preds = %if.end219.i.i
  %252 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %253)
  %cmp240.i.i = icmp eq i32 %253, 16
  br i1 %cmp240.i.i, label %land.lhs.true238.i.i.for.inc.i.i_crit_edge, label %land.lhs.true238.i.i.if.end243.i.i_crit_edge

land.lhs.true238.i.i.if.end243.i.i_crit_edge:     ; preds = %land.lhs.true238.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.i.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true238.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end243.i.i:                                    ; preds = %land.lhs.true226.3.i.i.if.end243.i.i_crit_edge, %land.lhs.true238.3.i.i.if.end243.i.i_crit_edge, %if.end219.3.i.i.if.end243.i.i_crit_edge, %land.lhs.true226.2.i.i.if.end243.i.i_crit_edge, %land.lhs.true238.2.i.i.if.end243.i.i_crit_edge, %if.end219.2.i.i.if.end243.i.i_crit_edge, %land.lhs.true226.1.i.i.if.end243.i.i_crit_edge, %land.lhs.true238.1.i.i.if.end243.i.i_crit_edge, %if.end219.1.i.i.if.end243.i.i_crit_edge, %land.lhs.true238.i.i.if.end243.i.i_crit_edge, %land.lhs.true226.i.i.if.end243.i.i_crit_edge, %if.end219.i.i.if.end243.i.i_crit_edge
  %254 = ptrtoint ptr %device_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %device_tag.i.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef %255) #11
  %256 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %bf.load247.i.i = load i32, ptr %dev_id.i.i, align 4
  %bf.lshr248.i.i = lshr i32 %bf.load247.i.i, 16
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %bf.lshr248.i.i) #11
  %257 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %bf.load251.i.i = load i32, ptr %dev_id.i.i, align 4
  %bf.clear252.i.i = and i32 %bf.load251.i.i, 65535
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %bf.clear252.i.i) #11
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true238.i.i.for.inc.i.i_crit_edge, %land.lhs.true226.i.i.for.inc.i.i_crit_edge, %if.end214.i.i.for.inc.i.i_crit_edge
  %258 = ptrtoint ptr %get_device_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %get_device_tag.i.i, align 4
  %260 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dc_bios161.i.i, align 4
  %262 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %.unpack551.1.i.i = load i32, ptr %link_id.i13.i, align 4
  %263 = insertvalue [1 x i32] undef, i32 %.unpack551.1.i.i, 0
  %call207.1.i.i = call i32 %259(ptr noundef %261, [1 x i32] %263, i32 noundef 1, ptr noundef %device_tag.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.1.i.i)
  %cmp208.not.1.i.i = icmp eq i32 %call207.1.i.i, 0
  br i1 %cmp208.not.1.i.i, label %if.end214.1.i.i, label %for.inc.i.i.do.body211.i.i_crit_edge

for.inc.i.i.do.body211.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211.i.i

if.end214.1.i.i:                                  ; preds = %for.inc.i.i
  %264 = ptrtoint ptr %is_device_id_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %is_device_id_supported.i.i, align 4
  %266 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dc_bios161.i.i, align 4
  %268 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %.unpack552.1.i.i = load i32, ptr %dev_id.i.i, align 4
  %269 = insertvalue [2 x i32] undef, i32 %.unpack552.1.i.i, 0
  %270 = ptrtoint ptr %.elt553.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %.unpack554.1.i.i = load i32, ptr %.elt553.i.i, align 8
  %271 = insertvalue [2 x i32] %269, i32 %.unpack554.1.i.i, 1
  %call217.1.i.i = call zeroext i1 %265(ptr noundef %267, [2 x i32] %271) #11
  br i1 %call217.1.i.i, label %if.end219.1.i.i, label %if.end214.1.i.i.for.inc.1.i.i_crit_edge

if.end214.1.i.i.for.inc.1.i.i_crit_edge:          ; preds = %if.end214.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i

if.end219.1.i.i:                                  ; preds = %if.end214.1.i.i
  %272 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %bf.load222.1.i.i = load i32, ptr %dev_id.i.i, align 4
  %bf.lshr223.mask.1.i.i = and i32 %bf.load222.1.i.i, -65536
  %273 = zext i32 %bf.lshr223.mask.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %273, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %bf.lshr223.mask.1.i.i, label %if.end219.1.i.i.if.end243.i.i_crit_edge [
    i32 131072, label %land.lhs.true226.1.i.i
    i32 65536, label %land.lhs.true238.1.i.i
  ]

if.end219.1.i.i.if.end243.i.i_crit_edge:          ; preds = %if.end219.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.1.i.i:                           ; preds = %if.end219.1.i.i
  %274 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %275)
  %cmp240.1.i.i = icmp eq i32 %275, 16
  br i1 %cmp240.1.i.i, label %land.lhs.true238.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true238.1.i.i.if.end243.i.i_crit_edge

land.lhs.true238.1.i.i.if.end243.i.i_crit_edge:   ; preds = %land.lhs.true238.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.1.i.i.for.inc.1.i.i_crit_edge:   ; preds = %land.lhs.true238.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i

land.lhs.true226.1.i.i:                           ; preds = %if.end219.1.i.i
  %276 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %277)
  %cmp228.not.1.i.i = icmp eq i32 %277, 16
  br i1 %cmp228.not.1.i.i, label %land.lhs.true226.1.i.i.if.end243.i.i_crit_edge, label %land.lhs.true226.1.i.i.for.inc.1.i.i_crit_edge

land.lhs.true226.1.i.i.for.inc.1.i.i_crit_edge:   ; preds = %land.lhs.true226.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i

land.lhs.true226.1.i.i.if.end243.i.i_crit_edge:   ; preds = %land.lhs.true226.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true226.1.i.i.for.inc.1.i.i_crit_edge, %land.lhs.true238.1.i.i.for.inc.1.i.i_crit_edge, %if.end214.1.i.i.for.inc.1.i.i_crit_edge
  %278 = ptrtoint ptr %get_device_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %get_device_tag.i.i, align 4
  %280 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dc_bios161.i.i, align 4
  %282 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %.unpack551.2.i.i = load i32, ptr %link_id.i13.i, align 4
  %283 = insertvalue [1 x i32] undef, i32 %.unpack551.2.i.i, 0
  %call207.2.i.i = call i32 %279(ptr noundef %281, [1 x i32] %283, i32 noundef 2, ptr noundef %device_tag.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.2.i.i)
  %cmp208.not.2.i.i = icmp eq i32 %call207.2.i.i, 0
  br i1 %cmp208.not.2.i.i, label %if.end214.2.i.i, label %for.inc.1.i.i.do.body211.i.i_crit_edge

for.inc.1.i.i.do.body211.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211.i.i

if.end214.2.i.i:                                  ; preds = %for.inc.1.i.i
  %284 = ptrtoint ptr %is_device_id_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %is_device_id_supported.i.i, align 4
  %286 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dc_bios161.i.i, align 4
  %288 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %.unpack552.2.i.i = load i32, ptr %dev_id.i.i, align 4
  %289 = insertvalue [2 x i32] undef, i32 %.unpack552.2.i.i, 0
  %290 = ptrtoint ptr %.elt553.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %.unpack554.2.i.i = load i32, ptr %.elt553.i.i, align 8
  %291 = insertvalue [2 x i32] %289, i32 %.unpack554.2.i.i, 1
  %call217.2.i.i = call zeroext i1 %285(ptr noundef %287, [2 x i32] %291) #11
  br i1 %call217.2.i.i, label %if.end219.2.i.i, label %if.end214.2.i.i.for.inc.2.i.i_crit_edge

if.end214.2.i.i.for.inc.2.i.i_crit_edge:          ; preds = %if.end214.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i.i

if.end219.2.i.i:                                  ; preds = %if.end214.2.i.i
  %292 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %bf.load222.2.i.i = load i32, ptr %dev_id.i.i, align 4
  %bf.lshr223.mask.2.i.i = and i32 %bf.load222.2.i.i, -65536
  %293 = zext i32 %bf.lshr223.mask.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %bf.lshr223.mask.2.i.i, label %if.end219.2.i.i.if.end243.i.i_crit_edge [
    i32 131072, label %land.lhs.true226.2.i.i
    i32 65536, label %land.lhs.true238.2.i.i
  ]

if.end219.2.i.i.if.end243.i.i_crit_edge:          ; preds = %if.end219.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.2.i.i:                           ; preds = %if.end219.2.i.i
  %294 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %295)
  %cmp240.2.i.i = icmp eq i32 %295, 16
  br i1 %cmp240.2.i.i, label %land.lhs.true238.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true238.2.i.i.if.end243.i.i_crit_edge

land.lhs.true238.2.i.i.if.end243.i.i_crit_edge:   ; preds = %land.lhs.true238.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.2.i.i.for.inc.2.i.i_crit_edge:   ; preds = %land.lhs.true238.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i.i

land.lhs.true226.2.i.i:                           ; preds = %if.end219.2.i.i
  %296 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %297)
  %cmp228.not.2.i.i = icmp eq i32 %297, 16
  br i1 %cmp228.not.2.i.i, label %land.lhs.true226.2.i.i.if.end243.i.i_crit_edge, label %land.lhs.true226.2.i.i.for.inc.2.i.i_crit_edge

land.lhs.true226.2.i.i.for.inc.2.i.i_crit_edge:   ; preds = %land.lhs.true226.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i.i

land.lhs.true226.2.i.i.if.end243.i.i_crit_edge:   ; preds = %land.lhs.true226.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true226.2.i.i.for.inc.2.i.i_crit_edge, %land.lhs.true238.2.i.i.for.inc.2.i.i_crit_edge, %if.end214.2.i.i.for.inc.2.i.i_crit_edge
  %298 = ptrtoint ptr %get_device_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %get_device_tag.i.i, align 4
  %300 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dc_bios161.i.i, align 4
  %302 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %.unpack551.3.i.i = load i32, ptr %link_id.i13.i, align 4
  %303 = insertvalue [1 x i32] undef, i32 %.unpack551.3.i.i, 0
  %call207.3.i.i = call i32 %299(ptr noundef %301, [1 x i32] %303, i32 noundef 3, ptr noundef %device_tag.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.3.i.i)
  %cmp208.not.3.i.i = icmp eq i32 %call207.3.i.i, 0
  br i1 %cmp208.not.3.i.i, label %if.end214.3.i.i, label %for.inc.2.i.i.do.body211.i.i_crit_edge

for.inc.2.i.i.do.body211.i.i_crit_edge:           ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211.i.i

if.end214.3.i.i:                                  ; preds = %for.inc.2.i.i
  %304 = ptrtoint ptr %is_device_id_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %is_device_id_supported.i.i, align 4
  %306 = ptrtoint ptr %dc_bios161.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dc_bios161.i.i, align 4
  %308 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %.unpack552.3.i.i = load i32, ptr %dev_id.i.i, align 4
  %309 = insertvalue [2 x i32] undef, i32 %.unpack552.3.i.i, 0
  %310 = ptrtoint ptr %.elt553.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %.unpack554.3.i.i = load i32, ptr %.elt553.i.i, align 8
  %311 = insertvalue [2 x i32] %309, i32 %.unpack554.3.i.i, 1
  %call217.3.i.i = call zeroext i1 %305(ptr noundef %307, [2 x i32] %311) #11
  br i1 %call217.3.i.i, label %if.end219.3.i.i, label %if.end214.3.i.i.for.end.i.i_crit_edge

if.end214.3.i.i.for.end.i.i_crit_edge:            ; preds = %if.end214.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.end219.3.i.i:                                  ; preds = %if.end214.3.i.i
  %312 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %bf.load222.3.i.i = load i32, ptr %dev_id.i.i, align 4
  %bf.lshr223.mask.3.i.i = and i32 %bf.load222.3.i.i, -65536
  %313 = zext i32 %bf.lshr223.mask.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %313, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %bf.lshr223.mask.3.i.i, label %if.end219.3.i.i.if.end243.i.i_crit_edge [
    i32 131072, label %land.lhs.true226.3.i.i
    i32 65536, label %land.lhs.true238.3.i.i
  ]

if.end219.3.i.i.if.end243.i.i_crit_edge:          ; preds = %if.end219.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.3.i.i:                           ; preds = %if.end219.3.i.i
  %314 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %315)
  %cmp240.3.i.i = icmp eq i32 %315, 16
  br i1 %cmp240.3.i.i, label %land.lhs.true238.3.i.i.for.end.i.i_crit_edge, label %land.lhs.true238.3.i.i.if.end243.i.i_crit_edge

land.lhs.true238.3.i.i.if.end243.i.i_crit_edge:   ; preds = %land.lhs.true238.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

land.lhs.true238.3.i.i.for.end.i.i_crit_edge:     ; preds = %land.lhs.true238.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

land.lhs.true226.3.i.i:                           ; preds = %if.end219.3.i.i
  %316 = ptrtoint ptr %connector_signal102.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %connector_signal102.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %317)
  %cmp228.not.3.i.i = icmp eq i32 %317, 16
  br i1 %cmp228.not.3.i.i, label %land.lhs.true226.3.i.i.if.end243.i.i_crit_edge, label %land.lhs.true226.3.i.i.for.end.i.i_crit_edge

land.lhs.true226.3.i.i.for.end.i.i_crit_edge:     ; preds = %land.lhs.true226.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

land.lhs.true226.3.i.i.if.end243.i.i_crit_edge:   ; preds = %land.lhs.true226.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243.i.i

for.end.i.i:                                      ; preds = %land.lhs.true226.3.i.i.for.end.i.i_crit_edge, %land.lhs.true238.3.i.i.for.end.i.i_crit_edge, %if.end214.3.i.i.for.end.i.i_crit_edge, %if.end243.i.i
  %integrated_info.i.i = getelementptr inbounds %struct.dc_bios, ptr %48, i32 0, i32 6
  %318 = ptrtoint ptr %integrated_info.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %integrated_info.i.i, align 4
  %tobool254.not.i.i = icmp eq ptr %319, null
  br i1 %tobool254.not.i.i, label %for.end.i.i.if.end257.i.i_crit_edge, label %if.then255.i.i

for.end.i.i.if.end257.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.i.i

if.then255.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %320 = call ptr @memcpy(ptr %call7.i.i.i.i, ptr %319, i32 716)
  br label %if.end257.i.i

if.end257.i.i:                                    ; preds = %if.then255.i.i, %for.end.i.i.if.end257.i.i_crit_edge
  %ext_disp_conn_info.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1
  %321 = ptrtoint ptr %link_id.i13.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %bf.load269.i.i = load i32, ptr %link_id.i13.i, align 4
  %device_connector_id.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %322 = ptrtoint ptr %device_connector_id.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %bf.load265.i.i = load i32, ptr %device_connector_id.i.i, align 8
  %bf.lshr266549.i.i = xor i32 %bf.load265.i.i, %bf.load269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.lshr266549.i.i)
  %323 = icmp ult i32 %bf.lshr266549.i.i, 65536
  br i1 %323, label %if.end257.i.i.if.then294.i.i_crit_edge, label %for.cond258.i.i

if.end257.i.i.if.then294.i.i_crit_edge:           ; preds = %if.end257.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then294.i.i

for.cond258.i.i:                                  ; preds = %if.end257.i.i
  %device_connector_id.1.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 2
  %324 = ptrtoint ptr %device_connector_id.1.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %bf.load265.1.i.i = load i32, ptr %device_connector_id.1.i.i, align 8
  %bf.lshr266549.1.i.i = xor i32 %bf.load265.1.i.i, %bf.load269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.lshr266549.1.i.i)
  %325 = icmp ult i32 %bf.lshr266549.1.i.i, 65536
  br i1 %325, label %for.cond258.i.i.if.then294.i.i_crit_edge, label %for.cond258.1.i.i

for.cond258.i.i.if.then294.i.i_crit_edge:         ; preds = %for.cond258.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then294.i.i

for.cond258.1.i.i:                                ; preds = %for.cond258.i.i
  %device_connector_id.2.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 2, i32 2
  %326 = ptrtoint ptr %device_connector_id.2.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %bf.load265.2.i.i = load i32, ptr %device_connector_id.2.i.i, align 8
  %bf.lshr266549.2.i.i = xor i32 %bf.load265.2.i.i, %bf.load269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.lshr266549.2.i.i)
  %327 = icmp ult i32 %bf.lshr266549.2.i.i, 65536
  br i1 %327, label %for.cond258.1.i.i.if.then294.i.i_crit_edge, label %for.cond258.2.i.i

for.cond258.1.i.i.if.then294.i.i_crit_edge:       ; preds = %for.cond258.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then294.i.i

for.cond258.2.i.i:                                ; preds = %for.cond258.1.i.i
  %device_connector_id.3.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 3, i32 2
  %328 = ptrtoint ptr %device_connector_id.3.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %bf.load265.3.i.i = load i32, ptr %device_connector_id.3.i.i, align 8
  %bf.lshr266549.3.i.i = xor i32 %bf.load265.3.i.i, %bf.load269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.lshr266549.3.i.i)
  %329 = icmp ult i32 %bf.lshr266549.3.i.i, 65536
  br i1 %329, label %for.cond258.2.i.i.if.then294.i.i_crit_edge, label %for.cond258.3.i.i

for.cond258.2.i.i.if.then294.i.i_crit_edge:       ; preds = %for.cond258.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then294.i.i

for.cond258.3.i.i:                                ; preds = %for.cond258.2.i.i
  %device_connector_id.4.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 4, i32 2
  %330 = ptrtoint ptr %device_connector_id.4.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %bf.load265.4.i.i = load i32, ptr %device_connector_id.4.i.i, align 8
  %bf.lshr266549.4.i.i = xor i32 %bf.load265.4.i.i, %bf.load269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.lshr266549.4.i.i)
  %331 = icmp ult i32 %bf.lshr266549.4.i.i, 65536
  br i1 %331, label %for.cond258.3.i.i.if.then294.i.i_crit_edge, label %for.cond258.4.i.i

for.cond258.3.i.i.if.then294.i.i_crit_edge:       ; preds = %for.cond258.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then294.i.i

for.cond258.4.i.i:                                ; preds = %for.cond258.3.i.i
  %device_connector_id.5.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 5, i32 2
  %332 = ptrtoint ptr %device_connector_id.5.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %bf.load265.5.i.i = load i32, ptr %device_connector_id.5.i.i, align 8
  %bf.lshr266549.5.i.i = xor i32 %bf.load265.5.i.i, %bf.load269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.lshr266549.5.i.i)
  %333 = icmp ult i32 %bf.lshr266549.5.i.i, 65536
  br i1 %333, label %for.cond258.4.i.i.if.then294.i.i_crit_edge, label %for.cond258.5.i.i

for.cond258.4.i.i.if.then294.i.i_crit_edge:       ; preds = %for.cond258.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then294.i.i

for.cond258.5.i.i:                                ; preds = %for.cond258.4.i.i
  %device_connector_id.6.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 6, i32 2
  %334 = ptrtoint ptr %device_connector_id.6.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %bf.load265.6.i.i = load i32, ptr %device_connector_id.6.i.i, align 8
  %bf.lshr266549.6.i.i = xor i32 %bf.load265.6.i.i, %bf.load269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.lshr266549.6.i.i)
  %335 = icmp ult i32 %bf.lshr266549.6.i.i, 65536
  br i1 %335, label %for.cond258.5.i.i.if.then294.i.i_crit_edge, label %for.cond258.5.i.i.for.end342.i.i_crit_edge

for.cond258.5.i.i.for.end342.i.i_crit_edge:       ; preds = %for.cond258.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end342.i.i

for.cond258.5.i.i.if.then294.i.i_crit_edge:       ; preds = %for.cond258.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then294.i.i

if.then294.i.i:                                   ; preds = %for.cond258.5.i.i.if.then294.i.i_crit_edge, %for.cond258.4.i.i.if.then294.i.i_crit_edge, %for.cond258.3.i.i.if.then294.i.i_crit_edge, %for.cond258.2.i.i.if.then294.i.i_crit_edge, %for.cond258.1.i.i.if.then294.i.i_crit_edge, %for.cond258.i.i.if.then294.i.i_crit_edge, %if.end257.i.i.if.then294.i.i_crit_edge
  %conv259.lcssa.i.i = phi i32 [ 0, %if.end257.i.i.if.then294.i.i_crit_edge ], [ 1, %for.cond258.i.i.if.then294.i.i_crit_edge ], [ 2, %for.cond258.1.i.i.if.then294.i.i_crit_edge ], [ 3, %for.cond258.2.i.i.if.then294.i.i_crit_edge ], [ 4, %for.cond258.3.i.i.if.then294.i.i_crit_edge ], [ 5, %for.cond258.4.i.i.if.then294.i.i_crit_edge ], [ 6, %for.cond258.5.i.i.if.then294.i.i_crit_edge ]
  %arrayidx264.le.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info.i.i, i32 0, i32 %conv259.lcssa.i.i
  %336 = ptrtoint ptr %device_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %device_tag.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp297.not.i.i = icmp eq i32 %337, 0
  br i1 %cmp297.not.i.i, label %if.then294.i.i.if.else.i.i_crit_edge, label %land.lhs.true299.i.i

if.then294.i.i.if.else.i.i_crit_edge:             ; preds = %if.then294.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true299.i.i:                             ; preds = %if.then294.i.i
  %device_acpi_enum.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info.i.i, i32 0, i32 %conv259.lcssa.i.i, i32 1
  %338 = ptrtoint ptr %device_acpi_enum.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %device_acpi_enum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %339, i32 %337)
  %cmp302.i.i = icmp eq i32 %339, %337
  br i1 %cmp302.i.i, label %if.then304.i.i, label %land.lhs.true299.i.i.if.else.i.i_crit_edge

land.lhs.true299.i.i.if.else.i.i_crit_edge:       ; preds = %land.lhs.true299.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then304.i.i:                                   ; preds = %land.lhs.true299.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ddi_channel_mapping.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 41
  %channel_mapping.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info.i.i, i32 0, i32 %conv259.lcssa.i.i, i32 6
  %340 = ptrtoint ptr %channel_mapping.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %channel_mapping.i.i, align 4
  %342 = ptrtoint ptr %ddi_channel_mapping.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %ddi_channel_mapping.i.i, align 4
  %caps.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info.i.i, i32 0, i32 %conv259.lcssa.i.i, i32 7
  %343 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %caps.i.i, align 2
  %chip_caps.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 45
  %345 = ptrtoint ptr %chip_caps.i.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %344, ptr %chip_caps.i.i, align 8
  br label %if.end325.sink.split.i.i

if.else.i.i:                                      ; preds = %land.lhs.true299.i.i.if.else.i.i_crit_edge, %if.then294.i.i.if.else.i.i_crit_edge
  %346 = ptrtoint ptr %arrayidx264.le.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx264.le.i.i, align 8
  %348 = ptrtoint ptr %.elt553.i.i to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %.elt553.i.i, align 8
  %conv312.i.i = zext i16 %349 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %347, i32 %conv312.i.i)
  %cmp313.i.i = icmp eq i32 %347, %conv312.i.i
  br i1 %cmp313.i.i, label %if.then315.i.i, label %if.else.i.i.if.end325.i.i_crit_edge

if.else.i.i.if.end325.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end325.i.i

if.then315.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ddi_channel_mapping316.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 41
  %channel_mapping317.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info.i.i, i32 0, i32 %conv259.lcssa.i.i, i32 6
  %350 = ptrtoint ptr %channel_mapping317.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %channel_mapping317.i.i, align 4
  %352 = ptrtoint ptr %ddi_channel_mapping316.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %351, ptr %ddi_channel_mapping316.i.i, align 4
  %caps318.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info.i.i, i32 0, i32 %conv259.lcssa.i.i, i32 7
  %353 = ptrtoint ptr %caps318.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %caps318.i.i, align 2
  %chip_caps319.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 45
  %355 = ptrtoint ptr %chip_caps319.i.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 %354, ptr %chip_caps319.i.i, align 8
  br label %if.end325.sink.split.i.i

if.end325.sink.split.i.i:                         ; preds = %if.then315.i.i, %if.then304.i.i
  %.sink.i.i = phi i8 [ %351, %if.then315.i.i ], [ %341, %if.then304.i.i ]
  %chip_caps319.sink.i.i = phi ptr [ %chip_caps319.i.i, %if.then315.i.i ], [ %chip_caps.i.i, %if.then304.i.i ]
  %conv321.i.i = zext i8 %.sink.i.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %conv321.i.i) #11
  %356 = ptrtoint ptr %chip_caps319.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %chip_caps319.sink.i.i, align 8
  %conv323.i.i = zext i16 %357 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %conv323.i.i) #11
  br label %if.end325.i.i

if.end325.i.i:                                    ; preds = %if.end325.sink.split.i.i, %if.else.i.i.if.end325.i.i_crit_edge
  %chip_caps326.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 45
  %358 = ptrtoint ptr %chip_caps326.i.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %chip_caps326.i.i, align 8
  %360 = and i16 %359, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %360)
  %tobool328.not.i.i = icmp eq i16 %360, 0
  br i1 %tobool328.not.i.i, label %if.end325.i.i.for.end342.i.i_crit_edge, label %if.then329.i.i

if.end325.i.i.for.end342.i.i_crit_edge:           ; preds = %if.end325.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end342.i.i

if.then329.i.i:                                   ; preds = %if.end325.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fixdpvoltageswing.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i.i, i32 0, i32 1, i32 3
  %361 = ptrtoint ptr %fixdpvoltageswing.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %fixdpvoltageswing.i.i, align 1
  %363 = and i8 %362, 3
  %and332.i.i = zext i8 %363 to i32
  %bios_forced_drive_settings.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 51
  %364 = ptrtoint ptr %bios_forced_drive_settings.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %and332.i.i, ptr %bios_forced_drive_settings.i.i, align 8
  %365 = lshr i8 %362, 2
  %366 = and i8 %365, 3
  %and336.i.i = zext i8 %366 to i32
  %PRE_EMPHASIS.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 51, i32 1
  %367 = ptrtoint ptr %PRE_EMPHASIS.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %and336.i.i, ptr %PRE_EMPHASIS.i.i, align 4
  br label %for.end342.i.i

for.end342.i.i:                                   ; preds = %if.then329.i.i, %if.end325.i.i.for.end342.i.i_crit_edge, %for.cond258.5.i.i.for.end342.i.i_crit_edge
  %368 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %48, align 4
  %get_atom_dc_golden_table.i.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %369, i32 0, i32 27
  %370 = ptrtoint ptr %get_atom_dc_golden_table.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %get_atom_dc_golden_table.i.i, align 4
  %tobool344.not.i.i = icmp eq ptr %371, null
  br i1 %tobool344.not.i.i, label %for.end342.i.i.dc_link_construct.exit.thread_crit_edge, label %if.then345.i.i

for.end342.i.i.dc_link_construct.exit.thread_crit_edge: ; preds = %for.end342.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_construct.exit.thread

if.then345.i.i:                                   ; preds = %for.end342.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call348.i.i = call i32 %371(ptr noundef %48) #11
  br label %dc_link_construct.exit.thread

dc_link_construct.exit.thread:                    ; preds = %if.then345.i.i, %for.end342.i.i.dc_link_construct.exit.thread_crit_edge
  call fastcc void @program_hpd_filter(ptr noundef nonnull %call7.i.i) #11
  %psr_version.i23.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 50, i32 2
  %372 = ptrtoint ptr %psr_version.i23.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 -1, ptr %psr_version.i23.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.dc_link_construct_legacy) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disp_connect_caps_info.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %panel_cntl_init_data.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %enc_init_data.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ddc_service_init_data.i5.i) #11
  br label %if.end5

link_enc_create_fail.i.i:                         ; preds = %do.body211.i.i, %do.body180.i.i
  %panel_cntl354.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 37
  %373 = ptrtoint ptr %panel_cntl354.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %panel_cntl354.i.i, align 4
  %cmp355.not.i.i = icmp eq ptr %374, null
  br i1 %cmp355.not.i.i, label %link_enc_create_fail.i.i.panel_cntl_create_fail.i.i_crit_edge, label %if.then357.i.i

link_enc_create_fail.i.i.panel_cntl_create_fail.i.i_crit_edge: ; preds = %link_enc_create_fail.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %panel_cntl_create_fail.i.i

if.then357.i.i:                                   ; preds = %link_enc_create_fail.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %374, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %376, align 4
  call void %378(ptr noundef %panel_cntl354.i.i) #11
  br label %panel_cntl_create_fail.i.i

panel_cntl_create_fail.i.i:                       ; preds = %if.then357.i.i, %link_enc_create_fail.i.i.panel_cntl_create_fail.i.i_crit_edge, %do.body155.i.i
  call void @dal_ddc_service_destroy(ptr noundef %ddc.i21.i) #11
  br label %create_fail.i.i

create_fail.i.i:                                  ; preds = %panel_cntl_create_fail.i.i, %do.body119.i.i, %do.body112.i.i, %do.end.i.i, %if.then29.i.i, %if.else.i.create_fail.i.i_crit_edge
  %hpd_gpio364.i.i = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 58
  %379 = ptrtoint ptr %hpd_gpio364.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %hpd_gpio364.i.i, align 8
  %tobool365.not.i.i = icmp eq ptr %380, null
  br i1 %tobool365.not.i.i, label %create_fail.i.i.dc_link_construct.exit_crit_edge, label %if.then366.i.i

create_fail.i.i.dc_link_construct.exit_crit_edge: ; preds = %create_fail.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_construct.exit

if.then366.i.i:                                   ; preds = %create_fail.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dal_gpio_destroy_irq(ptr noundef %hpd_gpio364.i.i) #11
  %381 = ptrtoint ptr %hpd_gpio364.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr null, ptr %hpd_gpio364.i.i, align 8
  br label %dc_link_construct.exit

dc_link_construct.exit:                           ; preds = %if.then366.i.i, %create_fail.i.i.dc_link_construct.exit_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dc_link_construct_legacy) #11
  call void @kfree(ptr noundef %call7.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disp_connect_caps_info.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %panel_cntl_init_data.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %enc_init_data.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ddc_service_init_data.i5.i) #11
  br label %construct_fail

if.end5:                                          ; preds = %dc_link_construct.exit.thread, %dc_link_construct_dpia.exit.i.thread
  %dpcd_source_device_specific_field_support = getelementptr inbounds %struct.dc_link, ptr %call7.i.i, i32 0, i32 23, i32 5
  %382 = ptrtoint ptr %dpcd_source_device_specific_field_support to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 1, ptr %dpcd_source_device_specific_field_support, align 2
  br label %cleanup

construct_fail:                                   ; preds = %dc_link_construct.exit, %dc_link_construct_dpia.exit.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %construct_fail, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %construct_fail ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @link_destroy(ptr nocapture noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %hpd_gpio.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpd_gpio.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dal_gpio_destroy_irq(ptr noundef %hpd_gpio.i) #11
  %4 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hpd_gpio.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %ddc.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddc.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dal_ddc_service_destroy(ptr noundef %ddc.i) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %panel_cntl.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 37
  %7 = ptrtoint ptr %panel_cntl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel_cntl.i, align 4
  %tobool7.not.i = icmp eq ptr %8, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then8.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void %12(ptr noundef %panel_cntl.i) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end11.i_crit_edge
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 38
  %13 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link_enc.i, align 8
  %tobool12.not.i = icmp eq ptr %14, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then13.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end11.i
  %link_id.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 39
  %15 = ptrtoint ptr %link_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %link_id.i, align 4
  %bf.lshr.mask.i = and i32 %bf.load.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1677721600, i32 %bf.lshr.mask.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.mask.i, 1677721600
  br i1 %cmp.not.i, label %if.then13.i.if.end17.i_crit_edge, label %if.then14.i

if.then13.i.if.end17.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %dc.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 35
  %16 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dc.i, align 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res_pool.i, align 8
  %eng_id.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 29
  %20 = ptrtoint ptr %eng_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eng_id.i, align 8
  %arrayidx.i = getelementptr %struct.resource_pool, ptr %19, i32 0, i32 22, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx.i, align 4
  %23 = load ptr, ptr %dc.i, align 4
  %res_pool16.i = getelementptr inbounds %struct.dc, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %res_pool16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %res_pool16.i, align 8
  %dig_link_enc_count.i = getelementptr inbounds %struct.resource_pool, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %dig_link_enc_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dig_link_enc_count.i, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %dig_link_enc_count.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.then13.i.if.end17.i_crit_edge
  %28 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link_enc.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %destroy20.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %destroy20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %destroy20.i, align 4
  tail call void %33(ptr noundef %link_enc.i) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end17.i, %if.end11.i.if.end22.i_crit_edge
  %local_sink.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %local_sink.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %local_sink.i, align 4
  %tobool23.not.i = icmp eq ptr %35, null
  br i1 %tobool23.not.i, label %if.end22.i.if.end26.i_crit_edge, label %if.then24.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dc_sink_release(ptr noundef nonnull %35) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end26.i_crit_edge
  %sink_count.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sink_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2750.not.i = icmp eq i32 %37, 0
  br i1 %cmp2750.not.i, label %if.end26.i.dc_link_destruct.exit_crit_edge, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  br label %for.body.i

if.end26.i.dc_link_destruct.exit_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_destruct.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end26.i.for.body.i_crit_edge
  %i.051.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end26.i.for.body.i_crit_edge ]
  %arrayidx28.i = getelementptr [4 x ptr], ptr %1, i32 0, i32 %i.051.i
  %38 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx28.i, align 4
  tail call void @dc_sink_release(ptr noundef %39) #11
  %inc.i = add nuw i32 %i.051.i, 1
  %40 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sink_count.i, align 8
  %cmp27.i = icmp ult i32 %inc.i, %41
  br i1 %cmp27.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dc_link_destruct.exit_crit_edge

for.body.i.dc_link_destruct.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_link_destruct.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

dc_link_destruct.exit:                            ; preds = %for.body.i.dc_link_destruct.exit_crit_edge, %if.end26.i.dc_link_destruct.exit_crit_edge
  %42 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link, align 4
  tail call void @kfree(ptr noundef %43) #11
  %44 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %link, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_blank_all_dp_displays(ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  %dpcd_power_state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_power_state) #11
  %0 = ptrtoint ptr %dpcd_power_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dpcd_power_state, align 1
  %link_count = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 9
  %1 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp41.not = icmp eq i8 %2, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dc, ptr %dc, i32 0, i32 10, i32 %i.042
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp2.not = icmp eq i32 %6, 32
  br i1 %cmp2.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %priv = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 32
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false8

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %local_sink, align 4
  %cmp11 = icmp eq ptr %10, null
  br i1 %cmp11, label %lor.lhs.false8.for.inc_crit_edge, label %if.end

lor.lhs.false8.for.inc_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false8
  %call = call zeroext i1 @dp_retrieve_lttpr_cap(ptr noundef %4) #11
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call17 = call i32 @core_link_read_dpcd(ptr noundef %12, i32 noundef 1536, ptr noundef nonnull %dpcd_power_state, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %dpcd_power_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dpcd_power_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp21 = icmp eq i8 %14, 1
  br i1 %cmp21, label %if.then23, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  call void @dc_link_blank_dp_stream(ptr noundef %16, i1 noundef zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false8.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %17 = ptrtoint ptr %link_count to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_count, align 8
  %conv = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_power_state) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_retrieve_lttpr_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_read_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_blank_dp_stream(ptr noundef %link, i1 noundef zeroext %hw_init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %4 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_signal, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %5, label %entry.if.end34_crit_edge [
    i32 128, label %entry.if.then_crit_edge
    i32 32, label %entry.if.then_crit_edge61
  ]

entry.if.then_crit_edge61:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge61
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 40
  %7 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %land.lhs.true, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %9 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_enc, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %get_dig_frontend = getelementptr inbounds %struct.link_encoder_funcs, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %get_dig_frontend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_dig_frontend, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true4

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true4:                                   ; preds = %land.lhs.true
  %is_dig_enabled = getelementptr inbounds %struct.link_encoder_funcs, ptr %12, i32 0, i32 17
  %15 = ptrtoint ptr %is_dig_enabled to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %is_dig_enabled, align 4
  %call = tail call zeroext i1 %16(ptr noundef %10) #11
  br i1 %call, label %if.then8, label %land.lhs.true4.if.end28_crit_edge

land.lhs.true4.if.end28_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then8:                                         ; preds = %land.lhs.true4
  %17 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_enc, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %get_dig_frontend11 = getelementptr inbounds %struct.link_encoder_funcs, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %get_dig_frontend11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_dig_frontend11, align 4
  %call13 = tail call i32 %22(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, -1
  br i1 %cmp14.not, label %if.then8.if.end28_crit_edge, label %for.cond.preheader

if.then8.if.end28_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.cond.preheader:                               ; preds = %if.then8
  %res_pool = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 12
  %23 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res_pool, align 8
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream_enc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1654.not = icmp eq i32 %26, 0
  br i1 %cmp1654.not, label %for.cond.preheader.if.end28_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end28_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %j.055, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.cond.if.end28_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.if.end28_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_pool, ptr %24, i32 0, i32 7, i32 %j.055
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %30)
  %cmp18 = icmp eq i32 %call13, %30
  br i1 %cmp18, label %if.then19, label %for.cond

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %dp_blank = getelementptr inbounds %struct.stream_encoder_funcs, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %dp_blank to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dp_blank, align 4
  tail call void %34(ptr noundef %link, ptr noundef %28) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %for.cond.if.end28_crit_edge, %for.cond.preheader.if.end28_crit_edge, %if.then8.if.end28_crit_edge, %land.lhs.true4.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.then.if.end28_crit_edge
  %wa_flags = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 54
  %35 = ptrtoint ptr %wa_flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %wa_flags, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool29.not = icmp eq i8 %36, 0
  %brmerge = or i1 %tobool29.not, %hw_init
  br i1 %brmerge, label %if.then32, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dp_receiver_power_ctrl(ptr noundef %link, i1 noundef zeroext false) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge, %entry.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_receiver_power_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_link_validate_mode_timing(ptr nocapture noundef readonly %stream, ptr noundef %link, ptr noundef %timing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link1, align 4
  %dongle_max_pix_clk = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %dongle_max_pix_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dongle_max_pix_clk, align 4
  %mul = mul i32 %3, 10
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp = icmp eq i32 %7, 512
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp5.not = icmp eq i32 %mul, 0
  br i1 %cmp5.not, label %if.end.if.end9_crit_edge, label %land.lhs.true6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 12
  %8 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pix_clk_100hz.i, align 4
  %pixel_encoding.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 17
  %10 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixel_encoding.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %11, label %land.lhs.true6.if.end5.i_crit_edge [
    i32 4, label %if.then.i
    i32 2, label %if.then3.i
  ]

land.lhs.true6.if.end5.i_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  %div29.i = lshr i32 %9, 1
  br label %if.end5.i

if.then3.i:                                       ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %9, 1
  %div4.i = udiv i32 %mul.i, 3
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i, %land.lhs.true6.if.end5.i_crit_edge
  %pxl_clk.0.i = phi i32 [ %div29.i, %if.then.i ], [ %div4.i, %if.then3.i ], [ %9, %land.lhs.true6.if.end5.i_crit_edge ]
  %display_color_depth.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 16
  %13 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %display_color_depth.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %14, label %if.end5.i.get_timing_pixel_clock_100hz.exit_crit_edge [
    i32 3, label %if.then7.i
    i32 4, label %if.then13.i
  ]

if.end5.i.get_timing_pixel_clock_100hz.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_timing_pixel_clock_100hz.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul8.i = mul i32 %pxl_clk.0.i, 10
  %div928.i = lshr i32 %mul8.i, 3
  br label %get_timing_pixel_clock_100hz.exit

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul14.i = mul i32 %pxl_clk.0.i, 12
  %div1527.i = lshr i32 %mul14.i, 3
  br label %get_timing_pixel_clock_100hz.exit

get_timing_pixel_clock_100hz.exit:                ; preds = %if.then13.i, %if.then7.i, %if.end5.i.get_timing_pixel_clock_100hz.exit_crit_edge
  %pxl_clk.1.i = phi i32 [ %div928.i, %if.then7.i ], [ %div1527.i, %if.then13.i ], [ %pxl_clk.0.i, %if.end5.i.get_timing_pixel_clock_100hz.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pxl_clk.1.i, i32 %mul)
  %cmp7 = icmp ugt i32 %pxl_clk.1.i, %mul
  br i1 %cmp7, label %get_timing_pixel_clock_100hz.exit.cleanup_crit_edge, label %get_timing_pixel_clock_100hz.exit.if.end9_crit_edge

get_timing_pixel_clock_100hz.exit.if.end9_crit_edge: ; preds = %get_timing_pixel_clock_100hz.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

get_timing_pixel_clock_100hz.exit.cleanup_crit_edge: ; preds = %get_timing_pixel_clock_100hz.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %get_timing_pixel_clock_100hz.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %dongle_type.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 6
  %16 = ptrtoint ptr %dongle_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dongle_type.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %17, label %if.end9.if.end12_crit_edge [
    i32 1, label %if.end9.sw.bb.i_crit_edge
    i32 2, label %if.end9.sw.bb.i_crit_edge31
    i32 4, label %if.end9.sw.bb.i_crit_edge32
    i32 3, label %lor.lhs.false.i
  ]

if.end9.sw.bb.i_crit_edge32:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end9.sw.bb.i_crit_edge31:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end9.sw.bb.i_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

sw.bb.i:                                          ; preds = %if.end9.sw.bb.i_crit_edge, %if.end9.sw.bb.i_crit_edge31, %if.end9.sw.bb.i_crit_edge32
  %pixel_encoding.i24 = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 17
  %19 = ptrtoint ptr %pixel_encoding.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixel_encoding.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp eq i32 %20, 1
  br i1 %cmp.i, label %sw.bb.i.if.end12_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i.if.end12_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

lor.lhs.false.i:                                  ; preds = %if.end9
  %extendedCapValid.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 9, i32 1
  %21 = ptrtoint ptr %extendedCapValid.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %extendedCapValid.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp4.i = icmp eq i8 %22, 0
  br i1 %cmp4.i, label %lor.lhs.false.i.if.end12_crit_edge, label %if.end.i

lor.lhs.false.i.if.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end.i:                                         ; preds = %lor.lhs.false.i
  %pixel_encoding7.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 17
  %23 = ptrtoint ptr %pixel_encoding7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixel_encoding7.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %24, label %if.end.i.cleanup_crit_edge [
    i32 1, label %if.end.i.sw.epilog18.i_crit_edge
    i32 3, label %if.end.i.sw.epilog18.i_crit_edge33
    i32 2, label %sw.bb9.i
    i32 4, label %sw.bb13.i
  ]

if.end.i.sw.epilog18.i_crit_edge33:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

if.end.i.sw.epilog18.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb9.i:                                         ; preds = %if.end.i
  %is_dp_hdmi_ycbcr422_pass_through.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 9, i32 3
  %26 = ptrtoint ptr %is_dp_hdmi_ycbcr422_pass_through.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_dp_hdmi_ycbcr422_pass_through.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not.i = icmp eq i8 %27, 0
  br i1 %tobool10.not.i, label %sw.bb9.i.cleanup_crit_edge, label %sw.bb9.i.sw.epilog18.i_crit_edge

sw.bb9.i.sw.epilog18.i_crit_edge:                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.end.i
  %is_dp_hdmi_ycbcr420_pass_through.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 9, i32 4
  %28 = ptrtoint ptr %is_dp_hdmi_ycbcr420_pass_through.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_dp_hdmi_ycbcr420_pass_through.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not.i = icmp eq i8 %29, 0
  br i1 %tobool14.not.i, label %sw.bb13.i.cleanup_crit_edge, label %sw.bb13.i.sw.epilog18.i_crit_edge

sw.bb13.i.sw.epilog18.i_crit_edge:                ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

sw.bb13.i.cleanup_crit_edge:                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog18.i:                                    ; preds = %sw.bb13.i.sw.epilog18.i_crit_edge, %sw.bb9.i.sw.epilog18.i_crit_edge, %if.end.i.sw.epilog18.i_crit_edge, %if.end.i.sw.epilog18.i_crit_edge33
  %display_color_depth.i25 = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 16
  %30 = ptrtoint ptr %display_color_depth.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %display_color_depth.i25, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %31, label %sw.epilog18.i.cleanup_crit_edge [
    i32 1, label %sw.epilog18.i.sw.epilog33.i_crit_edge
    i32 2, label %sw.epilog18.i.sw.epilog33.i_crit_edge34
    i32 3, label %sw.bb20.i
    i32 4, label %sw.bb25.i
  ]

sw.epilog18.i.sw.epilog33.i_crit_edge34:          ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog33.i

sw.epilog18.i.sw.epilog33.i_crit_edge:            ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog33.i

sw.epilog18.i.cleanup_crit_edge:                  ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb20.i:                                        ; preds = %sw.epilog18.i
  %dp_hdmi_max_bpc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 9, i32 7
  %33 = ptrtoint ptr %dp_hdmi_max_bpc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dp_hdmi_max_bpc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %34)
  %cmp21.i = icmp ult i32 %34, 10
  br i1 %cmp21.i, label %sw.bb20.i.cleanup_crit_edge, label %sw.bb20.i.sw.epilog33.i_crit_edge

sw.bb20.i.sw.epilog33.i_crit_edge:                ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog33.i

sw.bb20.i.cleanup_crit_edge:                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb25.i:                                        ; preds = %sw.epilog18.i
  %dp_hdmi_max_bpc26.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 9, i32 7
  %35 = ptrtoint ptr %dp_hdmi_max_bpc26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dp_hdmi_max_bpc26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %36)
  %cmp27.i = icmp ult i32 %36, 12
  br i1 %cmp27.i, label %sw.bb25.i.cleanup_crit_edge, label %sw.bb25.i.sw.epilog33.i_crit_edge

sw.bb25.i.sw.epilog33.i_crit_edge:                ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog33.i

sw.bb25.i.cleanup_crit_edge:                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog33.i:                                    ; preds = %sw.bb25.i.sw.epilog33.i_crit_edge, %sw.bb20.i.sw.epilog33.i_crit_edge, %sw.epilog18.i.sw.epilog33.i_crit_edge, %sw.epilog18.i.sw.epilog33.i_crit_edge34
  %pix_clk_100hz.i.i = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 12
  %37 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pix_clk_100hz.i.i, align 4
  %39 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %24, label %sw.epilog33.i.if.end5.i.i_crit_edge [
    i32 4, label %if.then.i.i
    i32 2, label %if.then3.i.i
  ]

sw.epilog33.i.if.end5.i.i_crit_edge:              ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #13
  %div29.i.i = lshr i32 %38, 1
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i = shl i32 %38, 1
  %div4.i.i = udiv i32 %mul.i.i, 3
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i, %sw.epilog33.i.if.end5.i.i_crit_edge
  %pxl_clk.0.i.i = phi i32 [ %div29.i.i, %if.then.i.i ], [ %div4.i.i, %if.then3.i.i ], [ %38, %sw.epilog33.i.if.end5.i.i_crit_edge ]
  %40 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %31, label %if.end5.i.i.dp_active_dongle_validate_timing.exit_crit_edge [
    i32 3, label %if.then7.i.i
    i32 4, label %if.then13.i.i
  ]

if.end5.i.i.dp_active_dongle_validate_timing.exit_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dp_active_dongle_validate_timing.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul8.i.i = mul i32 %pxl_clk.0.i.i, 10
  %div928.i.i = lshr i32 %mul8.i.i, 3
  br label %dp_active_dongle_validate_timing.exit

if.then13.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul14.i.i = mul i32 %pxl_clk.0.i.i, 12
  %div1527.i.i = lshr i32 %mul14.i.i, 3
  br label %dp_active_dongle_validate_timing.exit

dp_active_dongle_validate_timing.exit:            ; preds = %if.then13.i.i, %if.then7.i.i, %if.end5.i.i.dp_active_dongle_validate_timing.exit_crit_edge
  %pxl_clk.1.i.i = phi i32 [ %div928.i.i, %if.then7.i.i ], [ %div1527.i.i, %if.then13.i.i ], [ %pxl_clk.0.i.i, %if.end5.i.i.dp_active_dongle_validate_timing.exit_crit_edge ]
  %dp_hdmi_max_pixel_clk_in_khz.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 9, i32 8
  %41 = ptrtoint ptr %dp_hdmi_max_pixel_clk_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dp_hdmi_max_pixel_clk_in_khz.i, align 4
  %mul.i26 = mul i32 %42, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %pxl_clk.1.i.i, i32 %mul.i26)
  %cmp34.i.not = icmp ugt i32 %pxl_clk.1.i.i, %mul.i26
  br i1 %cmp34.i.not, label %dp_active_dongle_validate_timing.exit.cleanup_crit_edge, label %dp_active_dongle_validate_timing.exit.if.end12_crit_edge

dp_active_dongle_validate_timing.exit.if.end12_crit_edge: ; preds = %dp_active_dongle_validate_timing.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

dp_active_dongle_validate_timing.exit.cleanup_crit_edge: ; preds = %dp_active_dongle_validate_timing.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %dp_active_dongle_validate_timing.exit.if.end12_crit_edge, %lor.lhs.false.i.if.end12_crit_edge, %sw.bb.i.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %43 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %signal, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %44, label %if.end12.sw.epilog_crit_edge [
    i32 128, label %if.end12.sw.bb_crit_edge
    i32 32, label %if.end12.sw.bb_crit_edge35
  ]

if.end12.sw.bb_crit_edge35:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %if.end12.sw.bb_crit_edge35
  %call13 = tail call zeroext i1 @dp_validate_mode_timing(ptr noundef %link, ptr noundef %timing) #11
  br i1 %call13, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %dp_active_dongle_validate_timing.exit.cleanup_crit_edge, %sw.bb25.i.cleanup_crit_edge, %sw.bb20.i.cleanup_crit_edge, %sw.epilog18.i.cleanup_crit_edge, %sw.bb13.i.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %get_timing_pixel_clock_100hz.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 11, %get_timing_pixel_clock_100hz.exit.cleanup_crit_edge ], [ 11, %dp_active_dongle_validate_timing.exit.cleanup_crit_edge ], [ 10, %sw.bb.cleanup_crit_edge ], [ 11, %sw.bb.i.cleanup_crit_edge ], [ 11, %sw.bb9.i.cleanup_crit_edge ], [ 11, %sw.bb13.i.cleanup_crit_edge ], [ 11, %if.end.i.cleanup_crit_edge ], [ 11, %sw.bb20.i.cleanup_crit_edge ], [ 11, %sw.bb25.i.cleanup_crit_edge ], [ 11, %sw.epilog18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_validate_mode_timing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_link_get_backlight_level(ptr noundef readonly %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %link, null
  br i1 %tobool.not.i, label %entry.get_abm_from_stream_res.exit_crit_edge, label %lor.lhs.false.i

entry.get_abm_from_stream_res.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

lor.lhs.false.i:                                  ; preds = %entry
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.get_abm_from_stream_res.exit_crit_edge, label %if.end.i

lor.lhs.false.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %current_state.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state.i, align 4
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pipe_ctx.sroa.4.0.copyload.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %tobool6.not.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.i, null
  br i1 %tobool6.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4
  %link7.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.i, i32 0, i32 1
  %7 = ptrtoint ptr %link7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link7.i, align 4
  %cmp8.i = icmp eq ptr %8, %link
  br i1 %cmp8.i, label %land.lhs.true.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13.loopexit.split.loop.exit27.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.1.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pipe_ctx.sroa.4.0.copyload.1.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.1.i, null
  br i1 %tobool6.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1
  %link7.1.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.1.i, i32 0, i32 1
  %10 = ptrtoint ptr %link7.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link7.1.i, align 4
  %cmp8.1.i = icmp eq ptr %11, %link
  br i1 %cmp8.1.i, label %land.lhs.true.1.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

land.lhs.true.1.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13.loopexit.split.loop.exit27.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.2.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %pipe_ctx.sroa.4.0.copyload.2.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.2.i, align 4
  %tobool6.not.2.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.2.i, null
  br i1 %tobool6.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2
  %link7.2.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.2.i, i32 0, i32 1
  %13 = ptrtoint ptr %link7.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link7.2.i, align 4
  %cmp8.2.i = icmp eq ptr %14, %link
  br i1 %cmp8.2.i, label %land.lhs.true.2.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

land.lhs.true.2.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13.loopexit.split.loop.exit27.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.3.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %pipe_ctx.sroa.4.0.copyload.3.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.3.i, align 4
  %tobool6.not.3.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.3.i, null
  br i1 %tobool6.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3
  %link7.3.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.3.i, i32 0, i32 1
  %16 = ptrtoint ptr %link7.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link7.3.i, align 4
  %cmp8.3.i = icmp eq ptr %17, %link
  br i1 %cmp8.3.i, label %land.lhs.true.3.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

land.lhs.true.3.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13.loopexit.split.loop.exit27.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.4.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %pipe_ctx.sroa.4.0.copyload.4.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.4.i, align 4
  %tobool6.not.4.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.4.i, null
  br i1 %tobool6.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4
  %link7.4.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.4.i, i32 0, i32 1
  %19 = ptrtoint ptr %link7.4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link7.4.i, align 4
  %cmp8.4.i = icmp eq ptr %20, %link
  br i1 %cmp8.4.i, label %land.lhs.true.4.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

land.lhs.true.4.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13.loopexit.split.loop.exit27.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.5.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pipe_ctx.sroa.4.0.copyload.5.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.5.i, align 4
  %tobool6.not.5.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.5.i, null
  br i1 %tobool6.not.5.i, label %for.inc.4.i.get_abm_from_stream_res.exit_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5
  %link7.5.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.5.i, i32 0, i32 1
  %22 = ptrtoint ptr %link7.5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link7.5.i, align 4
  %cmp8.5.i = icmp eq ptr %23, %link
  br i1 %cmp8.5.i, label %land.lhs.true.5.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, label %land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge

land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

land.lhs.true.5.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13.loopexit.split.loop.exit27.i

cleanup13.loopexit.split.loop.exit27.i:           ; preds = %land.lhs.true.5.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, %land.lhs.true.4.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, %land.lhs.true.3.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, %land.lhs.true.2.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, %land.lhs.true.1.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge, %land.lhs.true.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %res_ctx.i, %land.lhs.true.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.cleanup13.loopexit.split.loop.exit27.i_crit_edge ]
  %pipe_ctx.sroa.517.0.arrayidx.sroa_idx.le.i = getelementptr inbounds i8, ptr %arrayidx.lcssa.i, i32 540
  %24 = ptrtoint ptr %pipe_ctx.sroa.517.0.arrayidx.sroa_idx.le.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %pipe_ctx.sroa.517.0.copyload.le.i = load ptr, ptr %pipe_ctx.sroa.517.0.arrayidx.sroa_idx.le.i, align 4
  br label %get_abm_from_stream_res.exit

get_abm_from_stream_res.exit:                     ; preds = %cleanup13.loopexit.split.loop.exit27.i, %land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge, %for.inc.4.i.get_abm_from_stream_res.exit_crit_edge, %lor.lhs.false.i.get_abm_from_stream_res.exit_crit_edge, %entry.get_abm_from_stream_res.exit_crit_edge
  %retval.0.i = phi ptr [ null, %lor.lhs.false.i.get_abm_from_stream_res.exit_crit_edge ], [ null, %entry.get_abm_from_stream_res.exit_crit_edge ], [ %pipe_ctx.sroa.517.0.copyload.le.i, %cleanup13.loopexit.split.loop.exit27.i ], [ null, %land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge ], [ null, %for.inc.4.i.get_abm_from_stream_res.exit_crit_edge ]
  %panel_cntl1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 37
  %25 = ptrtoint ptr %panel_cntl1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %panel_cntl1, align 4
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res_pool, align 8
  %dmcu3 = getelementptr inbounds %struct.resource_pool, ptr %32, i32 0, i32 38
  %33 = ptrtoint ptr %dmcu3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dmcu3, align 4
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %get_abm_from_stream_res.exit.if.else_crit_edge, label %if.then

get_abm_from_stream_res.exit.if.else_crit_edge:   ; preds = %get_abm_from_stream_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %get_abm_from_stream_res.exit
  %funcs = getelementptr inbounds %struct.dmcu, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %is_dmcu_initialized, align 4
  %call4 = tail call zeroext i1 %38(ptr noundef nonnull %34) #11
  br i1 %call4, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %26, align 4
  %get_current_backlight = getelementptr inbounds %struct.panel_cntl_funcs, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %get_current_backlight to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_current_backlight, align 4
  %tobool7.not = icmp eq ptr %42, null
  br i1 %tobool7.not, label %land.lhs.true.if.else_crit_edge, label %if.then8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 %42(ptr noundef %26) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge, %get_abm_from_stream_res.exit.if.else_crit_edge
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %if.else.cleanup_crit_edge, label %land.lhs.true12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true12:                                  ; preds = %if.else
  %funcs13 = getelementptr inbounds %struct.abm, ptr %retval.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %funcs13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %funcs13, align 4
  %get_current_backlight14 = getelementptr inbounds %struct.abm_funcs, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %get_current_backlight14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_current_backlight14, align 4
  %cmp15.not = icmp eq ptr %46, null
  br i1 %cmp15.not, label %land.lhs.true12.cleanup_crit_edge, label %if.then16

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 %46(ptr noundef nonnull %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %call19, %if.then16 ], [ %call11, %if.then8 ], [ -1, %land.lhs.true12.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_link_get_target_backlight_pwm(ptr noundef readonly %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %link, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %current_state.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_state.i, align 4
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pipe_ctx.sroa.4.0.copyload.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %tobool6.not.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.i, null
  br i1 %tobool6.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %5, i32 0, i32 4
  %link7.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.i, i32 0, i32 1
  %7 = ptrtoint ptr %link7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link7.i, align 4
  %cmp8.i = icmp eq ptr %8, %link
  br i1 %cmp8.i, label %land.lhs.true.i.get_abm_from_stream_res.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.1.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pipe_ctx.sroa.4.0.copyload.1.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.1.i, null
  br i1 %tobool6.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 1
  %link7.1.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.1.i, i32 0, i32 1
  %10 = ptrtoint ptr %link7.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link7.1.i, align 4
  %cmp8.1.i = icmp eq ptr %11, %link
  br i1 %cmp8.1.i, label %land.lhs.true.1.i.get_abm_from_stream_res.exit_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

land.lhs.true.1.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.2.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %pipe_ctx.sroa.4.0.copyload.2.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.2.i, align 4
  %tobool6.not.2.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.2.i, null
  br i1 %tobool6.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 2
  %link7.2.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.2.i, i32 0, i32 1
  %13 = ptrtoint ptr %link7.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link7.2.i, align 4
  %cmp8.2.i = icmp eq ptr %14, %link
  br i1 %cmp8.2.i, label %land.lhs.true.2.i.get_abm_from_stream_res.exit_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

land.lhs.true.2.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.3.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %pipe_ctx.sroa.4.0.copyload.3.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.3.i, align 4
  %tobool6.not.3.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.3.i, null
  br i1 %tobool6.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 3
  %link7.3.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.3.i, i32 0, i32 1
  %16 = ptrtoint ptr %link7.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link7.3.i, align 4
  %cmp8.3.i = icmp eq ptr %17, %link
  br i1 %cmp8.3.i, label %land.lhs.true.3.i.get_abm_from_stream_res.exit_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

land.lhs.true.3.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.4.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %pipe_ctx.sroa.4.0.copyload.4.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.4.i, align 4
  %tobool6.not.4.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.4.i, null
  br i1 %tobool6.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 4
  %link7.4.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.4.i, i32 0, i32 1
  %19 = ptrtoint ptr %link7.4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link7.4.i, align 4
  %cmp8.4.i = icmp eq ptr %20, %link
  br i1 %cmp8.4.i, label %land.lhs.true.4.i.get_abm_from_stream_res.exit_crit_edge, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

land.lhs.true.4.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.5.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pipe_ctx.sroa.4.0.copyload.5.i = load ptr, ptr %pipe_ctx.sroa.4.0.arrayidx.sroa_idx.5.i, align 4
  %tobool6.not.5.i = icmp eq ptr %pipe_ctx.sroa.4.0.copyload.5.i, null
  br i1 %tobool6.not.5.i, label %for.inc.4.i.cleanup_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.dc_state, ptr %5, i32 0, i32 4, i32 0, i32 5
  %link7.5.i = getelementptr inbounds %struct.dc_stream_state, ptr %pipe_ctx.sroa.4.0.copyload.5.i, i32 0, i32 1
  %22 = ptrtoint ptr %link7.5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link7.5.i, align 4
  %cmp8.5.i = icmp eq ptr %23, %link
  br i1 %cmp8.5.i, label %land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge, label %land.lhs.true.5.i.cleanup_crit_edge

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_abm_from_stream_res.exit

get_abm_from_stream_res.exit:                     ; preds = %land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge, %land.lhs.true.4.i.get_abm_from_stream_res.exit_crit_edge, %land.lhs.true.3.i.get_abm_from_stream_res.exit_crit_edge, %land.lhs.true.2.i.get_abm_from_stream_res.exit_crit_edge, %land.lhs.true.1.i.get_abm_from_stream_res.exit_crit_edge, %land.lhs.true.i.get_abm_from_stream_res.exit_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %res_ctx.i, %land.lhs.true.i.get_abm_from_stream_res.exit_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.get_abm_from_stream_res.exit_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.get_abm_from_stream_res.exit_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.get_abm_from_stream_res.exit_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.get_abm_from_stream_res.exit_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.get_abm_from_stream_res.exit_crit_edge ]
  %pipe_ctx.sroa.517.0.arrayidx.sroa_idx.le.i = getelementptr inbounds i8, ptr %arrayidx.lcssa.i, i32 540
  %24 = ptrtoint ptr %pipe_ctx.sroa.517.0.arrayidx.sroa_idx.le.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %pipe_ctx.sroa.517.0.copyload.le.i = load ptr, ptr %pipe_ctx.sroa.517.0.arrayidx.sroa_idx.le.i, align 4
  %cmp = icmp eq ptr %pipe_ctx.sroa.517.0.copyload.le.i, null
  br i1 %cmp, label %get_abm_from_stream_res.exit.cleanup_crit_edge, label %lor.lhs.false

get_abm_from_stream_res.exit.cleanup_crit_edge:   ; preds = %get_abm_from_stream_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_abm_from_stream_res.exit
  %funcs = getelementptr inbounds %struct.abm, ptr %pipe_ctx.sroa.517.0.copyload.le.i, i32 0, i32 1
  %25 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs, align 4
  %get_target_backlight = getelementptr inbounds %struct.abm_funcs, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %get_target_backlight to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_target_backlight, align 4
  %cmp1 = icmp eq ptr %28, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 %28(ptr noundef nonnull %pipe_ctx.sroa.517.0.copyload.le.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %get_abm_from_stream_res.exit.cleanup_crit_edge, %land.lhs.true.5.i.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %get_abm_from_stream_res.exit.cleanup_crit_edge ], [ -1, %lor.lhs.false.i.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.5.i.cleanup_crit_edge ], [ -1, %for.inc.4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_set_backlight_level(ptr noundef readonly %link, i32 noundef %backlight_pwm_u16_16, i32 noundef %frame_ramp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %backlight_pwm_u16_16, i32 noundef %backlight_pwm_u16_16) #11
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %4 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_signal, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %5, label %entry.cleanup8_crit_edge [
    i32 128, label %entry.if.then_crit_edge
    i32 8, label %entry.if.then_crit_edge17
  ]

entry.if.then_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup8

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge17
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %current_state.i = getelementptr inbounds %struct.dc, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_state.i, align 4
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %12, i32 0, i32 4
  %stream.i = getelementptr %struct.dc_state, ptr %12, i32 0, i32 4, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.for.inc.i_crit_edge, label %if.then.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then
  %link8.i = getelementptr inbounds %struct.dc_stream_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %link8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link8.i, align 4
  %cmp9.i = icmp eq ptr %16, %link
  br i1 %cmp9.i, label %if.then.i.get_pipe_from_link.exit_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i.get_pipe_from_link.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pipe_from_link.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %if.then.for.inc.i_crit_edge
  %stream.1.i = getelementptr %struct.dc_state, ptr %12, i32 0, i32 4, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %stream.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %18, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %link8.1.i = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %link8.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link8.1.i, align 4
  %cmp9.1.i = icmp eq ptr %20, %link
  br i1 %cmp9.1.i, label %if.then.1.i.get_pipe_from_link.exit_crit_edge, label %if.then.1.i.for.inc.1.i_crit_edge

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then.1.i.get_pipe_from_link.exit_crit_edge:    ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pipe_from_link.exit

for.inc.1.i:                                      ; preds = %if.then.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %stream.2.i = getelementptr %struct.dc_state, ptr %12, i32 0, i32 4, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %stream.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %22, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %link8.2.i = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %link8.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link8.2.i, align 4
  %cmp9.2.i = icmp eq ptr %24, %link
  br i1 %cmp9.2.i, label %if.then.2.i.get_pipe_from_link.exit_crit_edge, label %if.then.2.i.for.inc.2.i_crit_edge

if.then.2.i.for.inc.2.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then.2.i.get_pipe_from_link.exit_crit_edge:    ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pipe_from_link.exit

for.inc.2.i:                                      ; preds = %if.then.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %stream.3.i = getelementptr %struct.dc_state, ptr %12, i32 0, i32 4, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %stream.3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %26, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %link8.3.i = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %link8.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link8.3.i, align 4
  %cmp9.3.i = icmp eq ptr %28, %link
  br i1 %cmp9.3.i, label %if.then.3.i.get_pipe_from_link.exit_crit_edge, label %if.then.3.i.for.inc.3.i_crit_edge

if.then.3.i.for.inc.3.i_crit_edge:                ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.then.3.i.get_pipe_from_link.exit_crit_edge:    ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pipe_from_link.exit

for.inc.3.i:                                      ; preds = %if.then.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %stream.4.i = getelementptr %struct.dc_state, ptr %12, i32 0, i32 4, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %stream.4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %30, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %link8.4.i = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %link8.4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link8.4.i, align 4
  %cmp9.4.i = icmp eq ptr %32, %link
  br i1 %cmp9.4.i, label %if.then.4.i.get_pipe_from_link.exit_crit_edge, label %if.then.4.i.for.inc.4.i_crit_edge

if.then.4.i.for.inc.4.i_crit_edge:                ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.then.4.i.get_pipe_from_link.exit_crit_edge:    ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pipe_from_link.exit

for.inc.4.i:                                      ; preds = %if.then.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %stream.5.i = getelementptr %struct.dc_state, ptr %12, i32 0, i32 4, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %stream.5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %34, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.cleanup8_crit_edge, label %if.then.5.i

for.inc.4.i.cleanup8_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup8

if.then.5.i:                                      ; preds = %for.inc.4.i
  %link8.5.i = getelementptr inbounds %struct.dc_stream_state, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %link8.5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link8.5.i, align 4
  %cmp9.5.i = icmp eq ptr %36, %link
  br i1 %cmp9.5.i, label %if.then.5.i.get_pipe_from_link.exit_crit_edge, label %if.then.5.i.cleanup8_crit_edge

if.then.5.i.cleanup8_crit_edge:                   ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup8

if.then.5.i.get_pipe_from_link.exit_crit_edge:    ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pipe_from_link.exit

get_pipe_from_link.exit:                          ; preds = %if.then.5.i.get_pipe_from_link.exit_crit_edge, %if.then.4.i.get_pipe_from_link.exit_crit_edge, %if.then.3.i.get_pipe_from_link.exit_crit_edge, %if.then.2.i.get_pipe_from_link.exit_crit_edge, %if.then.1.i.get_pipe_from_link.exit_crit_edge, %if.then.i.get_pipe_from_link.exit_crit_edge
  %i.025.lcssa.i = phi i32 [ 0, %if.then.i.get_pipe_from_link.exit_crit_edge ], [ 1, %if.then.1.i.get_pipe_from_link.exit_crit_edge ], [ 2, %if.then.2.i.get_pipe_from_link.exit_crit_edge ], [ 3, %if.then.3.i.get_pipe_from_link.exit_crit_edge ], [ 4, %if.then.4.i.get_pipe_from_link.exit_crit_edge ], [ 5, %if.then.5.i.get_pipe_from_link.exit_crit_edge ]
  %arrayidx.le.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx.i, i32 0, i32 %i.025.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %get_pipe_from_link.exit.cleanup8_crit_edge, label %if.then3

get_pipe_from_link.exit.cleanup8_crit_edge:       ; preds = %get_pipe_from_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup8

if.then3:                                         ; preds = %get_pipe_from_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.le.i, align 8
  %cmp = icmp eq ptr %38, null
  %spec.select = select i1 %cmp, i32 0, i32 %frame_ramp
  %set_backlight_level = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 17, i32 69
  %39 = ptrtoint ptr %set_backlight_level to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_backlight_level, align 4
  %call6 = tail call zeroext i1 %40(ptr noundef nonnull %arrayidx.le.i, i32 noundef %backlight_pwm_u16_16, i32 noundef %spec.select) #11
  br label %cleanup8

cleanup8:                                         ; preds = %if.then3, %get_pipe_from_link.exit.cleanup8_crit_edge, %if.then.5.i.cleanup8_crit_edge, %for.inc.4.i.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.1 = phi i1 [ true, %if.then3 ], [ true, %entry.cleanup8_crit_edge ], [ false, %get_pipe_from_link.exit.cleanup8_crit_edge ], [ false, %if.then.5.i.cleanup8_crit_edge ], [ false, %for.inc.4.i.cleanup8_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_set_psr_allow_active(ptr nocapture noundef %link, ptr noundef readonly %allow_active, i1 noundef zeroext %wait, i1 noundef zeroext %force_static, ptr noundef readonly %power_opts) local_unnamed_addr #0 align 64 {
entry:
  %edp_links.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %dmcu3 = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %dmcu3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmcu3, align 4
  %psr5 = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 39
  %8 = ptrtoint ptr %psr5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psr5, align 4
  %cmp = icmp eq ptr %9, null
  %brmerge.demorgan = and i1 %cmp, %force_static
  br i1 %brmerge.demorgan, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links.i) #11
  %10 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links.i, align 4, !annotation !188
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %11 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 128
  br i1 %cmp.not.i, label %if.end.i, label %dc_get_edp_link_panel_inst.exit.thread

dc_get_edp_link_panel_inst.exit.thread:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %link_count.i.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %link_count.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp26.not.i.i = icmp eq i8 %14, 0
  br i1 %cmp26.not.i.i, label %if.end.i.if.else.i_crit_edge, label %for.body.i.preheader.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %conv.i.i = zext i8 %14 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %edp_num.0.i = phi i32 [ %edp_num.1.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %i.027.i.i = phi i32 [ %inc15.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.dc, ptr %3, i32 0, i32 10, i32 %i.027.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connector_signal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %18)
  %cmp4.i.i = icmp eq i32 %18, 128
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %arrayidx9.i.i = getelementptr ptr, ptr %edp_links.i, i32 %edp_num.0.i
  %19 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %arrayidx9.i.i, align 4
  %inc.i.i = add i32 %edp_num.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp10.i.i = icmp eq i32 %inc.i.i, 2
  br i1 %cmp10.i.i, label %if.then6.i.i.land.lhs.true.i_crit_edge, label %if.then6.i.i.for.inc.i.i_crit_edge

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.inc.i.i:                                      ; preds = %if.then6.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %edp_num.1.i = phi i32 [ %edp_num.0.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then6.i.i.for.inc.i.i_crit_edge ], [ %edp_num.0.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %inc15.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i.i, %conv.i.i
  br i1 %exitcond.not.i, label %get_edp_links.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

get_edp_links.exit.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %edp_num.1.i)
  %cmp1.i = icmp sgt i32 %edp_num.1.i, 1
  br i1 %cmp1.i, label %get_edp_links.exit.i.land.lhs.true.i_crit_edge, label %get_edp_links.exit.i.if.else.i_crit_edge

get_edp_links.exit.i.if.else.i_crit_edge:         ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

get_edp_links.exit.i.land.lhs.true.i_crit_edge:   ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %get_edp_links.exit.i.land.lhs.true.i_crit_edge, %if.then6.i.i.land.lhs.true.i_crit_edge
  %link_index.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %20 = ptrtoint ptr %link_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_index.i, align 8
  %22 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edp_links.i, align 4
  %link_index2.i = getelementptr inbounds %struct.dc_link, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %link_index2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_index2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp3.i = icmp ugt i32 %21, %25
  br i1 %cmp3.i, label %land.lhs.true.i.if.end7_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %get_edp_links.exit.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.else.i, %land.lhs.true.i.if.end7_crit_edge
  %panel_inst.0 = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.if.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  %tobool8.not = icmp eq ptr %power_opts, null
  br i1 %tobool8.not, label %if.end7.if.end26_crit_edge, label %land.lhs.true9

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true9:                                   ; preds = %if.end7
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %psr_power_opt = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50, i32 5
  %26 = ptrtoint ptr %psr_power_opt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %psr_power_opt, align 4
  %28 = ptrtoint ptr %power_opts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %power_opts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp10.not = icmp eq i32 %27, %29
  br i1 %cmp10.not, label %land.lhs.true9.if.end26_crit_edge, label %if.then11

land.lhs.true9.if.end26_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then11:                                        ; preds = %land.lhs.true9
  %30 = ptrtoint ptr %psr_power_opt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %psr_power_opt, align 4
  br i1 %cmp, label %if.then11.if.end26_crit_edge, label %land.lhs.true15

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true15:                                  ; preds = %if.then11
  %31 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %psr_settings, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool17.not = icmp eq i8 %32, 0
  br i1 %tobool17.not, label %land.lhs.true15.if.end26_crit_edge, label %land.lhs.true18

land.lhs.true15.if.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %funcs = getelementptr inbounds %struct.dmub_psr, ptr %9, i32 0, i32 1
  %33 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs, align 4
  %psr_set_power_opt = getelementptr inbounds %struct.dmub_psr_funcs, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %psr_set_power_opt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %psr_set_power_opt, align 4
  %tobool19.not = icmp eq ptr %36, null
  br i1 %tobool19.not, label %land.lhs.true18.if.end26_crit_edge, label %if.then20

land.lhs.true18.if.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %36(ptr noundef nonnull %9, i32 noundef %29, i8 noundef zeroext %panel_inst.0) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %land.lhs.true18.if.end26_crit_edge, %land.lhs.true15.if.end26_crit_edge, %if.then11.if.end26_crit_edge, %land.lhs.true9.if.end26_crit_edge, %if.end7.if.end26_crit_edge
  %tobool27.not = icmp eq ptr %allow_active, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %land.lhs.true28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end26
  %psr_settings29 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %psr_allow_active = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50, i32 1
  %37 = ptrtoint ptr %psr_allow_active to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %psr_allow_active, align 1, !range !190
  %39 = ptrtoint ptr %allow_active to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %allow_active, align 1, !range !190
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp34.not = icmp eq i8 %38, %40
  br i1 %cmp34.not, label %land.lhs.true28.cleanup_crit_edge, label %if.then36

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true28
  %41 = ptrtoint ptr %psr_allow_active to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %psr_allow_active, align 1
  br i1 %cmp, label %if.then36.if.else_crit_edge, label %land.lhs.true43

if.then36.if.else_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true43:                                  ; preds = %if.then36
  %42 = ptrtoint ptr %psr_settings29 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %psr_settings29, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool46.not = icmp eq i8 %43, 0
  br i1 %tobool46.not, label %land.lhs.true43.if.else_crit_edge, label %if.then48

land.lhs.true43.if.else_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then48:                                        ; preds = %land.lhs.true43
  br i1 %force_static, label %land.lhs.true51, label %if.then48.if.end58_crit_edge

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true51:                                  ; preds = %if.then48
  %funcs52 = getelementptr inbounds %struct.dmub_psr, ptr %9, i32 0, i32 1
  %44 = ptrtoint ptr %funcs52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs52, align 4
  %psr_force_static = getelementptr inbounds %struct.dmub_psr_funcs, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %psr_force_static to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %psr_force_static, align 4
  %tobool53.not = icmp eq ptr %47, null
  br i1 %tobool53.not, label %land.lhs.true51.if.end58_crit_edge, label %if.then54

land.lhs.true51.if.end58_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %47(ptr noundef nonnull %9, i8 noundef zeroext %panel_inst.0) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %land.lhs.true51.if.end58_crit_edge, %if.then48.if.end58_crit_edge
  %funcs59 = getelementptr inbounds %struct.dmub_psr, ptr %9, i32 0, i32 1
  %48 = ptrtoint ptr %funcs59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs59, align 4
  %psr_enable = getelementptr inbounds %struct.dmub_psr_funcs, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %psr_enable to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %psr_enable, align 4
  %52 = ptrtoint ptr %psr_allow_active to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %psr_allow_active, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool62 = icmp ne i8 %53, 0
  tail call void %51(ptr noundef nonnull %9, i1 noundef zeroext %tobool62, i1 noundef zeroext %wait, i8 noundef zeroext %panel_inst.0) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true43.if.else_crit_edge, %if.then36.if.else_crit_edge
  %cmp65.not = icmp eq ptr %7, null
  br i1 %cmp65.not, label %if.else.cleanup_crit_edge, label %land.lhs.true67

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true67:                                  ; preds = %if.else
  %funcs68 = getelementptr inbounds %struct.dmcu, ptr %7, i32 0, i32 1
  %54 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %funcs68, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %is_dmcu_initialized, align 4
  %call69 = tail call zeroext i1 %57(ptr noundef nonnull %7) #11
  br i1 %call69, label %land.lhs.true71, label %land.lhs.true67.cleanup_crit_edge

land.lhs.true67.cleanup_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %58 = ptrtoint ptr %psr_settings29 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %psr_settings29, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool74.not = icmp eq i8 %59, 0
  br i1 %tobool74.not, label %land.lhs.true71.cleanup_crit_edge, label %if.then76

land.lhs.true71.cleanup_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then76:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %funcs68, align 4
  %set_psr_enable = getelementptr inbounds %struct.dmcu_funcs, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %set_psr_enable to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_psr_enable, align 4
  %64 = ptrtoint ptr %psr_allow_active to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %psr_allow_active, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool80 = icmp ne i8 %65, 0
  tail call void %63(ptr noundef nonnull %7, i1 noundef zeroext %tobool80, i1 noundef zeroext %wait) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %land.lhs.true71.cleanup_crit_edge, %land.lhs.true67.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end58, %land.lhs.true28.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %dc_get_edp_link_panel_inst.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true71.cleanup_crit_edge ], [ false, %land.lhs.true67.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ true, %if.end58 ], [ true, %if.then76 ], [ true, %land.lhs.true28.cleanup_crit_edge ], [ true, %if.end26.cleanup_crit_edge ], [ false, %dc_get_edp_link_panel_inst.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_get_psr_state(ptr nocapture noundef readonly %link, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %edp_links.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %psr4 = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 39
  %8 = ptrtoint ptr %psr4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psr4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links.i) #11
  %10 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links.i, align 4, !annotation !188
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %11 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 128
  br i1 %cmp.not.i, label %if.end.i, label %dc_get_edp_link_panel_inst.exit.thread

dc_get_edp_link_panel_inst.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %link_count.i.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %link_count.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp26.not.i.i = icmp eq i8 %14, 0
  br i1 %cmp26.not.i.i, label %if.end.i.if.else.i_crit_edge, label %for.body.i.preheader.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %conv.i.i = zext i8 %14 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %edp_num.0.i = phi i32 [ %edp_num.1.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %i.027.i.i = phi i32 [ %inc15.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.dc, ptr %3, i32 0, i32 10, i32 %i.027.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connector_signal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %18)
  %cmp4.i.i = icmp eq i32 %18, 128
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %arrayidx9.i.i = getelementptr ptr, ptr %edp_links.i, i32 %edp_num.0.i
  %19 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %arrayidx9.i.i, align 4
  %inc.i.i = add i32 %edp_num.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp10.i.i = icmp eq i32 %inc.i.i, 2
  br i1 %cmp10.i.i, label %if.then6.i.i.land.lhs.true.i_crit_edge, label %if.then6.i.i.for.inc.i.i_crit_edge

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.inc.i.i:                                      ; preds = %if.then6.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %edp_num.1.i = phi i32 [ %edp_num.0.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then6.i.i.for.inc.i.i_crit_edge ], [ %edp_num.0.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %inc15.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i.i, %conv.i.i
  br i1 %exitcond.not.i, label %get_edp_links.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

get_edp_links.exit.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %edp_num.1.i)
  %cmp1.i = icmp sgt i32 %edp_num.1.i, 1
  br i1 %cmp1.i, label %get_edp_links.exit.i.land.lhs.true.i_crit_edge, label %get_edp_links.exit.i.if.else.i_crit_edge

get_edp_links.exit.i.if.else.i_crit_edge:         ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

get_edp_links.exit.i.land.lhs.true.i_crit_edge:   ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %get_edp_links.exit.i.land.lhs.true.i_crit_edge, %if.then6.i.i.land.lhs.true.i_crit_edge
  %link_index.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %20 = ptrtoint ptr %link_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_index.i, align 8
  %22 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edp_links.i, align 4
  %link_index2.i = getelementptr inbounds %struct.dc_link, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %link_index2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_index2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp3.i = icmp ugt i32 %21, %25
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %get_edp_links.exit.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else.i, %land.lhs.true.i.if.end_crit_edge
  %panel_inst.0 = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %26 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %psr_settings, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %funcs = getelementptr inbounds %struct.dmub_psr, ptr %9, i32 0, i32 1
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs, align 4
  %psr_get_state = getelementptr inbounds %struct.dmub_psr_funcs, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %psr_get_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %psr_get_state, align 4
  tail call void %31(ptr noundef nonnull %9, ptr noundef %state, i8 noundef zeroext %panel_inst.0) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %cmp6.not = icmp eq ptr %7, null
  br i1 %cmp6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true8:                                   ; preds = %if.else
  %psr_settings9 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %32 = ptrtoint ptr %psr_settings9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %psr_settings9, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool11.not = icmp eq i8 %33, 0
  br i1 %tobool11.not, label %land.lhs.true8.cleanup_crit_edge, label %if.then13

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  %funcs14 = getelementptr inbounds %struct.dmcu, ptr %7, i32 0, i32 1
  %34 = ptrtoint ptr %funcs14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs14, align 4
  %get_psr_state = getelementptr inbounds %struct.dmcu_funcs, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %get_psr_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_psr_state, align 4
  tail call void %37(ptr noundef nonnull %7, ptr noundef %state) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true8.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5, %dc_get_edp_link_panel_inst.exit.thread
  ret i1 %cmp.not.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_setup_psr(ptr noundef %link, ptr noundef readonly %stream, ptr nocapture noundef readonly %psr_config, ptr noundef %psr_context) local_unnamed_addr #0 align 64 {
entry:
  %edp_links.i = alloca [2 x ptr], align 4
  %psr_configuration = alloca %union.dpcd_psr_configuration, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %psr_configuration) #11
  %controllerId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 3
  %0 = ptrtoint ptr %controllerId to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %controllerId, align 4
  %tobool.not = icmp eq ptr %link, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res_pool, align 8
  %dmcu2 = getelementptr inbounds %struct.resource_pool, ptr %6, i32 0, i32 38
  %7 = ptrtoint ptr %dmcu2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmcu2, align 4
  %psr4 = getelementptr inbounds %struct.resource_pool, ptr %6, i32 0, i32 39
  %9 = ptrtoint ptr %psr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psr4, align 4
  %tobool5.not = icmp eq ptr %8, null
  %tobool6.not = icmp eq ptr %10, null
  %or.cond = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links.i) #11
  %11 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links.i, align 4, !annotation !188
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %12 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 128
  br i1 %cmp.not.i, label %if.end.i, label %dc_get_edp_link_panel_inst.exit.thread

dc_get_edp_link_panel_inst.exit.thread:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %link_count.i.i = getelementptr inbounds %struct.dc, ptr %4, i32 0, i32 9
  %14 = ptrtoint ptr %link_count.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp26.not.i.i = icmp eq i8 %15, 0
  br i1 %cmp26.not.i.i, label %if.end.i.if.else.i_crit_edge, label %for.body.i.preheader.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %conv.i.i = zext i8 %15 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %edp_num.0.i = phi i32 [ %edp_num.1.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %i.027.i.i = phi i32 [ %inc15.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.dc, ptr %4, i32 0, i32 10, i32 %i.027.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %connector_signal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %19)
  %cmp4.i.i = icmp eq i32 %19, 128
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %arrayidx9.i.i = getelementptr ptr, ptr %edp_links.i, i32 %edp_num.0.i
  %20 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %arrayidx9.i.i, align 4
  %inc.i.i = add i32 %edp_num.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp10.i.i = icmp eq i32 %inc.i.i, 2
  br i1 %cmp10.i.i, label %if.then6.i.i.land.lhs.true.i_crit_edge, label %if.then6.i.i.for.inc.i.i_crit_edge

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.inc.i.i:                                      ; preds = %if.then6.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %edp_num.1.i = phi i32 [ %edp_num.0.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then6.i.i.for.inc.i.i_crit_edge ], [ %edp_num.0.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %inc15.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i.i, %conv.i.i
  br i1 %exitcond.not.i, label %get_edp_links.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

get_edp_links.exit.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %edp_num.1.i)
  %cmp1.i = icmp sgt i32 %edp_num.1.i, 1
  br i1 %cmp1.i, label %get_edp_links.exit.i.land.lhs.true.i_crit_edge, label %get_edp_links.exit.i.if.else.i_crit_edge

get_edp_links.exit.i.if.else.i_crit_edge:         ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

get_edp_links.exit.i.land.lhs.true.i_crit_edge:   ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %get_edp_links.exit.i.land.lhs.true.i_crit_edge, %if.then6.i.i.land.lhs.true.i_crit_edge
  %link_index.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %21 = ptrtoint ptr %link_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_index.i, align 8
  %23 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %edp_links.i, align 4
  %link_index2.i = getelementptr inbounds %struct.dc_link, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %link_index2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_index2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp3.i = icmp ugt i32 %22, %26
  br i1 %cmp3.i, label %land.lhs.true.i.if.end10_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %get_edp_links.exit.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end10_crit_edge
  %panel_inst.0 = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  %psr_frame_capture_indication_req = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 3
  %27 = ptrtoint ptr %psr_frame_capture_indication_req to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %psr_frame_capture_indication_req, align 1, !range !190
  %bf.shl = shl nuw nsw i8 %28, 4
  %bf.set17 = or i8 %bf.shl, -96
  %29 = ptrtoint ptr %psr_configuration to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.set17, ptr %psr_configuration, align 1
  %30 = ptrtoint ptr %psr_config to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %psr_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp = icmp eq i8 %31, 2
  br i1 %cmp, label %if.then20, label %if.end10.if.end27_crit_edge

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set26 = or i8 %bf.shl, -92
  %32 = ptrtoint ptr %psr_configuration to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.set26, ptr %psr_configuration, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end10.if.end27_crit_edge
  %call29 = call zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef %2, ptr noundef nonnull %link, i32 noundef 368, ptr noundef nonnull %psr_configuration, i32 noundef 1) #11
  %ddc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %33 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddc, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %ddc_channel = getelementptr inbounds %struct.ddc, ptr %36, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %ddc_channel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ddc_channel, align 4
  %39 = ptrtoint ptr %psr_context to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %psr_context, align 4
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %40 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link_enc, align 8
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %transmitter, align 4
  %transmitterId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 1
  %44 = ptrtoint ptr %transmitterId to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %transmitterId, align 4
  %45 = load ptr, ptr %link_enc, align 8
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %preferred_engine, align 4
  %engineId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 2
  %48 = ptrtoint ptr %engineId to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %engineId, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %4, i32 0, i32 11
  %49 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %50, i32 0, i32 4
  %stream33 = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %stream33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stream33, align 4
  %cmp34 = icmp eq ptr %52, %stream
  br i1 %cmp34, label %if.end27.if.then36_crit_edge, label %for.inc

if.end27.if.then36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %for.inc.4.if.then36_crit_edge, %for.inc.3.if.then36_crit_edge, %for.inc.2.if.then36_crit_edge, %for.inc.1.if.then36_crit_edge, %for.inc.if.then36_crit_edge, %if.end27.if.then36_crit_edge
  %i.0220.lcssa = phi i32 [ 0, %if.end27.if.then36_crit_edge ], [ 1, %for.inc.if.then36_crit_edge ], [ 2, %for.inc.1.if.then36_crit_edge ], [ 3, %for.inc.2.if.then36_crit_edge ], [ 4, %for.inc.3.if.then36_crit_edge ], [ 5, %for.inc.4.if.then36_crit_edge ]
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0220.lcssa, i32 3, i32 2
  %53 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %inst, align 4
  %add = add i32 %56, 1
  %57 = ptrtoint ptr %controllerId to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %controllerId, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end27
  %stream33.1 = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %stream33.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stream33.1, align 4
  %cmp34.1 = icmp eq ptr %59, %stream
  br i1 %cmp34.1, label %for.inc.if.then36_crit_edge, label %for.inc.1

for.inc.if.then36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

for.inc.1:                                        ; preds = %for.inc
  %stream33.2 = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %stream33.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stream33.2, align 4
  %cmp34.2 = icmp eq ptr %61, %stream
  br i1 %cmp34.2, label %for.inc.1.if.then36_crit_edge, label %for.inc.2

for.inc.1.if.then36_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

for.inc.2:                                        ; preds = %for.inc.1
  %stream33.3 = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %stream33.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stream33.3, align 4
  %cmp34.3 = icmp eq ptr %63, %stream
  br i1 %cmp34.3, label %for.inc.2.if.then36_crit_edge, label %for.inc.3

for.inc.2.if.then36_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

for.inc.3:                                        ; preds = %for.inc.2
  %stream33.4 = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %stream33.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stream33.4, align 4
  %cmp34.4 = icmp eq ptr %65, %stream
  br i1 %cmp34.4, label %for.inc.3.if.then36_crit_edge, label %for.inc.4

for.inc.3.if.then36_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

for.inc.4:                                        ; preds = %for.inc.3
  %stream33.5 = getelementptr %struct.dc_state, ptr %50, i32 0, i32 4, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %stream33.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %stream33.5, align 4
  %cmp34.5 = icmp eq ptr %67, %stream
  br i1 %cmp34.5, label %for.inc.4.if.then36_crit_edge, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.4.if.then36_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

for.end:                                          ; preds = %for.inc.4.for.end_crit_edge, %if.then36
  %phyType = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 4
  %68 = ptrtoint ptr %phyType to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3, ptr %phyType, align 4
  %69 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %link_enc, align 8
  %transmitter44 = getelementptr inbounds %struct.link_encoder, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %transmitter44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %transmitter44, align 4
  %switch.tableidx = add i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %73 = icmp ult i32 %switch.tableidx, 12
  br i1 %73, label %for.end.transmitter_to_phy_id.exit_crit_edge, label %land.end.i

for.end.transmitter_to_phy_id.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %transmitter_to_phy_id.exit

land.end.i:                                       ; preds = %for.end
  %.b47.i = load i1, ptr @transmitter_to_phy_id.__already_done, align 1
  br i1 %.b47.i, label %land.end.i.transmitter_to_phy_id.exit_crit_edge, label %if.then.i, !prof !189

land.end.i.transmitter_to_phy_id.exit_crit_edge:  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %transmitter_to_phy_id.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @transmitter_to_phy_id.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3082, i32 noundef 9, ptr noundef nonnull @.str.53, i32 noundef %72) #11
  br label %transmitter_to_phy_id.exit

transmitter_to_phy_id.exit:                       ; preds = %if.then.i, %land.end.i.transmitter_to_phy_id.exit_crit_edge, %for.end.transmitter_to_phy_id.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.then.i ], [ -1, %land.end.i.transmitter_to_phy_id.exit_crit_edge ], [ %72, %for.end.transmitter_to_phy_id.exit_crit_edge ]
  %smuPhyId = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 5
  %74 = ptrtoint ptr %smuPhyId to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i, ptr %smuPhyId, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %75 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %v_total, align 8
  %crtcTimingVerticalTotal = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 6
  %77 = ptrtoint ptr %crtcTimingVerticalTotal to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %crtcTimingVerticalTotal, align 4
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %78 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pix_clk_100hz, align 8
  %mul = mul i32 %79, 100
  %conv47 = zext i32 %mul to i64
  %80 = load i32, ptr %v_total, align 8
  %conv50 = zext i32 %80 to i64
  %call51 = call i64 @div64_u64(i64 noundef %conv47, i64 noundef %conv50) #11
  %81 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %timing, align 8
  %conv53 = zext i32 %82 to i64
  %call54 = call i64 @div64_u64(i64 noundef %call51, i64 noundef %conv53) #11
  %conv55 = trunc i64 %call54 to i32
  %vsync_rate_hz = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 11
  %83 = ptrtoint ptr %vsync_rate_hz to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv55, ptr %vsync_rate_hz, align 4
  %psrSupportedDisplayConfig = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 7
  %84 = ptrtoint ptr %psrSupportedDisplayConfig to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %psrSupportedDisplayConfig, align 4
  %psr_exit_link_training_required = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 2
  %85 = ptrtoint ptr %psr_exit_link_training_required to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %psr_exit_link_training_required, align 4, !range !190
  %psrExitLinkTrainingRequired = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 8
  %87 = ptrtoint ptr %psrExitLinkTrainingRequired to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %psrExitLinkTrainingRequired, align 1
  %psr_sdp_transmit_line_num_deadline = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 4
  %88 = ptrtoint ptr %psr_sdp_transmit_line_num_deadline to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %psr_sdp_transmit_line_num_deadline, align 4
  %sdpTransmitLineNumDeadline = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 10
  %90 = ptrtoint ptr %sdpTransmitLineNumDeadline to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %sdpTransmitLineNumDeadline, align 4
  %91 = ptrtoint ptr %psr_frame_capture_indication_req to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %psr_frame_capture_indication_req, align 1, !range !190
  %psrFrameCaptureIndicationReq = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 9
  %93 = ptrtoint ptr %psrFrameCaptureIndicationReq to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %psrFrameCaptureIndicationReq, align 2
  %skipPsrWaitForPllLock = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 12
  %94 = ptrtoint ptr %skipPsrWaitForPllLock to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %skipPsrWaitForPllLock, align 4
  %dc60 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %95 = ptrtoint ptr %dc60 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dc60, align 4
  %res_pool61 = getelementptr inbounds %struct.dc, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %res_pool61 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %res_pool61, align 8
  %timing_generator_count = getelementptr inbounds %struct.resource_pool, ptr %98, i32 0, i32 26
  %99 = ptrtoint ptr %timing_generator_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %timing_generator_count, align 4
  %numberOfControllers = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 13
  %101 = ptrtoint ptr %numberOfControllers to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %numberOfControllers, align 4
  %rfb_update_auto_en = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 14
  %102 = ptrtoint ptr %rfb_update_auto_en to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %rfb_update_auto_en, align 4
  %timehyst_frames = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 15
  %103 = ptrtoint ptr %timehyst_frames to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %timehyst_frames, align 4
  %104 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %v_total, align 8
  %div64 = udiv i32 %105, 200
  %hyst_lines = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 16
  %106 = ptrtoint ptr %hyst_lines to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div64, ptr %hyst_lines, align 4
  %aux_repeats = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 17
  %107 = ptrtoint ptr %aux_repeats to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 10, ptr %aux_repeats, align 4
  %psr_level = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 18
  %108 = ptrtoint ptr %psr_level to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %psr_level, align 4
  %109 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ctx, align 8
  %chip_family = getelementptr inbounds %struct.dc_context, ptr %110, i32 0, i32 5, i32 1
  %111 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %112)
  %cmp66 = icmp ugt i32 %112, 141
  %spec.store.select = select i1 %cmp66, i32 134217728, i32 0
  %113 = ptrtoint ptr %psr_level to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.store.select, ptr %psr_level, align 4
  %allow_smu_optimizations = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 5
  %114 = ptrtoint ptr %allow_smu_optimizations to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %allow_smu_optimizations, align 4, !range !190
  %allow_smu_optimizations75 = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 20
  %116 = ptrtoint ptr %allow_smu_optimizations75 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %allow_smu_optimizations75, align 4
  %allow_multi_disp_optimizations = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 6
  %117 = ptrtoint ptr %allow_multi_disp_optimizations to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %allow_multi_disp_optimizations, align 1, !range !190
  %allow_multi_disp_optimizations78 = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 21
  %119 = ptrtoint ptr %allow_multi_disp_optimizations78 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %allow_multi_disp_optimizations78, align 1
  %bf.set83 = or i32 %spec.store.select, 8388608
  store i32 %bf.set83, ptr %psr_level, align 4
  %frame_delay = getelementptr inbounds %struct.psr_context, ptr %psr_context, i32 0, i32 19
  %120 = ptrtoint ptr %frame_delay to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %frame_delay, align 4
  br i1 %tobool6.not, label %if.else, label %if.end94

if.else:                                          ; preds = %transmitter_to_phy_id.exit
  %funcs89 = getelementptr inbounds %struct.dmcu, ptr %8, i32 0, i32 1
  %121 = ptrtoint ptr %funcs89 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %funcs89, align 4
  %setup_psr = getelementptr inbounds %struct.dmcu_funcs, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %setup_psr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %setup_psr, align 4
  %call90 = call zeroext i1 %124(ptr noundef %8, ptr noundef nonnull %link, ptr noundef %psr_context) #11
  %frombool88.sink222 = zext i1 %call90 to i8
  %125 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %frombool88.sink222, ptr %125, align 4
  br i1 %call90, label %if.else.cleanup_crit_edge, label %if.else.land.end_crit_edge

if.else.land.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end94:                                         ; preds = %transmitter_to_phy_id.exit
  %funcs = getelementptr inbounds %struct.dmub_psr, ptr %10, i32 0, i32 1
  %127 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %funcs, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %call87 = call zeroext i1 %130(ptr noundef nonnull %10, ptr noundef nonnull %link, ptr noundef %psr_context, i8 noundef zeroext %panel_inst.0) #11
  %frombool88.sink = zext i1 %call87 to i8
  %131 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool88.sink, ptr %131, align 4
  br i1 %call87, label %if.end94.cleanup_crit_edge, label %if.end94.land.end_crit_edge

if.end94.land.end_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.end:                                         ; preds = %if.end94.land.end_crit_edge, %if.else.land.end_crit_edge
  %.b217 = load i1, ptr @dc_link_setup_psr.__already_done, align 1
  br i1 %.b217, label %land.end.if.then140_crit_edge, label %if.then108, !prof !189

land.end.if.then140_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then140

if.then108:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_setup_psr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3237, i32 noundef 9, ptr noundef null) #11
  br label %if.then140

if.then140:                                       ; preds = %if.then108, %land.end.if.then140_crit_edge
  call void @kgdb_breakpoint() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %if.end94.cleanup_crit_edge, %if.else.cleanup_crit_edge, %dc_get_edp_link_panel_inst.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then140 ], [ true, %if.end94.cleanup_crit_edge ], [ false, %dc_get_edp_link_panel_inst.exit.thread ], [ true, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %psr_configuration) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_get_psr_residency(ptr nocapture noundef readonly %link, ptr noundef %residency) local_unnamed_addr #0 align 64 {
entry:
  %edp_links.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %psr2 = getelementptr inbounds %struct.resource_pool, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %psr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psr2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links.i) #11
  %8 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links.i, align 4, !annotation !188
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %9 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 128
  br i1 %cmp.not.i, label %if.end.i, label %dc_get_edp_link_panel_inst.exit.thread

dc_get_edp_link_panel_inst.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %link_count.i.i = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %link_count.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp26.not.i.i = icmp eq i8 %12, 0
  br i1 %cmp26.not.i.i, label %if.end.i.if.else.i_crit_edge, label %for.body.i.preheader.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %conv.i.i = zext i8 %12 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %edp_num.0.i = phi i32 [ %edp_num.1.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %i.027.i.i = phi i32 [ %inc15.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.dc, ptr %3, i32 0, i32 10, i32 %i.027.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connector_signal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %16)
  %cmp4.i.i = icmp eq i32 %16, 128
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %arrayidx9.i.i = getelementptr ptr, ptr %edp_links.i, i32 %edp_num.0.i
  %17 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %arrayidx9.i.i, align 4
  %inc.i.i = add i32 %edp_num.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp10.i.i = icmp eq i32 %inc.i.i, 2
  br i1 %cmp10.i.i, label %if.then6.i.i.land.lhs.true.i_crit_edge, label %if.then6.i.i.for.inc.i.i_crit_edge

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.inc.i.i:                                      ; preds = %if.then6.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %edp_num.1.i = phi i32 [ %edp_num.0.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then6.i.i.for.inc.i.i_crit_edge ], [ %edp_num.0.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %inc15.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i.i, %conv.i.i
  br i1 %exitcond.not.i, label %get_edp_links.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

get_edp_links.exit.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %edp_num.1.i)
  %cmp1.i = icmp sgt i32 %edp_num.1.i, 1
  br i1 %cmp1.i, label %get_edp_links.exit.i.land.lhs.true.i_crit_edge, label %get_edp_links.exit.i.if.else.i_crit_edge

get_edp_links.exit.i.if.else.i_crit_edge:         ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

get_edp_links.exit.i.land.lhs.true.i_crit_edge:   ; preds = %get_edp_links.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %get_edp_links.exit.i.land.lhs.true.i_crit_edge, %if.then6.i.i.land.lhs.true.i_crit_edge
  %link_index.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %18 = ptrtoint ptr %link_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link_index.i, align 8
  %20 = ptrtoint ptr %edp_links.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edp_links.i, align 4
  %link_index2.i = getelementptr inbounds %struct.dc_link, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %link_index2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_index2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp3.i = icmp ugt i32 %19, %23
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %get_edp_links.exit.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else.i, %land.lhs.true.i.if.end_crit_edge
  %panel_inst.0 = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links.i) #11
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %24 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %psr_settings, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %funcs = getelementptr inbounds %struct.dmub_psr, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs, align 4
  %psr_get_residency = getelementptr inbounds %struct.dmub_psr_funcs, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %psr_get_residency to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psr_get_residency, align 4
  tail call void %29(ptr noundef nonnull %7, ptr noundef %residency, i8 noundef zeroext %panel_inst.0) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %30 = ptrtoint ptr %residency to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %residency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %dc_get_edp_link_panel_inst.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dc_link_get_status(ptr noundef readnone %link) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link_status = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 56
  ret ptr %link_status
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_link_resume(ptr nocapture noundef readonly %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %0 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp.not = icmp eq i32 %1, 512
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @program_hpd_filter(ptr noundef %link)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_hpd_filter(ptr nocapture noundef readonly %link) unnamed_addr #0 align 64 {
entry:
  %hpd = alloca ptr, align 4
  %config = alloca %struct.gpio_hpd_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd) #11
  %is_hpd_filter_disabled = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 8
  %0 = ptrtoint ptr %is_hpd_filter_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_hpd_filter_disabled, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %2 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connector_signal, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %if.end.sw.epilog_crit_edge1
    i32 4, label %if.end.sw.epilog_crit_edge2
    i32 32, label %if.end.sw.bb1_crit_edge
    i32 64, label %if.end.sw.bb1_crit_edge3
  ]

if.end.sw.bb1_crit_edge3:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

if.end.sw.epilog_crit_edge2:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge1:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge1, %if.end.sw.epilog_crit_edge2
  %delay_on_connect_in_ms.0 = phi i32 [ 80, %sw.bb1 ], [ 500, %if.end.sw.epilog_crit_edge ], [ 500, %if.end.sw.epilog_crit_edge1 ], [ 500, %if.end.sw.epilog_crit_edge2 ]
  %delay_on_disconnect_in_ms.0 = phi i32 [ 0, %sw.bb1 ], [ 100, %if.end.sw.epilog_crit_edge ], [ 100, %if.end.sw.epilog_crit_edge1 ], [ 100, %if.end.sw.epilog_crit_edge2 ]
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dc_bios, align 4
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %gpio_service = getelementptr inbounds %struct.dc_context, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %gpio_service to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_service, align 4
  %11 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %link_id, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call ptr @get_hpd_gpio(ptr noundef %8, [1 x i32] %12, ptr noundef %10)
  %13 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %hpd, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %sw.epilog.cleanup_crit_edge, label %if.end7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  %call8 = tail call i32 @dal_gpio_open(ptr noundef nonnull %call, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then9, label %do.end

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config) #11
  %14 = getelementptr inbounds %struct.gpio_hpd_config, ptr %config, i32 0, i32 1
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %delay_on_connect_in_ms.0, ptr %config, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %delay_on_disconnect_in_ms.0, ptr %14, align 4
  %17 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hpd, align 4
  %call10 = call i32 @dal_irq_setup_hpd_filter(ptr noundef %18, ptr noundef nonnull %config) #11
  call void @dal_gpio_close(ptr noundef %18) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config) #11
  br label %if.end34

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #11
  tail call void @kgdb_breakpoint() #11
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then9
  call void @dal_gpio_destroy_irq(ptr noundef nonnull %hpd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_link_allocate_mst_payload(ptr nocapture noundef readonly %pipe_ctx) local_unnamed_addr #0 align 64 {
entry:
  %proposed_table = alloca %struct.dp_mst_stream_allocation_table, align 4
  %prev_mst_slots_in_use = alloca i8, align 1
  %tmp240 = alloca %struct.fixed31_32, align 8
  %tmp245 = alloca %struct.fixed31_32, align 8
  %tmp246 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %link2 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link2, align 4
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_enc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %proposed_table) #11
  %6 = call ptr @memset(ptr %proposed_table, i32 0, i32 16)
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 40
  %7 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 38
  %9 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_enc, align 8
  br label %do.body

if.else:                                          ; preds = %entry
  %dc = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 35
  %11 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc, align 4
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
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.else.land.rhs_crit_edge, label %if.then3

if.else.land.rhs_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %call = tail call ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr noundef %22, ptr noundef %1) #11
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.then
  %link_encoder.0 = phi ptr [ %10, %if.then ], [ %call, %if.then3 ]
  %tobool7.not = icmp eq ptr %link_encoder.0, null
  br i1 %tobool7.not, label %do.body.land.rhs_crit_edge, label %do.body.do.end51_crit_edge

do.body.do.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.rhs:                                         ; preds = %do.body.land.rhs_crit_edge, %if.else.land.rhs_crit_edge
  %.b313 = load i1, ptr @dc_link_allocate_mst_payload.__already_done, align 1
  br i1 %.b313, label %land.rhs.if.then48_crit_edge, label %if.then16, !prof !189

land.rhs.if.then48_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_allocate_mst_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3499, i32 noundef 9, ptr noundef null) #11
  br label %if.then48

if.then48:                                        ; preds = %if.then16, %land.rhs.if.then48_crit_edge
  tail call void @kgdb_breakpoint() #11
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body.do.end51_crit_edge
  %link_encoder.0320 = phi ptr [ %link_encoder.0, %do.body.do.end51_crit_edge ], [ null, %if.then48 ]
  %ctx52 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %23 = ptrtoint ptr %ctx52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx52, align 4
  %call53 = call zeroext i1 @dm_helpers_dp_mst_write_payload_allocation_table(ptr noundef %24, ptr noundef %1, ptr noundef nonnull %proposed_table, i1 noundef zeroext true) #11
  br i1 %call53, label %if.then54, label %do.end60

if.then54:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream_enc, align 4
  call fastcc void @update_mst_stream_alloc_table(ptr noundef %3, ptr noundef %26, ptr noundef nonnull %proposed_table)
  br label %if.end63

do.end60:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %27 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pipe_idx, align 8
  %conv = zext i8 %28 to i32
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv) #14
  br label %if.end63

if.end63:                                         ; preds = %do.end60, %if.then54
  %mst_stream_alloc_table = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 55
  %29 = ptrtoint ptr %mst_stream_alloc_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mst_stream_alloc_table, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %30) #11
  %arrayidx = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 0
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %vcp_id = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %vcp_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %vcp_id, align 4
  %conv71 = zext i8 %34 to i32
  %slot_count = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %slot_count to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %slot_count, align 1
  %conv75 = zext i8 %36 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %32, i32 noundef 0, i32 noundef %conv71, i32 noundef 0, i32 noundef %conv75) #11
  %arrayidx.1 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.1, align 4
  %vcp_id.1 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 1, i32 1
  %39 = ptrtoint ptr %vcp_id.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %vcp_id.1, align 4
  %conv71.1 = zext i8 %40 to i32
  %slot_count.1 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 1, i32 2
  %41 = ptrtoint ptr %slot_count.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %slot_count.1, align 1
  %conv75.1 = zext i8 %42 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %38, i32 noundef 1, i32 noundef %conv71.1, i32 noundef 1, i32 noundef %conv75.1) #11
  %arrayidx.2 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2, align 4
  %vcp_id.2 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 2, i32 1
  %45 = ptrtoint ptr %vcp_id.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vcp_id.2, align 4
  %conv71.2 = zext i8 %46 to i32
  %slot_count.2 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 2, i32 2
  %47 = ptrtoint ptr %slot_count.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %slot_count.2, align 1
  %conv75.2 = zext i8 %48 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef %44, i32 noundef 2, i32 noundef %conv71.2, i32 noundef 2, i32 noundef %conv75.2) #11
  %arrayidx.3 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 3
  %49 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.3, align 4
  %vcp_id.3 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 3, i32 1
  %51 = ptrtoint ptr %vcp_id.3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %vcp_id.3, align 4
  %conv71.3 = zext i8 %52 to i32
  %slot_count.3 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 3, i32 2
  %53 = ptrtoint ptr %slot_count.3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %slot_count.3, align 1
  %conv75.3 = zext i8 %54 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 3, ptr noundef %50, i32 noundef 3, i32 noundef %conv71.3, i32 noundef 3, i32 noundef %conv75.3) #11
  %arrayidx.4 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 4
  %55 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.4, align 4
  %vcp_id.4 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 4, i32 1
  %57 = ptrtoint ptr %vcp_id.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vcp_id.4, align 4
  %conv71.4 = zext i8 %58 to i32
  %slot_count.4 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 4, i32 2
  %59 = ptrtoint ptr %slot_count.4 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %slot_count.4, align 1
  %conv75.4 = zext i8 %60 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 4, ptr noundef %56, i32 noundef 4, i32 noundef %conv71.4, i32 noundef 4, i32 noundef %conv75.4) #11
  %arrayidx.5 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 5
  %61 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.5, align 4
  %vcp_id.5 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 5, i32 1
  %63 = ptrtoint ptr %vcp_id.5 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %vcp_id.5, align 4
  %conv71.5 = zext i8 %64 to i32
  %slot_count.5 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 5, i32 2
  %65 = ptrtoint ptr %slot_count.5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %slot_count.5, align 1
  %conv75.5 = zext i8 %66 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 5, ptr noundef %62, i32 noundef 5, i32 noundef %conv71.5, i32 noundef 5, i32 noundef %conv75.5) #11
  %67 = ptrtoint ptr %proposed_table to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %proposed_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp79 = icmp slt i32 %68, 1
  br i1 %cmp79, label %land.rhs90, label %if.end63.do.end140_crit_edge

if.end63.do.end140_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end140

land.rhs90:                                       ; preds = %if.end63
  %.b309312 = load i1, ptr @dc_link_allocate_mst_payload.__already_done.7, align 1
  br i1 %.b309312, label %land.rhs90.if.then137_crit_edge, label %if.then101, !prof !189

land.rhs90.if.then137_crit_edge:                  ; preds = %land.rhs90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

if.then101:                                       ; preds = %land.rhs90
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_allocate_mst_payload.__already_done.7, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3560, i32 noundef 9, ptr noundef null) #11
  br label %if.then137

if.then137:                                       ; preds = %if.then101, %land.rhs90.if.then137_crit_edge
  call void @kgdb_breakpoint() #11
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %if.end63.do.end140_crit_edge
  %69 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp142 = icmp eq i32 %70, 1
  br i1 %cmp142, label %if.then144, label %do.end140.if.end229_crit_edge

do.end140.if.end229_crit_edge:                    ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

if.then144:                                       ; preds = %do.end140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prev_mst_slots_in_use) #11
  %71 = ptrtoint ptr %prev_mst_slots_in_use to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %prev_mst_slots_in_use, align 1
  %72 = ptrtoint ptr %mst_stream_alloc_table to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mst_stream_alloc_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp148323 = icmp sgt i32 %73, 0
  br i1 %cmp148323, label %if.then144.for.body150_crit_edge, label %if.then144.for.end160_crit_edge

if.then144.for.end160_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end160

if.then144.for.body150_crit_edge:                 ; preds = %if.then144
  br label %for.body150

for.body150:                                      ; preds = %for.body150.for.body150_crit_edge, %if.then144.for.body150_crit_edge
  %mst_alloc_slots.0325 = phi i8 [ %add, %for.body150.for.body150_crit_edge ], [ 0, %if.then144.for.body150_crit_edge ]
  %i.1324 = phi i32 [ %inc159, %for.body150.for.body150_crit_edge ], [ 0, %if.then144.for.body150_crit_edge ]
  %slot_count154 = getelementptr %struct.dc_link, ptr %3, i32 0, i32 55, i32 1, i32 %i.1324, i32 2
  %74 = ptrtoint ptr %slot_count154 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %slot_count154, align 1
  %add = add i8 %75, %mst_alloc_slots.0325
  %inc159 = add nuw nsw i32 %i.1324, 1
  %exitcond.not = icmp eq i32 %inc159, %73
  br i1 %exitcond.not, label %for.body150.for.end160_crit_edge, label %for.body150.for.body150_crit_edge

for.body150.for.body150_crit_edge:                ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body150

for.body150.for.end160_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end160

for.end160:                                       ; preds = %for.body150.for.end160_crit_edge, %if.then144.for.end160_crit_edge
  %mst_alloc_slots.0.lcssa = phi i8 [ 0, %if.then144.for.end160_crit_edge ], [ %add, %for.body150.for.end160_crit_edge ]
  %dc161 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 35
  %76 = ptrtoint ptr %dc161 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dc161, align 4
  %link_index = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 3
  %78 = ptrtoint ptr %link_index to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %link_index, align 8
  %call162 = call i32 @dc_process_dmub_set_mst_slots(ptr noundef %77, i32 noundef %79, i8 noundef zeroext %mst_alloc_slots.0.lcssa, ptr noundef nonnull %prev_mst_slots_in_use) #11
  store i32 %call162, ptr @dc_link_allocate_mst_payload.status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call162)
  %cmp165.not = icmp eq i32 %call162, 1
  br i1 %cmp165.not, label %for.end160.do.end226_crit_edge, label %land.rhs176

for.end160.do.end226_crit_edge:                   ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end226

land.rhs176:                                      ; preds = %for.end160
  %.b310311 = load i1, ptr @dc_link_allocate_mst_payload.__already_done.8, align 1
  br i1 %.b310311, label %land.rhs176.if.then223_crit_edge, label %if.then187, !prof !189

land.rhs176.if.then223_crit_edge:                 ; preds = %land.rhs176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then223

if.then187:                                       ; preds = %land.rhs176
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_allocate_mst_payload.__already_done.8, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3571, i32 noundef 9, ptr noundef null) #11
  br label %if.then223

if.then223:                                       ; preds = %if.then187, %land.rhs176.if.then223_crit_edge
  call void @kgdb_breakpoint() #11
  br label %do.end226

do.end226:                                        ; preds = %if.then223, %for.end160.do.end226_crit_edge
  %80 = load i32, ptr @dc_link_allocate_mst_payload.status, align 4
  %conv227 = zext i8 %mst_alloc_slots.0.lcssa to i32
  %81 = ptrtoint ptr %prev_mst_slots_in_use to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %prev_mst_slots_in_use, align 1
  %conv228 = zext i8 %82 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %80, i32 noundef %conv227, i32 noundef %conv228) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prev_mst_slots_in_use) #11
  br label %if.end229

if.end229:                                        ; preds = %do.end226, %do.end140.if.end229_crit_edge
  %83 = ptrtoint ptr %link_encoder.0320 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %link_encoder.0320, align 4
  %update_mst_stream_allocation_table = getelementptr inbounds %struct.link_encoder_funcs, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %update_mst_stream_allocation_table to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %update_mst_stream_allocation_table, align 4
  call void %86(ptr noundef %link_encoder.0320, ptr noundef %mst_stream_alloc_table) #11
  %87 = ptrtoint ptr %ctx52 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx52, align 4
  %call233 = call i32 @dm_helpers_dp_mst_poll_for_allocation_change_trigger(ptr noundef %88, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call233)
  %cmp234.not = icmp eq i32 %call233, 1
  br i1 %cmp234.not, label %if.end229.if.end239_crit_edge, label %if.then236

if.end229.if.end239_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end239

if.then236:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %ctx52 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctx52, align 4
  %call238 = call zeroext i1 @dm_helpers_dp_mst_send_payload_allocation(ptr noundef %90, ptr noundef %1, i1 noundef zeroext true) #11
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %if.end229.if.end239_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp240) #11
  %91 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %link2, align 4, !noalias !193
  %cur_link_settings.i = getelementptr inbounds %struct.dc_link, ptr %92, i32 0, i32 21
  %link_rate.i.i = getelementptr inbounds %struct.dc_link, ptr %92, i32 0, i32 21, i32 1
  %93 = ptrtoint ptr %link_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %link_rate.i.i, align 4, !noalias !193
  %mul1.i.i = mul i32 %94, 216000
  %95 = ptrtoint ptr %cur_link_settings.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cur_link_settings.i, align 4, !noalias !193
  %mul2.i.i = mul i32 %mul1.i.i, %96
  %connector_signal.i.i.i = getelementptr inbounds %struct.dc_link, ptr %92, i32 0, i32 5
  %97 = ptrtoint ptr %connector_signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %connector_signal.i.i.i, align 8, !noalias !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %98)
  %cmp.not.i.i.i = icmp eq i32 %98, 64
  br i1 %cmp.not.i.i.i, label %if.end239.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end239.if.end.i.i.i_crit_edge:                 ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end239
  %local_sink.i.i.i = getelementptr inbounds %struct.dc_link, ptr %92, i32 0, i32 2
  %99 = ptrtoint ptr %local_sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %local_sink.i.i.i, align 4, !noalias !193
  %tobool.not.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %land.lhs.true1.i.i.i

land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i.i

land.lhs.true1.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %disable_fec.i.i.i = getelementptr inbounds %struct.dc_sink, ptr %100, i32 0, i32 2, i32 18, i32 6
  %101 = ptrtoint ptr %disable_fec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %disable_fec.i.i.i, align 4, !noalias !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool3.not.i.i.i = icmp eq i32 %102, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true1.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %land.lhs.true1.i.i.i.if.then.i.i.i_crit_edge

land.lhs.true1.i.i.i.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

land.lhs.true1.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true1.i.i.i.lor.lhs.false.i.i.i_crit_edge, %land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %98)
  %cmp5.i.i.i = icmp eq i32 %98, 128
  br i1 %cmp5.i.i.i, label %land.lhs.true6.i.i.i, label %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %dsc_caps.i.i.i = getelementptr inbounds %struct.dc_link, ptr %92, i32 0, i32 43, i32 24
  %103 = ptrtoint ptr %dsc_caps.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load.i.i.i = load i8, ptr %dsc_caps.i.i.i, align 1, !noalias !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %cmp7.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %cmp7.i.i.i, label %land.lhs.true6.i.i.i.if.then.i.i.i_crit_edge, label %land.lhs.true6.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true6.i.i.i.if.end.i.i.i_crit_edge:      ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true6.i.i.i.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true6.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true1.i.i.i.if.then.i.i.i_crit_edge
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true6.i.i.i.if.end.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge, %if.end239.if.end.i.i.i_crit_edge
  %is_fec_disable.0.off0.i.i.i = phi i1 [ false, %if.then.i.i.i ], [ true, %land.lhs.true6.i.i.i.if.end.i.i.i_crit_edge ], [ true, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge ], [ true, %if.end239.if.end.i.i.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @dc_link_is_fec_supported(ptr noundef %92) #11, !noalias !193
  br i1 %call.i.i.i, label %dc_link_should_enable_fec.exit.i.i, label %if.end.i.i.i.get_pbn_per_slot.exit_crit_edge

if.end.i.i.i.get_pbn_per_slot.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pbn_per_slot.exit

dc_link_should_enable_fec.exit.i.i:               ; preds = %if.end.i.i.i
  %dc.i.i.i = getelementptr inbounds %struct.dc_link, ptr %92, i32 0, i32 35
  %104 = ptrtoint ptr %dc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dc.i.i.i, align 4, !noalias !193
  %disable_fec11.i.i.i = getelementptr inbounds %struct.dc_debug_options, ptr %105, i32 0, i32 65
  %106 = ptrtoint ptr %disable_fec11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %disable_fec11.i.i.i, align 8, !range !190, !noalias !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool12.not.i.i.i = icmp eq i8 %107, 0
  %spec.select24.i.i.i = and i1 %is_fec_disable.0.off0.i.i.i, %tobool12.not.i.i.i
  br i1 %spec.select24.i.i.i, label %if.then.i.i, label %dc_link_should_enable_fec.exit.i.i.get_pbn_per_slot.exit_crit_edge

dc_link_should_enable_fec.exit.i.i.get_pbn_per_slot.exit_crit_edge: ; preds = %dc_link_should_enable_fec.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pbn_per_slot.exit

if.then.i.i:                                      ; preds = %dc_link_should_enable_fec.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i32 %mul2.i.i to i64
  %mul3.i.i = mul nuw nsw i64 %conv.i.i, 970
  %call4.i.i = call i64 @div64_s64(i64 noundef %mul3.i.i, i64 noundef 1000) #11, !noalias !193
  %conv5.i.i = trunc i64 %call4.i.i to i32
  br label %get_pbn_per_slot.exit

get_pbn_per_slot.exit:                            ; preds = %if.then.i.i, %dc_link_should_enable_fec.exit.i.i.get_pbn_per_slot.exit_crit_edge, %if.end.i.i.i.get_pbn_per_slot.exit_crit_edge
  %link_bw_kbps.0.i.i = phi i32 [ %conv5.i.i, %if.then.i.i ], [ %mul2.i.i, %dc_link_should_enable_fec.exit.i.i.get_pbn_per_slot.exit_crit_edge ], [ %mul2.i.i, %if.end.i.i.i.get_pbn_per_slot.exit_crit_edge ]
  %div.i = udiv i32 %link_bw_kbps.0.i.i, 8000
  %108 = zext i32 %div.i to i64
  %shl.i.i = shl nuw nsw i64 %108, 32
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp240, i64 noundef %shl.i.i, i64 noundef 231928233984) #11
  %109 = ptrtoint ptr %tmp240 to i32
  call void @__asan_load8_noabort(i32 %109)
  %pbn_per_slot.sroa.0.0.copyload = load i64, ptr %tmp240, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp240) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pbn_per_slot.sroa.0.0.copyload)
  %cmp241 = icmp eq i64 %pbn_per_slot.sroa.0.0.copyload, 0
  br i1 %cmp241, label %if.then243, label %if.end244

if.then243:                                       ; preds = %get_pbn_per_slot.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end244:                                        ; preds = %get_pbn_per_slot.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp245) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %110 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %stream1, align 4, !noalias !196
  %display_color_depth.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %111, i32 0, i32 5, i32 16
  %112 = ptrtoint ptr %display_color_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %display_color_depth.i.i, align 4, !noalias !196
  %switch.tableidx = add i32 %113, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %114 = icmp ult i32 %switch.tableidx, 6
  br i1 %114, label %switch.lookup, label %land.end.i.i

land.end.i.i:                                     ; preds = %if.end244
  %.b73.i.i = load i1, ptr @dc_bandwidth_in_kbps_from_timing.__already_done, align 1, !noalias !196
  br i1 %.b73.i.i, label %land.end.i.i.if.then43.i.i_crit_edge, label %if.then.i.i317, !prof !189

land.end.i.i.if.then43.i.i_crit_edge:             ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i.i

if.then.i.i317:                                   ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_bandwidth_in_kbps_from_timing.__already_done, align 1, !noalias !196
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4827, i32 noundef 9, ptr noundef null) #11, !noalias !196
  br label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.then.i.i317, %land.end.i.i.if.then43.i.i_crit_edge
  call void @kgdb_breakpoint() #11, !noalias !196
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.mult = shl i32 %switch.tableidx, 1
  %switch.offset = add i32 %switch.idx.mult, 6
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %if.then43.i.i
  %bits_per_channel.0.i.i = phi i32 [ 8, %if.then43.i.i ], [ %switch.offset, %switch.lookup ]
  %pix_clk_100hz.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %111, i32 0, i32 5, i32 12
  %115 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pix_clk_100hz.i.i, align 4, !noalias !196
  %div.i.i = udiv i32 %116, 10
  %mul.i.i = mul i32 %div.i.i, %bits_per_channel.0.i.i
  %flags.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %111, i32 0, i32 5, i32 21
  %117 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load.i.i = load i32, ptr %flags.i.i, align 4, !noalias !196
  %118 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp47.not.not.i.i = icmp eq i32 %118, 0
  br i1 %cmp47.not.not.i.i, label %if.then48.i.i, label %sw.epilog.i.i.get_pbn_from_timing.exit_crit_edge

sw.epilog.i.i.get_pbn_from_timing.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pbn_from_timing.exit

if.then48.i.i:                                    ; preds = %sw.epilog.i.i
  %mul49.i.i = mul i32 %mul.i.i, 3
  %pixel_encoding.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %111, i32 0, i32 5, i32 17
  %119 = ptrtoint ptr %pixel_encoding.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pixel_encoding.i.i, align 4, !noalias !196
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %120, label %if.then48.i.i.get_pbn_from_timing.exit_crit_edge [
    i32 4, label %if.then51.i.i
    i32 2, label %if.then55.i.i
  ]

if.then48.i.i.get_pbn_from_timing.exit_crit_edge: ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pbn_from_timing.exit

if.then51.i.i:                                    ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %div5272.i.i = lshr exact i32 %mul49.i.i, 1
  br label %get_pbn_from_timing.exit

if.then55.i.i:                                    ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul56.i.i = mul i32 %mul.i.i, 6
  %div57.i.i = udiv i32 %mul56.i.i, 3
  br label %get_pbn_from_timing.exit

get_pbn_from_timing.exit:                         ; preds = %if.then55.i.i, %if.then51.i.i, %if.then48.i.i.get_pbn_from_timing.exit_crit_edge, %sw.epilog.i.i.get_pbn_from_timing.exit_crit_edge
  %kbps.0.i.i = phi i32 [ %div5272.i.i, %if.then51.i.i ], [ %div57.i.i, %if.then55.i.i ], [ %mul.i.i, %sw.epilog.i.i.get_pbn_from_timing.exit_crit_edge ], [ %mul49.i.i, %if.then48.i.i.get_pbn_from_timing.exit_crit_edge ]
  %conv.i = zext i32 %kbps.0.i.i to i64
  %122 = ptrtoint ptr %tmp245 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %tmp245, align 8, !alias.scope !199, !annotation !188
  %mul.i1.i = mul nuw nsw i64 %conv.i, 64384
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp245, i64 noundef %mul.i1.i, i64 noundef 432000000) #11
  %123 = ptrtoint ptr %tmp245 to i32
  call void @__asan_load8_noabort(i32 %123)
  %pbn.sroa.0.0.copyload = load i64, ptr %tmp245, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp245) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp246) #11
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp246, i64 noundef %pbn.sroa.0.0.copyload, i64 noundef %pbn_per_slot.sroa.0.0.copyload) #11
  %124 = ptrtoint ptr %tmp246 to i32
  call void @__asan_load8_noabort(i32 %124)
  %avg_time_slots_per_mtp.sroa.0.0.copyload = load i64, ptr %tmp246, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp246) #11
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %5, align 4
  %set_throttled_vcp_size = getelementptr inbounds %struct.stream_encoder_funcs, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %set_throttled_vcp_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %set_throttled_vcp_size, align 4
  %.fca.0.insert279 = insertvalue [1 x i64] poison, i64 %avg_time_slots_per_mtp.sroa.0.0.copyload, 0
  call void %128(ptr noundef %5, [1 x i64] %.fca.0.insert279) #11
  br label %cleanup

cleanup:                                          ; preds = %get_pbn_from_timing.exit, %if.then243
  %retval.0 = phi i32 [ 25, %if.then243 ], [ 1, %get_pbn_from_timing.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %proposed_table) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_mst_write_payload_allocation_table(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_mst_stream_alloc_table(ptr nocapture noundef %link, ptr noundef %stream_enc, ptr nocapture noundef readonly %proposed_table) unnamed_addr #0 align 64 {
entry:
  %work_table = alloca [6 x %struct.link_mst_stream_allocation], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %work_table) #11
  %0 = call ptr @memset(ptr %work_table, i32 0, i32 48)
  %1 = ptrtoint ptr %proposed_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proposed_table, align 4
  %mst_stream_alloc_table = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 55
  %3 = ptrtoint ptr %mst_stream_alloc_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mst_stream_alloc_table, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %land.rhs, label %entry.do.end42_crit_edge

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

land.rhs:                                         ; preds = %entry
  %.b130 = load i1, ptr @update_mst_stream_alloc_table.__already_done, align 1
  br i1 %.b130, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !189

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @update_mst_stream_alloc_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3331, i32 noundef 9, ptr noundef null) #11
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #11
  %5 = ptrtoint ptr %proposed_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %proposed_table, align 4
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %entry.do.end42_crit_edge
  %6 = phi i32 [ %2, %entry.do.end42_crit_edge ], [ %.pr, %if.then39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp44139 = icmp sgt i32 %6, 0
  br i1 %cmp44139, label %for.cond45.preheader.lr.ph, label %do.end42.for.end84_crit_edge

do.end42.for.end84_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end84

for.cond45.preheader.lr.ph:                       ; preds = %do.end42
  %7 = ptrtoint ptr %mst_stream_alloc_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mst_stream_alloc_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp48136 = icmp sgt i32 %8, 0
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.inc82.for.cond45.preheader_crit_edge, %for.cond45.preheader.lr.ph
  %i.0140 = phi i32 [ 0, %for.cond45.preheader.lr.ph ], [ %inc83, %for.inc82.for.cond45.preheader_crit_edge ]
  br i1 %cmp48136, label %for.body49.lr.ph, label %for.cond45.preheader.for.end_crit_edge

for.cond45.preheader.for.end_crit_edge:           ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body49.lr.ph:                                 ; preds = %for.cond45.preheader
  %arrayidx52 = getelementptr %struct.dp_mst_stream_allocation_table, ptr %proposed_table, i32 0, i32 1, i32 %i.0140
  %9 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx52, align 2
  br label %for.body49

for.body49:                                       ; preds = %for.inc.for.body49_crit_edge, %for.body49.lr.ph
  %j.0137 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc, %for.inc.for.body49_crit_edge ]
  %vcp_id = getelementptr %struct.dc_link, ptr %link, i32 0, i32 55, i32 1, i32 %j.0137, i32 1
  %11 = ptrtoint ptr %vcp_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vcp_id, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %10)
  %cmp55 = icmp eq i8 %12, %10
  br i1 %cmp55, label %if.then57, label %for.inc

if.then57:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.dc_link, ptr %link, i32 0, i32 55, i32 1, i32 %j.0137
  %arrayidx58 = getelementptr [6 x %struct.link_mst_stream_allocation], ptr %work_table, i32 0, i32 %i.0140
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %arrayidx58, align 4
  %slot_count = getelementptr %struct.dp_mst_stream_allocation_table, ptr %proposed_table, i32 0, i32 1, i32 %i.0140, i32 1
  %16 = ptrtoint ptr %slot_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %slot_count, align 1
  %slot_count62 = getelementptr [6 x %struct.link_mst_stream_allocation], ptr %work_table, i32 0, i32 %i.0140, i32 2
  %18 = ptrtoint ptr %slot_count62 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %slot_count62, align 1
  br label %for.end

for.inc:                                          ; preds = %for.body49
  %inc = add nuw nsw i32 %j.0137, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.if.then68_crit_edge, label %for.inc.for.body49_crit_edge

for.inc.for.body49_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body49

for.inc.if.then68_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

for.end:                                          ; preds = %if.then57, %for.cond45.preheader.for.end_crit_edge
  %j.0134 = phi i32 [ %j.0137, %if.then57 ], [ 0, %for.cond45.preheader.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0134, i32 %8)
  %cmp66 = icmp eq i32 %j.0134, %8
  br i1 %cmp66, label %for.end.if.then68_crit_edge, label %for.end.for.inc82_crit_edge

for.end.for.inc82_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc82

for.end.if.then68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.then68:                                        ; preds = %for.end.if.then68_crit_edge, %for.inc.if.then68_crit_edge
  %arrayidx70 = getelementptr %struct.dp_mst_stream_allocation_table, ptr %proposed_table, i32 0, i32 1, i32 %i.0140
  %19 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx70, align 2
  %arrayidx72 = getelementptr [6 x %struct.link_mst_stream_allocation], ptr %work_table, i32 0, i32 %i.0140
  %vcp_id73 = getelementptr [6 x %struct.link_mst_stream_allocation], ptr %work_table, i32 0, i32 %i.0140, i32 1
  %21 = ptrtoint ptr %vcp_id73 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %vcp_id73, align 4
  %slot_count76 = getelementptr %struct.dp_mst_stream_allocation_table, ptr %proposed_table, i32 0, i32 1, i32 %i.0140, i32 1
  %22 = ptrtoint ptr %slot_count76 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %slot_count76, align 1
  %slot_count78 = getelementptr [6 x %struct.link_mst_stream_allocation], ptr %work_table, i32 0, i32 %i.0140, i32 2
  %24 = ptrtoint ptr %slot_count78 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %slot_count78, align 1
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %stream_enc, ptr %arrayidx72, align 4
  br label %for.inc82

for.inc82:                                        ; preds = %if.then68, %for.end.for.inc82_crit_edge
  %inc83 = add nuw nsw i32 %i.0140, 1
  %exitcond147.not = icmp eq i32 %inc83, %6
  br i1 %exitcond147.not, label %for.inc82.for.end84_crit_edge, label %for.inc82.for.cond45.preheader_crit_edge

for.inc82.for.cond45.preheader_crit_edge:         ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond45.preheader

for.inc82.for.end84_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end84

for.end84:                                        ; preds = %for.inc82.for.end84_crit_edge, %do.end42.for.end84_crit_edge
  %26 = ptrtoint ptr %mst_stream_alloc_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %6, ptr %mst_stream_alloc_table, align 4
  %uglygep = getelementptr i8, ptr %link, i32 536
  %27 = call ptr @memcpy(ptr %uglygep, ptr %work_table, i32 48)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %work_table) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_process_dmub_set_mst_slots(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_helpers_dp_mst_poll_for_allocation_change_trigger(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_mst_send_payload_allocation(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_link_enable_stream(ptr noundef %state, ptr noundef %pipe_ctx) local_unnamed_addr #0 align 64 {
entry:
  %old_downspread.i488 = alloca %union.down_spread_ctrl, align 1
  %new_downspread.i489 = alloca %union.down_spread_ctrl, align 1
  %settings.i.i = alloca %struct.ext_hdmi_settings, align 1
  %old_downspread.i = alloca %union.down_spread_ctrl, align 1
  %new_downspread.i = alloca %union.down_spread_ctrl, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %link4 = getelementptr inbounds %struct.dc_sink, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %link4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link4, align 4
  %ctx5 = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx5, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dce_environment, align 8
  %.off = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp.i = icmp eq i32 %15, 512
  br i1 %cmp.i, label %land.lhs.true.cleanup344_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup344_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup344

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %res_pool = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 12
  %16 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res_pool, align 8
  %funcs = getelementptr inbounds %struct.resource_pool, ptr %17, i32 0, i32 40
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_encs_assign, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true10

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true10:                                  ; preds = %if.end
  %link11 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %link11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link11, align 4
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %23, i32 0, i32 40
  %24 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp12.not = icmp eq i32 %25, 0
  br i1 %cmp12.not, label %land.lhs.true10.if.else_crit_edge, label %if.then13

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr noundef %5, ptr noundef %1) #11
  br label %do.body

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %if.end.if.else_crit_edge
  %link15 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %link15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link15, align 4
  %link_enc16 = getelementptr inbounds %struct.dc_link, ptr %27, i32 0, i32 38
  %28 = ptrtoint ptr %link_enc16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link_enc16, align 8
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then13
  %link_enc.0 = phi ptr [ %call14, %if.then13 ], [ %29, %if.else ]
  %tobool18.not = icmp eq ptr %link_enc.0, null
  br i1 %tobool18.not, label %land.rhs, label %do.end62.thread

land.rhs:                                         ; preds = %do.body
  %.b465 = load i1, ptr @core_link_enable_stream.__already_done, align 1
  br i1 %.b465, label %land.rhs.do.end62_crit_edge, label %if.then27, !prof !189

land.rhs.do.end62_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

if.then27:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @core_link_enable_stream.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4152, i32 noundef 9, ptr noundef null) #11
  br label %do.end62

do.end62:                                         ; preds = %if.then27, %land.rhs.do.end62_crit_edge
  tail call void @kgdb_breakpoint() #11
  %30 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stream, align 4
  %signal64 = getelementptr inbounds %struct.dc_stream_state, ptr %31, i32 0, i32 36
  %32 = ptrtoint ptr %signal64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %signal64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %33)
  %cmp.i468 = icmp eq i32 %33, 512
  br i1 %cmp.i468, label %do.end62.if.end78_crit_edge, label %do.end62.if.end72_crit_edge

do.end62.if.end72_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

do.end62.if.end78_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.end62.thread:                                  ; preds = %do.body
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream, align 4
  %signal64511 = getelementptr inbounds %struct.dc_stream_state, ptr %35, i32 0, i32 36
  %36 = ptrtoint ptr %signal64511 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %signal64511, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %37)
  %cmp.i468512 = icmp eq i32 %37, 512
  br i1 %cmp.i468512, label %do.end62.thread.if.end78_crit_edge, label %if.then68

do.end62.thread.if.end78_crit_edge:               ; preds = %do.end62.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then68:                                        ; preds = %do.end62.thread
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %link_enc.0, align 4
  %setup = getelementptr inbounds %struct.link_encoder_funcs, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %setup, align 4
  tail call void %41(ptr noundef nonnull %link_enc.0, i32 noundef %37) #11
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %do.end62.if.end72_crit_edge
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stream_enc, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %setup_stereo_sync = getelementptr inbounds %struct.stream_encoder_funcs, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %setup_stereo_sync to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %setup_stereo_sync, align 4
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inst, align 4
  %timing_3d_format = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 15
  %52 = ptrtoint ptr %timing_3d_format to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %timing_3d_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp77 = icmp ne i32 %53, 0
  tail call void %47(ptr noundef %43, i32 noundef %51, i1 noundef zeroext %cmp77) #11
  br label %if.end78

if.end78:                                         ; preds = %if.end72, %do.end62.thread.if.end78_crit_edge, %do.end62.if.end78_crit_edge
  %stream_enc80 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %stream_enc80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stream_enc80, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %timing84 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 20
  %60 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %output_color_space, align 4
  %use_vsc_sdp_for_colorimetry = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 23
  %62 = ptrtoint ptr %use_vsc_sdp_for_colorimetry to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %use_vsc_sdp_for_colorimetry, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool85 = icmp ne i8 %63, 0
  %link86 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %link86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %link86, align 4
  %dprx_feature = getelementptr inbounds %struct.dc_link, ptr %65, i32 0, i32 43, i32 3
  %66 = ptrtoint ptr %dprx_feature to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %dprx_feature, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv = zext i8 %bf.clear to i32
  tail call void %59(ptr noundef %55, ptr noundef %timing84, i32 noundef %61, i1 noundef zeroext %tobool85, i32 noundef %conv) #11
  %67 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stream, align 4
  %signal88 = getelementptr inbounds %struct.dc_stream_state, ptr %68, i32 0, i32 36
  %69 = ptrtoint ptr %signal88 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %signal88, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %70, label %if.end78.if.end91_crit_edge [
    i32 32, label %if.end78.if.then90_crit_edge
    i32 128, label %if.end78.if.then90_crit_edge516
    i32 64, label %if.end78.if.then90_crit_edge517
  ]

if.end78.if.then90_crit_edge517:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then90

if.end78.if.then90_crit_edge516:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then90

if.end78.if.then90_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then90

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then90:                                        ; preds = %if.end78.if.then90_crit_edge, %if.end78.if.then90_crit_edge516, %if.end78.if.then90_crit_edge517
  tail call void @dp_source_sequence_trace(ptr noundef %9, i8 noundef zeroext 2) #11
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end78.if.end91_crit_edge
  %72 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %stream, align 4
  %signal93 = getelementptr inbounds %struct.dc_stream_state, ptr %73, i32 0, i32 36
  %74 = ptrtoint ptr %signal93 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %signal93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %cmp.i469 = icmp eq i32 %75, 4
  br i1 %cmp.i469, label %if.then95, label %if.end91.if.end105_crit_edge

if.end91.if.end105_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %stream_enc80 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stream_enc80, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %hdmi_set_stream_attribute = getelementptr inbounds %struct.stream_encoder_funcs, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %hdmi_set_stream_attribute to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hdmi_set_stream_attribute, align 4
  %phy_pix_clk = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 35
  %82 = ptrtoint ptr %phy_pix_clk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %phy_pix_clk, align 8
  %audio = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %audio, align 8
  %cmp103 = icmp ne ptr %85, null
  tail call void %81(ptr noundef %77, ptr noundef %timing84, i32 noundef %83, i1 noundef zeroext %cmp103) #11
  br label %if.end105

if.end105:                                        ; preds = %if.then95, %if.end91.if.end105_crit_edge
  %86 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %stream, align 4
  %link107 = getelementptr inbounds %struct.dc_stream_state, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %link107 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %link107, align 4
  %link_state_valid = getelementptr inbounds %struct.dc_link, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %link_state_valid to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %link_state_valid, align 2
  %91 = load ptr, ptr %stream, align 4
  %signal109 = getelementptr inbounds %struct.dc_stream_state, ptr %91, i32 0, i32 36
  %92 = ptrtoint ptr %signal109 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %signal109, align 4
  %signal.off.i = add i32 %93, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %signal.off.i)
  %switch.i = icmp ult i32 %signal.off.i, 2
  br i1 %switch.i, label %if.then111, label %if.end105.if.end123_crit_edge

if.end105.if.end123_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then111:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %stream_enc80 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %stream_enc80, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %dvi_set_stream_attribute = getelementptr inbounds %struct.stream_encoder_funcs, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %dvi_set_stream_attribute to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dvi_set_stream_attribute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp120 = icmp eq i32 %93, 2
  tail call void %99(ptr noundef %95, ptr noundef %timing84, i1 noundef zeroext %cmp120) #11
  br label %if.end123

if.end123:                                        ; preds = %if.then111, %if.end105.if.end123_crit_edge
  %100 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stream, align 4
  %signal125 = getelementptr inbounds %struct.dc_stream_state, ptr %101, i32 0, i32 36
  %102 = ptrtoint ptr %signal125 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %signal125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %103)
  %cmp.i470 = icmp eq i32 %103, 8
  br i1 %cmp.i470, label %if.then127, label %if.end123.if.end134_crit_edge

if.end123.if.end134_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %stream_enc80 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %stream_enc80, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %lvds_set_stream_attribute = getelementptr inbounds %struct.stream_encoder_funcs, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %lvds_set_stream_attribute to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lvds_set_stream_attribute, align 4
  tail call void %109(ptr noundef %105, ptr noundef %timing84) #11
  br label %if.end134

if.end134:                                        ; preds = %if.then127, %if.end123.if.end134_crit_edge
  %110 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx5, align 8
  %dce_environment136 = getelementptr inbounds %struct.dc_context, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %dce_environment136 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dce_environment136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp137 = icmp eq i32 %113, 1
  %114 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %stream, align 4
  br i1 %cmp137, label %if.else324, label %if.then139

if.then139:                                       ; preds = %if.end134
  %apply_edp_fast_boot_optimization141 = getelementptr inbounds %struct.dc_stream_state, ptr %115, i32 0, i32 50
  %116 = ptrtoint ptr %apply_edp_fast_boot_optimization141 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %apply_edp_fast_boot_optimization141, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool142.not = icmp eq i8 %117, 0
  %118 = ptrtoint ptr %apply_edp_fast_boot_optimization141 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %apply_edp_fast_boot_optimization141, align 2
  tail call void @resource_build_info_frame(ptr noundef %pipe_ctx) #11
  %update_info_frame = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 44
  %119 = ptrtoint ptr %update_info_frame to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %update_info_frame, align 4
  tail call void %120(ptr noundef %pipe_ctx) #11
  %121 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %stream, align 4
  %signal147 = getelementptr inbounds %struct.dc_stream_state, ptr %122, i32 0, i32 36
  %123 = ptrtoint ptr %signal147 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %signal147, align 4
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %124, label %if.then139.if.end150_crit_edge [
    i32 32, label %if.then139.if.then149_crit_edge
    i32 128, label %if.then139.if.then149_crit_edge518
    i32 64, label %if.then139.if.then149_crit_edge519
  ]

if.then139.if.then149_crit_edge519:               ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

if.then139.if.then149_crit_edge518:               ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

if.then139.if.then149_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

if.then139.if.end150_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then149:                                       ; preds = %if.then139.if.then149_crit_edge, %if.then139.if.then149_crit_edge518, %if.then139.if.then149_crit_edge519
  tail call void @dp_source_sequence_trace(ptr noundef %9, i8 noundef zeroext 3) #11
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.then139.if.end150_crit_edge
  %126 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %stream, align 4
  %apply_seamless_boot_optimization = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 51
  %128 = ptrtoint ptr %apply_seamless_boot_optimization to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %apply_seamless_boot_optimization, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool152.not = icmp eq i8 %129, 0
  br i1 %tobool152.not, label %if.end173, label %if.then153

if.then153:                                       ; preds = %if.end150
  %dpms_off = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 37
  %130 = ptrtoint ptr %dpms_off to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %dpms_off, align 8
  %131 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %stream, align 4
  %signal156 = getelementptr inbounds %struct.dc_stream_state, ptr %132, i32 0, i32 36
  %133 = ptrtoint ptr %signal156 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %signal156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %134)
  %cmp157 = icmp eq i32 %134, 32
  br i1 %cmp157, label %if.then.i, label %if.then153.if.end172_crit_edge

if.then153.if.end172_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.then.i:                                        ; preds = %if.then153
  %link3.i = getelementptr inbounds %struct.dc_stream_state, ptr %132, i32 0, i32 1
  %135 = ptrtoint ptr %link3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %link3.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_downspread.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_downspread.i) #11
  %137 = ptrtoint ptr %old_downspread.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %old_downspread.i, align 1
  %call.i = call i32 @core_link_read_dpcd(ptr noundef %136, i32 noundef 263, ptr noundef nonnull %old_downspread.i, i32 noundef 1) #11
  %138 = ptrtoint ptr %old_downspread.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %old_downspread.i, align 1
  %ignore_msa_timing_param.i = getelementptr inbounds %struct.dc_stream_state, ptr %132, i32 0, i32 24
  %140 = ptrtoint ptr %ignore_msa_timing_param.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ignore_msa_timing_param.i, align 1, !range !190
  %bf.clear.i = and i8 %139, -2
  %bf.set.i = or i8 %141, %bf.clear.i
  %142 = ptrtoint ptr %new_downspread.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %bf.set.i, ptr %new_downspread.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.set.i, i8 %139)
  %cmp6.not.i = icmp eq i8 %bf.set.i, %139
  br i1 %cmp6.not.i, label %if.then.i.enable_stream_features.exit_crit_edge, label %if.then8.i

if.then.i.enable_stream_features.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_stream_features.exit

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 @core_link_write_dpcd(ptr noundef %136, i32 noundef 263, ptr noundef nonnull %new_downspread.i, i32 noundef 1) #11
  br label %enable_stream_features.exit

enable_stream_features.exit:                      ; preds = %if.then8.i, %if.then.i.enable_stream_features.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_downspread.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_downspread.i) #11
  %audio161 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 4
  %143 = ptrtoint ptr %audio161 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %audio161, align 8
  %cmp162.not = icmp eq ptr %144, null
  br i1 %cmp162.not, label %enable_stream_features.exit.if.end172_crit_edge, label %if.then164

enable_stream_features.exit.if.end172_crit_edge:  ; preds = %enable_stream_features.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.then164:                                       ; preds = %enable_stream_features.exit
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %stream_enc80 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %stream_enc80, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %dp_audio_enable = getelementptr inbounds %struct.stream_encoder_funcs, ptr %148, i32 0, i32 14
  %149 = ptrtoint ptr %dp_audio_enable to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dp_audio_enable, align 4
  call void %150(ptr noundef %146) #11
  %enable_audio_stream = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 63
  %151 = ptrtoint ptr %enable_audio_stream to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %enable_audio_stream, align 4
  call void %152(ptr noundef %pipe_ctx) #11
  br label %if.end172

if.end172:                                        ; preds = %if.then164, %enable_stream_features.exit.if.end172_crit_edge, %if.then153.if.end172_crit_edge
  call fastcc void @update_psp_stream_config(ptr noundef %pipe_ctx, i1 noundef zeroext false)
  br label %cleanup344

if.end173:                                        ; preds = %if.end150
  %signal175 = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 36
  %153 = ptrtoint ptr %signal175 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %signal175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %154)
  %cmp176 = icmp ne i32 %154, 128
  %brmerge = select i1 %cmp176, i1 true, i1 %tobool142.not
  br i1 %brmerge, label %if.end173.if.end193_crit_edge, label %land.lhs.true181

if.end173.if.end193_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

land.lhs.true181:                                 ; preds = %if.end173
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 5, i32 21
  %155 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %155)
  %bf.load184 = load i32, ptr %flags, align 4
  %156 = and i32 %bf.load184, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool187.not = icmp eq i32 %156, 0
  br i1 %tobool187.not, label %land.lhs.true188, label %land.lhs.true181.if.end193_crit_edge

land.lhs.true181.if.end193_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

land.lhs.true188:                                 ; preds = %land.lhs.true181
  %next_odm_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 11
  %157 = ptrtoint ptr %next_odm_pipe to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %next_odm_pipe, align 4
  %tobool189.not = icmp eq ptr %158, null
  br i1 %tobool189.not, label %if.then190, label %land.lhs.true188.if.end193_crit_edge

land.lhs.true188.if.end193_crit_edge:             ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then190:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #13
  %dpms_off192 = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 37
  %159 = ptrtoint ptr %dpms_off192 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %dpms_off192, align 8
  tail call fastcc void @update_psp_stream_config(ptr noundef %pipe_ctx, i1 noundef zeroext false)
  br label %cleanup344

if.end193:                                        ; preds = %land.lhs.true188.if.end193_crit_edge, %land.lhs.true181.if.end193_crit_edge, %if.end173.if.end193_crit_edge
  %dpms_off195 = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 37
  %160 = ptrtoint ptr %dpms_off195 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %dpms_off195, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool196.not = icmp eq i8 %161, 0
  br i1 %tobool196.not, label %if.end198, label %if.end193.cleanup344_crit_edge

if.end193.cleanup344_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup344

if.end198:                                        ; preds = %if.end193
  %flags201 = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 5, i32 21
  %162 = ptrtoint ptr %flags201 to i32
  call void @__asan_load4_noabort(i32 %162)
  %bf.load202 = load i32, ptr %flags201, align 4
  %163 = and i32 %bf.load202, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool205.not = icmp eq i32 %163, 0
  br i1 %tobool205.not, label %if.end198.if.end219_crit_edge, label %if.then206

if.end198.if.end219_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

if.then206:                                       ; preds = %if.end198
  %164 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %154, label %if.then206.if.end219_crit_edge [
    i32 32, label %if.then206.if.then216_crit_edge
    i32 128, label %if.then206.if.then216_crit_edge520
    i32 64, label %if.then206.if.then216_crit_edge521
    i32 512, label %if.then206.if.then216_crit_edge522
  ]

if.then206.if.then216_crit_edge522:               ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then216

if.then206.if.then216_crit_edge521:               ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then216

if.then206.if.then216_crit_edge520:               ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then216

if.then206.if.then216_crit_edge:                  ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then216

if.then206.if.end219_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

if.then216:                                       ; preds = %if.then206.if.then216_crit_edge, %if.then206.if.then216_crit_edge520, %if.then206.if.then216_crit_edge521, %if.then206.if.then216_crit_edge522
  %call217 = tail call zeroext i1 @dp_set_dsc_enable(ptr noundef %pipe_ctx, i1 noundef zeroext true) #11
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.then206.if.end219_crit_edge, %if.end198.if.end219_crit_edge
  %165 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %stream, align 4
  %link2.i = getelementptr inbounds %struct.dc_stream_state, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %link2.i, align 4
  %link_status.i = getelementptr inbounds %struct.dc_link, ptr %168, i32 0, i32 56
  %169 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %link_status.i, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i = icmp eq i8 %170, 0
  br i1 %tobool.not.i, label %if.end219.if.end.i479_crit_edge, label %if.then.i478

if.end219.if.end.i479_crit_edge:                  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i479

if.then.i478:                                     ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  %link_res.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 4
  %signal.i477 = getelementptr inbounds %struct.dc_stream_state, ptr %166, i32 0, i32 36
  %171 = ptrtoint ptr %signal.i477 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %signal.i477, align 4
  tail call fastcc void @disable_link(ptr noundef %168, ptr noundef %link_res.i, i32 noundef %172) #11
  br label %if.end.i479

if.end.i479:                                      ; preds = %if.then.i478, %if.end219.if.end.i479_crit_edge
  %173 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %stream, align 4
  %signal5.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 36
  %175 = ptrtoint ptr %signal5.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %signal5.i, align 4
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %176, label %if.end.i479.do.end226_crit_edge [
    i32 32, label %sw.bb.i
    i32 128, label %sw.bb6.i
    i32 64, label %sw.bb8.i
    i32 1, label %if.end.i479.sw.bb10.i_crit_edge
    i32 2, label %if.end.i479.sw.bb10.i_crit_edge523
    i32 4, label %if.end.i479.sw.bb10.i_crit_edge524
    i32 8, label %sw.bb11.i
    i32 512, label %if.end.i479.enable_link.exit_crit_edge
  ]

if.end.i479.enable_link.exit_crit_edge:           ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_link.exit

if.end.i479.sw.bb10.i_crit_edge524:               ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10.i

if.end.i479.sw.bb10.i_crit_edge523:               ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10.i

if.end.i479.sw.bb10.i_crit_edge:                  ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10.i

if.end.i479.do.end226_crit_edge:                  ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end226

sw.bb.i:                                          ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #13
  %call.i480 = tail call fastcc i32 @enable_link_dp(ptr noundef %state, ptr noundef %pipe_ctx) #11
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call fastcc i32 @enable_link_dp(ptr noundef %state, ptr noundef %pipe_ctx) #11
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i479
  %link1.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 1
  %178 = ptrtoint ptr %link1.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %link1.i.i, align 4
  %link_status.i.i = getelementptr inbounds %struct.dc_link, ptr %179, i32 0, i32 56
  %180 = ptrtoint ptr %link_status.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %link_status.i.i, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i.i = icmp eq i8 %181, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb8.i.enable_link_dp_mst.exit.i_crit_edge

sw.bb8.i.enable_link_dp_mst.exit.i_crit_edge:     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_link_dp_mst.exit.i

if.end.i.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctx.i.i = getelementptr inbounds %struct.dc_link, ptr %179, i32 0, i32 36
  %182 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ctx.i.i, align 8
  tail call void @dm_helpers_dp_mst_clear_payload_allocation_table(ptr noundef %183, ptr noundef %179) #11
  %184 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ctx.i.i, align 8
  tail call void @dm_helpers_dp_mst_poll_pending_down_reply(ptr noundef %185, ptr noundef %179) #11
  tail call void @dp_enable_mst_on_sink(ptr noundef %179, i1 noundef zeroext true) #11
  %call.i32.i = tail call fastcc i32 @enable_link_dp(ptr noundef %state, ptr noundef %pipe_ctx) #11
  br label %enable_link_dp_mst.exit.i

enable_link_dp_mst.exit.i:                        ; preds = %if.end.i.i, %sw.bb8.i.enable_link_dp_mst.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i32.i, %if.end.i.i ], [ 1, %sw.bb8.i.enable_link_dp_mst.exit.i_crit_edge ]
  tail call void @msleep(i32 noundef 200) #11
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i479.sw.bb10.i_crit_edge, %if.end.i479.sw.bb10.i_crit_edge523, %if.end.i479.sw.bb10.i_crit_edge524
  %link2.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 1
  %186 = ptrtoint ptr %link2.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %link2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %settings.i.i) #11
  %188 = call ptr @memset(ptr %settings.i.i, i32 0, i32 27)
  %h_addressable.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 5, i32 2
  %189 = ptrtoint ptr %h_addressable.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %h_addressable.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %190)
  %cmp.i.i = icmp eq i32 %190, 640
  br i1 %cmp.i.i, label %land.rhs.i.i, label %sw.bb10.i.land.end.i.i_crit_edge

sw.bb10.i.land.end.i.i_crit_edge:                 ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  %v_addressable.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 5, i32 8
  %191 = ptrtoint ptr %v_addressable.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %v_addressable.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %192)
  %cmp4.i.i = icmp eq i32 %192, 480
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb10.i.land.end.i.i_crit_edge
  %193 = phi i1 [ false, %sw.bb10.i.land.end.i.i_crit_edge ], [ %cmp4.i.i, %land.rhs.i.i ]
  %phy_pix_clk.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 35
  %194 = ptrtoint ptr %phy_pix_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %phy_pix_clk.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp5.i.i = icmp eq i32 %195, 0
  br i1 %cmp5.i.i, label %if.then.i.i, label %land.end.i.i.if.end.i33.i_crit_edge

land.end.i.i.if.end.i33.i_crit_edge:              ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i33.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pix_clk_100hz.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 5, i32 12
  %196 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %pix_clk_100hz.i.i, align 8
  %div.i.i = udiv i32 %197, 10
  %198 = ptrtoint ptr %phy_pix_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %div.i.i, ptr %phy_pix_clk.i.i, align 8
  br label %if.end.i33.i

if.end.i33.i:                                     ; preds = %if.then.i.i, %land.end.i.i.if.end.i33.i_crit_edge
  %199 = ptrtoint ptr %phy_pix_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %phy_pix_clk.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %200)
  %cmp9.i.i = icmp sgt i32 %200, 340000
  %201 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %stream, align 4
  %signal.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %202, i32 0, i32 36
  %203 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %signal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %204)
  %cmp.i.i.i = icmp eq i32 %204, 4
  br i1 %cmp.i.i.i, label %if.then13.i.i, label %if.end.i33.i.if.end35.i.i_crit_edge

if.end.i33.i.if.end35.i.i_crit_edge:              ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then13.i.i:                                    ; preds = %if.end.i33.i
  %link15.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %202, i32 0, i32 1
  %205 = ptrtoint ptr %link15.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %link15.i.i, align 4
  %chip_caps.i.i = getelementptr inbounds %struct.dc_link, ptr %206, i32 0, i32 45
  %207 = ptrtoint ptr %chip_caps.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %chip_caps.i.i, align 8
  %209 = trunc i16 %208 to i7
  %trunc.i.i = and i7 %209, -4
  %210 = zext i7 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.115)
  switch i7 %trunc.i.i, label %if.then13.i.i.if.end35.i.i_crit_edge [
    i7 8, label %if.then20.i.i
    i7 4, label %if.then31.i.i
  ]

if.then13.i.i.if.end35.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then20.i.i:                                    ; preds = %if.then13.i.i
  %211 = ptrtoint ptr %stream_enc80 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %stream_enc80, align 4
  %id.i.i = getelementptr inbounds %struct.stream_encoder, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %id.i.i, align 4
  %call21.i.i = call fastcc zeroext i1 @get_ext_hdmi_settings(ptr noundef %pipe_ctx, i32 noundef %214, ptr noundef nonnull %settings.i.i) #11
  br i1 %call21.i.i, label %if.then22.i.i, label %if.else.i.i

if.then22.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @write_i2c_retimer_setting(ptr noundef %pipe_ctx, i1 noundef zeroext %193, i1 noundef zeroext %cmp9.i.i, ptr noundef nonnull %settings.i.i) #11
  br label %if.end35.i.i

if.else.i.i:                                      ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @write_i2c_default_retimer_setting(ptr noundef %pipe_ctx, i1 noundef zeroext %193, i1 noundef zeroext %cmp9.i.i) #11
  br label %if.end35.i.i

if.then31.i.i:                                    ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @write_i2c_redriver_setting(ptr noundef %pipe_ctx, i1 noundef zeroext %cmp9.i.i) #11
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then31.i.i, %if.else.i.i, %if.then22.i.i, %if.then13.i.i.if.end35.i.i_crit_edge, %if.end.i33.i.if.end35.i.i_crit_edge
  %215 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %stream, align 4
  %signal37.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %216, i32 0, i32 36
  %217 = ptrtoint ptr %signal37.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %signal37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %218)
  %cmp.i94.i.i = icmp eq i32 %218, 4
  br i1 %cmp.i94.i.i, label %if.then39.i.i, label %if.end35.i.i.if.end44.i.i_crit_edge

if.end35.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i.i

if.then39.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %219 = ptrtoint ptr %link2.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %link2.i.i, align 4
  %ddc.i.i = getelementptr inbounds %struct.dc_link, ptr %220, i32 0, i32 33
  %221 = ptrtoint ptr %ddc.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ddc.i.i, align 4
  %223 = ptrtoint ptr %phy_pix_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %phy_pix_clk.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 5, i32 21
  %225 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %bf.load.i.i = load i32, ptr %flags.i.i, align 4
  %226 = and i32 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool43.i.i = icmp ne i32 %226, 0
  call void @dal_ddc_service_write_scdc_data(ptr noundef %222, i32 noundef %224, i1 noundef zeroext %tobool43.i.i) #11
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then39.i.i, %if.end35.i.i.if.end44.i.i_crit_edge
  %227 = ptrtoint ptr %link2.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %link2.i.i, align 4
  %cur_link_settings.i.i = getelementptr inbounds %struct.dc_link, ptr %228, i32 0, i32 21
  %229 = call ptr @memset(ptr %cur_link_settings.i.i, i32 0, i32 16)
  %display_color_depth47.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 5, i32 16
  %230 = ptrtoint ptr %display_color_depth47.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %display_color_depth47.i.i, align 8
  %pixel_encoding.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 5, i32 17
  %232 = ptrtoint ptr %pixel_encoding.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %pixel_encoding.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %233)
  %cmp49.i.i = icmp eq i32 %233, 2
  %spec.store.select.i.i = select i1 %cmp49.i.i, i32 2, i32 %231
  %link_enc.i.i = getelementptr inbounds %struct.dc_link, ptr %187, i32 0, i32 38
  %234 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %link_enc.i.i, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %enable_tmds_output.i.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %237, i32 0, i32 4
  %238 = ptrtoint ptr %enable_tmds_output.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %enable_tmds_output.i.i, align 4
  %clock_source.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 5
  %240 = ptrtoint ptr %clock_source.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %clock_source.i.i, align 8
  %id54.i.i = getelementptr inbounds %struct.clock_source, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %id54.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %id54.i.i, align 4
  %244 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %stream, align 4
  %signal56.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %245, i32 0, i32 36
  %246 = ptrtoint ptr %signal56.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %signal56.i.i, align 4
  %248 = ptrtoint ptr %phy_pix_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %phy_pix_clk.i.i, align 8
  call void %239(ptr noundef %235, i32 noundef %243, i32 noundef %spec.store.select.i.i, i32 noundef %247, i32 noundef %249) #11
  %250 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %stream, align 4
  %signal59.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %251, i32 0, i32 36
  %252 = ptrtoint ptr %signal59.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %signal59.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %253)
  %cmp.i95.i.i = icmp eq i32 %253, 4
  br i1 %cmp.i95.i.i, label %if.then61.i.i, label %if.end44.i.i.enable_link_hdmi.exit.i_crit_edge

if.end44.i.i.enable_link_hdmi.exit.i_crit_edge:   ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_link_hdmi.exit.i

if.then61.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ddc62.i.i = getelementptr inbounds %struct.dc_link, ptr %187, i32 0, i32 33
  %254 = ptrtoint ptr %ddc62.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ddc62.i.i, align 4
  call void @dal_ddc_service_read_scdc_data(ptr noundef %255) #11
  br label %enable_link_hdmi.exit.i

enable_link_hdmi.exit.i:                          ; preds = %if.then61.i.i, %if.end44.i.i.enable_link_hdmi.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %settings.i.i) #11
  br label %enable_link.exit

sw.bb11.i:                                        ; preds = %if.end.i479
  %link2.i35.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 1
  %256 = ptrtoint ptr %link2.i35.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %link2.i35.i, align 4
  %phy_pix_clk.i36.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 35
  %258 = ptrtoint ptr %phy_pix_clk.i36.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %phy_pix_clk.i36.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp.i37.i = icmp eq i32 %259, 0
  br i1 %cmp.i37.i, label %if.then.i40.i, label %sw.bb11.i.enable_link_lvds.exit.i_crit_edge

sw.bb11.i.enable_link_lvds.exit.i_crit_edge:      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_link_lvds.exit.i

if.then.i40.i:                                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  %pix_clk_100hz.i38.i = getelementptr inbounds %struct.dc_stream_state, ptr %174, i32 0, i32 5, i32 12
  %260 = ptrtoint ptr %pix_clk_100hz.i38.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %pix_clk_100hz.i38.i, align 8
  %div.i39.i = udiv i32 %261, 10
  %262 = ptrtoint ptr %phy_pix_clk.i36.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %div.i39.i, ptr %phy_pix_clk.i36.i, align 8
  br label %enable_link_lvds.exit.i

enable_link_lvds.exit.i:                          ; preds = %if.then.i40.i, %sw.bb11.i.enable_link_lvds.exit.i_crit_edge
  %cur_link_settings.i41.i = getelementptr inbounds %struct.dc_link, ptr %257, i32 0, i32 21
  %263 = call ptr @memset(ptr %cur_link_settings.i41.i, i32 0, i32 16)
  %link_enc.i42.i = getelementptr inbounds %struct.dc_link, ptr %257, i32 0, i32 38
  %264 = ptrtoint ptr %link_enc.i42.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %link_enc.i42.i, align 8
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %enable_lvds_output.i.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %267, i32 0, i32 7
  %268 = ptrtoint ptr %enable_lvds_output.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %enable_lvds_output.i.i, align 4
  %clock_source.i43.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 5
  %270 = ptrtoint ptr %clock_source.i43.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %clock_source.i43.i, align 8
  %id.i44.i = getelementptr inbounds %struct.clock_source, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %id.i44.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %id.i44.i, align 4
  %274 = ptrtoint ptr %phy_pix_clk.i36.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %phy_pix_clk.i36.i, align 8
  tail call void %269(ptr noundef %265, i32 noundef %273, i32 noundef %275) #11
  br label %enable_link.exit

sw.epilog.i:                                      ; preds = %enable_link_dp_mst.exit.i, %sw.bb6.i, %sw.bb.i
  %status.0.i = phi i32 [ %retval.0.i.i, %enable_link_dp_mst.exit.i ], [ %call.i.i, %sw.bb6.i ], [ %call.i480, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0.i)
  %cmp.i481 = icmp eq i32 %status.0.i, 1
  br i1 %cmp.i481, label %sw.epilog.i.enable_link.exit_crit_edge, label %sw.epilog.i.do.end226_crit_edge

sw.epilog.i.do.end226_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end226

sw.epilog.i.enable_link.exit_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_link.exit

enable_link.exit:                                 ; preds = %sw.epilog.i.enable_link.exit_crit_edge, %enable_link_lvds.exit.i, %enable_link_hdmi.exit.i, %if.end.i479.enable_link.exit_crit_edge
  %276 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %stream, align 4
  %link15.i = getelementptr inbounds %struct.dc_stream_state, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %link15.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %link15.i, align 4
  %link_status16.i = getelementptr inbounds %struct.dc_link, ptr %279, i32 0, i32 56
  %280 = ptrtoint ptr %link_status16.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 1, ptr %link_status16.i, align 8
  br label %if.end253

do.end226:                                        ; preds = %sw.epilog.i.do.end226_crit_edge, %if.end.i479.do.end226_crit_edge
  %status.048.i.ph = phi i32 [ -1, %if.end.i479.do.end226_crit_edge ], [ %status.0.i, %sw.epilog.i.do.end226_crit_edge ]
  %281 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %stream, align 4
  %link229 = getelementptr inbounds %struct.dc_stream_state, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %link229 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %link229, align 4
  %link_index = getelementptr inbounds %struct.dc_link, ptr %284, i32 0, i32 3
  %285 = ptrtoint ptr %link_index to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %link_index, align 8
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %286, i32 noundef %status.048.i.ph) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %status.048.i.ph)
  %cmp231.not = icmp eq i32 %status.048.i.ph, 15
  br i1 %cmp231.not, label %lor.lhs.false233, label %do.end226.if.then238_crit_edge

do.end226.if.then238_crit_edge:                   ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

lor.lhs.false233:                                 ; preds = %do.end226
  %287 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %stream, align 4
  %signal235 = getelementptr inbounds %struct.dc_stream_state, ptr %288, i32 0, i32 36
  %289 = ptrtoint ptr %signal235 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %signal235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %290)
  %cmp236 = icmp eq i32 %290, 64
  br i1 %cmp236, label %lor.lhs.false233.if.then238_crit_edge, label %lor.lhs.false233.if.end253_crit_edge

lor.lhs.false233.if.end253_crit_edge:             ; preds = %lor.lhs.false233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

lor.lhs.false233.if.then238_crit_edge:            ; preds = %lor.lhs.false233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then238

if.then238:                                       ; preds = %lor.lhs.false233.if.then238_crit_edge, %do.end226.if.then238_crit_edge
  %291 = ptrtoint ptr %link86 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %link86, align 4
  %link_status = getelementptr inbounds %struct.dc_link, ptr %292, i32 0, i32 56
  %293 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %link_status, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %cmp242 = icmp eq i8 %294, 0
  br i1 %cmp242, label %if.then244, label %if.then238.do.body249_crit_edge

if.then238.do.body249_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body249

if.then244:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #13
  %link_res = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 4
  %295 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %stream, align 4
  %signal247 = getelementptr inbounds %struct.dc_stream_state, ptr %296, i32 0, i32 36
  %297 = ptrtoint ptr %signal247 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %signal247, align 4
  tail call fastcc void @disable_link(ptr noundef %292, ptr noundef %link_res, i32 noundef %298)
  br label %do.body249

do.body249:                                       ; preds = %if.then244, %if.then238.do.body249_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, i32 noundef 4307) #11
  tail call void @kgdb_breakpoint() #11
  br label %cleanup344

if.end253:                                        ; preds = %lor.lhs.false233.if.end253_crit_edge, %enable_link.exit
  %tg255 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %299 = ptrtoint ptr %tg255 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %tg255, align 8
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %300, align 4
  %set_test_pattern = getelementptr inbounds %struct.timing_generator_funcs, ptr %302, i32 0, i32 40
  %303 = ptrtoint ptr %set_test_pattern to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %set_test_pattern, align 4
  %tobool257.not = icmp eq ptr %304, null
  br i1 %tobool257.not, label %if.end253.if.end265_crit_edge, label %if.then258

if.end253.if.end265_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end265

if.then258:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  call void %304(ptr noundef %300, i32 noundef 7, i32 noundef 0) #11
  br label %if.end265

if.end265:                                        ; preds = %if.then258, %if.end253.if.end265_crit_edge
  %305 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %stream, align 4
  %signal267 = getelementptr inbounds %struct.dc_stream_state, ptr %306, i32 0, i32 36
  %307 = ptrtoint ptr %signal267 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %signal267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %308)
  %cmp.i482 = icmp eq i32 %308, 512
  %brmerge467 = select i1 %cmp.i482, i1 true, i1 %tobool18.not
  br i1 %brmerge467, label %if.end265.if.end277_crit_edge, label %if.then271

if.end265.if.end277_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

if.then271:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #13
  %309 = ptrtoint ptr %link_enc.0 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %link_enc.0, align 4
  %setup273 = getelementptr inbounds %struct.link_encoder_funcs, ptr %310, i32 0, i32 3
  %311 = ptrtoint ptr %setup273 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %setup273, align 4
  call void %312(ptr noundef nonnull %link_enc.0, i32 noundef %308) #11
  br label %if.end277

if.end277:                                        ; preds = %if.then271, %if.end265.if.end277_crit_edge
  %enable_stream = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 35
  %313 = ptrtoint ptr %enable_stream to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %enable_stream, align 4
  call void %314(ptr noundef %pipe_ctx) #11
  %315 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %stream, align 4
  %flags281 = getelementptr inbounds %struct.dc_stream_state, ptr %316, i32 0, i32 5, i32 21
  %317 = ptrtoint ptr %flags281 to i32
  call void @__asan_load4_noabort(i32 %317)
  %bf.load282 = load i32, ptr %flags281, align 4
  %318 = and i32 %bf.load282, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool285.not = icmp eq i32 %318, 0
  br i1 %tobool285.not, label %if.end277.if.end300_crit_edge, label %if.then286

if.end277.if.end300_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end300

if.then286:                                       ; preds = %if.end277
  %signal288 = getelementptr inbounds %struct.dc_stream_state, ptr %316, i32 0, i32 36
  %319 = ptrtoint ptr %signal288 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %signal288, align 4
  %321 = zext i32 %320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %321, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %320, label %if.then286.if.end300_crit_edge [
    i32 32, label %if.then286.if.then296_crit_edge
    i32 128, label %if.then286.if.then296_crit_edge525
    i32 64, label %if.then286.if.then296_crit_edge526
    i32 512, label %if.then286.if.then296_crit_edge527
  ]

if.then286.if.then296_crit_edge527:               ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then296

if.then286.if.then296_crit_edge526:               ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then296

if.then286.if.then296_crit_edge525:               ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then296

if.then286.if.then296_crit_edge:                  ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then296

if.then286.if.end300_crit_edge:                   ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end300

if.then296:                                       ; preds = %if.then286.if.then296_crit_edge, %if.then286.if.then296_crit_edge525, %if.then286.if.then296_crit_edge526, %if.then286.if.then296_crit_edge527
  %call297 = call zeroext i1 @dp_set_dsc_on_rx(ptr noundef %pipe_ctx, i1 noundef zeroext true) #11
  %call298 = call zeroext i1 @dp_set_dsc_pps_sdp(ptr noundef %pipe_ctx, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %if.end300

if.end300:                                        ; preds = %if.then296, %if.then286.if.end300_crit_edge, %if.end277.if.end300_crit_edge
  %322 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %stream, align 4
  %signal302 = getelementptr inbounds %struct.dc_stream_state, ptr %323, i32 0, i32 36
  %324 = ptrtoint ptr %signal302 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %signal302, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %325)
  %cmp303 = icmp eq i32 %325, 64
  br i1 %cmp303, label %if.then305, label %if.end300.if.end307_crit_edge

if.end300.if.end307_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end307

if.then305:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  %call306 = call i32 @dc_link_allocate_mst_payload(ptr noundef %pipe_ctx)
  br label %if.end307

if.end307:                                        ; preds = %if.then305, %if.end300.if.end307_crit_edge
  %unblank_stream = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 38
  %326 = ptrtoint ptr %unblank_stream to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %unblank_stream, align 4
  %328 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %stream, align 4
  %link310 = getelementptr inbounds %struct.dc_stream_state, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %link310 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %link310, align 4
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %331, i32 0, i32 21
  call void %327(ptr noundef %pipe_ctx, ptr noundef %cur_link_settings) #11
  %delay_ignore_msa = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 3, i32 5
  %332 = ptrtoint ptr %delay_ignore_msa to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %delay_ignore_msa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp311.not = icmp eq i32 %333, 0
  br i1 %cmp311.not, label %if.end307.if.end316_crit_edge, label %if.then313

if.end307.if.end316_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end316

if.then313:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef %333) #11
  br label %if.end316

if.end316:                                        ; preds = %if.then313, %if.end307.if.end316_crit_edge
  %334 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %stream, align 4
  %signal318 = getelementptr inbounds %struct.dc_stream_state, ptr %335, i32 0, i32 36
  %336 = ptrtoint ptr %signal318 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %signal318, align 4
  %338 = zext i32 %337 to i64
  call void @__sanitizer_cov_trace_switch(i64 %338, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %337, label %if.end316.if.end321_crit_edge [
    i32 64, label %if.else.i503
    i32 32, label %if.end316.if.then.i499_crit_edge
    i32 128, label %if.end316.if.then.i499_crit_edge528
  ]

if.end316.if.then.i499_crit_edge528:              ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i499

if.end316.if.then.i499_crit_edge:                 ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i499

if.end316.if.end321_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end321

if.then.i499:                                     ; preds = %if.end316.if.then.i499_crit_edge, %if.end316.if.then.i499_crit_edge528
  %link3.i493 = getelementptr inbounds %struct.dc_stream_state, ptr %335, i32 0, i32 1
  %339 = ptrtoint ptr %link3.i493 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %link3.i493, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_downspread.i488) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_downspread.i489) #11
  %341 = ptrtoint ptr %old_downspread.i488 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 0, ptr %old_downspread.i488, align 1
  %call.i494 = call i32 @core_link_read_dpcd(ptr noundef %340, i32 noundef 263, ptr noundef nonnull %old_downspread.i488, i32 noundef 1) #11
  %342 = ptrtoint ptr %old_downspread.i488 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %old_downspread.i488, align 1
  %ignore_msa_timing_param.i495 = getelementptr inbounds %struct.dc_stream_state, ptr %335, i32 0, i32 24
  %344 = ptrtoint ptr %ignore_msa_timing_param.i495 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %ignore_msa_timing_param.i495, align 1, !range !190
  %bf.clear.i496 = and i8 %343, -2
  %bf.set.i497 = or i8 %345, %bf.clear.i496
  %346 = ptrtoint ptr %new_downspread.i489 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %bf.set.i497, ptr %new_downspread.i489, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.set.i497, i8 %343)
  %cmp6.not.i498 = icmp eq i8 %bf.set.i497, %343
  br i1 %cmp6.not.i498, label %if.then.i499.if.end.i502_crit_edge, label %if.then8.i501

if.then.i499.if.end.i502_crit_edge:               ; preds = %if.then.i499
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i502

if.then8.i501:                                    ; preds = %if.then.i499
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i500 = call i32 @core_link_write_dpcd(ptr noundef %340, i32 noundef 263, ptr noundef nonnull %new_downspread.i489, i32 noundef 1) #11
  br label %if.end.i502

if.end.i502:                                      ; preds = %if.then8.i501, %if.then.i499.if.end.i502_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_downspread.i489) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_downspread.i488) #11
  br label %if.end321

if.else.i503:                                     ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  call void @dm_helpers_mst_enable_stream_features(ptr noundef %335) #11
  br label %if.end321

if.end321:                                        ; preds = %if.else.i503, %if.end.i502, %if.end316.if.end321_crit_edge
  call fastcc void @update_psp_stream_config(ptr noundef %pipe_ctx, i1 noundef zeroext false)
  %enable_audio_stream323 = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 63
  %347 = ptrtoint ptr %enable_audio_stream323 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %enable_audio_stream323, align 4
  call void %348(ptr noundef %pipe_ctx) #11
  br label %if.end337

if.else324:                                       ; preds = %if.end134
  %signal326 = getelementptr inbounds %struct.dc_stream_state, ptr %115, i32 0, i32 36
  %349 = ptrtoint ptr %signal326 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %signal326, align 4
  %351 = zext i32 %350 to i64
  call void @__sanitizer_cov_trace_switch(i64 %351, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %350, label %if.else324.if.end337_crit_edge [
    i32 32, label %if.else324.if.then334_crit_edge
    i32 128, label %if.else324.if.then334_crit_edge529
    i32 64, label %if.else324.if.then334_crit_edge530
    i32 512, label %if.else324.if.then334_crit_edge531
  ]

if.else324.if.then334_crit_edge531:               ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

if.else324.if.then334_crit_edge530:               ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

if.else324.if.then334_crit_edge529:               ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

if.else324.if.then334_crit_edge:                  ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

if.else324.if.end337_crit_edge:                   ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end337

if.then334:                                       ; preds = %if.else324.if.then334_crit_edge, %if.else324.if.then334_crit_edge529, %if.else324.if.then334_crit_edge530, %if.else324.if.then334_crit_edge531
  %call335 = tail call zeroext i1 @dp_set_dsc_enable(ptr noundef %pipe_ctx, i1 noundef zeroext true) #11
  br label %if.end337

if.end337:                                        ; preds = %if.then334, %if.else324.if.end337_crit_edge, %if.end321
  %352 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %stream, align 4
  %signal339 = getelementptr inbounds %struct.dc_stream_state, ptr %353, i32 0, i32 36
  %354 = ptrtoint ptr %signal339 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %signal339, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %355)
  %cmp340 = icmp eq i32 %355, 4
  br i1 %cmp340, label %core_link_set_avmute.exit, label %if.end337.cleanup344_crit_edge

if.end337.cleanup344_crit_edge:                   ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup344

core_link_set_avmute.exit:                        ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #13
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %353, i32 0, i32 32
  %356 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ctx.i, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %357, align 8
  %set_avmute.i = getelementptr inbounds %struct.dc, ptr %359, i32 0, i32 17, i32 42
  %360 = ptrtoint ptr %set_avmute.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %set_avmute.i, align 4
  call void %361(ptr noundef %pipe_ctx, i1 noundef zeroext false) #11
  br label %cleanup344

cleanup344:                                       ; preds = %core_link_set_avmute.exit, %if.end337.cleanup344_crit_edge, %do.body249, %if.end193.cleanup344_crit_edge, %if.then190, %if.end172, %land.lhs.true.cleanup344_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_source_sequence_trace(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_build_info_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_psp_stream_config(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %dpms_off) unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.cp_psp_stream_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %dpms_off to i8
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %cp_psp1 = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %config) #11
  %4 = getelementptr inbounds i8, ptr %config, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %call = tail call i32 @dp_get_panel_mode(ptr noundef %7) #11
  %cmp = icmp eq ptr %cp_psp1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %update_stream_config = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 15, i32 1, i32 1
  %8 = ptrtoint ptr %update_stream_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_stream_config, align 4
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 4
  %link5 = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %link5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link5, align 4
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %13, i32 0, i32 40
  %14 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ep_type, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %15, label %if.end.land.rhs_crit_edge [
    i32 0, label %if.then7
    i32 1, label %land.lhs.true
  ]

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %link_enc10 = getelementptr inbounds %struct.dc_link, ptr %13, i32 0, i32 38
  %17 = ptrtoint ptr %link_enc10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_enc10, align 8
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %dc = getelementptr inbounds %struct.dc_link, ptr %13, i32 0, i32 35
  %19 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dc, align 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %res_pool, align 8
  %funcs17 = getelementptr inbounds %struct.resource_pool, ptr %22, i32 0, i32 40
  %23 = ptrtoint ptr %funcs17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs17, align 4
  %link_encs_assign = getelementptr inbounds %struct.resource_funcs, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %link_encs_assign to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_encs_assign, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %land.lhs.true.land.rhs_crit_edge, label %if.then18

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ctx20 = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 32
  %27 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx20, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %call23 = tail call ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr noundef %30, ptr noundef %11) #11
  br label %do.body

do.body:                                          ; preds = %if.then18, %if.then7
  %link_enc.0 = phi ptr [ %18, %if.then7 ], [ %call23, %if.then18 ]
  %cond = icmp eq ptr %link_enc.0, null
  br i1 %cond, label %do.body.land.rhs_crit_edge, label %if.end74

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.rhs:                                         ; preds = %do.body.land.rhs_crit_edge, %land.lhs.true.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %.b149 = load i1, ptr @update_psp_stream_config.__already_done, align 1
  br i1 %.b149, label %land.rhs.if.then68_crit_edge, label %if.then36, !prof !189

land.rhs.if.then68_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.then36:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @update_psp_stream_config.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3989, i32 noundef 9, ptr noundef null) #11
  br label %if.then68

if.then68:                                        ; preds = %if.then36, %land.rhs.if.then68_crit_edge
  tail call void @kgdb_breakpoint() #11
  br label %cleanup

if.end74:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tg, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inst, align 4
  %conv = trunc i32 %34 to i8
  %35 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %config, align 4
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stream_enc, align 4
  %stream_enc_inst = getelementptr inbounds %struct.stream_encoder, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %stream_enc_inst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stream_enc_inst, align 4
  %conv76 = trunc i32 %39 to i8
  %dig_fe = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 2
  %40 = ptrtoint ptr %dig_fe to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv76, ptr %dig_fe, align 2
  %id = getelementptr inbounds %struct.stream_encoder, ptr %37, i32 0, i32 3
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %conv79 = trunc i32 %42 to i8
  %stream_enc_idx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 4
  %43 = ptrtoint ptr %stream_enc_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv79, ptr %stream_enc_idx, align 4
  %44 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream, align 4
  %link81 = getelementptr inbounds %struct.dc_stream_state, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %link81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link81, align 4
  %link_enc_hw_inst = getelementptr inbounds %struct.dc_link, ptr %47, i32 0, i32 28
  %48 = ptrtoint ptr %link_enc_hw_inst to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %link_enc_hw_inst, align 2
  %dig_be = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 1
  %50 = ptrtoint ptr %dig_be to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %dig_be, align 1
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %link_enc.0, i32 0, i32 8
  %51 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %transmitter, align 4
  %conv83 = trunc i32 %52 to i8
  %link_enc_idx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 3
  %53 = ptrtoint ptr %link_enc_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv83, ptr %link_enc_idx, align 1
  %dio_output_idx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 5
  %54 = ptrtoint ptr %dio_output_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv83, ptr %dio_output_idx, align 1
  %55 = load ptr, ptr %link81, align 4
  %dc89 = getelementptr inbounds %struct.dc_link, ptr %55, i32 0, i32 35
  %56 = ptrtoint ptr %dc89 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dc89, align 4
  %call91 = tail call zeroext i8 @resource_transmitter_to_phy_idx(ptr noundef %57, i32 noundef %52) #11
  %phy_idx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 6
  %58 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stream, align 4
  %link93 = getelementptr inbounds %struct.dc_stream_state, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %link93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %link93, align 4
  %ep_type94 = getelementptr inbounds %struct.dc_link, ptr %61, i32 0, i32 40
  %62 = ptrtoint ptr %ep_type94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ep_type94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp95 = icmp eq i32 %63, 1
  %spec.store.select = select i1 %cmp95, i8 0, i8 %call91
  %64 = ptrtoint ptr %phy_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.store.select, ptr %phy_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp100 = icmp eq i32 %call, 1
  %conv102 = zext i1 %cmp100 to i8
  %assr_enabled = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 7
  %65 = ptrtoint ptr %assr_enabled to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv102, ptr %assr_enabled, align 1
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %59, i32 0, i32 36
  %66 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %67)
  %cmp104 = icmp eq i32 %67, 64
  %conv107 = zext i1 %cmp104 to i8
  %mst_enabled = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 8
  %68 = ptrtoint ptr %mst_enabled to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv107, ptr %mst_enabled, align 4
  %69 = ptrtoint ptr %link93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %link93, align 4
  %ep_type110 = getelementptr inbounds %struct.dc_link, ptr %70, i32 0, i32 40
  %71 = ptrtoint ptr %ep_type110 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ep_type110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp111 = icmp eq i32 %72, 1
  %conv114 = zext i1 %cmp111 to i8
  %usb4_enabled = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 10
  %73 = ptrtoint ptr %usb4_enabled to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv114, ptr %usb4_enabled, align 2
  %dpms_off116 = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 12
  %74 = ptrtoint ptr %dpms_off116 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %frombool, ptr %dpms_off116, align 4
  %dm_stream_context = getelementptr inbounds %struct.dc_stream_state, ptr %59, i32 0, i32 38
  %75 = ptrtoint ptr %dm_stream_context to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dm_stream_context, align 4
  %dm_stream_ctx = getelementptr inbounds %struct.cp_psp_stream_config, ptr %config, i32 0, i32 11
  %77 = ptrtoint ptr %dm_stream_ctx to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %dm_stream_ctx, align 4
  %78 = ptrtoint ptr %update_stream_config to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %update_stream_config, align 4
  %80 = ptrtoint ptr %cp_psp1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cp_psp1, align 4
  call void %79(ptr noundef %81, ptr noundef nonnull %config) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then68, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %config) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_set_dsc_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_link(ptr noundef %link, ptr noundef %link_res, i32 noundef %signal) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %signal, label %if.end12.thread [
    i32 512, label %entry.if.end23.sink.split_crit_edge
    i32 128, label %entry.if.end.thread_crit_edge
    i32 32, label %entry.if.end.thread_crit_edge48
    i32 64, label %lor.lhs.false
  ]

entry.if.end.thread_crit_edge48:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

entry.if.end23.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split

if.end.thread:                                    ; preds = %entry.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge48
  tail call void @dp_disable_link_phy(ptr noundef %link, ptr noundef %link_res, i32 noundef %signal) #11
  br label %if.end12

lor.lhs.false:                                    ; preds = %entry
  tail call void @dp_disable_link_phy_mst(ptr noundef %link, ptr noundef %link_res, i32 noundef 64) #11
  %mst_stream_alloc_table = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 55
  %1 = ptrtoint ptr %mst_stream_alloc_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mst_stream_alloc_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %3 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link_enc, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %disable_output = getelementptr inbounds %struct.link_encoder_funcs, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %disable_output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_output, align 4
  tail call void %8(ptr noundef %4, i32 noundef %signal) #11
  br label %if.end23.sink.split

if.end12:                                         ; preds = %lor.lhs.false.if.end12_crit_edge, %if.end.thread
  tail call void @dp_set_fec_enable(ptr noundef %link, i1 noundef zeroext false) #11
  %call5 = tail call i32 @dp_set_fec_ready(ptr noundef %link, ptr noundef %link_res, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %signal)
  %cmp13 = icmp eq i32 %signal, 64
  br i1 %cmp13, label %if.end12.if.then14_crit_edge, label %if.end12.if.end23.sink.split_crit_edge

if.end12.if.end23.sink.split_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge
  %mst_stream_alloc_table15 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 55
  %9 = ptrtoint ptr %mst_stream_alloc_table15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mst_stream_alloc_table15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp17 = icmp slt i32 %10, 1
  br i1 %cmp17, label %if.then14.if.end23.sink.split_crit_edge, label %if.then14.if.end23_crit_edge

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then14.if.end23.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then14.if.end23.sink.split_crit_edge, %if.end12.if.end23.sink.split_crit_edge, %if.end12.thread, %entry.if.end23.sink.split_crit_edge
  %link_status = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 56
  %11 = ptrtoint ptr %link_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %link_status, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then14.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_set_dsc_on_rx(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_set_dsc_pps_sdp(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_link_set_avmute(ptr noundef %pipe_ctx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp eq i32 %3, 4
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %set_avmute = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 17, i32 42
  %8 = ptrtoint ptr %set_avmute to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_avmute, align 4
  tail call void %9(ptr noundef %pipe_ctx, i1 noundef zeroext %enable) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_link_disable_stream(ptr noundef %pipe_ctx) local_unnamed_addr #0 align 64 {
entry:
  %proposed_table.i = alloca %struct.dp_mst_stream_allocation_table, align 4
  %prev_mst_slots_in_use.i = alloca i8, align 1
  %settings = alloca %struct.ext_hdmi_settings, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %link4 = getelementptr inbounds %struct.dc_sink, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %link4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link4, align 4
  %ctx5 = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx5, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dce_environment, align 8
  %.off = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp.i = icmp eq i32 %15, 512
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %skip_avmute = getelementptr inbounds %struct.dc_sink, ptr %7, i32 0, i32 2, i32 18, i32 9
  %16 = ptrtoint ptr %skip_avmute to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skip_avmute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then12, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end
  %signal14 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %18 = ptrtoint ptr %signal14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %signal14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp.i92 = icmp eq i32 %19, 4
  br i1 %cmp.i92, label %core_link_set_avmute.exit, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

core_link_set_avmute.exit:                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %set_avmute.i = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 42
  %20 = ptrtoint ptr %set_avmute.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_avmute.i, align 4
  tail call void %21(ptr noundef %pipe_ctx, i1 noundef zeroext true) #11
  br label %if.end18

if.end18:                                         ; preds = %core_link_set_avmute.exit, %if.then12.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %disable_audio_stream = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 64
  %22 = ptrtoint ptr %disable_audio_stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disable_audio_stream, align 4
  tail call void %23(ptr noundef %pipe_ctx) #11
  tail call fastcc void @update_psp_stream_config(ptr noundef %pipe_ctx, i1 noundef zeroext true)
  %blank_stream = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 37
  %24 = ptrtoint ptr %blank_stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %blank_stream, align 4
  tail call void %25(ptr noundef %pipe_ctx) #11
  %26 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream, align 4
  %signal21 = getelementptr inbounds %struct.dc_stream_state, ptr %27, i32 0, i32 36
  %28 = ptrtoint ptr %signal21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %signal21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %29)
  %cmp22 = icmp eq i32 %29, 64
  br i1 %cmp22, label %if.then23, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.end18
  %link2.i = getelementptr inbounds %struct.dc_stream_state, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link2.i, align 4
  %stream_enc.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %stream_enc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream_enc.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %proposed_table.i) #11
  %34 = call ptr @memset(ptr %proposed_table.i, i32 0, i32 16)
  %type.i = getelementptr inbounds %struct.dc_link, ptr %31, i32 0, i32 4
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i93 = icmp eq i32 %36, 2
  %ep_type.i = getelementptr inbounds %struct.dc_link, ptr %31, i32 0, i32 40
  %37 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ep_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp3.i = icmp eq i32 %38, 0
  br i1 %cmp3.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %31, i32 0, i32 38
  %39 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link_enc.i, align 8
  br label %do.body.i

if.else.i:                                        ; preds = %if.then23
  %dc.i = getelementptr inbounds %struct.dc_link, ptr %31, i32 0, i32 35
  %41 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dc.i, align 4
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %res_pool.i, align 8
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %44, i32 0, i32 40
  %45 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs.i, align 4
  %link_encs_assign.i = getelementptr inbounds %struct.resource_funcs, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %link_encs_assign.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %link_encs_assign.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.else.i.land.rhs.i_crit_edge, label %if.then4.i

if.else.i.land.rhs.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctx.i94 = getelementptr inbounds %struct.dc_stream_state, ptr %27, i32 0, i32 32
  %49 = ptrtoint ptr %ctx.i94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx.i94, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %call.i = tail call ptr @link_enc_cfg_get_link_enc_used_by_stream(ptr noundef %52, ptr noundef %27) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then4.i, %if.then.i
  %link_encoder.0.i = phi ptr [ %40, %if.then.i ], [ %call.i, %if.then4.i ]
  %tobool8.not.i = icmp eq ptr %link_encoder.0.i, null
  br i1 %tobool8.not.i, label %do.body.i.land.rhs.i_crit_edge, label %do.body.i.do.end53.i_crit_edge

do.body.i.do.end53.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.i

do.body.i.land.rhs.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i.land.rhs.i_crit_edge, %if.else.i.land.rhs.i_crit_edge
  %.b2.i = load i1, ptr @deallocate_mst_payload.__already_done, align 1
  br i1 %.b2.i, label %land.rhs.i.if.then50.i_crit_edge, label %if.then18.i, !prof !189

land.rhs.i.if.then50.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

if.then18.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @deallocate_mst_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3827, i32 noundef 9, ptr noundef null) #11
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then18.i, %land.rhs.i.if.then50.i_crit_edge
  tail call void @kgdb_breakpoint() #11
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then50.i, %do.body.i.do.end53.i_crit_edge
  %link_encoder.07.i = phi ptr [ %link_encoder.0.i, %do.body.i.do.end53.i_crit_edge ], [ null, %if.then50.i ]
  %53 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %33, align 4
  %set_throttled_vcp_size.i = getelementptr inbounds %struct.stream_encoder_funcs, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %set_throttled_vcp_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_throttled_vcp_size.i, align 4
  tail call void %56(ptr noundef %33, [1 x i64] zeroinitializer) #11
  br i1 %cmp.i93, label %if.then56.i, label %do.end53.i.if.end69.i_crit_edge

do.end53.i.if.end69.i_crit_edge:                  ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.then56.i:                                      ; preds = %do.end53.i
  %ctx57.i = getelementptr inbounds %struct.dc_stream_state, ptr %27, i32 0, i32 32
  %57 = ptrtoint ptr %ctx57.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx57.i, align 4
  %call58.i = call zeroext i1 @dm_helpers_dp_mst_write_payload_allocation_table(ptr noundef %58, ptr noundef %27, ptr noundef nonnull %proposed_table.i, i1 noundef zeroext false) #11
  br i1 %call58.i, label %if.then59.i, label %do.end65.i

if.then59.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %stream_enc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stream_enc.i, align 4
  call fastcc void @update_mst_stream_alloc_table(ptr noundef %31, ptr noundef %60, ptr noundef nonnull %proposed_table.i) #11
  br label %if.end69.i

do.end65.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  %pipe_idx.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %61 = ptrtoint ptr %pipe_idx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pipe_idx.i, align 8
  %conv.i = zext i8 %62 to i32
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv.i) #14
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end65.i, %if.then59.i, %do.end53.i.if.end69.i_crit_edge
  %mst_stream_alloc_table.i = getelementptr inbounds %struct.dc_link, ptr %31, i32 0, i32 55
  %63 = ptrtoint ptr %mst_stream_alloc_table.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mst_stream_alloc_table.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %64) #11
  %arrayidx.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 0
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 4
  %vcp_id.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %vcp_id.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %vcp_id.i, align 4
  %conv77.i = zext i8 %68 to i32
  %slot_count.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 0, i32 2
  %69 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %slot_count.i, align 1
  %conv81.i = zext i8 %70 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %66, i32 noundef 0, i32 noundef %conv77.i, i32 noundef 0, i32 noundef %conv81.i) #11
  %arrayidx.1.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 1
  %71 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.1.i, align 4
  %vcp_id.1.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 1, i32 1
  %73 = ptrtoint ptr %vcp_id.1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vcp_id.1.i, align 4
  %conv77.1.i = zext i8 %74 to i32
  %slot_count.1.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 1, i32 2
  %75 = ptrtoint ptr %slot_count.1.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %slot_count.1.i, align 1
  %conv81.1.i = zext i8 %76 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %72, i32 noundef 1, i32 noundef %conv77.1.i, i32 noundef 1, i32 noundef %conv81.1.i) #11
  %arrayidx.2.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 2
  %77 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.2.i, align 4
  %vcp_id.2.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 2, i32 1
  %79 = ptrtoint ptr %vcp_id.2.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %vcp_id.2.i, align 4
  %conv77.2.i = zext i8 %80 to i32
  %slot_count.2.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 2, i32 2
  %81 = ptrtoint ptr %slot_count.2.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %slot_count.2.i, align 1
  %conv81.2.i = zext i8 %82 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef %78, i32 noundef 2, i32 noundef %conv77.2.i, i32 noundef 2, i32 noundef %conv81.2.i) #11
  %arrayidx.3.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 3
  %83 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.3.i, align 4
  %vcp_id.3.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 3, i32 1
  %85 = ptrtoint ptr %vcp_id.3.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %vcp_id.3.i, align 4
  %conv77.3.i = zext i8 %86 to i32
  %slot_count.3.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 3, i32 2
  %87 = ptrtoint ptr %slot_count.3.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %slot_count.3.i, align 1
  %conv81.3.i = zext i8 %88 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 3, ptr noundef %84, i32 noundef 3, i32 noundef %conv77.3.i, i32 noundef 3, i32 noundef %conv81.3.i) #11
  %arrayidx.4.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 4
  %89 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.4.i, align 4
  %vcp_id.4.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 4, i32 1
  %91 = ptrtoint ptr %vcp_id.4.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %vcp_id.4.i, align 4
  %conv77.4.i = zext i8 %92 to i32
  %slot_count.4.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 4, i32 2
  %93 = ptrtoint ptr %slot_count.4.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %slot_count.4.i, align 1
  %conv81.4.i = zext i8 %94 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 4, ptr noundef %90, i32 noundef 4, i32 noundef %conv77.4.i, i32 noundef 4, i32 noundef %conv81.4.i) #11
  %arrayidx.5.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 5
  %95 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.5.i, align 4
  %vcp_id.5.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 5, i32 1
  %97 = ptrtoint ptr %vcp_id.5.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vcp_id.5.i, align 4
  %conv77.5.i = zext i8 %98 to i32
  %slot_count.5.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 5, i32 2
  %99 = ptrtoint ptr %slot_count.5.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %slot_count.5.i, align 1
  %conv81.5.i = zext i8 %100 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 5, ptr noundef %96, i32 noundef 5, i32 noundef %conv77.5.i, i32 noundef 5, i32 noundef %conv81.5.i) #11
  %101 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ep_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp83.i = icmp eq i32 %102, 1
  br i1 %cmp83.i, label %if.then85.i, label %if.end69.i.if.end170.i_crit_edge

if.end69.i.if.end170.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170.i

if.then85.i:                                      ; preds = %if.end69.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prev_mst_slots_in_use.i) #11
  %103 = ptrtoint ptr %prev_mst_slots_in_use.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %prev_mst_slots_in_use.i, align 1
  %104 = ptrtoint ptr %mst_stream_alloc_table.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mst_stream_alloc_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp8910.i = icmp sgt i32 %105, 0
  br i1 %cmp8910.i, label %if.then85.i.for.body91.i_crit_edge, label %if.then85.i.for.end101.i_crit_edge

if.then85.i.for.end101.i_crit_edge:               ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101.i

if.then85.i.for.body91.i_crit_edge:               ; preds = %if.then85.i
  br label %for.body91.i

for.body91.i:                                     ; preds = %for.body91.i.for.body91.i_crit_edge, %if.then85.i.for.body91.i_crit_edge
  %mst_alloc_slots.012.i = phi i8 [ %add.i, %for.body91.i.for.body91.i_crit_edge ], [ 0, %if.then85.i.for.body91.i_crit_edge ]
  %i.111.i = phi i32 [ %inc100.i, %for.body91.i.for.body91.i_crit_edge ], [ 0, %if.then85.i.for.body91.i_crit_edge ]
  %slot_count95.i = getelementptr %struct.dc_link, ptr %31, i32 0, i32 55, i32 1, i32 %i.111.i, i32 2
  %106 = ptrtoint ptr %slot_count95.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %slot_count95.i, align 1
  %add.i = add i8 %107, %mst_alloc_slots.012.i
  %inc100.i = add nuw nsw i32 %i.111.i, 1
  %exitcond.not.i = icmp eq i32 %inc100.i, %105
  br i1 %exitcond.not.i, label %for.body91.i.for.end101.i_crit_edge, label %for.body91.i.for.body91.i_crit_edge

for.body91.i.for.body91.i_crit_edge:              ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body91.i

for.body91.i.for.end101.i_crit_edge:              ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101.i

for.end101.i:                                     ; preds = %for.body91.i.for.end101.i_crit_edge, %if.then85.i.for.end101.i_crit_edge
  %mst_alloc_slots.0.lcssa.i = phi i8 [ 0, %if.then85.i.for.end101.i_crit_edge ], [ %add.i, %for.body91.i.for.end101.i_crit_edge ]
  %dc102.i = getelementptr inbounds %struct.dc_link, ptr %31, i32 0, i32 35
  %108 = ptrtoint ptr %dc102.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dc102.i, align 4
  %link_index.i = getelementptr inbounds %struct.dc_link, ptr %31, i32 0, i32 3
  %110 = ptrtoint ptr %link_index.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %link_index.i, align 8
  %call103.i = call i32 @dc_process_dmub_set_mst_slots(ptr noundef %109, i32 noundef %111, i8 noundef zeroext %mst_alloc_slots.0.lcssa.i, ptr noundef nonnull %prev_mst_slots_in_use.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call103.i)
  %cmp106.not.i = icmp eq i32 %call103.i, 24
  br i1 %cmp106.not.i, label %land.rhs117.i, label %for.end101.i.do.end167.i_crit_edge

for.end101.i.do.end167.i_crit_edge:               ; preds = %for.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end167.i

land.rhs117.i:                                    ; preds = %for.end101.i
  %.b2261.i = load i1, ptr @deallocate_mst_payload.__already_done.56, align 1
  br i1 %.b2261.i, label %land.rhs117.i.if.then164.i_crit_edge, label %if.then128.i, !prof !189

land.rhs117.i.if.then164.i_crit_edge:             ; preds = %land.rhs117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then164.i

if.then128.i:                                     ; preds = %land.rhs117.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @deallocate_mst_payload.__already_done.56, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3928, i32 noundef 9, ptr noundef null) #11
  br label %if.then164.i

if.then164.i:                                     ; preds = %if.then128.i, %land.rhs117.i.if.then164.i_crit_edge
  call void @kgdb_breakpoint() #11
  br label %do.end167.i

do.end167.i:                                      ; preds = %if.then164.i, %for.end101.i.do.end167.i_crit_edge
  %conv168.i = zext i8 %mst_alloc_slots.0.lcssa.i to i32
  %112 = ptrtoint ptr %prev_mst_slots_in_use.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %prev_mst_slots_in_use.i, align 1
  %conv169.i = zext i8 %113 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %call103.i, i32 noundef %conv168.i, i32 noundef %conv169.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prev_mst_slots_in_use.i) #11
  br label %if.end170.i

if.end170.i:                                      ; preds = %do.end167.i, %if.end69.i.if.end170.i_crit_edge
  %114 = ptrtoint ptr %link_encoder.07.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %link_encoder.07.i, align 4
  %update_mst_stream_allocation_table.i = getelementptr inbounds %struct.link_encoder_funcs, ptr %115, i32 0, i32 11
  %116 = ptrtoint ptr %update_mst_stream_allocation_table.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %update_mst_stream_allocation_table.i, align 4
  call void %117(ptr noundef %link_encoder.07.i, ptr noundef %mst_stream_alloc_table.i) #11
  br i1 %cmp.i93, label %if.then174.i, label %if.end170.i.deallocate_mst_payload.exit_crit_edge

if.end170.i.deallocate_mst_payload.exit_crit_edge: ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %deallocate_mst_payload.exit

if.then174.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctx175.i = getelementptr inbounds %struct.dc_stream_state, ptr %27, i32 0, i32 32
  %118 = ptrtoint ptr %ctx175.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctx175.i, align 4
  %call176.i = call i32 @dm_helpers_dp_mst_poll_for_allocation_change_trigger(ptr noundef %119, ptr noundef %27) #11
  %120 = ptrtoint ptr %ctx175.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx175.i, align 4
  %call178.i = call zeroext i1 @dm_helpers_dp_mst_send_payload_allocation(ptr noundef %121, ptr noundef %27, i1 noundef zeroext false) #11
  br label %deallocate_mst_payload.exit

deallocate_mst_payload.exit:                      ; preds = %if.then174.i, %if.end170.i.deallocate_mst_payload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %proposed_table.i) #11
  br label %if.end25

if.end25:                                         ; preds = %deallocate_mst_payload.exit, %if.end18.if.end25_crit_edge
  %122 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %stream, align 4
  %signal27 = getelementptr inbounds %struct.dc_stream_state, ptr %123, i32 0, i32 36
  %124 = ptrtoint ptr %signal27 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %signal27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %125)
  %cmp.i95 = icmp eq i32 %125, 4
  br i1 %cmp.i95, label %if.then29, label %if.end25.if.end45_crit_edge

if.end25.if.end45_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then29:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %settings) #11
  %126 = call ptr @memset(ptr %settings, i32 0, i32 27)
  %stream_enc = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 3
  %127 = ptrtoint ptr %stream_enc to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %stream_enc, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id, align 4
  %chip_caps = getelementptr inbounds %struct.dc_link, ptr %9, i32 0, i32 45
  %131 = ptrtoint ptr %chip_caps to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %chip_caps, align 8
  %ddc = getelementptr inbounds %struct.dc_link, ptr %9, i32 0, i32 33
  %133 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ddc, align 4
  call void @dal_ddc_service_write_scdc_data(ptr noundef %134, i32 noundef 165000, i1 noundef zeroext false) #11
  %135 = trunc i16 %132 to i7
  %trunc = and i7 %135, -4
  %136 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.121)
  switch i7 %trunc, label %if.then29.if.end44_crit_edge [
    i7 8, label %if.then34
    i7 4, label %if.then42
  ]

if.then29.if.end44_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then34:                                        ; preds = %if.then29
  %call35 = call fastcc zeroext i1 @get_ext_hdmi_settings(ptr noundef %pipe_ctx, i32 noundef %130, ptr noundef nonnull %settings)
  br i1 %call35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @write_i2c_retimer_setting(ptr noundef %pipe_ctx, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %settings)
  br label %if.end44

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @write_i2c_default_retimer_setting(ptr noundef %pipe_ctx, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end44

if.then42:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @write_i2c_redriver_setting(ptr noundef %pipe_ctx, i1 noundef zeroext false)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.else, %if.then36, %if.then29.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %settings) #11
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end25.if.end45_crit_edge
  %137 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stream, align 4
  %link47 = getelementptr inbounds %struct.dc_stream_state, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %link47 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %link47, align 4
  %link_res = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 4
  %signal49 = getelementptr inbounds %struct.dc_stream_state, ptr %138, i32 0, i32 36
  %141 = ptrtoint ptr %signal49 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %signal49, align 4
  call fastcc void @disable_link(ptr noundef %140, ptr noundef %link_res, i32 noundef %142)
  %disable_stream = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 36
  %143 = ptrtoint ptr %disable_stream to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %disable_stream, align 4
  call void %144(ptr noundef %pipe_ctx) #11
  %145 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %stream, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %146, i32 0, i32 5, i32 21
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %147)
  %bf.load = load i32, ptr %flags, align 4
  %148 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool52.not = icmp eq i32 %148, 0
  br i1 %tobool52.not, label %if.end45.cleanup_crit_edge, label %if.then53

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then53:                                        ; preds = %if.end45
  %signal55 = getelementptr inbounds %struct.dc_stream_state, ptr %146, i32 0, i32 36
  %149 = ptrtoint ptr %signal55 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %signal55, align 4
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %150, label %if.then53.cleanup_crit_edge [
    i32 32, label %if.then53.if.then57_crit_edge
    i32 128, label %if.then53.if.then57_crit_edge96
    i32 64, label %if.then53.if.then57_crit_edge97
  ]

if.then53.if.then57_crit_edge97:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then53.if.then57_crit_edge96:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then53.if.then57_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then57:                                        ; preds = %if.then53.if.then57_crit_edge, %if.then53.if.then57_crit_edge96, %if.then53.if.then57_crit_edge97
  %call58 = call zeroext i1 @dp_set_dsc_enable(ptr noundef %pipe_ctx, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.then53.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_service_write_scdc_data(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @get_ext_hdmi_settings(ptr nocapture noundef readonly %pipe_ctx, i32 noundef %eng_id, ptr noundef %settings) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_bios, align 4
  %integrated_info1 = getelementptr inbounds %struct.dc_bios, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %integrated_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %integrated_info1, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_cap_info = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %gpu_cap_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpu_cap_info, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %10 = zext i32 %eng_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %eng_id, label %if.then2.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb18
    i32 3, label %sw.bb29
  ]

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %dp0_ext_hdmi_slv_addr = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 52
  %11 = ptrtoint ptr %dp0_ext_hdmi_slv_addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp0_ext_hdmi_slv_addr, align 4
  %13 = ptrtoint ptr %settings to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %settings, align 1
  %dp0_ext_hdmi_6g_reg_num = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 55
  %14 = ptrtoint ptr %dp0_ext_hdmi_6g_reg_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp0_ext_hdmi_6g_reg_num, align 4
  %reg_num = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 1
  %16 = ptrtoint ptr %reg_num to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %reg_num, align 1
  %17 = load i8, ptr %dp0_ext_hdmi_6g_reg_num, align 4
  %reg_num_6g = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 3
  %18 = ptrtoint ptr %reg_num_6g to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %reg_num_6g, align 1
  %reg_settings = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2
  %dp0_ext_hdmi_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 54
  %19 = call ptr @memmove(ptr %reg_settings, ptr %dp0_ext_hdmi_reg_settings, i32 18)
  %reg_settings_6g = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 4
  %dp0_ext_hdmi_6g_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 56
  %20 = call ptr @memmove(ptr %reg_settings_6g, ptr %dp0_ext_hdmi_6g_reg_settings, i32 6)
  br label %if.then43

sw.bb7:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %dp1_ext_hdmi_slv_addr = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 57
  %21 = ptrtoint ptr %dp1_ext_hdmi_slv_addr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp1_ext_hdmi_slv_addr, align 1
  %23 = ptrtoint ptr %settings to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %settings, align 1
  %dp1_ext_hdmi_6g_reg_num = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 60
  %24 = ptrtoint ptr %dp1_ext_hdmi_6g_reg_num to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp1_ext_hdmi_6g_reg_num, align 1
  %reg_num9 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 1
  %26 = ptrtoint ptr %reg_num9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %reg_num9, align 1
  %27 = load i8, ptr %dp1_ext_hdmi_6g_reg_num, align 1
  %reg_num_6g11 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 3
  %28 = ptrtoint ptr %reg_num_6g11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %reg_num_6g11, align 1
  %reg_settings12 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2
  %dp1_ext_hdmi_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 59
  %29 = call ptr @memmove(ptr %reg_settings12, ptr %dp1_ext_hdmi_reg_settings, i32 18)
  %reg_settings_6g15 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 4
  %dp1_ext_hdmi_6g_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 61
  %30 = call ptr @memmove(ptr %reg_settings_6g15, ptr %dp1_ext_hdmi_6g_reg_settings, i32 6)
  br label %if.then43

sw.bb18:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %dp2_ext_hdmi_slv_addr = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 62
  %31 = ptrtoint ptr %dp2_ext_hdmi_slv_addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp2_ext_hdmi_slv_addr, align 2
  %33 = ptrtoint ptr %settings to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %settings, align 1
  %dp2_ext_hdmi_6g_reg_num = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 65
  %34 = ptrtoint ptr %dp2_ext_hdmi_6g_reg_num to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dp2_ext_hdmi_6g_reg_num, align 2
  %reg_num20 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 1
  %36 = ptrtoint ptr %reg_num20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %reg_num20, align 1
  %37 = load i8, ptr %dp2_ext_hdmi_6g_reg_num, align 2
  %reg_num_6g22 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 3
  %38 = ptrtoint ptr %reg_num_6g22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %reg_num_6g22, align 1
  %reg_settings23 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2
  %dp2_ext_hdmi_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 64
  %39 = call ptr @memmove(ptr %reg_settings23, ptr %dp2_ext_hdmi_reg_settings, i32 18)
  %reg_settings_6g26 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 4
  %dp2_ext_hdmi_6g_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 66
  %40 = call ptr @memmove(ptr %reg_settings_6g26, ptr %dp2_ext_hdmi_6g_reg_settings, i32 6)
  br label %if.then43

sw.bb29:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %dp3_ext_hdmi_slv_addr = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 67
  %41 = ptrtoint ptr %dp3_ext_hdmi_slv_addr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dp3_ext_hdmi_slv_addr, align 1
  %43 = ptrtoint ptr %settings to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %settings, align 1
  %dp3_ext_hdmi_6g_reg_num = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 70
  %44 = ptrtoint ptr %dp3_ext_hdmi_6g_reg_num to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dp3_ext_hdmi_6g_reg_num, align 1
  %reg_num31 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 1
  %46 = ptrtoint ptr %reg_num31 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %reg_num31, align 1
  %47 = load i8, ptr %dp3_ext_hdmi_6g_reg_num, align 1
  %reg_num_6g33 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 3
  %48 = ptrtoint ptr %reg_num_6g33 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %reg_num_6g33, align 1
  %reg_settings34 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2
  %dp3_ext_hdmi_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 69
  %49 = call ptr @memmove(ptr %reg_settings34, ptr %dp3_ext_hdmi_reg_settings, i32 18)
  %reg_settings_6g37 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 4
  %dp3_ext_hdmi_6g_reg_settings = getelementptr inbounds %struct.integrated_info, ptr %7, i32 0, i32 71
  %50 = call ptr @memmove(ptr %reg_settings_6g37, ptr %dp3_ext_hdmi_6g_reg_settings, i32 6)
  br label %if.then43

if.then43:                                        ; preds = %sw.bb29, %sw.bb18, %sw.bb7, %sw.bb
  %51 = ptrtoint ptr %settings to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %settings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp46 = icmp eq i8 %52, 0
  br i1 %cmp46, label %if.then43.cleanup_crit_edge, label %if.end49

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.then43
  %reg_num50 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 1
  %53 = ptrtoint ptr %reg_num50 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reg_num50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %54)
  %cmp52 = icmp ugt i8 %54, 9
  br i1 %cmp52, label %if.end49.cleanup_crit_edge, label %if.end55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %reg_num_6g56 = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 3
  %55 = ptrtoint ptr %reg_num_6g56 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reg_num_6g56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %56)
  %cmp58 = icmp ugt i8 %56, 3
  br i1 %cmp58, label %if.end55.cleanup_crit_edge, label %for.cond.preheader

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end55
  %conv63 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp64151.not = icmp eq i8 %54, 0
  br i1 %cmp64151.not, label %for.cond.preheader.for.cond72.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond72.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond72.preheader

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, %conv63
  br i1 %exitcond.not, label %for.cond.for.cond72.preheader_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.cond72.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond72.preheader

for.cond72.preheader:                             ; preds = %for.cond.for.cond72.preheader_crit_edge, %for.cond.preheader.for.cond72.preheader_crit_edge
  %conv74 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp75153.not = icmp eq i8 %56, 0
  br i1 %cmp75153.not, label %for.cond72.preheader.cleanup_crit_edge, label %for.cond72.preheader.for.body77_crit_edge

for.cond72.preheader.for.body77_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body77

for.cond72.preheader.cleanup_crit_edge:           ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0152 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2, i32 %i.0152
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %58)
  %cmp68 = icmp ugt i8 %58, 32
  br i1 %cmp68, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %for.cond72.preheader.for.body77_crit_edge
  %i.1154 = phi i32 [ %inc87, %for.body77.for.body77_crit_edge ], [ 0, %for.cond72.preheader.for.body77_crit_edge ]
  %arrayidx79 = getelementptr %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 4, i32 %i.1154
  %59 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %60)
  %cmp82 = icmp ugt i8 %60, 32
  %inc87 = add nuw nsw i32 %i.1154, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc87, i32 %conv74)
  %exitcond157.not = icmp eq i32 %inc87, %conv74
  %or.cond = select i1 %cmp82, i1 true, i1 %exitcond157.not
  br i1 %or.cond, label %cleanup.loopexit, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body77

cleanup.loopexit:                                 ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #13
  %61 = xor i1 %cmp82, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.cleanup_crit_edge, %for.cond72.preheader.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.then43.cleanup_crit_edge ], [ false, %if.end49.cleanup_crit_edge ], [ false, %if.end55.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then2.cleanup_crit_edge ], [ true, %for.cond72.preheader.cleanup_crit_edge ], [ %61, %cleanup.loopexit ], [ false, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_i2c_retimer_setting(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %is_vga_mode, i1 noundef zeroext %is_over_340mhz, ptr nocapture noundef readonly %settings) unnamed_addr #0 align 64 {
entry:
  %cmd.i382 = alloca %struct.i2c_command, align 4
  %payload.i383 = alloca %struct.i2c_payload, align 4
  %cmd.i369 = alloca %struct.i2c_command, align 4
  %payload.i370 = alloca %struct.i2c_payload, align 4
  %cmd.i356 = alloca %struct.i2c_command, align 4
  %payload.i357 = alloca %struct.i2c_payload, align 4
  %cmd.i343 = alloca %struct.i2c_command, align 4
  %payload.i344 = alloca %struct.i2c_payload, align 4
  %cmd.i330 = alloca %struct.i2c_command, align 4
  %payload.i331 = alloca %struct.i2c_payload, align 4
  %cmd.i317 = alloca %struct.i2c_command, align 4
  %payload.i318 = alloca %struct.i2c_payload, align 4
  %cmd.i = alloca %struct.i2c_command, align 4
  %payload.i = alloca %struct.i2c_payload, align 4
  %buffer = alloca [2 x i8], align 2
  %offset = alloca i8, align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %settings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %settings, align 1
  %2 = lshr i8 %1, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #11
  %3 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset) #11
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %offset, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #11
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %value, align 1
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %buffer, align 2
  %reg_num = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 1
  %7 = ptrtoint ptr %reg_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp397.not = icmp eq i8 %8, 0
  br i1 %cmp397.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %9 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %engine.i = getelementptr inbounds %struct.i2c_command, ptr %cmd.i, i32 0, i32 2
  %stream.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %speed.i = getelementptr inbounds %struct.i2c_command, ptr %cmd.i, i32 0, i32 3
  %address1.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 3
  %length2.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 2
  %conv16 = zext i8 %2 to i32
  %10 = getelementptr inbounds i8, ptr %cmd.i317, i32 4
  %engine.i320 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i317, i32 0, i32 2
  %speed.i324 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i317, i32 0, i32 3
  %address1.i325 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i318, i32 0, i32 1
  %data.i326 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i318, i32 0, i32 3
  %length2.i327 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i318, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0398 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2, i32 %i.0398
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %12)
  %cmp6 = icmp ult i8 %12, 33
  br i1 %cmp6, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %buffer, align 2
  %i2c_reg_val = getelementptr %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2, i32 %i.0398, i32 1
  %14 = ptrtoint ptr %i2c_reg_val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_reg_val, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i) #11
  %17 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %payload.i, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16777216, ptr %9, align 4
  %19 = ptrtoint ptr %engine.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %engine.i, align 4
  %20 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.i, align 4
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 32
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %25, i32 0, i32 2, i32 8
  %26 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i2c_speed_in_khz.i, align 4
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %speed.i, align 4
  %29 = ptrtoint ptr %address1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %2, ptr %address1.i, align 1
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buffer, ptr %data.i, align 4
  %31 = ptrtoint ptr %length2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %length2.i, align 4
  store i8 1, ptr %payload.i, align 4
  %32 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %payload.i, ptr %cmd.i, align 4
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %33 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link.i, align 4
  %call.i = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %23, ptr noundef %34, ptr noundef nonnull %cmd.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buffer, align 2
  %conv18 = zext i8 %36 to i32
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 1
  %conv20 = zext i8 %38 to i32
  %cond = zext i1 %call.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.57, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %cond) #11
  br i1 %call.i, label %if.end, label %if.then.i2c_write_fail_crit_edge

if.then.i2c_write_fail_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end:                                           ; preds = %if.then
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %.off = add i8 %40, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then43, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %40)
  %cmp48 = icmp eq i8 %40, 10
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %i2c_reg_val to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i2c_reg_val, align 1
  %43 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %value, align 1
  br label %if.end60

if.else:                                          ; preds = %if.then43
  %44 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream.i, align 4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link, align 4
  %ddc = getelementptr inbounds %struct.dc_link, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ddc, align 4
  %call55 = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %49, i32 noundef %conv16, ptr noundef nonnull %offset, i32 noundef 1, ptr noundef nonnull %value, i32 noundef 1) #11
  br i1 %call55, label %if.else.if.end60_crit_edge, label %if.else.i2c_write_fail_crit_edge

if.else.i2c_write_fail_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.end60:                                         ; preds = %if.else.if.end60_crit_edge, %if.then50
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %offset, align 1
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %buffer, align 2
  %53 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %value, align 1
  %55 = or i8 %54, 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i317) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i318) #11
  %57 = ptrtoint ptr %payload.i318 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %payload.i318, align 4
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16777216, ptr %10, align 4
  %59 = ptrtoint ptr %engine.i320 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %engine.i320, align 4
  %60 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stream.i, align 4
  %ctx.i322 = getelementptr inbounds %struct.dc_stream_state, ptr %61, i32 0, i32 32
  %62 = ptrtoint ptr %ctx.i322 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx.i322, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %i2c_speed_in_khz.i323 = getelementptr inbounds %struct.dc, ptr %65, i32 0, i32 2, i32 8
  %66 = ptrtoint ptr %i2c_speed_in_khz.i323 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i2c_speed_in_khz.i323, align 4
  %68 = ptrtoint ptr %speed.i324 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %speed.i324, align 4
  %69 = ptrtoint ptr %address1.i325 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %2, ptr %address1.i325, align 1
  %70 = ptrtoint ptr %data.i326 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buffer, ptr %data.i326, align 4
  %71 = ptrtoint ptr %length2.i327 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %length2.i327, align 4
  store i8 1, ptr %payload.i318, align 4
  %72 = ptrtoint ptr %cmd.i317 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %payload.i318, ptr %cmd.i317, align 4
  %link.i328 = getelementptr inbounds %struct.dc_stream_state, ptr %61, i32 0, i32 1
  %73 = ptrtoint ptr %link.i328 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %link.i328, align 4
  %call.i329 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %63, ptr noundef %74, ptr noundef nonnull %cmd.i317) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i318) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i317) #11
  %75 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %buffer, align 2
  %conv70 = zext i8 %76 to i32
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %3, align 1
  %conv72 = zext i8 %78 to i32
  %cond75 = zext i1 %call.i329 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.58, i32 noundef %conv16, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %cond75) #11
  br i1 %call.i329, label %if.end60.for.inc_crit_edge, label %if.end60.i2c_write_fail_crit_edge

if.end60.i2c_write_fail_crit_edge:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end60.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0398, 1
  %79 = ptrtoint ptr %reg_num to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %reg_num, align 1
  %conv3 = zext i8 %80 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  br i1 %is_over_340mhz, label %for.cond83.preheader, label %for.end.if.end182_crit_edge

for.end.if.end182_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

for.cond83.preheader:                             ; preds = %for.end
  %reg_num_6g = getelementptr inbounds %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 3
  %81 = ptrtoint ptr %reg_num_6g to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %reg_num_6g, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp85401.not = icmp eq i8 %82, 0
  br i1 %cmp85401.not, label %for.cond83.preheader.if.end182_crit_edge, label %for.body87.lr.ph

for.cond83.preheader.if.end182_crit_edge:         ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

for.body87.lr.ph:                                 ; preds = %for.cond83.preheader
  %83 = getelementptr inbounds i8, ptr %cmd.i330, i32 4
  %engine.i333 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i330, i32 0, i32 2
  %stream.i334 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %speed.i337 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i330, i32 0, i32 3
  %address1.i338 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i331, i32 0, i32 1
  %data.i339 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i331, i32 0, i32 3
  %length2.i340 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i331, i32 0, i32 2
  %conv105 = zext i8 %2 to i32
  %84 = getelementptr inbounds i8, ptr %cmd.i343, i32 4
  %engine.i346 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i343, i32 0, i32 2
  %speed.i350 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i343, i32 0, i32 3
  %address1.i351 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i344, i32 0, i32 1
  %data.i352 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i344, i32 0, i32 3
  %length2.i353 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i344, i32 0, i32 2
  br label %for.body87

for.body87:                                       ; preds = %for.inc179.for.body87_crit_edge, %for.body87.lr.ph
  %i.1402 = phi i32 [ 0, %for.body87.lr.ph ], [ %inc180, %for.inc179.for.body87_crit_edge ]
  %arrayidx89 = getelementptr %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 2, i32 %i.1402
  %85 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %86)
  %cmp92 = icmp ult i8 %86, 33
  br i1 %cmp92, label %if.then94, label %for.body87.for.inc179_crit_edge

for.body87.for.inc179_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc179

if.then94:                                        ; preds = %for.body87
  %arrayidx95 = getelementptr %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 4, i32 %i.1402
  %87 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx95, align 1
  %89 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %buffer, align 2
  %i2c_reg_val100 = getelementptr %struct.ext_hdmi_settings, ptr %settings, i32 0, i32 4, i32 %i.1402, i32 1
  %90 = ptrtoint ptr %i2c_reg_val100 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i2c_reg_val100, align 1
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i330) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i331) #11
  %93 = ptrtoint ptr %payload.i331 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %payload.i331, align 4
  %94 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 16777216, ptr %83, align 4
  %95 = ptrtoint ptr %engine.i333 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %engine.i333, align 4
  %96 = ptrtoint ptr %stream.i334 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %stream.i334, align 4
  %ctx.i335 = getelementptr inbounds %struct.dc_stream_state, ptr %97, i32 0, i32 32
  %98 = ptrtoint ptr %ctx.i335 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx.i335, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %i2c_speed_in_khz.i336 = getelementptr inbounds %struct.dc, ptr %101, i32 0, i32 2, i32 8
  %102 = ptrtoint ptr %i2c_speed_in_khz.i336 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i2c_speed_in_khz.i336, align 4
  %104 = ptrtoint ptr %speed.i337 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %speed.i337, align 4
  %105 = ptrtoint ptr %address1.i338 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %2, ptr %address1.i338, align 1
  %106 = ptrtoint ptr %data.i339 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buffer, ptr %data.i339, align 4
  %107 = ptrtoint ptr %length2.i340 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %length2.i340, align 4
  store i8 1, ptr %payload.i331, align 4
  %108 = ptrtoint ptr %cmd.i330 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %payload.i331, ptr %cmd.i330, align 4
  %link.i341 = getelementptr inbounds %struct.dc_stream_state, ptr %97, i32 0, i32 1
  %109 = ptrtoint ptr %link.i341 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %link.i341, align 4
  %call.i342 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %99, ptr noundef %110, ptr noundef nonnull %cmd.i330) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i331) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i330) #11
  %111 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %buffer, align 2
  %conv107 = zext i8 %112 to i32
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %3, align 1
  %conv109 = zext i8 %114 to i32
  %cond112 = zext i1 %call.i342 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %conv109, i32 noundef %cond112) #11
  br i1 %call.i342, label %if.end115, label %if.then94.i2c_write_fail_crit_edge

if.then94.i2c_write_fail_crit_edge:               ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end115:                                        ; preds = %if.then94
  %115 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx95, align 1
  %.off315 = add i8 %116, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off315)
  %switch316 = icmp ult i8 %.off315, 3
  br i1 %switch316, label %if.then136, label %if.end115.for.inc179_crit_edge

if.end115.for.inc179_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc179

if.then136:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %116)
  %cmp141 = icmp eq i8 %116, 10
  br i1 %cmp141, label %if.then143, label %if.else147

if.then143:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %i2c_reg_val100 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %i2c_reg_val100, align 1
  %119 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %value, align 1
  br label %if.end157

if.else147:                                       ; preds = %if.then136
  %120 = ptrtoint ptr %stream.i334 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %stream.i334, align 4
  %link149 = getelementptr inbounds %struct.dc_stream_state, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %link149 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %link149, align 4
  %ddc150 = getelementptr inbounds %struct.dc_link, ptr %123, i32 0, i32 33
  %124 = ptrtoint ptr %ddc150 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ddc150, align 4
  %call152 = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %125, i32 noundef %conv105, ptr noundef nonnull %offset, i32 noundef 1, ptr noundef nonnull %value, i32 noundef 1) #11
  br i1 %call152, label %if.else147.if.end157_crit_edge, label %if.else147.i2c_write_fail_crit_edge

if.else147.i2c_write_fail_crit_edge:              ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.else147.if.end157_crit_edge:                   ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.end157:                                        ; preds = %if.else147.if.end157_crit_edge, %if.then143
  %126 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %offset, align 1
  %128 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %buffer, align 2
  %129 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %value, align 1
  %131 = or i8 %130, 4
  %132 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i343) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i344) #11
  %133 = ptrtoint ptr %payload.i344 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %payload.i344, align 4
  %134 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 16777216, ptr %84, align 4
  %135 = ptrtoint ptr %engine.i346 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %engine.i346, align 4
  %136 = ptrtoint ptr %stream.i334 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %stream.i334, align 4
  %ctx.i348 = getelementptr inbounds %struct.dc_stream_state, ptr %137, i32 0, i32 32
  %138 = ptrtoint ptr %ctx.i348 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx.i348, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %i2c_speed_in_khz.i349 = getelementptr inbounds %struct.dc, ptr %141, i32 0, i32 2, i32 8
  %142 = ptrtoint ptr %i2c_speed_in_khz.i349 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i2c_speed_in_khz.i349, align 4
  %144 = ptrtoint ptr %speed.i350 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %speed.i350, align 4
  %145 = ptrtoint ptr %address1.i351 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %2, ptr %address1.i351, align 1
  %146 = ptrtoint ptr %data.i352 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buffer, ptr %data.i352, align 4
  %147 = ptrtoint ptr %length2.i353 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %length2.i353, align 4
  store i8 1, ptr %payload.i344, align 4
  %148 = ptrtoint ptr %cmd.i343 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %payload.i344, ptr %cmd.i343, align 4
  %link.i354 = getelementptr inbounds %struct.dc_stream_state, ptr %137, i32 0, i32 1
  %149 = ptrtoint ptr %link.i354 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %link.i354, align 4
  %call.i355 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %139, ptr noundef %150, ptr noundef nonnull %cmd.i343) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i344) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i343) #11
  %151 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %buffer, align 2
  %conv168 = zext i8 %152 to i32
  %153 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %3, align 1
  %conv170 = zext i8 %154 to i32
  %cond173 = zext i1 %call.i355 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %conv105, i32 noundef %conv168, i32 noundef %conv170, i32 noundef %cond173) #11
  br i1 %call.i355, label %if.end157.for.inc179_crit_edge, label %if.end157.i2c_write_fail_crit_edge

if.end157.i2c_write_fail_crit_edge:               ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end157.for.inc179_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc179

for.inc179:                                       ; preds = %if.end157.for.inc179_crit_edge, %if.end115.for.inc179_crit_edge, %for.body87.for.inc179_crit_edge
  %inc180 = add nuw nsw i32 %i.1402, 1
  %155 = ptrtoint ptr %reg_num_6g to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %reg_num_6g, align 1
  %conv84 = zext i8 %156 to i32
  %cmp85 = icmp ult i32 %inc180, %conv84
  br i1 %cmp85, label %for.inc179.for.body87_crit_edge, label %for.inc179.if.end182_crit_edge

for.inc179.if.end182_crit_edge:                   ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

for.inc179.for.body87_crit_edge:                  ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body87

if.end182:                                        ; preds = %for.inc179.if.end182_crit_edge, %for.cond83.preheader.if.end182_crit_edge, %for.end.if.end182_crit_edge
  br i1 %is_vga_mode, label %if.then184, label %if.end182.cleanup_crit_edge

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then184:                                       ; preds = %if.end182
  %157 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -1, ptr %buffer, align 2
  %158 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i356) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i357) #11
  %159 = ptrtoint ptr %payload.i357 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16777216, ptr %payload.i357, align 4
  %160 = getelementptr inbounds i8, ptr %cmd.i356, i32 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 16777216, ptr %160, align 4
  %engine.i359 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i356, i32 0, i32 2
  %162 = ptrtoint ptr %engine.i359 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %engine.i359, align 4
  %stream.i360 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %163 = ptrtoint ptr %stream.i360 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %stream.i360, align 4
  %ctx.i361 = getelementptr inbounds %struct.dc_stream_state, ptr %164, i32 0, i32 32
  %165 = ptrtoint ptr %ctx.i361 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctx.i361, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 8
  %i2c_speed_in_khz.i362 = getelementptr inbounds %struct.dc, ptr %168, i32 0, i32 2, i32 8
  %169 = ptrtoint ptr %i2c_speed_in_khz.i362 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %i2c_speed_in_khz.i362, align 4
  %speed.i363 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i356, i32 0, i32 3
  %171 = ptrtoint ptr %speed.i363 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %speed.i363, align 4
  %address1.i364 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i357, i32 0, i32 1
  %172 = ptrtoint ptr %address1.i364 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %2, ptr %address1.i364, align 1
  %data.i365 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i357, i32 0, i32 3
  %173 = ptrtoint ptr %data.i365 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %buffer, ptr %data.i365, align 4
  %length2.i366 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i357, i32 0, i32 2
  %174 = ptrtoint ptr %length2.i366 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 2, ptr %length2.i366, align 4
  %175 = ptrtoint ptr %cmd.i356 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %payload.i357, ptr %cmd.i356, align 4
  %link.i367 = getelementptr inbounds %struct.dc_stream_state, ptr %164, i32 0, i32 1
  %176 = ptrtoint ptr %link.i367 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %link.i367, align 4
  %call.i368 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %166, ptr noundef %177, ptr noundef nonnull %cmd.i356) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i357) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i356) #11
  %conv190 = zext i8 %2 to i32
  %178 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %buffer, align 2
  %conv192 = zext i8 %179 to i32
  %180 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %3, align 1
  %conv194 = zext i8 %181 to i32
  %cond197 = zext i1 %call.i368 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %conv190, i32 noundef %conv192, i32 noundef %conv194, i32 noundef %cond197) #11
  br i1 %call.i368, label %if.end200, label %if.then184.i2c_write_fail_crit_edge

if.then184.i2c_write_fail_crit_edge:              ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end200:                                        ; preds = %if.then184
  %182 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %buffer, align 2
  %183 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 35, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i369) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i370) #11
  %184 = ptrtoint ptr %payload.i370 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 16777216, ptr %payload.i370, align 4
  %185 = getelementptr inbounds i8, ptr %cmd.i369, i32 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 16777216, ptr %185, align 4
  %engine.i372 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i369, i32 0, i32 2
  %187 = ptrtoint ptr %engine.i372 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %engine.i372, align 4
  %188 = ptrtoint ptr %stream.i360 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %stream.i360, align 4
  %ctx.i374 = getelementptr inbounds %struct.dc_stream_state, ptr %189, i32 0, i32 32
  %190 = ptrtoint ptr %ctx.i374 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ctx.i374, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 8
  %i2c_speed_in_khz.i375 = getelementptr inbounds %struct.dc, ptr %193, i32 0, i32 2, i32 8
  %194 = ptrtoint ptr %i2c_speed_in_khz.i375 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %i2c_speed_in_khz.i375, align 4
  %speed.i376 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i369, i32 0, i32 3
  %196 = ptrtoint ptr %speed.i376 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %speed.i376, align 4
  %address1.i377 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i370, i32 0, i32 1
  %197 = ptrtoint ptr %address1.i377 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %2, ptr %address1.i377, align 1
  %data.i378 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i370, i32 0, i32 3
  %198 = ptrtoint ptr %data.i378 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %buffer, ptr %data.i378, align 4
  %length2.i379 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i370, i32 0, i32 2
  %199 = ptrtoint ptr %length2.i379 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 2, ptr %length2.i379, align 4
  %200 = ptrtoint ptr %cmd.i369 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %payload.i370, ptr %cmd.i369, align 4
  %link.i380 = getelementptr inbounds %struct.dc_stream_state, ptr %189, i32 0, i32 1
  %201 = ptrtoint ptr %link.i380 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %link.i380, align 4
  %call.i381 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %191, ptr noundef %202, ptr noundef nonnull %cmd.i369) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i370) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i369) #11
  %203 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %buffer, align 2
  %conv208 = zext i8 %204 to i32
  %205 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %3, align 1
  %conv210 = zext i8 %206 to i32
  %cond213 = zext i1 %call.i381 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.62, i32 noundef %conv190, i32 noundef %conv208, i32 noundef %conv210, i32 noundef %cond213) #11
  br i1 %call.i381, label %if.end216, label %if.end200.i2c_write_fail_crit_edge

if.end200.i2c_write_fail_crit_edge:               ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end216:                                        ; preds = %if.end200
  %207 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -1, ptr %buffer, align 2
  %208 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i382) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i383) #11
  %209 = ptrtoint ptr %payload.i383 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 16777216, ptr %payload.i383, align 4
  %210 = getelementptr inbounds i8, ptr %cmd.i382, i32 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 16777216, ptr %210, align 4
  %engine.i385 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i382, i32 0, i32 2
  %212 = ptrtoint ptr %engine.i385 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %engine.i385, align 4
  %213 = ptrtoint ptr %stream.i360 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %stream.i360, align 4
  %ctx.i387 = getelementptr inbounds %struct.dc_stream_state, ptr %214, i32 0, i32 32
  %215 = ptrtoint ptr %ctx.i387 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ctx.i387, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 8
  %i2c_speed_in_khz.i388 = getelementptr inbounds %struct.dc, ptr %218, i32 0, i32 2, i32 8
  %219 = ptrtoint ptr %i2c_speed_in_khz.i388 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %i2c_speed_in_khz.i388, align 4
  %speed.i389 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i382, i32 0, i32 3
  %221 = ptrtoint ptr %speed.i389 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %speed.i389, align 4
  %address1.i390 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i383, i32 0, i32 1
  %222 = ptrtoint ptr %address1.i390 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %2, ptr %address1.i390, align 1
  %data.i391 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i383, i32 0, i32 3
  %223 = ptrtoint ptr %data.i391 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %buffer, ptr %data.i391, align 4
  %length2.i392 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i383, i32 0, i32 2
  %224 = ptrtoint ptr %length2.i392 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 2, ptr %length2.i392, align 4
  %225 = ptrtoint ptr %cmd.i382 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %payload.i383, ptr %cmd.i382, align 4
  %link.i393 = getelementptr inbounds %struct.dc_stream_state, ptr %214, i32 0, i32 1
  %226 = ptrtoint ptr %link.i393 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %link.i393, align 4
  %call.i394 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %216, ptr noundef %227, ptr noundef nonnull %cmd.i382) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i383) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i382) #11
  %228 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %buffer, align 2
  %conv224 = zext i8 %229 to i32
  %230 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %3, align 1
  %conv226 = zext i8 %231 to i32
  %cond229 = zext i1 %call.i394 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.62, i32 noundef %conv190, i32 noundef %conv224, i32 noundef %conv226, i32 noundef %cond229) #11
  br i1 %call.i394, label %if.end216.cleanup_crit_edge, label %if.end216.i2c_write_fail_crit_edge

if.end216.i2c_write_fail_crit_edge:               ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end216.cleanup_crit_edge:                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

i2c_write_fail:                                   ; preds = %if.end216.i2c_write_fail_crit_edge, %if.end200.i2c_write_fail_crit_edge, %if.then184.i2c_write_fail_crit_edge, %if.end157.i2c_write_fail_crit_edge, %if.else147.i2c_write_fail_crit_edge, %if.then94.i2c_write_fail_crit_edge, %if.end60.i2c_write_fail_crit_edge, %if.else.i2c_write_fail_crit_edge, %if.then.i2c_write_fail_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.63) #11
  br label %cleanup

cleanup:                                          ; preds = %i2c_write_fail, %if.end216.cleanup_crit_edge, %if.end182.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_i2c_default_retimer_setting(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %is_vga_mode, i1 noundef zeroext %is_over_340mhz) unnamed_addr #0 align 64 {
entry:
  %cmd.i246 = alloca %struct.i2c_command, align 4
  %payload.i247 = alloca %struct.i2c_payload, align 4
  %cmd.i233 = alloca %struct.i2c_command, align 4
  %payload.i234 = alloca %struct.i2c_payload, align 4
  %cmd.i220 = alloca %struct.i2c_command, align 4
  %payload.i221 = alloca %struct.i2c_payload, align 4
  %cmd.i207 = alloca %struct.i2c_command, align 4
  %payload.i208 = alloca %struct.i2c_payload, align 4
  %cmd.i194 = alloca %struct.i2c_command, align 4
  %payload.i195 = alloca %struct.i2c_payload, align 4
  %cmd.i = alloca %struct.i2c_command, align 4
  %payload.i = alloca %struct.i2c_payload, align 4
  %buffer = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #11
  %0 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2579, ptr %buffer, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i) #11
  %2 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 22872064, ptr %payload.i, align 4
  %3 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %3, align 4
  %engine.i = getelementptr inbounds %struct.i2c_command, ptr %cmd.i, i32 0, i32 2
  %5 = ptrtoint ptr %engine.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %engine.i, align 4
  %stream.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream.i, align 4
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %11, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i2c_speed_in_khz.i, align 4
  %speed.i = getelementptr inbounds %struct.i2c_command, ptr %cmd.i, i32 0, i32 3
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %speed.i, align 4
  %data.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 3
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buffer, ptr %data.i, align 4
  %length2.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 2
  %16 = ptrtoint ptr %length2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %length2.i, align 4
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %payload.i, ptr %cmd.i, align 4
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.i, align 4
  %call.i = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %9, ptr noundef %19, ptr noundef nonnull %cmd.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buffer, align 2
  %conv5 = zext i8 %21 to i32
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 1
  %conv7 = zext i8 %23 to i32
  %cond = zext i1 %call.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef 93, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %cond) #11
  br i1 %call.i, label %if.end, label %entry.i2c_write_fail_crit_edge

entry.i2c_write_fail_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %buffer, align 2
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 23, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i194) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i195) #11
  %26 = ptrtoint ptr %payload.i195 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 22872064, ptr %payload.i195, align 4
  %27 = getelementptr inbounds i8, ptr %cmd.i194, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16777216, ptr %27, align 4
  %engine.i197 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i194, i32 0, i32 2
  %29 = ptrtoint ptr %engine.i197 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %engine.i197, align 4
  %30 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stream.i, align 4
  %ctx.i199 = getelementptr inbounds %struct.dc_stream_state, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %ctx.i199 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i199, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %i2c_speed_in_khz.i200 = getelementptr inbounds %struct.dc, ptr %35, i32 0, i32 2, i32 8
  %36 = ptrtoint ptr %i2c_speed_in_khz.i200 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i2c_speed_in_khz.i200, align 4
  %speed.i201 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i194, i32 0, i32 3
  %38 = ptrtoint ptr %speed.i201 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %speed.i201, align 4
  %data.i203 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i195, i32 0, i32 3
  %39 = ptrtoint ptr %data.i203 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buffer, ptr %data.i203, align 4
  %length2.i204 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i195, i32 0, i32 2
  %40 = ptrtoint ptr %length2.i204 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %length2.i204, align 4
  %41 = ptrtoint ptr %cmd.i194 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %payload.i195, ptr %cmd.i194, align 4
  %link.i205 = getelementptr inbounds %struct.dc_stream_state, ptr %31, i32 0, i32 1
  %42 = ptrtoint ptr %link.i205 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link.i205, align 4
  %call.i206 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %33, ptr noundef %43, ptr noundef nonnull %cmd.i194) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i195) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i194) #11
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buffer, align 2
  %conv17 = zext i8 %45 to i32
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %0, align 1
  %conv19 = zext i8 %47 to i32
  %cond22 = zext i1 %call.i206 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef 93, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %cond22) #11
  br i1 %call.i206, label %if.end25, label %if.end.i2c_write_fail_crit_edge

if.end.i2c_write_fail_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end25:                                         ; preds = %if.end
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 11, ptr %buffer, align 2
  %conv30 = select i1 %is_over_340mhz, i8 -38, i8 -40
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv30, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i207) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i208) #11
  %50 = ptrtoint ptr %payload.i208 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 22872064, ptr %payload.i208, align 4
  %51 = getelementptr inbounds i8, ptr %cmd.i207, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16777216, ptr %51, align 4
  %engine.i210 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i207, i32 0, i32 2
  %53 = ptrtoint ptr %engine.i210 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %engine.i210, align 4
  %54 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stream.i, align 4
  %ctx.i212 = getelementptr inbounds %struct.dc_stream_state, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %ctx.i212 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx.i212, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %i2c_speed_in_khz.i213 = getelementptr inbounds %struct.dc, ptr %59, i32 0, i32 2, i32 8
  %60 = ptrtoint ptr %i2c_speed_in_khz.i213 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i2c_speed_in_khz.i213, align 4
  %speed.i214 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i207, i32 0, i32 3
  %62 = ptrtoint ptr %speed.i214 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %speed.i214, align 4
  %data.i216 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i208, i32 0, i32 3
  %63 = ptrtoint ptr %data.i216 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buffer, ptr %data.i216, align 4
  %length2.i217 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i208, i32 0, i32 2
  %64 = ptrtoint ptr %length2.i217 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %length2.i217, align 4
  %65 = ptrtoint ptr %cmd.i207 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %payload.i208, ptr %cmd.i207, align 4
  %link.i218 = getelementptr inbounds %struct.dc_stream_state, ptr %55, i32 0, i32 1
  %66 = ptrtoint ptr %link.i218 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link.i218, align 4
  %call.i219 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %57, ptr noundef %67, ptr noundef nonnull %cmd.i207) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i208) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i207) #11
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %buffer, align 2
  %conv37 = zext i8 %69 to i32
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %0, align 1
  %conv39 = zext i8 %71 to i32
  %cond42 = zext i1 %call.i219 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef 93, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %cond42) #11
  br i1 %call.i219, label %if.end45, label %if.end25.i2c_write_fail_crit_edge

if.end25.i2c_write_fail_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end45:                                         ; preds = %if.end25
  %72 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 10, ptr %buffer, align 2
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 23, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i220) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i221) #11
  %74 = ptrtoint ptr %payload.i221 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 22872064, ptr %payload.i221, align 4
  %75 = getelementptr inbounds i8, ptr %cmd.i220, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 16777216, ptr %75, align 4
  %engine.i223 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i220, i32 0, i32 2
  %77 = ptrtoint ptr %engine.i223 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %engine.i223, align 4
  %78 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %stream.i, align 4
  %ctx.i225 = getelementptr inbounds %struct.dc_stream_state, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %ctx.i225 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx.i225, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %i2c_speed_in_khz.i226 = getelementptr inbounds %struct.dc, ptr %83, i32 0, i32 2, i32 8
  %84 = ptrtoint ptr %i2c_speed_in_khz.i226 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i2c_speed_in_khz.i226, align 4
  %speed.i227 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i220, i32 0, i32 3
  %86 = ptrtoint ptr %speed.i227 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %speed.i227, align 4
  %data.i229 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i221, i32 0, i32 3
  %87 = ptrtoint ptr %data.i229 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buffer, ptr %data.i229, align 4
  %length2.i230 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i221, i32 0, i32 2
  %88 = ptrtoint ptr %length2.i230 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %length2.i230, align 4
  %89 = ptrtoint ptr %cmd.i220 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %payload.i221, ptr %cmd.i220, align 4
  %link.i231 = getelementptr inbounds %struct.dc_stream_state, ptr %79, i32 0, i32 1
  %90 = ptrtoint ptr %link.i231 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %link.i231, align 4
  %call.i232 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %81, ptr noundef %91, ptr noundef nonnull %cmd.i220) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i221) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i220) #11
  %92 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %buffer, align 2
  %conv53 = zext i8 %93 to i32
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %0, align 1
  %conv55 = zext i8 %95 to i32
  %cond58 = zext i1 %call.i232 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef 93, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %cond58) #11
  br i1 %call.i232, label %if.end61, label %if.end45.i2c_write_fail_crit_edge

if.end45.i2c_write_fail_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end61:                                         ; preds = %if.end45
  %96 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 12, ptr %buffer, align 2
  %conv66 = select i1 %is_over_340mhz, i8 29, i8 -111
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv66, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i233) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i234) #11
  %98 = ptrtoint ptr %payload.i234 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 22872064, ptr %payload.i234, align 4
  %99 = getelementptr inbounds i8, ptr %cmd.i233, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 16777216, ptr %99, align 4
  %engine.i236 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i233, i32 0, i32 2
  %101 = ptrtoint ptr %engine.i236 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %engine.i236, align 4
  %102 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %stream.i, align 4
  %ctx.i238 = getelementptr inbounds %struct.dc_stream_state, ptr %103, i32 0, i32 32
  %104 = ptrtoint ptr %ctx.i238 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctx.i238, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %i2c_speed_in_khz.i239 = getelementptr inbounds %struct.dc, ptr %107, i32 0, i32 2, i32 8
  %108 = ptrtoint ptr %i2c_speed_in_khz.i239 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i2c_speed_in_khz.i239, align 4
  %speed.i240 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i233, i32 0, i32 3
  %110 = ptrtoint ptr %speed.i240 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %speed.i240, align 4
  %data.i242 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i234, i32 0, i32 3
  %111 = ptrtoint ptr %data.i242 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buffer, ptr %data.i242, align 4
  %length2.i243 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i234, i32 0, i32 2
  %112 = ptrtoint ptr %length2.i243 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %length2.i243, align 4
  %113 = ptrtoint ptr %cmd.i233 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %payload.i234, ptr %cmd.i233, align 4
  %link.i244 = getelementptr inbounds %struct.dc_stream_state, ptr %103, i32 0, i32 1
  %114 = ptrtoint ptr %link.i244 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %link.i244, align 4
  %call.i245 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %105, ptr noundef %115, ptr noundef nonnull %cmd.i233) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i234) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i233) #11
  %116 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %buffer, align 2
  %conv73 = zext i8 %117 to i32
  %118 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %0, align 1
  %conv75 = zext i8 %119 to i32
  %cond78 = zext i1 %call.i245 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef 93, i32 noundef %conv73, i32 noundef %conv75, i32 noundef %cond78) #11
  br i1 %call.i245, label %if.end81, label %if.end61.i2c_write_fail_crit_edge

if.end61.i2c_write_fail_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end81:                                         ; preds = %if.end61
  %120 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 10, ptr %buffer, align 2
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 23, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i246) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i247) #11
  %122 = ptrtoint ptr %payload.i247 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 22872064, ptr %payload.i247, align 4
  %123 = getelementptr inbounds i8, ptr %cmd.i246, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 16777216, ptr %123, align 4
  %engine.i249 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i246, i32 0, i32 2
  %125 = ptrtoint ptr %engine.i249 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %engine.i249, align 4
  %126 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %stream.i, align 4
  %ctx.i251 = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 32
  %128 = ptrtoint ptr %ctx.i251 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ctx.i251, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 8
  %i2c_speed_in_khz.i252 = getelementptr inbounds %struct.dc, ptr %131, i32 0, i32 2, i32 8
  %132 = ptrtoint ptr %i2c_speed_in_khz.i252 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %i2c_speed_in_khz.i252, align 4
  %speed.i253 = getelementptr inbounds %struct.i2c_command, ptr %cmd.i246, i32 0, i32 3
  %134 = ptrtoint ptr %speed.i253 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %speed.i253, align 4
  %data.i255 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i247, i32 0, i32 3
  %135 = ptrtoint ptr %data.i255 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %buffer, ptr %data.i255, align 4
  %length2.i256 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i247, i32 0, i32 2
  %136 = ptrtoint ptr %length2.i256 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2, ptr %length2.i256, align 4
  %137 = ptrtoint ptr %cmd.i246 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %payload.i247, ptr %cmd.i246, align 4
  %link.i257 = getelementptr inbounds %struct.dc_stream_state, ptr %127, i32 0, i32 1
  %138 = ptrtoint ptr %link.i257 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %link.i257, align 4
  %call.i258 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %129, ptr noundef %139, ptr noundef nonnull %cmd.i246) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i247) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i246) #11
  %140 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %buffer, align 2
  %conv89 = zext i8 %141 to i32
  %142 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %0, align 1
  %conv91 = zext i8 %143 to i32
  %cond94 = zext i1 %call.i258 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef 93, i32 noundef %conv89, i32 noundef %conv91, i32 noundef %cond94) #11
  br i1 %call.i258, label %if.end97, label %if.end81.i2c_write_fail_crit_edge

if.end81.i2c_write_fail_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end97:                                         ; preds = %if.end81
  br i1 %is_vga_mode, label %if.then99, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then99:                                        ; preds = %if.end97
  %144 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -1, ptr %buffer, align 2
  %145 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %0, align 1
  %call103 = call fastcc zeroext i1 @i2c_write(ptr noundef %pipe_ctx, i8 noundef zeroext 93, ptr noundef nonnull %buffer, i32 noundef 2)
  %146 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %buffer, align 2
  %conv107 = zext i8 %147 to i32
  %148 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %0, align 1
  %conv109 = zext i8 %149 to i32
  %cond112 = zext i1 %call103 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.67, i32 noundef 93, i32 noundef %conv107, i32 noundef %conv109, i32 noundef %cond112) #11
  br i1 %call103, label %if.end115, label %if.then99.i2c_write_fail_crit_edge

if.then99.i2c_write_fail_crit_edge:               ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end115:                                        ; preds = %if.then99
  %150 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %buffer, align 2
  %151 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 35, ptr %0, align 1
  %call119 = call fastcc zeroext i1 @i2c_write(ptr noundef %pipe_ctx, i8 noundef zeroext 93, ptr noundef nonnull %buffer, i32 noundef 2)
  %152 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %buffer, align 2
  %conv123 = zext i8 %153 to i32
  %154 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %0, align 1
  %conv125 = zext i8 %155 to i32
  %cond128 = zext i1 %call119 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef 93, i32 noundef %conv123, i32 noundef %conv125, i32 noundef %cond128) #11
  br i1 %call119, label %if.end131, label %if.end115.i2c_write_fail_crit_edge

if.end115.i2c_write_fail_crit_edge:               ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end131:                                        ; preds = %if.end115
  %156 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -1, ptr %buffer, align 2
  %157 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %0, align 1
  %call135 = call fastcc zeroext i1 @i2c_write(ptr noundef %pipe_ctx, i8 noundef zeroext 93, ptr noundef nonnull %buffer, i32 noundef 2)
  %158 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %buffer, align 2
  %conv139 = zext i8 %159 to i32
  %160 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %0, align 1
  %conv141 = zext i8 %161 to i32
  %cond144 = zext i1 %call135 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.69, i32 noundef 93, i32 noundef %conv139, i32 noundef %conv141, i32 noundef %cond144) #11
  br i1 %call135, label %if.end131.cleanup_crit_edge, label %if.end131.i2c_write_fail_crit_edge

if.end131.i2c_write_fail_crit_edge:               ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_write_fail

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

i2c_write_fail:                                   ; preds = %if.end131.i2c_write_fail_crit_edge, %if.end115.i2c_write_fail_crit_edge, %if.then99.i2c_write_fail_crit_edge, %if.end81.i2c_write_fail_crit_edge, %if.end61.i2c_write_fail_crit_edge, %if.end45.i2c_write_fail_crit_edge, %if.end25.i2c_write_fail_crit_edge, %if.end.i2c_write_fail_crit_edge, %entry.i2c_write_fail_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.70) #11
  br label %cleanup

cleanup:                                          ; preds = %i2c_write_fail, %if.end131.cleanup_crit_edge, %if.end97.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_i2c_redriver_setting(ptr nocapture noundef readonly %pipe_ctx, i1 noundef zeroext %is_over_340mhz) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.i2c_command, align 4
  %payload.i = alloca %struct.i2c_payload, align 4
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #11
  %0 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 3
  %1 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 4
  %2 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 5
  %3 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 6
  %4 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 78, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 78, ptr %1, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 78, ptr %2, align 1
  %conv = select i1 %is_over_340mhz, i8 78, i8 74
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i) #11
  %9 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 24641536, ptr %payload.i, align 4
  %10 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %10, align 4
  %engine.i = getelementptr inbounds %struct.i2c_command, ptr %cmd.i, i32 0, i32 2
  %12 = ptrtoint ptr %engine.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %engine.i, align 4
  %stream.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %13 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream.i, align 4
  %ctx.i = getelementptr inbounds %struct.dc_stream_state, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %18, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2c_speed_in_khz.i, align 4
  %speed.i = getelementptr inbounds %struct.i2c_command, ptr %cmd.i, i32 0, i32 3
  %21 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %speed.i, align 4
  %data.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 3
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buffer, ptr %data.i, align 4
  %length2.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 2
  %23 = ptrtoint ptr %length2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %length2.i, align 4
  %24 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %payload.i, ptr %cmd.i, align 4
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link.i, align 4
  %call.i = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %16, ptr noundef %26, ptr noundef nonnull %cmd.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  %conv7 = zext i8 %28 to i32
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv9 = zext i8 %30 to i32
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %conv11 = zext i8 %32 to i32
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %3, align 1
  %conv13 = zext i8 %34 to i32
  %cond16 = zext i1 %call.i to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef 120, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %cond16) #11
  br i1 %call.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.72) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_enable_hpd_filter(ptr nocapture noundef %link, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %hpd = alloca ptr, align 4
  %config = alloca %struct.gpio_hpd_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd) #11
  %is_hpd_filter_disabled = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %is_hpd_filter_disabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_hpd_filter_disabled, align 4
  tail call fastcc void @program_hpd_filter(ptr noundef %link)
  br label %cleanup

if.else:                                          ; preds = %entry
  %1 = ptrtoint ptr %is_hpd_filter_disabled to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %is_hpd_filter_disabled, align 4
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_bios, align 4
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %gpio_service = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %gpio_service to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_service, align 4
  %8 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %link_id, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call3 = tail call ptr @get_hpd_gpio(ptr noundef %5, [1 x i32] %9, ptr noundef %7)
  %10 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %hpd, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.else
  %call6 = tail call i32 @dal_gpio_open(ptr noundef nonnull %call3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config) #11
  %11 = getelementptr inbounds %struct.gpio_hpd_config, ptr %config, i32 0, i32 1
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %config, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %11, align 4
  %14 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hpd, align 4
  %call8 = call i32 @dal_irq_setup_hpd_filter(ptr noundef %15, ptr noundef nonnull %config) #11
  call void @dal_gpio_close(ptr noundef %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config) #11
  br label %if.end33

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4532, i32 noundef 9, ptr noundef null) #11
  tail call void @kgdb_breakpoint() #11
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.then7
  call void @dal_gpio_destroy_irq(ptr noundef nonnull %hpd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.else.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_irq_setup_hpd_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_set_drive_settings(ptr nocapture noundef readonly %dc, ptr noundef %lt_settings, ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dc_link_get_cur_link_res(ptr noundef %link)
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %i.050.be, %for.body.backedge ]
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.050, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %link2 = getelementptr inbounds %struct.dc_stream_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link2, align 4
  %tobool3.not = icmp eq ptr %5, null
  %cmp6 = icmp ne ptr %5, %link
  %or.cond.not = or i1 %tobool3.not, %cmp6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.050)
  %cmp = icmp ult i32 %i.050, 5
  %or.cond51 = select i1 %or.cond.not, i1 %cmp, i1 false
  br i1 %or.cond51, label %land.lhs.true.for.body.backedge_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.for.body.backedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.backedge

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.050)
  %cmp.old = icmp ult i32 %i.050, 5
  br i1 %cmp.old, label %for.inc.for.body.backedge_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %land.lhs.true.for.body.backedge_crit_edge
  %i.050.be = add nuw nsw i32 %i.050, 1
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %arrayidx.le = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.050
  %tobool9.not = icmp eq ptr %arrayidx.le, null
  %tobool11.not = icmp eq ptr %call, null
  %or.cond49 = select i1 %tobool9.not, i1 true, i1 %tobool11.not
  br i1 %or.cond49, label %do.end, label %if.then12

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream, align 4
  %link14 = getelementptr inbounds %struct.dc_stream_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %link14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link14, align 4
  tail call void @dc_link_dp_set_drive_settings(ptr noundef %9, ptr noundef nonnull %call, ptr noundef %lt_settings) #11
  br label %if.end38

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4560, i32 noundef 9, ptr noundef null) #11
  tail call void @kgdb_breakpoint() #11
  br label %if.end38

if.end38:                                         ; preds = %do.end, %if.then12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dc_link_get_cur_link_res(ptr noundef readonly %link) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %stream = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %link2 = getelementptr inbounds %struct.dc_stream_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true4

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %top_pipe = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 9
  %8 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %top_pipe, align 4
  %cmp5 = icmp eq ptr %9, null
  %cmp8 = icmp eq ptr %7, %link
  %or.cond = select i1 %cmp5, i1 %cmp8, i1 false
  br i1 %or.cond, label %land.lhs.true4.if.then9_crit_edge, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true4.if.then9_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true4.5.if.then9_crit_edge, %land.lhs.true4.4.if.then9_crit_edge, %land.lhs.true4.3.if.then9_crit_edge, %land.lhs.true4.2.if.then9_crit_edge, %land.lhs.true4.1.if.then9_crit_edge, %land.lhs.true4.if.then9_crit_edge
  %i.021.lcssa = phi i32 [ 0, %land.lhs.true4.if.then9_crit_edge ], [ 1, %land.lhs.true4.1.if.then9_crit_edge ], [ 2, %land.lhs.true4.2.if.then9_crit_edge ], [ 3, %land.lhs.true4.3.if.then9_crit_edge ], [ 4, %land.lhs.true4.4.if.then9_crit_edge ], [ 5, %land.lhs.true4.5.if.then9_crit_edge ]
  %link_res10 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.021.lcssa, i32 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %stream.1 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %link2.1 = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %link2.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link2.1, align 4
  %tobool3.not.1 = icmp eq ptr %13, null
  br i1 %tobool3.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true4.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true4.1:                                 ; preds = %land.lhs.true.1
  %top_pipe.1 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %top_pipe.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %top_pipe.1, align 4
  %cmp5.1 = icmp eq ptr %15, null
  %cmp8.1 = icmp eq ptr %13, %link
  %or.cond.1 = select i1 %cmp5.1, i1 %cmp8.1, i1 false
  br i1 %or.cond.1, label %land.lhs.true4.1.if.then9_crit_edge, label %land.lhs.true4.1.for.inc.1_crit_edge

land.lhs.true4.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true4.1.if.then9_crit_edge:              ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

for.inc.1:                                        ; preds = %land.lhs.true4.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %stream.2 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.2, align 4
  %tobool.not.2 = icmp eq ptr %17, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %link2.2 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link2.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link2.2, align 4
  %tobool3.not.2 = icmp eq ptr %19, null
  br i1 %tobool3.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true4.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true4.2:                                 ; preds = %land.lhs.true.2
  %top_pipe.2 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 9
  %20 = ptrtoint ptr %top_pipe.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %top_pipe.2, align 4
  %cmp5.2 = icmp eq ptr %21, null
  %cmp8.2 = icmp eq ptr %19, %link
  %or.cond.2 = select i1 %cmp5.2, i1 %cmp8.2, i1 false
  br i1 %or.cond.2, label %land.lhs.true4.2.if.then9_crit_edge, label %land.lhs.true4.2.for.inc.2_crit_edge

land.lhs.true4.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true4.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true4.2.if.then9_crit_edge:              ; preds = %land.lhs.true4.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

for.inc.2:                                        ; preds = %land.lhs.true4.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %stream.3 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream.3, align 4
  %tobool.not.3 = icmp eq ptr %23, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %link2.3 = getelementptr inbounds %struct.dc_stream_state, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %link2.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link2.3, align 4
  %tobool3.not.3 = icmp eq ptr %25, null
  br i1 %tobool3.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true4.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true4.3:                                 ; preds = %land.lhs.true.3
  %top_pipe.3 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 3, i32 9
  %26 = ptrtoint ptr %top_pipe.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %top_pipe.3, align 4
  %cmp5.3 = icmp eq ptr %27, null
  %cmp8.3 = icmp eq ptr %25, %link
  %or.cond.3 = select i1 %cmp5.3, i1 %cmp8.3, i1 false
  br i1 %or.cond.3, label %land.lhs.true4.3.if.then9_crit_edge, label %land.lhs.true4.3.for.inc.3_crit_edge

land.lhs.true4.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true4.3.if.then9_crit_edge:              ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

for.inc.3:                                        ; preds = %land.lhs.true4.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %stream.4 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool.not.4 = icmp eq ptr %29, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %link2.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link2.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link2.4, align 4
  %tobool3.not.4 = icmp eq ptr %31, null
  br i1 %tobool3.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true4.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true4.4:                                 ; preds = %land.lhs.true.4
  %top_pipe.4 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %top_pipe.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %top_pipe.4, align 4
  %cmp5.4 = icmp eq ptr %33, null
  %cmp8.4 = icmp eq ptr %31, %link
  %or.cond.4 = select i1 %cmp5.4, i1 %cmp8.4, i1 false
  br i1 %or.cond.4, label %land.lhs.true4.4.if.then9_crit_edge, label %land.lhs.true4.4.for.inc.4_crit_edge

land.lhs.true4.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true4.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true4.4.if.then9_crit_edge:              ; preds = %land.lhs.true4.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

for.inc.4:                                        ; preds = %land.lhs.true4.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %stream.5 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream.5, align 4
  %tobool.not.5 = icmp eq ptr %35, null
  br i1 %tobool.not.5, label %for.inc.4.for.end_crit_edge, label %land.lhs.true.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.5:                                  ; preds = %for.inc.4
  %link2.5 = getelementptr inbounds %struct.dc_stream_state, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %link2.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link2.5, align 4
  %tobool3.not.5 = icmp eq ptr %37, null
  br i1 %tobool3.not.5, label %land.lhs.true.5.for.end_crit_edge, label %land.lhs.true4.5

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true4.5:                                 ; preds = %land.lhs.true.5
  %top_pipe.5 = getelementptr %struct.dc_state, ptr %3, i32 0, i32 4, i32 0, i32 5, i32 9
  %38 = ptrtoint ptr %top_pipe.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %top_pipe.5, align 4
  %cmp5.5 = icmp eq ptr %39, null
  %cmp8.5 = icmp eq ptr %37, %link
  %or.cond.5 = select i1 %cmp5.5, i1 %cmp8.5, i1 false
  br i1 %or.cond.5, label %land.lhs.true4.5.if.then9_crit_edge, label %land.lhs.true4.5.for.end_crit_edge

land.lhs.true4.5.for.end_crit_edge:               ; preds = %land.lhs.true4.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true4.5.if.then9_crit_edge:              ; preds = %land.lhs.true4.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

for.end:                                          ; preds = %land.lhs.true4.5.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %if.then9
  %link_res.0 = phi ptr [ %link_res10, %if.then9 ], [ null, %land.lhs.true4.5.for.end_crit_edge ], [ null, %land.lhs.true.5.for.end_crit_edge ], [ null, %for.inc.4.for.end_crit_edge ]
  ret ptr %link_res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_dp_set_drive_settings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_set_preferred_link_settings(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %link_setting, ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %store_settings = alloca %struct.dc_link_settings, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %store_settings) #11
  %0 = call ptr @memcpy(ptr %store_settings, ptr %link_setting, i32 16)
  %preferred_link_setting = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 23
  %1 = call ptr @memmove(ptr %preferred_link_setting, ptr %link_setting, i32 16)
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %2 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connector_signal, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 32, label %entry.lor.lhs.false_crit_edge
    i32 128, label %entry.lor.lhs.false_crit_edge45
    i32 64, label %entry.lor.lhs.false_crit_edge46
  ]

entry.lor.lhs.false_crit_edge46:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge45:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge45, %entry.lor.lhs.false_crit_edge46
  %dongle_max_pix_clk = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 44
  %5 = ptrtoint ptr %dongle_max_pix_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dongle_max_pix_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %7 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_state, align 4
  %stream = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %link3 = getelementptr inbounds %struct.dc_stream_state, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %link3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link3, align 4
  %tobool4.not = icmp ne ptr %12, null
  %cmp8 = icmp eq ptr %12, %link
  %or.cond = and i1 %tobool4.not, %cmp8
  br i1 %or.cond, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %stream.1 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %link3.1 = getelementptr inbounds %struct.dc_stream_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %link3.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link3.1, align 4
  %tobool4.not.1 = icmp ne ptr %16, null
  %cmp8.1 = icmp eq ptr %16, %link
  %or.cond.1 = and i1 %tobool4.not.1, %cmp8.1
  br i1 %or.cond.1, label %land.lhs.true.1.if.end15_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1.if.end15_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %stream.2 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream.2, align 4
  %tobool.not.2 = icmp eq ptr %18, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %link3.2 = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %link3.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link3.2, align 4
  %tobool4.not.2 = icmp ne ptr %20, null
  %cmp8.2 = icmp eq ptr %20, %link
  %or.cond.2 = and i1 %tobool4.not.2, %cmp8.2
  br i1 %or.cond.2, label %land.lhs.true.2.if.end15_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2.if.end15_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %stream.3 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream.3, align 4
  %tobool.not.3 = icmp eq ptr %22, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %link3.3 = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %link3.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link3.3, align 4
  %tobool4.not.3 = icmp ne ptr %24, null
  %cmp8.3 = icmp eq ptr %24, %link
  %or.cond.3 = and i1 %tobool4.not.3, %cmp8.3
  br i1 %or.cond.3, label %land.lhs.true.3.if.end15_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3.if.end15_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %stream.4 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream.4, align 4
  %tobool.not.4 = icmp eq ptr %26, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %link3.4 = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %link3.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link3.4, align 4
  %tobool4.not.4 = icmp ne ptr %28, null
  %cmp8.4 = icmp eq ptr %28, %link
  %or.cond.4 = and i1 %tobool4.not.4, %cmp8.4
  br i1 %or.cond.4, label %land.lhs.true.4.if.end15_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true.4.if.end15_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %stream.5 = getelementptr %struct.dc_state, ptr %8, i32 0, i32 4, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream.5, align 4
  %tobool.not.5 = icmp eq ptr %30, null
  br i1 %tobool.not.5, label %for.inc.4.cleanup_crit_edge, label %land.lhs.true.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.5:                                  ; preds = %for.inc.4
  %link3.5 = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %link3.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link3.5, align 4
  %tobool4.not.5 = icmp ne ptr %32, null
  %cmp8.5 = icmp eq ptr %32, %link
  %or.cond.5 = and i1 %tobool4.not.5, %cmp8.5
  br i1 %or.cond.5, label %land.lhs.true.5.if.end15_crit_edge, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.5.if.end15_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.5.if.end15_crit_edge, %land.lhs.true.4.if.end15_crit_edge, %land.lhs.true.3.if.end15_crit_edge, %land.lhs.true.2.if.end15_crit_edge, %land.lhs.true.1.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge
  %.lcssa = phi ptr [ %10, %land.lhs.true.if.end15_crit_edge ], [ %14, %land.lhs.true.1.if.end15_crit_edge ], [ %18, %land.lhs.true.2.if.end15_crit_edge ], [ %22, %land.lhs.true.3.if.end15_crit_edge ], [ %26, %land.lhs.true.4.if.end15_crit_edge ], [ %30, %land.lhs.true.5.if.end15_crit_edge ]
  %dpms_off = getelementptr inbounds %struct.dc_stream_state, ptr %.lcssa, i32 0, i32 37
  %33 = ptrtoint ptr %dpms_off to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dpms_off, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool16.not = icmp eq i8 %34, 0
  br i1 %tobool16.not, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @decide_link_settings(ptr noundef nonnull %.lcssa, ptr noundef nonnull %store_settings) #11
  %35 = ptrtoint ptr %store_settings to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %store_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp19.not = icmp eq i32 %36, 0
  br i1 %cmp19.not, label %if.end18.cleanup_crit_edge, label %land.lhs.true20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true20:                                  ; preds = %if.end18
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %store_settings, i32 0, i32 1
  %37 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp21.not = icmp eq i32 %38, 0
  br i1 %cmp21.not, label %land.lhs.true20.cleanup_crit_edge, label %if.then22

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  call void @dp_retrain_link_dp_test(ptr noundef %link, ptr noundef nonnull %store_settings, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %land.lhs.true20.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %store_settings) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @decide_link_settings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_retrain_link_dp_test(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_set_preferred_training_settings(ptr nocapture noundef readonly %dc, ptr noundef readonly %link_setting, ptr noundef readonly %lt_overrides, ptr noundef %link, i1 noundef zeroext %skip_immediate_retrain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %lt_overrides, null
  %preferred_training_settings1 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 24
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memcpy(ptr %preferred_training_settings1, ptr %lt_overrides, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = call ptr @memset(ptr %preferred_training_settings1, i32 0, i32 48)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp2.not = icmp eq ptr %link_setting, null
  %preferred_link_setting5 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 23
  br i1 %cmp2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = call ptr @memcpy(ptr %preferred_link_setting5, ptr %link_setting, i32 16)
  br label %if.end7

if.else4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %preferred_link_setting5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %preferred_link_setting5, align 8
  %link_rate = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %link_rate, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.then3
  br i1 %skip_immediate_retrain, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %preferred_link_setting11 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 23
  tail call void @dc_link_set_preferred_link_settings(ptr noundef %dc, ptr noundef %preferred_link_setting11, ptr noundef %link)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_enable_hpd(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dc_link_dp_enable_hpd(ptr noundef %link) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_dp_enable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_disable_hpd(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dc_link_dp_disable_hpd(ptr noundef %link) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_dp_disable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_set_test_pattern(ptr noundef %link, i32 noundef %test_pattern, i32 noundef %test_pattern_color_space, ptr noundef %p_link_settings, ptr noundef %p_custom_pattern, i32 noundef %cust_pattern_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %link, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @dc_link_dp_set_test_pattern(ptr noundef nonnull %link, i32 noundef %test_pattern, i32 noundef %test_pattern_color_space, ptr noundef %p_link_settings, ptr noundef %p_custom_pattern, i32 noundef %cust_pattern_size) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_dp_set_test_pattern(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_link_bandwidth_kbps(ptr noundef %link, ptr nocapture noundef readonly %link_setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_setting, i32 0, i32 1
  %0 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_rate, align 4
  %mul1 = mul i32 %1, 216000
  %2 = ptrtoint ptr %link_setting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_setting, align 4
  %mul2 = mul i32 %mul1, %3
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %4 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 64
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %local_sink.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %6 = ptrtoint ptr %local_sink.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local_sink.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %disable_fec.i = getelementptr inbounds %struct.dc_sink, ptr %7, i32 0, i32 2, i32 18, i32 6
  %8 = ptrtoint ptr %disable_fec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disable_fec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %land.lhs.true1.i.lor.lhs.false.i_crit_edge, label %land.lhs.true1.i.if.then.i_crit_edge

land.lhs.true1.i.if.then.i_crit_edge:             ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true1.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true1.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp5.i = icmp eq i32 %5, 128
  br i1 %cmp5.i, label %land.lhs.true6.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true6.i:                                 ; preds = %lor.lhs.false.i
  %dsc_caps.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 24
  %10 = ptrtoint ptr %dsc_caps.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %dsc_caps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp7.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp7.i, label %land.lhs.true6.i.if.then.i_crit_edge, label %land.lhs.true6.i.if.end.i_crit_edge

land.lhs.true6.i.if.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true6.i.if.then.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true6.i.if.then.i_crit_edge, %land.lhs.true1.i.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %is_fec_disable.0.off0.i = phi i1 [ false, %if.then.i ], [ true, %land.lhs.true6.i.if.end.i_crit_edge ], [ true, %lor.lhs.false.i.if.end.i_crit_edge ], [ true, %entry.if.end.i_crit_edge ]
  %call.i = tail call zeroext i1 @dc_link_is_fec_supported(ptr noundef %link) #11
  br i1 %call.i, label %dc_link_should_enable_fec.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

dc_link_should_enable_fec.exit:                   ; preds = %if.end.i
  %dc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %11 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc.i, align 4
  %disable_fec11.i = getelementptr inbounds %struct.dc_debug_options, ptr %12, i32 0, i32 65
  %13 = ptrtoint ptr %disable_fec11.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %disable_fec11.i, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not.i = icmp eq i8 %14, 0
  %spec.select24.i = and i1 %is_fec_disable.0.off0.i, %tobool12.not.i
  br i1 %spec.select24.i, label %if.then, label %dc_link_should_enable_fec.exit.if.end_crit_edge

dc_link_should_enable_fec.exit.if.end_crit_edge:  ; preds = %dc_link_should_enable_fec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dc_link_should_enable_fec.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %mul2 to i64
  %mul3 = mul nuw nsw i64 %conv, 970
  %call4 = tail call i64 @div64_s64(i64 noundef %mul3, i64 noundef 1000) #11
  %conv5 = trunc i64 %call4 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %dc_link_should_enable_fec.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %link_bw_kbps.0 = phi i32 [ %conv5, %if.then ], [ %mul2, %dc_link_should_enable_fec.exit.if.end_crit_edge ], [ %mul2, %if.end.i.if.end_crit_edge ]
  ret i32 %link_bw_kbps.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_should_enable_fec(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %0 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp.not = icmp eq i32 %1, 64
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 2
  %2 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local_sink, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true1

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true1:                                   ; preds = %land.lhs.true
  %disable_fec = getelementptr inbounds %struct.dc_sink, ptr %3, i32 0, i32 2, i32 18, i32 6
  %4 = ptrtoint ptr %disable_fec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disable_fec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true1.lor.lhs.false_crit_edge, label %land.lhs.true1.if.then_crit_edge

land.lhs.true1.if.then_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true1.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true1.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp5 = icmp eq i32 %1, 128
  br i1 %cmp5, label %land.lhs.true6, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %dsc_caps = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 24
  %6 = ptrtoint ptr %dsc_caps to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %dsc_caps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp7 = icmp sgt i8 %bf.load, -1
  br i1 %cmp7, label %land.lhs.true6.if.then_crit_edge, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true6.if.then_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true6.if.then_crit_edge, %land.lhs.true1.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %is_fec_disable.0.off0 = phi i1 [ false, %if.then ], [ true, %land.lhs.true6.if.end_crit_edge ], [ true, %lor.lhs.false.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ]
  %call = tail call zeroext i1 @dc_link_is_fec_supported(ptr noundef %link)
  br i1 %call, label %land.lhs.true10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true10:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 35
  %7 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dc, align 4
  %disable_fec11 = getelementptr inbounds %struct.dc_debug_options, ptr %8, i32 0, i32 65
  %9 = ptrtoint ptr %disable_fec11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disable_fec11, align 8, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %spec.select24 = and i1 %is_fec_disable.0.off0, %tobool12.not
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true10, %if.end.if.end16_crit_edge
  %ret.0.off0 = phi i1 [ false, %if.end.if.end16_crit_edge ], [ %spec.select24, %land.lhs.true10 ]
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dc_link_get_link_cap(ptr noundef readonly %link) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %preferred_link_setting = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %preferred_link_setting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %preferred_link_setting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %link_rate = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %verified_link_cap = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 20
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi ptr [ %verified_link_cap, %if.end ], [ %preferred_link_setting, %land.lhs.true.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dc_link_overwrite_extended_receiver_cap(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @dp_overwrite_extended_receiver_cap(ptr noundef %link) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_overwrite_extended_receiver_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_is_fec_supported(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_dig_mapping_flexible = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 15
  %0 = ptrtoint ptr %is_dig_mapping_flexible to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_dig_mapping_flexible, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %ctx = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call = tail call ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef %13, ptr noundef %link) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then3, label %if.then.do.end53_crit_edge

if.then.do.end53_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %call6 = tail call ptr @link_enc_cfg_get_next_avail_link_enc(ptr noundef %17) #11
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %link_enc7 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 38
  %18 = ptrtoint ptr %link_enc7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link_enc7, align 8
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then3
  %link_enc.0 = phi ptr [ %call6, %if.then3 ], [ %19, %if.else ]
  %tobool9.not = icmp eq ptr %link_enc.0, null
  br i1 %tobool9.not, label %land.rhs, label %do.body.do.end53_crit_edge

do.body.do.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

land.rhs:                                         ; preds = %do.body
  %.b81 = load i1, ptr @dc_link_is_fec_supported.__already_done, align 1
  br i1 %.b81, label %land.rhs.if.then50_crit_edge, label %if.then18, !prof !189

land.rhs.if.then50_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_link_is_fec_supported.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4765, i32 noundef 9, ptr noundef null) #11
  br label %if.then50

if.then50:                                        ; preds = %if.then18, %land.rhs.if.then50_crit_edge
  tail call void @kgdb_breakpoint() #11
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body.do.end53_crit_edge, %if.then.do.end53_crit_edge
  %tobool9.not86 = phi i1 [ false, %do.body.do.end53_crit_edge ], [ true, %if.then50 ], [ false, %if.then.do.end53_crit_edge ]
  %link_enc.085 = phi ptr [ %link_enc.0, %do.body.do.end53_crit_edge ], [ null, %if.then50 ], [ %call, %if.then.do.end53_crit_edge ]
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %20 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %connector_signal, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %21, label %do.end53.land.end67_crit_edge [
    i32 32, label %do.end53.dc_is_dp_signal.exit_crit_edge
    i32 128, label %do.end53.dc_is_dp_signal.exit_crit_edge89
    i32 64, label %do.end53.dc_is_dp_signal.exit_crit_edge90
  ]

do.end53.dc_is_dp_signal.exit_crit_edge90:        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_is_dp_signal.exit

do.end53.dc_is_dp_signal.exit_crit_edge89:        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_is_dp_signal.exit

do.end53.dc_is_dp_signal.exit_crit_edge:          ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %dc_is_dp_signal.exit

do.end53.land.end67_crit_edge:                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end67

dc_is_dp_signal.exit:                             ; preds = %do.end53.dc_is_dp_signal.exit_crit_edge, %do.end53.dc_is_dp_signal.exit_crit_edge89, %do.end53.dc_is_dp_signal.exit_crit_edge90
  br i1 %tobool9.not86, label %dc_is_dp_signal.exit.land.end67_crit_edge, label %land.lhs.true57

dc_is_dp_signal.exit.land.end67_crit_edge:        ; preds = %dc_is_dp_signal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end67

land.lhs.true57:                                  ; preds = %dc_is_dp_signal.exit
  %fec_supported = getelementptr inbounds %struct.link_encoder, ptr %link_enc.085, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %fec_supported to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fec_supported, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool58.not = icmp eq i8 %24, 0
  br i1 %tobool58.not, label %land.lhs.true57.land.end67_crit_edge, label %land.lhs.true59

land.lhs.true57.land.end67_crit_edge:             ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end67

land.lhs.true59:                                  ; preds = %land.lhs.true57
  %fec_cap = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 23
  %25 = ptrtoint ptr %fec_cap to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %fec_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool60.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool60.not, label %land.lhs.true59.land.end67_crit_edge, label %land.rhs61

land.lhs.true59.land.end67_crit_edge:             ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end67

land.rhs61:                                       ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  %ctx62 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %26 = ptrtoint ptr %ctx62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx62, align 8
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp63 = icmp ne i32 %29, 1
  br label %land.end67

land.end67:                                       ; preds = %land.rhs61, %land.lhs.true59.land.end67_crit_edge, %land.lhs.true57.land.end67_crit_edge, %dc_is_dp_signal.exit.land.end67_crit_edge, %do.end53.land.end67_crit_edge
  %30 = phi i1 [ false, %land.lhs.true59.land.end67_crit_edge ], [ false, %land.lhs.true57.land.end67_crit_edge ], [ false, %dc_is_dp_signal.exit.land.end67_crit_edge ], [ %cmp63, %land.rhs61 ], [ false, %do.end53.land.end67_crit_edge ]
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @link_enc_cfg_get_link_enc_used_by_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @link_enc_cfg_get_next_avail_link_enc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_bandwidth_in_kbps_from_timing(ptr nocapture noundef readonly %timing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %display_color_depth = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 16
  %0 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %display_color_depth, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b73 = load i1, ptr @dc_bandwidth_in_kbps_from_timing.__already_done, align 1
  br i1 %.b73, label %land.end.if.then43_crit_edge, label %if.then, !prof !189

land.end.if.then43_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dc_bandwidth_in_kbps_from_timing.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4827, i32 noundef 9, ptr noundef null) #11
  br label %if.then43

if.then43:                                        ; preds = %if.then, %land.end.if.then43_crit_edge
  tail call void @kgdb_breakpoint() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.mult = shl i32 %switch.tableidx, 1
  %switch.offset = add i32 %switch.idx.mult, 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then43
  %bits_per_channel.0 = phi i32 [ 8, %if.then43 ], [ %switch.offset, %switch.lookup ]
  %pix_clk_100hz = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 12
  %3 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pix_clk_100hz, align 4
  %div = udiv i32 %4, 10
  %mul = mul i32 %div, %bits_per_channel.0
  %flags = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 21
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %flags, align 4
  %6 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp47.not.not = icmp eq i32 %6, 0
  br i1 %cmp47.not.not, label %if.then48, label %sw.epilog.if.end60_crit_edge

sw.epilog.if.end60_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then48:                                        ; preds = %sw.epilog
  %mul49 = mul i32 %mul, 3
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %timing, i32 0, i32 17
  %7 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixel_encoding, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %8, label %if.then48.if.end60_crit_edge [
    i32 4, label %if.then51
    i32 2, label %if.then55
  ]

if.then48.if.end60_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %div5272 = lshr exact i32 %mul49, 1
  br label %if.end60

if.then55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %mul56 = mul i32 %mul, 6
  %div57 = udiv i32 %mul56, 3
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.then51, %if.then48.if.end60_crit_edge, %sw.epilog.if.end60_crit_edge
  %kbps.0 = phi i32 [ %div5272, %if.then51 ], [ %div57, %if.then55 ], [ %mul, %sw.epilog.if.end60_crit_edge ], [ %mul49, %if.then48.if.end60_crit_edge ]
  ret i32 %kbps.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dc_get_cur_link_res_map(ptr nocapture noundef %dc, ptr nocapture noundef %map) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dc_restore_link_res_map(ptr nocapture noundef %dc, ptr nocapture noundef %map) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpcd_set_source_specific_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_set_default_brightness_aux(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_retain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_current_link_settings_on_detect(ptr noundef %link) unnamed_addr #0 align 64 {
entry:
  %lane_count_set = alloca %union.lane_count_set, align 1
  %link_bw_set = alloca i8, align 1
  %link_rate_set = alloca i8, align 1
  %max_down_spread = alloca %union.max_down_spread, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lane_count_set) #11
  %0 = ptrtoint ptr %lane_count_set to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %lane_count_set, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_bw_set) #11
  %1 = ptrtoint ptr %link_bw_set to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link_bw_set, align 1, !annotation !188
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_rate_set) #11
  %2 = ptrtoint ptr %link_rate_set to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %link_rate_set, align 1, !annotation !188
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_down_spread) #11
  %3 = ptrtoint ptr %max_down_spread to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %max_down_spread, align 1
  %call = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp eq i32 %call, 1
  br i1 %cmp1, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.end.8.if.then_crit_edge, %if.end.7.if.then_crit_edge, %if.end.6.if.then_crit_edge, %if.end.5.if.then_crit_edge, %if.end.4.if.then_crit_edge, %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %lane_count_set to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %lane_count_set, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %conv = zext i8 %bf.lshr to i32
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21
  %5 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %cur_link_settings, align 8
  br label %for.end

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 8) #11
  %call.1 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.1)
  %cmp1.1 = icmp eq i32 %call.1, 1
  br i1 %cmp1.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.1:                                         ; preds = %if.end
  call void @msleep(i32 noundef 8) #11
  %call.2 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.2)
  %cmp1.2 = icmp eq i32 %call.2, 1
  br i1 %cmp1.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  call void @msleep(i32 noundef 8) #11
  %call.3 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.3)
  %cmp1.3 = icmp eq i32 %call.3, 1
  br i1 %cmp1.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  call void @msleep(i32 noundef 8) #11
  %call.4 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.4)
  %cmp1.4 = icmp eq i32 %call.4, 1
  br i1 %cmp1.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  call void @msleep(i32 noundef 8) #11
  %call.5 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.5)
  %cmp1.5 = icmp eq i32 %call.5, 1
  br i1 %cmp1.5, label %if.end.4.if.then_crit_edge, label %if.end.5

if.end.4.if.then_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.5:                                         ; preds = %if.end.4
  call void @msleep(i32 noundef 8) #11
  %call.6 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.6)
  %cmp1.6 = icmp eq i32 %call.6, 1
  br i1 %cmp1.6, label %if.end.5.if.then_crit_edge, label %if.end.6

if.end.5.if.then_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.6:                                         ; preds = %if.end.5
  call void @msleep(i32 noundef 8) #11
  %call.7 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.7)
  %cmp1.7 = icmp eq i32 %call.7, 1
  br i1 %cmp1.7, label %if.end.6.if.then_crit_edge, label %if.end.7

if.end.6.if.then_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.7:                                         ; preds = %if.end.6
  call void @msleep(i32 noundef 8) #11
  %call.8 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.8)
  %cmp1.8 = icmp eq i32 %call.8, 1
  br i1 %cmp1.8, label %if.end.7.if.then_crit_edge, label %if.end.8

if.end.7.if.then_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.8:                                         ; preds = %if.end.7
  call void @msleep(i32 noundef 8) #11
  %call.9 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %lane_count_set, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.9)
  %cmp1.9 = icmp eq i32 %call.9, 1
  br i1 %cmp1.9, label %if.end.8.if.then_crit_edge, label %if.end.9

if.end.8.if.then_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 8) #11
  br label %for.end

for.end:                                          ; preds = %if.end.9, %if.then
  %call2 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 256, ptr noundef nonnull %link_bw_set, i32 noundef 1) #11
  %6 = ptrtoint ptr %link_bw_set to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_bw_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4 = icmp eq i8 %7, 0
  br i1 %cmp4, label %if.then6, label %if.else64

if.then6:                                         ; preds = %for.end
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %8 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %cmp7 = icmp eq i32 %9, 128
  br i1 %cmp7, label %if.then9, label %land.end

if.then9:                                         ; preds = %if.then6
  %call10 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 277, ptr noundef nonnull %link_rate_set, i32 noundef 1) #11
  %10 = ptrtoint ptr %link_rate_set to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_rate_set, align 1
  %edp_supported_link_rates_count = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 4
  %12 = ptrtoint ptr %edp_supported_link_rates_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %edp_supported_link_rates_count, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp13 = icmp ult i8 %11, %13
  br i1 %cmp13, label %if.then15, label %if.then9.if.end70_crit_edge

if.then9.if.end70_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.dc_link, ptr %link, i32 0, i32 43, i32 5, i32 %conv11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %link_rate = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21, i32 1
  %16 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %link_rate, align 4
  %link_rate_set19 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21, i32 4
  %17 = ptrtoint ptr %link_rate_set19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %11, ptr %link_rate_set19, align 1
  %use_link_rate_set = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21, i32 3
  %18 = ptrtoint ptr %use_link_rate_set to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %use_link_rate_set, align 4
  br label %if.end70

land.end:                                         ; preds = %if.then6
  %.b93 = load i1, ptr @read_current_link_settings_on_detect.__already_done, align 1
  br i1 %.b93, label %land.end.if.then59_crit_edge, label %if.then27, !prof !189

land.end.if.then59_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then27:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @read_current_link_settings_on_detect.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 695, i32 noundef 9, ptr noundef null) #11
  br label %if.then59

if.then59:                                        ; preds = %if.then27, %land.end.if.then59_crit_edge
  call void @kgdb_breakpoint() #11
  br label %if.end70

if.else64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %7 to i32
  %link_rate67 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21, i32 1
  %19 = ptrtoint ptr %link_rate67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv3, ptr %link_rate67, align 4
  %use_link_rate_set69 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21, i32 3
  %20 = ptrtoint ptr %use_link_rate_set69 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %use_link_rate_set69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else64, %if.then59, %if.then15, %if.then9.if.end70_crit_edge
  %call71 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 3, ptr noundef nonnull %max_down_spread, i32 noundef 1) #11
  %21 = ptrtoint ptr %max_down_spread to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load72 = load i8, ptr %max_down_spread, align 1
  %22 = lshr i8 %bf.load72, 3
  %23 = and i8 %22, 16
  %24 = zext i8 %23 to i32
  %link_spread = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %link_spread to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %link_spread, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_down_spread) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_rate_set) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_bw_set) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lane_count_set) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @detect_edp_sink_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_verify_mst_link_cap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_helpers_dp_update_branch_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_mst_start_top_mgr(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_dp_active_dongle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_helpers_dp_mst_stop_top_mgr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_service_set_transaction_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_ddc_service_is_in_aux_transaction_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_sink_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_helpers_read_local_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_verify_link_cap_with_retries(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_get_elapse_time_in_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @detect_dp_sink_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_mst_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_dp_branch_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_is_dp_sink_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_service_i2c_query_dp_dual_mode_adaptor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_process_hdcp_msg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_ddc_service_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_irq_get_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_irq_get_rx_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_ddc_get_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_service_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_write_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_helpers_mst_enable_stream_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_get_panel_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @resource_transmitter_to_phy_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_link_dp(ptr noundef %state, ptr noundef %pipe_ctx) unnamed_addr #0 align 64 {
entry:
  %link_settings = alloca %struct.dc_link_settings, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %link2 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_settings) #11
  %4 = call ptr @memset(ptr %link_settings, i32 0, i32 16)
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp108.not = icmp eq i8 %6, 0
  br i1 %cmp108.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %apply_seamless_boot_optimization4112 = getelementptr inbounds %struct.dc_stream_state, ptr %8, i32 0, i32 51
  %9 = ptrtoint ptr %apply_seamless_boot_optimization4112 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %apply_seamless_boot_optimization4112, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not113 = icmp eq i8 %10, 0
  br i1 %tobool.not113, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.0109114 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.0109114, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end.loopexit_crit_edge, label %for.body

for.cond.for.end.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [6 x ptr], ptr %state, i32 0, i32 %inc
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %apply_seamless_boot_optimization4 = getelementptr inbounds %struct.dc_stream_state, ptr %12, i32 0, i32 51
  %13 = ptrtoint ptr %apply_seamless_boot_optimization4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %apply_seamless_boot_optimization4, align 1, !range !190
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end.loopexit:                                 ; preds = %for.body.for.end.loopexit_crit_edge, %for.cond.for.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le = icmp ult i32 %inc, %conv
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %for.body.preheader.for.end_crit_edge ], [ %cmp.le, %for.end.loopexit ]
  call void @decide_link_settings(ptr noundef %1, ptr noundef nonnull %link_settings) #11
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 40
  %15 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp5 = icmp eq i32 %16, 1
  %17 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream1, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 36
  %19 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %20)
  %cmp10 = icmp eq i32 %20, 128
  br i1 %cmp10, label %if.then12, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dc = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 35
  %21 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc, align 4
  %edp_power_control = getelementptr inbounds %struct.dc, ptr %22, i32 0, i32 17, i32 1
  %23 = ptrtoint ptr %edp_power_control to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %edp_power_control, align 4
  call void %24(ptr noundef %3, i1 noundef zeroext true) #11
  %25 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dc, align 4
  %edp_wait_for_hpd_ready = getelementptr inbounds %struct.dc, ptr %26, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %edp_wait_for_hpd_ready to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edp_wait_for_hpd_ready, align 4
  call void %28(ptr noundef %3, i1 noundef zeroext true) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.end.if.end15_crit_edge
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings, i32 0, i32 1
  %29 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_rate, align 4
  %mul = mul i32 %30, 27000
  %requested_sym_clk = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 1
  %31 = ptrtoint ptr %requested_sym_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %requested_sym_clk, align 4
  %clk_mgr = getelementptr inbounds %struct.dc_state, ptr %state, i32 0, i32 7
  %32 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_mgr, align 4
  %tobool16.not = icmp eq ptr %33, null
  %brmerge = select i1 %tobool16.not, i1 true, i1 %cmp.lcssa
  br i1 %brmerge, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %funcs = getelementptr inbounds %struct.clk_mgr, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  call void %37(ptr noundef nonnull %33, ptr noundef %state, i1 noundef zeroext false) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  call void @dpcd_set_source_specific_data(ptr noundef %3) #11
  %dpcd_sink_ext_caps = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 49
  %38 = ptrtoint ptr %dpcd_sink_ext_caps to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dpcd_sink_ext_caps, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp23.not = icmp eq i8 %39, 0
  br i1 %cmp23.not, label %if.end21.if.end26_crit_edge, label %if.then25

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 30) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %40 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp28 = icmp ne i32 %41, 6
  %42 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stream1, align 4
  %signal34 = getelementptr inbounds %struct.dc_stream_state, ptr %43, i32 0, i32 36
  %44 = ptrtoint ptr %signal34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %signal34, align 4
  %call = call zeroext i1 @perform_link_training_with_retries(ptr noundef nonnull %link_settings, i1 noundef zeroext %cmp28, i32 noundef 4, ptr noundef %pipe_ctx, i32 noundef %45, i1 noundef zeroext %cmp5) #11
  br i1 %call, label %if.then36, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 21
  %46 = call ptr @memcpy(ptr %cur_link_settings, ptr %link_settings, i32 16)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end26.if.end37_crit_edge
  %status.0 = phi i32 [ 1, %if.then36 ], [ 15, %if.end26.if.end37_crit_edge ]
  %fec_enable38 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 24, i32 11
  %47 = ptrtoint ptr %fec_enable38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fec_enable38, align 4
  %tobool39.not = icmp eq ptr %48, null
  br i1 %tobool39.not, label %if.end37.if.end45_crit_edge, label %if.then40

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool43 = icmp ne i8 %50, 0
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end37.if.end45_crit_edge
  %fec_enable.0.off0 = phi i1 [ %tobool43, %if.then40 ], [ true, %if.end37.if.end45_crit_edge ]
  call void @dp_set_fec_enable(ptr noundef %3, i1 noundef zeroext %fec_enable.0.off0) #11
  %51 = ptrtoint ptr %dpcd_sink_ext_caps to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %dpcd_sink_ext_caps, align 8
  %52 = and i8 %bf.load, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %if.end45.if.end77_crit_edge, label %if.then65

if.end45.if.end77_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then65:                                        ; preds = %if.end45
  %call66 = call zeroext i1 @dc_link_set_default_brightness_aux(ptr noundef %3) #11
  %54 = ptrtoint ptr %dpcd_sink_ext_caps to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load68 = load i8, ptr %dpcd_sink_ext_caps, align 8
  %55 = and i8 %bf.load68, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp72.not = icmp eq i8 %55, 0
  br i1 %cmp72.not, label %if.then65.if.end75_crit_edge, label %if.then74

if.then65.if.end75_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then74:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 50) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then65.if.end75_crit_edge
  %call76 = call zeroext i1 @dc_link_backlight_enable_aux(ptr noundef %3, i1 noundef zeroext true) #11
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end45.if.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_settings) #11
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @perform_link_training_with_retries(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_set_fec_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_backlight_enable_aux(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_helpers_dp_mst_clear_payload_allocation_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_helpers_dp_mst_poll_pending_down_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_enable_mst_on_sink(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_service_read_scdc_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_disable_link_phy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_disable_link_phy_mst(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_set_fec_ready(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @i2c_write(ptr nocapture noundef readonly %pipe_ctx, i8 noundef zeroext %address, ptr noundef %buffer, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.i2c_command, align 4
  %payload = alloca %struct.i2c_payload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload) #11
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %payload, align 4
  %1 = getelementptr inbounds i8, ptr %cmd, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %number_of_payloads = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %number_of_payloads, align 4
  %engine = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %engine, align 4
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream, align 4
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %i2c_speed_in_khz = getelementptr inbounds %struct.dc, ptr %10, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %i2c_speed_in_khz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_speed_in_khz, align 4
  %speed = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %speed, align 4
  %address1 = getelementptr inbounds %struct.i2c_payload, ptr %payload, i32 0, i32 1
  %14 = ptrtoint ptr %address1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %address, ptr %address1, align 1
  %data = getelementptr inbounds %struct.i2c_payload, ptr %payload, i32 0, i32 3
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buffer, ptr %data, align 4
  %length2 = getelementptr inbounds %struct.i2c_payload, ptr %payload, i32 0, i32 2
  %16 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %length, ptr %length2, align 4
  store i8 1, ptr %payload, align 4
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %payload, ptr %cmd, align 4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link, align 4
  %call = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %8, ptr noundef %19, ptr noundef nonnull %cmd) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_submit_i2c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !135, !137, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 118, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 387, i32 3}
!5 = !{ptr @__func__.dc_link_is_dp_sink_present, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 414, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2965, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3237, i32 3}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3499, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3523, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dc_link_allocate_mst_payload._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dc_link_allocate_mst_payload._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3528, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3548, i32 3}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3560, i32 2}
!25 = !{ptr @dc_link_allocate_mst_payload.status, !26, !"status", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3563, i32 25}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3571, i32 3}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3572, i32 3}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3614, i32 3}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 4152, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 4293, i32 4}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @core_link_enable_stream._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @core_link_enable_stream._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 4765, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 4827, i32 3}
!44 = !{ptr @__func__.dc_link_detect_helper, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 876, i32 3}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 955, i32 5}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1038, i32 4}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1062, i32 4}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1079, i32 4}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1082, i32 4}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1148, i32 4}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1154, i32 3}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1174, i32 4}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1189, i32 4}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1219, i32 2}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 695, i32 4}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 798, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wait_for_entering_dp_alt_mode._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @wait_for_entering_dp_alt_mode._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 814, i32 4}
!77 = !{ptr @wait_for_entering_dp_alt_mode._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @wait_for_entering_dp_alt_mode._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 822, i32 2}
!81 = !{ptr @wait_for_entering_dp_alt_mode._entry.30, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @wait_for_entering_dp_alt_mode._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1730, i32 2}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1747, i32 3}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1456, i32 2}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1461, i32 3}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1465, i32 3}
!93 = !{ptr @__func__.dc_link_construct_legacy, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1482, i32 3}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1483, i32 3}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1522, i32 3}
!100 = !{ptr @dc_link_construct_legacy._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dc_link_construct_legacy._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1544, i32 3}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1564, i32 4}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1584, i32 3}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1588, i32 2}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1606, i32 4}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1623, i32 3}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1624, i32 3}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1625, i32 3}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1644, i32 5}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1645, i32 5}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1678, i32 2}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1696, i32 2}
!126 = !{ptr @__func__.get_ddc_line, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1346, i32 4}
!128 = !{ptr @__func__.get_hpd_line, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 1302, i32 4}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3081, i32 3}
!132 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3330, i32 2}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3989, i32 2}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3827, i32 2}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3880, i32 5}
!141 = !{ptr @deallocate_mst_payload._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @deallocate_mst_payload._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3887, i32 2}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 3928, i32 3}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2195, i32 4}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2226, i32 5}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2245, i32 5}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2276, i32 6}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2294, i32 3}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2305, i32 3}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2327, i32 2}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2348, i32 2}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2359, i32 2}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2381, i32 2}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2418, i32 3}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2429, i32 3}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2440, i32 3}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2450, i32 2}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2472, i32 2}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c", i32 2479, i32 3}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{i8 0, i8 2}
!191 = !{i64 1092457, i64 1092484}
!192 = !{i64 1093152, i64 1093179, i64 1093212, i64 1093233, i64 1093260, i64 1093286}
!193 = !{!194}
!194 = distinct !{!194, !195, !"get_pbn_per_slot: %agg.result"}
!195 = distinct !{!195, !"get_pbn_per_slot"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"get_pbn_from_timing: %agg.result"}
!198 = distinct !{!198, !"get_pbn_from_timing"}
!199 = !{!200, !197}
!200 = distinct !{!200, !201, !"get_pbn_from_bw_in_kbps: %agg.result"}
!201 = distinct !{!201, !"get_pbn_from_bw_in_kbps"}
