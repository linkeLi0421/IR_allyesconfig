; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/freesync/freesync.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/freesync/freesync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.core_freesync = type { %struct.mod_freesync, ptr }
%struct.mod_freesync = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.36, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.18 }
%union.anon.18 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.19 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.19 = type { i8 }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.fixed31_32 = type { i64 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.24, i32, i32, i32, i32 }
%struct.anon.24 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.25 }
%struct.anon.25 = type { i32 }
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
%struct.anon.36 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.crtc_position = type { i32, i32, i32 }
%struct.mod_vrr_params = type { i8, i8, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_adjust, %struct.mod_vrr_params_fixed_refresh, %struct.mod_vrr_params_btr }
%struct.mod_vrr_params_fixed_refresh = type { i8, i8, i8, i32, i32 }
%struct.mod_vrr_params_btr = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon.26, %union.large_integer, i8 }
%union.anon.26 = type { %struct.anon.28 }
%struct.anon.28 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.35 }
%struct.anon.35 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mod_freesync_create(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %dc, null
  br i1 %cmp1, label %fail_construct, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dc4 = getelementptr inbounds %struct.core_freesync, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dc4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dc, ptr %dc4, align 4
  br label %cleanup

fail_construct:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_construct, %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %fail_construct ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_freesync_destroy(ptr noundef %mod_freesync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mod_freesync, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %mod_freesync) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_freesync_calc_v_total_from_refresh(ptr nocapture noundef readonly %stream, i32 noundef %refresh_in_uhz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %refresh_in_uhz to i64
  %call = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv) #9
  %conv2 = and i64 %call, 4294967295
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %1, 10
  %conv3 = zext i32 %div to i64
  %mul = mul nuw nsw i64 %conv2, %conv3
  %2 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing, align 8
  %conv5 = zext i32 %3 to i64
  %call6 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %conv5) #9
  %call7 = tail call i64 @div64_u64(i64 noundef %call6, i64 noundef 1000000) #9
  %conv8 = trunc i64 %call7 to i32
  %v_total10 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %v_total10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v_total10, align 8
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %conv8)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mod_freesync_get_vmin_vmax(ptr nocapture noundef readnone %mod_freesync, ptr nocapture noundef readonly %stream, ptr nocapture noundef writeonly %vmin, ptr nocapture noundef writeonly %vmax) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adjust = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 6
  %0 = ptrtoint ptr %adjust to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjust, align 8
  %2 = ptrtoint ptr %vmin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vmin, align 4
  %v_total_max = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %v_total_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v_total_max, align 4
  %5 = ptrtoint ptr %vmax to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %vmax, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mod_freesync_get_v_position(ptr noundef readonly %mod_freesync, ptr noundef %stream, ptr nocapture noundef writeonly %nom_v_pos, ptr nocapture noundef writeonly %v_pos) local_unnamed_addr #0 align 64 {
entry:
  %stream.addr = alloca ptr, align 4
  %position = alloca %struct.crtc_position, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %stream, ptr %stream.addr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position) #9
  %1 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %position, align 4, !annotation !14
  %2 = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !14
  %4 = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !14
  %cmp = icmp eq ptr %mod_freesync, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dc = getelementptr inbounds %struct.core_freesync, ptr %mod_freesync, i32 0, i32 1
  %6 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc, align 4
  %call = call zeroext i1 @dc_stream_get_crtc_position(ptr noundef %7, ptr noundef nonnull %stream.addr, i32 noundef 1, ptr noundef nonnull %position, ptr noundef %4) #9
  br i1 %call, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %10 = ptrtoint ptr %nom_v_pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nom_v_pos, align 4
  %11 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %position, align 4
  %13 = ptrtoint ptr %v_pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %v_pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then1 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_stream_get_crtc_position(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_freesync_build_vrr_infopacket(ptr nocapture noundef readnone %mod_freesync, ptr nocapture noundef readonly %stream, ptr nocapture noundef readonly %vrr, i32 noundef %packet_type, i32 noundef %app_tf, ptr noundef %infopacket, i1 noundef zeroext %pack_sdp_v1_3) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %send_info_frame = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 1
  %0 = ptrtoint ptr %send_info_frame to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %send_info_frame, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.end

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end:                                           ; preds = %entry
  %2 = zext i32 %packet_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %packet_type, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %3 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %signal, align 4
  %flags = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 21
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %flags, align 4
  %6 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  %fast_transport_output_rate_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 20
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %cond.in = select i1 %tobool1.not, ptr %pix_clk_100hz, ptr %fast_transport_output_rate_100hz
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load i32, ptr %cond.in, align 8
  %8 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %4, label %sw.bb.build_vrr_infopacket_header_v3.exit.i_crit_edge [
    i32 4, label %if.then.i.i
    i32 32, label %sw.bb.if.then2.i.i_crit_edge
    i32 128, label %sw.bb.if.then2.i.i_crit_edge162
    i32 64, label %sw.bb.if.then2.i.i_crit_edge163
  ]

sw.bb.if.then2.i.i_crit_edge163:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

sw.bb.if.then2.i.i_crit_edge162:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

sw.bb.if.then2.i.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

sw.bb.build_vrr_infopacket_header_v3.exit.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_header_v3.exit.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %hb0.i.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %9 = ptrtoint ptr %hb0.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -125, ptr %hb0.i.i, align 1
  %hb1.i.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %10 = ptrtoint ptr %hb1.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %hb1.i.i, align 1
  %hb2.i.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %11 = ptrtoint ptr %hb2.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %hb2.i.i, align 1
  br label %build_vrr_infopacket_header_v3.exit.i

if.then2.i.i:                                     ; preds = %sw.bb.if.then2.i.i_crit_edge, %sw.bb.if.then2.i.i_crit_edge162, %sw.bb.if.then2.i.i_crit_edge163
  %hb03.i.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %12 = ptrtoint ptr %hb03.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %hb03.i.i, align 1
  %hb14.i.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %13 = ptrtoint ptr %hb14.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -125, ptr %hb14.i.i, align 1
  %hb25.i.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %14 = ptrtoint ptr %hb25.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 27, ptr %hb25.i.i, align 1
  %hb3.i.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 4
  %15 = ptrtoint ptr %hb3.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %hb3.i.i, align 1
  br label %build_vrr_infopacket_header_v3.exit.i

build_vrr_infopacket_header_v3.exit.i:            ; preds = %if.then2.i.i, %if.then.i.i, %sw.bb.build_vrr_infopacket_header_v3.exit.i_crit_edge
  %cmp.not37.i.i = phi i1 [ true, %sw.bb.build_vrr_infopacket_header_v3.exit.i_crit_edge ], [ false, %if.then.i.i ], [ false, %if.then2.i.i ]
  %payload_size.0.i = phi i32 [ 1, %sw.bb.build_vrr_infopacket_header_v3.exit.i_crit_edge ], [ 17, %if.then.i.i ], [ 28, %if.then2.i.i ]
  %arrayidx.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 26, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %state.i.i = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 2
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i.i, label %build_vrr_infopacket_header_v3.exit.i.if.end20.i.i_crit_edge, label %if.end.i.i

build_vrr_infopacket_header_v3.exit.i.if.end20.i.i_crit_edge: ; preds = %build_vrr_infopacket_header_v3.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.end.i.i:                                       ; preds = %build_vrr_infopacket_header_v3.exit.i
  %arrayidx6.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 6
  %21 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6.i.i, align 1
  %23 = or i8 %22, 1
  store i8 %23, ptr %arrayidx6.i.i, align 1
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i.i = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i)
  %switch.i.i = icmp ult i32 %.pr.i.i, 2
  br i1 %switch.i.i, label %if.end.i.i.if.end20.i.i_crit_edge, label %if.then14.i.i

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = or i8 %22, 3
  %26 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx6.i.i, align 1
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i.if.end20.i.i_crit_edge, %build_vrr_infopacket_header_v3.exit.i.if.end20.i.i_crit_edge
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i.i, align 4
  %.off.i.i = add i32 %28, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch130.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch130.i.i, label %if.then27.i.i, label %if.end20.i.i.if.end33.i.i_crit_edge

if.end20.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.then27.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx29.i.i, align 1
  %31 = or i8 %30, 4
  store i8 %31, ptr %arrayidx29.i.i, align 1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then27.i.i, %if.end20.i.i.if.end33.i.i_crit_edge
  %min_refresh_in_uhz.i.i = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 3
  %32 = ptrtoint ptr %min_refresh_in_uhz.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_refresh_in_uhz.i.i, align 4
  %add.i.i = add i32 %33, 500000
  %div.i.i = udiv i32 %add.i.i, 1000000
  %max_refresh_in_uhz.i.i = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 5
  %34 = ptrtoint ptr %max_refresh_in_uhz.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_refresh_in_uhz.i.i, align 4
  %add34.i.i = add i32 %35, 500000
  %div35.i.i = udiv i32 %add34.i.i, 1000000
  %fixed_refresh_in_uhz.i.i = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 7
  %36 = ptrtoint ptr %fixed_refresh_in_uhz.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fixed_refresh_in_uhz.i.i, align 4
  %add36.i.i = add i32 %37, 500000
  %div37.i.i = udiv i32 %add36.i.i, 1000000
  %38 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %39, label %cond.end53.i.i [
    i32 4, label %if.end33.i.i.build_vrr_infopacket_data_v3.exit.i_crit_edge
    i32 3, label %cond.true63.i.i
    i32 2, label %if.end33.i.i.cond.false64.i.i_crit_edge
  ]

if.end33.i.i.cond.false64.i.i_crit_edge:          ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false64.i.i

if.end33.i.i.build_vrr_infopacket_data_v3.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v3.exit.i

cond.end53.i.i:                                   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false64.i.i

cond.true63.i.i:                                  ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v3.exit.i

cond.false64.i.i:                                 ; preds = %cond.end53.i.i, %if.end33.i.i.cond.false64.i.i_crit_edge
  %cond54134.i.i = phi i32 [ %div35.i.i, %cond.end53.i.i ], [ %div.i.i, %if.end33.i.i.cond.false64.i.i_crit_edge ]
  br label %build_vrr_infopacket_data_v3.exit.i

build_vrr_infopacket_data_v3.exit.i:              ; preds = %cond.false64.i.i, %cond.true63.i.i, %if.end33.i.i.build_vrr_infopacket_data_v3.exit.i_crit_edge
  %cond54133.i.i = phi i32 [ %div.i.i, %cond.true63.i.i ], [ %cond54134.i.i, %cond.false64.i.i ], [ %div37.i.i, %if.end33.i.i.build_vrr_infopacket_data_v3.exit.i_crit_edge ]
  %cond68.i.i = phi i32 [ %div35.i.i, %cond.true63.i.i ], [ %div35.i.i, %cond.false64.i.i ], [ %div37.i.i, %if.end33.i.i.build_vrr_infopacket_data_v3.exit.i_crit_edge ]
  %conv69.i.i = trunc i32 %cond54133.i.i to i8
  %arrayidx71.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 7
  %41 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv69.i.i, ptr %arrayidx71.i.i, align 1
  %conv73.i.i = trunc i32 %cond68.i.i to i8
  %arrayidx75.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 8
  %42 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv73.i.i, ptr %arrayidx75.i.i, align 1
  %shr.i.i = lshr i32 %cond54133.i.i, 8
  %43 = trunc i32 %shr.i.i to i8
  %conv77.i.i = and i8 %43, 3
  %arrayidx79.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 11
  %44 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv77.i.i, ptr %arrayidx79.i.i, align 1
  %shr80.i.i = lshr i32 %cond68.i.i, 8
  %45 = trunc i32 %shr80.i.i to i8
  %conv82.i.i = and i8 %45, 3
  %arrayidx84.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 12
  %46 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv82.i.i, ptr %arrayidx84.i.i, align 1
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp86.i.i = icmp eq i32 %48, 4
  %conv89.i.i = zext i1 %cmp86.i.i to i8
  %arrayidx91.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 16
  %49 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv89.i.i, ptr %arrayidx91.i.i, align 1
  %arrayidx93.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 9
  %50 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx93.i.i, align 1
  %arrayidx95.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 10
  %51 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx95.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %app_tf)
  %cmp.not.i6.i = icmp eq i32 %app_tf, 0
  br i1 %cmp.not.i6.i, label %build_vrr_infopacket_data_v3.exit.i.build_vrr_infopacket_fs2_data.exit.i_crit_edge, label %if.then.i8.i

build_vrr_infopacket_data_v3.exit.i.build_vrr_infopacket_fs2_data.exit.i_crit_edge: ; preds = %build_vrr_infopacket_data_v3.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_fs2_data.exit.i

if.then.i8.i:                                     ; preds = %build_vrr_infopacket_data_v3.exit.i
  %arrayidx.i7.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 6
  %52 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i7.i, align 1
  %54 = or i8 %53, 8
  store i8 %54, ptr %arrayidx.i7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %app_tf)
  %cmp2.i.i = icmp eq i32 %app_tf, 7
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.then.i8.i.build_vrr_infopacket_fs2_data.exit.i_crit_edge

if.then.i8.i.build_vrr_infopacket_fs2_data.exit.i_crit_edge: ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_fs2_data.exit.i

if.then4.i.i:                                     ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 4, ptr %arrayidx93.i.i, align 1
  br label %build_vrr_infopacket_fs2_data.exit.i

build_vrr_infopacket_fs2_data.exit.i:             ; preds = %if.then4.i.i, %if.then.i8.i.build_vrr_infopacket_fs2_data.exit.i_crit_edge, %build_vrr_infopacket_data_v3.exit.i.build_vrr_infopacket_fs2_data.exit.i_crit_edge
  %conv8.i.i = select i1 %tobool1.not, i8 26, i8 -102
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv8.i.i, ptr %arrayidx.i.i, align 1
  %conv10.i.i = trunc i32 %cond to i8
  %arrayidx12.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 13
  %57 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv10.i.i, ptr %arrayidx12.i.i, align 1
  %shr.i11.i = lshr i32 %cond, 8
  %conv14.i.i = trunc i32 %shr.i11.i to i8
  %arrayidx16.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 14
  %58 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv14.i.i, ptr %arrayidx16.i.i, align 1
  %shr17.i.i = lshr i32 %cond, 16
  %conv19.i.i = trunc i32 %shr17.i.i to i8
  %arrayidx21.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 15
  %59 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv19.i.i, ptr %arrayidx21.i.i, align 1
  %hb0.i12.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %60 = ptrtoint ptr %hb0.i12.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hb0.i12.i, align 1
  %hb1.i13.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %62 = ptrtoint ptr %hb1.i13.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %hb1.i13.i, align 1
  %add5.i.i = add i8 %63, %61
  %hb2.i14.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %64 = ptrtoint ptr %hb2.i14.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hb2.i14.i, align 1
  %add9.i.i = add i8 %add5.i.i, %65
  %hb3.i15.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 4
  %66 = ptrtoint ptr %hb3.i15.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hb3.i15.i, align 1
  %add13.i.i = add i8 %add9.i.i, %67
  br i1 %cmp.not37.i.i, label %build_vrr_infopacket_fs2_data.exit.i.sw.epilog_crit_edge, label %for.body.i.preheader.i

build_vrr_infopacket_fs2_data.exit.i.sw.epilog_crit_edge: ; preds = %build_vrr_infopacket_fs2_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.preheader.i:                           ; preds = %build_vrr_infopacket_fs2_data.exit.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %payload_size.0.i, i32 2) #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %checksum.039.i.i = phi i8 [ %add18.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add13.i.i, %for.body.i.preheader.i ]
  %idx.038.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %for.body.i.preheader.i ]
  %arrayidx.i16.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 %idx.038.i.i
  %68 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i16.i, align 1
  %add18.i.i = add i8 %69, %checksum.039.i.i
  %inc.i.i = add nuw nsw i32 %idx.038.i.i, 1
  %exitcond.i = icmp eq i32 %inc.i.i, %umax.i
  br i1 %exitcond.i, label %for.body.i.i.sw.epilog_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.sw.epilog_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %signal11 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %70 = ptrtoint ptr %signal11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %signal11, align 4
  %freesync_on_desktop = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 25
  %72 = ptrtoint ptr %freesync_on_desktop to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %freesync_on_desktop, align 2, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool12.not = icmp eq i8 %73, 0
  %74 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %71, label %sw.bb10.build_vrr_infopacket_header_v2.exit.i_crit_edge [
    i32 4, label %if.then.i.i54
    i32 32, label %sw.bb10.if.then2.i.i59_crit_edge
    i32 128, label %sw.bb10.if.then2.i.i59_crit_edge164
    i32 64, label %sw.bb10.if.then2.i.i59_crit_edge165
  ]

sw.bb10.if.then2.i.i59_crit_edge165:              ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i59

sw.bb10.if.then2.i.i59_crit_edge164:              ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i59

sw.bb10.if.then2.i.i59_crit_edge:                 ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i59

sw.bb10.build_vrr_infopacket_header_v2.exit.i_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_header_v2.exit.i

if.then.i.i54:                                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %hb0.i.i51 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %75 = ptrtoint ptr %hb0.i.i51 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -125, ptr %hb0.i.i51, align 1
  %hb1.i.i52 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %76 = ptrtoint ptr %hb1.i.i52 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 2, ptr %hb1.i.i52, align 1
  %hb2.i.i53 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %77 = ptrtoint ptr %hb2.i.i53 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 9, ptr %hb2.i.i53, align 1
  br label %build_vrr_infopacket_header_v2.exit.i

if.then2.i.i59:                                   ; preds = %sw.bb10.if.then2.i.i59_crit_edge, %sw.bb10.if.then2.i.i59_crit_edge164, %sw.bb10.if.then2.i.i59_crit_edge165
  %hb03.i.i55 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %78 = ptrtoint ptr %hb03.i.i55 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %hb03.i.i55, align 1
  %hb14.i.i56 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %79 = ptrtoint ptr %hb14.i.i56 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -125, ptr %hb14.i.i56, align 1
  %hb25.i.i57 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %80 = ptrtoint ptr %hb25.i.i57 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 27, ptr %hb25.i.i57, align 1
  %hb3.i.i58 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 4
  %81 = ptrtoint ptr %hb3.i.i58 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 8, ptr %hb3.i.i58, align 1
  br label %build_vrr_infopacket_header_v2.exit.i

build_vrr_infopacket_header_v2.exit.i:            ; preds = %if.then2.i.i59, %if.then.i.i54, %sw.bb10.build_vrr_infopacket_header_v2.exit.i_crit_edge
  %cmp.not37.i.i60 = phi i1 [ false, %if.then.i.i54 ], [ false, %if.then2.i.i59 ], [ true, %sw.bb10.build_vrr_infopacket_header_v2.exit.i_crit_edge ]
  %payload_size.0.i61 = phi i32 [ 11, %if.then.i.i54 ], [ 28, %if.then2.i.i59 ], [ 1, %sw.bb10.build_vrr_infopacket_header_v2.exit.i_crit_edge ]
  %arrayidx.i.i62 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 26, ptr %arrayidx.i.i62, align 1
  %arrayidx2.i.i63 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 2
  %83 = ptrtoint ptr %arrayidx2.i.i63 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx2.i.i63, align 1
  %arrayidx4.i.i64 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %arrayidx4.i.i64 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx4.i.i64, align 1
  %state.i.i65 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 2
  %85 = ptrtoint ptr %state.i.i65 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state.i.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.not.i.i66 = icmp eq i32 %86, 0
  br i1 %cmp.not.i.i66, label %build_vrr_infopacket_header_v2.exit.i.build_vrr_infopacket_data_v1.exit.i_crit_edge, label %if.end.i.i70

build_vrr_infopacket_header_v2.exit.i.build_vrr_infopacket_data_v1.exit.i_crit_edge: ; preds = %build_vrr_infopacket_header_v2.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v1.exit.i

if.end.i.i70:                                     ; preds = %build_vrr_infopacket_header_v2.exit.i
  %arrayidx6.i.i67 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 6
  %87 = ptrtoint ptr %arrayidx6.i.i67 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx6.i.i67, align 1
  %89 = or i8 %88, 1
  store i8 %89, ptr %arrayidx6.i.i67, align 1
  %90 = ptrtoint ptr %state.i.i65 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr.i.i68 = load i32, ptr %state.i.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i68)
  %switch.i.i69 = icmp ult i32 %.pr.i.i68, 2
  br i1 %switch.i.i69, label %if.end.i.i70.if.end20.i.i72_crit_edge, label %if.then14.i.i71

if.end.i.i70.if.end20.i.i72_crit_edge:            ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i72

if.then14.i.i71:                                  ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  %91 = or i8 %88, 3
  %92 = ptrtoint ptr %arrayidx6.i.i67 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx6.i.i67, align 1
  %93 = ptrtoint ptr %state.i.i65 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr.i = load i32, ptr %state.i.i65, align 4
  br label %if.end20.i.i72

if.end20.i.i72:                                   ; preds = %if.then14.i.i71, %if.end.i.i70.if.end20.i.i72_crit_edge
  %94 = phi i32 [ %.pr.i, %if.then14.i.i71 ], [ %.pr.i.i68, %if.end.i.i70.if.end20.i.i72_crit_edge ]
  br i1 %tobool12.not, label %if.else.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end20.i.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %switch103.i.i = icmp ult i32 %94, 2
  br i1 %switch103.i.i, label %if.then21.i.i.build_vrr_infopacket_data_v1.exit.i_crit_edge, label %if.then21.i.i.if.end49.sink.split.i.i_crit_edge

if.then21.i.i.if.end49.sink.split.i.i_crit_edge:  ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.sink.split.i.i

if.then21.i.i.build_vrr_infopacket_data_v1.exit.i_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v1.exit.i

if.else.i.i:                                      ; preds = %if.end20.i.i72
  %.off.i.i73 = add i32 %94, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i73)
  %switch104.i.i = icmp ult i32 %.off.i.i73, 2
  br i1 %switch104.i.i, label %if.else.i.i.if.end49.sink.split.i.i_crit_edge, label %if.else.i.i.build_vrr_infopacket_data_v1.exit.i_crit_edge

if.else.i.i.build_vrr_infopacket_data_v1.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v1.exit.i

if.else.i.i.if.end49.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.sink.split.i.i

if.end49.sink.split.i.i:                          ; preds = %if.else.i.i.if.end49.sink.split.i.i_crit_edge, %if.then21.i.i.if.end49.sink.split.i.i_crit_edge
  %95 = ptrtoint ptr %arrayidx6.i.i67 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx6.i.i67, align 1
  %97 = or i8 %96, 4
  store i8 %97, ptr %arrayidx6.i.i67, align 1
  br label %build_vrr_infopacket_data_v1.exit.i

build_vrr_infopacket_data_v1.exit.i:              ; preds = %if.end49.sink.split.i.i, %if.else.i.i.build_vrr_infopacket_data_v1.exit.i_crit_edge, %if.then21.i.i.build_vrr_infopacket_data_v1.exit.i_crit_edge, %build_vrr_infopacket_header_v2.exit.i.build_vrr_infopacket_data_v1.exit.i_crit_edge
  %98 = ptrtoint ptr %state.i.i65 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state.i.i65, align 4
  %.off105.i.i = add i32 %99, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off105.i.i)
  %switch106.i.i = icmp ult i32 %.off105.i.i, 2
  %min_refresh_in_uhz.i.i74 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 3
  %max_refresh_in_uhz.i.i75 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 5
  %conv64.sink.in.in.in.in.i.i = select i1 %switch106.i.i, ptr %min_refresh_in_uhz.i.i74, ptr %max_refresh_in_uhz.i.i75
  %100 = ptrtoint ptr %conv64.sink.in.in.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %conv64.sink.in.in.in.i.i = load i32, ptr %conv64.sink.in.in.in.in.i.i, align 4
  %conv64.sink.in.in.i.i = add i32 %conv64.sink.in.in.in.i.i, 500000
  %conv64.sink.in.i.i = udiv i32 %conv64.sink.in.in.i.i, 1000000
  %conv64.sink.i.i = trunc i32 %conv64.sink.in.i.i to i8
  %101 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 7
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv64.sink.i.i, ptr %101, align 1
  %103 = ptrtoint ptr %max_refresh_in_uhz.i.i75 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_refresh_in_uhz.i.i75, align 4
  %add69.i.i = add i32 %104, 500000
  %div70.i.i = udiv i32 %add69.i.i, 1000000
  %conv71.i.i = trunc i32 %div70.i.i to i8
  %arrayidx73.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 8
  %105 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv71.i.i, ptr %arrayidx73.i.i, align 1
  %arrayidx75.i.i76 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 9
  %106 = ptrtoint ptr %arrayidx75.i.i76 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx75.i.i76, align 1
  %arrayidx77.i.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 10
  %107 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx77.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %app_tf)
  %cmp.not.i5.i = icmp eq i32 %app_tf, 0
  br i1 %cmp.not.i5.i, label %build_vrr_infopacket_data_v1.exit.i.build_vrr_infopacket_fs2_data.exit.i82_crit_edge, label %if.then.i7.i

build_vrr_infopacket_data_v1.exit.i.build_vrr_infopacket_fs2_data.exit.i82_crit_edge: ; preds = %build_vrr_infopacket_data_v1.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_fs2_data.exit.i82

if.then.i7.i:                                     ; preds = %build_vrr_infopacket_data_v1.exit.i
  %arrayidx.i6.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 6
  %108 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i6.i, align 1
  %110 = or i8 %109, 8
  store i8 %110, ptr %arrayidx.i6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %app_tf)
  %cmp2.i.i77 = icmp eq i32 %app_tf, 7
  br i1 %cmp2.i.i77, label %if.then4.i.i78, label %if.then.i7.i.build_vrr_infopacket_fs2_data.exit.i82_crit_edge

if.then.i7.i.build_vrr_infopacket_fs2_data.exit.i82_crit_edge: ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_fs2_data.exit.i82

if.then4.i.i78:                                   ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %arrayidx75.i.i76 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 4, ptr %arrayidx75.i.i76, align 1
  br label %build_vrr_infopacket_fs2_data.exit.i82

build_vrr_infopacket_fs2_data.exit.i82:           ; preds = %if.then4.i.i78, %if.then.i7.i.build_vrr_infopacket_fs2_data.exit.i82_crit_edge, %build_vrr_infopacket_data_v1.exit.i.build_vrr_infopacket_fs2_data.exit.i82_crit_edge
  %hb0.i9.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %112 = ptrtoint ptr %hb0.i9.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %hb0.i9.i, align 1
  %hb1.i10.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %114 = ptrtoint ptr %hb1.i10.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %hb1.i10.i, align 1
  %add5.i.i79 = add i8 %115, %113
  %hb2.i11.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %116 = ptrtoint ptr %hb2.i11.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %hb2.i11.i, align 1
  %add9.i.i80 = add i8 %add5.i.i79, %117
  %hb3.i12.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 4
  %118 = ptrtoint ptr %hb3.i12.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %hb3.i12.i, align 1
  %add13.i.i81 = add i8 %add9.i.i80, %119
  br i1 %cmp.not37.i.i60, label %build_vrr_infopacket_fs2_data.exit.i82.sw.epilog_crit_edge, label %for.body.i.preheader.i84

build_vrr_infopacket_fs2_data.exit.i82.sw.epilog_crit_edge: ; preds = %build_vrr_infopacket_fs2_data.exit.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.preheader.i84:                         ; preds = %build_vrr_infopacket_fs2_data.exit.i82
  %umax.i83 = tail call i32 @llvm.umax.i32(i32 %payload_size.0.i61, i32 2) #9
  br label %for.body.i.i90

for.body.i.i90:                                   ; preds = %for.body.i.i90.for.body.i.i90_crit_edge, %for.body.i.preheader.i84
  %checksum.039.i.i85 = phi i8 [ %add18.i.i87, %for.body.i.i90.for.body.i.i90_crit_edge ], [ %add13.i.i81, %for.body.i.preheader.i84 ]
  %idx.038.i.i86 = phi i32 [ %inc.i.i88, %for.body.i.i90.for.body.i.i90_crit_edge ], [ 1, %for.body.i.preheader.i84 ]
  %arrayidx.i13.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 %idx.038.i.i86
  %120 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i13.i, align 1
  %add18.i.i87 = add i8 %121, %checksum.039.i.i85
  %inc.i.i88 = add nuw nsw i32 %idx.038.i.i86, 1
  %exitcond.i89 = icmp eq i32 %inc.i.i88, %umax.i83
  br i1 %exitcond.i89, label %for.body.i.i90.sw.epilog_crit_edge, label %for.body.i.i90.for.body.i.i90_crit_edge

for.body.i.i90.for.body.i.i90_crit_edge:          ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i90

for.body.i.i90.sw.epilog_crit_edge:               ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %signal14 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %122 = ptrtoint ptr %signal14 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %signal14, align 4
  %freesync_on_desktop15 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 25
  %124 = ptrtoint ptr %freesync_on_desktop15 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %freesync_on_desktop15, align 2, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool16.not = icmp eq i8 %125, 0
  %126 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %123, label %sw.default.build_vrr_infopacket_header_v1.exit.i_crit_edge [
    i32 4, label %if.then.i.i97
    i32 32, label %sw.default.if.then2.i.i102_crit_edge
    i32 128, label %sw.default.if.then2.i.i102_crit_edge166
    i32 64, label %sw.default.if.then2.i.i102_crit_edge167
  ]

sw.default.if.then2.i.i102_crit_edge167:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i102

sw.default.if.then2.i.i102_crit_edge166:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i102

sw.default.if.then2.i.i102_crit_edge:             ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i102

sw.default.build_vrr_infopacket_header_v1.exit.i_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_header_v1.exit.i

if.then.i.i97:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %hb0.i.i94 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %127 = ptrtoint ptr %hb0.i.i94 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -125, ptr %hb0.i.i94, align 1
  %hb1.i.i95 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %128 = ptrtoint ptr %hb1.i.i95 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %hb1.i.i95, align 1
  %hb2.i.i96 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %129 = ptrtoint ptr %hb2.i.i96 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 8, ptr %hb2.i.i96, align 1
  br label %build_vrr_infopacket_header_v1.exit.i

if.then2.i.i102:                                  ; preds = %sw.default.if.then2.i.i102_crit_edge, %sw.default.if.then2.i.i102_crit_edge166, %sw.default.if.then2.i.i102_crit_edge167
  %hb03.i.i98 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %130 = ptrtoint ptr %hb03.i.i98 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %hb03.i.i98, align 1
  %hb14.i.i99 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %131 = ptrtoint ptr %hb14.i.i99 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -125, ptr %hb14.i.i99, align 1
  %hb25.i.i100 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %132 = ptrtoint ptr %hb25.i.i100 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 27, ptr %hb25.i.i100, align 1
  %hb3.i.i101 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 4
  %133 = ptrtoint ptr %hb3.i.i101 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 4, ptr %hb3.i.i101, align 1
  br label %build_vrr_infopacket_header_v1.exit.i

build_vrr_infopacket_header_v1.exit.i:            ; preds = %if.then2.i.i102, %if.then.i.i97, %sw.default.build_vrr_infopacket_header_v1.exit.i_crit_edge
  %cmp.not37.i.i103 = phi i1 [ false, %if.then.i.i97 ], [ false, %if.then2.i.i102 ], [ true, %sw.default.build_vrr_infopacket_header_v1.exit.i_crit_edge ]
  %payload_size.0.i104 = phi i32 [ 9, %if.then.i.i97 ], [ 28, %if.then2.i.i102 ], [ 1, %sw.default.build_vrr_infopacket_header_v1.exit.i_crit_edge ]
  %arrayidx.i.i105 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 1
  %134 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 26, ptr %arrayidx.i.i105, align 1
  %arrayidx2.i.i106 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 2
  %135 = ptrtoint ptr %arrayidx2.i.i106 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx2.i.i106, align 1
  %arrayidx4.i.i107 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 3
  %136 = ptrtoint ptr %arrayidx4.i.i107 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %arrayidx4.i.i107, align 1
  %state.i.i108 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 2
  %137 = ptrtoint ptr %state.i.i108 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %state.i.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.not.i.i109 = icmp eq i32 %138, 0
  br i1 %cmp.not.i.i109, label %build_vrr_infopacket_header_v1.exit.i.build_vrr_infopacket_data_v1.exit.i142_crit_edge, label %if.end.i.i113

build_vrr_infopacket_header_v1.exit.i.build_vrr_infopacket_data_v1.exit.i142_crit_edge: ; preds = %build_vrr_infopacket_header_v1.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v1.exit.i142

if.end.i.i113:                                    ; preds = %build_vrr_infopacket_header_v1.exit.i
  %arrayidx6.i.i110 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 6
  %139 = ptrtoint ptr %arrayidx6.i.i110 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx6.i.i110, align 1
  %141 = or i8 %140, 1
  store i8 %141, ptr %arrayidx6.i.i110, align 1
  %142 = ptrtoint ptr %state.i.i108 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pr.i.i111 = load i32, ptr %state.i.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i111)
  %switch.i.i112 = icmp ult i32 %.pr.i.i111, 2
  br i1 %switch.i.i112, label %if.end.i.i113.if.end20.i.i116_crit_edge, label %if.then14.i.i115

if.end.i.i113.if.end20.i.i116_crit_edge:          ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i116

if.then14.i.i115:                                 ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  %143 = or i8 %140, 3
  %144 = ptrtoint ptr %arrayidx6.i.i110 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx6.i.i110, align 1
  %145 = ptrtoint ptr %state.i.i108 to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr.i114 = load i32, ptr %state.i.i108, align 4
  br label %if.end20.i.i116

if.end20.i.i116:                                  ; preds = %if.then14.i.i115, %if.end.i.i113.if.end20.i.i116_crit_edge
  %146 = phi i32 [ %.pr.i114, %if.then14.i.i115 ], [ %.pr.i.i111, %if.end.i.i113.if.end20.i.i116_crit_edge ]
  br i1 %tobool16.not, label %if.else.i.i121, label %if.then21.i.i118

if.then21.i.i118:                                 ; preds = %if.end20.i.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %switch103.i.i117 = icmp ult i32 %146, 2
  br i1 %switch103.i.i117, label %if.then21.i.i118.build_vrr_infopacket_data_v1.exit.i142_crit_edge, label %if.then21.i.i118.if.end49.sink.split.i.i123_crit_edge

if.then21.i.i118.if.end49.sink.split.i.i123_crit_edge: ; preds = %if.then21.i.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.sink.split.i.i123

if.then21.i.i118.build_vrr_infopacket_data_v1.exit.i142_crit_edge: ; preds = %if.then21.i.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v1.exit.i142

if.else.i.i121:                                   ; preds = %if.end20.i.i116
  %.off.i.i119 = add i32 %146, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i119)
  %switch104.i.i120 = icmp ult i32 %.off.i.i119, 2
  br i1 %switch104.i.i120, label %if.else.i.i121.if.end49.sink.split.i.i123_crit_edge, label %if.else.i.i121.build_vrr_infopacket_data_v1.exit.i142_crit_edge

if.else.i.i121.build_vrr_infopacket_data_v1.exit.i142_crit_edge: ; preds = %if.else.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_data_v1.exit.i142

if.else.i.i121.if.end49.sink.split.i.i123_crit_edge: ; preds = %if.else.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.sink.split.i.i123

if.end49.sink.split.i.i123:                       ; preds = %if.else.i.i121.if.end49.sink.split.i.i123_crit_edge, %if.then21.i.i118.if.end49.sink.split.i.i123_crit_edge
  %147 = ptrtoint ptr %arrayidx6.i.i110 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx6.i.i110, align 1
  %149 = or i8 %148, 4
  store i8 %149, ptr %arrayidx6.i.i110, align 1
  br label %build_vrr_infopacket_data_v1.exit.i142

build_vrr_infopacket_data_v1.exit.i142:           ; preds = %if.end49.sink.split.i.i123, %if.else.i.i121.build_vrr_infopacket_data_v1.exit.i142_crit_edge, %if.then21.i.i118.build_vrr_infopacket_data_v1.exit.i142_crit_edge, %build_vrr_infopacket_header_v1.exit.i.build_vrr_infopacket_data_v1.exit.i142_crit_edge
  %150 = ptrtoint ptr %state.i.i108 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %state.i.i108, align 4
  %.off105.i.i124 = add i32 %151, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off105.i.i124)
  %switch106.i.i125 = icmp ult i32 %.off105.i.i124, 2
  %min_refresh_in_uhz.i.i126 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 3
  %max_refresh_in_uhz.i.i127 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 5
  %conv64.sink.in.in.in.in.i.i128 = select i1 %switch106.i.i125, ptr %min_refresh_in_uhz.i.i126, ptr %max_refresh_in_uhz.i.i127
  %152 = ptrtoint ptr %conv64.sink.in.in.in.in.i.i128 to i32
  call void @__asan_load4_noabort(i32 %152)
  %conv64.sink.in.in.in.i.i129 = load i32, ptr %conv64.sink.in.in.in.in.i.i128, align 4
  %conv64.sink.in.in.i.i130 = add i32 %conv64.sink.in.in.in.i.i129, 500000
  %conv64.sink.in.i.i131 = udiv i32 %conv64.sink.in.in.i.i130, 1000000
  %conv64.sink.i.i132 = trunc i32 %conv64.sink.in.i.i131 to i8
  %153 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 7
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv64.sink.i.i132, ptr %153, align 1
  %155 = ptrtoint ptr %max_refresh_in_uhz.i.i127 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %max_refresh_in_uhz.i.i127, align 4
  %add69.i.i133 = add i32 %156, 500000
  %div70.i.i134 = udiv i32 %add69.i.i133, 1000000
  %conv71.i.i135 = trunc i32 %div70.i.i134 to i8
  %arrayidx73.i.i136 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 8
  %157 = ptrtoint ptr %arrayidx73.i.i136 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv71.i.i135, ptr %arrayidx73.i.i136, align 1
  %arrayidx75.i.i137 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 9
  %158 = ptrtoint ptr %arrayidx75.i.i137 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %arrayidx75.i.i137, align 1
  %arrayidx77.i.i138 = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 10
  %159 = ptrtoint ptr %arrayidx77.i.i138 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %arrayidx77.i.i138, align 1
  %hb0.i4.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 1
  %160 = ptrtoint ptr %hb0.i4.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %hb0.i4.i, align 1
  %hb1.i5.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 2
  %162 = ptrtoint ptr %hb1.i5.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %hb1.i5.i, align 1
  %add5.i.i139 = add i8 %163, %161
  %hb2.i6.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %164 = ptrtoint ptr %hb2.i6.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %hb2.i6.i, align 1
  %add9.i.i140 = add i8 %add5.i.i139, %165
  %hb3.i7.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 4
  %166 = ptrtoint ptr %hb3.i7.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %hb3.i7.i, align 1
  %add13.i.i141 = add i8 %add9.i.i140, %167
  br i1 %cmp.not37.i.i103, label %build_vrr_infopacket_data_v1.exit.i142.sw.epilog_crit_edge, label %for.body.i.preheader.i144

build_vrr_infopacket_data_v1.exit.i142.sw.epilog_crit_edge: ; preds = %build_vrr_infopacket_data_v1.exit.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.preheader.i144:                        ; preds = %build_vrr_infopacket_data_v1.exit.i142
  %umax.i143 = tail call i32 @llvm.umax.i32(i32 %payload_size.0.i104, i32 2) #9
  br label %for.body.i.i150

for.body.i.i150:                                  ; preds = %for.body.i.i150.for.body.i.i150_crit_edge, %for.body.i.preheader.i144
  %checksum.039.i.i145 = phi i8 [ %add18.i.i147, %for.body.i.i150.for.body.i.i150_crit_edge ], [ %add13.i.i141, %for.body.i.preheader.i144 ]
  %idx.038.i.i146 = phi i32 [ %inc.i.i148, %for.body.i.i150.for.body.i.i150_crit_edge ], [ 1, %for.body.i.preheader.i144 ]
  %arrayidx.i8.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 %idx.038.i.i146
  %168 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i8.i, align 1
  %add18.i.i147 = add i8 %169, %checksum.039.i.i145
  %inc.i.i148 = add nuw nsw i32 %idx.038.i.i146, 1
  %exitcond.i149 = icmp eq i32 %inc.i.i148, %umax.i143
  br i1 %exitcond.i149, label %for.body.i.i150.sw.epilog_crit_edge, label %for.body.i.i150.for.body.i.i150_crit_edge

for.body.i.i150.for.body.i.i150_crit_edge:        ; preds = %for.body.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i150

for.body.i.i150.sw.epilog_crit_edge:              ; preds = %for.body.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i.i150.sw.epilog_crit_edge, %build_vrr_infopacket_data_v1.exit.i142.sw.epilog_crit_edge, %for.body.i.i90.sw.epilog_crit_edge, %build_vrr_infopacket_fs2_data.exit.i82.sw.epilog_crit_edge, %for.body.i.i.sw.epilog_crit_edge, %build_vrr_infopacket_fs2_data.exit.i.sw.epilog_crit_edge
  %checksum.0.lcssa.i.i151.sink = phi i8 [ %add13.i.i, %build_vrr_infopacket_fs2_data.exit.i.sw.epilog_crit_edge ], [ %add13.i.i81, %build_vrr_infopacket_fs2_data.exit.i82.sw.epilog_crit_edge ], [ %add13.i.i141, %build_vrr_infopacket_data_v1.exit.i142.sw.epilog_crit_edge ], [ %add18.i.i147, %for.body.i.i150.sw.epilog_crit_edge ], [ %add18.i.i, %for.body.i.i.sw.epilog_crit_edge ], [ %add18.i.i87, %for.body.i.i90.sw.epilog_crit_edge ]
  %sub.i.i152 = sub i8 0, %checksum.0.lcssa.i.i151.sink
  %sb22.i.i153 = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5
  %170 = ptrtoint ptr %sb22.i.i153 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %sub.i.i152, ptr %sb22.i.i153, align 1
  %171 = ptrtoint ptr %infopacket to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %infopacket, align 1
  br i1 %pack_sdp_v1_3, label %land.lhs.true, label %sw.epilog.if.end30_crit_edge

sw.epilog.if.end30_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true:                                    ; preds = %sw.epilog
  %signal19 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %172 = ptrtoint ptr %signal19 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %signal19, align 4
  %174 = zext i32 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %173, label %land.lhs.true.if.end30_crit_edge [
    i32 32, label %land.lhs.true.switch.early.test_crit_edge
    i32 128, label %land.lhs.true.switch.early.test_crit_edge168
    i32 64, label %land.lhs.true.switch.early.test_crit_edge169
  ]

land.lhs.true.switch.early.test_crit_edge169:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch.early.test

land.lhs.true.switch.early.test_crit_edge168:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch.early.test

land.lhs.true.switch.early.test_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch.early.test

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

switch.early.test:                                ; preds = %land.lhs.true.switch.early.test_crit_edge, %land.lhs.true.switch.early.test_crit_edge168, %land.lhs.true.switch.early.test_crit_edge169
  %175 = zext i32 %packet_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %packet_type, label %if.then29 [
    i32 4, label %switch.early.test.if.end30_crit_edge
    i32 0, label %switch.early.test.if.end30_crit_edge170
  ]

switch.early.test.if.end30_crit_edge170:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

switch.early.test.if.end30_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %switch.early.test
  %hb2.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 3
  %176 = ptrtoint ptr %hb2.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %hb2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %177)
  %cmp428.i = icmp ugt i8 %177, 1
  br i1 %cmp428.i, label %for.body.preheader.i, label %if.then29.build_vrr_infopacket_sdp_v1_3.exit_crit_edge

if.then29.build_vrr_infopacket_sdp_v1_3.exit_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_sdp_v1_3.exit

for.body.preheader.i:                             ; preds = %if.then29
  %178 = zext i8 %177 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ %178, %for.body.preheader.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %idx.029.i = phi i8 [ %177, %for.body.preheader.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %indvars.iv.i, -1
  %arrayidx.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 %sub.i
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i, align 1
  %arrayidx8.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 %indvars.iv.i
  %181 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %arrayidx8.i, align 1
  %dec.i = add i8 %idx.029.i, -1
  %cmp4.i = icmp ugt i8 %dec.i, 1
  br i1 %cmp4.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.build_vrr_infopacket_sdp_v1_3.exit_crit_edge

for.body.i.build_vrr_infopacket_sdp_v1_3.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_vrr_infopacket_sdp_v1_3.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

build_vrr_infopacket_sdp_v1_3.exit:               ; preds = %for.body.i.build_vrr_infopacket_sdp_v1_3.exit_crit_edge, %if.then29.build_vrr_infopacket_sdp_v1_3.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %packet_type)
  %cmp.i = icmp eq i32 %packet_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %packet_type)
  %cmp1.i = icmp eq i32 %packet_type, 3
  %phi.cast.i = select i1 %cmp1.i, i8 16, i8 9
  %cond2.i = select i1 %cmp.i, i8 8, i8 %phi.cast.i
  %sb9.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5
  %arrayidx10.i = getelementptr %struct.dc_info_packet, ptr %infopacket, i32 0, i32 5, i32 1
  %182 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %cond2.i, ptr %arrayidx10.i, align 1
  %hb3.i = getelementptr inbounds %struct.dc_info_packet, ptr %infopacket, i32 0, i32 4
  %183 = ptrtoint ptr %hb3.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %hb3.i, align 1
  %185 = lshr i8 %184, 2
  %186 = ptrtoint ptr %sb9.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %sb9.i, align 1
  store i8 76, ptr %hb3.i, align 1
  %187 = ptrtoint ptr %hb2.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 29, ptr %hb2.i, align 1
  br label %if.end30

if.end30:                                         ; preds = %build_vrr_infopacket_sdp_v1_3.exit, %switch.early.test.if.end30_crit_edge, %switch.early.test.if.end30_crit_edge170, %land.lhs.true.if.end30_crit_edge, %sw.epilog.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_freesync_build_vrr_params(ptr noundef readnone %mod_freesync, ptr nocapture noundef readonly %stream, ptr nocapture noundef readonly %in_config, ptr noundef %in_out_vrr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mod_freesync, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %timing.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing.i, align 8
  %v_total.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_total.i, align 8
  %mul.i = mul i32 %3, %1
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %4 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pix_clk_100hz.i, align 8
  %conv.i = zext i32 %5 to i64
  %mul3.i = mul nuw nsw i64 %conv.i, 100000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul3.i)
  %cmp164.i.i.i = icmp ult i64 %mul3.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !16

if.then168.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i = trunc i64 %mul3.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %mod_freesync_calc_nominal_field_rate.exit

if.else174.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %mul3.i) #13, !srcloc !17
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %6, 1
  br label %mod_freesync_calc_nominal_field_rate.exit

mod_freesync_calc_nominal_field_rate.exit:        ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %min_refresh_in_uhz1 = getelementptr inbounds %struct.mod_freesync_config, ptr %in_config, i32 0, i32 4
  %7 = ptrtoint ptr %min_refresh_in_uhz1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_refresh_in_uhz1, align 4
  %conv = zext i32 %8 to i64
  %max_refresh_in_uhz2 = getelementptr inbounds %struct.mod_freesync_config, ptr %in_config, i32 0, i32 5
  %9 = ptrtoint ptr %max_refresh_in_uhz2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_refresh_in_uhz2, align 4
  %conv3 = zext i32 %10 to i64
  %11 = tail call i64 @llvm.umin.i64(i64 %dividend.addr.0.i.i.i, i64 %conv3)
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv)
  %cmp8 = icmp ult i64 %11, %conv
  %extract.t313 = trunc i64 %11 to i32
  %min_refresh_in_uhz.0.off0 = select i1 %cmp8, i32 %extract.t313, i32 %8
  %add = add i64 %dividend.addr.0.i.i.i, 50000
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %add, i32 0) #13, !srcloc !18
  %asmresult.i.i.i = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %12, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %add, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !19
  %asmresult10.i.i.i = extractvalue { i64, i32 } %13, 0
  %div158.i.i344 = lshr i64 %asmresult10.i.i.i, 16
  %mul15 = shl i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul15)
  %cmp16 = icmp eq i32 %10, %mul15
  %mul = mul i64 %div158.i.i344, 100000
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv3)
  %cmp20 = icmp eq i64 %mul, %conv3
  %or.cond = select i1 %cmp16, i1 %cmp20, i1 false
  %shr.i.i = lshr i64 %dividend.addr.0.i.i.i, 1
  %extract.t = trunc i64 %shr.i.i to i32
  %min_refresh_in_uhz.1.off0 = select i1 %or.cond, i32 %extract.t, i32 %min_refresh_in_uhz.0.off0
  %state.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 2
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  %16 = ptrtoint ptr %in_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not.i = icmp eq i32 %15, %17
  br i1 %cmp.not.i, label %if.else.i, label %mod_freesync_calc_nominal_field_rate.exit.if.end29_crit_edge

mod_freesync_calc_nominal_field_rate.exit.if.end29_crit_edge: ; preds = %mod_freesync_calc_nominal_field_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else.i:                                        ; preds = %mod_freesync_calc_nominal_field_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp3.i = icmp eq i32 %15, 4
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.else.i.if.else6.i_crit_edge

if.else.i.if.else6.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else6.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %target_refresh_in_uhz.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 3
  %18 = ptrtoint ptr %target_refresh_in_uhz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target_refresh_in_uhz.i, align 4
  %fixed_refresh_in_uhz.i = getelementptr inbounds %struct.mod_freesync_config, ptr %in_config, i32 0, i32 6
  %20 = ptrtoint ptr %fixed_refresh_in_uhz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fixed_refresh_in_uhz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp4.not.i = icmp eq i32 %19, %21
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.else6.i_crit_edge, label %land.lhs.true.i.if.end29_crit_edge

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true.i.if.else6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else6.i

if.else6.i:                                       ; preds = %land.lhs.true.i.if.else6.i_crit_edge, %if.else.i.if.else6.i_crit_edge
  %min_refresh_in_uhz7.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 3
  %22 = ptrtoint ptr %min_refresh_in_uhz7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_refresh_in_uhz7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %min_refresh_in_uhz.1.off0)
  %cmp8.not.i = icmp eq i32 %23, %min_refresh_in_uhz.1.off0
  br i1 %cmp8.not.i, label %vrr_settings_require_update.exit, label %if.else6.i.if.end29_crit_edge

if.else6.i.if.end29_crit_edge:                    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

vrr_settings_require_update.exit:                 ; preds = %if.else6.i
  %max_refresh_in_uhz11.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 5
  %24 = ptrtoint ptr %max_refresh_in_uhz11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_refresh_in_uhz11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %extract.t313)
  %cmp12.not.i.not = icmp eq i32 %25, %extract.t313
  br i1 %cmp12.not.i.not, label %vrr_settings_require_update.exit.cleanup_crit_edge, label %vrr_settings_require_update.exit.if.end29_crit_edge

vrr_settings_require_update.exit.if.end29_crit_edge: ; preds = %vrr_settings_require_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

vrr_settings_require_update.exit.cleanup_crit_edge: ; preds = %vrr_settings_require_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %vrr_settings_require_update.exit.if.end29_crit_edge, %if.else6.i.if.end29_crit_edge, %land.lhs.true.i.if.end29_crit_edge, %mod_freesync_calc_nominal_field_rate.exit.if.end29_crit_edge
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %17, ptr %state.i, align 4
  %vsif_supported = getelementptr inbounds %struct.mod_freesync_config, ptr %in_config, i32 0, i32 1
  %27 = ptrtoint ptr %vsif_supported to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vsif_supported, align 4, !range !15
  %send_info_frame = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 1
  %29 = ptrtoint ptr %send_info_frame to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %send_info_frame, align 1
  %30 = ptrtoint ptr %in_config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %in_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp32 = icmp eq i32 %31, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state.i, align 4
  %33 = ptrtoint ptr %in_out_vrr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %in_out_vrr, align 4
  %34 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v_total.i, align 8
  %adjust = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %36 = ptrtoint ptr %adjust to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %adjust, align 4
  %37 = load i32, ptr %v_total.i, align 8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end29
  %min_refresh_in_uhz40 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 3
  %38 = ptrtoint ptr %min_refresh_in_uhz40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %min_refresh_in_uhz.1.off0, ptr %min_refresh_in_uhz40, align 4
  %conv.i316 = zext i32 %min_refresh_in_uhz.1.off0 to i64
  %call.i = tail call i64 @div64_u64(i64 noundef 1000000000000, i64 noundef %conv.i316) #9
  %conv1.i = trunc i64 %call.i to i32
  %max_duration_in_us = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 4
  %39 = ptrtoint ptr %max_duration_in_us to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv1.i, ptr %max_duration_in_us, align 4
  %max_refresh_in_uhz44 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 5
  %40 = ptrtoint ptr %max_refresh_in_uhz44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %extract.t313, ptr %max_refresh_in_uhz44, align 4
  %call.i318 = tail call i64 @div64_u64(i64 noundef 1000000000000, i64 noundef %11) #9
  %conv1.i319 = trunc i64 %call.i318 to i32
  %min_duration_in_us = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 6
  %41 = ptrtoint ptr %min_duration_in_us to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv1.i319, ptr %min_duration_in_us, align 4
  %42 = ptrtoint ptr %in_config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp48 = icmp eq i32 %43, 4
  br i1 %cmp48, label %if.then50, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %fixed_refresh_in_uhz = getelementptr inbounds %struct.mod_freesync_config, ptr %in_config, i32 0, i32 6
  %44 = ptrtoint ptr %fixed_refresh_in_uhz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fixed_refresh_in_uhz, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else.if.end54_crit_edge
  %.sink = phi i32 [ %45, %if.then50 ], [ 0, %if.else.if.end54_crit_edge ]
  %46 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 7
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %46, align 4
  %48 = ptrtoint ptr %max_refresh_in_uhz44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_refresh_in_uhz44, align 4
  %add56 = add i32 %49, 500000
  %conv57 = zext i32 %add56 to i64
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv57) #13, !srcloc !20
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv57, i64 %50, i32 0) #13, !srcloc !19
  %asmresult10.i.i.i320 = extractvalue { i64, i32 } %51, 0
  %div158.i.i321345 = lshr i64 %asmresult10.i.i.i320, 18
  %52 = ptrtoint ptr %min_refresh_in_uhz40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %min_refresh_in_uhz40, align 4
  %add60 = add i32 %53, 500000
  %conv61 = zext i32 %add60 to i64
  %54 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv61) #13, !srcloc !20
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv61, i64 %54, i32 0) #13, !srcloc !19
  %asmresult10.i.i.i322 = extractvalue { i64, i32 } %55, 0
  %div158.i.i323346 = lshr i64 %asmresult10.i.i.i322, 18
  %sub = sub nsw i64 %div158.i.i321345, %div158.i.i323346
  %conv63 = trunc i64 %sub to i32
  %56 = ptrtoint ptr %in_out_vrr to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %in_out_vrr, align 4
  %ramping = getelementptr inbounds %struct.mod_freesync_config, ptr %in_config, i32 0, i32 2
  %57 = ptrtoint ptr %ramping to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ramping, align 1, !range !15
  %fixed = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9
  %ramping_active = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %ramping_active to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ramping_active, align 1
  %btr = getelementptr inbounds %struct.mod_freesync_config, ptr %in_config, i32 0, i32 3
  %60 = ptrtoint ptr %btr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %btr, align 2, !range !15
  %btr69 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10
  %62 = ptrtoint ptr %btr69 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %btr69, align 4
  %mul73 = shl i32 %53, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %mul73)
  %cmp74 = icmp ult i32 %49, %mul73
  br i1 %cmp74, label %if.then76, label %if.else79

if.then76:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %btr69 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %btr69, align 4
  br label %if.end93

if.else79:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %max_duration_in_us to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_duration_in_us, align 4
  %mul82.neg = mul i32 %conv1.i319, -2
  %sub83 = add i32 %65, %mul82.neg
  %margin_in_us = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 6
  %66 = tail call i32 @llvm.umin.i32(i32 %sub83, i32 2500)
  %67 = ptrtoint ptr %margin_in_us to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %margin_in_us, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else79, %if.then76
  %btr_active = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 1
  %68 = ptrtoint ptr %btr_active to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %btr_active, align 1
  %inserted_duration_in_us = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 3
  %69 = ptrtoint ptr %inserted_duration_in_us to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %inserted_duration_in_us, align 4
  %frames_to_insert = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 4
  %70 = ptrtoint ptr %frames_to_insert to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %frames_to_insert, align 4
  %frame_counter = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 5
  %71 = ptrtoint ptr %frame_counter to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %frame_counter, align 4
  %72 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %fixed, align 4
  %target_refresh_in_uhz = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 3
  %73 = ptrtoint ptr %target_refresh_in_uhz to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %target_refresh_in_uhz, align 4
  %74 = ptrtoint ptr %max_duration_in_us to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_duration_in_us, align 4
  %add102 = add i32 %75, %conv1.i319
  %div315 = lshr i32 %add102, 1
  %mid_point_in_us = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 2
  %76 = ptrtoint ptr %mid_point_in_us to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div315, ptr %mid_point_in_us, align 4
  %77 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %78, label %if.end93.if.else191_crit_edge [
    i32 0, label %if.then107
    i32 1, label %if.then120
    i32 2, label %if.then133
    i32 3, label %land.lhs.true146
    i32 4, label %if.then162
  ]

if.end93.if.else191_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else191

if.then107:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %v_total.i, align 8
  %adjust110 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %82 = ptrtoint ptr %adjust110 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %adjust110, align 4
  %83 = load i32, ptr %v_total.i, align 8
  br label %cleanup.sink.split

if.then120:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %v_total.i, align 8
  %adjust123 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %86 = ptrtoint ptr %adjust123 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %adjust123, align 4
  %87 = load i32, ptr %v_total.i, align 8
  br label %cleanup.sink.split

if.then133:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %v_total.i, align 8
  %adjust136 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %90 = ptrtoint ptr %adjust136 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %adjust136, align 4
  %91 = load i32, ptr %v_total.i, align 8
  br label %cleanup.sink.split

land.lhs.true146:                                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv63)
  %cmp147 = icmp ugt i32 %conv63, 9
  br i1 %cmp147, label %if.then149, label %land.lhs.true146.if.else191_crit_edge

land.lhs.true146.if.else191_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else191

if.then149:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i324 = zext i32 %49 to i64
  %call.i325 = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i324) #9
  %conv2.i = and i64 %call.i325, 4294967295
  %92 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pix_clk_100hz.i, align 8
  %div.i = udiv i32 %93, 10
  %conv3.i = zext i32 %div.i to i64
  %mul.i328 = mul nuw nsw i64 %conv2.i, %conv3.i
  %94 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %timing.i, align 8
  %conv5.i = zext i32 %95 to i64
  %call6.i = tail call i64 @div64_u64(i64 noundef %mul.i328, i64 noundef %conv5.i) #9
  %call7.i = tail call i64 @div64_u64(i64 noundef %call6.i, i64 noundef 1000000) #9
  %conv8.i = trunc i64 %call7.i to i32
  %96 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %v_total.i, align 8
  %98 = tail call i32 @llvm.umax.i32(i32 %97, i32 %conv8.i) #9
  %adjust152 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %99 = ptrtoint ptr %adjust152 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %adjust152, align 4
  %100 = ptrtoint ptr %min_refresh_in_uhz40 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %min_refresh_in_uhz40, align 4
  %conv.i329 = zext i32 %101 to i64
  %call.i330 = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i329) #9
  %conv2.i331 = and i64 %call.i330, 4294967295
  %102 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pix_clk_100hz.i, align 8
  %div.i334 = udiv i32 %103, 10
  %conv3.i335 = zext i32 %div.i334 to i64
  %mul.i336 = mul nuw nsw i64 %conv2.i331, %conv3.i335
  %104 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %timing.i, align 8
  %conv5.i337 = zext i32 %105 to i64
  %call6.i338 = tail call i64 @div64_u64(i64 noundef %mul.i336, i64 noundef %conv5.i337) #9
  %call7.i339 = tail call i64 @div64_u64(i64 noundef %call6.i338, i64 noundef 1000000) #9
  %conv8.i340 = trunc i64 %call7.i339 to i32
  %106 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %v_total.i, align 8
  %108 = tail call i32 @llvm.umax.i32(i32 %107, i32 %conv8.i340) #9
  br label %cleanup.sink.split

if.then162:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %46, align 4
  %111 = ptrtoint ptr %target_refresh_in_uhz to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %target_refresh_in_uhz, align 4
  %112 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %fixed, align 4
  %call183 = tail call i32 @mod_freesync_calc_v_total_from_refresh(ptr noundef %stream, i32 noundef %110)
  %adjust184 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %113 = ptrtoint ptr %adjust184 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call183, ptr %adjust184, align 4
  br label %cleanup.sink.split

if.else191:                                       ; preds = %land.lhs.true146.if.else191_crit_edge, %if.end93.if.else191_crit_edge
  %114 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %state.i, align 4
  %115 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %v_total.i, align 8
  %adjust195 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %117 = ptrtoint ptr %adjust195 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %adjust195, align 4
  %118 = load i32, ptr %v_total.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else191, %if.then162, %if.then149, %if.then133, %if.then120, %if.then107, %if.then34
  %.sink347 = phi i32 [ %83, %if.then107 ], [ %91, %if.then133 ], [ %118, %if.else191 ], [ %call183, %if.then162 ], [ %108, %if.then149 ], [ %87, %if.then120 ], [ %37, %if.then34 ]
  %v_total_max115 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8, i32 1
  %119 = ptrtoint ptr %v_total_max115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink347, ptr %v_total_max115, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %vrr_settings_require_update.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mod_freesync_calc_nominal_field_rate(ptr nocapture noundef readonly %stream) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 8
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_total, align 8
  %mul = mul i32 %3, %1
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %4 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pix_clk_100hz, align 8
  %conv = zext i32 %5 to i64
  %mul3 = mul nuw nsw i64 %conv, 100000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul3)
  %cmp164.i.i = icmp ult i64 %mul3, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !16

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %mul3 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %mul3) #13, !srcloc !17
  %asmresult1.i.i.i = extractvalue { i64, i64 } %6, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  ret i64 %dividend.addr.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_freesync_handle_preflip(ptr noundef readnone %mod_freesync, ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %stream, i32 noundef %curr_time_stamp_in_us, ptr noundef %in_out_vrr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mod_freesync, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %in_out_vrr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_out_vrr, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %if.then2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  %prev_update_time_in_us = getelementptr inbounds %struct.dc_plane_state, ptr %plane, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %prev_update_time_in_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prev_update_time_in_us, align 4
  %sub = sub i32 %curr_time_stamp_in_us, %5
  %btr = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10
  %6 = ptrtoint ptr %btr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %btr, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  %max_duration_in_us.i39 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 4
  %8 = ptrtoint ptr %max_duration_in_us.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_duration_in_us.i39, align 4
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then2
  %margin_in_us.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 6
  %10 = ptrtoint ptr %margin_in_us.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %margin_in_us.i, align 4
  %sub.i = sub i32 %9, %11
  %div1.i = lshr i32 %11, 1
  %add.i = add i32 %div1.i, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i)
  %cmp.i = icmp ult i32 %add.i, %sub.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then16
  %btr_active.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %btr_active.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %btr_active.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i.if.end22.i_crit_edge, label %if.then4.i

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %btr_active.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %btr_active.i, align 1
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then16
  %add11.i = add i32 %sub.i, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %sub)
  %cmp12.i = icmp ult i32 %add11.i, %sub
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i.if.end22.i_crit_edge

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.else.i
  %btr_active15.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %btr_active15.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %btr_active15.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not.i = icmp eq i8 %16, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.then13.i.if.end22.i_crit_edge

if.then13.i.if.end22.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %btr_active15.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %btr_active15.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.then13.i.if.end22.i_crit_edge, %if.else.i.if.end22.i_crit_edge, %if.then4.i, %if.then.i.if.end22.i_crit_edge
  %btr_active24.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %btr_active24.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %btr_active24.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool25.not.i = icmp eq i8 %19, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else34.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %inserted_duration_in_us.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 3
  %20 = ptrtoint ptr %inserted_duration_in_us.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %inserted_duration_in_us.i, align 4
  %frames_to_insert29.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 4
  %21 = ptrtoint ptr %frames_to_insert29.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %frames_to_insert29.i, align 4
  %frame_counter31.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 5
  %22 = ptrtoint ptr %frame_counter31.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %frame_counter31.i, align 4
  %max_refresh_in_uhz.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 5
  %23 = ptrtoint ptr %max_refresh_in_uhz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_refresh_in_uhz.i, align 4
  %conv.i.i = zext i32 %24 to i64
  %call.i.i = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i.i) #9
  %conv2.i.i = and i64 %call.i.i, 4294967295
  %timing.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %pix_clk_100hz.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %25 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pix_clk_100hz.i.i, align 8
  %div.i.i = udiv i32 %26, 10
  %conv3.i.i = zext i32 %div.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv2.i.i, %conv3.i.i
  %27 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timing.i.i, align 8
  %conv5.i.i = zext i32 %28 to i64
  %call6.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %conv5.i.i) #9
  %call7.i.i = tail call i64 @div64_u64(i64 noundef %call6.i.i, i64 noundef 1000000) #9
  %conv8.i.i = trunc i64 %call7.i.i to i32
  %v_total10.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %v_total10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v_total10.i.i, align 8
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 %conv8.i.i) #9
  %adjust.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %32 = ptrtoint ptr %adjust.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %adjust.i, align 4
  %min_refresh_in_uhz.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 3
  %33 = ptrtoint ptr %min_refresh_in_uhz.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %min_refresh_in_uhz.i, align 4
  %conv.i3.i = zext i32 %34 to i64
  %call.i4.i = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i3.i) #9
  %conv2.i5.i = and i64 %call.i4.i, 4294967295
  %35 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pix_clk_100hz.i.i, align 8
  %div.i8.i = udiv i32 %36, 10
  %conv3.i9.i = zext i32 %div.i8.i to i64
  %mul.i10.i = mul nuw nsw i64 %conv2.i5.i, %conv3.i9.i
  %37 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timing.i.i, align 8
  %conv5.i11.i = zext i32 %38 to i64
  %call6.i12.i = tail call i64 @div64_u64(i64 noundef %mul.i10.i, i64 noundef %conv5.i11.i) #9
  %call7.i13.i = tail call i64 @div64_u64(i64 noundef %call6.i12.i, i64 noundef 1000000) #9
  %conv8.i14.i = trunc i64 %call7.i13.i to i32
  %39 = ptrtoint ptr %v_total10.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v_total10.i.i, align 8
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %conv8.i14.i) #9
  %v_total_max.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %v_total_max.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %v_total_max.i, align 4
  br label %cleanup

if.else34.i:                                      ; preds = %if.end22.i
  %mid_point_in_us.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 2
  %43 = ptrtoint ptr %mid_point_in_us.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mid_point_in_us.i, align 4
  %add36.i = add i32 %sub, -1
  %sub37.i = add i32 %add36.i, %44
  %div40.i = udiv i32 %sub37.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %sub37.i)
  %cmp41.not.i = icmp ugt i32 %44, %sub37.i
  br i1 %cmp41.not.i, label %if.else34.i.if.end53.i_crit_edge, label %if.then42.i

if.else34.i.if.end53.i_crit_edge:                 ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then42.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #11
  %div43.i = udiv i32 %sub, %div40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %div43.i)
  %cmp46.i = icmp ugt i32 %44, %div43.i
  %sub49.i = sub i32 %44, %div43.i
  %sub52.i = sub i32 %div43.i, %44
  %cond.i = select i1 %cmp46.i, i32 %sub49.i, i32 %sub52.i
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then42.i, %if.else34.i.if.end53.i_crit_edge
  %delta_from_mid_point_in_us_1.0.i = phi i32 [ %cond.i, %if.then42.i ], [ -1, %if.else34.i.if.end53.i_crit_edge ]
  %div56.i = udiv i32 %sub, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %sub)
  %cmp57.not.i = icmp ugt i32 %44, %sub
  br i1 %cmp57.not.i, label %if.end53.i.if.end73.i_crit_edge, label %if.then58.i

if.end53.i.if.end73.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %div59.i = udiv i32 %sub, %div56.i
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %div59.i)
  %cmp62.i = icmp ugt i32 %44, %div59.i
  %sub66.i = sub i32 %44, %div59.i
  %sub70.i = sub i32 %div59.i, %44
  %cond72.i = select i1 %cmp62.i, i32 %sub66.i, i32 %sub70.i
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then58.i, %if.end53.i.if.end73.i_crit_edge
  %delta_from_mid_point_in_us_2.0.i = phi i32 [ %cond72.i, %if.then58.i ], [ -1, %if.end53.i.if.end73.i_crit_edge ]
  %div74.i = udiv i32 %sub, %div40.i
  %min_duration_in_us.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 6
  %45 = ptrtoint ptr %min_duration_in_us.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_duration_in_us.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div74.i, i32 %46)
  %cmp75.i = icmp ult i32 %div74.i, %46
  br i1 %cmp75.i, label %if.end73.i.if.end86.i_crit_edge, label %if.else77.i

if.end73.i.if.end86.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.else77.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div56.i)
  %cmp78.i = icmp ult i32 %div56.i, 2
  br i1 %cmp78.i, label %if.else77.i.if.end86.i_crit_edge, label %if.else80.i

if.else77.i.if.end86.i_crit_edge:                 ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.else80.i:                                      ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %delta_from_mid_point_in_us_1.0.i, i32 %delta_from_mid_point_in_us_2.0.i)
  %cmp81.i = icmp ult i32 %delta_from_mid_point_in_us_1.0.i, %delta_from_mid_point_in_us_2.0.i
  %div40.div56.i = select i1 %cmp81.i, i32 %div40.i, i32 %div56.i
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.else80.i, %if.else77.i.if.end86.i_crit_edge, %if.end73.i.if.end86.i_crit_edge
  %frames_to_insert.0.i = phi i32 [ %div56.i, %if.end73.i.if.end86.i_crit_edge ], [ %div40.i, %if.else77.i.if.end86.i_crit_edge ], [ %div40.div56.i, %if.else80.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %delta_from_mid_point_in_us_1.0.i, i32 %delta_from_mid_point_in_us_2.0.i)
  %cmp87.i = icmp ult i32 %delta_from_mid_point_in_us_1.0.i, %delta_from_mid_point_in_us_2.0.i
  %sub89.i = sub i32 %delta_from_mid_point_in_us_2.0.i, %delta_from_mid_point_in_us_1.0.i
  %sub91.i = sub i32 %delta_from_mid_point_in_us_1.0.i, %delta_from_mid_point_in_us_2.0.i
  %delta_from_mid_point_delta_in_us.0.i = select i1 %cmp87.i, i32 %sub89.i, i32 %sub91.i
  %frames_to_insert94.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 4
  %47 = ptrtoint ptr %frames_to_insert94.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frames_to_insert94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp95.not.i = icmp ne i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %delta_from_mid_point_delta_in_us.0.i)
  %cmp96.i = icmp ult i32 %delta_from_mid_point_delta_in_us.0.i, 2000
  %or.cond.i = select i1 %cmp95.not.i, i1 %cmp96.i, i1 false
  br i1 %or.cond.i, label %if.then97.i, label %if.end86.i.if.end112.i_crit_edge

if.end86.i.if.end112.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i:                                      ; preds = %if.end86.i
  %div100.i = udiv i32 %sub, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %div100.i, i32 %sub.i)
  %cmp101.i = icmp ult i32 %div100.i, %sub.i
  br i1 %cmp101.i, label %land.lhs.true102.i, label %if.then97.i.if.end112.i_crit_edge

if.then97.i.if.end112.i_crit_edge:                ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

land.lhs.true102.i:                               ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div100.i, i32 %46)
  %cmp107.i = icmp ugt i32 %div100.i, %46
  %spec.select.i = select i1 %cmp107.i, i32 %48, i32 %frames_to_insert.0.i
  br label %if.end112.i

if.end112.i:                                      ; preds = %land.lhs.true102.i, %if.then97.i.if.end112.i_crit_edge, %if.end86.i.if.end112.i_crit_edge
  %frames_to_insert.1.i = phi i32 [ %frames_to_insert.0.i, %if.then97.i.if.end112.i_crit_edge ], [ %frames_to_insert.0.i, %if.end86.i.if.end112.i_crit_edge ], [ %spec.select.i, %land.lhs.true102.i ]
  %div113.i = udiv i32 %sub, %frames_to_insert.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div113.i, i32 %46)
  %cmp115.i = icmp ult i32 %div113.i, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frames_to_insert.1.i)
  %cmp117.i = icmp ugt i32 %frames_to_insert.1.i, 1
  %narrow.i = and i1 %cmp117.i, %cmp115.i
  %sub119.i = sext i1 %narrow.i to i32
  %frames_to_insert.2.i = add i32 %frames_to_insert.1.i, %sub119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames_to_insert.2.i)
  %cmp121.not.i = icmp eq i32 %frames_to_insert.2.i, 0
  br i1 %cmp121.not.i, label %if.end112.i.if.end124.i_crit_edge, label %if.then122.i

if.end112.i.if.end124.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.i

if.then122.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  %div123.i = udiv i32 %sub, %frames_to_insert.2.i
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then122.i, %if.end112.i.if.end124.i_crit_edge
  %inserted_frame_duration_in_us.0.i = phi i32 [ %div123.i, %if.then122.i ], [ 0, %if.end112.i.if.end124.i_crit_edge ]
  %49 = tail call i32 @llvm.umax.i32(i32 %inserted_frame_duration_in_us.0.i, i32 %46) #9
  %inserted_duration_in_us131.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 3
  %50 = ptrtoint ptr %inserted_duration_in_us131.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %inserted_duration_in_us131.i, align 4
  %51 = ptrtoint ptr %frames_to_insert94.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %frames_to_insert.2.i, ptr %frames_to_insert94.i, align 4
  %frame_counter135.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 5
  %52 = ptrtoint ptr %frame_counter135.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %frames_to_insert.2.i, ptr %frame_counter135.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then2
  %div.i = udiv i32 1000000000, %9
  %add.i40 = add nuw nsw i32 %div.i, 1000
  %div1.i41 = udiv i32 1000000000, %add.i40
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i41, i32 %sub)
  %cmp.i42 = icmp ugt i32 %div1.i41, %sub
  br i1 %cmp.i42, label %if.then.i44, label %if.else16.i

if.then.i44:                                      ; preds = %if.else
  %fixed.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9
  %53 = ptrtoint ptr %fixed.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fixed.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i43 = icmp eq i8 %54, 0
  %frame_counter14.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 4
  br i1 %tobool.not.i43, label %if.else.i45, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i44
  %55 = ptrtoint ptr %frame_counter14.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frame_counter14.i, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %frame_counter14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i)
  %cmp6.i = icmp ugt i32 %inc.i, 10
  br i1 %cmp6.i, label %if.then7.i, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %frame_counter14.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %frame_counter14.i, align 4
  %58 = ptrtoint ptr %fixed.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %fixed.i, align 4
  br label %if.then44.i

if.else.i45:                                      ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %frame_counter14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %frame_counter14.i, align 4
  br label %cleanup

if.else16.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp17.i = icmp ult i32 %9, %sub
  br i1 %cmp17.i, label %if.then18.i, label %if.else16.i.cleanup_crit_edge

if.else16.i.cleanup_crit_edge:                    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.i:                                      ; preds = %if.else16.i
  %fixed19.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9
  %60 = ptrtoint ptr %fixed19.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %fixed19.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool21.not.i = icmp eq i8 %61, 0
  %frame_counter24.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 4
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else37.i

if.then22.i:                                      ; preds = %if.then18.i
  %62 = ptrtoint ptr %frame_counter24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %frame_counter24.i, align 4
  %inc25.i = add i32 %63, 1
  store i32 %inc25.i, ptr %frame_counter24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc25.i)
  %cmp28.i = icmp ugt i32 %inc25.i, 5
  br i1 %cmp28.i, label %if.then29.i, label %if.then22.i.cleanup_crit_edge

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %frame_counter24.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %frame_counter24.i, align 4
  %65 = ptrtoint ptr %fixed19.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %fixed19.i, align 4
  %max_refresh_in_uhz.i46 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 5
  %66 = ptrtoint ptr %max_refresh_in_uhz.i46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_refresh_in_uhz.i46, align 4
  br label %if.then44.i

if.else37.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %frame_counter24.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %frame_counter24.i, align 4
  br label %cleanup

if.then44.i:                                      ; preds = %if.then29.i, %if.then7.i
  %.sink.i = phi i32 [ %67, %if.then29.i ], [ 0, %if.then7.i ]
  %target_refresh_in_uhz35.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 3
  %69 = ptrtoint ptr %target_refresh_in_uhz35.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink.i, ptr %target_refresh_in_uhz35.i, align 4
  %fixed45.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9
  %70 = ptrtoint ptr %fixed45.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fixed45.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool47.not.i = icmp eq i8 %71, 0
  %max_refresh_in_uhz54.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 5
  %72 = ptrtoint ptr %max_refresh_in_uhz54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_refresh_in_uhz54.i, align 4
  %conv.i4.i = zext i32 %73 to i64
  %call.i5.i = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i4.i) #9
  %conv2.i6.i = and i64 %call.i5.i, 4294967295
  %timing.i7.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %pix_clk_100hz.i8.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %74 = ptrtoint ptr %pix_clk_100hz.i8.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pix_clk_100hz.i8.i, align 8
  %div.i9.i = udiv i32 %75, 10
  %conv3.i10.i = zext i32 %div.i9.i to i64
  %mul.i11.i = mul nuw nsw i64 %conv2.i6.i, %conv3.i10.i
  %76 = ptrtoint ptr %timing.i7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %timing.i7.i, align 8
  %conv5.i12.i = zext i32 %77 to i64
  %call6.i13.i = tail call i64 @div64_u64(i64 noundef %mul.i11.i, i64 noundef %conv5.i12.i) #9
  %call7.i14.i = tail call i64 @div64_u64(i64 noundef %call6.i13.i, i64 noundef 1000000) #9
  %conv8.i15.i = trunc i64 %call7.i14.i to i32
  %v_total10.i16.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %78 = ptrtoint ptr %v_total10.i16.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %v_total10.i16.i, align 8
  %80 = tail call i32 @llvm.umax.i32(i32 %79, i32 %conv8.i15.i) #9
  %adjust56.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %81 = ptrtoint ptr %adjust56.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %adjust56.i, align 4
  br i1 %tobool47.not.i, label %if.else53.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  %v_total_max.i47 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %v_total_max.i47 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %80, ptr %v_total_max.i47, align 4
  br label %cleanup

if.else53.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  %min_refresh_in_uhz.i48 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 3
  %83 = ptrtoint ptr %min_refresh_in_uhz.i48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %min_refresh_in_uhz.i48, align 4
  %conv.i17.i = zext i32 %84 to i64
  %call.i18.i = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i17.i) #9
  %conv2.i19.i = and i64 %call.i18.i, 4294967295
  %85 = ptrtoint ptr %pix_clk_100hz.i8.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pix_clk_100hz.i8.i, align 8
  %div.i22.i = udiv i32 %86, 10
  %conv3.i23.i = zext i32 %div.i22.i to i64
  %mul.i24.i = mul nuw nsw i64 %conv2.i19.i, %conv3.i23.i
  %87 = ptrtoint ptr %timing.i7.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %timing.i7.i, align 8
  %conv5.i25.i = zext i32 %88 to i64
  %call6.i26.i = tail call i64 @div64_u64(i64 noundef %mul.i24.i, i64 noundef %conv5.i25.i) #9
  %call7.i27.i = tail call i64 @div64_u64(i64 noundef %call6.i26.i, i64 noundef 1000000) #9
  %conv8.i28.i = trunc i64 %call7.i27.i to i32
  %89 = ptrtoint ptr %v_total10.i16.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %v_total10.i16.i, align 8
  %91 = tail call i32 @llvm.umax.i32(i32 %90, i32 %conv8.i28.i) #9
  %v_total_max60.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %v_total_max60.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %v_total_max60.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else53.i, %if.then48.i, %if.else37.i, %if.then22.i.cleanup_crit_edge, %if.else16.i.cleanup_crit_edge, %if.else.i45, %if.then2.i.cleanup_crit_edge, %if.end124.i, %if.then26.i, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_freesync_handle_v_update(ptr noundef readnone %mod_freesync, ptr noundef readonly %stream, ptr noundef %in_out_vrr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mod_freesync, null
  %cmp1 = icmp eq ptr %stream, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %in_out_vrr, null
  %or.cond86 = or i1 %or.cond, %cmp3
  br i1 %or.cond86, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %in_out_vrr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_out_vrr, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4 = icmp eq i8 %1, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp8 = icmp eq i32 %3, 3
  br i1 %cmp8, label %land.lhs.true, label %if.end7.if.end48_crit_edge

if.end7.if.end48_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end7
  %btr_active = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %btr_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %btr_active, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end43_crit_edge, label %if.then12

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then12:                                        ; preds = %land.lhs.true
  %frames_to_insert = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %frames_to_insert to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frames_to_insert, align 4
  %frame_counter = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 5
  %8 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp15 = icmp eq i32 %7, %9
  br i1 %cmp15, label %if.then17, label %if.then12.if.end22_crit_edge

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %if.then12
  %inserted_duration_in_us = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %inserted_duration_in_us to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inserted_duration_in_us, align 4
  %min_duration_in_us.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 6
  %12 = ptrtoint ptr %min_duration_in_us.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_duration_in_us.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %11) #9
  %max_duration_in_us.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 4
  %15 = ptrtoint ptr %max_duration_in_us.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_duration_in_us.i, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16) #9
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %18 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 4
  br i1 %cmp.i.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then17
  %timing.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %20 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timing.i, align 8
  %mul.i = mul i32 %21, 10000
  %conv.i = zext i32 %17 to i64
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %22 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pix_clk_100hz.i, align 8
  %conv8.i = zext i32 %23 to i64
  %mul9.i = mul nuw i64 %conv8.i, %conv.i
  %sub.i = add i32 %mul.i, -1
  %conv10.i = zext i32 %sub.i to i64
  %add.i = add nuw i64 %mul9.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp164.i.i.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !16

if.then168.i.i.i:                                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i = trunc i64 %add.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul.i
  br label %calc_v_total_from_duration.exit

if.else174.i.i.i:                                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %add.i) #13, !srcloc !17
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t102.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %calc_v_total_from_duration.exit

if.else.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.i = zext i32 %17 to i64
  %timing14.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %pix_clk_100hz15.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %25 = ptrtoint ptr %pix_clk_100hz15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pix_clk_100hz15.i, align 8
  %div.i = udiv i32 %26, 10
  %conv16.i = zext i32 %div.i to i64
  %mul17.i = mul nuw nsw i64 %conv16.i, %conv13.i
  %27 = ptrtoint ptr %timing14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timing14.i, align 8
  %conv20.i = zext i32 %28 to i64
  %call21.i = tail call i64 @div64_u64(i64 noundef %mul17.i, i64 noundef %conv20.i) #9
  %call22.i = tail call i64 @div64_u64(i64 noundef %call21.i, i64 noundef 1000) #9
  %conv23.i = trunc i64 %call22.i to i32
  br label %calc_v_total_from_duration.exit

calc_v_total_from_duration.exit:                  ; preds = %if.else.i, %if.else174.i.i.i, %if.then168.i.i.i
  %v_total.0.i = phi i32 [ %conv23.i, %if.else.i ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t102.i, %if.else174.i.i.i ]
  %v_total26.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %v_total26.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v_total26.i, align 8
  %31 = tail call i32 @llvm.umax.i32(i32 %v_total.0.i, i32 %30) #9
  %adjust = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %32 = ptrtoint ptr %adjust to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %adjust, align 4
  %v_total_max = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %v_total_max to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %v_total_max, align 4
  %34 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %frame_counter, align 4
  br label %if.end22

if.end22:                                         ; preds = %calc_v_total_from_duration.exit, %if.then12.if.end22_crit_edge
  %35 = phi i32 [ %.pr, %calc_v_total_from_duration.exit ], [ %9, %if.then12.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp25.not = icmp eq i32 %35, 0
  br i1 %cmp25.not, label %if.end30thread-pre-split, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %35, -1
  %36 = ptrtoint ptr %frame_counter to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dec, ptr %frame_counter, align 4
  br label %if.end30

if.end30thread-pre-split:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr113 = load i32, ptr %frame_counter, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %if.then27
  %38 = phi i32 [ %.pr113, %if.end30thread-pre-split ], [ %dec, %if.then27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp33 = icmp eq i32 %38, 0
  br i1 %cmp33, label %if.then35, label %if.end30.if.end43_crit_edge

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %max_refresh_in_uhz = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 5
  %39 = ptrtoint ptr %max_refresh_in_uhz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_refresh_in_uhz, align 4
  %conv.i87 = zext i32 %40 to i64
  %call.i = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i87) #9
  %conv2.i = and i64 %call.i, 4294967295
  %timing.i88 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %pix_clk_100hz.i89 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %41 = ptrtoint ptr %pix_clk_100hz.i89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pix_clk_100hz.i89, align 8
  %div.i90 = udiv i32 %42, 10
  %conv3.i = zext i32 %div.i90 to i64
  %mul.i91 = mul nuw nsw i64 %conv2.i, %conv3.i
  %43 = ptrtoint ptr %timing.i88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %timing.i88, align 8
  %conv5.i = zext i32 %44 to i64
  %call6.i = tail call i64 @div64_u64(i64 noundef %mul.i91, i64 noundef %conv5.i) #9
  %call7.i = tail call i64 @div64_u64(i64 noundef %call6.i, i64 noundef 1000000) #9
  %conv8.i92 = trunc i64 %call7.i to i32
  %v_total10.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %45 = ptrtoint ptr %v_total10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v_total10.i, align 8
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %conv8.i92) #9
  %adjust37 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %48 = ptrtoint ptr %adjust37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %adjust37, align 4
  %min_refresh_in_uhz = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 3
  %49 = ptrtoint ptr %min_refresh_in_uhz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %min_refresh_in_uhz, align 4
  %conv.i93 = zext i32 %50 to i64
  %call.i94 = tail call i64 @div64_u64(i64 noundef 1000000000000000, i64 noundef %conv.i93) #9
  %conv2.i95 = and i64 %call.i94, 4294967295
  %51 = ptrtoint ptr %pix_clk_100hz.i89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pix_clk_100hz.i89, align 8
  %div.i98 = udiv i32 %52, 10
  %conv3.i99 = zext i32 %div.i98 to i64
  %mul.i100 = mul nuw nsw i64 %conv2.i95, %conv3.i99
  %53 = ptrtoint ptr %timing.i88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %timing.i88, align 8
  %conv5.i101 = zext i32 %54 to i64
  %call6.i102 = tail call i64 @div64_u64(i64 noundef %mul.i100, i64 noundef %conv5.i101) #9
  %call7.i103 = tail call i64 @div64_u64(i64 noundef %call6.i102, i64 noundef 1000000) #9
  %conv8.i104 = trunc i64 %call7.i103 to i32
  %55 = ptrtoint ptr %v_total10.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %v_total10.i, align 8
  %57 = tail call i32 @llvm.umax.i32(i32 %56, i32 %conv8.i104) #9
  %v_total_max41 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %v_total_max41 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %v_total_max41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end30.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr114 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr114)
  %cmp45 = icmp eq i32 %.pr114, 3
  br i1 %cmp45, label %if.end48.thread, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48.thread:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %ramping_active = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %ramping_active to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %ramping_active, align 1
  br label %cleanup

if.end48:                                         ; preds = %if.end43.if.end48_crit_edge, %if.end7.if.end48_crit_edge
  %61 = phi i32 [ %.pr114, %if.end43.if.end48_crit_edge ], [ %3, %if.end7.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %cmp50 = icmp eq i32 %61, 4
  br i1 %cmp50, label %land.lhs.true52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true52:                                  ; preds = %if.end48
  %ramping_active54 = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 1
  %62 = ptrtoint ptr %ramping_active54 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ramping_active54, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool55.not = icmp eq i8 %63, 0
  br i1 %tobool55.not, label %land.lhs.true52.cleanup_crit_edge, label %if.then57

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %land.lhs.true52
  %v_total_max.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %v_total_max.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %v_total_max.i, align 4
  %conv.i.i = zext i32 %65 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 10000
  %timing.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %66 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %timing.i.i, align 8
  %conv1.i.i = zext i32 %67 to i64
  %mul2.i.i = mul i64 %mul.i.i, %conv1.i.i
  %pix_clk_100hz.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %68 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pix_clk_100hz.i.i, align 8
  %conv4.i.i = zext i32 %69 to i64
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul2.i.i, i64 noundef %conv4.i.i) #9
  %conv5.i.i = trunc i64 %call.i.i to i32
  %target_refresh_in_uhz.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 3
  %70 = ptrtoint ptr %target_refresh_in_uhz.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %target_refresh_in_uhz.i, align 4
  %conv.i1.i = zext i32 %71 to i64
  %call.i2.i = tail call i64 @div64_u64(i64 noundef 1000000000000, i64 noundef %conv.i1.i) #9
  %conv1.i3.i = trunc i64 %call.i2.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i, i32 %conv1.i3.i)
  %cmp.i = icmp ugt i32 %conv5.i.i, %conv1.i3.i
  %conv.i106 = and i64 %call.i.i, 4294967295
  %mul.i107 = mul nuw nsw i64 %conv.i106, 1040
  %call2.i = tail call i64 @div64_u64(i64 noundef %mul.i107, i64 noundef 1000000) #9
  %add.i108 = add i64 %call2.i, 1000
  %call3.i = tail call i64 @div64_u64(i64 noundef 1000000, i64 noundef %add.i108) #9
  %conv4.i = trunc i64 %call3.i to i32
  %sub.i109 = sub i32 1000, %conv4.i
  %conv6.i = zext i32 %sub.i109 to i64
  %mul7.i = mul nuw i64 %conv.i106, %conv6.i
  %call8.i = tail call i64 @div64_u64(i64 noundef %mul7.i, i64 noundef 1000) #9
  %conv10.i110 = and i64 %call8.i, 4294967295
  %mul12.i = mul nuw i64 %conv10.i110, %conv.i106
  %call13.i = tail call i64 @div64_u64(i64 noundef %mul12.i, i64 noundef 16666) #9
  %conv14.i = trunc i64 %call13.i to i32
  br i1 %cmp.i, label %if.then.i, label %if.else.i111

if.then.i:                                        ; preds = %if.then57
  %sub16.i = sub i32 %conv5.i.i, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub16.i, i32 %conv1.i3.i)
  %cmp17.not.i = icmp ugt i32 %sub16.i, %conv1.i3.i
  br i1 %cmp17.not.i, label %if.then.i.update_v_total_for_static_ramp.exit_crit_edge, label %if.then.i.if.end37.sink.split.i_crit_edge

if.then.i.if.end37.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.sink.split.i

if.then.i.update_v_total_for_static_ramp.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_v_total_for_static_ramp.exit

if.else.i111:                                     ; preds = %if.then57
  %add25.i = add i32 %conv14.i, %conv5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %conv1.i3.i)
  %cmp26.not.i = icmp ult i32 %add25.i, %conv1.i3.i
  br i1 %cmp26.not.i, label %if.else.i111.update_v_total_for_static_ramp.exit_crit_edge, label %if.else.i111.if.end37.sink.split.i_crit_edge

if.else.i111.if.end37.sink.split.i_crit_edge:     ; preds = %if.else.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.sink.split.i

if.else.i111.update_v_total_for_static_ramp.exit_crit_edge: ; preds = %if.else.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_v_total_for_static_ramp.exit

if.end37.sink.split.i:                            ; preds = %if.else.i111.if.end37.sink.split.i_crit_edge, %if.then.i.if.end37.sink.split.i_crit_edge
  %72 = ptrtoint ptr %ramping_active54 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %ramping_active54, align 1
  %ramping_done32.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 9, i32 2
  %73 = ptrtoint ptr %ramping_done32.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %ramping_done32.i, align 2
  %74 = ptrtoint ptr %target_refresh_in_uhz.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %target_refresh_in_uhz.i, align 4
  %conv.i7.i = zext i32 %75 to i64
  %call.i8.i = tail call i64 @div64_u64(i64 noundef 1000000000000, i64 noundef %conv.i7.i) #9
  %conv1.i9.i = trunc i64 %call.i8.i to i32
  br label %update_v_total_for_static_ramp.exit

update_v_total_for_static_ramp.exit:              ; preds = %if.end37.sink.split.i, %if.else.i111.update_v_total_for_static_ramp.exit_crit_edge, %if.then.i.update_v_total_for_static_ramp.exit_crit_edge
  %current_duration_in_us.0.i = phi i32 [ %sub16.i, %if.then.i.update_v_total_for_static_ramp.exit_crit_edge ], [ %add25.i, %if.else.i111.update_v_total_for_static_ramp.exit_crit_edge ], [ %conv1.i9.i, %if.end37.sink.split.i ]
  %conv38.i = zext i32 %current_duration_in_us.0.i to i64
  %76 = ptrtoint ptr %pix_clk_100hz.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pix_clk_100hz.i.i, align 8
  %div.i112 = udiv i32 %77, 10
  %conv39.i = zext i32 %div.i112 to i64
  %mul40.i = mul nuw nsw i64 %conv39.i, %conv38.i
  %78 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %timing.i.i, align 8
  %conv42.i = zext i32 %79 to i64
  %call43.i = tail call i64 @div64_u64(i64 noundef %mul40.i, i64 noundef %conv42.i) #9
  %call44.i = tail call i64 @div64_u64(i64 noundef %call43.i, i64 noundef 1000) #9
  %conv45.i = trunc i64 %call44.i to i32
  %v_total47.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %80 = ptrtoint ptr %v_total47.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %v_total47.i, align 8
  %82 = tail call i32 @llvm.umax.i32(i32 %81, i32 %conv45.i) #9
  %adjust.i = getelementptr inbounds %struct.mod_vrr_params, ptr %in_out_vrr, i32 0, i32 8
  %83 = ptrtoint ptr %adjust.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %adjust.i, align 4
  %84 = ptrtoint ptr %v_total_max.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %82, ptr %v_total_max.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %update_v_total_for_static_ramp.exit, %land.lhs.true52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end48.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mod_freesync_get_settings(ptr noundef readnone %mod_freesync, ptr nocapture noundef readonly %vrr, ptr nocapture noundef writeonly %v_total_min, ptr nocapture noundef writeonly %v_total_max, ptr nocapture noundef writeonly %event_triggers, ptr nocapture noundef readnone %window_min, ptr nocapture noundef readnone %window_max, ptr nocapture noundef writeonly %lfc_mid_point_in_us, ptr nocapture noundef writeonly %inserted_frames, ptr nocapture noundef writeonly %inserted_duration_in_us) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mod_freesync, null
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vrr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vrr, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then1

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %adjust = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 8
  %2 = ptrtoint ptr %adjust to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjust, align 4
  %4 = ptrtoint ptr %v_total_min to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %v_total_min, align 4
  %v_total_max4 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %v_total_max4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v_total_max4, align 4
  %7 = ptrtoint ptr %v_total_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %v_total_max, align 4
  %8 = ptrtoint ptr %event_triggers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %event_triggers, align 4
  %mid_point_in_us = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %mid_point_in_us to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mid_point_in_us, align 4
  %11 = ptrtoint ptr %lfc_mid_point_in_us to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lfc_mid_point_in_us, align 4
  %frames_to_insert = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 10, i32 4
  %12 = ptrtoint ptr %frames_to_insert to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frames_to_insert, align 4
  %14 = ptrtoint ptr %inserted_frames to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %inserted_frames, align 4
  %inserted_duration_in_us7 = getelementptr inbounds %struct.mod_vrr_params, ptr %vrr, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %inserted_duration_in_us7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inserted_duration_in_us7, align 4
  %17 = ptrtoint ptr %inserted_duration_in_us to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %inserted_duration_in_us, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then1, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mod_freesync_calc_field_rate_from_timing(i32 noundef %vtotal, i32 noundef %htotal, i32 noundef %pix_clk) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %htotal, %vtotal
  %conv = zext i32 %pix_clk to i64
  %mul1 = mul nuw nsw i64 %conv, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul1)
  %cmp164.i.i = icmp ult i64 %mul1, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !16

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %mul1 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %mul1) #13, !srcloc !17
  %asmresult1.i.i.i = extractvalue { i64, i64 } %0, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  ret i64 %dividend.addr.0.i.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mod_freesync_is_valid_range(i32 noundef %min_refresh_cap_in_uhz, i32 noundef %max_refresh_cap_in_uhz, i32 noundef %nominal_field_rate_in_uhz) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %nominal_field_rate_in_uhz, 500000
  %conv = zext i32 %add to i64
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv) #13, !srcloc !20
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv, i64 %0, i32 0) #13, !srcloc !19
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %div158.i.i29 = lshr i64 %asmresult10.i.i.i, 18
  %conv1 = trunc i64 %div158.i.i29 to i32
  %div = udiv i32 %min_refresh_cap_in_uhz, 1000000
  %div2 = udiv i32 %max_refresh_cap_in_uhz, 1000000
  call void @__sanitizer_cov_trace_cmp4(i32 %div2, i32 %conv1)
  %cmp = icmp ult i32 %div2, %conv1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv1)
  %cmp4 = icmp ugt i32 %div, %conv1
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end13

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %conv1, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp14 = icmp ugt i32 %sub, 9
  br label %return

return:                                           ; preds = %if.end13, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp14, %if.end13 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/freesync/freesync.c", i32 138, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/freesync/freesync.c", i32 173, i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148470703, i64 2148470983, i64 2148471317, i64 2148471651}
!18 = !{i64 985159, i64 985186, i64 985208, i64 985236}
!19 = !{i64 985567, i64 985594, i64 985627, i64 985648, i64 985675, i64 985701}
!20 = !{i64 984872, i64 984899}
