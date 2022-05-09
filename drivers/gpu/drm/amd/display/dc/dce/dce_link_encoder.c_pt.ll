; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_link_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.link_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.graphics_object_id = type { i32 }
%struct.encoder_feature_support = type { %union.anon.68, i32, i32, i8, i8, i8 }
%union.anon.68 = type { i32 }
%struct.dce110_link_encoder = type { %struct.link_encoder, ptr, ptr, ptr }
%struct.dce110_link_enc_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.bp_encoder_cap_info = type { i16, i32 }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.6 }
%struct.anon.6 = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.65, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
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
%struct.anon.65 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
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
%union.dpcd_rev = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%union.max_lane_count = type { %struct.anon.52 }
%struct.anon.52 = type { i8 }
%union.max_down_spread = type { %struct.anon.53 }
%struct.anon.53 = type { i8 }
%union.dprx_feature = type { %struct.anon.54 }
%struct.anon.54 = type { i8 }
%union.sink_count = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.57 }
%struct.anon.57 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.58 }
%struct.anon.58 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.59 }
%struct.anon.59 = type { i8 }
%union.dpia_info = type { %struct.anon.60 }
%struct.anon.60 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.61 }
%struct.anon.61 = type { i8, i8, %struct.anon.62 }
%struct.anon.62 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.63 }
%struct.anon.63 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.64 }
%struct.anon.64 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.bp_transmitter_control = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, i8, i8, i8 }
%struct.dce110_link_enc_aux_registers = type { i32, i32, i32 }
%struct.link_training_settings = type { %struct.dc_link_settings, [4 x %struct.dc_lane_settings], ptr, ptr, ptr, i8, i16, i16, i16, i32, i32, i8, i32, i8, i8, [4 x %struct.dc_lane_settings], [4 x %union.dpcd_training_lane] }
%union.dpcd_training_lane = type { %struct.anon.66 }
%struct.anon.66 = type { i8 }
%struct.encoder_set_dp_phy_pattern_param = type { i32, ptr, i32, i32 }
%struct.stream_encoder = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
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
%union.dpcd_ieee_vendor_signature = type { %struct.anon.49 }
%struct.anon.49 = type { [3 x i8], [6 x i8], i8, [2 x i8] }

@__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern = private unnamed_addr constant [56 x i8] c"dce110_link_encoder_set_dp_phy_pattern_training_pattern\00", align 1
@dce110_lnk_enc_funcs = internal constant { %struct.link_encoder_funcs, [52 x i8] } { %struct.link_encoder_funcs { ptr null, ptr @dce110_link_encoder_validate_output_with_stream, ptr @dce110_link_encoder_hw_init, ptr @dce110_link_encoder_setup, ptr @dce110_link_encoder_enable_tmds_output, ptr @dce110_link_encoder_enable_dp_output, ptr @dce110_link_encoder_enable_dp_mst_output, ptr @dce110_link_encoder_enable_lvds_output, ptr @dce110_link_encoder_disable_output, ptr @dce110_link_encoder_dp_set_lane_settings, ptr @dce110_link_encoder_dp_set_phy_pattern, ptr @dce110_link_encoder_update_mst_stream_allocation_table, ptr @dce110_psr_program_dp_dphy_fast_training, ptr @dce110_psr_program_secondary_packet, ptr @dce110_link_encoder_connect_dig_be_to_fe, ptr @dce110_link_encoder_enable_hpd, ptr @dce110_link_encoder_disable_hpd, ptr @dce110_is_dig_enabled, ptr @dce110_get_dig_frontend, ptr @dce110_link_encoder_destroy, ptr null, ptr null, ptr null, ptr null, ptr @dce110_link_encoder_get_max_link_cap, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c\00", [32 x i8] zeroinitializer }, align 32
@dce110_link_encoder_construct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014[drm] %s: Failed to get encoder_cap_info from VBIOS with error code %d!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dce110_link_encoder_construct\00", [34 x i8] zeroinitializer }, align 32
@dce110_link_encoder_construct._entry_ptr = internal global ptr @dce110_link_encoder_construct._entry, section ".printk_index", align 4
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to execute VBIOS command table!\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.dce110_link_encoder_hw_init = private unnamed_addr constant [28 x i8] c"dce110_link_encoder_hw_init\00", align 1
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@dce110_link_encoder_hw_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.dce110_link_encoder_enable_tmds_output = private unnamed_addr constant [39 x i8] c"dce110_link_encoder_enable_tmds_output\00", align 1
@__func__.dce110_link_encoder_enable_lvds_output = private unnamed_addr constant [39 x i8] c"dce110_link_encoder_enable_lvds_output\00", align 1
@__func__.dce110_link_encoder_enable_dp_output = private unnamed_addr constant [37 x i8] c"dce110_link_encoder_enable_dp_output\00", align 1
@__func__.dce110_link_encoder_enable_dp_mst_output = private unnamed_addr constant [41 x i8] c"dce110_link_encoder_enable_dp_mst_output\00", align 1
@__func__.dce110_link_encoder_disable_output = private unnamed_addr constant [35 x i8] c"dce110_link_encoder_disable_output\00", align 1
@__func__.dce110_link_encoder_dp_set_lane_settings = private unnamed_addr constant [41 x i8] c"dce110_link_encoder_dp_set_lane_settings\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.dce110_link_encoder_update_mst_stream_allocation_table = private unnamed_addr constant [55 x i8] c"dce110_link_encoder_update_mst_stream_allocation_table\00", align 1
@__func__.dce110_link_encoder_enable_hpd = private unnamed_addr constant [31 x i8] c"dce110_link_encoder_enable_hpd\00", align 1
@__func__.dce110_link_encoder_disable_hpd = private unnamed_addr constant [32 x i8] c"dce110_link_encoder_disable_hpd\00", align 1
@dce60_lnk_enc_funcs = internal constant { %struct.link_encoder_funcs, [52 x i8] } { %struct.link_encoder_funcs { ptr null, ptr @dce110_link_encoder_validate_output_with_stream, ptr @dce110_link_encoder_hw_init, ptr @dce110_link_encoder_setup, ptr @dce110_link_encoder_enable_tmds_output, ptr @dce60_link_encoder_enable_dp_output, ptr @dce60_link_encoder_enable_dp_mst_output, ptr @dce110_link_encoder_enable_lvds_output, ptr @dce110_link_encoder_disable_output, ptr @dce110_link_encoder_dp_set_lane_settings, ptr @dce60_link_encoder_dp_set_phy_pattern, ptr @dce110_link_encoder_update_mst_stream_allocation_table, ptr @dce110_psr_program_dp_dphy_fast_training, ptr @dce110_psr_program_secondary_packet, ptr @dce110_link_encoder_connect_dig_be_to_fe, ptr @dce110_link_encoder_enable_hpd, ptr @dce110_link_encoder_disable_hpd, ptr @dce110_is_dig_enabled, ptr @dce110_get_dig_frontend, ptr @dce110_link_encoder_destroy, ptr null, ptr null, ptr null, ptr null, ptr @dce110_link_encoder_get_max_link_cap, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dce60_link_encoder_construct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dce60_link_encoder_construct\00", [35 x i8] zeroinitializer }, align 32
@dce60_link_encoder_construct._entry_ptr = internal global ptr @dce60_link_encoder_construct._entry, section ".printk_index", align 4
@__func__.aux_initialize = private unnamed_addr constant [15 x i8] c"aux_initialize\00", align 1
@setup_panel_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.setup_panel_mode = private unnamed_addr constant [17 x i8] c"setup_panel_mode\00", align 1
@set_dp_phy_pattern_hbr2_compliance_cp2520_2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.dce60_link_encoder_enable_dp_output = private unnamed_addr constant [36 x i8] c"dce60_link_encoder_enable_dp_output\00", align 1
@__func__.dce60_link_encoder_enable_dp_mst_output = private unnamed_addr constant [40 x i8] c"dce60_link_encoder_enable_dp_mst_output\00", align 1
@dce60_set_dp_phy_pattern_hbr2_compliance_cp2520_2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.dce110_link_encoder_construct = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 6], [56 x i8] zeroinitializer }, align 32
@switch.table.dce110_link_encoder_connect_dig_be_to_fe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.dce110_link_encoder_connect_dig_be_to_fe.7 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -2, i32 -3, i32 -5, i32 -9, i32 -17, i32 -33, i32 -65], [36 x i8] zeroinitializer }, align 32
@switch.table.dce60_link_encoder_construct = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 6], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.15 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.16 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"dce110_lnk_enc_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 100, i32 40 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 892, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 910, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 984, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 986, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"dce60_lnk_enc_funcs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1685, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1810, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [43 x i8] c"switch.table.dce110_link_encoder_construct\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [54 x i8] c"switch.table.dce110_link_encoder_connect_dig_be_to_fe\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [56 x i8] c"switch.table.dce110_link_encoder_connect_dig_be_to_fe.7\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [42 x i8] c"switch.table.dce60_link_encoder_construct\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @dce110_link_encoder_construct._entry, ptr @dce110_link_encoder_construct._entry_ptr, ptr @dce60_link_encoder_construct._entry, ptr @dce60_link_encoder_construct._entry_ptr, ptr @dce110_lnk_enc_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dce60_lnk_enc_funcs, ptr @.str.5, ptr @switch.table.dce110_link_encoder_construct, ptr @switch.table.dce110_link_encoder_connect_dig_be_to_fe, ptr @switch.table.dce110_link_encoder_connect_dig_be_to_fe.7, ptr @switch.table.dce60_link_encoder_construct], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_lnk_enc_funcs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_link_encoder_construct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_lnk_enc_funcs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_link_encoder_construct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_link_encoder_construct to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_link_encoder_connect_dig_be_to_fe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_link_encoder_connect_dig_be_to_fe.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce60_link_encoder_construct to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce110_get_dig_frontend(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !68
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %3 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link_regs, align 4
  %DIG_BE_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %DIG_BE_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DIG_BE_CNTL, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext 8, i32 noundef 32512, ptr noundef nonnull %value) #7
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
    i32 16, label %sw.bb4
    i32 32, label %sw.bb5
    i32 64, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ -1, %sw.default ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %result.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_set_dp_phy_pattern_training_pattern(ptr nocapture noundef readonly %enc, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL, align 4
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %5, i32 noundef %index, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_regs, align 4
  %DP_LINK_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %DP_LINK_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DP_LINK_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %11, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %DP_DPHY_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DP_DPHY_CNTL.i, align 4
  %call.i7 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %17, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %20 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_PRBS_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DP_DPHY_PRBS_CNTL.i, align 4
  %call.i10 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %23, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_psr_program_dp_dphy_fast_training(ptr nocapture noundef readonly %enc, i1 noundef zeroext %exit_link_training_required) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_FAST_TRAINING = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %DP_DPHY_FAST_TRAINING to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_DPHY_FAST_TRAINING, align 4
  br i1 %exit_link_training_required, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_BS_SR_SWAP_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %DP_DPHY_BS_SR_SWAP_CNTL to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DP_DPHY_BS_SR_SWAP_CNTL, align 4
  %call9 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %11, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef 5) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_psr_program_secondary_packet(ptr nocapture noundef readonly %enc, i32 noundef %sdp_transmit_line_num_deadline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs, align 4
  %DP_SEC_CNTL1 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %DP_SEC_CNTL1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_SEC_CNTL1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 2, i8 noundef zeroext 16, i32 noundef -65536, i32 noundef %sdp_transmit_line_num_deadline, i32 noundef 4, i32 noundef 16, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_is_dig_enabled(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !68
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %3 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link_regs, align 4
  %DIG_BE_EN_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %DIG_BE_EN_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DIG_BE_EN_CNTL, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %value) #7
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp ne i32 %8, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dce110_link_encoder_validate_dvi_output(ptr nocapture noundef readonly %enc110, i32 noundef %connector_signal, i32 noundef %signal, ptr nocapture noundef readonly %crtc_timing) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %signal)
  %cmp = icmp eq i32 %signal, 2
  %spec.select = select i1 %cmp, i32 330000, i32 165000
  %connector_signal.off = add i32 %connector_signal, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %connector_signal.off)
  %switch = icmp ult i32 %connector_signal.off, 2
  br i1 %switch, label %entry.if.end4_crit_edge, label %if.then3

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %max_hdmi_pixel_clock = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %max_hdmi_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_hdmi_pixel_clock, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %max_pixel_clock.1 = phi i32 [ %1, %if.then3 ], [ %spec.select, %entry.if.end4_crit_edge ]
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %2 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5.not = icmp eq i32 %3, 1
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %4 = zext i32 %connector_signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %connector_signal, label %if.end7.if.end15_crit_edge [
    i32 1, label %if.end7.land.lhs.true10_crit_edge
    i32 4, label %if.end7.land.lhs.true10_crit_edge39
  ]

if.end7.land.lhs.true10_crit_edge39:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true10

if.end7.land.lhs.true10_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true10:                                  ; preds = %if.end7.land.lhs.true10_crit_edge, %if.end7.land.lhs.true10_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %signal)
  %cmp11.not = icmp eq i32 %signal, 4
  br i1 %cmp11.not, label %land.lhs.true10.if.end15_crit_edge, label %land.lhs.true12

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %pix_clk_100hz = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 12
  %5 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pix_clk_100hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650000, i32 %6)
  %cmp13 = icmp ugt i32 %6, 1650000
  br i1 %cmp13, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end15_crit_edge

land.lhs.true12.if.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true12.if.end15_crit_edge, %land.lhs.true10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %pix_clk_100hz16 = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 12
  %7 = ptrtoint ptr %pix_clk_100hz16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pix_clk_100hz16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %8)
  %cmp17 = icmp ult i32 %8, 250000
  %mul21 = mul i32 %max_pixel_clock.1, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul21)
  %cmp22 = icmp ugt i32 %8, %mul21
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.end15.cleanup_crit_edge, label %if.end24

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %display_color_depth = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 16
  %9 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %display_color_depth, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %10, label %if.end24.cleanup_crit_edge [
    i32 1, label %if.end24.sw.epilog_crit_edge
    i32 2, label %if.end24.sw.epilog_crit_edge40
    i32 3, label %if.end24.sw.bb25_crit_edge
    i32 6, label %if.end24.sw.bb25_crit_edge41
  ]

if.end24.sw.bb25_crit_edge41:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

if.end24.sw.bb25_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

if.end24.sw.epilog_crit_edge40:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb25:                                          ; preds = %if.end24.sw.bb25_crit_edge, %if.end24.sw.bb25_crit_edge41
  br i1 %cmp, label %sw.bb25.sw.epilog_crit_edge, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge40
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb25.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %if.end4.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %if.end4.cleanup_crit_edge ], [ false, %land.lhs.true12.cleanup_crit_edge ], [ false, %if.end15.cleanup_crit_edge ], [ false, %sw.bb25.cleanup_crit_edge ], [ false, %if.end24.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dce110_link_encoder_validate_dp_output(ptr nocapture readnone %enc110, ptr nocapture noundef readonly %crtc_timing) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %0 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ne i32 %1, 4
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_construct(ptr nocapture noundef %enc110, ptr nocapture noundef readonly %init_data, ptr nocapture noundef readonly %enc_features, ptr noundef %link_regs, ptr noundef %aux_regs, ptr noundef %hpd_regs) local_unnamed_addr #0 align 64 {
entry:
  %bp_cap_info = alloca %struct.bp_encoder_cap_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bp_cap_info) #7
  %0 = ptrtoint ptr %bp_cap_info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 281470681743360, ptr %bp_cap_info, align 8
  %ctx = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_bios, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %enc110 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce110_lnk_enc_funcs, ptr %enc110, align 4
  %8 = load ptr, ptr %ctx, align 4
  %ctx4 = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %9 = ptrtoint ptr %ctx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ctx4, align 4
  %id = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 3
  %encoder = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 3
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encoder, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %id, align 4
  %hpd_source = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 2
  %13 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hpd_source, align 4
  %hpd_source7 = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 9
  %15 = ptrtoint ptr %hpd_source7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %hpd_source7, align 4
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 4
  %connector9 = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 1
  %16 = ptrtoint ptr %connector9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %connector9, align 4
  %18 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %connector, align 4
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 6
  %19 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %preferred_engine, align 4
  %features = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 7
  %20 = call ptr @memcpy(ptr %features, ptr %enc_features, i32 16)
  %transmitter = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 5
  %21 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %transmitter, align 4
  %transmitter13 = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 8
  %23 = ptrtoint ptr %transmitter13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %transmitter13, align 4
  %output_signals = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 5
  %24 = ptrtoint ptr %output_signals to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 239, ptr %output_signals, align 4
  %link_regs15 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %25 = ptrtoint ptr %link_regs15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %link_regs, ptr %link_regs15, align 4
  %aux_regs16 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 2
  %26 = ptrtoint ptr %aux_regs16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %aux_regs, ptr %aux_regs16, align 4
  %hpd_regs17 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 3
  %27 = ptrtoint ptr %hpd_regs17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hpd_regs, ptr %hpd_regs17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %22)
  %28 = icmp ult i32 %22, 10
  br i1 %28, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef null) #7
  tail call void @kgdb_breakpoint() #7
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %22 to i16
  %switch.shifted = lshr i16 575, %switch.maskindex
  %29 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %switch.lobit.not = icmp eq i16 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dce110_link_encoder_construct, i32 0, i32 %22
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %.sink = phi i32 [ -1, %do.end ], [ %switch.load, %switch.lookup ]
  %31 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %preferred_engine, align 4
  %32 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %features, align 4
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %features, align 4
  %get_encoder_cap_info = getelementptr inbounds %struct.dc_vbios_funcs, ptr %6, i32 0, i32 10
  %33 = ptrtoint ptr %get_encoder_cap_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_encoder_cap_info, align 4
  %35 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx4, align 4
  %dc_bios66 = getelementptr inbounds %struct.dc_context, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %dc_bios66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dc_bios66, align 4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack = load i32, ptr %id, align 4
  %40 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = call i32 %34(ptr noundef %38, [1 x i32] %40, ptr noundef nonnull %bp_cap_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then69, label %do.end106

if.then69:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %bp_cap_info to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load70 = load i16, ptr %bp_cap_info, align 8
  %42 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load75 = load i16, ptr %features, align 4
  %43 = shl i16 %bf.load70, 1
  %bf.shl = and i16 %43, -32768
  %bf.clear76 = and i16 %bf.load75, 14335
  %bf.set77 = or i16 %bf.clear76, %bf.shl
  %bf.shl87 = and i16 %43, 16384
  %bf.set89 = or i16 %bf.set77, %bf.shl87
  %44 = lshr i16 %bf.load70, 1
  %bf.shl100 = and i16 %44, 2048
  %bf.set102 = or i16 %bf.set89, %bf.shl100
  store i16 %bf.set102, ptr %features, align 4
  br label %if.end109

do.end106:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call) #10
  br label %if.end109

if.end109:                                        ; preds = %do.end106, %if.then69
  %45 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx4, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %hdmi20_disable = getelementptr inbounds %struct.dc_debug_options, ptr %48, i32 0, i32 54
  %49 = ptrtoint ptr %hdmi20_disable to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hdmi20_disable, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool112.not = icmp eq i8 %50, 0
  br i1 %tobool112.not, label %if.end109.if.end120_crit_edge, label %if.then113

if.end109.if.end120_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load117 = load i16, ptr %features, align 4
  %bf.clear118 = and i16 %bf.load117, -2049
  store i16 %bf.clear118, ptr %features, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then113, %if.end109.if.end120_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bp_cap_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dce110_link_encoder_validate_output_with_stream(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %stream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %signal, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge32
    i32 4, label %sw.bb2
    i32 32, label %entry.sw.bb6_crit_edge
    i32 64, label %entry.sw.bb6_crit_edge33
    i32 128, label %entry.sw.bb10_crit_edge
    i32 8, label %entry.sw.bb10_crit_edge34
    i32 512, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb10_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb6_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link, align 4
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %spec.select.i = select i1 %cmp.i, i32 330000, i32 165000
  %connector_signal.off.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %connector_signal.off.i)
  %switch.i = icmp ult i32 %connector_signal.off.i, 2
  br i1 %switch.i, label %sw.bb.if.end4.i_crit_edge, label %if.then3.i

sw.bb.if.end4.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then3.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %max_hdmi_pixel_clock.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %max_hdmi_pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_hdmi_pixel_clock.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %sw.bb.if.end4.i_crit_edge
  %max_pixel_clock.1.i = phi i32 [ %8, %if.then3.i ], [ %spec.select.i, %sw.bb.if.end4.i_crit_edge ]
  %pixel_encoding.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %9 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5.not.i = icmp eq i32 %10, 1
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end4.i.sw.epilog_crit_edge

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end4.i
  %11 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %6, label %if.end7.i.if.end15.i_crit_edge [
    i32 1, label %if.end7.i.land.lhs.true12.i_crit_edge
    i32 4, label %if.end7.i.land.lhs.true12.i_crit_edge35
  ]

if.end7.i.land.lhs.true12.i_crit_edge35:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true12.i

if.end7.i.land.lhs.true12.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true12.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true12.i:                                ; preds = %if.end7.i.land.lhs.true12.i_crit_edge, %if.end7.i.land.lhs.true12.i_crit_edge35
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %12 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pix_clk_100hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650000, i32 %13)
  %cmp13.i = icmp ugt i32 %13, 1650000
  br i1 %cmp13.i, label %land.lhs.true12.i.sw.epilog_crit_edge, label %land.lhs.true12.i.if.end15.i_crit_edge

land.lhs.true12.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true12.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end15.i:                                       ; preds = %land.lhs.true12.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge
  %pix_clk_100hz16.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %pix_clk_100hz16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pix_clk_100hz16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %15)
  %cmp17.i = icmp ult i32 %15, 250000
  %mul21.i = mul i32 %max_pixel_clock.1.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul21.i)
  %cmp22.i = icmp ugt i32 %15, %mul21.i
  %or.cond.i = select i1 %cmp17.i, i1 true, i1 %cmp22.i
  br i1 %or.cond.i, label %if.end15.i.sw.epilog_crit_edge, label %if.end24.i

if.end15.i.sw.epilog_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end24.i:                                       ; preds = %if.end15.i
  %display_color_depth.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 16
  %16 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %display_color_depth.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %17, label %if.end24.i.sw.epilog_crit_edge [
    i32 1, label %if.end24.i.sw.epilog.i_crit_edge
    i32 2, label %if.end24.i.sw.epilog.i_crit_edge36
    i32 3, label %if.end24.i.sw.bb25.i_crit_edge
    i32 6, label %if.end24.i.sw.bb25.i_crit_edge37
  ]

if.end24.i.sw.bb25.i_crit_edge37:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25.i

if.end24.i.sw.bb25.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25.i

if.end24.i.sw.epilog.i_crit_edge36:               ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end24.i.sw.epilog.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end24.i.sw.epilog_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb25.i:                                        ; preds = %if.end24.i.sw.bb25.i_crit_edge, %if.end24.i.sw.bb25.i_crit_edge37
  br i1 %cmp.i, label %sw.bb25.i.sw.epilog.i_crit_edge, label %sw.bb25.i.sw.epilog_crit_edge

sw.bb25.i.sw.epilog_crit_edge:                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb25.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb25.i.sw.epilog.i_crit_edge, %if.end24.i.sw.epilog.i_crit_edge, %if.end24.i.sw.epilog.i_crit_edge36
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %phy_pix_clk = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 35
  %19 = ptrtoint ptr %phy_pix_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_pix_clk, align 8
  %features.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 7
  %max_hdmi_deep_color.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %max_hdmi_deep_color.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_hdmi_deep_color.i, align 4
  %display_color_depth.i24 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 16
  %23 = ptrtoint ptr %display_color_depth.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %display_color_depth.i24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i25 = icmp ult i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i = icmp ult i32 %24, 2
  %or.cond51.i = or i1 %cmp.i25, %cmp2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %20)
  %cmp5.i = icmp slt i32 %20, 25000
  %or.cond52.i = or i1 %cmp5.i, %or.cond51.i
  br i1 %or.cond52.i, label %sw.bb2.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb2
  %max_hdmi_pixel_clock.i26 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %max_hdmi_pixel_clock.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_hdmi_pixel_clock.i26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %20)
  %cmp11.i = icmp ult i32 %26, %20
  br i1 %cmp11.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %if.end13.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %hdmi_ycbcr420_supported.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 7, i32 3
  %27 = ptrtoint ptr %hdmi_ycbcr420_supported.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hdmi_ycbcr420_supported.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end13.i.if.end18.i_crit_edge

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %pixel_encoding.i27 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %29 = ptrtoint ptr %pixel_encoding.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixel_encoding.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp16.i = icmp eq i32 %30, 4
  br i1 %cmp16.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %if.end13.i.if.end18.i_crit_edge
  %31 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %features.i, align 4
  %32 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool21.not.i = icmp eq i16 %32, 0
  br i1 %tobool21.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i

lor.lhs.false22.i:                                ; preds = %if.end18.i
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %33 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %hdmi20_disable.i = getelementptr inbounds %struct.dc_debug_options, ptr %36, i32 0, i32 54
  %37 = ptrtoint ptr %hdmi20_disable.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hdmi20_disable.i, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool24.not.i = icmp ne i8 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 299999, i32 %20)
  %cmp26.i = icmp ugt i32 %20, 299999
  %or.cond.i28 = and i1 %cmp26.i, %tobool24.not.i
  br i1 %or.cond.i28, label %lor.lhs.false22.i.sw.epilog_crit_edge, label %lor.lhs.false22.i.if.end28.i_crit_edge

lor.lhs.false22.i.if.end28.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

lor.lhs.false22.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true25.i:                                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 299999, i32 %20)
  %cmp26.old.i = icmp ugt i32 %20, 299999
  br i1 %cmp26.old.i, label %land.lhs.true25.i.sw.epilog_crit_edge, label %land.lhs.true25.i.if.end28.i_crit_edge

land.lhs.true25.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true25.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end28.i:                                       ; preds = %land.lhs.true25.i.if.end28.i_crit_edge, %lor.lhs.false22.i.if.end28.i_crit_edge
  %ctx30.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %39 = ptrtoint ptr %ctx30.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx30.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %hdmi20_disable33.i = getelementptr inbounds %struct.dc_debug_options, ptr %42, i32 0, i32 54
  %43 = ptrtoint ptr %hdmi20_disable33.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hdmi20_disable33.i, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool34.not.i = icmp eq i8 %44, 0
  br i1 %tobool34.not.i, label %if.end28.i.if.end39.i_crit_edge, label %land.lhs.true35.i

if.end28.i.if.end39.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

land.lhs.true35.i:                                ; preds = %if.end28.i
  %pixel_encoding36.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %45 = ptrtoint ptr %pixel_encoding36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixel_encoding36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp37.i = icmp eq i32 %46, 4
  br i1 %cmp37.i, label %land.lhs.true35.i.sw.epilog_crit_edge, label %land.lhs.true35.i.if.end39.i_crit_edge

land.lhs.true35.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

land.lhs.true35.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end39.i:                                       ; preds = %land.lhs.true35.i.if.end39.i_crit_edge, %if.end28.i.if.end39.i_crit_edge
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge33
  %pixel_encoding.i30 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %47 = ptrtoint ptr %pixel_encoding.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pixel_encoding.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp.i31 = icmp ne i32 %48, 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge34
  %pixel_encoding = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %49 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp = icmp eq i32 %50, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb6, %if.end39.i, %land.lhs.true35.i.sw.epilog_crit_edge, %land.lhs.true25.i.sw.epilog_crit_edge, %lor.lhs.false22.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.epilog.i, %sw.bb25.i.sw.epilog_crit_edge, %if.end24.i.sw.epilog_crit_edge, %if.end15.i.sw.epilog_crit_edge, %land.lhs.true12.i.sw.epilog_crit_edge, %if.end4.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %is_valid.0.shrunk = phi i1 [ false, %sw.default ], [ %cmp, %sw.bb10 ], [ %cmp.i31, %sw.bb6 ], [ true, %entry.sw.epilog_crit_edge ], [ true, %sw.epilog.i ], [ false, %if.end4.i.sw.epilog_crit_edge ], [ false, %land.lhs.true12.i.sw.epilog_crit_edge ], [ false, %if.end15.i.sw.epilog_crit_edge ], [ false, %sw.bb25.i.sw.epilog_crit_edge ], [ false, %if.end24.i.sw.epilog_crit_edge ], [ true, %if.end39.i ], [ false, %sw.bb2.sw.epilog_crit_edge ], [ false, %lor.lhs.false.i.sw.epilog_crit_edge ], [ false, %land.lhs.true.i.sw.epilog_crit_edge ], [ false, %lor.lhs.false22.i.sw.epilog_crit_edge ], [ false, %land.lhs.true25.i.sw.epilog_crit_edge ], [ false, %land.lhs.true35.i.sw.epilog_crit_edge ]
  ret i1 %is_valid.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_hw_init(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 36)
  %2 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %cntl, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %3 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %engine_id, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %4 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transmitter, align 4
  %transmitter1 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %6 = ptrtoint ptr %transmitter1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %transmitter1, align 4
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %7 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector, align 4
  %9 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %connector_obj_id, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %10 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %11 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %13 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %hpd_sel, align 4
  %bf.lshr.mask = and i32 %8, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 335544320
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %signal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dc_bios.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transmitter_control.i, align 4
  %call.i = call i32 %22(ptr noundef %18, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not = icmp eq i32 %call.i, 0
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_link_encoder_hw_init) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_link_encoder_hw_init, i32 noundef 986) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %23 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load11 = load i32, ptr %connector, align 4
  %bf.lshr12.mask = and i32 %bf.load11, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %bf.lshr12.mask)
  %cmp13 = icmp eq i32 %bf.lshr12.mask, 234881024
  br i1 %cmp13, label %if.then14, label %if.end8.if.end65_crit_edge

if.end8.if.end65_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then14:                                        ; preds = %if.end8
  %24 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %cntl, align 4
  %25 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i82 = getelementptr inbounds %struct.dc_context, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %dc_bios.i82 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dc_bios.i82, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %transmitter_control.i83 = getelementptr inbounds %struct.dc_vbios_funcs, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %transmitter_control.i83 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transmitter_control.i83, align 4
  %call.i84 = call i32 %32(ptr noundef %28, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp18.not = icmp eq i32 %call.i84, 0
  br i1 %cmp18.not, label %if.then14.if.end65_crit_edge, label %land.rhs

if.then14.if.end65_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.rhs:                                         ; preds = %if.then14
  %.b79 = load i1, ptr @dce110_link_encoder_hw_init.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.then61_crit_edge, label %if.then26, !prof !70

land.rhs.if.then61_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dce110_link_encoder_hw_init.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 995, i32 noundef 9, ptr noundef null) #7
  br label %if.then61

if.then61:                                        ; preds = %if.then26, %land.rhs.if.then61_crit_edge
  call void @kgdb_breakpoint() #7
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.then14.if.end65_crit_edge, %if.end8.if.end65_crit_edge
  %33 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i, align 4
  %35 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hpd_source, align 4
  %aux_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 2
  %37 = ptrtoint ptr %aux_regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aux_regs.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %call.i85 = call i32 @dm_read_reg_func(ptr noundef %34, i32 noundef %40, ptr noundef nonnull @__func__.aux_initialize) #7
  %and.i.i = and i32 %call.i85, -7340289
  %shl.i.i = shl i32 %36, 20
  %and42.i.i = and i32 %shl.i.i, 7340032
  %or.i.i = or i32 %and.i.i, %and42.i.i
  call void @dm_write_reg_func(ptr noundef %34, i32 noundef %40, i32 noundef %or.i.i, ptr noundef nonnull @__func__.aux_initialize) #7
  %41 = ptrtoint ptr %aux_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %aux_regs.i, align 4
  %AUX_DPHY_RX_CONTROL0.i = getelementptr inbounds %struct.dce110_link_enc_aux_registers, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %AUX_DPHY_RX_CONTROL0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %AUX_DPHY_RX_CONTROL0.i, align 4
  %call7.i = call i32 @dm_read_reg_func(ptr noundef %34, i32 noundef %44, ptr noundef nonnull @__func__.aux_initialize) #7
  %and.i23.i = and i32 %call7.i, -1793
  %or.i24.i = or i32 %and.i23.i, 256
  call void @dm_write_reg_func(ptr noundef %34, i32 noundef %44, i32 noundef %or.i24.i, ptr noundef nonnull @__func__.aux_initialize) #7
  %45 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hpd_source, align 4
  %47 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %49 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %link_regs.i, align 4
  %DIG_BE_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %DIG_BE_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %DIG_BE_CNTL.i, align 4
  %call.i87 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %48, i32 noundef %52, i32 noundef 1, i8 noundef zeroext 28, i32 noundef 1879048192, i32 noundef %46) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then7
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_destroy(ptr nocapture noundef %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %enc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_setup(ptr nocapture noundef readonly %enc, i32 noundef %signal) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %signal, label %do.end [
    i32 128, label %entry.sw.bb_crit_edge
    i32 32, label %entry.sw.bb_crit_edge56
    i32 8, label %sw.bb1
    i32 1, label %entry.sw.bb7_crit_edge
    i32 2, label %entry.sw.bb7_crit_edge57
    i32 4, label %sw.bb13
    i32 64, label %sw.bb19
  ]

entry.sw.bb7_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge56
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %3 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link_regs, align 4
  %DIG_BE_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %DIG_BE_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DIG_BE_CNTL, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %2, i32 noundef %6, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 458752, i32 noundef 0) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx3 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %7 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx3, align 4
  %link_regs4 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %9 = ptrtoint ptr %link_regs4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_regs4, align 4
  %DIG_BE_CNTL5 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %DIG_BE_CNTL5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %DIG_BE_CNTL5, align 4
  %call6 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %8, i32 noundef %12, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 458752, i32 noundef 1) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge57
  %ctx9 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %13 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx9, align 4
  %link_regs10 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %15 = ptrtoint ptr %link_regs10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_regs10, align 4
  %DIG_BE_CNTL11 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %DIG_BE_CNTL11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %DIG_BE_CNTL11, align 4
  %call12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %14, i32 noundef %18, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 458752, i32 noundef 2) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx15 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %19 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx15, align 4
  %link_regs16 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %21 = ptrtoint ptr %link_regs16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link_regs16, align 4
  %DIG_BE_CNTL17 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %DIG_BE_CNTL17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %DIG_BE_CNTL17, align 4
  %call18 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %20, i32 noundef %24, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 458752, i32 noundef 3) #7
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx21 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %25 = ptrtoint ptr %ctx21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx21, align 4
  %link_regs22 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %27 = ptrtoint ptr %link_regs22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link_regs22, align 4
  %DIG_BE_CNTL23 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %DIG_BE_CNTL23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DIG_BE_CNTL23, align 4
  %call24 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %26, i32 noundef %30, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 458752, i32 noundef 5) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1044, i32 noundef 9, ptr noundef null) #7
  tail call void @kgdb_breakpoint() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb19, %sw.bb13, %sw.bb7, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_enable_tmds_output(ptr nocapture noundef readonly %enc, i32 noundef %clock_source, i32 noundef %color_depth, i32 noundef %signal, i32 noundef %pixel_clock) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 40
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connector, align 4
  %4 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %connector_obj_id, align 4
  %5 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %cntl, align 4
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 6
  %6 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %preferred_engine, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %8 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %engine_id, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %9 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transmitter, align 4
  %transmitter2 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %11 = ptrtoint ptr %transmitter2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %transmitter2, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %12 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clock_source, ptr %pll_id, align 4
  %signal3 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %13 = ptrtoint ptr %signal3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %signal, ptr %signal3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %signal)
  %cmp = icmp eq i32 %signal, 2
  %spec.select = select i1 %cmp, i32 8, i32 4
  %14 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %14, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %16 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %18 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hpd_sel, align 4
  %pixel_clock7 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %19 = ptrtoint ptr %pixel_clock7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %pixel_clock, ptr %pixel_clock7, align 4
  %color_depth8 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 6
  %20 = ptrtoint ptr %color_depth8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %color_depth, ptr %color_depth8, align 4
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %21 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dc_bios.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transmitter_control.i, align 4
  %call.i = call i32 %28(ptr noundef %24, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, 0
  br i1 %cmp9.not, label %entry.if.end11_crit_edge, label %if.then10

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_link_encoder_enable_tmds_output) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_link_encoder_enable_tmds_output, i32 noundef 1085) #7
  call void @kgdb_breakpoint() #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_enable_lvds_output(ptr nocapture noundef readonly %enc, i32 noundef %clock_source, i32 noundef %pixel_clock) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connector, align 4
  %4 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %connector_obj_id, align 4
  %5 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %cntl, align 4
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 6
  %6 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %preferred_engine, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %8 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %engine_id, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %9 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transmitter, align 4
  %transmitter2 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %11 = ptrtoint ptr %transmitter2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %transmitter2, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %12 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clock_source, ptr %pll_id, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %13 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %signal, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %14 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %15 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %17 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hpd_sel, align 4
  %pixel_clock4 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %18 = ptrtoint ptr %pixel_clock4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %pixel_clock, ptr %pixel_clock4, align 4
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %19 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc_bios.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transmitter_control.i, align 4
  %call.i = call i32 %26(ptr noundef %22, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_link_encoder_enable_lvds_output) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_link_encoder_enable_lvds_output, i32 noundef 1117) #7
  call void @kgdb_breakpoint() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_enable_dp_output(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %link_settings, i32 noundef %clock_source) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 40
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_regs.i, align 4
  %DP_CONFIG.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %DP_CONFIG.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DP_CONFIG.i, align 4
  %8 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_settings, align 4
  %sub.i = add i32 %9, -1
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 3, i32 noundef %sub.i) #7
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 4
  %12 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SCRAM_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %DP_DPHY_SCRAM_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DP_DPHY_SCRAM_CNTL.i, align 4
  %call4.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %11, i32 noundef %15, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 1) #7
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %16 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %connector, align 4
  %18 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %connector_obj_id, align 4
  %19 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %cntl, align 4
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 6
  %20 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %preferred_engine, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %22 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %engine_id, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %23 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transmitter, align 4
  %transmitter2 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %25 = ptrtoint ptr %transmitter2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %transmitter2, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %26 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %clock_source, ptr %pll_id, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %27 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %signal, align 4
  %28 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_settings, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %30 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %31 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %33 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hpd_sel, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings, i32 0, i32 1
  %34 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_rate, align 4
  %mul = mul i32 %35, 27000
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %36 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %pixel_clock, align 4
  %color_depth = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 6
  %37 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %color_depth, align 4
  %38 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dc_bios.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transmitter_control.i, align 4
  %call.i12 = call i32 %45(ptr noundef %41, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.not = icmp eq i32 %call.i12, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_link_encoder_enable_dp_output) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_link_encoder_enable_dp_output, i32 noundef 1156) #7
  call void @kgdb_breakpoint() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_enable_dp_mst_output(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %link_settings, i32 noundef %clock_source) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 32
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_regs.i, align 4
  %DP_CONFIG.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %DP_CONFIG.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DP_CONFIG.i, align 4
  %8 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_settings, align 4
  %sub.i = add i32 %9, -1
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 3, i32 noundef %sub.i) #7
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 4
  %12 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SCRAM_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %DP_DPHY_SCRAM_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DP_DPHY_SCRAM_CNTL.i, align 4
  %call4.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %11, i32 noundef %15, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 1) #7
  %16 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cntl, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %17 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %engine_id, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %18 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transmitter, align 4
  %transmitter1 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %20 = ptrtoint ptr %transmitter1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %transmitter1, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %21 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %clock_source, ptr %pll_id, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %22 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %signal, align 4
  %23 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_settings, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %25 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %26 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %28 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hpd_sel, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings, i32 0, i32 1
  %29 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_rate, align 4
  %mul = mul i32 %30, 27000
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %31 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %pixel_clock, align 4
  %color_depth = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 6
  %32 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %color_depth, align 4
  %33 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dc_bios.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transmitter_control.i, align 4
  %call.i9 = call i32 %40(ptr noundef %36, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp.not = icmp eq i32 %call.i9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_link_encoder_enable_dp_mst_output) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_link_encoder_enable_dp_mst_output, i32 noundef 1195) #7
  call void @kgdb_breakpoint() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_disable_output(ptr nocapture noundef readonly %enc, i32 noundef %signal) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !68
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %3 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %5 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link_regs.i, align 4
  %DIG_BE_EN_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %DIG_BE_EN_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DIG_BE_EN_CNTL.i, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %4, i32 noundef %8, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %value.i) #7
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cntl, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %12 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transmitter, align 4
  %transmitter1 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %14 = ptrtoint ptr %transmitter1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %transmitter1, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %15 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %17 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hpd_sel, align 4
  %signal3 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %18 = ptrtoint ptr %signal3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %signal, ptr %signal3, align 4
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %19 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %connector, align 4
  %21 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %connector_obj_id, align 4
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dc_bios.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transmitter_control.i, align 4
  %call.i20 = call i32 %29(ptr noundef %25, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.not = icmp eq i32 %call.i20, 0
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_link_encoder_disable_output) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_link_encoder_disable_output, i32 noundef 1317) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %30 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %signal, label %if.end7.cleanup_crit_edge [
    i32 32, label %if.end7.if.then9_crit_edge
    i32 128, label %if.end7.if.then9_crit_edge24
    i32 64, label %if.end7.if.then9_crit_edge25
  ]

if.end7.if.then9_crit_edge25:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end7.if.then9_crit_edge24:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.end7.if.then9_crit_edge24, %if.end7.if.then9_crit_edge25
  %31 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx.i, align 4
  %33 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i, align 4
  %call.i23 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %32, i32 noundef %36, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 3, i32 noundef 0) #7
  %37 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx.i, align 4
  %39 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link_regs.i, align 4
  %DP_LINK_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %DP_LINK_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %DP_LINK_CNTL.i, align 4
  %call4.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %38, i32 noundef %42, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  call fastcc void @setup_panel_mode(ptr noundef %enc, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_dp_set_lane_settings(ptr nocapture noundef readonly %enc, ptr noundef readonly %link_settings) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %tobool.not = icmp eq ptr %link_settings, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce110_link_encoder_dp_set_lane_settings, i32 noundef 1336) #7
  tail call void @kgdb_breakpoint() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 11, ptr %cntl, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %3 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %transmitter, align 4
  %transmitter1 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %5 = ptrtoint ptr %transmitter1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %transmitter1, align 4
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connector, align 4
  %8 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %connector_obj_id, align 4
  %9 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_settings, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %11 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %12 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %14 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hpd_sel, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings, i32 0, i32 1
  %15 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_rate, align 4
  %mul = mul i32 %16, 27000
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %17 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %pixel_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp52.not = icmp eq i32 %10, 0
  br i1 %cmp52.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %lane_select = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 10
  %lane_settings30 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %lane.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %training_lane_set.sroa.0.053 = phi i8 [ 0, %for.body.lr.ph ], [ %training_lane_set.sroa.0.1, %if.end28.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.link_training_settings, ptr %link_settings, i32 0, i32 1, i32 %lane.054
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %19 to i8
  %bf.value = and i8 %conv, 3
  %bf.clear = and i8 %training_lane_set.sroa.0.053, -28
  %bf.set = or i8 %bf.value, %bf.clear
  %PRE_EMPHASIS = getelementptr %struct.link_training_settings, ptr %link_settings, i32 0, i32 1, i32 %lane.054, i32 1
  %20 = ptrtoint ptr %PRE_EMPHASIS to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %PRE_EMPHASIS, align 4
  %conv10 = trunc i32 %21 to i8
  %bf.value12 = shl i8 %conv10, 3
  %bf.shl = and i8 %bf.value12, 24
  %bf.set14 = or i8 %bf.set, %bf.shl
  %22 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %23)
  %cmp17 = icmp eq i32 %23, 20
  br i1 %cmp17, label %if.then19, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %POST_CURSOR2 = getelementptr %struct.link_training_settings, ptr %link_settings, i32 0, i32 1, i32 %lane.054, i32 2
  %24 = ptrtoint ptr %POST_CURSOR2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %POST_CURSOR2, align 4
  %conv22 = trunc i32 %25 to i8
  %bf.shl25 = shl i8 %conv22, 6
  %bf.clear26 = and i8 %bf.set14, 63
  %bf.set27 = or i8 %bf.shl25, %bf.clear26
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %for.body.if.end28_crit_edge
  %training_lane_set.sroa.0.1 = phi i8 [ %bf.set27, %if.then19 ], [ %bf.set14, %for.body.if.end28_crit_edge ]
  %26 = ptrtoint ptr %lane_select to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %lane.054, ptr %lane_select, align 4
  %conv29 = zext i8 %training_lane_set.sroa.0.1 to i32
  %27 = ptrtoint ptr %lane_settings30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv29, ptr %lane_settings30, align 4
  %28 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dc_bios.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transmitter_control.i, align 4
  %call.i = call i32 %35(ptr noundef %31, ptr noundef nonnull %cntl) #7
  %inc = add nuw i32 %lane.054, 1
  %36 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %link_settings, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %if.end28.for.body_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_dp_set_phy_pattern(ptr noundef %enc, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %do.end [
    i32 8, label %sw.bb
    i32 9, label %sw.bb1
    i32 10, label %sw.bb2
    i32 11, label %sw.bb3
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
    i32 7, label %sw.bb10
    i32 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %3 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %5 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %4, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %9 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx.i, align 4
  %11 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_regs.i, align 4
  %DP_LINK_CNTL.i.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %DP_LINK_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DP_LINK_CNTL.i.i, align 4
  %call.i.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %10, i32 noundef %14, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  %17 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %DP_DPHY_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DP_DPHY_CNTL.i.i, align 4
  %call.i7.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %16, i32 noundef %20, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %21 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.i, align 4
  %23 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_PRBS_CNTL.i.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i, align 4
  %call.i10.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %22, i32 noundef %26, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i47 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %27 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx.i47, align 4
  %link_regs.i48 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %29 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link_regs.i48, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i49 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i49, align 4
  tail call void @dm_write_reg_func(ptr noundef %28, i32 noundef %32, i32 noundef 1, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %33 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i47, align 4
  %35 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link_regs.i48, align 4
  %DP_LINK_CNTL.i.i50 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %DP_LINK_CNTL.i.i50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %DP_LINK_CNTL.i.i50, align 4
  %call.i.i51 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %39 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx.i47, align 4
  %41 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %link_regs.i48, align 4
  %DP_DPHY_CNTL.i.i52 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %DP_DPHY_CNTL.i.i52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DP_DPHY_CNTL.i.i52, align 4
  %call.i7.i53 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %40, i32 noundef %44, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %45 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx.i47, align 4
  %47 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %link_regs.i48, align 4
  %DP_DPHY_PRBS_CNTL.i.i54 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i54, align 4
  %call.i10.i55 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %46, i32 noundef %50, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i56 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %51 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx.i56, align 4
  %link_regs.i57 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %53 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %link_regs.i57, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i58 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %54, i32 0, i32 21
  %55 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i58, align 4
  tail call void @dm_write_reg_func(ptr noundef %52, i32 noundef %56, i32 noundef 2, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %57 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx.i56, align 4
  %59 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %link_regs.i57, align 4
  %DP_LINK_CNTL.i.i59 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %60, i32 0, i32 22
  %61 = ptrtoint ptr %DP_LINK_CNTL.i.i59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %DP_LINK_CNTL.i.i59, align 4
  %call.i.i60 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %58, i32 noundef %62, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %63 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx.i56, align 4
  %65 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %link_regs.i57, align 4
  %DP_DPHY_CNTL.i.i61 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %DP_DPHY_CNTL.i.i61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %DP_DPHY_CNTL.i.i61, align 4
  %call.i7.i62 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %64, i32 noundef %68, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %69 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx.i56, align 4
  %71 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %link_regs.i57, align 4
  %DP_DPHY_PRBS_CNTL.i.i63 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i63, align 4
  %call.i10.i64 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %70, i32 noundef %74, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i65 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %75 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx.i65, align 4
  %link_regs.i66 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %77 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %link_regs.i66, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i67 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %78, i32 0, i32 21
  %79 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i67 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i67, align 4
  tail call void @dm_write_reg_func(ptr noundef %76, i32 noundef %80, i32 noundef 3, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %81 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx.i65, align 4
  %83 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %link_regs.i66, align 4
  %DP_LINK_CNTL.i.i68 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %84, i32 0, i32 22
  %85 = ptrtoint ptr %DP_LINK_CNTL.i.i68 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %DP_LINK_CNTL.i.i68, align 4
  %call.i.i69 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %82, i32 noundef %86, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %87 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx.i65, align 4
  %89 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %link_regs.i66, align 4
  %DP_DPHY_CNTL.i.i70 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %90, i32 0, i32 14
  %91 = ptrtoint ptr %DP_DPHY_CNTL.i.i70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %DP_DPHY_CNTL.i.i70, align 4
  %call.i7.i71 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %88, i32 noundef %92, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %93 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ctx.i65, align 4
  %95 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %link_regs.i66, align 4
  %DP_DPHY_PRBS_CNTL.i.i72 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %96, i32 0, i32 16
  %97 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i72 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i72, align 4
  %call.i10.i73 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %94, i32 noundef %98, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_dp_phy_pattern_d102(ptr noundef %enc)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_dp_phy_pattern_symbol_error(ptr noundef %enc)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %99 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctx.i.i, align 4
  %link_regs.i.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %101 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_CNTL.i.i74 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %DP_DPHY_CNTL.i.i74 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %DP_DPHY_CNTL.i.i74, align 4
  %call.i.i75 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %100, i32 noundef %104, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %105 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctx.i.i, align 4
  %107 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_CNTL.i7.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %108, i32 0, i32 14
  %109 = ptrtoint ptr %DP_DPHY_CNTL.i7.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %DP_DPHY_CNTL.i7.i, align 4
  %call.i8.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %106, i32 noundef %110, i32 noundef 4, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 3, i32 noundef 8, i32 noundef 0) #7
  %111 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx.i.i, align 4
  %113 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_PRBS_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %114, i32 0, i32 16
  %115 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %DP_DPHY_PRBS_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %112, i32 noundef %116, i32 noundef 2, i8 noundef zeroext 4, i32 noundef 48, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #7
  %117 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ctx.i.i, align 4
  %119 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_CNTL.i11.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %120, i32 0, i32 14
  %121 = ptrtoint ptr %DP_DPHY_CNTL.i11.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %DP_DPHY_CNTL.i11.i, align 4
  %call.i12.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %118, i32 noundef %122, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 1) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %custom_pattern = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %param, i32 0, i32 1
  %123 = ptrtoint ptr %custom_pattern to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %custom_pattern, align 4
  tail call fastcc void @set_dp_phy_pattern_80bit_custom(ptr noundef %enc, ptr noundef %124)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc, i32 noundef 1)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc, i32 noundef 2)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc, i32 noundef 3)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dp_panel_mode = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %param, i32 0, i32 3
  %125 = ptrtoint ptr %dp_panel_mode to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dp_panel_mode, align 4
  tail call fastcc void @setup_panel_mode(ptr noundef %enc, i32 noundef %126) #7
  %ctx.i76 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %127 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ctx.i76, align 4
  %link_regs.i77 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %129 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %link_regs.i77, align 4
  %DP_LINK_FRAMING_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %130, i32 0, i32 23
  %131 = ptrtoint ptr %DP_LINK_FRAMING_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %DP_LINK_FRAMING_CNTL.i, align 4
  %call.i78 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %128, i32 noundef %132, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 262143, i32 noundef 8192, i32 noundef 24, i32 noundef 16777216, i32 noundef 0, i32 noundef 28, i32 noundef 268435456, i32 noundef 1) #7
  %133 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ctx.i76, align 4
  %135 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %link_regs.i77, align 4
  %DP_DPHY_SCRAM_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %136, i32 0, i32 17
  %137 = ptrtoint ptr %DP_DPHY_SCRAM_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %DP_DPHY_SCRAM_CNTL.i, align 4
  %call4.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %134, i32 noundef %138, i32 noundef 1, i8 noundef zeroext 8, i32 noundef 261888, i32 noundef 511) #7
  %139 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ctx.i76, align 4
  %141 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %link_regs.i77, align 4
  %DP_LINK_CNTL.i.i79 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %142, i32 0, i32 22
  %143 = ptrtoint ptr %DP_LINK_CNTL.i.i79 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %DP_LINK_CNTL.i.i79, align 4
  %call.i.i80 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %140, i32 noundef %144, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 1) #7
  %145 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx.i76, align 4
  %147 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %link_regs.i77, align 4
  %DP_DPHY_CNTL.i.i81 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %148, i32 0, i32 14
  %149 = ptrtoint ptr %DP_DPHY_CNTL.i.i81 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %DP_DPHY_CNTL.i.i81, align 4
  %call.i14.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %146, i32 noundef %150, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %151 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctx.i76, align 4
  %153 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %link_regs.i77, align 4
  %DP_DPHY_PRBS_CNTL.i.i82 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %154, i32 0, i32 16
  %155 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i82 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i82, align 4
  %call.i17.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %152, i32 noundef %156, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1423, i32 noundef 9, ptr noundef null) #7
  tail call void @kgdb_breakpoint() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dp_phy_pattern_d102(ptr nocapture noundef readonly %enc110) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %DP_DPHY_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_DPHY_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 4
  %8 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i7 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %DP_DPHY_CNTL.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DP_DPHY_CNTL.i7, align 4
  %call.i8 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %11, i32 noundef 4, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 1, i32 noundef 3, i32 noundef 8, i32 noundef 1) #7
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i, align 4
  %14 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_PRBS_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DP_DPHY_PRBS_CNTL.i, align 4
  %call.i11 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %17, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 4
  %20 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SYM0.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %DP_DPHY_SYM0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DP_DPHY_SYM0.i, align 4
  %call.i14 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %19, i32 noundef %23, i32 noundef 0, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef 682, i32 noundef 10, i32 noundef 1047552, i32 noundef 682, i32 noundef 20, i32 noundef 1072693248, i32 noundef 682) #7
  %24 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx.i, align 4
  %26 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SYM1.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %DP_DPHY_SYM1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %DP_DPHY_SYM1.i, align 4
  %call14.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %25, i32 noundef %29, i32 noundef 0, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef 682, i32 noundef 10, i32 noundef 1047552, i32 noundef 682, i32 noundef 20, i32 noundef 1072693248, i32 noundef 682) #7
  %30 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx.i, align 4
  %32 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SYM2.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %DP_DPHY_SYM2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DP_DPHY_SYM2.i, align 4
  %call22.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %31, i32 noundef %35, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef 682, i32 noundef 10, i32 noundef 1047552, i32 noundef 682) #7
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  %38 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i17 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %DP_DPHY_CNTL.i17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DP_DPHY_CNTL.i17, align 4
  %call.i18 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %37, i32 noundef %41, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dp_phy_pattern_symbol_error(ptr nocapture noundef readonly %enc110) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %DP_DPHY_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_DPHY_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  tail call fastcc void @setup_panel_mode(ptr noundef %enc110, i32 noundef 0)
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 4
  %8 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i8 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %DP_DPHY_CNTL.i8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DP_DPHY_CNTL.i8, align 4
  %call.i9 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %11, i32 noundef 4, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 3, i32 noundef 8, i32 noundef 0) #7
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i, align 4
  %14 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_PRBS_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %DP_DPHY_PRBS_CNTL to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DP_DPHY_PRBS_CNTL, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %17, i32 noundef 2, i8 noundef zeroext 4, i32 noundef 48, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1) #7
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 4
  %20 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i12 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %DP_DPHY_CNTL.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DP_DPHY_CNTL.i12, align 4
  %call.i13 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %23, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dp_phy_pattern_80bit_custom(ptr nocapture noundef readonly %enc110, ptr nocapture noundef readonly %pattern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %DP_DPHY_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_DPHY_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 4
  %8 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i98 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %DP_DPHY_CNTL.i98 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DP_DPHY_CNTL.i98, align 4
  %call.i99 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %11, i32 noundef 4, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 1, i32 noundef 3, i32 noundef 8, i32 noundef 1) #7
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i, align 4
  %14 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i102 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %DP_DPHY_CNTL.i102 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DP_DPHY_CNTL.i102, align 4
  %call.i103 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %17, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 1) #7
  %arrayidx = getelementptr i8, ptr %pattern, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = and i8 %19, 3
  %and = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %and, 8
  %21 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pattern, align 1
  %conv2 = zext i8 %22 to i32
  %or = or i32 %shl, %conv2
  %arrayidx5 = getelementptr i8, ptr %pattern, i32 2
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx5, align 1
  %25 = and i8 %24, 15
  %and7 = zext i8 %25 to i32
  %shl8 = shl nuw nsw i32 %and7, 6
  %26 = lshr i8 %19, 2
  %27 = zext i8 %26 to i32
  %or12 = or i32 %shl8, %27
  %arrayidx15 = getelementptr i8, ptr %pattern, i32 3
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx15, align 1
  %30 = and i8 %29, 63
  %and17 = zext i8 %30 to i32
  %shl18 = shl nuw nsw i32 %and17, 4
  %31 = lshr i8 %24, 4
  %32 = zext i8 %31 to i32
  %or23 = or i32 %shl18, %32
  %arrayidx26 = getelementptr i8, ptr %pattern, i32 4
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %34 to i32
  %shl28 = shl nuw nsw i32 %conv27, 2
  %35 = lshr i8 %29, 6
  %36 = zext i8 %35 to i32
  %or33 = or i32 %shl28, %36
  %arrayidx36 = getelementptr i8, ptr %pattern, i32 6
  %37 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx36, align 1
  %39 = and i8 %38, 3
  %and38 = zext i8 %39 to i32
  %shl39 = shl nuw nsw i32 %and38, 8
  %arrayidx40 = getelementptr i8, ptr %pattern, i32 5
  %40 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %41 to i32
  %or42 = or i32 %shl39, %conv41
  %arrayidx45 = getelementptr i8, ptr %pattern, i32 7
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx45, align 1
  %44 = and i8 %43, 15
  %and47 = zext i8 %44 to i32
  %shl48 = shl nuw nsw i32 %and47, 6
  %45 = lshr i8 %38, 2
  %46 = zext i8 %45 to i32
  %or53 = or i32 %shl48, %46
  %arrayidx56 = getelementptr i8, ptr %pattern, i32 8
  %47 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx56, align 1
  %49 = and i8 %48, 63
  %and58 = zext i8 %49 to i32
  %shl59 = shl nuw nsw i32 %and58, 4
  %50 = lshr i8 %43, 4
  %51 = zext i8 %50 to i32
  %or64 = or i32 %shl59, %51
  %arrayidx67 = getelementptr i8, ptr %pattern, i32 9
  %52 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %53 to i32
  %shl69 = shl nuw nsw i32 %conv68, 2
  %54 = lshr i8 %48, 6
  %55 = zext i8 %54 to i32
  %or74 = or i32 %shl69, %55
  %56 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx.i, align 4
  %58 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SYM0.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %DP_DPHY_SYM0.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %DP_DPHY_SYM0.i, align 4
  %call.i106 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %57, i32 noundef %61, i32 noundef 0, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef %or, i32 noundef 10, i32 noundef 1047552, i32 noundef %or12, i32 noundef 20, i32 noundef 1072693248, i32 noundef %or23) #7
  %62 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx.i, align 4
  %64 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SYM1.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %65, i32 0, i32 19
  %66 = ptrtoint ptr %DP_DPHY_SYM1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %DP_DPHY_SYM1.i, align 4
  %call14.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %63, i32 noundef %67, i32 noundef 0, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef %or33, i32 noundef 10, i32 noundef 1047552, i32 noundef %or42, i32 noundef 20, i32 noundef 1072693248, i32 noundef %or53) #7
  %68 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx.i, align 4
  %70 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SYM2.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %71, i32 0, i32 20
  %72 = ptrtoint ptr %DP_DPHY_SYM2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %DP_DPHY_SYM2.i, align 4
  %call22.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %69, i32 noundef %73, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 1023, i32 noundef %or64, i32 noundef 10, i32 noundef 1047552, i32 noundef %or74) #7
  %74 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx.i, align 4
  %76 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i109 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %DP_DPHY_CNTL.i109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %DP_DPHY_CNTL.i109, align 4
  %call.i110 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %75, i32 noundef %79, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc110, i32 noundef %cp2520_pattern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %DP_DPHY_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_DPHY_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %6 = ptrtoint ptr %enc110 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc110, align 4
  %setup = getelementptr inbounds %struct.link_encoder_funcs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup, align 4
  tail call void %9(ptr noundef %enc110, i32 noundef 32) #7
  tail call fastcc void @setup_panel_mode(ptr noundef %enc110, i32 noundef 0)
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 4
  %12 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_regs.i, align 4
  %DP_LINK_FRAMING_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %DP_LINK_FRAMING_CNTL to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DP_LINK_FRAMING_CNTL, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %11, i32 noundef %15, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 262143, i32 noundef 252, i32 noundef 24, i32 noundef 16777216, i32 noundef 1, i32 noundef 28, i32 noundef 268435456, i32 noundef 1) #7
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 4
  %18 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_SCRAM_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %DP_DPHY_SCRAM_CNTL to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DP_DPHY_SCRAM_CNTL, align 4
  %call6 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %17, i32 noundef %21, i32 noundef 1, i8 noundef zeroext 8, i32 noundef 261888, i32 noundef 0) #7
  %22 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_HBR2_PATTERN_CONTROL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %DP_DPHY_HBR2_PATTERN_CONTROL to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DP_DPHY_HBR2_PATTERN_CONTROL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx.i, align 4
  %call12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %27, i32 noundef %25, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 7, i32 noundef %cp2520_pattern) #7
  br label %if.end56

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cp2520_pattern)
  %cmp.not = icmp eq i32 %cp2520_pattern, 2
  br i1 %cmp.not, label %do.body.if.end56_crit_edge, label %land.rhs

do.body.if.end56_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.rhs:                                         ; preds = %do.body
  %.b78 = load i1, ptr @set_dp_phy_pattern_hbr2_compliance_cp2520_2.__already_done, align 1
  br i1 %.b78, label %land.rhs.if.then52_crit_edge, label %if.then21, !prof !70

land.rhs.if.then52_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @set_dp_phy_pattern_hbr2_compliance_cp2520_2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 455, i32 noundef 9, ptr noundef null) #7
  br label %if.then52

if.then52:                                        ; preds = %if.then21, %land.rhs.if.then52_crit_edge
  tail call void @kgdb_breakpoint() #7
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %do.body.if.end56_crit_edge, %if.then
  %28 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx.i, align 4
  %30 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link_regs.i, align 4
  %DP_LINK_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %DP_LINK_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DP_LINK_CNTL.i, align 4
  %call.i82 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %29, i32 noundef %33, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 1) #7
  %34 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx.i, align 4
  %36 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link_regs.i, align 4
  %DP_VID_STREAM_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %37, i32 0, i32 29
  %38 = ptrtoint ptr %DP_VID_STREAM_CNTL to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DP_VID_STREAM_CNTL, align 4
  %call60 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %35, i32 noundef %39, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  %40 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx.i, align 4
  %42 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i85 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %DP_DPHY_CNTL.i85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %DP_DPHY_CNTL.i85, align 4
  %call.i86 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_update_mst_stream_allocation_table(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %table) #0 align 64 {
entry:
  %value1 = alloca i32, align 4
  %value2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value1) #7
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value2) #7
  %1 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %value2, align 4
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %stream_allocations = getelementptr inbounds %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %stream_allocations to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_allocations, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %id.i = getelementptr inbounds %struct.stream_encoder, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %slot_count.i = getelementptr inbounds %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slot_count.i, align 1
  %conv.i = zext i8 %9 to i32
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %slots.0 = phi i32 [ %conv.i, %if.then.i ], [ 0, %if.then.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %src.1 = phi i32 [ %7, %if.then.i ], [ 0, %if.then.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %12 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT0 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %DP_MSE_SAT0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DP_MSE_SAT0, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %11, i32 noundef %15, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 7, i32 noundef %src.1, i32 noundef 8, i32 noundef 16128, i32 noundef %slots.0) #7
  %16 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp2 = icmp sgt i32 %17, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %arrayidx5 = getelementptr %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  %tobool.not.i82 = icmp eq ptr %19, null
  br i1 %tobool.not.i82, label %if.then3.if.end7_crit_edge, label %if.then.i86

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then.i86:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %id.i83 = getelementptr inbounds %struct.stream_encoder, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %id.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i83, align 4
  %slot_count.i84 = getelementptr %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %slot_count.i84 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %slot_count.i84, align 1
  %conv.i85 = zext i8 %23 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.then.i86, %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %slots.1 = phi i32 [ %conv.i85, %if.then.i86 ], [ 0, %if.then3.if.end7_crit_edge ], [ 0, %if.end.if.end7_crit_edge ]
  %src.3 = phi i32 [ %21, %if.then.i86 ], [ 0, %if.then3.if.end7_crit_edge ], [ 0, %if.end.if.end7_crit_edge ]
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %26 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT011 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %DP_MSE_SAT011 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %DP_MSE_SAT011, align 4
  %call12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %25, i32 noundef %29, i32 noundef 2, i8 noundef zeroext 16, i32 noundef 458752, i32 noundef %src.3, i32 noundef 24, i32 noundef 1056964608, i32 noundef %slots.1) #7
  %30 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp14 = icmp sgt i32 %31, 2
  br i1 %cmp14, label %if.then15, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.end7
  %arrayidx17 = getelementptr %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx17, align 4
  %tobool.not.i90 = icmp eq ptr %33, null
  br i1 %tobool.not.i90, label %if.then15.if.end19_crit_edge, label %if.then.i94

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.i94:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %id.i91 = getelementptr inbounds %struct.stream_encoder, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %id.i91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i91, align 4
  %slot_count.i92 = getelementptr %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1, i32 2, i32 2
  %36 = ptrtoint ptr %slot_count.i92 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %slot_count.i92, align 1
  %conv.i93 = zext i8 %37 to i32
  br label %if.end19

if.end19:                                         ; preds = %if.then.i94, %if.then15.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %slots.2 = phi i32 [ %conv.i93, %if.then.i94 ], [ 0, %if.then15.if.end19_crit_edge ], [ 0, %if.end7.if.end19_crit_edge ]
  %src.5 = phi i32 [ %35, %if.then.i94 ], [ 0, %if.then15.if.end19_crit_edge ], [ 0, %if.end7.if.end19_crit_edge ]
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT1 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %DP_MSE_SAT1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DP_MSE_SAT1, align 4
  %call23 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 7, i32 noundef %src.5, i32 noundef 8, i32 noundef 16128, i32 noundef %slots.2) #7
  %44 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp25 = icmp sgt i32 %45, 3
  br i1 %cmp25, label %if.then26, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.end19
  %arrayidx28 = getelementptr %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx28, align 4
  %tobool.not.i98 = icmp eq ptr %47, null
  br i1 %tobool.not.i98, label %if.then26.if.end30_crit_edge, label %if.then.i102

if.then26.if.end30_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then.i102:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %id.i99 = getelementptr inbounds %struct.stream_encoder, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %id.i99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i99, align 4
  %slot_count.i100 = getelementptr %struct.link_mst_stream_allocation_table, ptr %table, i32 0, i32 1, i32 3, i32 2
  %50 = ptrtoint ptr %slot_count.i100 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %slot_count.i100, align 1
  %conv.i101 = zext i8 %51 to i32
  br label %if.end30

if.end30:                                         ; preds = %if.then.i102, %if.then26.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %slots.3 = phi i32 [ %conv.i101, %if.then.i102 ], [ 0, %if.then26.if.end30_crit_edge ], [ 0, %if.end19.if.end30_crit_edge ]
  %src.7 = phi i32 [ %49, %if.then.i102 ], [ 0, %if.then26.if.end30_crit_edge ], [ 0, %if.end19.if.end30_crit_edge ]
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %54 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT134 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %55, i32 0, i32 25
  %56 = ptrtoint ptr %DP_MSE_SAT134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %DP_MSE_SAT134, align 4
  %call35 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %53, i32 noundef %57, i32 noundef 2, i8 noundef zeroext 16, i32 noundef 458752, i32 noundef %src.7, i32 noundef 24, i32 noundef 1056964608, i32 noundef %slots.3) #7
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  %60 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT_UPDATE = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %DP_MSE_SAT_UPDATE to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %DP_MSE_SAT_UPDATE, align 4
  %call39 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %59, i32 noundef %63, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 3, i32 noundef 1) #7
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end30
  %retries.0 = phi i32 [ 0, %if.end30 ], [ %retries.0.be, %do.body.backedge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 2147480) #7
  %65 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx, align 4
  %67 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT_UPDATE43 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %68, i32 0, i32 27
  %69 = ptrtoint ptr %DP_MSE_SAT_UPDATE43 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %DP_MSE_SAT_UPDATE43, align 4
  %call44 = call i32 @dm_read_reg_func(ptr noundef %66, i32 noundef %70, ptr noundef nonnull @__func__.dce110_link_encoder_update_mst_stream_allocation_table) #7
  %71 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx, align 4
  %73 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT_UPDATE48 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %74, i32 0, i32 27
  %75 = ptrtoint ptr %DP_MSE_SAT_UPDATE48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %DP_MSE_SAT_UPDATE48, align 4
  %call49 = call i32 @generic_reg_get(ptr noundef %72, i32 noundef %76, i8 noundef zeroext 0, i32 noundef 3, ptr noundef nonnull %value1) #7
  %77 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx, align 4
  %79 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %link_regs, align 4
  %DP_MSE_SAT_UPDATE53 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %DP_MSE_SAT_UPDATE53 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %DP_MSE_SAT_UPDATE53, align 4
  %call54 = call i32 @generic_reg_get(ptr noundef %78, i32 noundef %82, i8 noundef zeroext 8, i32 noundef 256, ptr noundef nonnull %value2) #7
  %83 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %value1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not = icmp eq i32 %84, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %do.body
  %85 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %value2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool55.not = icmp ne i32 %86, 0
  %inc = add i32 %retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc)
  %cmp58 = icmp ult i32 %inc, 50
  %or.cond = select i1 %tobool55.not, i1 %cmp58, i1 false
  br i1 %or.cond, label %land.lhs.true.do.body.backedge_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.do.body.backedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

if.end57:                                         ; preds = %do.body
  %inc.old = add i32 %retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc.old)
  %cmp58.old = icmp ult i32 %inc.old, 50
  br i1 %cmp58.old, label %if.end57.do.body.backedge_crit_edge, label %if.end57.do.end_crit_edge

if.end57.do.end_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end57.do.body.backedge_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.end57.do.body.backedge_crit_edge, %land.lhs.true.do.body.backedge_crit_edge
  %retries.0.be = phi i32 [ %inc.old, %if.end57.do.body.backedge_crit_edge ], [ %inc, %land.lhs.true.do.body.backedge_crit_edge ]
  br label %do.body

do.end:                                           ; preds = %if.end57.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_connect_dig_be_to_fe(ptr nocapture noundef readonly %enc, i32 noundef %engine, i1 noundef zeroext %connect) #0 align 64 {
entry:
  %field = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %field) #7
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %field, align 4, !annotation !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %engine)
  %cmp.not = icmp eq i32 %engine, -1
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %3 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link_regs, align 4
  %DIG_BE_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %DIG_BE_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DIG_BE_CNTL, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext 8, i32 noundef 32512, ptr noundef nonnull %field) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %engine)
  %7 = icmp ult i32 %engine, 7
  br i1 %connect, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  br i1 %7, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef null) #7
  call void @kgdb_breakpoint() #7
  br label %get_frontend_source.exit

switch.lookup:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.dce110_link_encoder_connect_dig_be_to_fe, i32 0, i32 %engine
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_frontend_source.exit

get_frontend_source.exit:                         ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %9 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field, align 4
  %or = or i32 %10, %retval.0.i
  br label %if.end

if.else:                                          ; preds = %if.then
  br i1 %7, label %switch.lookup25, label %do.end.i22

do.end.i22:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef null) #7
  call void @kgdb_breakpoint() #7
  br label %get_frontend_source.exit24

switch.lookup25:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep26 = getelementptr inbounds [7 x i32], ptr @switch.table.dce110_link_encoder_connect_dig_be_to_fe.7, i32 0, i32 %engine
  %11 = ptrtoint ptr %switch.gep26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load27 = load i32, ptr %switch.gep26, align 4
  br label %get_frontend_source.exit24

get_frontend_source.exit24:                       ; preds = %switch.lookup25, %do.end.i22
  %retval.0.i23 = phi i32 [ -1, %do.end.i22 ], [ %switch.load27, %switch.lookup25 ]
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field, align 4
  %and = and i32 %13, %retval.0.i23
  br label %if.end

if.end:                                           ; preds = %get_frontend_source.exit24, %get_frontend_source.exit
  %storemerge = phi i32 [ %and, %get_frontend_source.exit24 ], [ %or, %get_frontend_source.exit ]
  %14 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %field, align 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %17 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_regs, align 4
  %DIG_BE_CNTL8 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %DIG_BE_CNTL8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DIG_BE_CNTL8, align 4
  %call9 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %16, i32 noundef %20, i32 noundef 1, i8 noundef zeroext 8, i32 noundef 32512, i32 noundef %storemerge) #7
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %field) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_enable_hpd(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %hpd_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 3
  %2 = ptrtoint ptr %hpd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpd_regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.dce110_link_encoder_enable_hpd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_link_encoder_disable_hpd(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %hpd_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 3
  %2 = ptrtoint ptr %hpd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpd_regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.dce110_link_encoder_disable_hpd) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce110_link_encoder_get_max_link_cap(ptr nocapture noundef readonly %enc, ptr nocapture noundef writeonly %link_settings) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 7
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %features, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  %spec.select = select i1 %tobool.not, i32 10, i32 20
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool6.not = icmp eq i16 %1, 0
  %max_link_cap.sroa.4.1 = select i1 %tobool6.not, i32 %spec.select, i32 30
  %2 = ptrtoint ptr %link_settings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %link_settings, align 4
  %max_link_cap.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %link_settings, i32 4
  %3 = ptrtoint ptr %max_link_cap.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %max_link_cap.sroa.4.1, ptr %max_link_cap.sroa.4.0..sroa_idx, align 4
  %max_link_cap.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %link_settings, i32 8
  %4 = ptrtoint ptr %max_link_cap.sroa.6.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 68719476736, ptr %max_link_cap.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce60_link_encoder_construct(ptr nocapture noundef %enc110, ptr nocapture noundef readonly %init_data, ptr nocapture noundef readonly %enc_features, ptr noundef %link_regs, ptr noundef %aux_regs, ptr noundef %hpd_regs) local_unnamed_addr #0 align 64 {
entry:
  %bp_cap_info = alloca %struct.bp_encoder_cap_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bp_cap_info) #7
  %0 = ptrtoint ptr %bp_cap_info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 281470681743360, ptr %bp_cap_info, align 8
  %ctx = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_bios, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %enc110 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce60_lnk_enc_funcs, ptr %enc110, align 4
  %8 = load ptr, ptr %ctx, align 4
  %ctx4 = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %9 = ptrtoint ptr %ctx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ctx4, align 4
  %id = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 3
  %encoder = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 3
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encoder, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %id, align 4
  %hpd_source = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 2
  %13 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hpd_source, align 4
  %hpd_source7 = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 9
  %15 = ptrtoint ptr %hpd_source7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %hpd_source7, align 4
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 4
  %connector9 = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 1
  %16 = ptrtoint ptr %connector9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %connector9, align 4
  %18 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %connector, align 4
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 6
  %19 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %preferred_engine, align 4
  %features = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 7
  %20 = call ptr @memcpy(ptr %features, ptr %enc_features, i32 16)
  %transmitter = getelementptr inbounds %struct.encoder_init_data, ptr %init_data, i32 0, i32 5
  %21 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %transmitter, align 4
  %transmitter13 = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 8
  %23 = ptrtoint ptr %transmitter13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %transmitter13, align 4
  %output_signals = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 5
  %24 = ptrtoint ptr %output_signals to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 239, ptr %output_signals, align 4
  %link_regs15 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %25 = ptrtoint ptr %link_regs15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %link_regs, ptr %link_regs15, align 4
  %aux_regs16 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 2
  %26 = ptrtoint ptr %aux_regs16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %aux_regs, ptr %aux_regs16, align 4
  %hpd_regs17 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 3
  %27 = ptrtoint ptr %hpd_regs17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hpd_regs, ptr %hpd_regs17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %22)
  %28 = icmp ult i32 %22, 10
  br i1 %28, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1792, i32 noundef 9, ptr noundef null) #7
  tail call void @kgdb_breakpoint() #7
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %22 to i16
  %switch.shifted = lshr i16 575, %switch.maskindex
  %29 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %switch.lobit.not = icmp eq i16 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dce60_link_encoder_construct, i32 0, i32 %22
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %.sink = phi i32 [ -1, %do.end ], [ %switch.load, %switch.lookup ]
  %31 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %preferred_engine, align 4
  %32 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %features, align 4
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %features, align 4
  %get_encoder_cap_info = getelementptr inbounds %struct.dc_vbios_funcs, ptr %6, i32 0, i32 10
  %33 = ptrtoint ptr %get_encoder_cap_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_encoder_cap_info, align 4
  %35 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx4, align 4
  %dc_bios66 = getelementptr inbounds %struct.dc_context, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %dc_bios66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dc_bios66, align 4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack = load i32, ptr %id, align 4
  %40 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = call i32 %34(ptr noundef %38, [1 x i32] %40, ptr noundef nonnull %bp_cap_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then69, label %do.end106

if.then69:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %bp_cap_info to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load70 = load i16, ptr %bp_cap_info, align 8
  %42 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load75 = load i16, ptr %features, align 4
  %43 = shl i16 %bf.load70, 1
  %bf.shl = and i16 %43, -32768
  %bf.clear76 = and i16 %bf.load75, 14335
  %bf.set77 = or i16 %bf.clear76, %bf.shl
  %bf.shl87 = and i16 %43, 16384
  %bf.set89 = or i16 %bf.set77, %bf.shl87
  %44 = lshr i16 %bf.load70, 1
  %bf.shl100 = and i16 %44, 2048
  %bf.set102 = or i16 %bf.set89, %bf.shl100
  store i16 %bf.set102, ptr %features, align 4
  br label %if.end109

do.end106:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %call) #10
  br label %if.end109

if.end109:                                        ; preds = %do.end106, %if.then69
  %45 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx4, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %hdmi20_disable = getelementptr inbounds %struct.dc_debug_options, ptr %48, i32 0, i32 54
  %49 = ptrtoint ptr %hdmi20_disable to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hdmi20_disable, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool112.not = icmp eq i8 %50, 0
  br i1 %tobool112.not, label %if.end109.if.end120_crit_edge, label %if.then113

if.end109.if.end120_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load117 = load i16, ptr %features, align 4
  %bf.clear118 = and i16 %bf.load117, -2049
  store i16 %bf.clear118, ptr %features, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then113, %if.end109.if.end120_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bp_cap_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_panel_mode(ptr nocapture noundef readonly %enc110, i32 noundef %panel_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %psp_setup_panel_mode = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 2, i32 22
  %4 = ptrtoint ptr %psp_setup_panel_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %psp_setup_panel_mode, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %link_regs = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %6 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_INTERNAL_CTRL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %DP_DPHY_INTERNAL_CTRL to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %DP_DPHY_INTERNAL_CTRL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %land.rhs, label %do.body.do.end46_crit_edge

do.body.do.end46_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

land.rhs:                                         ; preds = %do.body
  %.b64 = load i1, ptr @setup_panel_mode.__already_done, align 1
  br i1 %.b64, label %land.rhs.if.then43_crit_edge, label %if.then11, !prof !70

land.rhs.if.then43_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @setup_panel_mode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef null) #7
  br label %if.then43

if.then43:                                        ; preds = %if.then11, %land.rhs.if.then43_crit_edge
  tail call void @kgdb_breakpoint() #7
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body.do.end46_crit_edge
  %10 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx1, align 4
  %12 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_INTERNAL_CTRL50 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %DP_DPHY_INTERNAL_CTRL50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DP_DPHY_INTERNAL_CTRL50, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %11, i32 noundef %15, ptr noundef nonnull @__func__.setup_panel_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %panel_mode)
  %switch.selectcmp = icmp eq i32 %panel_mode, 2
  %switch.select = select i1 %switch.selectcmp, i32 17, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %panel_mode)
  %switch.selectcmp66 = icmp eq i32 %panel_mode, 1
  %switch.select67 = select i1 %switch.selectcmp66, i32 1, i32 %switch.select
  %16 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx1, align 4
  %18 = ptrtoint ptr %link_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link_regs, align 4
  %DP_DPHY_INTERNAL_CTRL55 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %DP_DPHY_INTERNAL_CTRL55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DP_DPHY_INTERNAL_CTRL55, align 4
  tail call void @dm_write_reg_func(ptr noundef %17, i32 noundef %21, i32 noundef %switch.select67, ptr noundef nonnull @__func__.setup_panel_mode) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_link_encoder_enable_dp_output(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %link_settings, i32 noundef %clock_source) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 40
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_regs.i, align 4
  %DP_CONFIG.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %DP_CONFIG.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DP_CONFIG.i, align 4
  %8 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_settings, align 4
  %sub.i = add i32 %9, -1
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 3, i32 noundef %sub.i) #7
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %connector = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 4
  %10 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connector, align 4
  %12 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %connector_obj_id, align 4
  %13 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %cntl, align 4
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 6
  %14 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %preferred_engine, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %16 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %engine_id, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %17 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %transmitter, align 4
  %transmitter2 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %19 = ptrtoint ptr %transmitter2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %transmitter2, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %20 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %clock_source, ptr %pll_id, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32, ptr %signal, align 4
  %22 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_settings, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %24 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %25 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %27 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %hpd_sel, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings, i32 0, i32 1
  %28 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_rate, align 4
  %mul = mul i32 %29, 27000
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %30 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %pixel_clock, align 4
  %color_depth = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 6
  %31 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %color_depth, align 4
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dc_bios.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transmitter_control.i, align 4
  %call.i12 = call i32 %39(ptr noundef %35, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.not = icmp eq i32 %call.i12, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce60_link_encoder_enable_dp_output) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce60_link_encoder_enable_dp_output, i32 noundef 1235) #7
  call void @kgdb_breakpoint() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_link_encoder_enable_dp_mst_output(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %link_settings, i32 noundef %clock_source) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_transmitter_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cntl) #7
  %0 = getelementptr inbounds i8, ptr %cntl, i32 32
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_regs.i, align 4
  %DP_CONFIG.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %DP_CONFIG.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DP_CONFIG.i, align 4
  %8 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_settings, align 4
  %sub.i = add i32 %9, -1
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 3, i32 noundef %sub.i) #7
  %10 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cntl, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %11 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %engine_id, align 4
  %transmitter = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 8
  %12 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transmitter, align 4
  %transmitter1 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %14 = ptrtoint ptr %transmitter1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %transmitter1, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %15 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %clock_source, ptr %pll_id, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %signal, align 4
  %17 = ptrtoint ptr %link_settings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_settings, align 4
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %19 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %lanes_number, align 4
  %hpd_source = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 9
  %20 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hpd_source, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %22 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %hpd_sel, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %link_settings, i32 0, i32 1
  %23 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_rate, align 4
  %mul = mul i32 %24, 27000
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %25 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %pixel_clock, align 4
  %color_depth = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 6
  %26 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %color_depth, align 4
  %27 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx.i, align 4
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc_bios.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %transmitter_control.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transmitter_control.i, align 4
  %call.i9 = call i32 %34(ptr noundef %30, ptr noundef nonnull %cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp.not = icmp eq i32 %call.i9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce60_link_encoder_enable_dp_mst_output) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dce60_link_encoder_enable_dp_mst_output, i32 noundef 1274) #7
  call void @kgdb_breakpoint() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cntl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_link_encoder_dp_set_phy_pattern(ptr noundef %enc, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %do.end [
    i32 8, label %sw.bb
    i32 9, label %sw.bb1
    i32 10, label %sw.bb2
    i32 11, label %sw.bb3
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
    i32 7, label %sw.bb10
    i32 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %3 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %5 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %4, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %9 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx.i, align 4
  %11 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_regs.i, align 4
  %DP_LINK_CNTL.i.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %DP_LINK_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DP_LINK_CNTL.i.i, align 4
  %call.i.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %10, i32 noundef %14, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  %17 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %DP_DPHY_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DP_DPHY_CNTL.i.i, align 4
  %call.i7.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %16, i32 noundef %20, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %21 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.i, align 4
  %23 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_PRBS_CNTL.i.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i, align 4
  %call.i10.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %22, i32 noundef %26, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i47 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %27 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx.i47, align 4
  %link_regs.i48 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %29 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link_regs.i48, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i49 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i49, align 4
  tail call void @dm_write_reg_func(ptr noundef %28, i32 noundef %32, i32 noundef 1, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %33 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i47, align 4
  %35 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link_regs.i48, align 4
  %DP_LINK_CNTL.i.i50 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %DP_LINK_CNTL.i.i50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %DP_LINK_CNTL.i.i50, align 4
  %call.i.i51 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %39 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx.i47, align 4
  %41 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %link_regs.i48, align 4
  %DP_DPHY_CNTL.i.i52 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %DP_DPHY_CNTL.i.i52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DP_DPHY_CNTL.i.i52, align 4
  %call.i7.i53 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %40, i32 noundef %44, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %45 = ptrtoint ptr %ctx.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx.i47, align 4
  %47 = ptrtoint ptr %link_regs.i48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %link_regs.i48, align 4
  %DP_DPHY_PRBS_CNTL.i.i54 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i54, align 4
  %call.i10.i55 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %46, i32 noundef %50, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i56 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %51 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx.i56, align 4
  %link_regs.i57 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %53 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %link_regs.i57, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i58 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %54, i32 0, i32 21
  %55 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i58, align 4
  tail call void @dm_write_reg_func(ptr noundef %52, i32 noundef %56, i32 noundef 2, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %57 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx.i56, align 4
  %59 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %link_regs.i57, align 4
  %DP_LINK_CNTL.i.i59 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %60, i32 0, i32 22
  %61 = ptrtoint ptr %DP_LINK_CNTL.i.i59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %DP_LINK_CNTL.i.i59, align 4
  %call.i.i60 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %58, i32 noundef %62, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %63 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx.i56, align 4
  %65 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %link_regs.i57, align 4
  %DP_DPHY_CNTL.i.i61 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %DP_DPHY_CNTL.i.i61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %DP_DPHY_CNTL.i.i61, align 4
  %call.i7.i62 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %64, i32 noundef %68, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %69 = ptrtoint ptr %ctx.i56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx.i56, align 4
  %71 = ptrtoint ptr %link_regs.i57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %link_regs.i57, align 4
  %DP_DPHY_PRBS_CNTL.i.i63 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i63, align 4
  %call.i10.i64 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %70, i32 noundef %74, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i65 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %75 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx.i65, align 4
  %link_regs.i66 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %77 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %link_regs.i66, align 4
  %DP_DPHY_TRAINING_PATTERN_SEL.i67 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %78, i32 0, i32 21
  %79 = ptrtoint ptr %DP_DPHY_TRAINING_PATTERN_SEL.i67 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %DP_DPHY_TRAINING_PATTERN_SEL.i67, align 4
  tail call void @dm_write_reg_func(ptr noundef %76, i32 noundef %80, i32 noundef 3, ptr noundef nonnull @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern) #7
  %81 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx.i65, align 4
  %83 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %link_regs.i66, align 4
  %DP_LINK_CNTL.i.i68 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %84, i32 0, i32 22
  %85 = ptrtoint ptr %DP_LINK_CNTL.i.i68 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %DP_LINK_CNTL.i.i68, align 4
  %call.i.i69 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %82, i32 noundef %86, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 0) #7
  %87 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx.i65, align 4
  %89 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %link_regs.i66, align 4
  %DP_DPHY_CNTL.i.i70 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %90, i32 0, i32 14
  %91 = ptrtoint ptr %DP_DPHY_CNTL.i.i70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %DP_DPHY_CNTL.i.i70, align 4
  %call.i7.i71 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %88, i32 noundef %92, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %93 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ctx.i65, align 4
  %95 = ptrtoint ptr %link_regs.i66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %link_regs.i66, align 4
  %DP_DPHY_PRBS_CNTL.i.i72 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %96, i32 0, i32 16
  %97 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i72 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i72, align 4
  %call.i10.i73 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %94, i32 noundef %98, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_dp_phy_pattern_d102(ptr noundef %enc)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_dp_phy_pattern_symbol_error(ptr noundef %enc)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i.i = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %99 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctx.i.i, align 4
  %link_regs.i.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %101 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_CNTL.i.i74 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %DP_DPHY_CNTL.i.i74 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %DP_DPHY_CNTL.i.i74, align 4
  %call.i.i75 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %100, i32 noundef %104, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %105 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctx.i.i, align 4
  %107 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_CNTL.i7.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %108, i32 0, i32 14
  %109 = ptrtoint ptr %DP_DPHY_CNTL.i7.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %DP_DPHY_CNTL.i7.i, align 4
  %call.i8.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %106, i32 noundef %110, i32 noundef 4, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 3, i32 noundef 8, i32 noundef 0) #7
  %111 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx.i.i, align 4
  %113 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_PRBS_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %114, i32 0, i32 16
  %115 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %DP_DPHY_PRBS_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %112, i32 noundef %116, i32 noundef 2, i8 noundef zeroext 4, i32 noundef 48, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #7
  %117 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ctx.i.i, align 4
  %119 = ptrtoint ptr %link_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %link_regs.i.i, align 4
  %DP_DPHY_CNTL.i11.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %120, i32 0, i32 14
  %121 = ptrtoint ptr %DP_DPHY_CNTL.i11.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %DP_DPHY_CNTL.i11.i, align 4
  %call.i12.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %118, i32 noundef %122, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 1) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %custom_pattern = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %param, i32 0, i32 1
  %123 = ptrtoint ptr %custom_pattern to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %custom_pattern, align 4
  tail call fastcc void @set_dp_phy_pattern_80bit_custom(ptr noundef %enc, ptr noundef %124)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dce60_set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc, i32 noundef 1)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dce60_set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc, i32 noundef 2)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dce60_set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc, i32 noundef 3)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dp_panel_mode = getelementptr inbounds %struct.encoder_set_dp_phy_pattern_param, ptr %param, i32 0, i32 3
  %125 = ptrtoint ptr %dp_panel_mode to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dp_panel_mode, align 4
  tail call fastcc void @setup_panel_mode(ptr noundef %enc, i32 noundef %126) #7
  %ctx.i76 = getelementptr inbounds %struct.link_encoder, ptr %enc, i32 0, i32 2
  %127 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ctx.i76, align 4
  %link_regs.i77 = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc, i32 0, i32 1
  %129 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %link_regs.i77, align 4
  %DP_LINK_FRAMING_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %130, i32 0, i32 23
  %131 = ptrtoint ptr %DP_LINK_FRAMING_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %DP_LINK_FRAMING_CNTL.i, align 4
  %call.i78 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %128, i32 noundef %132, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 262143, i32 noundef 8192, i32 noundef 24, i32 noundef 16777216, i32 noundef 0, i32 noundef 28, i32 noundef 268435456, i32 noundef 1) #7
  %133 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ctx.i76, align 4
  %135 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %link_regs.i77, align 4
  %DP_LINK_CNTL.i.i79 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %136, i32 0, i32 22
  %137 = ptrtoint ptr %DP_LINK_CNTL.i.i79 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %DP_LINK_CNTL.i.i79, align 4
  %call.i.i80 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %134, i32 noundef %138, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 1) #7
  %139 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ctx.i76, align 4
  %141 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %link_regs.i77, align 4
  %DP_DPHY_CNTL.i.i81 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %142, i32 0, i32 14
  %143 = ptrtoint ptr %DP_DPHY_CNTL.i.i81 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %DP_DPHY_CNTL.i.i81, align 4
  %call.i8.i82 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %140, i32 noundef %144, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %145 = ptrtoint ptr %ctx.i76 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx.i76, align 4
  %147 = ptrtoint ptr %link_regs.i77 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %link_regs.i77, align 4
  %DP_DPHY_PRBS_CNTL.i.i83 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %148, i32 0, i32 16
  %149 = ptrtoint ptr %DP_DPHY_PRBS_CNTL.i.i83 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %DP_DPHY_PRBS_CNTL.i.i83, align 4
  %call.i11.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %146, i32 noundef %150, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1479, i32 noundef 9, ptr noundef null) #7
  tail call void @kgdb_breakpoint() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce60_set_dp_phy_pattern_hbr2_compliance_cp2520_2(ptr noundef %enc110, i32 noundef %cp2520_pattern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.link_encoder, ptr %enc110, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %link_regs.i = getelementptr inbounds %struct.dce110_link_encoder, ptr %enc110, i32 0, i32 1
  %2 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %DP_DPHY_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_DPHY_CNTL.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  %6 = ptrtoint ptr %enc110 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc110, align 4
  %setup = getelementptr inbounds %struct.link_encoder_funcs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup, align 4
  tail call void %9(ptr noundef %enc110, i32 noundef 32) #7
  tail call fastcc void @setup_panel_mode(ptr noundef %enc110, i32 noundef 0)
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 4
  %12 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_regs.i, align 4
  %DP_LINK_FRAMING_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %DP_LINK_FRAMING_CNTL to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DP_LINK_FRAMING_CNTL, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %11, i32 noundef %15, i32 noundef 3, i8 noundef zeroext 0, i32 noundef 262143, i32 noundef 252, i32 noundef 24, i32 noundef 16777216, i32 noundef 1, i32 noundef 28, i32 noundef 268435456, i32 noundef 1) #7
  %16 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_HBR2_PATTERN_CONTROL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %DP_DPHY_HBR2_PATTERN_CONTROL to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DP_DPHY_HBR2_PATTERN_CONTROL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i, align 4
  %call8 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %21, i32 noundef %19, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 7, i32 noundef %cp2520_pattern) #7
  br label %if.end52

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cp2520_pattern)
  %cmp.not = icmp eq i32 %cp2520_pattern, 2
  br i1 %cmp.not, label %do.body.if.end52_crit_edge, label %land.rhs

do.body.if.end52_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.rhs:                                         ; preds = %do.body
  %.b72 = load i1, ptr @dce60_set_dp_phy_pattern_hbr2_compliance_cp2520_2.__already_done, align 1
  br i1 %.b72, label %land.rhs.if.then48_crit_edge, label %if.then17, !prof !70

land.rhs.if.then48_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dce60_set_dp_phy_pattern_hbr2_compliance_cp2520_2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #7
  br label %if.then48

if.then48:                                        ; preds = %if.then17, %land.rhs.if.then48_crit_edge
  tail call void @kgdb_breakpoint() #7
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %do.body.if.end52_crit_edge, %if.then
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %24 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link_regs.i, align 4
  %DP_LINK_CNTL.i = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %DP_LINK_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DP_LINK_CNTL.i, align 4
  %call.i76 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %27, i32 noundef 1, i8 noundef zeroext 4, i32 noundef 16, i32 noundef 1) #7
  %28 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx.i, align 4
  %30 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link_regs.i, align 4
  %DP_VID_STREAM_CNTL = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %31, i32 0, i32 29
  %32 = ptrtoint ptr %DP_VID_STREAM_CNTL to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DP_VID_STREAM_CNTL, align 4
  %call56 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %29, i32 noundef %33, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0) #7
  %34 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx.i, align 4
  %36 = ptrtoint ptr %link_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link_regs.i, align 4
  %DP_DPHY_CNTL.i79 = getelementptr inbounds %struct.dce110_link_enc_registers, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %DP_DPHY_CNTL.i79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DP_DPHY_CNTL.i79, align 4
  %call.i80 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %35, i32 noundef %39, i32 noundef 1, i8 noundef zeroext 16, i32 noundef 65536, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__func__.dce110_link_encoder_set_dp_phy_pattern_training_pattern, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 284, i32 2}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 892, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 910, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dce110_link_encoder_construct._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @dce110_link_encoder_construct._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 984, i32 3}
!11 = !{ptr @__func__.dce110_link_encoder_hw_init, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 986, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 995, i32 3}
!16 = !{ptr @__func__.dce110_link_encoder_enable_tmds_output, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1083, i32 3}
!18 = !{ptr @__func__.dce110_link_encoder_enable_lvds_output, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1115, i32 3}
!20 = !{ptr @__func__.dce110_link_encoder_enable_dp_output, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1154, i32 3}
!22 = !{ptr @__func__.dce110_link_encoder_enable_dp_mst_output, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1193, i32 3}
!24 = !{ptr @__func__.dce110_link_encoder_disable_output, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1315, i32 3}
!26 = !{ptr @__func__.dce110_link_encoder_dp_set_lane_settings, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1336, i32 3}
!28 = !{ptr @__func__.dce110_link_encoder_update_mst_stream_allocation_table, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1607, i32 3}
!30 = !{ptr @__func__.dce110_link_encoder_enable_hpd, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1649, i32 19}
!32 = !{ptr @__func__.dce110_link_encoder_disable_hpd, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1662, i32 19}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1810, i32 3}
!36 = !{ptr @dce60_link_encoder_construct._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dce60_link_encoder_construct._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dce110_lnk_enc_funcs, !39, !"dce110_lnk_enc_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 100, i32 40}
!40 = !{ptr @__func__.aux_initialize, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 634, i32 19}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 309, i32 2}
!44 = !{ptr @__func__.setup_panel_mode, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 310, i32 10}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 455, i32 3}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!50 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dce60_lnk_enc_funcs, !52, !"dce60_lnk_enc_funcs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1685, i32 40}
!53 = !{ptr @__func__.dce60_link_encoder_enable_dp_output, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1233, i32 3}
!55 = !{ptr @__func__.dce60_link_encoder_enable_dp_mst_output, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 1272, i32 3}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_link_encoder.c", i32 507, i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i8 0, i8 2}
!70 = !{!"branch_weights", i32 2000, i32 1}
