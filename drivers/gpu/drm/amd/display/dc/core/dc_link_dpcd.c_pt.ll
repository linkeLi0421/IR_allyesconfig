; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_link_dpcd.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpcd_address_range = type { i32, i32 }
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

@mandatory_dpcd_partitions = internal constant { [18 x %struct.dpcd_address_range], [48 x i8] } { [18 x %struct.dpcd_address_range] [%struct.dpcd_address_range { i32 0, i32 983055 }, %struct.dpcd_address_range { i32 983056, i32 983135 }, %struct.dpcd_address_range { i32 983136, i32 983215 }, %struct.dpcd_address_range { i32 983216, i32 983295 }, %struct.dpcd_address_range { i32 983296, i32 983375 }, %struct.dpcd_address_range { i32 983376, i32 983455 }, %struct.dpcd_address_range { i32 983456, i32 983535 }, %struct.dpcd_address_range { i32 983536, i32 983615 }, %struct.dpcd_address_range { i32 983616, i32 983695 }, %struct.dpcd_address_range { i32 983696, i32 983695 }, %struct.dpcd_address_range { i32 983704, i32 983703 }, %struct.dpcd_address_range { i32 983712, i32 983711 }, %struct.dpcd_address_range { i32 983720, i32 983719 }, %struct.dpcd_address_range { i32 983728, i32 983727 }, %struct.dpcd_address_range { i32 983736, i32 983735 }, %struct.dpcd_address_range { i32 983744, i32 983743 }, %struct.dpcd_address_range { i32 983752, i32 983807 }, %struct.dpcd_address_range { i32 983808, i32 1048575 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"mandatory_dpcd_partitions\00", align 1
@___asan_gen_.2 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpcd.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 76, i32 40 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mandatory_dpcd_partitions], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mandatory_dpcd_partitions to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef %address, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %size, %address
  %sub.i = add i32 %add.i, -1
  %0 = add i32 %address, -983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %1 = icmp ult i32 %0, 6
  %2 = add i32 %add.i, -983041
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %3 = icmp ult i32 %2, 6
  %new_addr_range.sroa.0.1.i = select i1 %1, i32 983040, i32 %address
  %new_addr_range.sroa.8.1.i = select i1 %3, i32 983045, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %new_addr_range.sroa.0.1.i, i32 %address)
  %cmp17.not.i = icmp eq i32 %new_addr_range.sroa.0.1.i, %address
  call void @__sanitizer_cov_trace_cmp4(i32 %new_addr_range.sroa.8.1.i, i32 %sub.i)
  %cmp19.not.i = icmp eq i32 %new_addr_range.sroa.8.1.i, %sub.i
  %or.cond52.i = and i1 %cmp17.not.i, %cmp19.not.i
  br i1 %or.cond52.i, label %entry.dpcd_extend_address_range.exit_crit_edge, label %if.end8.i.i.i

entry.dpcd_extend_address_range.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dpcd_extend_address_range.exit

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub24.i = sub i32 %new_addr_range.sroa.8.1.i, %new_addr_range.sroa.0.1.i
  %add25.i = add i32 %sub24.i, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add25.i, i32 noundef 3520) #6
  br label %dpcd_extend_address_range.exit

dpcd_extend_address_range.exit:                   ; preds = %if.end8.i.i.i, %entry.dpcd_extend_address_range.exit_crit_edge
  %extended_address.0 = phi i32 [ %address, %entry.dpcd_extend_address_range.exit_crit_edge ], [ %new_addr_range.sroa.0.1.i, %if.end8.i.i.i ]
  %extended_data.0 = phi ptr [ %data, %entry.dpcd_extend_address_range.exit_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i ]
  %extended_size.0 = phi i32 [ %size, %entry.dpcd_extend_address_range.exit_crit_edge ], [ %add25.i, %if.end8.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extended_size.0)
  %tobool.not26 = icmp eq i32 %extended_size.0, 0
  br i1 %tobool.not26, label %dpcd_extend_address_range.exit.while.end_crit_edge, label %while.body.lr.ph

dpcd_extend_address_range.exit.while.end_crit_edge: ; preds = %dpcd_extend_address_range.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %dpcd_extend_address_range.exit
  %aux_access_disabled.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 11
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %data_index.030 = phi i32 [ 0, %while.body.lr.ph ], [ %add2, %if.end.while.body_crit_edge ]
  %size_left_to_read.029 = phi i32 [ %extended_size.0, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %partitioned_address.027 = phi i32 [ %extended_address.0, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %add.i15 = add i32 %partitioned_address.027, -1
  %sub.i16 = add i32 %add.i15, %size_left_to_read.029
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %while.body
  %partition_iterator.0.i = phi i32 [ 0, %while.body ], [ %inc.i, %while.body.i ]
  %end.i.i = getelementptr [18 x %struct.dpcd_address_range], ptr @mandatory_dpcd_partitions, i32 0, i32 %partition_iterator.0.i, i32 1
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %partitioned_address.027)
  %cmp.not.i.i = icmp ult i32 %5, %partitioned_address.027
  br i1 %cmp.not.i.i, label %while.cond.i.while.body.i_crit_edge, label %do_addresses_intersect_with_range.exit.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

do_addresses_intersect_with_range.exit.i:         ; preds = %while.cond.i
  %arrayidx.i = getelementptr [18 x %struct.dpcd_address_range], ptr @mandatory_dpcd_partitions, i32 0, i32 %partition_iterator.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i16)
  %cmp1.i.not.i = icmp ugt i32 %7, %sub.i16
  br i1 %cmp1.i.not.i, label %do_addresses_intersect_with_range.exit.i.while.body.i_crit_edge, label %dpcd_get_next_partition_size.exit

do_addresses_intersect_with_range.exit.i.while.body.i_crit_edge: ; preds = %do_addresses_intersect_with_range.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i:                                     ; preds = %do_addresses_intersect_with_range.exit.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %inc.i = add i32 %partition_iterator.0.i, 1
  br label %while.cond.i

dpcd_get_next_partition_size.exit:                ; preds = %do_addresses_intersect_with_range.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i16, i32 %5)
  %cmp.i = icmp ult i32 %sub.i16, %5
  %sub4.i = sub i32 1, %partitioned_address.027
  %add5.i = add i32 %sub4.i, %5
  %retval.0.i = select i1 %cmp.i, i32 %size_left_to_read.029, i32 %add5.i
  %8 = ptrtoint ptr %aux_access_disabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aux_access_disabled.i, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %dpcd_get_next_partition_size.exit.if.end_crit_edge

dpcd_get_next_partition_size.exit.if.end_crit_edge: ; preds = %dpcd_get_next_partition_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true.i:                                  ; preds = %dpcd_get_next_partition_size.exit
  %arrayidx = getelementptr i8, ptr %extended_data.0, i32 %data_index.030
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 8
  %call.i = tail call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef %11, ptr noundef %link, i32 noundef %partitioned_address.027, ptr noundef %arrayidx, i32 noundef %retval.0.i) #3
  br i1 %call.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.while.end_crit_edge

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %dpcd_get_next_partition_size.exit.if.end_crit_edge
  %add = add i32 %retval.0.i, %partitioned_address.027
  %add2 = add i32 %retval.0.i, %data_index.030
  %sub = sub i32 %size_left_to_read.029, %retval.0.i
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %dpcd_extend_address_range.exit.while.end_crit_edge
  %status.1 = phi i32 [ -1, %dpcd_extend_address_range.exit.while.end_crit_edge ], [ -1, %land.lhs.true.i.while.end_crit_edge ], [ 1, %if.end.while.end_crit_edge ]
  %cmp.i18 = icmp eq ptr %extended_data.0, %data
  br i1 %cmp.i18, label %while.end.dpcd_reduce_address_range.exit_crit_edge, label %if.end.i21

while.end.dpcd_reduce_address_range.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %dpcd_reduce_address_range.exit

if.end.i21:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i19 = sub i32 %address, %extended_address.0
  %arrayidx.i20 = getelementptr i8, ptr %extended_data.0, i32 %sub.i19
  %12 = call ptr @memcpy(ptr %arrayidx.i20, ptr %data, i32 %size)
  tail call void @kfree(ptr noundef %extended_data.0) #3
  br label %dpcd_reduce_address_range.exit

dpcd_reduce_address_range.exit:                   ; preds = %if.end.i21, %while.end.dpcd_reduce_address_range.exit_crit_edge
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef %address, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not15 = icmp eq i32 %size, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %aux_access_disabled.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 11
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %data_index.019 = phi i32 [ 0, %while.body.lr.ph ], [ %add2, %if.end.while.body_crit_edge ]
  %size.addr.018 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %address.addr.016 = phi i32 [ %address, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %add.i = add i32 %address.addr.016, -1
  %sub.i = add i32 %add.i, %size.addr.018
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %while.body
  %partition_iterator.0.i = phi i32 [ 0, %while.body ], [ %inc.i, %while.body.i ]
  %end.i.i = getelementptr [18 x %struct.dpcd_address_range], ptr @mandatory_dpcd_partitions, i32 0, i32 %partition_iterator.0.i, i32 1
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %address.addr.016)
  %cmp.not.i.i = icmp ult i32 %1, %address.addr.016
  br i1 %cmp.not.i.i, label %while.cond.i.while.body.i_crit_edge, label %do_addresses_intersect_with_range.exit.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

do_addresses_intersect_with_range.exit.i:         ; preds = %while.cond.i
  %arrayidx.i = getelementptr [18 x %struct.dpcd_address_range], ptr @mandatory_dpcd_partitions, i32 0, i32 %partition_iterator.0.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp1.i.not.i = icmp ugt i32 %3, %sub.i
  br i1 %cmp1.i.not.i, label %do_addresses_intersect_with_range.exit.i.while.body.i_crit_edge, label %dpcd_get_next_partition_size.exit

do_addresses_intersect_with_range.exit.i.while.body.i_crit_edge: ; preds = %do_addresses_intersect_with_range.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i:                                     ; preds = %do_addresses_intersect_with_range.exit.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %inc.i = add i32 %partition_iterator.0.i, 1
  br label %while.cond.i

dpcd_get_next_partition_size.exit:                ; preds = %do_addresses_intersect_with_range.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %1)
  %cmp.i = icmp ult i32 %sub.i, %1
  %sub4.i = sub i32 1, %address.addr.016
  %add5.i = add i32 %sub4.i, %1
  %retval.0.i = select i1 %cmp.i, i32 %size.addr.018, i32 %add5.i
  %4 = ptrtoint ptr %aux_access_disabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aux_access_disabled.i, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %dpcd_get_next_partition_size.exit.if.end_crit_edge

dpcd_get_next_partition_size.exit.if.end_crit_edge: ; preds = %dpcd_get_next_partition_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true.i:                                  ; preds = %dpcd_get_next_partition_size.exit
  %arrayidx = getelementptr i8, ptr %data, i32 %data_index.019
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 8
  %call.i = tail call zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef %7, ptr noundef %link, i32 noundef %address.addr.016, ptr noundef %arrayidx, i32 noundef %retval.0.i) #3
  br i1 %call.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.while.end_crit_edge

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %dpcd_get_next_partition_size.exit.if.end_crit_edge
  %add = add i32 %retval.0.i, %address.addr.016
  %add2 = add i32 %retval.0.i, %data_index.019
  %sub = sub i32 %size.addr.018, %retval.0.i
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %entry.while.end_crit_edge
  %status.1 = phi i32 [ -1, %entry.while.end_crit_edge ], [ -1, %land.lhs.true.i.while.end_crit_edge ], [ 1, %if.end.while.end_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null, !1, !"mandatory_dpcd_blocks", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpcd.c", i32 129, i32 40}
!2 = !{ptr @mandatory_dpcd_partitions, !3, !"mandatory_dpcd_partitions", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpcd.c", i32 76, i32 40}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
