; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_psr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.48 }
%struct.anon.48 = type { i8 }
%union.max_lane_count = type { %struct.anon.49 }
%struct.anon.49 = type { i8 }
%union.max_down_spread = type { %struct.anon.50 }
%struct.anon.50 = type { i8 }
%union.dprx_feature = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%union.sink_count = type { %struct.anon.52 }
%struct.anon.52 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.53 }
%struct.anon.53 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.54 }
%struct.anon.54 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.55 }
%struct.anon.55 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%union.dpia_info = type { %struct.anon.57 }
%struct.anon.57 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.58 }
%struct.anon.58 = type { i8, i8, %struct.anon.59 }
%struct.anon.59 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.60 }
%struct.anon.60 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.61 }
%struct.anon.61 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.psr_config = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.psr_context = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, %union.dmcu_psr_level, i32, i8, i8 }
%union.dmcu_psr_level = type { %struct.anon.62 }
%struct.anon.62 = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.35, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.17 }
%union.anon.17 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.18 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.18 = type { i8 }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.fixed31_32 = type { i64 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.23, i32, i32, i32, i32 }
%struct.anon.23 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.24 }
%struct.anon.24 = type { i32 }
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
%struct.anon.35 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dc_static_screen_params = type { %struct.anon.37, i32 }
%struct.anon.37 = type { i8, i8, i8, i8 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to read PSR Caps!\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_dm_set_psr_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016[drm] PSR support:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_dm_set_psr_caps\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_dm_set_psr_caps._entry_ptr = internal global ptr @amdgpu_dm_set_psr_caps._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PSR link: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Enabling psr...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disabling psr...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Disabling psr if psr is enabled on any stream\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 111, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 130, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 164, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 188, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 229, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 242, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @amdgpu_dm_set_psr_caps._entry, ptr @amdgpu_dm_set_psr_caps._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dm_set_psr_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_set_psr_caps(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %psr_dpcd_data.i = alloca [2 x i8], align 1
  %edp_rev_dpcd_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 5
  %0 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_signal, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %psr_dpcd_data.i) #4
  %4 = ptrtoint ptr %psr_dpcd_data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %psr_dpcd_data.i, align 1, !annotation !25
  %5 = getelementptr inbounds [2 x i8], ptr %psr_dpcd_data.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %edp_rev_dpcd_data.i) #4
  %7 = ptrtoint ptr %edp_rev_dpcd_data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %edp_rev_dpcd_data.i, align 1, !annotation !25
  %call.i = call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef null, ptr noundef %link, i32 noundef 112, ptr noundef nonnull %psr_dpcd_data.i, i32 noundef 2) #4
  br i1 %call.i, label %if.end.i, label %if.end2.if.then3_crit_edge

if.end2.if.then3_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i:                                         ; preds = %if.end2
  %call1.i = call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef null, ptr noundef %link, i32 noundef 1792, ptr noundef nonnull %edp_rev_dpcd_data.i, i32 noundef 1) #4
  br i1 %call1.i, label %if.end4, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.end.i.if.then3_crit_edge, %if.end2.if.then3_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %edp_rev_dpcd_data.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %psr_dpcd_data.i) #4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %return

if.end4:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %psr_dpcd_data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %psr_dpcd_data.i, align 1
  %psr_caps.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 26
  %10 = ptrtoint ptr %psr_caps.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %psr_caps.i, align 4
  %11 = ptrtoint ptr %edp_rev_dpcd_data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %edp_rev_dpcd_data.i, align 1
  %edp_revision.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 26, i32 3
  %13 = ptrtoint ptr %edp_revision.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %edp_revision.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %edp_rev_dpcd_data.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %psr_dpcd_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5 = icmp eq i8 %9, 0
  %spec.select = sext i1 %cmp5 to i32
  %not.cmp5 = xor i1 %cmp5, true
  %spec.select30 = zext i1 %not.cmp5 to i8
  %14 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 50
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select30, ptr %16, align 4
  %18 = zext i1 %not.cmp5 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %18) #7
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_dm_link_setup_psr(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  %psr_config = alloca %struct.psr_config, align 4
  %psr_context = alloca %struct.psr_context, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %psr_config) #4
  %0 = call ptr @memset(ptr %psr_config, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %psr_context) #4
  %1 = call ptr @memset(ptr %psr_context, i32 0, i32 76)
  %cmp = icmp eq ptr %stream, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link1, align 4
  %psr_caps = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 43, i32 26
  %4 = ptrtoint ptr %psr_caps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %psr_caps, align 4
  %6 = ptrtoint ptr %psr_config to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %psr_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4.not = icmp eq i8 %5, 0
  br i1 %cmp4.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %psr_exit_link_training_required = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 2
  %7 = ptrtoint ptr %psr_exit_link_training_required to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %psr_exit_link_training_required, align 4
  %psr_frame_capture_indication_req = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 3
  %8 = ptrtoint ptr %psr_frame_capture_indication_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %psr_frame_capture_indication_req, align 1
  %psr_rfb_setup_time = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 1
  %9 = ptrtoint ptr %psr_rfb_setup_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 55, ptr %psr_rfb_setup_time, align 4
  %psr_sdp_transmit_line_num_deadline = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 4
  %10 = ptrtoint ptr %psr_sdp_transmit_line_num_deadline to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %psr_sdp_transmit_line_num_deadline, align 4
  %allow_smu_optimizations = getelementptr inbounds %struct.psr_config, ptr %psr_config, i32 0, i32 5
  %11 = ptrtoint ptr %allow_smu_optimizations to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %allow_smu_optimizations, align 4
  %call = call zeroext i1 @dc_link_setup_psr(ptr noundef %3, ptr noundef nonnull %stream, ptr noundef nonnull %psr_config, ptr noundef nonnull %psr_context) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %ret.0.off0 = phi i1 [ %call, %if.then6 ], [ false, %if.end.if.end7_crit_edge ]
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 50
  %12 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %psr_settings, align 4, !range !26
  %14 = zext i8 %13 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %14) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %if.end7 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %psr_context) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %psr_config) #4
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_setup_psr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_dm_psr_enable(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  %stream.addr = alloca ptr, align 4
  %params = alloca %struct.dc_static_screen_params, align 8
  %power_opt = alloca i32, align 4
  %psr_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %stream, ptr %stream.addr, align 4
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %1 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %link1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %3 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 282578783305728, ptr %params, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power_opt) #4
  %4 = ptrtoint ptr %power_opt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power_opt, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %psr_enable) #4
  %5 = ptrtoint ptr %psr_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %psr_enable, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #4
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %6 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pix_clk_100hz, align 8
  %mul = mul i32 %7, 100
  %conv = zext i32 %mul to i64
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %8 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v_total, align 8
  %conv3 = zext i32 %9 to i64
  %call = tail call i64 @div64_u64(i64 noundef %conv, i64 noundef %conv3) #4
  %timing4 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %10 = ptrtoint ptr %timing4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timing4, align 8
  %conv5 = zext i32 %11 to i64
  %call6 = tail call i64 @div64_u64(i64 noundef %call, i64 noundef %conv5) #4
  %conv7 = trunc i64 %call6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7)
  %cmp.not = icmp eq i32 %conv7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %div = udiv i32 1000000, %conv7
  %div9 = udiv i32 30000, %div
  %add = add nuw nsw i32 %div9, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_frames_static.0 = phi i32 [ %add, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %num_frames = getelementptr inbounds %struct.dc_static_screen_params, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %num_frames to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %num_frames_static.0, ptr %num_frames, align 4
  %ctx = getelementptr inbounds %struct.dc_link, ptr %2, i32 0, i32 36
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  call void @dc_stream_set_static_screen_params(ptr noundef %16, ptr noundef nonnull %stream.addr, i32 noundef 1, ptr noundef nonnull %params) #4
  %17 = ptrtoint ptr %power_opt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power_opt, align 4
  %or = or i32 %18, 16
  store i32 %or, ptr %power_opt, align 4
  %call12 = call zeroext i1 @dc_link_set_psr_allow_active(ptr noundef %2, ptr noundef nonnull %psr_enable, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %power_opt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %psr_enable) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power_opt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i1 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_stream_set_static_screen_params(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_set_psr_allow_active(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_dm_psr_disable(ptr nocapture noundef readonly %stream) local_unnamed_addr #0 align 64 {
entry:
  %power_opt = alloca i32, align 4
  %psr_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power_opt) #4
  %0 = ptrtoint ptr %power_opt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %power_opt, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %psr_enable) #4
  %1 = ptrtoint ptr %psr_enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %psr_enable, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #4
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %call = call zeroext i1 @dc_link_set_psr_allow_active(ptr noundef %3, ptr noundef nonnull %psr_enable, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %power_opt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %psr_enable) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power_opt) #4
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_dm_psr_disable_all(ptr nocapture noundef readonly %dm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #4
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  %call = tail call zeroext i1 @dc_set_psr_allow_active(ptr noundef %1, i1 noundef zeroext false) #4
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_set_psr_allow_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c", i32 111, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c", i32 130, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_dm_set_psr_caps._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_dm_set_psr_caps._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c", i32 164, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c", i32 188, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c", i32 229, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_psr.c", i32 242, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{i8 0, i8 2}
