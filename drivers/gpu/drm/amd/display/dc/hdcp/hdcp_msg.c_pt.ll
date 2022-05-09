; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/hdcp/hdcp_msg.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.protection_properties = type { i8, ptr }
%struct.hdcp_protection_message = type { i32, i32, i32, i32, i8, ptr, i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%union.max_lane_count = type { %struct.anon.57 }
%struct.anon.57 = type { i8 }
%union.max_down_spread = type { %struct.anon.58 }
%struct.anon.58 = type { i8 }
%union.dprx_feature = type { %struct.anon.59 }
%struct.anon.59 = type { i8 }
%union.sink_count = type { %struct.anon.60 }
%struct.anon.60 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.61 }
%struct.anon.61 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.63 }
%struct.anon.63 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.64 }
%struct.anon.64 = type { i8 }
%union.dpia_info = type { %struct.anon.65 }
%struct.anon.65 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.66 }
%struct.anon.66 = type { i8, i8, %struct.anon.67 }
%struct.anon.67 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.68 }
%struct.anon.68 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.69 }
%struct.anon.69 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.i2c_command = type { ptr, i8, i32, i32 }
%struct.i2c_payload = type { i8, i8, i32, ptr }
%struct.ddc_service = type { ptr, %struct.ddc_flags, %union.ddc_wa, i32, i32, ptr, ptr, i32, i32, [2048 x i8] }
%struct.ddc_flags = type { i8 }
%union.ddc_wa = type { i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.5 }
%struct.anon.5 = type { i32 }
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
%union.dpcd_ieee_vendor_signature = type { %struct.anon.54 }
%struct.anon.54 = type { [3 x i8], [6 x i8], i8, [2 x i8] }

@hdmi_14_protection = internal constant { %struct.protection_properties, [24 x i8] } { %struct.protection_properties { i8 1, ptr @hdmi_14_process_transaction }, [24 x i8] zeroinitializer }, align 32
@non_supported_protection = internal constant { %struct.protection_properties, [24 x i8] } zeroinitializer, align 32
@dp_11_protection = internal constant { %struct.protection_properties, [24 x i8] } { %struct.protection_properties { i8 1, ptr @dp_11_process_transaction }, [24 x i8] zeroinitializer }, align 32
@hdcp_i2c_offsets = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\00\08\0A\10\15\18  $(,0@AC\FFP\00`\80``\80\80`\80`\80``\80p\00", [63 x i8] zeroinitializer }, align 32
@hdcp_cmd_is_read = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\01\01\01\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\00\01\01\00\01\00\01\00\00\01\01\00", [63 x i8] zeroinitializer }, align 32
@hdcp_dpcd_addrs = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 425984, i32 425989, i32 -1, i32 425991, i32 426043, i32 425996, i32 426004, i32 426004, i32 426008, i32 426012, i32 426016, i32 426020, i32 426024, i32 426025, i32 426028, i32 426026, i32 0, i32 430621, i32 430080, i32 430091, i32 430624, i32 430752, i32 430784, i32 430816, i32 430832, i32 430840, i32 430872, i32 430896, i32 431072, i32 431088, i32 431219, i32 431251, i32 431252], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: KsvFifo Size(%d) is not a multiple of HDCP14_KSV_SIZE(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.dpcd_access_helper = private unnamed_addr constant [19 x i8] c"dpcd_access_helper\00", align 1
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: KsvFifo Size(%d) is greater than HDCP14_MAX_KSV_FIFO_SIZE(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Reading %d Ksv(s) from KsvFifo\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 32, i64 64, i64 128]
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"hdmi_14_protection\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 184, i32 43 }
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"non_supported_protection\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 121, i32 43 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"dp_11_protection\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 322, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"hdcp_i2c_offsets\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 79, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"hdcp_cmd_is_read\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 43, i32 19 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"hdcp_dpcd_addrs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 189, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 239, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 245, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 251, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @hdmi_14_protection, ptr @non_supported_protection, ptr @dp_11_protection, ptr @hdcp_i2c_offsets, ptr @hdcp_cmd_is_read, ptr @hdcp_dpcd_addrs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_14_protection to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @non_supported_protection to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_11_protection to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_i2c_offsets to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_cmd_is_read to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_dpcd_addrs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_process_hdcp_msg(i32 noundef %signal, ptr noundef %link, ptr noundef %message_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %message_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_id = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 2
  %0 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %2 = icmp ugt i32 %1, 32
  br i1 %2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %message_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %message_info, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end4.get_protection_properties_by_signal.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb7.i
  ]

if.end4.get_protection_properties_by_signal.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb.i:                                          ; preds = %if.end4
  %6 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %signal, label %sw.default.i [
    i32 1, label %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge
    i32 2, label %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge34
    i32 4, label %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge35
    i32 32, label %sw.bb2.i
    i32 64, label %sw.bb.i.sw.bb6.i_crit_edge
    i32 128, label %sw.bb.i.sw.bb6.i_crit_edge36
  ]

sw.bb.i.sw.bb6.i_crit_edge36:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

sw.bb.i.sw.bb6.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

sw.bb.i.get_protection_properties_by_signal.exit_crit_edge35: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb.i.get_protection_properties_by_signal.exit_crit_edge34: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb.i.get_protection_properties_by_signal.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb2.i:                                         ; preds = %sw.bb.i
  %tobool.not.i = icmp eq ptr %link, null
  br i1 %tobool.not.i, label %sw.bb2.i.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb2.i.if.end.i_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb2.i
  %dongle_type.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 6
  %7 = ptrtoint ptr %dongle_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dongle_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %land.lhs.true.i.get_protection_properties_by_signal.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.get_protection_properties_by_signal.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %dongle_caps.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 9
  %9 = ptrtoint ptr %dongle_caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dongle_caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5.i = icmp eq i32 %10, 1
  br i1 %cmp5.i, label %lor.lhs.false.i.get_protection_properties_by_signal.exit_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false.i.get_protection_properties_by_signal.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %sw.bb2.i.if.end.i_crit_edge
  br label %get_protection_properties_by_signal.exit

sw.bb6.i:                                         ; preds = %sw.bb.i.sw.bb6.i_crit_edge, %sw.bb.i.sw.bb6.i_crit_edge36
  br label %get_protection_properties_by_signal.exit

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb7.i:                                         ; preds = %if.end4
  %11 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %signal, label %sw.default10.i [
    i32 1, label %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge
    i32 2, label %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge37
    i32 4, label %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge38
    i32 32, label %sw.bb7.i.sw.bb9.i_crit_edge
    i32 64, label %sw.bb7.i.sw.bb9.i_crit_edge39
    i32 128, label %sw.bb7.i.sw.bb9.i_crit_edge40
  ]

sw.bb7.i.sw.bb9.i_crit_edge40:                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

sw.bb7.i.sw.bb9.i_crit_edge39:                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

sw.bb7.i.sw.bb9.i_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge38: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge37: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

sw.bb9.i:                                         ; preds = %sw.bb7.i.sw.bb9.i_crit_edge, %sw.bb7.i.sw.bb9.i_crit_edge39, %sw.bb7.i.sw.bb9.i_crit_edge40
  br label %get_protection_properties_by_signal.exit

sw.default10.i:                                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_protection_properties_by_signal.exit

get_protection_properties_by_signal.exit:         ; preds = %sw.default10.i, %sw.bb9.i, %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge, %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge37, %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge38, %sw.default.i, %sw.bb6.i, %if.end.i, %lor.lhs.false.i.get_protection_properties_by_signal.exit_crit_edge, %land.lhs.true.i.get_protection_properties_by_signal.exit_crit_edge, %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge, %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge34, %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge35, %if.end4.get_protection_properties_by_signal.exit_crit_edge
  %retval.0.i = phi ptr [ @non_supported_protection, %sw.default10.i ], [ @dp_11_protection, %sw.bb9.i ], [ @non_supported_protection, %sw.default.i ], [ @dp_11_protection, %sw.bb6.i ], [ @dp_11_protection, %if.end.i ], [ @hdmi_14_protection, %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge ], [ @hdmi_14_protection, %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge34 ], [ @hdmi_14_protection, %sw.bb.i.get_protection_properties_by_signal.exit_crit_edge35 ], [ @non_supported_protection, %lor.lhs.false.i.get_protection_properties_by_signal.exit_crit_edge ], [ @non_supported_protection, %land.lhs.true.i.get_protection_properties_by_signal.exit_crit_edge ], [ @hdmi_14_protection, %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge ], [ @hdmi_14_protection, %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge37 ], [ @hdmi_14_protection, %sw.bb7.i.get_protection_properties_by_signal.exit_crit_edge38 ], [ @non_supported_protection, %if.end4.get_protection_properties_by_signal.exit_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %retval.0.i, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %get_protection_properties_by_signal.exit.cleanup_crit_edge, label %if.end7

get_protection_properties_by_signal.exit.cleanup_crit_edge: ; preds = %get_protection_properties_by_signal.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %get_protection_properties_by_signal.exit
  %process_transaction = getelementptr inbounds %struct.protection_properties, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %process_transaction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %process_transaction, align 4
  %call8 = tail call zeroext i1 %15(ptr noundef %link, ptr noundef nonnull %message_info) #5
  br i1 %call8, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %max_retries = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 4
  %16 = ptrtoint ptr %max_retries to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp1031.not = icmp eq i8 %17, 0
  br i1 %cmp1031.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.032, 1
  %18 = ptrtoint ptr %max_retries to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_retries, align 4
  %conv = zext i8 %19 to i32
  %cmp10 = icmp ult i32 %inc, %conv
  br i1 %cmp10, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %process_transaction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %process_transaction, align 4
  %call13 = tail call zeroext i1 %21(ptr noundef %link, ptr noundef nonnull %message_info) #5
  br i1 %call13, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %get_protection_properties_by_signal.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 2, %get_protection_properties_by_signal.exit.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hdmi_14_process_transaction(ptr noundef %link, ptr nocapture noundef readonly %message_info) #0 align 64 {
entry:
  %i2c_command = alloca %struct.i2c_command, align 4
  %offset = alloca i8, align 1
  %i2c_payloads = alloca [2 x %struct.i2c_payload], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_command) #5
  %0 = call ptr @memset(ptr %i2c_command, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset) #5
  %msg_id = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 2
  %1 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_id, align 4
  %arrayidx = getelementptr [33 x i8], ptr @hdcp_i2c_offsets, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %offset, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i2c_payloads) #5
  %6 = call ptr @memset(ptr %i2c_payloads, i32 255, i32 16)
  %7 = ptrtoint ptr %i2c_payloads to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %i2c_payloads, align 4
  %address = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 1
  %length = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %length, align 4
  %data = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %offset, ptr %data, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayinit.element, align 4
  %address2 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1, i32 1
  %length3 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1, i32 2
  %11 = ptrtoint ptr %length3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %length3, align 4
  %data4 = getelementptr inbounds %struct.i2c_payload, ptr %i2c_payloads, i32 1, i32 3
  %12 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %data4, align 4
  %link5 = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 1
  %13 = ptrtoint ptr %link5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cond = icmp eq i32 %14, 1
  %spec.select = select i1 %cond, i8 59, i8 58
  %15 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %address, align 1
  %16 = ptrtoint ptr %address2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %address2, align 1
  %arrayidx16 = getelementptr [33 x i8], ptr @hdcp_cmd_is_read, i32 0, i32 %2
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  %number_of_payloads25 = getelementptr inbounds %struct.i2c_command, ptr %i2c_command, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %number_of_payloads25 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %number_of_payloads25, align 4
  %length19 = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 3
  %20 = ptrtoint ptr %length19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length19, align 4
  %22 = ptrtoint ptr %length3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %length3, align 4
  %data22 = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 5
  %23 = ptrtoint ptr %data22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data22, align 4
  %25 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %data4, align 4
  br label %if.end39

if.else:                                          ; preds = %entry
  %26 = ptrtoint ptr %number_of_payloads25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %number_of_payloads25, align 4
  %length26 = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 3
  %27 = ptrtoint ptr %length26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length26, align 4
  %add = add i32 %28, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #8
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %offset, align 1
  %31 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %call9.i.i, align 128
  %arrayidx30 = getelementptr i8, ptr %call9.i.i, i32 1
  %data31 = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 5
  %32 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data31, align 4
  %34 = ptrtoint ptr %length26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length26, align 4
  %36 = call ptr @memmove(ptr %arrayidx30, ptr %33, i32 %35)
  %add34 = add i32 %35, 1
  %37 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add34, ptr %length, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i, ptr %data, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end, %if.then
  %buff.0 = phi ptr [ null, %if.then ], [ %call9.i.i, %if.end ]
  %39 = ptrtoint ptr %i2c_command to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %i2c_payloads, ptr %i2c_command, align 4
  %engine = getelementptr inbounds %struct.i2c_command, ptr %i2c_command, i32 0, i32 2
  %40 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %engine, align 4
  %ddc = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %41 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ddc, align 4
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %i2c_speed_in_khz = getelementptr inbounds %struct.dc, ptr %46, i32 0, i32 2, i32 8
  %47 = ptrtoint ptr %i2c_speed_in_khz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i2c_speed_in_khz, align 4
  %speed = getelementptr inbounds %struct.i2c_command, ptr %i2c_command, i32 0, i32 3
  %49 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %speed, align 4
  %ctx40 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %50 = ptrtoint ptr %ctx40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx40, align 8
  %call41 = call zeroext i1 @dm_helpers_submit_i2c(ptr noundef %51, ptr noundef %link, ptr noundef nonnull %i2c_command) #5
  call void @kfree(ptr noundef %buff.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.else.cleanup_crit_edge
  %retval.0 = phi i1 [ %call41, %if.end39 ], [ false, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_payloads) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_command) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_submit_i2c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dp_11_process_transaction(ptr noundef %link, ptr nocapture noundef readonly %message_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 3
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %data = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %msg_id = getelementptr inbounds %struct.hdcp_protection_message, ptr %message_info, i32 0, i32 2
  %4 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_id, align 4
  %arrayidx = getelementptr [33 x i32], ptr @hdcp_dpcd_addrs, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [33 x i8], ptr @hdcp_cmd_is_read, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %10 = and i32 %5, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %10)
  %cmp.i = icmp eq i32 %10, 14
  br i1 %cmp.i, label %if.then.i, label %while.cond18.preheader.i

while.cond18.preheader.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not87.i = icmp eq i32 %1, 0
  br i1 %cmp19.not87.i, label %while.cond18.preheader.i.dpcd_access_helper.exit_crit_edge, label %while.cond18.preheader.i.while.body20.i_crit_edge

while.cond18.preheader.i.while.body20.i_crit_edge: ; preds = %while.cond18.preheader.i
  br label %while.body20.i

while.cond18.preheader.i.dpcd_access_helper.exit_crit_edge: ; preds = %while.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpcd_access_helper.exit

if.then.i:                                        ; preds = %entry
  %.frozen = freeze i32 %1
  %div.i = udiv i32 %.frozen, 5
  %11 = mul i32 %div.i, 5
  %rem.i.decomposed = sub i32 %.frozen, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpcd_access_helper, i32 noundef %1, i32 noundef 5) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 635, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 635
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpcd_access_helper, i32 noundef %1, i32 noundef 635) #5
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dpcd_access_helper, i32 noundef %div.i) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %if.end4.i
  %data.addr.0.i = phi ptr [ %3, %if.end4.i ], [ %data.addr.1.i, %if.end13.i.while.cond.i_crit_edge ]
  %length.addr.0.i = phi i32 [ %1, %if.end4.i ], [ %length.addr.1.i, %if.end13.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.i)
  %cmp5.not.i = icmp eq i32 %length.addr.0.i, 0
  br i1 %cmp5.not.i, label %while.cond.i.dpcd_access_helper.exit_crit_edge, label %while.body.i

while.cond.i.dpcd_access_helper.exit_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpcd_access_helper.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.addr.0.i)
  %cmp6.i = icmp ugt i32 %length.addr.0.i, 15
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 426028, ptr noundef %data.addr.0.i, i32 noundef 15) #5
  %add.ptr8.i = getelementptr i8, ptr %data.addr.0.i, i32 15
  %sub.i = add i32 %length.addr.0.i, -15
  br label %if.end13.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 426028, ptr noundef %data.addr.0.i, i32 noundef %length.addr.0.i) #5
  %add.ptr12.i = getelementptr i8, ptr %data.addr.0.i, i32 %length.addr.0.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then7.i
  %data.addr.1.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %add.ptr12.i, %if.else.i ]
  %length.addr.1.i = phi i32 [ %sub.i, %if.then7.i ], [ 0, %if.else.i ]
  %status.0.i = phi i32 [ %call.i, %if.then7.i ], [ %call11.i, %if.else.i ]
  %cmp14.not.i = icmp eq i32 %status.0.i, 1
  br i1 %cmp14.not.i, label %if.end13.i.while.cond.i_crit_edge, label %if.end13.i.dpcd_access_helper.exit_crit_edge

if.end13.i.dpcd_access_helper.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpcd_access_helper.exit

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body20.i:                                   ; preds = %if.end37.i.while.body20.i_crit_edge, %while.cond18.preheader.i.while.body20.i_crit_edge
  %offset.089.i = phi i32 [ %add39.i, %if.end37.i.while.body20.i_crit_edge ], [ 0, %while.cond18.preheader.i.while.body20.i_crit_edge ]
  %length.addr.288.i = phi i32 [ %sub38.i, %if.end37.i.while.body20.i_crit_edge ], [ %1, %while.cond18.preheader.i.while.body20.i_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %length.addr.288.i, i32 16) #5
  %add27.i = add i32 %offset.089.i, %7
  %add.ptr28.i = getelementptr i8, ptr %3, i32 %offset.089.i
  br i1 %tobool.not, label %if.else30.i, label %if.then26.i

if.then26.i:                                      ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i = tail call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef %add27.i, ptr noundef %add.ptr28.i, i32 noundef %12) #5
  br label %if.end34.i

if.else30.i:                                      ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  %call33.i = tail call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef %add27.i, ptr noundef %add.ptr28.i, i32 noundef %12) #5
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else30.i, %if.then26.i
  %status.1.i = phi i32 [ %call29.i, %if.then26.i ], [ %call33.i, %if.else30.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.1.i)
  %cmp35.not.i = icmp eq i32 %status.1.i, 1
  br i1 %cmp35.not.i, label %if.end37.i, label %if.end34.i.dpcd_access_helper.exit_crit_edge

if.end34.i.dpcd_access_helper.exit_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpcd_access_helper.exit

if.end37.i:                                       ; preds = %if.end34.i
  %sub38.i = sub i32 %length.addr.288.i, %12
  %add39.i = add i32 %12, %offset.089.i
  %cmp19.not.i = icmp eq i32 %sub38.i, 0
  br i1 %cmp19.not.i, label %if.end37.i.dpcd_access_helper.exit_crit_edge, label %if.end37.i.while.body20.i_crit_edge

if.end37.i.while.body20.i_crit_edge:              ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body20.i

if.end37.i.dpcd_access_helper.exit_crit_edge:     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpcd_access_helper.exit

dpcd_access_helper.exit:                          ; preds = %if.end37.i.dpcd_access_helper.exit_crit_edge, %if.end34.i.dpcd_access_helper.exit_crit_edge, %if.end13.i.dpcd_access_helper.exit_crit_edge, %while.cond.i.dpcd_access_helper.exit_crit_edge, %while.cond18.preheader.i.dpcd_access_helper.exit_crit_edge
  %retval.0.i = phi i1 [ true, %while.cond18.preheader.i.dpcd_access_helper.exit_crit_edge ], [ %cmp5.not.i, %if.end13.i.dpcd_access_helper.exit_crit_edge ], [ %cmp5.not.i, %while.cond.i.dpcd_access_helper.exit_crit_edge ], [ %cmp35.not.i, %if.end37.i.dpcd_access_helper.exit_crit_edge ], [ %cmp35.not.i, %if.end34.i.dpcd_access_helper.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_read_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_write_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @hdmi_14_protection, !1, !"hdmi_14_protection", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 184, i32 43}
!2 = !{ptr @hdcp_i2c_offsets, !3, !"hdcp_i2c_offsets", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 79, i32 22}
!4 = !{ptr @hdcp_cmd_is_read, !5, !"hdcp_cmd_is_read", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 43, i32 19}
!6 = !{ptr @non_supported_protection, !7, !"non_supported_protection", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 121, i32 43}
!8 = !{ptr @dp_11_protection, !9, !"dp_11_protection", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 322, i32 43}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 239, i32 4}
!12 = !{ptr @__func__.dpcd_access_helper, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 245, i32 4}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 251, i32 3}
!17 = !{ptr @hdcp_dpcd_addrs, !18, !"hdcp_dpcd_addrs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/hdcp/hdcp_msg.c", i32 189, i32 23}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
