; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/hfi_cmds.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/hfi_cmds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hfi_pkt_hdr = type { i32, i32 }
%struct.hfi_sys_init_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_sys_set_property_pkt = type { %struct.hfi_pkt_hdr, i32, [0 x i32] }
%struct.hfi_sys_set_resource_pkt = type { %struct.hfi_pkt_hdr, i32, i32, [1 x i32] }
%struct.hfi_sys_release_resource_pkt = type { %struct.hfi_pkt_hdr, i32, i32 }
%struct.hfi_sys_ping_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_sys_test_ssr_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_sys_get_property_pkt = type { %struct.hfi_pkt_hdr, i32, [1 x i32] }
%struct.hfi_session_hdr_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_session_init_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32 }
%struct.hfi_buffer_desc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hfi_session_set_buffers_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_session_release_buffer_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_frame_data = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hfi_session_empty_buffer_compressed_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_session_empty_buffer_uncompressed_plane0_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_session_fill_buffer_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_session_parse_sequence_header_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32 }
%struct.hfi_session_get_sequence_header_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32 }
%struct.hfi_session_flush_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_session_get_property_pkt = type { %struct.hfi_session_hdr_pkt, i32, [1 x i32] }
%struct.hfi_session_set_property_pkt = type { %struct.hfi_session_hdr_pkt, i32, [0 x i32] }
%struct.hfi_multi_stream = type { i32, i32, i32, i32 }
%struct.hfi_intra_refresh = type { i32, i32, i32, i32 }
%struct.hfi_uncompressed_plane_actual_constraints_info = type { i32, i32, [2 x %struct.hfi_uncompressed_plane_constraints] }
%struct.hfi_uncompressed_plane_constraints = type { i32, i32, i32, i32 }
%struct.hfi_framerate = type { i32, i32 }
%struct.hfi_uncompressed_format_select = type { i32, i32 }
%struct.hfi_framesize = type { i32, i32, i32 }
%struct.hfi_buffer_count_actual = type { i32, i32 }
%struct.hfi_buffer_size_actual = type { i32, i32 }
%struct.hfi_buffer_display_hold_count_actual = type { i32, i32 }
%struct.hfi_display_picture_buffer_count = type { i32, i32 }
%struct.hfi_bitrate = type { i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.hfi_h264_entropy_control = type { i32, i32 }
%struct.hfi_h264_db_control = type { i32, i32, i32 }
%struct.hfi_quantization = type { i32, i32, i32, i32 }
%struct.hfi_quantization_range = type { i32, i32, i32 }
%struct.hfi_vc1e_perf_cfg_type = type { [3 x i32], [3 x i32] }
%struct.hfi_intra_period = type { i32, i32 }
%struct.hfi_operations_type = type { i32, i32 }
%struct.hfi_multi_slice_control = type { i32, i32 }
%struct.hfi_h264_vui_timing_info = type { i32, i32, i32 }
%struct.hfi_buffer_alloc_mode = type { i32, i32 }
%struct.hfi_mvc_buffer_layout_descp_type = type { i32, i32, i32 }
%struct.hfi_ltr_mode = type { i32, i32, i32 }
%struct.hfi_ltr_use = type { i32, i32, i32 }
%struct.hfi_initial_quantization = type { i32, i32, i32, i32 }
%struct.hfi_vpe_color_space_conversion = type { [9 x i32], [3 x i32], [6 x i32] }
%struct.hfi_uncompressed_plane_actual_info = type { i32, i32, [2 x %struct.hfi_uncompressed_plane_actual] }
%struct.hfi_uncompressed_plane_actual = type { i32, i32 }

@hfi_ver = internal global { i32, [28 x i8] } zeroinitializer, align 32
@switch.table.pkt_session_set_property_1x = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 -22, i32 -22, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 4101, i64 2105345]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 4101, i64 2105345, i64 18890756]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 16789505, i64 18886657, i64 33574925]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 4119, i64 2101250, i64 33579028]
@__sancov_gen_cov_switch_values.7 = internal global [67 x i64] [i64 65, i64 32, i64 4097, i64 4098, i64 4099, i64 4101, i64 4107, i64 4111, i64 8193, i64 2101249, i64 2101255, i64 2101256, i64 2101260, i64 2101261, i64 2105346, i64 16789505, i64 16789506, i64 16789507, i64 18874369, i64 18874370, i64 18886657, i64 18886658, i64 18886660, i64 18886661, i64 18886665, i64 18886669, i64 18886670, i64 18886682, i64 33574913, i64 33574914, i64 33574915, i64 33574916, i64 33574918, i64 33574919, i64 33574920, i64 33574921, i64 33574922, i64 33574923, i64 33574925, i64 33574926, i64 33574934, i64 33574939, i64 33574940, i64 33574942, i64 33574943, i64 33574944, i64 33574945, i64 33574947, i64 33574950, i64 33574951, i64 33574952, i64 33574953, i64 33574956, i64 33574959, i64 33579009, i64 33579010, i64 33579011, i64 33579012, i64 33579015, i64 33579016, i64 33579017, i64 33579018, i64 33579019, i64 33579022, i64 50364417, i64 50364418, i64 52457473]
@__sancov_gen_cov_switch_values.8 = internal global [13 x i64] [i64 11, i64 32, i64 4117, i64 8194, i64 2101249, i64 2101256, i64 16789506, i64 18874369, i64 33574918, i64 33574920, i64 33574949, i64 33574966, i64 33579015]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 16789505, i64 18886657, i64 33574925]
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"hfi_ver\00", align 1
@___asan_gen_.11 = private constant [48 x i8] c"../drivers/media/platform/qcom/venus/hfi_cmds.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 12, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant [41 x i8] c"switch.table.pkt_session_set_property_1x\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @hfi_ver, ptr @switch.table.pkt_session_set_property_1x], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfi_ver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pkt_session_set_property_1x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_init(ptr nocapture noundef writeonly %pkt, i32 noundef %arch_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65537, ptr %pkt_type, align 4
  %arch_type2 = getelementptr inbounds %struct.hfi_sys_init_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %arch_type2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %arch_type, ptr %arch_type2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_pc_prep(ptr nocapture noundef writeonly %pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65538, ptr %pkt_type, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_idle_indicator(ptr nocapture noundef writeonly %pkt, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx = getelementptr %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65541, ptr %pkt_type, align 4
  %num_properties = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_properties, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %data, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %enable, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_debug_config(ptr nocapture noundef writeonly %pkt, i32 noundef %mode, i32 noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 24, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65541, ptr %pkt_type, align 4
  %num_properties = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_properties, align 4
  %data = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %data, align 4
  %arrayidx3 = getelementptr %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %config, ptr %arrayidx3, align 4
  %mode5 = getelementptr %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 1, i32 1
  %5 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mode, ptr %mode5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_coverage_config(ptr nocapture noundef writeonly %pkt, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65541, ptr %pkt_type, align 4
  %num_properties = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_properties, align 4
  %data = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %data, align 4
  %arrayidx3 = getelementptr %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mode, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkt_sys_set_resource(ptr nocapture noundef %pkt, i32 noundef %id, i32 noundef %size, i32 noundef %addr, ptr noundef %cookie) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65539, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %resource_handle = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %resource_handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %resource_handle, align 4
  %id.off = add i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off)
  %switch = icmp ult i32 %id.off, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %resource_data = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, ptr %pkt, i32 0, i32 3
  %4 = ptrtoint ptr %resource_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %resource_data, align 4
  %mem = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, ptr %pkt, i32 1
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %addr, ptr %mem, align 4
  %resource_type = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, ptr %pkt, i32 0, i32 2
  %6 = ptrtoint ptr %resource_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %resource_type, align 4
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %pkt, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -524, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkt_sys_unset_resource(ptr nocapture noundef writeonly %pkt, i32 noundef %id, i32 noundef %size, ptr noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65540, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %resource_handle = getelementptr inbounds %struct.hfi_sys_release_resource_pkt, ptr %pkt, i32 0, i32 2
  %3 = ptrtoint ptr %resource_handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %resource_handle, align 4
  %4 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %entry.return_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge6
    i32 0, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6
  %resource_type = getelementptr inbounds %struct.hfi_sys_release_resource_pkt, ptr %pkt, i32 0, i32 1
  %5 = ptrtoint ptr %resource_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %resource_type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -524, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_ping(ptr nocapture noundef writeonly %pkt, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2162690, ptr %pkt_type, align 4
  %client_data = getelementptr inbounds %struct.hfi_sys_ping_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %client_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cookie, ptr %client_data, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_power_control(ptr nocapture noundef writeonly %pkt, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx = getelementptr %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65541, ptr %pkt_type, align 4
  %num_properties = getelementptr inbounds %struct.hfi_sys_set_property_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_properties, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %data, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %enable, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkt_sys_ssr_cmd(ptr nocapture noundef writeonly %pkt, i32 noundef %trigger_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_type.off = add i32 %trigger_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %trigger_type.off)
  %switch = icmp ult i32 %trigger_type.off, 3
  br i1 %switch, label %sw.epilog, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65793, ptr %pkt_type, align 4
  %trigger_type2 = getelementptr inbounds %struct.hfi_sys_test_ssr_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %trigger_type2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %trigger_type, ptr %trigger_type2, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_sys_image_version(ptr nocapture noundef writeonly %pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65542, ptr %pkt_type, align 4
  %num_properties = getelementptr inbounds %struct.hfi_sys_get_property_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_properties, align 4
  %data = getelementptr inbounds %struct.hfi_sys_get_property_pkt, ptr %pkt, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %data, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkt_session_init(ptr noundef writeonly %pkt, ptr noundef %cookie, i32 noundef %session_type, i32 noundef %codec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pkt, null
  %tobool1.not = icmp eq ptr %cookie, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codec)
  %tobool3.not = icmp eq i32 %codec, 0
  %or.cond14 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond14, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65543, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  %session_domain = getelementptr inbounds %struct.hfi_session_init_pkt, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %session_domain to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %session_type, ptr %session_domain, align 4
  %session_codec = getelementptr inbounds %struct.hfi_session_init_pkt, ptr %pkt, i32 0, i32 2
  %5 = ptrtoint ptr %session_codec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %codec, ptr %session_codec, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_session_cmd(ptr nocapture noundef writeonly %pkt, i32 noundef %pkt_type, ptr noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %pkt, align 4
  %pkt_type3 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pkt_type, ptr %pkt_type3, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkt_session_set_buffers(ptr noundef %pkt, ptr noundef %cookie, ptr noundef readonly %bd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  %tobool1.not = icmp eq ptr %pkt, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %bd, null
  %or.cond70 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond70, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 69634, ptr %pkt_type, align 4
  %1 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %session_id, align 4
  %buffer_size = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 1
  %3 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer_size, align 4
  %buffer_size5 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 2
  %5 = ptrtoint ptr %buffer_size5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buffer_size5, align 4
  %6 = load i32, ptr %buffer_size, align 4
  %min_buffer_size = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 4
  %7 = ptrtoint ptr %min_buffer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %min_buffer_size, align 4
  %num_buffers = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 2
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers, align 4
  %num_buffers7 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 5
  %10 = ptrtoint ptr %num_buffers7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_buffers7, align 4
  %11 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bd, align 4
  %13 = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp eq i32 %13, 2
  br i1 %switch, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %extradata_size = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 5
  %14 = ptrtoint ptr %extradata_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %extradata_size, align 4
  %extradata_size12 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 3
  %16 = ptrtoint ptr %extradata_size12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %extradata_size12, align 4
  %17 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_buffers, align 4
  %mul = shl i32 %18, 3
  %add = add i32 %mul, 32
  %19 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %pkt, align 4
  %buffer_info = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1774.not = icmp eq i32 %9, 0
  br i1 %cmp1774.not, label %if.then11.if.end35_crit_edge, label %for.body.lr.ph

if.then11.if.end35_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.lr.ph:                                   ; preds = %if.then11
  %device_addr = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 3
  %extradata_addr = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 4
  %extradata_addr18 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_addr, align 4
  %22 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %buffer_info, align 4
  %23 = ptrtoint ptr %extradata_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %extradata_addr, align 4
  %25 = ptrtoint ptr %extradata_addr18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %extradata_addr18, align 4
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.if.end35_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.else:                                          ; preds = %if.end
  %extradata_size19 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 3
  %26 = ptrtoint ptr %extradata_size19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %extradata_size19, align 4
  %27 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_buffers, align 4
  %sub = shl i32 %28, 2
  %add22 = add i32 %sub, 32
  %29 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add22, ptr %pkt, align 4
  %30 = ptrtoint ptr %num_buffers7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_buffers7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2872.not = icmp eq i32 %31, 0
  br i1 %cmp2872.not, label %if.else.if.end35_crit_edge, label %for.body29.lr.ph

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body29.lr.ph:                                 ; preds = %if.else
  %device_addr30 = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 3
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.lr.ph
  %i.173 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc33, %for.body29.for.body29_crit_edge ]
  %32 = ptrtoint ptr %device_addr30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device_addr30, align 4
  %arrayidx = getelementptr %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 6, i32 %i.173
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx, align 4
  %inc33 = add nuw i32 %i.173, 1
  %35 = ptrtoint ptr %num_buffers7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_buffers7, align 4
  %cmp28 = icmp ult i32 %inc33, %36
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.if.end35_crit_edge

for.body29.if.end35_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29

if.end35:                                         ; preds = %for.body29.if.end35_crit_edge, %if.else.if.end35_crit_edge, %for.body.if.end35_crit_edge, %if.then11.if.end35_crit_edge
  %37 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bd, align 4
  %buffer_type37 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, ptr %pkt, i32 0, i32 1
  %39 = ptrtoint ptr %buffer_type37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %buffer_type37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkt_session_unset_buffers(ptr noundef %pkt, ptr noundef %cookie, ptr noundef readonly %bd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  %tobool1.not = icmp eq ptr %pkt, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %bd, null
  %or.cond65 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond65, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2166795, ptr %pkt_type, align 4
  %1 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %session_id, align 4
  %buffer_size = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 1
  %3 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer_size, align 4
  %buffer_size5 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 0, i32 2
  %5 = ptrtoint ptr %buffer_size5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buffer_size5, align 4
  %num_buffers = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 2
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers, align 4
  %num_buffers6 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 0, i32 5
  %8 = ptrtoint ptr %num_buffers6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_buffers6, align 4
  %9 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bd, align 4
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch = icmp eq i32 %11, 2
  br i1 %switch, label %if.then10, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %if.end
  %12 = ptrtoint ptr %num_buffers6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_buffers6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1966.not = icmp eq i32 %13, 0
  br i1 %cmp1966.not, label %for.cond17.preheader.for.end25_crit_edge, label %for.body20.lr.ph

for.cond17.preheader.for.end25_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %device_addr21 = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 3
  br label %for.body20

if.then10:                                        ; preds = %if.end
  %buffer_info = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1268.not = icmp eq i32 %7, 0
  br i1 %cmp1268.not, label %if.then10.if.end32_crit_edge, label %for.body.lr.ph

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.body.lr.ph:                                   ; preds = %if.then10
  %device_addr = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 3
  %extradata_addr = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 4
  %extradata_addr13 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_addr, align 4
  %16 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buffer_info, align 4
  %17 = ptrtoint ptr %extradata_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %extradata_addr, align 4
  %19 = ptrtoint ptr %extradata_addr13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %extradata_addr13, align 4
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body.if.end32_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %i.167 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc24, %for.body20.for.body20_crit_edge ]
  %20 = ptrtoint ptr %device_addr21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_addr21, align 4
  %arrayidx = getelementptr %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 0, i32 6, i32 %i.167
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx, align 4
  %inc24 = add nuw i32 %i.167, 1
  %23 = ptrtoint ptr %num_buffers6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_buffers6, align 4
  %cmp19 = icmp ult i32 %inc24, %24
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.body20.for.end25_crit_edge

for.body20.for.end25_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

for.end25:                                        ; preds = %for.body20.for.end25_crit_edge, %for.cond17.preheader.for.end25_crit_edge
  %extradata_size = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 0, i32 3
  %25 = ptrtoint ptr %extradata_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %extradata_size, align 4
  br label %if.end32

if.end32:                                         ; preds = %for.end25, %for.body.if.end32_crit_edge, %if.then10.if.end32_crit_edge
  %.sink70 = phi i32 [ 2, %for.end25 ], [ 3, %if.then10.if.end32_crit_edge ], [ 3, %for.body.if.end32_crit_edge ]
  %26 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_buffers, align 4
  %sub = shl i32 %27, %.sink70
  %storemerge = add i32 %sub, 32
  %28 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %pkt, align 4
  %response_required = getelementptr inbounds %struct.hfi_buffer_desc, ptr %bd, i32 0, i32 6
  %29 = ptrtoint ptr %response_required to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %response_required, align 4
  %response_req = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 0, i32 4
  %31 = ptrtoint ptr %response_req to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %response_req, align 4
  %32 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bd, align 4
  %buffer_type34 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, ptr %pkt, i32 0, i32 1
  %34 = ptrtoint ptr %buffer_type34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %buffer_type34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkt_session_etb_decoder(ptr nocapture noundef writeonly %pkt, ptr noundef %cookie, ptr nocapture noundef readonly %in_frame) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 60, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2166788, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  %timestamp = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 3
  %4 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %timestamp, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  %time_stamp_hi = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %time_stamp_hi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %time_stamp_hi, align 4
  %7 = load i64, ptr %timestamp, align 8
  %conv6 = trunc i64 %7 to i32
  %time_stamp_lo = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 2
  %8 = ptrtoint ptr %time_stamp_lo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %time_stamp_lo, align 4
  %flags = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %flags7 = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 3
  %11 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags7, align 4
  %mark_target = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 8
  %12 = ptrtoint ptr %mark_target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mark_target, align 8
  %mark_target8 = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 4
  %14 = ptrtoint ptr %mark_target8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mark_target8, align 4
  %mark_data = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 9
  %15 = ptrtoint ptr %mark_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mark_data, align 4
  %mark_data9 = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 5
  %17 = ptrtoint ptr %mark_data9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mark_data9, align 4
  %offset = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 5
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %offset10 = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 6
  %20 = ptrtoint ptr %offset10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %offset10, align 4
  %alloc_len = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 6
  %21 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alloc_len, align 8
  %alloc_len11 = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 7
  %23 = ptrtoint ptr %alloc_len11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %alloc_len11, align 4
  %filled_len = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 7
  %24 = ptrtoint ptr %filled_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %filled_len, align 4
  %filled_len12 = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 8
  %26 = ptrtoint ptr %filled_len12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %filled_len12, align 4
  %clnt_data = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 10
  %27 = ptrtoint ptr %clnt_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clnt_data, align 8
  %input_tag = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 9
  %29 = ptrtoint ptr %input_tag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %input_tag, align 4
  %device_addr = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 1
  %30 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device_addr, align 4
  %packet_buffer = getelementptr inbounds %struct.hfi_session_empty_buffer_compressed_pkt, ptr %pkt, i32 0, i32 10
  %32 = ptrtoint ptr %packet_buffer to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %packet_buffer, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkt_session_etb_encoder(ptr nocapture noundef writeonly %pkt, ptr noundef %cookie, ptr nocapture noundef readonly %in_frame) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %device_addr = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 1
  %0 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 64, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2166788, ptr %pkt_type, align 4
  %4 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %5 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %session_id, align 4
  %view_id = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %view_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %view_id, align 4
  %timestamp = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 3
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %timestamp, align 8
  %shr = lshr i64 %8, 32
  %conv = trunc i64 %shr to i32
  %time_stamp_hi = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 2
  %9 = ptrtoint ptr %time_stamp_hi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %time_stamp_hi, align 4
  %10 = load i64, ptr %timestamp, align 8
  %conv7 = trunc i64 %10 to i32
  %time_stamp_lo = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 3
  %11 = ptrtoint ptr %time_stamp_lo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7, ptr %time_stamp_lo, align 4
  %flags = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %flags8 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 4
  %14 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %flags8, align 4
  %mark_target = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 8
  %15 = ptrtoint ptr %mark_target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mark_target, align 8
  %mark_target9 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 5
  %17 = ptrtoint ptr %mark_target9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mark_target9, align 4
  %mark_data = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 9
  %18 = ptrtoint ptr %mark_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mark_data, align 4
  %mark_data10 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 6
  %20 = ptrtoint ptr %mark_data10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mark_data10, align 4
  %offset = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 5
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %offset11 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 9
  %23 = ptrtoint ptr %offset11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %offset11, align 4
  %alloc_len = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 6
  %24 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alloc_len, align 8
  %alloc_len12 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 7
  %26 = ptrtoint ptr %alloc_len12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %alloc_len12, align 4
  %filled_len = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 7
  %27 = ptrtoint ptr %filled_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %filled_len, align 4
  %filled_len13 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 8
  %29 = ptrtoint ptr %filled_len13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %filled_len13, align 4
  %clnt_data = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 10
  %30 = ptrtoint ptr %clnt_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clnt_data, align 8
  %input_tag = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 10
  %32 = ptrtoint ptr %input_tag to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %input_tag, align 4
  %33 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_addr, align 4
  %packet_buffer = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 11
  %35 = ptrtoint ptr %packet_buffer to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %packet_buffer, align 4
  %extradata_addr = getelementptr inbounds %struct.hfi_frame_data, ptr %in_frame, i32 0, i32 2
  %36 = ptrtoint ptr %extradata_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %extradata_addr, align 8
  %extradata_buffer = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, ptr %pkt, i32 0, i32 12
  %38 = ptrtoint ptr %extradata_buffer to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %extradata_buffer, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkt_session_ftb(ptr nocapture noundef writeonly %pkt, ptr noundef %cookie, ptr noundef readonly %out_frame) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  %tobool1.not = icmp eq ptr %out_frame, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %lor.lhs.false2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false2:                                   ; preds = %entry
  %device_addr = getelementptr inbounds %struct.hfi_frame_data, ptr %out_frame, i32 0, i32 1
  %0 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 44, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2166789, ptr %pkt_type, align 4
  %4 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %5 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %session_id, align 4
  %6 = ptrtoint ptr %out_frame to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_frame, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %7, label %if.end.if.end13_crit_edge [
    i32 2, label %if.end.if.end13.sink.split_crit_edge
    i32 3, label %if.then10
  ]

if.end.if.end13.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then10, %if.end.if.end13.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then10 ], [ 0, %if.end.if.end13.sink.split_crit_edge ]
  %stream_id11 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 1
  %9 = ptrtoint ptr %stream_id11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %stream_id11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.end.if.end13_crit_edge
  %clnt_data = getelementptr inbounds %struct.hfi_frame_data, ptr %out_frame, i32 0, i32 10
  %10 = ptrtoint ptr %clnt_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clnt_data, align 8
  %output_tag = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 5
  %12 = ptrtoint ptr %output_tag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %output_tag, align 4
  %13 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_addr, align 4
  %packet_buffer = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 6
  %15 = ptrtoint ptr %packet_buffer to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %packet_buffer, align 4
  %extradata_addr = getelementptr inbounds %struct.hfi_frame_data, ptr %out_frame, i32 0, i32 2
  %16 = ptrtoint ptr %extradata_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extradata_addr, align 8
  %extradata_buffer = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 7
  %18 = ptrtoint ptr %extradata_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %extradata_buffer, align 4
  %alloc_len = getelementptr inbounds %struct.hfi_frame_data, ptr %out_frame, i32 0, i32 6
  %19 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alloc_len, align 8
  %alloc_len15 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 3
  %21 = ptrtoint ptr %alloc_len15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %alloc_len15, align 4
  %filled_len = getelementptr inbounds %struct.hfi_frame_data, ptr %out_frame, i32 0, i32 7
  %22 = ptrtoint ptr %filled_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %filled_len, align 4
  %filled_len16 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 4
  %24 = ptrtoint ptr %filled_len16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %filled_len16, align 4
  %offset = getelementptr inbounds %struct.hfi_frame_data, ptr %out_frame, i32 0, i32 5
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %offset17 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 2
  %27 = ptrtoint ptr %offset17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %offset17, align 4
  %extradata_size = getelementptr inbounds %struct.hfi_frame_data, ptr %out_frame, i32 0, i32 11
  %28 = ptrtoint ptr %extradata_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %extradata_size, align 4
  %data = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, ptr %pkt, i32 0, i32 8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %data, align 4
  br label %return

return:                                           ; preds = %if.end13, %lor.lhs.false2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkt_session_parse_seq_header(ptr nocapture noundef writeonly %pkt, ptr noundef %cookie, i32 noundef %seq_hdr, i32 noundef %seq_hdr_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_hdr)
  %tobool1.not = icmp eq i32 %seq_hdr, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_hdr_len)
  %tobool3.not = icmp eq i32 %seq_hdr_len, 0
  %or.cond14 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond14, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2166794, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  %header_len = getelementptr inbounds %struct.hfi_session_parse_sequence_header_pkt, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %seq_hdr_len, ptr %header_len, align 4
  %packet_buffer = getelementptr inbounds %struct.hfi_session_parse_sequence_header_pkt, ptr %pkt, i32 0, i32 2
  %5 = ptrtoint ptr %packet_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %seq_hdr, ptr %packet_buffer, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkt_session_get_seq_hdr(ptr nocapture noundef writeonly %pkt, ptr noundef %cookie, i32 noundef %seq_hdr, i32 noundef %seq_hdr_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cookie, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_hdr)
  %tobool1.not = icmp eq i32 %seq_hdr, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_hdr_len)
  %tobool3.not = icmp eq i32 %seq_hdr_len, 0
  %or.cond14 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond14, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 69635, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  %buffer_len = getelementptr inbounds %struct.hfi_session_get_sequence_header_pkt, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %buffer_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %seq_hdr_len, ptr %buffer_len, align 4
  %packet_buffer = getelementptr inbounds %struct.hfi_session_get_sequence_header_pkt, ptr %pkt, i32 0, i32 2
  %5 = ptrtoint ptr %packet_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %seq_hdr, ptr %packet_buffer, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkt_session_flush(ptr nocapture noundef writeonly %pkt, ptr noundef %cookie, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type.off = add i32 %type, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.off)
  %switch = icmp ult i32 %type.off, 4
  br i1 %switch, label %sw.epilog, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2166792, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  %flush_type = getelementptr inbounds %struct.hfi_session_flush_pkt, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %flush_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %flush_type, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkt_session_get_property(ptr noundef writeonly %pkt, ptr noundef %cookie, i32 noundef %ptype) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hfi_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = zext i32 %ptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %ptype, label %if.then.return_crit_edge [
    i32 4101, label %if.then.sw.epilog.i_crit_edge
    i32 2105345, label %if.then.sw.epilog.i_crit_edge9
  ]

if.then.sw.epilog.i_crit_edge9:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog.i:                                      ; preds = %if.then.sw.epilog.i_crit_edge, %if.then.sw.epilog.i_crit_edge9
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %pkt, align 4
  %pkt_type.i = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2166793, ptr %pkt_type.i, align 4
  %4 = ptrtoint ptr %cookie to i32
  %session_id.i = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %5 = ptrtoint ptr %session_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %session_id.i, align 4
  %num_properties.i = getelementptr inbounds %struct.hfi_session_get_property_pkt, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_properties.i, align 4
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %pkt, null
  %tobool1.not.i = icmp eq ptr %cookie, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %pkt, align 4
  %pkt_type.i5 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %8 = ptrtoint ptr %pkt_type.i5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2166793, ptr %pkt_type.i5, align 4
  %9 = ptrtoint ptr %cookie to i32
  %session_id.i6 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %10 = ptrtoint ptr %session_id.i6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %session_id.i6, align 4
  %num_properties.i7 = getelementptr inbounds %struct.hfi_session_get_property_pkt, ptr %pkt, i32 0, i32 1
  %11 = ptrtoint ptr %num_properties.i7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %num_properties.i7, align 4
  %12 = zext i32 %ptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %ptype, label %if.end.i.return_crit_edge [
    i32 18890756, label %if.end.i.return.sink.split_crit_edge
    i32 4101, label %if.end.i.return.sink.split_crit_edge10
    i32 2105345, label %if.end.i.return.sink.split_crit_edge11
  ]

if.end.i.return.sink.split_crit_edge11:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.end.i.return.sink.split_crit_edge10:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.end.i.return.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return.sink.split:                                ; preds = %if.end.i.return.sink.split_crit_edge, %if.end.i.return.sink.split_crit_edge10, %if.end.i.return.sink.split_crit_edge11, %sw.epilog.i
  %data.i.i = getelementptr inbounds %struct.hfi_session_get_property_pkt, ptr %pkt, i32 0, i32 2
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ptype, ptr %data.i.i, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkt_session_set_property(ptr noundef %pkt, ptr noundef %cookie, i32 noundef %ptype, ptr noundef %pdata) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hfi_ver, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %0, label %if.end8 [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 2, label %if.then6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @pkt_session_set_property_1x(ptr noundef %pkt, ptr noundef %cookie, i32 noundef %ptype, ptr noundef %pdata)
  br label %return

if.then2:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %pkt, null
  %tobool1.not.i = icmp eq ptr %cookie, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  %tobool3.not.i = icmp eq ptr %pdata, null
  %or.cond49.i = or i1 %or.cond.i, %tobool3.not.i
  br i1 %or.cond49.i, label %if.then2.return_crit_edge, label %if.end.i

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.then2
  %data.i = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %pkt, align 4
  %pkt_type.i = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 69633, ptr %pkt_type.i, align 4
  %4 = ptrtoint ptr %cookie to i32
  %session_id.i = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %5 = ptrtoint ptr %session_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %session_id.i, align 4
  %num_properties.i = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_properties.i, align 4
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ptype, ptr %data.i, align 4
  %8 = zext i32 %ptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %ptype, label %sw.default23.i [
    i32 16789505, label %sw.bb.i
    i32 33574925, label %sw.bb14.i
    i32 18886657, label %if.end.i.return_crit_edge
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdata, align 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.i, align 4
  %enable.i = getelementptr inbounds %struct.hfi_multi_stream, ptr %pdata, i32 0, i32 1
  %12 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable.i, align 4
  %enable10.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %enable10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %enable10.i, align 4
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 28, ptr %pkt, align 4
  br label %return

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdata, align 4
  %.off.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 5
  %spec.select.i = select i1 %switch.i, i32 0, i32 -22
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx.i, align 4
  %cir_mbs.i = getelementptr inbounds %struct.hfi_intra_refresh, ptr %pdata, i32 0, i32 3
  %19 = ptrtoint ptr %cir_mbs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cir_mbs.i, align 4
  %mbs.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %mbs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mbs.i, align 4
  %22 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 28, ptr %pkt, align 4
  br label %return

sw.default23.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call fastcc i32 @pkt_session_set_property_1x(ptr noundef nonnull %pkt, ptr noundef nonnull %cookie, i32 noundef %ptype, ptr noundef nonnull %pdata) #7
  br label %return

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @pkt_session_set_property_4xx(ptr noundef %pkt, ptr noundef %cookie, i32 noundef %ptype, ptr noundef %pdata)
  br label %return

if.end8:                                          ; preds = %entry
  %tobool.not.i22 = icmp eq ptr %pkt, null
  %tobool1.not.i23 = icmp eq ptr %cookie, null
  %or.cond.i24 = or i1 %tobool.not.i22, %tobool1.not.i23
  %tobool3.not.i25 = icmp eq ptr %pdata, null
  %or.cond66.i = or i1 %or.cond.i24, %tobool3.not.i25
  br i1 %or.cond66.i, label %if.end8.return_crit_edge, label %if.end.i31

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i31:                                       ; preds = %if.end8
  %data.i26 = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx.i27 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %pkt, align 4
  %pkt_type.i28 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %24 = ptrtoint ptr %pkt_type.i28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 69633, ptr %pkt_type.i28, align 4
  %25 = ptrtoint ptr %cookie to i32
  %session_id.i29 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %26 = ptrtoint ptr %session_id.i29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %session_id.i29, align 4
  %num_properties.i30 = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 1
  %27 = ptrtoint ptr %num_properties.i30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_properties.i30, align 4
  %28 = ptrtoint ptr %data.i26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ptype, ptr %data.i26, align 4
  %29 = zext i32 %ptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %ptype, label %sw.default.i [
    i32 2101250, label %sw.bb.i32
    i32 33579028, label %sw.bb24.i
    i32 4119, label %sw.bb31.i
  ]

sw.bb.i32:                                        ; preds = %if.end.i31
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdata, align 4
  %32 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.i27, align 4
  %num_planes.i = getelementptr inbounds %struct.hfi_uncompressed_plane_actual_constraints_info, ptr %pdata, i32 0, i32 1
  %33 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_planes.i, align 4
  %num_planes10.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %num_planes10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %num_planes10.i, align 4
  %plane_format.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %plane_format12.i = getelementptr inbounds %struct.hfi_uncompressed_plane_actual_constraints_info, ptr %pdata, i32 0, i32 2
  %36 = call ptr @memcpy(ptr %plane_format.i, ptr %plane_format12.i, i32 16)
  %37 = load i32, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i = icmp ugt i32 %37, 1
  br i1 %cmp.i, label %if.then15.i, label %sw.bb.i32.if.end20.i_crit_edge

sw.bb.i32.if.end20.i_crit_edge:                   ; preds = %sw.bb.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then15.i:                                      ; preds = %sw.bb.i32
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 2, i32 1
  %arrayidx19.i = getelementptr %struct.hfi_uncompressed_plane_actual_constraints_info, ptr %pdata, i32 0, i32 2, i32 1
  %38 = call ptr @memcpy(ptr %arrayidx17.i, ptr %arrayidx19.i, i32 16)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %sw.bb.i32.if.end20.i_crit_edge
  %39 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 60, ptr %pkt, align 4
  br label %return

sw.bb24.i:                                        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pdata, align 4
  %42 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx.i27, align 4
  %43 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 36, ptr %pkt, align 4
  br label %return

sw.bb31.i:                                        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pdata, align 4
  %46 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i27, align 4
  %47 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 24, ptr %pkt, align 4
  br label %return

sw.default.i:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %call38.i = tail call fastcc i32 @pkt_session_set_property_4xx(ptr noundef nonnull %pkt, ptr noundef nonnull %cookie, i32 noundef %ptype, ptr noundef nonnull %pdata) #7
  br label %return

return:                                           ; preds = %sw.default.i, %sw.bb31.i, %sw.bb24.i, %if.end20.i, %if.end8.return_crit_edge, %if.then6, %sw.default23.i, %sw.bb14.i, %sw.bb.i, %if.end.i.return_crit_edge, %if.then2.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call7, %if.then6 ], [ -22, %if.then2.return_crit_edge ], [ %call24.i, %sw.default23.i ], [ 0, %if.end.i.return_crit_edge ], [ %spec.select.i, %sw.bb14.i ], [ 0, %sw.bb.i ], [ %call38.i, %sw.default.i ], [ -22, %if.end8.return_crit_edge ], [ 0, %sw.bb31.i ], [ 0, %sw.bb24.i ], [ 0, %if.end20.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @pkt_session_set_property_1x(ptr noundef %pkt, ptr noundef %cookie, i32 noundef %ptype, ptr noundef readonly %pdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pkt, null
  %tobool1.not = icmp eq ptr %cookie, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %pdata, null
  %or.cond1032 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond1032, label %entry.cleanup717_crit_edge, label %if.end

entry.cleanup717_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup717

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 69633, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  %num_properties = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_properties, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ptype, ptr %data, align 4
  %6 = zext i32 %ptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %ptype, label %if.end.cleanup717_crit_edge [
    i32 8193, label %sw.bb
    i32 4099, label %sw.bb14
    i32 4097, label %sw.bb23
    i32 2105346, label %sw.bb33
    i32 2101249, label %sw.bb40
    i32 2101260, label %sw.bb48
    i32 2101261, label %sw.bb58
    i32 4107, label %sw.bb68
    i32 18886661, label %sw.bb76
    i32 18886660, label %sw.bb85
    i32 18886665, label %sw.bb93
    i32 18874369, label %sw.bb102
    i32 16789505, label %sw.bb111
    i32 18886658, label %sw.bb125
    i32 2101255, label %sw.bb136
    i32 18874370, label %sw.bb147
    i32 18886657, label %sw.bb156
    i32 18886669, label %sw.bb165
    i32 33579016, label %sw.bb174
    i32 33579012, label %if.end.sw.epilog716.sink.split_crit_edge
    i32 33574922, label %if.end.sw.epilog716_crit_edge
    i32 33574919, label %if.end.sw.epilog716_crit_edge1055
    i32 33579009, label %sw.bb188
    i32 33579015, label %sw.bb196
    i32 4101, label %sw.bb207
    i32 33574914, label %sw.bb224
    i32 33574916, label %sw.bb237
    i32 33574921, label %sw.bb248
    i32 33574923, label %sw.bb255
    i32 33574915, label %sw.bb262
    i32 33574918, label %sw.bb275
    i32 33574920, label %sw.bb286
    i32 33574943, label %sw.bb312
    i32 33574944, label %sw.bb325
    i32 33579011, label %sw.bb333
    i32 33579010, label %sw.bb344
    i32 16789506, label %sw.bb353
    i32 50364418, label %sw.bb370
    i32 33574925, label %sw.bb388
    i32 33574926, label %sw.bb406
    i32 33574913, label %sw.bb421
    i32 33574942, label %sw.bb432
    i32 50364417, label %sw.bb444
    i32 33574934, label %sw.bb455
    i32 2101256, label %sw.bb466
    i32 18886670, label %sw.bb479
    i32 33574945, label %sw.bb490
    i32 33574947, label %sw.bb501
    i32 18886682, label %sw.bb512
    i32 4111, label %sw.bb520
    i32 33574940, label %sw.bb535
    i32 33579018, label %sw.bb550
    i32 33579017, label %sw.bb561
    i32 33574950, label %sw.bb570
    i32 33579019, label %sw.bb579
    i32 33574951, label %sw.bb588
    i32 33574952, label %sw.bb599
    i32 52457473, label %sw.bb615
    i32 33574953, label %sw.bb632
    i32 33574939, label %sw.bb643
    i32 33579022, label %sw.bb654
    i32 33574956, label %sw.bb663
    i32 16789507, label %sw.bb672
    i32 33574959, label %sw.bb683
    i32 4098, label %sw.bb692
  ]

if.end.sw.epilog716_crit_edge1055:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog716

if.end.sw.epilog716_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog716

if.end.sw.epilog716.sink.split_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog716.sink.split

if.end.cleanup717_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup717

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdata, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %framerate = getelementptr inbounds %struct.hfi_framerate, ptr %pdata, i32 0, i32 1
  %10 = ptrtoint ptr %framerate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %framerate, align 4
  %framerate10 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %framerate10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %framerate10, align 4
  br label %sw.epilog716.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdata, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %format = getelementptr inbounds %struct.hfi_uncompressed_format_select, ptr %pdata, i32 0, i32 1
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  %format18 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format18, align 4
  br label %sw.epilog716.sink.split

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdata, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx, align 4
  %height = getelementptr inbounds %struct.hfi_framesize, ptr %pdata, i32 0, i32 2
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %height27 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %24 = ptrtoint ptr %height27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height27, align 4
  %width = getelementptr inbounds %struct.hfi_framesize, ptr %pdata, i32 0, i32 1
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  %width28 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %width28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %width28, align 4
  br label %sw.epilog716.sink.split

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pdata, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %count_actual = getelementptr inbounds %struct.hfi_buffer_count_actual, ptr %pdata, i32 0, i32 1
  %31 = ptrtoint ptr %count_actual to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count_actual, align 4
  %count_actual42 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %count_actual42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %count_actual42, align 4
  %34 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pdata, align 4
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %size50 = getelementptr inbounds %struct.hfi_buffer_size_actual, ptr %pdata, i32 0, i32 1
  %37 = ptrtoint ptr %size50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size50, align 4
  %size51 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %size51 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %size51, align 4
  %40 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pdata, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hold_count = getelementptr inbounds %struct.hfi_buffer_display_hold_count_actual, ptr %pdata, i32 0, i32 1
  %43 = ptrtoint ptr %hold_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hold_count, align 4
  %hold_count61 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %hold_count61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %hold_count61, align 4
  %46 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pdata, align 4
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb68:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pdata, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb76:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pdata, align 4
  %.off = add i32 %53, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i32 0, i32 -22
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb85:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pdata, align 4
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb93:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pdata, align 4
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb102:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pdata, align 4
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb111:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pdata, align 4
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx, align 4
  %enable115 = getelementptr inbounds %struct.hfi_multi_stream, ptr %pdata, i32 0, i32 1
  %67 = ptrtoint ptr %enable115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %enable115, align 4
  %enable116 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %enable116 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %enable116, align 4
  %width117 = getelementptr inbounds %struct.hfi_multi_stream, ptr %pdata, i32 0, i32 2
  %70 = ptrtoint ptr %width117 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %width117, align 4
  %width118 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %72 = ptrtoint ptr %width118 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %width118, align 4
  %height119 = getelementptr inbounds %struct.hfi_multi_stream, ptr %pdata, i32 0, i32 3
  %73 = ptrtoint ptr %height119 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height119, align 4
  %height120 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 2
  %75 = ptrtoint ptr %height120 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %height120, align 4
  br label %sw.epilog716.sink.split

sw.bb125:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %count128 = getelementptr inbounds %struct.hfi_display_picture_buffer_count, ptr %pdata, i32 0, i32 1
  %76 = ptrtoint ptr %count128 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count128, align 4
  %count129 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %count129 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %count129, align 4
  %79 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pdata, align 4
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb136:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pdata, align 4
  %.off1033 = add i32 %83, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off1033)
  %switch1034 = icmp ult i32 %.off1033, 3
  %spec.select1035 = select i1 %switch1034, i32 0, i32 -22
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb147:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pdata, align 4
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb156:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pdata, align 4
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb165:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pdata, align 4
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb174:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pdata, align 4
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb188:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pdata, align 4
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx, align 4
  %layer_id = getelementptr inbounds %struct.hfi_bitrate, ptr %pdata, i32 0, i32 1
  %100 = ptrtoint ptr %layer_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %layer_id, align 4
  %layer_id191 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %102 = ptrtoint ptr %layer_id191 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %layer_id191, align 4
  br label %sw.epilog716.sink.split

sw.bb196:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pdata, align 4
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx, align 4
  %layer_id201 = getelementptr inbounds %struct.hfi_bitrate, ptr %pdata, i32 0, i32 1
  %106 = ptrtoint ptr %layer_id201 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %layer_id201, align 4
  %layer_id202 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %108 = ptrtoint ptr %layer_id202 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %layer_id202, align 4
  br label %sw.epilog716.sink.split

sw.bb207:                                         ; preds = %if.end
  %level = getelementptr inbounds %struct.hfi_profile_level, ptr %pdata, i32 0, i32 1
  %109 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %level, align 4
  %level209 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %111 = ptrtoint ptr %level209 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %level209, align 4
  %112 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp = icmp eq i32 %113, 0
  %spec.select1036 = select i1 %cmp, i32 4, i32 %113
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.select1036, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool216.not = icmp eq i32 %110, 0
  br i1 %tobool216.not, label %if.then217, label %sw.bb207.sw.epilog716.sink.split_crit_edge

sw.bb207.sw.epilog716.sink.split_crit_edge:       ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog716.sink.split

if.then217:                                       ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %level209 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %level209, align 4
  br label %sw.epilog716.sink.split

sw.bb224:                                         ; preds = %if.end
  %116 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pdata, align 4
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp229 = icmp eq i32 %117, 2
  br i1 %cmp229, label %if.then230, label %sw.bb224.sw.epilog716.sink.split_crit_edge

sw.bb224.sw.epilog716.sink.split_crit_edge:       ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog716.sink.split

if.then230:                                       ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #9
  %cabac_model = getelementptr inbounds %struct.hfi_h264_entropy_control, ptr %pdata, i32 0, i32 1
  %119 = ptrtoint ptr %cabac_model to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cabac_model, align 4
  %cabac_model231 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %121 = ptrtoint ptr %cabac_model231 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %cabac_model231, align 4
  br label %sw.epilog716.sink.split

sw.bb237:                                         ; preds = %if.end
  %122 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pdata, align 4
  %switch.tableidx = add i32 %123, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %124 = icmp ult i32 %switch.tableidx, 8
  br i1 %124, label %switch.lookup, label %sw.bb237.sw.epilog241_crit_edge

sw.bb237.sw.epilog241_crit_edge:                  ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog241

switch.lookup:                                    ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.pkt_session_set_property_1x, i32 0, i32 %switch.tableidx
  %125 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %125)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog241

sw.epilog241:                                     ; preds = %switch.lookup, %sw.bb237.sw.epilog241_crit_edge
  %ret.2 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %sw.bb237.sw.epilog241_crit_edge ]
  %126 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb248:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pdata, align 4
  %129 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb255:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pdata, align 4
  %132 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb262:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pdata, align 4
  %.off1037 = add i32 %134, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off1037)
  %switch1038 = icmp ult i32 %.off1037, 3
  %spec.select1039 = select i1 %switch1038, i32 0, i32 -22
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx, align 4
  %slice_alpha_offset = getelementptr inbounds %struct.hfi_h264_db_control, ptr %pdata, i32 0, i32 1
  %136 = ptrtoint ptr %slice_alpha_offset to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %slice_alpha_offset, align 4
  %slice_alpha_offset269 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %slice_alpha_offset269 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %slice_alpha_offset269, align 4
  %slice_beta_offset = getelementptr inbounds %struct.hfi_h264_db_control, ptr %pdata, i32 0, i32 2
  %139 = ptrtoint ptr %slice_beta_offset to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %slice_beta_offset, align 4
  %slice_beta_offset270 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %141 = ptrtoint ptr %slice_beta_offset270 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %slice_beta_offset270, align 4
  br label %sw.epilog716.sink.split

sw.bb275:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pdata, align 4
  %144 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx, align 4
  %qp_p = getelementptr inbounds %struct.hfi_quantization, ptr %pdata, i32 0, i32 1
  %145 = ptrtoint ptr %qp_p to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %qp_p, align 4
  %qp_p278 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %147 = ptrtoint ptr %qp_p278 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %qp_p278, align 4
  %qp_b = getelementptr inbounds %struct.hfi_quantization, ptr %pdata, i32 0, i32 2
  %148 = ptrtoint ptr %qp_b to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %qp_b, align 4
  %qp_b279 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %150 = ptrtoint ptr %qp_b279 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %qp_b279, align 4
  %layer_id280 = getelementptr inbounds %struct.hfi_quantization, ptr %pdata, i32 0, i32 3
  %151 = ptrtoint ptr %layer_id280 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %layer_id280, align 4
  %layer_id281 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 2
  %153 = ptrtoint ptr %layer_id281 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %layer_id281, align 4
  br label %sw.epilog716.sink.split

sw.bb286:                                         ; preds = %if.end
  %154 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pdata, align 4
  %max_qp289 = getelementptr inbounds %struct.hfi_quantization_range, ptr %pdata, i32 0, i32 1
  %156 = ptrtoint ptr %max_qp289 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %max_qp289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %155)
  %cmp290 = icmp ugt i32 %155, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %157)
  %cmp292 = icmp ugt i32 %157, 255
  %or.cond1040 = select i1 %cmp290, i1 true, i1 %cmp292
  br i1 %or.cond1040, label %sw.bb286.sw.epilog716_crit_edge, label %if.end294

sw.bb286.sw.epilog716_crit_edge:                  ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog716

if.end294:                                        ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %155, 8
  %or = or i32 %shl, %155
  %shl295 = shl nuw nsw i32 %155, 16
  %or296 = or i32 %or, %shl295
  %158 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or296, ptr %arrayidx, align 4
  %shl298 = shl nuw nsw i32 %157, 8
  %or299 = or i32 %shl298, %157
  %shl300 = shl nuw nsw i32 %157, 16
  %or301 = or i32 %or299, %shl300
  %max_qp302 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %159 = ptrtoint ptr %max_qp302 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or301, ptr %max_qp302, align 4
  %layer_id303 = getelementptr inbounds %struct.hfi_quantization_range, ptr %pdata, i32 0, i32 2
  %160 = ptrtoint ptr %layer_id303 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %layer_id303, align 4
  %layer_id304 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %162 = ptrtoint ptr %layer_id304 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %layer_id304, align 4
  br label %sw.epilog716.sink.split

sw.bb312:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %163 = call ptr @memcpy(ptr %arrayidx, ptr %pdata, i32 12)
  %search_range_y_subsampled = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 2
  %search_range_y_subsampled317 = getelementptr inbounds %struct.hfi_vc1e_perf_cfg_type, ptr %pdata, i32 0, i32 1
  %164 = call ptr @memcpy(ptr %search_range_y_subsampled, ptr %search_range_y_subsampled317, i32 12)
  br label %sw.epilog716.sink.split

sw.bb325:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pdata, align 4
  %167 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb333:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pdata, align 4
  %170 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx, align 4
  %bframes336 = getelementptr inbounds %struct.hfi_intra_period, ptr %pdata, i32 0, i32 1
  %171 = ptrtoint ptr %bframes336 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bframes336, align 4
  %bframes337 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %173 = ptrtoint ptr %bframes337 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %bframes337, align 4
  br label %sw.epilog716.sink.split

sw.bb344:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pdata, align 4
  %176 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb353:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pdata, align 4
  %and = and i32 %178, 255
  %179 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %and, ptr %arrayidx, align 4
  %180 = load i32, ptr %pdata, align 4
  %181 = lshr i32 %180, 2
  %shl356 = and i32 %181, 65280
  %or358 = or i32 %shl356, %and
  store i32 %or358, ptr %arrayidx, align 4
  %182 = load i32, ptr %pdata, align 4
  %183 = lshr i32 %182, 4
  %shl361 = and i32 %183, 16711680
  %or363 = or i32 %shl361, %or358
  store i32 %or363, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb370:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pdata, align 4
  %.off1041 = add i32 %185, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1041)
  %switch1042 = icmp ult i32 %.off1041, 4
  %flip = getelementptr inbounds %struct.hfi_operations_type, ptr %pdata, i32 0, i32 1
  %186 = ptrtoint ptr %flip to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flip, align 4
  %.off1052 = add i32 %187, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off1052)
  %switch1053 = icmp ult i32 %.off1052, 3
  %188 = select i1 %switch1053, i1 %switch1042, i1 false
  %spec.select1054 = select i1 %188, i32 0, i32 -22
  %189 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %185, ptr %arrayidx, align 4
  %190 = ptrtoint ptr %flip to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flip, align 4
  %flip381 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %192 = ptrtoint ptr %flip381 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %flip381, align 4
  br label %sw.epilog716.sink.split

sw.bb388:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pdata, align 4
  %.off1044 = add i32 %194, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off1044)
  %switch1045 = icmp ult i32 %.off1044, 5
  %spec.select1046 = select i1 %switch1045, i32 0, i32 -22
  %195 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %arrayidx, align 4
  %air_mbs = getelementptr inbounds %struct.hfi_intra_refresh, ptr %pdata, i32 0, i32 1
  %196 = ptrtoint ptr %air_mbs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %air_mbs, align 4
  %air_mbs397 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %198 = ptrtoint ptr %air_mbs397 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %air_mbs397, align 4
  %air_ref = getelementptr inbounds %struct.hfi_intra_refresh, ptr %pdata, i32 0, i32 2
  %199 = ptrtoint ptr %air_ref to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %air_ref, align 4
  %air_ref398 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %201 = ptrtoint ptr %air_ref398 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %air_ref398, align 4
  %cir_mbs = getelementptr inbounds %struct.hfi_intra_refresh, ptr %pdata, i32 0, i32 3
  %202 = ptrtoint ptr %cir_mbs to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cir_mbs, align 4
  %cir_mbs399 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 2
  %204 = ptrtoint ptr %cir_mbs399 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %cir_mbs399, align 4
  br label %sw.epilog716.sink.split

sw.bb406:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pdata, align 4
  %.off1047 = add i32 %206, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1047)
  %switch1048 = icmp ult i32 %.off1047, 4
  %spec.select1049 = select i1 %switch1048, i32 0, i32 -22
  %207 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %arrayidx, align 4
  %slice_size = getelementptr inbounds %struct.hfi_multi_slice_control, ptr %pdata, i32 0, i32 1
  %208 = ptrtoint ptr %slice_size to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %slice_size, align 4
  %slice_size414 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %210 = ptrtoint ptr %slice_size414 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %slice_size414, align 4
  br label %sw.epilog716.sink.split

sw.bb421:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %211 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pdata, align 4
  %213 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb432:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %214 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %pdata, align 4
  %216 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %arrayidx, align 4
  %fixed_framerate = getelementptr inbounds %struct.hfi_h264_vui_timing_info, ptr %pdata, i32 0, i32 1
  %217 = ptrtoint ptr %fixed_framerate to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %fixed_framerate, align 4
  %fixed_framerate436 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %219 = ptrtoint ptr %fixed_framerate436 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %fixed_framerate436, align 4
  %time_scale = getelementptr inbounds %struct.hfi_h264_vui_timing_info, ptr %pdata, i32 0, i32 2
  %220 = ptrtoint ptr %time_scale to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %time_scale, align 4
  %time_scale437 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %222 = ptrtoint ptr %time_scale437 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %time_scale437, align 4
  br label %sw.epilog716.sink.split

sw.bb444:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %223 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pdata, align 4
  %225 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb455:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pdata, align 4
  %228 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb466:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %229 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pdata, align 4
  %231 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %arrayidx, align 4
  %mode471 = getelementptr inbounds %struct.hfi_buffer_alloc_mode, ptr %pdata, i32 0, i32 1
  %232 = ptrtoint ptr %mode471 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %mode471, align 4
  %mode472 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %234 = ptrtoint ptr %mode472 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %mode472, align 4
  br label %sw.epilog716.sink.split

sw.bb479:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %235 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %pdata, align 4
  %237 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb490:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %238 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %pdata, align 4
  %240 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb501:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %241 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %pdata, align 4
  %243 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb512:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %244 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %pdata, align 4
  %246 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb520:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %247 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %pdata, align 4
  %switch.and = and i32 %248, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %249 = select i1 %switch.selectcmp, i32 0, i32 -22
  %250 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %248, ptr %arrayidx, align 4
  %bright_view_first = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, ptr %pdata, i32 0, i32 1
  %251 = ptrtoint ptr %bright_view_first to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %bright_view_first, align 4
  %bright_view_first527 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %253 = ptrtoint ptr %bright_view_first527 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %bright_view_first527, align 4
  %ngap = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, ptr %pdata, i32 0, i32 2
  %254 = ptrtoint ptr %ngap to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ngap, align 4
  %ngap528 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %256 = ptrtoint ptr %ngap528 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %ngap528, align 4
  br label %sw.epilog716.sink.split

sw.bb535:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %257 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %258)
  %switch1050 = icmp ult i32 %258, 3
  %spec.select1051 = select i1 %switch1050, i32 0, i32 -22
  %259 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %arrayidx, align 4
  %ltr_count = getelementptr inbounds %struct.hfi_ltr_mode, ptr %pdata, i32 0, i32 1
  %260 = ptrtoint ptr %ltr_count to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %ltr_count, align 4
  %ltr_count542 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %262 = ptrtoint ptr %ltr_count542 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %ltr_count542, align 4
  %trust_mode = getelementptr inbounds %struct.hfi_ltr_mode, ptr %pdata, i32 0, i32 2
  %263 = ptrtoint ptr %trust_mode to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %trust_mode, align 4
  %trust_mode543 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %265 = ptrtoint ptr %trust_mode543 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %trust_mode543, align 4
  br label %sw.epilog716.sink.split

sw.bb550:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %frames = getelementptr inbounds %struct.hfi_ltr_use, ptr %pdata, i32 0, i32 2
  %266 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %frames, align 4
  %frames552 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %268 = ptrtoint ptr %frames552 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %frames552, align 4
  %269 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %pdata, align 4
  %271 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %arrayidx, align 4
  %use_constrnt = getelementptr inbounds %struct.hfi_ltr_use, ptr %pdata, i32 0, i32 1
  %272 = ptrtoint ptr %use_constrnt to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %use_constrnt, align 4
  %use_constrnt554 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %274 = ptrtoint ptr %use_constrnt554 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %use_constrnt554, align 4
  br label %sw.epilog716.sink.split

sw.bb561:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %275 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pdata, align 4
  %277 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb570:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %278 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %pdata, align 4
  %280 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb579:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %281 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %pdata, align 4
  %283 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb588:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %284 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %pdata, align 4
  %286 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb599:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %init_qp_enable = getelementptr inbounds %struct.hfi_initial_quantization, ptr %pdata, i32 0, i32 3
  %287 = ptrtoint ptr %init_qp_enable to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %init_qp_enable, align 4
  %init_qp_enable602 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 2
  %289 = ptrtoint ptr %init_qp_enable602 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %init_qp_enable602, align 4
  %290 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %pdata, align 4
  %292 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %arrayidx, align 4
  %qp_p605 = getelementptr inbounds %struct.hfi_initial_quantization, ptr %pdata, i32 0, i32 1
  %293 = ptrtoint ptr %qp_p605 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %qp_p605, align 4
  %qp_p606 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %295 = ptrtoint ptr %qp_p606 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %qp_p606, align 4
  %qp_b607 = getelementptr inbounds %struct.hfi_initial_quantization, ptr %pdata, i32 0, i32 2
  %296 = ptrtoint ptr %qp_b607 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %qp_b607, align 4
  %qp_b608 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %298 = ptrtoint ptr %qp_b608 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %qp_b608, align 4
  br label %sw.epilog716.sink.split

sw.bb615:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %299 = call ptr @memcpy(ptr %arrayidx, ptr %pdata, i32 36)
  %csc_bias = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 3, i32 0, i32 1
  %csc_bias621 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, ptr %pdata, i32 0, i32 1
  %300 = call ptr @memcpy(ptr %csc_bias, ptr %csc_bias621, i32 12)
  %csc_limit = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 4, i32 0, i32 0, i32 1
  %csc_limit624 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, ptr %pdata, i32 0, i32 2
  %301 = call ptr @memcpy(ptr %csc_limit, ptr %csc_limit624, i32 24)
  br label %sw.epilog716.sink.split

sw.bb632:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %302 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %pdata, align 4
  %304 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb643:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %305 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %pdata, align 4
  %307 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb654:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %308 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %pdata, align 4
  %310 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb663:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %311 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %pdata, align 4
  %313 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb672:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %314 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %pdata, align 4
  %316 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb683:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %pdata, align 4
  %319 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %arrayidx, align 4
  br label %sw.epilog716.sink.split

sw.bb692:                                         ; preds = %if.end
  %320 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %pdata, align 4
  %322 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %arrayidx, align 4
  %num_planes = getelementptr inbounds %struct.hfi_uncompressed_plane_actual_info, ptr %pdata, i32 0, i32 1
  %323 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %num_planes, align 4
  %num_planes696 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %325 = ptrtoint ptr %num_planes696 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %num_planes696, align 4
  %plane_format = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %plane_format698 = getelementptr inbounds %struct.hfi_uncompressed_plane_actual_info, ptr %pdata, i32 0, i32 2
  %326 = ptrtoint ptr %plane_format698 to i32
  call void @__asan_loadN_noabort(i32 %326, i32 8)
  %327 = load i64, ptr %plane_format698, align 4
  %328 = ptrtoint ptr %plane_format to i32
  call void @__asan_storeN_noabort(i32 %328, i32 8)
  store i64 %327, ptr %plane_format, align 4
  %329 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %329)
  %cmp701 = icmp ugt i32 %329, 1
  br i1 %cmp701, label %if.then702, label %sw.bb692.sw.epilog716.sink.split_crit_edge

sw.bb692.sw.epilog716.sink.split_crit_edge:       ; preds = %sw.bb692
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog716.sink.split

if.then702:                                       ; preds = %sw.bb692
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx704 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 2, i32 0, i32 0, i32 1
  %arrayidx706 = getelementptr %struct.hfi_uncompressed_plane_actual_info, ptr %pdata, i32 0, i32 2, i32 1
  %330 = ptrtoint ptr %arrayidx706 to i32
  call void @__asan_loadN_noabort(i32 %330, i32 8)
  %331 = load i64, ptr %arrayidx706, align 4
  %332 = ptrtoint ptr %arrayidx704 to i32
  call void @__asan_storeN_noabort(i32 %332, i32 8)
  store i64 %331, ptr %arrayidx704, align 4
  br label %sw.epilog716.sink.split

sw.epilog716.sink.split:                          ; preds = %if.then702, %sw.bb692.sw.epilog716.sink.split_crit_edge, %sw.bb683, %sw.bb672, %sw.bb663, %sw.bb654, %sw.bb643, %sw.bb632, %sw.bb615, %sw.bb599, %sw.bb588, %sw.bb579, %sw.bb570, %sw.bb561, %sw.bb550, %sw.bb535, %sw.bb520, %sw.bb512, %sw.bb501, %sw.bb490, %sw.bb479, %sw.bb466, %sw.bb455, %sw.bb444, %sw.bb432, %sw.bb421, %sw.bb406, %sw.bb388, %sw.bb370, %sw.bb353, %sw.bb344, %sw.bb333, %sw.bb325, %sw.bb312, %if.end294, %sw.bb275, %sw.bb262, %sw.bb255, %sw.bb248, %sw.epilog241, %if.then230, %sw.bb224.sw.epilog716.sink.split_crit_edge, %if.then217, %sw.bb207.sw.epilog716.sink.split_crit_edge, %sw.bb196, %sw.bb188, %sw.bb174, %sw.bb165, %sw.bb156, %sw.bb147, %sw.bb136, %sw.bb125, %sw.bb111, %sw.bb102, %sw.bb93, %sw.bb85, %sw.bb76, %sw.bb68, %sw.bb58, %sw.bb48, %sw.bb40, %sw.bb33, %sw.bb23, %sw.bb14, %sw.bb, %if.end.sw.epilog716.sink.split_crit_edge
  %.sink = phi i32 [ 32, %if.end294 ], [ 24, %sw.bb683 ], [ 24, %sw.bb672 ], [ 24, %sw.bb663 ], [ 24, %sw.bb654 ], [ 24, %sw.bb643 ], [ 24, %sw.bb632 ], [ 92, %sw.bb615 ], [ 36, %sw.bb599 ], [ 24, %sw.bb588 ], [ 24, %sw.bb579 ], [ 24, %sw.bb570 ], [ 24, %sw.bb561 ], [ 32, %sw.bb550 ], [ 32, %sw.bb535 ], [ 32, %sw.bb520 ], [ 24, %sw.bb512 ], [ 24, %sw.bb501 ], [ 24, %sw.bb490 ], [ 24, %sw.bb479 ], [ 28, %sw.bb466 ], [ 24, %sw.bb455 ], [ 24, %sw.bb444 ], [ 32, %sw.bb432 ], [ 24, %sw.bb421 ], [ 28, %sw.bb406 ], [ 36, %sw.bb388 ], [ 28, %sw.bb370 ], [ 24, %sw.bb353 ], [ 24, %sw.bb344 ], [ 28, %sw.bb333 ], [ 24, %sw.bb325 ], [ 44, %sw.bb312 ], [ 36, %sw.bb275 ], [ 32, %sw.bb262 ], [ 24, %sw.bb255 ], [ 24, %sw.bb248 ], [ 24, %sw.epilog241 ], [ 28, %sw.bb196 ], [ 28, %sw.bb188 ], [ 24, %sw.bb174 ], [ 24, %sw.bb165 ], [ 24, %sw.bb156 ], [ 24, %sw.bb147 ], [ 24, %sw.bb136 ], [ 28, %sw.bb125 ], [ 36, %sw.bb111 ], [ 24, %sw.bb102 ], [ 24, %sw.bb93 ], [ 24, %sw.bb85 ], [ 24, %sw.bb76 ], [ 24, %sw.bb68 ], [ 28, %sw.bb58 ], [ 28, %sw.bb48 ], [ 28, %sw.bb40 ], [ 24, %sw.bb33 ], [ 32, %sw.bb23 ], [ 28, %sw.bb14 ], [ 28, %sw.bb ], [ 20, %if.end.sw.epilog716.sink.split_crit_edge ], [ 28, %if.then217 ], [ 28, %sw.bb207.sw.epilog716.sink.split_crit_edge ], [ 28, %if.then230 ], [ 28, %sw.bb224.sw.epilog716.sink.split_crit_edge ], [ 44, %if.then702 ], [ 44, %sw.bb692.sw.epilog716.sink.split_crit_edge ]
  %ret.11.ph = phi i32 [ 0, %if.end294 ], [ 0, %sw.bb683 ], [ 0, %sw.bb672 ], [ 0, %sw.bb663 ], [ 0, %sw.bb654 ], [ 0, %sw.bb643 ], [ 0, %sw.bb632 ], [ 0, %sw.bb615 ], [ 0, %sw.bb599 ], [ 0, %sw.bb588 ], [ 0, %sw.bb579 ], [ 0, %sw.bb570 ], [ 0, %sw.bb561 ], [ 0, %sw.bb550 ], [ %spec.select1051, %sw.bb535 ], [ %249, %sw.bb520 ], [ 0, %sw.bb512 ], [ 0, %sw.bb501 ], [ 0, %sw.bb490 ], [ 0, %sw.bb479 ], [ 0, %sw.bb466 ], [ 0, %sw.bb455 ], [ 0, %sw.bb444 ], [ 0, %sw.bb432 ], [ 0, %sw.bb421 ], [ %spec.select1049, %sw.bb406 ], [ %spec.select1046, %sw.bb388 ], [ %spec.select1054, %sw.bb370 ], [ 0, %sw.bb353 ], [ 0, %sw.bb344 ], [ 0, %sw.bb333 ], [ 0, %sw.bb325 ], [ 0, %sw.bb312 ], [ 0, %sw.bb275 ], [ %spec.select1039, %sw.bb262 ], [ 0, %sw.bb255 ], [ 0, %sw.bb248 ], [ %ret.2, %sw.epilog241 ], [ 0, %sw.bb196 ], [ 0, %sw.bb188 ], [ 0, %sw.bb174 ], [ 0, %sw.bb165 ], [ 0, %sw.bb156 ], [ 0, %sw.bb147 ], [ %spec.select1035, %sw.bb136 ], [ 0, %sw.bb125 ], [ 0, %sw.bb111 ], [ 0, %sw.bb102 ], [ 0, %sw.bb93 ], [ 0, %sw.bb85 ], [ %spec.select, %sw.bb76 ], [ 0, %sw.bb68 ], [ 0, %sw.bb58 ], [ 0, %sw.bb48 ], [ 0, %sw.bb40 ], [ 0, %sw.bb33 ], [ 0, %sw.bb23 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ], [ 0, %if.end.sw.epilog716.sink.split_crit_edge ], [ 0, %if.then217 ], [ 0, %sw.bb207.sw.epilog716.sink.split_crit_edge ], [ 0, %if.then230 ], [ 0, %sw.bb224.sw.epilog716.sink.split_crit_edge ], [ 0, %if.then702 ], [ 0, %sw.bb692.sw.epilog716.sink.split_crit_edge ]
  %333 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %.sink, ptr %pkt, align 4
  br label %sw.epilog716

sw.epilog716:                                     ; preds = %sw.epilog716.sink.split, %sw.bb286.sw.epilog716_crit_edge, %if.end.sw.epilog716_crit_edge, %if.end.sw.epilog716_crit_edge1055
  %ret.11 = phi i32 [ 0, %if.end.sw.epilog716_crit_edge ], [ 0, %if.end.sw.epilog716_crit_edge1055 ], [ -34, %sw.bb286.sw.epilog716_crit_edge ], [ %ret.11.ph, %sw.epilog716.sink.split ]
  br label %cleanup717

cleanup717:                                       ; preds = %sw.epilog716, %if.end.cleanup717_crit_edge, %entry.cleanup717_crit_edge
  %retval.0 = phi i32 [ %ret.11, %sw.epilog716 ], [ -22, %entry.cleanup717_crit_edge ], [ -22, %if.end.cleanup717_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @pkt_session_set_property_4xx(ptr noundef %pkt, ptr noundef %cookie, i32 noundef %ptype, ptr noundef %pdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pkt, null
  %tobool1.not = icmp eq ptr %cookie, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %pdata, null
  %or.cond96 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond96, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %pkt, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 69633, ptr %pkt_type, align 4
  %2 = ptrtoint ptr %cookie to i32
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %session_id, align 4
  %num_properties = getelementptr inbounds %struct.hfi_session_set_property_pkt, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_properties, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ptype, ptr %data, align 4
  %6 = zext i32 %ptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %ptype, label %if.end.i [
    i32 2101249, label %sw.bb
    i32 4117, label %sw.bb15
    i32 8194, label %sw.bb22
    i32 33574966, label %sw.bb29
    i32 16789506, label %sw.bb35
    i32 33574949, label %sw.bb48
    i32 33579015, label %if.end.cleanup_crit_edge
    i32 18874369, label %if.end.cleanup_crit_edge97
    i32 2101256, label %if.end.cleanup_crit_edge98
    i32 33574918, label %if.end.cleanup_crit_edge99
    i32 33574920, label %if.end.cleanup_crit_edge100
  ]

if.end.cleanup_crit_edge100:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge99:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge98:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge97:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %count_actual = getelementptr inbounds %struct.hfi_buffer_count_actual, ptr %pdata, i32 0, i32 1
  %7 = ptrtoint ptr %count_actual to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count_actual, align 4
  %count_actual9 = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %count_actual9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %count_actual9, align 4
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pdata, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %13 = load i32, ptr %count_actual, align 4
  %count_min_host = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 1
  %14 = ptrtoint ptr %count_min_host to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %count_min_host, align 4
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %pkt, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdata, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 24, ptr %pkt, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdata, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 24, ptr %pkt, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = call ptr @memcpy(ptr %arrayidx, ptr %pdata, i32 48)
  %25 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 68, ptr %pkt, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdata, align 4
  %and = and i32 %27, 255
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %arrayidx, align 4
  %29 = load i32, ptr %pdata, align 4
  %30 = lshr i32 %29, 2
  %shl = and i32 %30, 65280
  %or = or i32 %shl, %and
  store i32 %or, ptr %arrayidx, align 4
  %31 = load i32, ptr %pdata, align 4
  %32 = lshr i32 %31, 4
  %shl41 = and i32 %32, 16711680
  %or43 = or i32 %shl41, %or
  store i32 %or43, ptr %arrayidx, align 4
  %33 = load i32, ptr %pdata, align 4
  %conceal_color_10bit = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %conceal_color_10bit to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %conceal_color_10bit, align 4
  %35 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 28, ptr %pkt, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pdata, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 24, ptr %pkt, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %40 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 69633, ptr %pkt_type, align 4
  %41 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %2, ptr %session_id, align 4
  %42 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %num_properties, align 4
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ptype, ptr %data, align 4
  %44 = zext i32 %ptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %ptype, label %sw.default23.i [
    i32 16789505, label %sw.bb.i
    i32 33574925, label %sw.bb14.i
    i32 18886657, label %if.end.i.cleanup_crit_edge
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pdata, align 4
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx, align 4
  %enable.i = getelementptr inbounds %struct.hfi_multi_stream, ptr %pdata, i32 0, i32 1
  %48 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %enable.i, align 4
  %enable10.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %enable10.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %enable10.i, align 4
  %51 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 28, ptr %pkt, align 4
  br label %cleanup

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pdata, align 4
  %.off.i = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 5
  %spec.select.i = select i1 %switch.i, i32 0, i32 -22
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx, align 4
  %cir_mbs.i = getelementptr inbounds %struct.hfi_intra_refresh, ptr %pdata, i32 0, i32 3
  %55 = ptrtoint ptr %cir_mbs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cir_mbs.i, align 4
  %mbs.i = getelementptr %struct.hfi_session_set_property_pkt, ptr %pkt, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %mbs.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %mbs.i, align 4
  %58 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 28, ptr %pkt, align 4
  br label %cleanup

sw.default23.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call fastcc i32 @pkt_session_set_property_1x(ptr noundef nonnull %pkt, ptr noundef nonnull %cookie, i32 noundef %ptype, ptr noundef nonnull %pdata) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default23.i, %sw.bb14.i, %sw.bb.i, %if.end.i.cleanup_crit_edge, %sw.bb48, %sw.bb35, %sw.bb29, %sw.bb22, %sw.bb15, %sw.bb, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge97, %if.end.cleanup_crit_edge98, %if.end.cleanup_crit_edge99, %if.end.cleanup_crit_edge100, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge97 ], [ -524, %if.end.cleanup_crit_edge98 ], [ -524, %if.end.cleanup_crit_edge99 ], [ -524, %if.end.cleanup_crit_edge100 ], [ 0, %sw.bb48 ], [ 0, %sw.bb35 ], [ 0, %sw.bb29 ], [ 0, %sw.bb22 ], [ 0, %sw.bb15 ], [ 0, %sw.bb ], [ %call24.i, %sw.default23.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ %spec.select.i, %sw.bb14.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pkt_set_version(i32 noundef %version) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %version, ptr @hfi_ver, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @hfi_ver, !1, !"hfi_ver", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/hfi_cmds.c", i32 12, i32 25}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
