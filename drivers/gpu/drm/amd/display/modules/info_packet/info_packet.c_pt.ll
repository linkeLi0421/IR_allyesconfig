; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/info_packet/info_packet.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/info_packet/info_packet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@switch.table.mod_build_vsc_infopacket = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\01\00\02\02\00\00\00\04\02\04\02", [20 x i8] zeroinitializer }, align 32
@switch.table.mod_build_vsc_infopacket.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\02\03\00\04", [27 x i8] zeroinitializer }, align 32
@switch.table.mod_build_hf_vsif_infopacket = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\00\00\00\00\80`\80`", [23 x i8] zeroinitializer }, align 32
@switch.table.mod_build_hf_vsif_infopacket.2 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 5, i32 6, i32 5], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 13, i64 14]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 12]
@___asan_gen_ = private constant [75 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/info_packet/info_packet.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [38 x i8] c"switch.table.mod_build_vsc_infopacket\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [40 x i8] c"switch.table.mod_build_vsc_infopacket.1\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [42 x i8] c"switch.table.mod_build_hf_vsif_infopacket\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [44 x i8] c"switch.table.mod_build_hf_vsif_infopacket.2\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @switch.table.mod_build_vsc_infopacket, ptr @switch.table.mod_build_vsc_infopacket.1, ptr @switch.table.mod_build_hf_vsif_infopacket, ptr @switch.table.mod_build_hf_vsif_infopacket.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mod_build_vsc_infopacket to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mod_build_vsc_infopacket.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mod_build_hf_vsif_infopacket to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mod_build_hf_vsif_infopacket.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_build_vsc_infopacket(ptr nocapture noundef readonly %stream, ptr noundef %info_packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %timing_3d_format = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 15
  %0 = ptrtoint ptr %timing_3d_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing_3d_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %view_format = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 22
  %2 = ptrtoint ptr %view_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %view_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp ne i32 %3, 0
  %spec.select = zext i1 %cmp1.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %vsc_packet_revision.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %stereo3dSupport.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %cmp1.not, %land.lhs.true ]
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %psr_version = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 50, i32 2
  %6 = ptrtoint ptr %psr_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %psr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp2.not = icmp eq i32 %7, -1
  %spec.select194 = select i1 %cmp2.not, i32 %vsc_packet_revision.0, i32 2
  %use_vsc_sdp_for_colorimetry = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 23
  %8 = ptrtoint ptr %use_vsc_sdp_for_colorimetry to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_vsc_sdp_for_colorimetry, align 8, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %vsc_packet_revision.2 = select i1 %tobool.not, i32 %spec.select194, i32 5
  %10 = zext i32 %vsc_packet_revision.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %vsc_packet_revision.2, label %if.end.if.end21_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 2, label %if.then11
    i32 1, label %if.then15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %hb0 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 1
  %11 = ptrtoint ptr %hb0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %hb0, align 1
  %hb1 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 2
  %12 = ptrtoint ptr %hb1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %hb1, align 1
  %hb2 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 3
  %13 = ptrtoint ptr %hb2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %hb2, align 1
  %hb3 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 4
  %14 = ptrtoint ptr %hb3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %hb3, align 1
  %uglygep = getelementptr i8, ptr %info_packet, i32 5
  %15 = call ptr @memset(ptr %uglygep, i32 0, i32 28)
  br label %if.end21.sink.split

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %hb016 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 1
  %16 = ptrtoint ptr %hb016 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %hb016, align 1
  %hb117 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 2
  %17 = ptrtoint ptr %hb117 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %hb117, align 1
  %hb218 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 3
  %18 = ptrtoint ptr %hb218 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %hb218, align 1
  %hb319 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 4
  %19 = ptrtoint ptr %hb319 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %hb319, align 1
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then15, %if.then11
  %20 = ptrtoint ptr %info_packet to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %info_packet, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.end.if.end21_crit_edge
  br i1 %stereo3dSupport.0.off0, label %if.then23, label %if.end21.if.end36_crit_edge

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

if.then23:                                        ; preds = %if.end21
  %21 = ptrtoint ptr %timing_3d_format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timing_3d_format, align 4
  %switch.tableidx = add i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 12
  br i1 %23, label %switch.lookup, label %if.then23.if.end36.sink.split_crit_edge

if.then23.if.end36.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36.sink.split

switch.lookup:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #4
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.mod_build_vsc_infopacket, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %24)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %switch.lookup, %if.then23.if.end36.sink.split_crit_edge
  %.sink = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.then23.if.end36.sink.split_crit_edge ]
  %sb26 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5
  %25 = ptrtoint ptr %sb26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %sb26, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.end21.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %vsc_packet_revision.2)
  %cmp37 = icmp eq i32 %vsc_packet_revision.2, 5
  br i1 %cmp37, label %if.then38, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  %hb039 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 1
  %26 = ptrtoint ptr %hb039 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %hb039, align 1
  %hb140 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 2
  %27 = ptrtoint ptr %hb140 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %hb140, align 1
  %hb241 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 3
  %28 = ptrtoint ptr %hb241 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %hb241, align 1
  %hb342 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 4
  %29 = ptrtoint ptr %hb342 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 19, ptr %hb342, align 1
  %30 = ptrtoint ptr %info_packet to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %info_packet, align 1
  %pixel_encoding = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 17
  %31 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pixel_encoding, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %32, label %if.then38.sw.epilog92_crit_edge [
    i32 4, label %sw.bb48
    i32 3, label %if.then38.sw.bb71_crit_edge
    i32 2, label %sw.bb47
    i32 1, label %sw.bb53
  ]

if.then38.sw.bb71_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb71

if.then38.sw.epilog92_crit_edge:                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog92

sw.bb47:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb71

sw.bb48:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb71

sw.bb53:                                          ; preds = %if.then38
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 20
  %34 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %output_color_space, align 4
  %switch.tableidx205 = add i32 %35, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx205)
  %36 = icmp ult i32 %switch.tableidx205, 4
  br i1 %36, label %switch.lookup204, label %sw.bb53.sw.epilog92_crit_edge

sw.bb53.sw.epilog92_crit_edge:                    ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog92

sw.bb71:                                          ; preds = %sw.bb48, %sw.bb47, %if.then38.sw.bb71_crit_edge
  %pixelEncoding.0199 = phi i8 [ 32, %sw.bb47 ], [ 48, %sw.bb48 ], [ 16, %if.then38.sw.bb71_crit_edge ]
  %output_color_space72 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 20
  %37 = ptrtoint ptr %output_color_space72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %output_color_space72, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %38, label %sw.bb71.sw.epilog92_crit_edge [
    i32 13, label %if.then86
    i32 6, label %if.then78
    i32 14, label %if.then82
  ]

sw.bb71.sw.epilog92_crit_edge:                    ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog92

if.then78:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog92

if.then82:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog92

if.then86:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog92

switch.lookup204:                                 ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #4
  %switch.shiftamt = shl i32 %switch.tableidx205, 3
  %switch.downshift = lshr i32 50333190, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %switch.lookup204, %if.then86, %if.then82, %if.then78, %sw.bb71.sw.epilog92_crit_edge, %sw.bb53.sw.epilog92_crit_edge, %if.then38.sw.epilog92_crit_edge
  %pixelEncoding.0200 = phi i8 [ %pixelEncoding.0199, %if.then78 ], [ %pixelEncoding.0199, %if.then82 ], [ %pixelEncoding.0199, %if.then86 ], [ 0, %sw.bb53.sw.epilog92_crit_edge ], [ %pixelEncoding.0199, %sw.bb71.sw.epilog92_crit_edge ], [ 0, %if.then38.sw.epilog92_crit_edge ], [ 0, %switch.lookup204 ]
  %cmp123.not198 = phi i1 [ false, %if.then78 ], [ false, %if.then82 ], [ false, %if.then86 ], [ true, %sw.bb53.sw.epilog92_crit_edge ], [ false, %sw.bb71.sw.epilog92_crit_edge ], [ true, %if.then38.sw.epilog92_crit_edge ], [ true, %switch.lookup204 ]
  %colorimetryFormat.0 = phi i8 [ 1, %if.then78 ], [ 5, %if.then82 ], [ 7, %if.then86 ], [ 0, %sw.bb53.sw.epilog92_crit_edge ], [ 0, %sw.bb71.sw.epilog92_crit_edge ], [ 0, %if.then38.sw.epilog92_crit_edge ], [ %switch.masked, %switch.lookup204 ]
  %or = or i8 %colorimetryFormat.0, %pixelEncoding.0200
  %arrayidx94 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 16
  %40 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or, ptr %arrayidx94, align 1
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 16
  %41 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %display_color_depth, align 8
  %switch.tableidx207 = add i32 %42, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx207)
  %43 = icmp ult i32 %switch.tableidx207, 5
  br i1 %43, label %switch.lookup206, label %sw.epilog92.sw.epilog114_crit_edge

sw.epilog92.sw.epilog114_crit_edge:               ; preds = %sw.epilog92
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog114

switch.lookup206:                                 ; preds = %sw.epilog92
  call void @__sanitizer_cov_trace_pc() #4
  %switch.gep208 = getelementptr inbounds [5 x i8], ptr @switch.table.mod_build_vsc_infopacket.1, i32 0, i32 %switch.tableidx207
  %44 = ptrtoint ptr %switch.gep208 to i32
  call void @__asan_load1_noabort(i32 %44)
  %switch.load209 = load i8, ptr %switch.gep208, align 1
  br label %sw.epilog114

sw.epilog114:                                     ; preds = %switch.lookup206, %sw.epilog92.sw.epilog114_crit_edge
  %.sink203 = phi i8 [ 0, %sw.epilog92.sw.epilog114_crit_edge ], [ %switch.load209, %switch.lookup206 ]
  %arrayidx113 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 17
  %45 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink203, ptr %arrayidx113, align 1
  %output_color_space115 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 20
  %46 = ptrtoint ptr %output_color_space115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %output_color_space115, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %47, label %lor.lhs.false122 [
    i32 3, label %sw.epilog114.if.then125_crit_edge
    i32 12, label %sw.epilog114.if.then125_crit_edge210
  ]

sw.epilog114.if.then125_crit_edge210:             ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then125

sw.epilog114.if.then125_crit_edge:                ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then125

lor.lhs.false122:                                 ; preds = %sw.epilog114
  br i1 %cmp123.not198, label %lor.lhs.false122.if.end131_crit_edge, label %lor.lhs.false122.if.then125_crit_edge

lor.lhs.false122.if.then125_crit_edge:            ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then125

lor.lhs.false122.if.end131_crit_edge:             ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end131

if.then125:                                       ; preds = %lor.lhs.false122.if.then125_crit_edge, %sw.epilog114.if.then125_crit_edge, %sw.epilog114.if.then125_crit_edge210
  %arrayidx127 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 17
  %49 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx127, align 1
  %51 = or i8 %50, -128
  store i8 %51, ptr %arrayidx127, align 1
  br label %if.end131

if.end131:                                        ; preds = %if.then125, %lor.lhs.false122.if.end131_crit_edge
  %arrayidx133 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 18
  %52 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx133, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_build_hf_vsif_infopacket(ptr nocapture noundef readonly %stream, ptr nocapture noundef %info_packet) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info_packet to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %info_packet, align 1
  %timing_3d_format = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 15
  %1 = ptrtoint ptr %timing_3d_format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timing_3d_format, align 4
  %view_format = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 22
  %3 = ptrtoint ptr %view_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %view_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %spec.store.select = select i1 %cmp, i32 0, i32 %2
  %hdmi_vic = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 14
  %5 = ptrtoint ptr %hdmi_vic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdmi_vic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %7 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3839, i32 %8)
  %cmp4 = icmp ugt i32 %8, 3839
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

land.lhs.true5:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %9 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v_total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2159, i32 %10)
  %cmp7 = icmp ugt i32 %10, 2159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp9 = icmp eq i32 %spec.store.select, 0
  %or.cond = select i1 %cmp7, i1 %cmp9, i1 false
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true5, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %hdmi_vic_mode.0.off0 = phi i1 [ false, %land.lhs.true.if.end11_crit_edge ], [ false, %entry.if.end11_crit_edge ], [ %or.cond, %land.lhs.true5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp12 = icmp eq i32 %spec.store.select, 0
  %cmp12.not = xor i1 %cmp12, true
  %brmerge = or i1 %hdmi_vic_mode.0.off0, %cmp12.not
  br i1 %brmerge, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %sb = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5
  %arrayidx = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %arrayidx, align 1
  %arrayidx17 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx19, align 1
  br i1 %cmp12, label %if.else, label %if.end29

if.else:                                          ; preds = %if.end15
  br i1 %hdmi_vic_mode.0.off0, label %sw.epilog.thread, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end44

sw.epilog.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx27 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %arrayidx27, align 1
  br label %if.then39

if.end29:                                         ; preds = %if.end15
  %arrayidx23 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %arrayidx23, align 1
  %switch.tableidx = add i32 %spec.store.select, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 9
  br i1 %16, label %switch.hole_check, label %if.end29.sw.epilog_crit_edge

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end29
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 483, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #4
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.mod_build_hf_vsif_infopacket, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %18)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep119 = getelementptr inbounds [9 x i32], ptr @switch.table.mod_build_hf_vsif_infopacket.2, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load120 = load i32, ptr %switch.gep119, align 4
  %arrayidx37 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %switch.load, ptr %arrayidx37, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge
  %length.0 = phi i32 [ 5, %if.end29.sw.epilog_crit_edge ], [ %switch.load120, %switch.lookup ], [ 5, %switch.hole_check.sw.epilog_crit_edge ]
  br i1 %hdmi_vic_mode.0.off0, label %sw.epilog.if.then39_crit_edge, label %sw.epilog.if.end44_crit_edge

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end44

sw.epilog.if.then39_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then39

if.then39:                                        ; preds = %sw.epilog.if.then39_crit_edge, %sw.epilog.thread
  %length.0114 = phi i32 [ 5, %sw.epilog.thread ], [ %length.0, %sw.epilog.if.then39_crit_edge ]
  %21 = ptrtoint ptr %hdmi_vic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hdmi_vic, align 8
  %conv = trunc i32 %22 to i8
  %arrayidx43 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 5
  %23 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %arrayidx43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %sw.epilog.if.end44_crit_edge, %if.else.if.end44_crit_edge
  %length.0113 = phi i32 [ %length.0114, %if.then39 ], [ %length.0, %sw.epilog.if.end44_crit_edge ], [ 5, %if.else.if.end44_crit_edge ]
  %hb0 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 1
  %24 = ptrtoint ptr %hb0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -127, ptr %hb0, align 1
  %hb1 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 2
  %25 = ptrtoint ptr %hb1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %hb1, align 1
  %conv45 = trunc i32 %length.0113 to i8
  %hb2 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 3
  %26 = ptrtoint ptr %hb2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv45, ptr %hb2, align 1
  %conv59 = add nuw nsw i8 %conv45, -126
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end44
  %i.0118 = phi i32 [ 1, %if.end44 ], [ %inc, %for.body.for.body_crit_edge ]
  %checksum.0117 = phi i8 [ %conv59, %if.end44 ], [ %add66, %for.body.for.body_crit_edge ]
  %arrayidx63 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 %i.0118
  %27 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx63, align 1
  %add66 = add i8 %28, %checksum.0117
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond = icmp eq i32 %i.0118, %length.0113
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %sub = sub i8 0, %add66
  %29 = ptrtoint ptr %sb to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %sub, ptr %sb, align 1
  %30 = ptrtoint ptr %info_packet to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %info_packet, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
