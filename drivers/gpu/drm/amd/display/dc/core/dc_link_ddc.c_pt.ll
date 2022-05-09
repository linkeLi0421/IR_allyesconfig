; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_link_ddc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_payload = type { i8, i8, i32, ptr }
%struct.graphics_object_i2c_info = type { %struct.gpio_info, i8, i32, i32, i32 }
%struct.gpio_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_ddc_hw_info = type { i8, i32 }
%struct.ddc_service_init_data = type { %struct.graphics_object_id, ptr, ptr, i8 }
%struct.graphics_object_id = type { i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.ddc_service = type { ptr, %struct.ddc_flags, %union.ddc_wa, i32, i32, ptr, ptr, i32, i32, [2048 x i8] }
%struct.ddc_flags = type { i8 }
%union.ddc_wa = type { i32 }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.14 }
%struct.anon.14 = type { i8 }
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
%struct.i2c_command = type { ptr, i8, i32, i32 }
%struct.display_sink_capability = type { i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i32, i32 }
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
%struct.aux_payload = type { i8, i8, i8, i8, i32, i32, ptr, ptr, i32 }
%struct.i2c_payloads = type { %struct.vector }
%struct.vector = type { ptr, i32, i32, i32, ptr }
%struct.gpio = type { ptr, ptr, i32, i32, %union.gpio_hw_container, i32, i32 }
%union.gpio_hw_container = type { ptr }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.dce_aux = type { i32, ptr, ptr, i32, i32, i8, ptr }
%struct.dc_sink = type { i32, %struct.dc_edid, %struct.dc_edid_caps, ptr, i32, ptr, [14 x %struct.stereo_3d_features], i8, %struct.dc_sink_dsc_caps, %struct.dc_sink_fec_caps, i8, ptr, ptr, i32, %struct.kref }
%struct.dc_edid = type { i32, [2048 x i8] }
%struct.dc_edid_caps = type { i16, i16, i32, i8, i8, [20 x i8], i8, i32, [16 x %struct.dc_cea_audio_mode], i32, i32, %union.display_content_support, i8, i8, i32, i8, i8, i8, %struct.dc_panel_patch }
%struct.dc_cea_audio_mode = type { i8, i8, i8, %union.anon.8 }
%union.anon.8 = type { i8 }
%union.display_content_support = type { i32 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stereo_3d_features = type { i8, i8, i8, i8, i8 }
%struct.dc_sink_dsc_caps = type { i8, %struct.dsc_dec_dpcd_caps }
%struct.dsc_dec_dpcd_caps = type { i8, i8, i32, %union.dsc_slice_caps1, %union.dsc_slice_caps2, i32, i8, i32, %union.dsc_color_formats, %union.dsc_color_depth, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dsc_slice_caps1 = type { %struct.anon.10 }
%struct.anon.10 = type { i8 }
%union.dsc_slice_caps2 = type { %struct.anon.11 }
%struct.anon.11 = type { i8 }
%union.dsc_color_formats = type { %struct.anon.12 }
%struct.anon.12 = type { i8 }
%union.dsc_color_depth = type { %struct.anon.13 }
%struct.anon.13 = type { i8 }
%struct.dc_sink_fec_caps = type { i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.hdmi_scdc_status_flags_data = type { %struct.anon.70 }
%struct.anon.70 = type { [3 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dal_ddc_service_destroy = private unnamed_addr constant [24 x i8] c"dal_ddc_service_destroy\00", align 1
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DP-DVI passive dongle %dMhz: \00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Type 2 DP-HDMI passive dongle %dMhz: \00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Type 2 DP-HDMI passive dongle (no signature) %dMhz: \00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Type 1 DP-HDMI passive dongle %dMhz: \00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Type 1 DP-HDMI passive dongle (no signature) %dMhz: \00", [43 x i8] zeroinitializer }, align 32
@__const.dal_ddc_service_read_scdc_data.status_data = private unnamed_addr constant { [2 x i8], i8 } { [2 x i8] zeroinitializer, i8 -1 }, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BIOS object table - i2c_line: %d\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BIOS object table - i2c_engine_id: %d\00", [58 x i8] zeroinitializer }, align 32
@DP_VGA_DONGLE_BRANCH_DEV_NAME = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DpVga\00", [26 x i8] zeroinitializer }, align 32
@DP_DVI_CONVERTER_ID_4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m2DVIa\00", [25 x i8] zeroinitializer }, align 32
@DP_DVI_CONVERTER_ID_5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3393N2\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 24631, i64 32993]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 254, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 420, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 475, i32 5 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 482, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 498, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 505, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 204, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 205, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [30 x i8] c"DP_VGA_DONGLE_BRANCH_DEV_NAME\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 43, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"DP_DVI_CONVERTER_ID_4\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 45, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"DP_DVI_CONVERTER_ID_5\00", align 1
@___asan_gen_.40 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 46, i32 22 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @DP_VGA_DONGLE_BRANCH_DEV_NAME, ptr @DP_DVI_CONVERTER_ID_4, ptr @DP_DVI_CONVERTER_ID_5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DP_VGA_DONGLE_BRANCH_DEV_NAME to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DP_DVI_CONVERTER_ID_4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DP_DVI_CONVERTER_ID_5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_ddc_i2c_payloads_add(ptr noundef %payloads, i32 noundef %address, i32 noundef %len, ptr noundef %data, i1 noundef zeroext %write) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca %struct.i2c_payload, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %write to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp17.not = icmp eq i32 %len, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %address3 = getelementptr inbounds %struct.i2c_payload, ptr %payload, i32 0, i32 1
  %conv = trunc i32 %address to i8
  %length = getelementptr inbounds %struct.i2c_payload, ptr %payload, i32 0, i32 2
  %data7 = getelementptr inbounds %struct.i2c_payload, ptr %payload, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pos.018 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload) #10
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %payload, align 4
  store i8 %frombool, ptr %payload, align 4
  %1 = ptrtoint ptr %address3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %address3, align 1
  %sub = sub i32 %len, %pos.018
  %2 = call i32 @llvm.umin.i32(i32 %sub, i32 256)
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %length, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %pos.018
  %4 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %data7, align 4
  %call = call zeroext i1 @dal_vector_append(ptr noundef %payloads, ptr noundef nonnull %payload) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload) #10
  %add = add i32 %pos.018, 256
  %cmp = icmp ult i32 %add, %len
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_vector_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_ddc_service_create(ptr nocapture noundef readonly %init_data) local_unnamed_addr #0 align 64 {
entry:
  %i2c_info.i = alloca %struct.graphics_object_i2c_info, align 4
  %hw_info.i = alloca %struct.gpio_ddc_hw_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2084) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack.i = load i32, ptr %init_data, align 4
  %ctx.i = getelementptr inbounds %struct.ddc_service_init_data, ptr %init_data, i32 0, i32 1
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %gpio_service1.i = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %gpio_service1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_service1.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %i2c_info.i) #10
  %6 = call ptr @memset(ptr %i2c_info.i, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_info.i) #10
  %7 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %hw_info.i, align 8, !annotation !34
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc_bios.i, align 4
  %link.i = getelementptr inbounds %struct.ddc_service_init_data, ptr %init_data, i32 0, i32 2
  %10 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.i, align 4
  %link3.i = getelementptr inbounds %struct.ddc_service, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %link3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %link3.i, align 8
  %ctx5.i = getelementptr inbounds %struct.ddc_service, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %ctx5.i, align 4
  %is_dpia_link.i = getelementptr inbounds %struct.ddc_service_init_data, ptr %init_data, i32 0, i32 3
  %14 = ptrtoint ptr %is_dpia_link.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_dpia_link.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.ddc_service_construct.exit_crit_edge

if.end.ddc_service_construct.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ddc_service_construct.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %get_i2c_info.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %get_i2c_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_i2c_info.i, align 4
  %20 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call8.i = call i32 %19(ptr noundef %9, [1 x i32] %20, ptr noundef nonnull %i2c_info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %lor.lhs.false.i.ddc_service_construct.exit_crit_edge

lor.lhs.false.i.ddc_service_construct.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ddc_service_construct.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %i2c_line.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %i2c_info.i, i32 0, i32 2
  %21 = ptrtoint ptr %i2c_line.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i2c_line.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %22) #10
  %i2c_engine_id.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %i2c_info.i, i32 0, i32 3
  %23 = ptrtoint ptr %i2c_engine_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i2c_engine_id.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %24) #10
  %25 = ptrtoint ptr %i2c_line.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2c_line.i, align 4
  %ddc_channel.i = getelementptr inbounds %struct.gpio_ddc_hw_info, ptr %hw_info.i, i32 0, i32 1
  %27 = ptrtoint ptr %ddc_channel.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ddc_channel.i, align 4
  %cmp11.not.i = icmp eq ptr %11, null
  br i1 %cmp11.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then12.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %i2c_hw_assist.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %i2c_info.i, i32 0, i32 1
  %28 = ptrtoint ptr %i2c_hw_assist.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_hw_assist.i, align 4, !range !35
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.else.i.if.end.i_crit_edge
  %storemerge52.i = phi i8 [ %29, %if.then12.i ], [ 0, %if.else.i.if.end.i_crit_edge ]
  %30 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge52.i, ptr %hw_info.i, align 8
  %clk_a_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %i2c_info.i, i32 0, i32 3
  %31 = ptrtoint ptr %clk_a_register_index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clk_a_register_index.i, align 4
  %clk_a_shift.i = getelementptr inbounds %struct.gpio_info, ptr %i2c_info.i, i32 0, i32 11
  %33 = ptrtoint ptr %clk_a_shift.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_a_shift.i, align 4
  %shl.i = shl nuw i32 1, %34
  %call17.i = call ptr @dal_gpio_create_ddc(ptr noundef %5, i32 noundef %32, i32 noundef %shl.i, ptr noundef nonnull %hw_info.i) #10
  br label %ddc_service_construct.exit

ddc_service_construct.exit:                       ; preds = %if.end.i, %lor.lhs.false.i.ddc_service_construct.exit_crit_edge, %if.end.ddc_service_construct.exit_crit_edge
  %storemerge.i = phi ptr [ %call17.i, %if.end.i ], [ null, %lor.lhs.false.i.ddc_service_construct.exit_crit_edge ], [ null, %if.end.ddc_service_construct.exit_crit_edge ]
  %35 = and i32 %.unpack.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 196608
  %bf.lshr2.i.i = lshr i32 %.unpack.i, 24
  %retval.0.i.i = select i1 %cmp.i.i, i32 %bf.lshr2.i.i, i32 0
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %storemerge.i, ptr %call7.i.i, align 8
  %flags.i = getelementptr inbounds %struct.ddc_service, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %retval.0.i.i)
  %cmp28.i = icmp eq i32 %retval.0.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %retval.0.i.i)
  %cmp29.i = icmp eq i32 %retval.0.i.i, 14
  %38 = or i1 %cmp28.i, %cmp29.i
  %39 = select i1 %38, i8 64, i8 0
  %bf.clear32.i = and i8 %bf.load.i, 15
  %bf.set33.i = or i8 %bf.clear32.i, %39
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.set33.i, ptr %flags.i, align 4
  %wa.i = getelementptr inbounds %struct.ddc_service, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %wa.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %wa.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_info.i) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %i2c_info.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ddc_service_construct.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_ddc_service_destroy(ptr noundef %ddc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ddc, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_ddc_service_destroy, i32 noundef 254) #10
  tail call void @kgdb_breakpoint() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.ddc_service_destruct.exit_crit_edge, label %if.then.i

if.end.ddc_service_destruct.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ddc_service_destruct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dal_gpio_destroy_ddc(ptr noundef nonnull %1) #10
  br label %ddc_service_destruct.exit

ddc_service_destruct.exit:                        ; preds = %if.then.i, %if.end.ddc_service_destruct.exit_crit_edge
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ddc, align 4
  br label %return

return:                                           ; preds = %ddc_service_destruct.exit, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_ddc_service_get_type(ptr nocapture noundef readnone %ddc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dal_ddc_service_set_transaction_type(ptr nocapture noundef writeonly %ddc, i32 noundef %type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction_type = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 3
  %0 = ptrtoint ptr %transaction_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %transaction_type, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dal_ddc_service_is_in_aux_transaction_mode(ptr nocapture noundef readonly %ddc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction_type = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 3
  %0 = ptrtoint ptr %transaction_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %transaction_type, align 4
  %.off = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  ret i1 %switch
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ddc_service_set_dongle_type(ptr nocapture noundef writeonly %ddc, i32 noundef %dongle_type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dongle_type1 = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 4
  %0 = ptrtoint ptr %dongle_type1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dongle_type, ptr %dongle_type1, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_defer_delay(ptr nocapture noundef readonly %ddc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction_type = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 3
  %0 = ptrtoint ptr %transaction_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %transaction_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dongle_type = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 4
  %3 = ptrtoint ptr %dongle_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dongle_type, align 4
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %link1.i = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 6
  %5 = ptrtoint ptr %link1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link1.i, align 4
  %dongle_type.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 43, i32 6
  %7 = ptrtoint ptr %dongle_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dongle_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %branch_dev_id.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 43, i32 14
  %9 = ptrtoint ptr %branch_dev_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %branch_dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32993, i32 %10)
  %cmp3.i = icmp eq i32 %10, 32993
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %branch_dev_name.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 43, i32 15
  %bcmp2.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %branch_dev_name.i, ptr noundef nonnull dereferenceable(6) @DP_VGA_DONGLE_BRANCH_DEV_NAME, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp2.i)
  %tobool.not.i = icmp eq i32 %bcmp2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true4.i.sw.epilog_crit_edge, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true4.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %branch_dev_id8.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 43, i32 14
  %11 = ptrtoint ptr %branch_dev_id8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %branch_dev_id8.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %12, label %if.end.i.if.end38.i_crit_edge [
    i32 32993, label %land.lhs.true10.i
    i32 24631, label %land.lhs.true26.i
  ]

if.end.i.if.end38.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

land.lhs.true10.i:                                ; preds = %if.end.i
  %branch_dev_name12.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 43, i32 15
  %bcmp1.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %branch_dev_name12.i, ptr noundef nonnull dereferenceable(6) @DP_DVI_CONVERTER_ID_4, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool15.not.i = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true10.i.sw.epilog_crit_edge, label %land.lhs.true10.i.if.end38.i_crit_edge

land.lhs.true10.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

land.lhs.true10.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true26.i:                                ; preds = %if.end.i
  %branch_dev_name28.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 43, i32 15
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %branch_dev_name28.i, ptr noundef nonnull dereferenceable(6) @DP_DVI_CONVERTER_ID_5, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool31.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true26.i.sw.epilog_crit_edge, label %land.lhs.true26.i.if.end38.i_crit_edge

land.lhs.true26.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

land.lhs.true26.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end38.i:                                       ; preds = %land.lhs.true26.i.if.end38.i_crit_edge, %land.lhs.true10.i.if.end38.i_crit_edge, %if.end.i.if.end38.i_crit_edge
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end38.i, %land.lhs.true26.i.sw.epilog_crit_edge, %land.lhs.true10.i.sw.epilog_crit_edge, %land.lhs.true4.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %defer_delay.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 5, %sw.bb6 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 5, %if.end38.i ], [ 40, %land.lhs.true4.i.sw.epilog_crit_edge ], [ 70, %land.lhs.true10.i.sw.epilog_crit_edge ], [ 1, %land.lhs.true26.i.sw.epilog_crit_edge ]
  ret i32 %defer_delay.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_ddc_service_i2c_query_dp_dual_mode_adaptor(ptr nocapture noundef readonly %ddc, ptr nocapture noundef %sink_cap) local_unnamed_addr #0 align 64 {
entry:
  %offs_data.i134 = alloca i8, align 1
  %payloads.i135 = alloca [2 x %struct.i2c_payload], align 4
  %command.i136 = alloca %struct.i2c_command, align 4
  %offs_data.i = alloca i8, align 1
  %payloads.i = alloca [2 x %struct.i2c_payload], align 4
  %command.i = alloca %struct.i2c_command, align 4
  %type2_dongle_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %type2_dongle_buf) #10
  %0 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 1
  %1 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 2
  %2 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 4
  %3 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 5
  %4 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 6
  %5 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 7
  %6 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 8
  %7 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 9
  %8 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 10
  %9 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 11
  %10 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 12
  %11 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 13
  %12 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 14
  %13 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 15
  %14 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 16
  %15 = getelementptr inbounds [32 x i8], ptr %type2_dongle_buf, i32 0, i32 29
  %16 = call ptr @memset(ptr %type2_dongle_buf, i32 255, i32 32)
  %17 = ptrtoint ptr %sink_cap to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sink_cap, align 4
  %max_hdmi_pixel_clock = getelementptr inbounds %struct.display_sink_capability, ptr %sink_cap, i32 0, i32 7
  %18 = ptrtoint ptr %max_hdmi_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 165000, ptr %max_hdmi_pixel_clock, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offs_data.i) #10
  %19 = ptrtoint ptr %offs_data.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %offs_data.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %payloads.i) #10
  %20 = call ptr @memset(ptr %payloads.i, i32 255, i32 16)
  %21 = ptrtoint ptr %payloads.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %payloads.i, align 4
  %address1.i = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i, i32 0, i32 1
  %22 = ptrtoint ptr %address1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %address1.i, align 1
  %length.i = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i, i32 0, i32 2
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i, i32 0, i32 3
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %offs_data.i, ptr %data.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i, i32 1
  %25 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayinit.element.i, align 4
  %address3.i = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i, i32 1, i32 1
  %26 = ptrtoint ptr %address3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 64, ptr %address3.i, align 1
  %length5.i = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i, i32 1, i32 2
  %27 = ptrtoint ptr %length5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %length5.i, align 4
  %data6.i = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i, i32 1, i32 3
  %28 = ptrtoint ptr %data6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %type2_dongle_buf, ptr %data6.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %command.i) #10
  %29 = getelementptr inbounds i8, ptr %command.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 50331647, ptr %29, align 4
  %31 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %payloads.i, ptr %command.i, align 4
  %engine.i = getelementptr inbounds %struct.i2c_command, ptr %command.i, i32 0, i32 2
  %32 = ptrtoint ptr %engine.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %engine.i, align 4
  %speed.i = getelementptr inbounds %struct.i2c_command, ptr %command.i, i32 0, i32 3
  %ctx.i = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %33 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %36, i32 0, i32 2, i32 8
  %37 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i2c_speed_in_khz.i, align 4
  %39 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %speed.i, align 4
  %link.i = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 6
  %40 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link.i, align 4
  %call.i = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %34, ptr noundef %41, ptr noundef nonnull %command.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %command.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %payloads.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offs_data.i) #10
  br i1 %call.i, label %entry.if.end8_crit_edge, label %while.cond.preheader

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

while.cond.preheader:                             ; preds = %entry
  %address1.i137 = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i135, i32 0, i32 1
  %length.i138 = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i135, i32 0, i32 2
  %data.i139 = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i135, i32 0, i32 3
  %arrayinit.element.i140 = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i135, i32 1
  %address3.i141 = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i135, i32 1, i32 1
  %length5.i142 = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i135, i32 1, i32 2
  %data6.i143 = getelementptr inbounds %struct.i2c_payload, ptr %payloads.i135, i32 1, i32 3
  %42 = getelementptr inbounds i8, ptr %command.i136, i32 4
  %engine.i145 = getelementptr inbounds %struct.i2c_command, ptr %command.i136, i32 0, i32 2
  %speed.i146 = getelementptr inbounds %struct.i2c_command, ptr %command.i136, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offs_data.i134) #10
  %43 = ptrtoint ptr %offs_data.i134 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %offs_data.i134, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %payloads.i135) #10
  %44 = call ptr @memset(ptr %payloads.i135, i32 255, i32 16)
  %45 = ptrtoint ptr %payloads.i135 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %payloads.i135, align 4
  %46 = ptrtoint ptr %address1.i137 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 64, ptr %address1.i137, align 1
  %47 = ptrtoint ptr %length.i138 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %length.i138, align 4
  %48 = ptrtoint ptr %data.i139 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %offs_data.i134, ptr %data.i139, align 4
  %49 = ptrtoint ptr %arrayinit.element.i140 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayinit.element.i140, align 4
  %50 = ptrtoint ptr %address3.i141 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 64, ptr %address3.i141, align 1
  %51 = ptrtoint ptr %length5.i142 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 32, ptr %length5.i142, align 4
  %52 = ptrtoint ptr %data6.i143 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %type2_dongle_buf, ptr %data6.i143, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %command.i136) #10
  %53 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 50331647, ptr %42, align 4
  %54 = ptrtoint ptr %command.i136 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %payloads.i135, ptr %command.i136, align 4
  %55 = ptrtoint ptr %engine.i145 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %engine.i145, align 4
  %56 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %i2c_speed_in_khz.i148 = getelementptr inbounds %struct.dc, ptr %59, i32 0, i32 2, i32 8
  %60 = ptrtoint ptr %i2c_speed_in_khz.i148 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i2c_speed_in_khz.i148, align 4
  %62 = ptrtoint ptr %speed.i146 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %speed.i146, align 4
  %63 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %link.i, align 4
  %call.i150 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %57, ptr noundef %64, ptr noundef nonnull %command.i136) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %command.i136) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %payloads.i135) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offs_data.i134) #10
  br i1 %call.i150, label %while.cond.preheader.if.end8_crit_edge, label %if.end

while.cond.preheader.if.end8_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end:                                           ; preds = %while.cond.preheader
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offs_data.i134) #10
  %65 = ptrtoint ptr %offs_data.i134 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %offs_data.i134, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %payloads.i135) #10
  %66 = call ptr @memset(ptr %payloads.i135, i32 255, i32 16)
  %67 = ptrtoint ptr %payloads.i135 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %payloads.i135, align 4
  %68 = ptrtoint ptr %address1.i137 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 64, ptr %address1.i137, align 1
  %69 = ptrtoint ptr %length.i138 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %length.i138, align 4
  %70 = ptrtoint ptr %data.i139 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %offs_data.i134, ptr %data.i139, align 4
  %71 = ptrtoint ptr %arrayinit.element.i140 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayinit.element.i140, align 4
  %72 = ptrtoint ptr %address3.i141 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 64, ptr %address3.i141, align 1
  %73 = ptrtoint ptr %length5.i142 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 32, ptr %length5.i142, align 4
  %74 = ptrtoint ptr %data6.i143 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %type2_dongle_buf, ptr %data6.i143, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %command.i136) #10
  %75 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 50331647, ptr %42, align 4
  %76 = ptrtoint ptr %command.i136 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %payloads.i135, ptr %command.i136, align 4
  %77 = ptrtoint ptr %engine.i145 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %engine.i145, align 4
  %78 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %i2c_speed_in_khz.i148.1 = getelementptr inbounds %struct.dc, ptr %81, i32 0, i32 2, i32 8
  %82 = ptrtoint ptr %i2c_speed_in_khz.i148.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i2c_speed_in_khz.i148.1, align 4
  %84 = ptrtoint ptr %speed.i146 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %speed.i146, align 4
  %85 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %link.i, align 4
  %call.i150.1 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %79, ptr noundef %86, ptr noundef nonnull %command.i136) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %command.i136) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %payloads.i135) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offs_data.i134) #10
  br i1 %call.i150.1, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %sink_cap to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4, ptr %sink_cap, align 4
  %88 = ptrtoint ptr %max_hdmi_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 165000, ptr %max_hdmi_pixel_clock, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef 165) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %while.cond.preheader.if.end8_crit_edge, %entry.if.end8_crit_edge
  %89 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %90)
  %cmp9 = icmp eq i8 %90, -96
  %91 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %92)
  %cmp15.not = icmp eq i8 %92, 4
  %cmp9.not = xor i1 %cmp9, true
  %93 = ptrtoint ptr %type2_dongle_buf to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %type2_dongle_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %94)
  %cmp27.not = icmp eq i8 %94, 68
  %brmerge = select i1 %cmp27.not, i1 true, i1 %cmp9.not
  br i1 %brmerge, label %for.cond, label %if.end8.for.end.thread_crit_edge

if.end8.for.end.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond:                                         ; preds = %if.end8
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %96)
  %cmp27.not.1 = icmp eq i8 %96, 80
  %brmerge.1 = select i1 %cmp27.not.1, i1 true, i1 %cmp9.not
  br i1 %brmerge.1, label %for.cond.1, label %for.cond.for.end.thread_crit_edge

for.cond.for.end.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.1:                                       ; preds = %for.cond
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %98)
  %cmp27.not.2 = icmp eq i8 %98, 45
  %brmerge.2 = select i1 %cmp27.not.2, i1 true, i1 %cmp9.not
  br i1 %brmerge.2, label %for.cond.3, label %for.cond.1.for.end.thread_crit_edge

for.cond.1.for.end.thread_crit_edge:              ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.3:                                       ; preds = %for.cond.1
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %100)
  %cmp27.not.4 = icmp eq i8 %100, 68
  %brmerge.4 = select i1 %cmp27.not.4, i1 true, i1 %cmp9.not
  br i1 %brmerge.4, label %for.cond.4, label %for.cond.3.for.end.thread_crit_edge

for.cond.3.for.end.thread_crit_edge:              ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.4:                                       ; preds = %for.cond.3
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %102)
  %cmp27.not.5 = icmp eq i8 %102, 77
  %brmerge.5 = select i1 %cmp27.not.5, i1 true, i1 %cmp9.not
  br i1 %brmerge.5, label %for.cond.5, label %for.cond.4.for.end.thread_crit_edge

for.cond.4.for.end.thread_crit_edge:              ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.5:                                       ; preds = %for.cond.4
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %104)
  %cmp27.not.6 = icmp eq i8 %104, 73
  %brmerge.6 = select i1 %cmp27.not.6, i1 true, i1 %cmp9.not
  br i1 %brmerge.6, label %for.cond.6, label %for.cond.5.for.end.thread_crit_edge

for.cond.5.for.end.thread_crit_edge:              ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.6:                                       ; preds = %for.cond.5
  %105 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %106)
  %cmp27.not.7 = icmp eq i8 %106, 32
  %brmerge.7 = select i1 %cmp27.not.7, i1 true, i1 %cmp9.not
  br i1 %brmerge.7, label %for.cond.7, label %for.cond.6.for.end.thread_crit_edge

for.cond.6.for.end.thread_crit_edge:              ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.7:                                       ; preds = %for.cond.6
  %107 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %108)
  %cmp27.not.8 = icmp eq i8 %108, 65
  %brmerge.8 = select i1 %cmp27.not.8, i1 true, i1 %cmp9.not
  br i1 %brmerge.8, label %for.cond.8, label %for.cond.7.for.end.thread_crit_edge

for.cond.7.for.end.thread_crit_edge:              ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.8:                                       ; preds = %for.cond.7
  %109 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %110)
  %cmp27.not.9 = icmp eq i8 %110, 68
  %brmerge.9 = select i1 %cmp27.not.9, i1 true, i1 %cmp9.not
  br i1 %brmerge.9, label %for.cond.9, label %for.cond.8.for.end.thread_crit_edge

for.cond.8.for.end.thread_crit_edge:              ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.9:                                       ; preds = %for.cond.8
  %111 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %112)
  %cmp27.not.10 = icmp eq i8 %112, 65
  %brmerge.10 = select i1 %cmp27.not.10, i1 true, i1 %cmp9.not
  br i1 %brmerge.10, label %for.cond.10, label %for.cond.9.for.end.thread_crit_edge

for.cond.9.for.end.thread_crit_edge:              ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.10:                                      ; preds = %for.cond.9
  %113 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %114)
  %cmp27.not.11 = icmp eq i8 %114, 80
  %brmerge.11 = select i1 %cmp27.not.11, i1 true, i1 %cmp9.not
  br i1 %brmerge.11, label %for.cond.11, label %for.cond.10.for.end.thread_crit_edge

for.cond.10.for.end.thread_crit_edge:             ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.11:                                      ; preds = %for.cond.10
  %115 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %116)
  %cmp27.not.12 = icmp eq i8 %116, 84
  %brmerge.12 = select i1 %cmp27.not.12, i1 true, i1 %cmp9.not
  br i1 %brmerge.12, label %for.cond.12, label %for.cond.11.for.end.thread_crit_edge

for.cond.11.for.end.thread_crit_edge:             ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.12:                                      ; preds = %for.cond.11
  %117 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %118)
  %cmp27.not.13 = icmp eq i8 %118, 79
  %brmerge.13 = select i1 %cmp27.not.13, i1 true, i1 %cmp9.not
  br i1 %brmerge.13, label %for.cond.13, label %for.cond.12.for.end.thread_crit_edge

for.cond.12.for.end.thread_crit_edge:             ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.13:                                      ; preds = %for.cond.12
  %119 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %120)
  %cmp27.not.14 = icmp eq i8 %120, 82
  %brmerge.14 = select i1 %cmp27.not.14, i1 true, i1 %cmp9.not
  br i1 %brmerge.14, label %for.cond.14, label %for.cond.13.for.end.thread_crit_edge

for.cond.13.for.end.thread_crit_edge:             ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.cond.14:                                      ; preds = %for.cond.13
  br i1 %cmp9, label %if.then37, label %if.else70

for.end.thread:                                   ; preds = %for.cond.13.for.end.thread_crit_edge, %for.cond.12.for.end.thread_crit_edge, %for.cond.11.for.end.thread_crit_edge, %for.cond.10.for.end.thread_crit_edge, %for.cond.9.for.end.thread_crit_edge, %for.cond.8.for.end.thread_crit_edge, %for.cond.7.for.end.thread_crit_edge, %for.cond.6.for.end.thread_crit_edge, %for.cond.5.for.end.thread_crit_edge, %for.cond.4.for.end.thread_crit_edge, %for.cond.3.for.end.thread_crit_edge, %for.cond.1.for.end.thread_crit_edge, %for.cond.for.end.thread_crit_edge, %if.end8.for.end.thread_crit_edge
  br i1 %cmp9, label %if.then37.thread, label %for.end.thread.if.else82_crit_edge

for.end.thread.if.else82_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else82

if.then37:                                        ; preds = %for.cond.14
  %121 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %15, align 1
  %conv39 = zext i8 %122 to i32
  %mul = shl nuw nsw i32 %conv39, 1
  %div131 = lshr i32 %conv39, 1
  %add = add nuw nsw i32 %mul, %div131
  %123 = add nsw i32 %add, -601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -576, i32 %123)
  %124 = icmp ult i32 %123, -576
  br i1 %124, label %if.then37.if.then47_crit_edge, label %if.else

if.then37.if.then47_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then37.thread:                                 ; preds = %for.end.thread
  %125 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %15, align 1
  %conv39157 = zext i8 %126 to i32
  %mul158 = shl nuw nsw i32 %conv39157, 1
  %div131159 = lshr i32 %conv39157, 1
  %add160 = add nuw nsw i32 %mul158, %div131159
  %127 = add nsw i32 %add160, -601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -576, i32 %127)
  %128 = icmp ult i32 %127, -576
  br i1 %128, label %if.then37.thread.if.then47_crit_edge, label %if.then37.thread.if.else61_crit_edge

if.then37.thread.if.else61_crit_edge:             ; preds = %if.then37.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

if.then37.thread.if.then47_crit_edge:             ; preds = %if.then37.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then47:                                        ; preds = %if.then37.thread.if.then47_crit_edge, %if.then37.if.then47_crit_edge
  %129 = ptrtoint ptr %sink_cap to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 4, ptr %sink_cap, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef 165) #10
  br label %cleanup

if.else:                                          ; preds = %if.then37
  br i1 %cmp15.not, label %if.then56, label %if.else.if.else61_crit_edge

if.else.if.else61_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %sink_cap to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 5, ptr %sink_cap, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %add) #10
  br label %if.end66

if.else61:                                        ; preds = %if.else.if.else61_crit_edge, %if.then37.thread.if.else61_crit_edge
  %add166170 = phi i32 [ %add, %if.else.if.else61_crit_edge ], [ %add160, %if.then37.thread.if.else61_crit_edge ]
  %131 = ptrtoint ptr %sink_cap to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 6, ptr %sink_cap, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %add166170) #10
  br label %if.end66

if.end66:                                         ; preds = %if.else61, %if.then56
  %add167 = phi i32 [ %add166170, %if.else61 ], [ %add, %if.then56 ]
  %mul67 = mul nuw nsw i32 %add167, 1000
  %132 = ptrtoint ptr %max_hdmi_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %mul67, ptr %max_hdmi_pixel_clock, align 4
  br label %cleanup

if.else70:                                        ; preds = %for.cond.14
  br i1 %cmp15.not, label %if.then75, label %if.else70.if.else82_crit_edge

if.else70.if.else82_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else82

if.then75:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %sink_cap to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 5, ptr %sink_cap, align 4
  %134 = ptrtoint ptr %max_hdmi_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %max_hdmi_pixel_clock, align 4
  %div79 = udiv i32 %135, 1000
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %div79) #10
  br label %cleanup

if.else82:                                        ; preds = %if.else70.if.else82_crit_edge, %for.end.thread.if.else82_crit_edge
  %136 = ptrtoint ptr %sink_cap to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 6, ptr %sink_cap, align 4
  %137 = ptrtoint ptr %max_hdmi_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_hdmi_pixel_clock, align 4
  %div86 = udiv i32 %138, 1000
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %div86) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else82, %if.then75, %if.end66, %if.then47, %if.then5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %type2_dongle_buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %ddc, i32 noundef %address, ptr noundef %write_buf, i32 noundef %write_size, ptr noundef %read_buf, i32 noundef %read_size) local_unnamed_addr #0 align 64 {
entry:
  %payload.i115 = alloca %struct.i2c_payload, align 4
  %payload.i = alloca %struct.i2c_payload, align 4
  %current_payload.i84 = alloca %struct.aux_payload, align 4
  %current_payload.i = alloca %struct.aux_payload, align 4
  %command = alloca %struct.i2c_command, align 4
  %payloads = alloca %struct.i2c_payloads, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction_type.i = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 3
  %0 = ptrtoint ptr %transaction_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %transaction_type.i, align 4
  %.off.i = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %add = select i1 %switch.i, i32 15, i32 255
  %sub = add i32 %add, %write_size
  %2 = select i1 %switch.i, i32 4, i32 8
  %div75 = lshr i32 %sub, %2
  %sub2 = add i32 %add, %read_size
  %div376 = lshr i32 %sub2, %2
  %add4 = add nuw nsw i32 %div75, %div376
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %write_size)
  %cmp = icmp ugt i32 %write_size, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %read_size)
  %cmp5 = icmp ugt i32 %read_size, 256
  %or.cond = or i1 %cmp, %cmp5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %tobool.not = icmp eq i32 %add4, 0
  %or.cond80 = select i1 %or.cond, i1 true, i1 %tobool.not
  br i1 %or.cond80, label %entry.cleanup43_crit_edge, label %if.end7

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end7:                                          ; preds = %entry
  br i1 %switch.i, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %call11 = tail call i32 @get_defer_delay(ptr noundef %ddc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_size)
  %cmp12.not = icmp eq i32 %write_size, 0
  br i1 %cmp12.not, label %if.then9.if.end17_crit_edge, label %if.then13

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_size)
  %cmp14 = icmp ne i32 %read_size, 0
  %tobool.not.i = icmp eq ptr %ddc, null
  br i1 %tobool.not.i, label %if.then13.dal_ddc_submit_aux_command.exit_crit_edge, label %do.body.preheader.i

if.then13.dal_ddc_submit_aux_command.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %dal_ddc_submit_aux_command.exit

do.body.preheader.i:                              ; preds = %if.then13
  %3 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 4
  %7 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 5
  %8 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 6
  %9 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 7
  %10 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i, i32 0, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %retrieved.0.i = phi i32 [ %add27.i, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %current_payload.i) #10
  %add.i = add i32 %retrieved.0.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %write_size)
  %cmp.not.i = icmp ult i32 %add.i, %write_size
  %sub.i = sub i32 %write_size, %retrieved.0.i
  %spec.select.i = select i1 %cmp.not.i, i32 16, i32 %sub.i
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %address, ptr %6, align 4
  %arrayidx.i = getelementptr i8, ptr %write_buf, i32 %retrieved.0.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call11, ptr %10, align 4
  %14 = ptrtoint ptr %current_payload.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %current_payload.i, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %7, align 4
  %narrow = or i1 %cmp14, %cmp.not.i
  %spec.select = zext i1 %narrow to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %4, align 2
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %5, align 1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %9, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %3, align 1
  %call.i.i = call zeroext i1 @dce_aux_transfer_with_retries(ptr noundef nonnull %ddc, ptr noundef nonnull %current_payload.i) #10
  %add27.i = add i32 %spec.select.i, %retrieved.0.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %current_payload.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i, i32 %write_size)
  %cmp29.i = icmp uge i32 %add27.i, %write_size
  %call.not.i = xor i1 %call.i.i, true
  %brmerge.i = select i1 %cmp29.i, i1 true, i1 %call.not.i
  br i1 %brmerge.i, label %do.body.i.dal_ddc_submit_aux_command.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i.dal_ddc_submit_aux_command.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dal_ddc_submit_aux_command.exit

dal_ddc_submit_aux_command.exit:                  ; preds = %do.body.i.dal_ddc_submit_aux_command.exit_crit_edge, %if.then13.dal_ddc_submit_aux_command.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.then13.dal_ddc_submit_aux_command.exit_crit_edge ], [ %call.i.i, %do.body.i.dal_ddc_submit_aux_command.exit_crit_edge ]
  %frombool16 = zext i1 %retval.0.i to i8
  br label %if.end17

if.end17:                                         ; preds = %dal_ddc_submit_aux_command.exit, %if.then9.if.end17_crit_edge
  %success.0 = phi i8 [ %frombool16, %dal_ddc_submit_aux_command.exit ], [ 1, %if.then9.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_size)
  %cmp18.not = icmp eq i32 %read_size, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %success.0)
  %tobool19.not = icmp eq i8 %success.0, 0
  %or.cond79 = select i1 %cmp18.not, i1 true, i1 %tobool19.not
  br i1 %or.cond79, label %if.end17.if.end27_crit_edge, label %if.then20

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20:                                        ; preds = %if.end17
  %tobool.not.i85 = icmp eq ptr %ddc, null
  br i1 %tobool.not.i85, label %if.then20.dal_ddc_submit_aux_command.exit110_crit_edge, label %do.body.preheader.i93

if.then20.dal_ddc_submit_aux_command.exit110_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %dal_ddc_submit_aux_command.exit110

do.body.preheader.i93:                            ; preds = %if.then20
  %20 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 1
  %21 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 2
  %22 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 3
  %23 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 4
  %24 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 5
  %25 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 6
  %26 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 7
  %27 = getelementptr inbounds %struct.aux_payload, ptr %current_payload.i84, i32 0, i32 8
  br label %do.body.i100

do.body.i100:                                     ; preds = %do.body.i100.do.body.i100_crit_edge, %do.body.preheader.i93
  %retrieved.0.i94 = phi i32 [ %add27.i104, %do.body.i100.do.body.i100_crit_edge ], [ 0, %do.body.preheader.i93 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %current_payload.i84) #10
  %add.i95 = add i32 %retrieved.0.i94, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i95, i32 %read_size)
  %cmp.not.i96 = icmp ult i32 %add.i95, %read_size
  %sub.i97 = sub i32 %read_size, %retrieved.0.i94
  %spec.select.i98 = select i1 %cmp.not.i96, i32 16, i32 %sub.i97
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %address, ptr %23, align 4
  %arrayidx.i99 = getelementptr i8, ptr %read_buf, i32 %retrieved.0.i94
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.i99, ptr %25, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call11, ptr %27, align 4
  %31 = ptrtoint ptr %current_payload.i84 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %current_payload.i84, align 4
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select.i98, ptr %24, align 4
  %spec.select141 = zext i1 %cmp.not.i96 to i8
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select141, ptr %21, align 2
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %22, align 1
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %26, align 4
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %20, align 1
  %call.i.i103 = call zeroext i1 @dce_aux_transfer_with_retries(ptr noundef nonnull %ddc, ptr noundef nonnull %current_payload.i84) #10
  %add27.i104 = add i32 %spec.select.i98, %retrieved.0.i94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %current_payload.i84) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i104, i32 %read_size)
  %cmp29.i105 = icmp uge i32 %add27.i104, %read_size
  %call.not.i106 = xor i1 %call.i.i103, true
  %brmerge.i107 = select i1 %cmp29.i105, i1 true, i1 %call.not.i106
  br i1 %brmerge.i107, label %do.body.i100.dal_ddc_submit_aux_command.exit110_crit_edge, label %do.body.i100.do.body.i100_crit_edge

do.body.i100.do.body.i100_crit_edge:              ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i100

do.body.i100.dal_ddc_submit_aux_command.exit110_crit_edge: ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %dal_ddc_submit_aux_command.exit110

dal_ddc_submit_aux_command.exit110:               ; preds = %do.body.i100.dal_ddc_submit_aux_command.exit110_crit_edge, %if.then20.dal_ddc_submit_aux_command.exit110_crit_edge
  %retval.0.i109 = phi i1 [ false, %if.then20.dal_ddc_submit_aux_command.exit110_crit_edge ], [ %call.i.i103, %do.body.i100.dal_ddc_submit_aux_command.exit110_crit_edge ]
  %frombool26 = zext i1 %retval.0.i109 to i8
  br label %if.end27

if.end27:                                         ; preds = %dal_ddc_submit_aux_command.exit110, %if.end17.if.end27_crit_edge
  %success.1 = phi i8 [ %frombool26, %dal_ddc_submit_aux_command.exit110 ], [ %success.0, %if.end17.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %success.1)
  %extract.t = icmp ne i8 %success.1, 0
  br label %cleanup43

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %command) #10
  %37 = getelementptr inbounds i8, ptr %command, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %payloads) #10
  %39 = getelementptr inbounds %struct.vector, ptr %payloads, i32 0, i32 2
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %40 = call ptr @memset(ptr %payloads, i32 255, i32 20)
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %call.i = call zeroext i1 @dal_vector_construct(ptr noundef nonnull %payloads, ptr noundef %42, i32 noundef %add4, i32 noundef 12) #10
  br i1 %call.i, label %if.end30, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %payloads) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %command) #10
  br label %cleanup43

if.end30:                                         ; preds = %if.else
  %43 = ptrtoint ptr %payloads to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %payloads, align 4
  %45 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %command, align 4
  %number_of_payloads = getelementptr inbounds %struct.i2c_command, ptr %command, i32 0, i32 1
  %engine = getelementptr inbounds %struct.i2c_command, ptr %command, i32 0, i32 2
  %46 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %engine, align 4
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %i2c_speed_in_khz = getelementptr inbounds %struct.dc, ptr %50, i32 0, i32 2, i32 8
  %51 = ptrtoint ptr %i2c_speed_in_khz to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i2c_speed_in_khz, align 4
  %speed = getelementptr inbounds %struct.i2c_command, ptr %command, i32 0, i32 3
  %53 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_size)
  %cmp17.not.i = icmp eq i32 %write_size, 0
  br i1 %cmp17.not.i, label %if.end30.dal_ddc_i2c_payloads_add.exit_crit_edge, label %for.body.lr.ph.i

if.end30.dal_ddc_i2c_payloads_add.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %dal_ddc_i2c_payloads_add.exit

for.body.lr.ph.i:                                 ; preds = %if.end30
  %address3.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 1
  %conv.i = trunc i32 %address to i8
  %length.i111 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 2
  %data7.i = getelementptr inbounds %struct.i2c_payload, ptr %payload.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i114, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i) #10
  %54 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 33554431, ptr %payload.i, align 4
  %55 = ptrtoint ptr %address3.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i, ptr %address3.i, align 1
  %sub.i112 = sub i32 %write_size, %pos.018.i
  %56 = call i32 @llvm.umin.i32(i32 %sub.i112, i32 256) #10
  %57 = ptrtoint ptr %length.i111 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %length.i111, align 4
  %add.ptr.i = getelementptr i8, ptr %write_buf, i32 %pos.018.i
  %58 = ptrtoint ptr %data7.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %data7.i, align 4
  %call.i113 = call zeroext i1 @dal_vector_append(ptr noundef nonnull %payloads, ptr noundef nonnull %payload.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i) #10
  %add.i114 = add i32 %pos.018.i, 256
  %cmp.i = icmp ult i32 %add.i114, %write_size
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dal_ddc_i2c_payloads_add.exit_crit_edge

for.body.i.dal_ddc_i2c_payloads_add.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dal_ddc_i2c_payloads_add.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

dal_ddc_i2c_payloads_add.exit:                    ; preds = %for.body.i.dal_ddc_i2c_payloads_add.exit_crit_edge, %if.end30.dal_ddc_i2c_payloads_add.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_size)
  %cmp17.not.i116 = icmp eq i32 %read_size, 0
  br i1 %cmp17.not.i116, label %dal_ddc_i2c_payloads_add.exit.cleanup_crit_edge, label %for.body.lr.ph.i121

dal_ddc_i2c_payloads_add.exit.cleanup_crit_edge:  ; preds = %dal_ddc_i2c_payloads_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i121:                              ; preds = %dal_ddc_i2c_payloads_add.exit
  %address3.i117 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i115, i32 0, i32 1
  %conv.i118 = trunc i32 %address to i8
  %length.i119 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i115, i32 0, i32 2
  %data7.i120 = getelementptr inbounds %struct.i2c_payload, ptr %payload.i115, i32 0, i32 3
  br label %for.body.i128

for.body.i128:                                    ; preds = %for.body.i128.for.body.i128_crit_edge, %for.body.lr.ph.i121
  %pos.018.i122 = phi i32 [ 0, %for.body.lr.ph.i121 ], [ %add.i126, %for.body.i128.for.body.i128_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i115) #10
  %59 = ptrtoint ptr %payload.i115 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 16777215, ptr %payload.i115, align 4
  %60 = ptrtoint ptr %address3.i117 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i118, ptr %address3.i117, align 1
  %sub.i123 = sub i32 %read_size, %pos.018.i122
  %61 = call i32 @llvm.umin.i32(i32 %sub.i123, i32 256) #10
  %62 = ptrtoint ptr %length.i119 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %length.i119, align 4
  %add.ptr.i124 = getelementptr i8, ptr %read_buf, i32 %pos.018.i122
  %63 = ptrtoint ptr %data7.i120 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i124, ptr %data7.i120, align 4
  %call.i125 = call zeroext i1 @dal_vector_append(ptr noundef nonnull %payloads, ptr noundef nonnull %payload.i115) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i115) #10
  %add.i126 = add i32 %pos.018.i122, 256
  %cmp.i127 = icmp ult i32 %add.i126, %read_size
  br i1 %cmp.i127, label %for.body.i128.for.body.i128_crit_edge, label %for.body.i128.cleanup_crit_edge

for.body.i128.cleanup_crit_edge:                  ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i128.for.body.i128_crit_edge:            ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i128

cleanup:                                          ; preds = %for.body.i128.cleanup_crit_edge, %dal_ddc_i2c_payloads_add.exit.cleanup_crit_edge
  %64 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %39, align 4
  %conv = trunc i32 %65 to i8
  %66 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv, ptr %number_of_payloads, align 4
  %67 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx, align 4
  %link = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 6
  %69 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %link, align 4
  %call37 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %68, ptr noundef %70, ptr noundef nonnull %command) #10
  call void @dal_vector_destruct(ptr noundef nonnull %payloads) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %payloads) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %command) #10
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup, %cleanup.thread, %if.end27, %entry.cleanup43_crit_edge
  %retval.1 = phi i1 [ false, %entry.cleanup43_crit_edge ], [ false, %cleanup.thread ], [ %extract.t, %if.end27 ], [ %call37, %cleanup ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_ddc_submit_aux_command(ptr noundef %ddc, ptr noundef readonly %payload) local_unnamed_addr #0 align 64 {
entry:
  %current_payload = alloca %struct.aux_payload, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ddc, null
  %tobool1.not = icmp eq ptr %payload, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %0 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 1
  %1 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 2
  %2 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 3
  %3 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 4
  %4 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 5
  %5 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 6
  %6 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 7
  %7 = getelementptr inbounds %struct.aux_payload, ptr %current_payload, i32 0, i32 8
  %length = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 5
  %address = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 4
  %data = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 6
  %defer_delay = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 8
  %reply = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 7
  %write = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 1
  %mot = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %cond.end17.do.body_crit_edge, %do.body.preheader
  %retrieved.0 = phi i32 [ %add27, %cond.end17.do.body_crit_edge ], [ 0, %do.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %current_payload) #10
  %add = add i32 %retrieved.0, 16
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp.not = icmp ult i32 %add, %9
  %sub = sub i32 %9, %retrieved.0
  %spec.select = select i1 %cmp.not, i32 16, i32 %sub
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %3, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %retrieved.0
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %5, align 4
  %16 = ptrtoint ptr %defer_delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %defer_delay, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %7, align 4
  %19 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %payload, align 4, !range !35
  %21 = ptrtoint ptr %current_payload to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %current_payload, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %4, align 4
  br i1 %cmp.not, label %do.body.cond.end17_crit_edge, label %cond.true14

do.body.cond.end17_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17

cond.true14:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %mot to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mot, align 2, !range !35
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true14, %do.body.cond.end17_crit_edge
  %cond18 = phi i8 [ %24, %cond.true14 ], [ 1, %do.body.cond.end17_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cond18, ptr %1, align 2
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %2, align 1
  %27 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reply, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %6, align 4
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write, align 1, !range !35
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %0, align 1
  %call.i = call zeroext i1 @dce_aux_transfer_with_retries(ptr noundef %ddc, ptr noundef nonnull %current_payload) #10
  %add27 = add i32 %spec.select, %retrieved.0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %current_payload) #10
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %34)
  %cmp29 = icmp uge i32 %add27, %34
  %call.not = xor i1 %call.i, true
  %brmerge = select i1 %cmp29, i1 true, i1 %call.not
  br i1 %brmerge, label %cond.end17.cleanup_crit_edge, label %cond.end17.do.body_crit_edge

cond.end17.do.body_crit_edge:                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cond.end17.cleanup_crit_edge:                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %call.i, %cond.end17.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_submit_i2c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_vector_destruct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_aux_transfer_with_retries(ptr noundef %ddc, ptr noundef %payload) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @dce_aux_transfer_with_retries(ptr noundef %ddc, ptr noundef %payload) #10
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_link_aux_transfer_raw(ptr noundef %ddc, ptr noundef %payload, ptr noundef %operation_result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %enable_dmub_aux_for_legacy_ddc = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %enable_dmub_aux_for_legacy_ddc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_dmub_aux_for_legacy_ddc, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @dce_aux_transfer_dmub_raw(ptr noundef %ddc, ptr noundef %payload, ptr noundef %operation_result) #10
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @dce_aux_transfer_raw(ptr noundef %ddc, ptr noundef %payload, ptr noundef %operation_result) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_aux_transfer_dmub_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce_aux_transfer_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce_aux_transfer_with_retries(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dc_link_aux_try_to_configure_timeout(ptr noundef %ddc, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 6
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %ep_type = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %ep_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 4
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res_pool, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %en, align 4
  %arrayidx = getelementptr %struct.resource_pool, ptr %11, i32 0, i32 11, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %funcs = getelementptr inbounds %struct.dce_aux, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %21(ptr noundef %ddc, i32 noundef %timeout) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.end.if.end12_crit_edge
  %22 = xor i1 %tobool.not, true
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %22, %if.end12 ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dal_ddc_service_set_ddc_pin(ptr nocapture noundef writeonly %ddc_service, ptr noundef %ddc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddc_service to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ddc, ptr %ddc_service, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dal_ddc_service_get_ddc_pin(ptr nocapture noundef readonly %ddc_service) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddc_service to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_service, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_ddc_service_write_scdc_data(ptr noundef %ddc_service, i32 noundef %pix_clk, i1 noundef zeroext %lte_340_scramble) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i8, align 1
  %sink_version = alloca i8, align 1
  %write_buffer = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %pix_clk)
  %cmp = icmp ugt i32 %pix_clk, 340000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset) #10
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %offset, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sink_version) #10
  %1 = ptrtoint ptr %sink_version to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %sink_version, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %write_buffer) #10
  %2 = ptrtoint ptr %write_buffer to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %write_buffer, align 2
  %link = getelementptr inbounds %struct.ddc_service, ptr %ddc_service, i32 0, i32 6
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link, align 4
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local_sink, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skip_scdc_overwrite = getelementptr inbounds %struct.dc_sink, ptr %6, i32 0, i32 2, i32 18, i32 4
  %7 = ptrtoint ptr %skip_scdc_overwrite to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skip_scdc_overwrite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %ddc_service, i32 noundef 84, ptr noundef nonnull %offset, i32 noundef 1, ptr noundef nonnull %sink_version, i32 noundef 1)
  %9 = ptrtoint ptr %sink_version to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sink_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp7 = icmp eq i8 %10, 1
  br i1 %cmp7, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %write_buffer to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %write_buffer, align 2
  %arrayidx10 = getelementptr inbounds [2 x i8], ptr %write_buffer, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx10, align 1
  %call12 = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %ddc_service, i32 noundef 84, ptr noundef nonnull %write_buffer, i32 noundef 2, ptr noundef null, i32 noundef 0)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %13 = ptrtoint ptr %write_buffer to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %write_buffer, align 2
  %arrayidx17 = getelementptr inbounds [2 x i8], ptr %write_buffer, i32 0, i32 1
  %. = zext i1 %lte_340_scramble to i8
  %.sink = select i1 %cmp, i8 3, i8 %.
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %arrayidx17, align 1
  %call27 = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %ddc_service, i32 noundef 84, ptr noundef nonnull %write_buffer, i32 noundef 2, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %write_buffer) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sink_version) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_ddc_service_read_scdc_data(ptr noundef %ddc_service) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i8, align 1
  %tmds_config = alloca i8, align 1
  %status_data = alloca %union.hdmi_scdc_status_flags_data, align 1
  %scramble_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset) #10
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 32, ptr %offset, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmds_config) #10
  %1 = ptrtoint ptr %tmds_config to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %tmds_config, align 1
  %link = getelementptr inbounds %struct.ddc_service, ptr %ddc_service, i32 0, i32 6
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_sink, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skip_scdc_overwrite = getelementptr inbounds %struct.dc_sink, ptr %5, i32 0, i32 2, i32 18, i32 4
  %6 = ptrtoint ptr %skip_scdc_overwrite to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip_scdc_overwrite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %ddc_service, i32 noundef 84, ptr noundef nonnull %offset, i32 noundef 1, ptr noundef nonnull %tmds_config, i32 noundef 1)
  %8 = ptrtoint ptr %tmds_config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmds_config, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %status_data) #10
  %11 = call ptr @memcpy(ptr %status_data, ptr @__const.dal_ddc_service_read_scdc_data.status_data, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scramble_status) #10
  %12 = ptrtoint ptr %scramble_status to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %scramble_status, align 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 33, ptr %offset, align 1
  %call8 = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %ddc_service, i32 noundef 84, ptr noundef nonnull %offset, i32 noundef 1, ptr noundef nonnull %scramble_status, i32 noundef 1)
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %offset, align 1
  %call10 = call zeroext i1 @dal_ddc_service_query_ddc_data(ptr noundef %ddc_service, i32 noundef 84, ptr noundef nonnull %offset, i32 noundef 1, ptr noundef nonnull %status_data, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scramble_status) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status_data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmds_config) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_gpio_create_ddc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_destroy_ddc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_vector_construct(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 254, i32 3}
!2 = !{ptr @__func__.dal_ddc_service_destroy, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 420, i32 4}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 475, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 482, i32 5}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 498, i32 4}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 505, i32 4}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 204, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 205, i32 3}
!17 = !{ptr @DP_VGA_DONGLE_BRANCH_DEV_NAME, !18, !"DP_VGA_DONGLE_BRANCH_DEV_NAME", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 43, i32 22}
!19 = !{ptr @DP_DVI_CONVERTER_ID_4, !20, !"DP_DVI_CONVERTER_ID_4", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 45, i32 22}
!21 = !{ptr @DP_DVI_CONVERTER_ID_5, !22, !"DP_DVI_CONVERTER_ID_5", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 46, i32 22}
!23 = distinct !{null, !24, !"dp_hdmi_dongle_signature_str", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_ddc.c", i32 65, i32 22}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i8 0, i8 2}
