; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fixed31_32 = type { i64 }
%struct.calculate_buffer = type { i32, [16 x %struct.fixed31_32], %struct.fixed31_32 }
%struct.dm_crtc_state = type { %struct.drm_crtc_state, ptr, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, %struct.mod_freesync_config, %struct.dc_info_packet, i32 }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.154, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.151 }
%union.anon.151 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.152 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.152 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.153, i32, i32, i32, i32 }
%struct.anon.153 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.124 }
%struct.anon.124 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.154 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dc_transfer_func = type { %struct.kref, i32, i32, i32, %union.anon.110 }
%union.anon.110 = type { %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], i16, i16, i16, i16 }
%struct.dc_gamma = type { %struct.kref, i32, i32, %struct.dc_gamma_entries, ptr, i8 }
%struct.dc_gamma_entries = type { [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32], [4096 x %struct.fixed31_32] }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon.114, %union.large_integer, i8 }
%union.anon.114 = type { %struct.anon.116 }
%struct.anon.116 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.119 }
%struct.anon.119 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.123 }
%struct.anon.123 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid Degamma LUT size. Should be %u but got %u.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Invalid Gamma LUT size. Should be %u (or %u for legacy) but got %u.\0A\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_dm_update_plane_color_mgmt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c\00", [62 x i8] zeroinitializer }, align 32
@__set_legacy_tf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__set_output_tf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 4096]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 4096]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 303, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 312, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 479, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_init_color_mod() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @setup_x_points_distribution() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_x_points_distribution() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dm_verify_lut_sizes(ptr nocapture noundef readonly %crtc_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %degamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 10
  %0 = ptrtoint ptr %degamma_lut to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %degamma_lut, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %__extract_blob_lut.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

__extract_blob_lut.exit:                          ; preds = %entry
  %length.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i.i, align 4
  %div1.i.i = lshr i32 %3, 3
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div1.i.i)
  %cmp.not = icmp eq i32 %div1.i.i, 4096
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %__extract_blob_lut.exit.if.end_crit_edge, label %if.then

__extract_blob_lut.exit.if.end_crit_edge:         ; preds = %__extract_blob_lut.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %__extract_blob_lut.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4096, i32 noundef %div1.i.i) #3
  br label %cleanup

if.end:                                           ; preds = %__extract_blob_lut.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 12
  %6 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gamma_lut, align 4
  %tobool.not.i13 = icmp eq ptr %7, null
  br i1 %tobool.not.i13, label %if.end.cleanup_crit_edge, label %__extract_blob_lut.exit20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

__extract_blob_lut.exit20:                        ; preds = %if.end
  %length.i.i14 = getelementptr inbounds %struct.drm_property_blob, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %length.i.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i.i14, align 4
  %div1.i.i15 = lshr i32 %9, 3
  %data.i16 = getelementptr inbounds %struct.drm_property_blob, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %data.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i16, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %__extract_blob_lut.exit20.cleanup_crit_edge, label %land.lhs.true3

__extract_blob_lut.exit20.cleanup_crit_edge:      ; preds = %__extract_blob_lut.exit20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true3:                                   ; preds = %__extract_blob_lut.exit20
  %12 = zext i32 %div1.i.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div1.i.i15, label %if.then7 [
    i32 4096, label %land.lhs.true3.cleanup_crit_edge
    i32 256, label %land.lhs.true3.cleanup_crit_edge28
  ]

land.lhs.true3.cleanup_crit_edge28:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 4096, i32 noundef 256, i32 noundef %div1.i.i15) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge28, %__extract_blob_lut.exit20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then7 ], [ 0, %land.lhs.true3.cleanup_crit_edge ], [ 0, %land.lhs.true3.cleanup_crit_edge28 ], [ 0, %__extract_blob_lut.exit20.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dm_update_crtc_color_mgmt(ptr nocapture noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  %tmp36.i.i = alloca %struct.fixed31_32, align 8
  %tmp41.i.i = alloca %struct.fixed31_32, align 8
  %tmp46.i.i = alloca %struct.fixed31_32, align 8
  %gamma.i145 = alloca ptr, align 4
  %cal_buffer.i146 = alloca %struct.calculate_buffer, align 8
  %gamma.i = alloca ptr, align 4
  %cal_buffer.i = alloca %struct.calculate_buffer, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %asic_type = getelementptr i8, ptr %5, i32 2360
  %6 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %7)
  %cmp = icmp ult i32 %7, 23
  %degamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc, i32 0, i32 10
  %8 = ptrtoint ptr %degamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %degamma_lut.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %__extract_blob_lut.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

__extract_blob_lut.exit.i:                        ; preds = %entry
  %length.i.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i.i.i, align 4
  %div1.i.i.i = lshr i32 %11, 3
  %data.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div1.i.i.i)
  %cmp.not.i = icmp eq i32 %div1.i.i.i, 4096
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %__extract_blob_lut.exit.i.if.end.i_crit_edge, label %if.then.i

__extract_blob_lut.exit.i.if.end.i_crit_edge:     ; preds = %__extract_blob_lut.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %__extract_blob_lut.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4096, i32 noundef %div1.i.i.i) #3
  br label %cleanup

if.end.i:                                         ; preds = %__extract_blob_lut.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc, i32 0, i32 12
  %14 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gamma_lut.i, align 4
  %tobool.not.i13.i = icmp eq ptr %15, null
  br i1 %tobool.not.i13.i, label %if.end.i.if.end_crit_edge, label %__extract_blob_lut.exit20.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

__extract_blob_lut.exit20.i:                      ; preds = %if.end.i
  %length.i.i14.i = getelementptr inbounds %struct.drm_property_blob, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %length.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i.i14.i, align 4
  %div1.i.i15.i = lshr i32 %17, 3
  %data.i16.i = getelementptr inbounds %struct.drm_property_blob, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %data.i16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i16.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %__extract_blob_lut.exit20.i.if.end_crit_edge, label %land.lhs.true3.i

__extract_blob_lut.exit20.i.if.end_crit_edge:     ; preds = %__extract_blob_lut.exit20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true3.i:                                 ; preds = %__extract_blob_lut.exit20.i
  %20 = zext i32 %div1.i.i15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %div1.i.i15.i, label %if.then7.i [
    i32 4096, label %land.lhs.true3.i.if.end_crit_edge
    i32 256, label %land.lhs.true3.i.if.end_crit_edge238
  ]

land.lhs.true3.i.if.end_crit_edge238:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then7.i:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 4096, i32 noundef 256, i32 noundef %div1.i.i15.i) #3
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.i.if.end_crit_edge, %land.lhs.true3.i.if.end_crit_edge238, %__extract_blob_lut.exit20.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %21 = ptrtoint ptr %degamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %degamma_lut.i, align 4
  %tobool.not.i108 = icmp eq ptr %22, null
  br i1 %tobool.not.i108, label %if.end.__extract_blob_lut.exit_crit_edge, label %cond.true.i

if.end.__extract_blob_lut.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %__extract_blob_lut.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %length.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i.i, align 4
  %div1.i.i = lshr i32 %24, 3
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  br label %__extract_blob_lut.exit

__extract_blob_lut.exit:                          ; preds = %cond.true.i, %if.end.__extract_blob_lut.exit_crit_edge
  %degamma_size.0 = phi i32 [ %div1.i.i, %cond.true.i ], [ 0, %if.end.__extract_blob_lut.exit_crit_edge ]
  %cond5.i = phi ptr [ %26, %cond.true.i ], [ null, %if.end.__extract_blob_lut.exit_crit_edge ]
  %27 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gamma_lut.i, align 4
  %tobool.not.i109 = icmp eq ptr %28, null
  br i1 %tobool.not.i109, label %__extract_blob_lut.exit.__extract_blob_lut.exit116_crit_edge, label %cond.true.i113

__extract_blob_lut.exit.__extract_blob_lut.exit116_crit_edge: ; preds = %__extract_blob_lut.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %__extract_blob_lut.exit116

cond.true.i113:                                   ; preds = %__extract_blob_lut.exit
  call void @__sanitizer_cov_trace_pc() #5
  %length.i.i110 = getelementptr inbounds %struct.drm_property_blob, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %length.i.i110 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i.i110, align 4
  %div1.i.i111 = lshr i32 %30, 3
  %data.i112 = getelementptr inbounds %struct.drm_property_blob, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %data.i112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i112, align 4
  br label %__extract_blob_lut.exit116

__extract_blob_lut.exit116:                       ; preds = %cond.true.i113, %__extract_blob_lut.exit.__extract_blob_lut.exit116_crit_edge
  %regamma_size.0 = phi i32 [ %div1.i.i111, %cond.true.i113 ], [ 0, %__extract_blob_lut.exit.__extract_blob_lut.exit116_crit_edge ]
  %cond5.i115 = phi ptr [ %32, %cond.true.i113 ], [ null, %__extract_blob_lut.exit.__extract_blob_lut.exit116_crit_edge ]
  %tobool9.not = icmp eq ptr %cond5.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %degamma_size.0)
  %cmp38.not.i = icmp eq i32 %degamma_size.0, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp38.not.i
  br i1 %or.cond, label %__extract_blob_lut.exit116.land.end_crit_edge, label %for.body.lr.ph.i

__extract_blob_lut.exit116.land.end_crit_edge:    ; preds = %__extract_blob_lut.exit116
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

for.body.lr.ph.i:                                 ; preds = %__extract_blob_lut.exit116
  %sub.i = add nsw i32 %degamma_size.0, -1
  %33 = ptrtoint ptr %cond5.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cond5.i, align 2
  %green.i195 = getelementptr %struct.drm_color_lut, ptr %cond5.i, i32 0, i32 1
  %35 = ptrtoint ptr %green.i195 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %green.i195, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp3.not.i196 = icmp eq i16 %34, %36
  br i1 %cmp3.not.i196, label %lor.lhs.false.i.preheader, label %for.body.lr.ph.i.land.end_crit_edge

for.body.lr.ph.i.land.end_crit_edge:              ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

lor.lhs.false.i.preheader:                        ; preds = %for.body.lr.ph.i
  %blue.i223 = getelementptr %struct.drm_color_lut, ptr %cond5.i, i32 0, i32 2
  %37 = ptrtoint ptr %blue.i223 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %blue.i223, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %38)
  %cmp10.not.i224 = icmp eq i16 %34, %38
  br i1 %cmp10.not.i224, label %lor.lhs.false.i.preheader.if.end.i117_crit_edge, label %lor.lhs.false.i.preheader.land.end_crit_edge

lor.lhs.false.i.preheader.land.end_crit_edge:     ; preds = %lor.lhs.false.i.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

lor.lhs.false.i.preheader.if.end.i117_crit_edge:  ; preds = %lor.lhs.false.i.preheader
  br label %if.end.i117

for.cond.i:                                       ; preds = %if.end.i117
  %inc.i = add nuw nsw i32 %i.039.i198225, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %degamma_size.0)
  %cmp.i = icmp ult i32 %inc.i, %degamma_size.0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %degamma_size.0)
  %exitcond.not.i = icmp eq i32 %inc.i, %degamma_size.0
  br i1 %exitcond.not.i, label %for.cond.i.land.end_crit_edge, label %for.body.i

for.cond.i.land.end_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.drm_color_lut, ptr %cond5.i, i32 %inc.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i, align 2
  %green.i = getelementptr %struct.drm_color_lut, ptr %cond5.i, i32 %inc.i, i32 1
  %41 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %green.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp3.not.i = icmp eq i16 %40, %42
  br i1 %cmp3.not.i, label %lor.lhs.false.i, label %for.body.i.land.end_crit_edge

for.body.i.land.end_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

lor.lhs.false.i:                                  ; preds = %for.body.i
  %blue.i = getelementptr %struct.drm_color_lut, ptr %cond5.i, i32 %inc.i, i32 2
  %43 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %blue.i, align 2
  %cmp10.not.i = icmp eq i16 %40, %44
  br i1 %cmp10.not.i, label %lor.lhs.false.i.if.end.i117_crit_edge, label %lor.lhs.false.i.land.end_crit_edge

lor.lhs.false.i.land.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

lor.lhs.false.i.if.end.i117_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i117

if.end.i117:                                      ; preds = %lor.lhs.false.i.if.end.i117_crit_edge, %lor.lhs.false.i.preheader.if.end.i117_crit_edge
  %cmp40.i197226 = phi i1 [ %cmp.i, %lor.lhs.false.i.if.end.i117_crit_edge ], [ true, %lor.lhs.false.i.preheader.if.end.i117_crit_edge ]
  %i.039.i198225 = phi i32 [ %inc.i, %lor.lhs.false.i.if.end.i117_crit_edge ], [ 0, %lor.lhs.false.i.preheader.if.end.i117_crit_edge ]
  %45 = phi i16 [ %40, %lor.lhs.false.i.if.end.i117_crit_edge ], [ %34, %lor.lhs.false.i.preheader.if.end.i117_crit_edge ]
  %conv.i199 = zext i16 %45 to i32
  %mul.i = mul i32 %i.039.i198225, 65535
  %div.i = udiv i32 %mul.i, %sub.i
  %sub15.i = add nsw i32 %conv.i199, -2
  %46 = sub i32 %sub15.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %46)
  %47 = icmp ult i32 %46, -3
  br i1 %47, label %if.end.i117.land.end_crit_edge, label %for.cond.i

if.end.i117.land.end_crit_edge:                   ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.end:                                         ; preds = %if.end.i117.land.end_crit_edge, %lor.lhs.false.i.land.end_crit_edge, %for.body.i.land.end_crit_edge, %for.cond.i.land.end_crit_edge, %lor.lhs.false.i.preheader.land.end_crit_edge, %for.body.lr.ph.i.land.end_crit_edge, %__extract_blob_lut.exit116.land.end_crit_edge
  %48 = phi i1 [ false, %__extract_blob_lut.exit116.land.end_crit_edge ], [ true, %for.body.lr.ph.i.land.end_crit_edge ], [ true, %lor.lhs.false.i.preheader.land.end_crit_edge ], [ %cmp.i, %for.cond.i.land.end_crit_edge ], [ %cmp.i, %for.body.i.land.end_crit_edge ], [ %cmp.i, %lor.lhs.false.i.land.end_crit_edge ], [ %cmp40.i197226, %if.end.i117.land.end_crit_edge ]
  %frombool11 = zext i1 %48 to i8
  %tobool12.not = icmp eq ptr %cond5.i115, null
  br i1 %tobool12.not, label %land.end16.thread, label %land.rhs13

land.rhs13:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regamma_size.0)
  %cmp38.not.i118 = icmp eq i32 %regamma_size.0, 0
  br i1 %cmp38.not.i118, label %if.else.thread192, label %for.body.lr.ph.i120

if.else.thread192:                                ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #5
  %cm_has_degamma190 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 2
  %49 = ptrtoint ptr %cm_has_degamma190 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %cm_has_degamma190, align 4
  %cm_is_degamma_srgb191 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 3
  %50 = ptrtoint ptr %cm_is_degamma_srgb191 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %cm_is_degamma_srgb191, align 1
  br label %if.else42

for.body.lr.ph.i120:                              ; preds = %land.rhs13
  %sub.i119 = add nsw i32 %regamma_size.0, -1
  %51 = ptrtoint ptr %cond5.i115 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cond5.i115, align 2
  %green.i129204 = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 0, i32 1
  %53 = ptrtoint ptr %green.i129204 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %green.i129204, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp3.not.i130205 = icmp eq i16 %52, %54
  br i1 %cmp3.not.i130205, label %lor.lhs.false.i134.preheader, label %land.end16.thread213

lor.lhs.false.i134.preheader:                     ; preds = %for.body.lr.ph.i120
  %blue.i132230 = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 0, i32 2
  %55 = ptrtoint ptr %blue.i132230 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %blue.i132230, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %56)
  %cmp10.not.i133231 = icmp eq i16 %52, %56
  br i1 %cmp10.not.i133231, label %lor.lhs.false.i134.preheader.if.end.i138_crit_edge, label %lor.lhs.false.i134.preheader.land.end16_crit_edge

lor.lhs.false.i134.preheader.land.end16_crit_edge: ; preds = %lor.lhs.false.i134.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end16

lor.lhs.false.i134.preheader.if.end.i138_crit_edge: ; preds = %lor.lhs.false.i134.preheader
  br label %if.end.i138

for.cond.i124:                                    ; preds = %if.end.i138
  %inc.i121 = add nuw nsw i32 %i.039.i126207232, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i121, i32 %regamma_size.0)
  %cmp.i122 = icmp ult i32 %inc.i121, %regamma_size.0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i121, i32 %regamma_size.0)
  %exitcond.not.i123 = icmp eq i32 %inc.i121, %regamma_size.0
  br i1 %exitcond.not.i123, label %for.cond.i124.land.end16_crit_edge, label %for.body.i131

for.cond.i124.land.end16_crit_edge:               ; preds = %for.cond.i124
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end16

for.body.i131:                                    ; preds = %for.cond.i124
  %arrayidx.i127 = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %inc.i121
  %57 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i127, align 2
  %green.i129 = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %inc.i121, i32 1
  %59 = ptrtoint ptr %green.i129 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %green.i129, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp3.not.i130 = icmp eq i16 %58, %60
  br i1 %cmp3.not.i130, label %lor.lhs.false.i134, label %for.body.i131.land.end16_crit_edge

for.body.i131.land.end16_crit_edge:               ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end16

lor.lhs.false.i134:                               ; preds = %for.body.i131
  %blue.i132 = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %inc.i121, i32 2
  %61 = ptrtoint ptr %blue.i132 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %blue.i132, align 2
  %cmp10.not.i133 = icmp eq i16 %58, %62
  br i1 %cmp10.not.i133, label %lor.lhs.false.i134.if.end.i138_crit_edge, label %lor.lhs.false.i134.land.end16_crit_edge

lor.lhs.false.i134.land.end16_crit_edge:          ; preds = %lor.lhs.false.i134
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end16

lor.lhs.false.i134.if.end.i138_crit_edge:         ; preds = %lor.lhs.false.i134
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i138

if.end.i138:                                      ; preds = %lor.lhs.false.i134.if.end.i138_crit_edge, %lor.lhs.false.i134.preheader.if.end.i138_crit_edge
  %cmp40.i125206233 = phi i1 [ %cmp.i122, %lor.lhs.false.i134.if.end.i138_crit_edge ], [ true, %lor.lhs.false.i134.preheader.if.end.i138_crit_edge ]
  %i.039.i126207232 = phi i32 [ %inc.i121, %lor.lhs.false.i134.if.end.i138_crit_edge ], [ 0, %lor.lhs.false.i134.preheader.if.end.i138_crit_edge ]
  %63 = phi i16 [ %58, %lor.lhs.false.i134.if.end.i138_crit_edge ], [ %52, %lor.lhs.false.i134.preheader.if.end.i138_crit_edge ]
  %conv.i128208 = zext i16 %63 to i32
  %mul.i135 = mul i32 %i.039.i126207232, 65535
  %div.i136 = udiv i32 %mul.i135, %sub.i119
  %sub15.i137 = add nsw i32 %conv.i128208, -2
  %64 = sub i32 %sub15.i137, %div.i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %64)
  %65 = icmp ult i32 %64, -3
  br i1 %65, label %if.end.i138.land.end16_crit_edge, label %for.cond.i124

if.end.i138.land.end16_crit_edge:                 ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end16

land.end16:                                       ; preds = %if.end.i138.land.end16_crit_edge, %lor.lhs.false.i134.land.end16_crit_edge, %for.body.i131.land.end16_crit_edge, %for.cond.i124.land.end16_crit_edge, %lor.lhs.false.i134.preheader.land.end16_crit_edge
  %cmp.lcssa.i139 = phi i1 [ true, %lor.lhs.false.i134.preheader.land.end16_crit_edge ], [ %cmp40.i125206233, %if.end.i138.land.end16_crit_edge ], [ %cmp.i122, %lor.lhs.false.i134.land.end16_crit_edge ], [ %cmp.i122, %for.body.i131.land.end16_crit_edge ], [ %cmp.i122, %for.cond.i124.land.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regamma_size.0)
  %cmp18 = icmp eq i32 %regamma_size.0, 256
  %cm_has_degamma = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 2
  %66 = ptrtoint ptr %cm_has_degamma to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %cm_has_degamma, align 4
  %cm_is_degamma_srgb = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 3
  %67 = ptrtoint ptr %cm_is_degamma_srgb to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %cm_is_degamma_srgb, align 1
  br i1 %cmp18, label %land.end16.if.then21_crit_edge, label %if.else

land.end16.if.then21_crit_edge:                   ; preds = %land.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

land.end16.thread213:                             ; preds = %for.body.lr.ph.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regamma_size.0)
  %cmp18215 = icmp eq i32 %regamma_size.0, 256
  %cm_has_degamma216 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 2
  %68 = ptrtoint ptr %cm_has_degamma216 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %cm_has_degamma216, align 4
  %cm_is_degamma_srgb217 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 3
  %69 = ptrtoint ptr %cm_is_degamma_srgb217 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %cm_is_degamma_srgb217, align 1
  br i1 %cmp18215, label %land.end16.thread213.if.then21_crit_edge, label %land.end16.thread213.if.then31_crit_edge

land.end16.thread213.if.then31_crit_edge:         ; preds = %land.end16.thread213
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

land.end16.thread213.if.then21_crit_edge:         ; preds = %land.end16.thread213
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

land.end16.thread:                                ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regamma_size.0)
  %cmp18175 = icmp eq i32 %regamma_size.0, 256
  %cm_has_degamma176 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 2
  %70 = ptrtoint ptr %cm_has_degamma176 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %cm_has_degamma176, align 4
  %cm_is_degamma_srgb177 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 3
  %71 = ptrtoint ptr %cm_is_degamma_srgb177 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %cm_is_degamma_srgb177, align 1
  br i1 %cmp18175, label %land.end16.thread.if.then21_crit_edge, label %land.end16.thread.if.else42_crit_edge

land.end16.thread.if.else42_crit_edge:            ; preds = %land.end16.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else42

land.end16.thread.if.then21_crit_edge:            ; preds = %land.end16.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

if.then21:                                        ; preds = %land.end16.thread.if.then21_crit_edge, %land.end16.thread213.if.then21_crit_edge, %land.end16.if.then21_crit_edge
  %cm_is_degamma_srgb181 = phi ptr [ %cm_is_degamma_srgb177, %land.end16.thread.if.then21_crit_edge ], [ %cm_is_degamma_srgb, %land.end16.if.then21_crit_edge ], [ %cm_is_degamma_srgb217, %land.end16.thread213.if.then21_crit_edge ]
  %cm_has_degamma180 = phi ptr [ %cm_has_degamma176, %land.end16.thread.if.then21_crit_edge ], [ %cm_has_degamma, %land.end16.if.then21_crit_edge ], [ %cm_has_degamma216, %land.end16.thread213.if.then21_crit_edge ]
  %72 = ptrtoint ptr %cm_is_degamma_srgb181 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %cm_is_degamma_srgb181, align 1
  %out_transfer_func = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 17
  %73 = ptrtoint ptr %out_transfer_func to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %out_transfer_func, align 4
  %type = getelementptr inbounds %struct.dc_transfer_func, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %type, align 4
  %76 = load ptr, ptr %out_transfer_func, align 4
  %tf = getelementptr inbounds %struct.dc_transfer_func, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %tf to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %tf, align 8
  %78 = load ptr, ptr %out_transfer_func, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gamma.i) #3
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cal_buffer.i) #3
  %79 = call ptr @memset(ptr %cal_buffer.i, i32 0, i32 144)
  br i1 %tobool12.not, label %land.rhs5.i, label %if.then21.do.end45.i_crit_edge

if.then21.do.end45.i_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end45.i

land.rhs5.i:                                      ; preds = %if.then21
  %.b59.i = load i1, ptr @__set_legacy_tf.__already_done, align 1
  br i1 %.b59.i, label %land.rhs5.i.if.then42.i_crit_edge, label %if.then.i143, !prof !22

land.rhs5.i.if.then42.i_crit_edge:                ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then42.i

if.then.i143:                                     ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @__set_legacy_tf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 201, i32 noundef 9, ptr noundef null) #3
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.then.i143, %land.rhs5.i.if.then42.i_crit_edge
  tail call void @kgdb_breakpoint() #3
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then42.i, %if.then21.do.end45.i_crit_edge
  %80 = ptrtoint ptr %cal_buffer.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %cal_buffer.i, align 8
  %call.i = tail call ptr @dc_create_gamma() #3
  %81 = ptrtoint ptr %gamma.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %gamma.i, align 4
  %tobool46.not.i = icmp eq ptr %call.i, null
  br i1 %tobool46.not.i, label %do.end45.i.__set_legacy_tf.exit.thread_crit_edge, label %if.end48.i

do.end45.i.__set_legacy_tf.exit.thread_crit_edge: ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_legacy_tf.exit.thread

if.end48.i:                                       ; preds = %do.end45.i
  %type.i = getelementptr inbounds %struct.dc_gamma, ptr %call.i, i32 0, i32 1
  %82 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %type.i, align 4
  %num_entries.i = getelementptr inbounds %struct.dc_gamma, ptr %call.i, i32 0, i32 2
  %83 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %regamma_size.0, ptr %num_entries.i, align 8
  %entries.i.i = getelementptr inbounds %struct.dc_gamma, ptr %call.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end48.i
  %i.088.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end48.i ]
  %arrayidx.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %i.088.i.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i.i, align 2
  %green.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %i.088.i.i, i32 1
  %86 = ptrtoint ptr %green.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %green.i.i, align 2
  %blue.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %i.088.i.i, i32 2
  %88 = ptrtoint ptr %blue.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %blue.i.i, align 2
  %arrayidx8.i.i = getelementptr [4096 x %struct.fixed31_32], ptr %entries.i.i, i32 0, i32 %i.088.i.i
  %conv1.i.i.i = zext i16 %85 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv1.i.i.i, 32
  %90 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %shl.i.i.i, ptr %arrayidx8.i.i, align 8
  %arrayidx11.i.i = getelementptr %struct.dc_gamma, ptr %call.i, i32 0, i32 3, i32 1, i32 %i.088.i.i
  %conv1.i82.i.i = zext i16 %87 to i64
  %shl.i83.i.i = shl nuw nsw i64 %conv1.i82.i.i, 32
  %91 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %shl.i83.i.i, ptr %arrayidx11.i.i, align 8
  %arrayidx15.i.i = getelementptr %struct.dc_gamma, ptr %call.i, i32 0, i32 3, i32 2, i32 %i.088.i.i
  %conv1.i84.i.i = zext i16 %89 to i64
  %shl.i85.i.i = shl nuw nsw i64 %conv1.i84.i.i, 32
  %92 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %shl.i85.i.i, ptr %arrayidx15.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.088.i.i, 1
  %exitcond90.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond90.not.i.i, label %__drm_lut_to_dc_gamma.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

__drm_lut_to_dc_gamma.exit.i:                     ; preds = %for.body.i.i
  %call50.i = call zeroext i1 @mod_color_calculate_regamma_params(ptr noundef %78, ptr noundef nonnull %call.i, i1 noundef zeroext true, i1 noundef zeroext %cmp, ptr noundef null, ptr noundef nonnull %cal_buffer.i) #3
  call void @dc_gamma_release(ptr noundef nonnull %gamma.i) #3
  br i1 %call50.i, label %__set_legacy_tf.exit, label %__drm_lut_to_dc_gamma.exit.i.__set_legacy_tf.exit.thread_crit_edge

__drm_lut_to_dc_gamma.exit.i.__set_legacy_tf.exit.thread_crit_edge: ; preds = %__drm_lut_to_dc_gamma.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_legacy_tf.exit.thread

__set_legacy_tf.exit.thread:                      ; preds = %__drm_lut_to_dc_gamma.exit.i.__set_legacy_tf.exit.thread_crit_edge, %do.end45.i.__set_legacy_tf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cal_buffer.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gamma.i) #3
  br label %cleanup

__set_legacy_tf.exit:                             ; preds = %__drm_lut_to_dc_gamma.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cal_buffer.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gamma.i) #3
  br label %if.end48

if.else:                                          ; preds = %land.end16
  br i1 %cmp.lcssa.i139, label %if.else.if.then31_crit_edge, label %if.else.if.else42_crit_edge

if.else.if.else42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else42

if.else.if.then31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

if.then31:                                        ; preds = %if.else.if.then31_crit_edge, %land.end16.thread213.if.then31_crit_edge
  %cm_has_degamma219222 = phi ptr [ %cm_has_degamma, %if.else.if.then31_crit_edge ], [ %cm_has_degamma216, %land.end16.thread213.if.then31_crit_edge ]
  %out_transfer_func32 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 17
  %93 = ptrtoint ptr %out_transfer_func32 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %out_transfer_func32, align 4
  %type33 = getelementptr inbounds %struct.dc_transfer_func, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %type33, align 4
  %96 = load ptr, ptr %out_transfer_func32, align 4
  %tf35 = getelementptr inbounds %struct.dc_transfer_func, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %tf35 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 3, ptr %tf35, align 8
  %98 = load ptr, ptr %out_transfer_func32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gamma.i145) #3
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cal_buffer.i146) #3
  %99 = call ptr @memset(ptr %cal_buffer.i146, i32 0, i32 144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %regamma_size.0)
  %cmp.i148.not = icmp eq i32 %regamma_size.0, 4096
  br i1 %cmp.i148.not, label %if.then31.do.end45.i155_crit_edge, label %land.rhs5.i150

if.then31.do.end45.i155_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end45.i155

land.rhs5.i150:                                   ; preds = %if.then31
  %.b67.i = load i1, ptr @__set_output_tf.__already_done, align 1
  br i1 %.b67.i, label %land.rhs5.i150.if.then42.i152_crit_edge, label %if.then.i151, !prof !22

land.rhs5.i150.if.then42.i152_crit_edge:          ; preds = %land.rhs5.i150
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then42.i152

if.then.i151:                                     ; preds = %land.rhs5.i150
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @__set_output_tf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #3
  br label %if.then42.i152

if.then42.i152:                                   ; preds = %if.then.i151, %land.rhs5.i150.if.then42.i152_crit_edge
  tail call void @kgdb_breakpoint() #3
  br label %do.end45.i155

do.end45.i155:                                    ; preds = %if.then42.i152, %if.then31.do.end45.i155_crit_edge
  %100 = ptrtoint ptr %cal_buffer.i146 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %cal_buffer.i146, align 8
  %call.i153 = tail call ptr @dc_create_gamma() #3
  %101 = ptrtoint ptr %gamma.i145 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i153, ptr %gamma.i145, align 4
  %tobool46.not.i154 = icmp eq ptr %call.i153, null
  br i1 %tobool46.not.i154, label %do.end45.i155.__set_output_tf.exit.thread_crit_edge, label %if.end48.i158

do.end45.i155.__set_output_tf.exit.thread_crit_edge: ; preds = %do.end45.i155
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_output_tf.exit.thread

if.end48.i158:                                    ; preds = %do.end45.i155
  %num_entries.i156 = getelementptr inbounds %struct.dc_gamma, ptr %call.i153, i32 0, i32 2
  %102 = ptrtoint ptr %num_entries.i156 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %regamma_size.0, ptr %num_entries.i156, align 8
  %entries.i.i157 = getelementptr inbounds %struct.dc_gamma, ptr %call.i153, i32 0, i32 3
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i.for.body20.i.i_crit_edge, %if.end48.i158
  %i.187.i.i = phi i32 [ %inc49.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ 0, %if.end48.i158 ]
  %arrayidx21.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %i.187.i.i
  %103 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx21.i.i, align 2
  %green26.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %i.187.i.i, i32 1
  %105 = ptrtoint ptr %green26.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %green26.i.i, align 2
  %blue30.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i115, i32 %i.187.i.i, i32 2
  %107 = ptrtoint ptr %blue30.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %blue30.i.i, align 2
  %arrayidx35.i.i = getelementptr [4096 x %struct.fixed31_32], ptr %entries.i.i157, i32 0, i32 %i.187.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp36.i.i) #3
  %conv37.i.i = zext i16 %104 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp36.i.i, i64 noundef %conv37.i.i, i64 noundef 65535) #3
  %109 = ptrtoint ptr %tmp36.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %tmp36.i.i, align 8
  %111 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %arrayidx35.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp36.i.i) #3
  %arrayidx40.i.i = getelementptr %struct.dc_gamma, ptr %call.i153, i32 0, i32 3, i32 1, i32 %i.187.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp41.i.i) #3
  %conv42.i.i = zext i16 %106 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp41.i.i, i64 noundef %conv42.i.i, i64 noundef 65535) #3
  %112 = ptrtoint ptr %tmp41.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %tmp41.i.i, align 8
  %114 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %arrayidx40.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp41.i.i) #3
  %arrayidx45.i.i = getelementptr %struct.dc_gamma, ptr %call.i153, i32 0, i32 3, i32 2, i32 %i.187.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp46.i.i) #3
  %conv47.i.i = zext i16 %108 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp46.i.i, i64 noundef %conv47.i.i, i64 noundef 65535) #3
  %115 = ptrtoint ptr %tmp46.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %tmp46.i.i, align 8
  %117 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %arrayidx45.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp46.i.i) #3
  %inc49.i.i = add nuw nsw i32 %i.187.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc49.i.i, 4096
  br i1 %exitcond.not.i.i, label %__drm_lut_to_dc_gamma.exit.i160, label %for.body20.i.i.for.body20.i.i_crit_edge

for.body20.i.i.for.body20.i.i_crit_edge:          ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body20.i.i

__drm_lut_to_dc_gamma.exit.i160:                  ; preds = %for.body20.i.i
  %tf.i = getelementptr inbounds %struct.dc_transfer_func, ptr %98, i32 0, i32 2
  %118 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %119)
  %cmp49.i = icmp eq i32 %119, 3
  %120 = ptrtoint ptr %gamma.i145 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %gamma.i145, align 4
  %type.i159 = getelementptr inbounds %struct.dc_gamma, ptr %121, i32 0, i32 1
  br i1 %cmp49.i, label %if.then50.i, label %if.end57.i

if.then50.i:                                      ; preds = %__drm_lut_to_dc_gamma.exit.i160
  %122 = ptrtoint ptr %type.i159 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4, ptr %type.i159, align 4
  %call51.i = call zeroext i1 @mod_color_calculate_degamma_params(ptr noundef null, ptr noundef %98, ptr noundef %121, i1 noundef zeroext true) #3
  call void @dc_gamma_release(ptr noundef nonnull %gamma.i145) #3
  br i1 %call51.i, label %if.then50.i.__set_output_tf.exit_crit_edge, label %if.then50.i.__set_output_tf.exit.thread_crit_edge

if.then50.i.__set_output_tf.exit.thread_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_output_tf.exit.thread

if.then50.i.__set_output_tf.exit_crit_edge:       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_output_tf.exit

if.end57.i:                                       ; preds = %__drm_lut_to_dc_gamma.exit.i160
  %123 = ptrtoint ptr %type.i159 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 3, ptr %type.i159, align 4
  %call55.i = call zeroext i1 @mod_color_calculate_regamma_params(ptr noundef %98, ptr noundef %121, i1 noundef zeroext false, i1 noundef zeroext %cmp, ptr noundef null, ptr noundef nonnull %cal_buffer.i146) #3
  call void @dc_gamma_release(ptr noundef nonnull %gamma.i145) #3
  br i1 %call55.i, label %if.end57.i.__set_output_tf.exit_crit_edge, label %if.end57.i.__set_output_tf.exit.thread_crit_edge

if.end57.i.__set_output_tf.exit.thread_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_output_tf.exit.thread

if.end57.i.__set_output_tf.exit_crit_edge:        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_output_tf.exit

__set_output_tf.exit.thread:                      ; preds = %if.end57.i.__set_output_tf.exit.thread_crit_edge, %if.then50.i.__set_output_tf.exit.thread_crit_edge, %do.end45.i155.__set_output_tf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cal_buffer.i146) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gamma.i145) #3
  br label %cleanup

__set_output_tf.exit:                             ; preds = %if.end57.i.__set_output_tf.exit_crit_edge, %if.then50.i.__set_output_tf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cal_buffer.i146) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gamma.i145) #3
  br label %if.end48

if.else42:                                        ; preds = %if.else.if.else42_crit_edge, %land.end16.thread.if.else42_crit_edge, %if.else.thread192
  %cm_has_degamma179183 = phi ptr [ %cm_has_degamma, %if.else.if.else42_crit_edge ], [ %cm_has_degamma176, %land.end16.thread.if.else42_crit_edge ], [ %cm_has_degamma190, %if.else.thread192 ]
  %out_transfer_func43 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 17
  %124 = ptrtoint ptr %out_transfer_func43 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %out_transfer_func43, align 4
  %type44 = getelementptr inbounds %struct.dc_transfer_func, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2, ptr %type44, align 4
  %127 = load ptr, ptr %out_transfer_func43, align 4
  %tf46 = getelementptr inbounds %struct.dc_transfer_func, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %tf46 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 3, ptr %tf46, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else42, %__set_output_tf.exit, %__set_legacy_tf.exit
  %cm_has_degamma178 = phi ptr [ %cm_has_degamma180, %__set_legacy_tf.exit ], [ %cm_has_degamma179183, %if.else42 ], [ %cm_has_degamma219222, %__set_output_tf.exit ]
  %129 = ptrtoint ptr %cm_has_degamma178 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %frombool11, ptr %cm_has_degamma178, align 4
  %ctm53 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc, i32 0, i32 11
  %130 = ptrtoint ptr %ctm53 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctm53, align 4
  %tobool54.not = icmp eq ptr %131, null
  br i1 %tobool54.not, label %if.else59, label %if.then55

if.then55:                                        ; preds = %if.end48
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 4
  %gamut_remap_matrix = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 18
  br label %for.body.i163

for.body.i163:                                    ; preds = %for.inc.i.for.body.i163_crit_edge, %if.then55
  %i.020.i = phi i32 [ 0, %if.then55 ], [ %inc.i166, %for.inc.i.for.body.i163_crit_edge ]
  %134 = and i32 %i.020.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %134)
  %cmp1.i = icmp eq i32 %134, 3
  br i1 %cmp1.i, label %for.body.i163.for.inc.i_crit_edge, label %if.end.i165

for.body.i163.for.inc.i_crit_edge:                ; preds = %for.body.i163
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end.i165:                                      ; preds = %for.body.i163
  call void @__sanitizer_cov_trace_pc() #5
  %div.neg18.i = lshr i32 %i.020.i, 2
  %sub.i164 = sub nsw i32 %i.020.i, %div.neg18.i
  %arrayidx3.i = getelementptr [9 x i64], ptr %133, i32 0, i32 %sub.i164
  %135 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx3.i, align 8
  %and5.i = and i64 %136, 9223372036854775807
  %sub6.i = sub nsw i64 0, %and5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %136)
  %tobool.not19.i = icmp slt i64 %136, 0
  %val.0.i = select i1 %tobool.not19.i, i64 %sub6.i, i64 %136
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i165, %for.body.i163.for.inc.i_crit_edge
  %val.0.sink.i = phi i64 [ %val.0.i, %if.end.i165 ], [ 0, %for.body.i163.for.inc.i_crit_edge ]
  %137 = getelementptr %struct.fixed31_32, ptr %gamut_remap_matrix, i32 %i.020.i
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %val.0.sink.i, ptr %137, align 8
  %inc.i166 = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i167 = icmp eq i32 %inc.i166, 12
  br i1 %exitcond.not.i167, label %__drm_ctm_to_dc_matrix.exit, label %for.inc.i.for.body.i163_crit_edge

for.inc.i.for.body.i163_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i163

__drm_ctm_to_dc_matrix.exit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  %enable_remap = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 18, i32 1
  %139 = ptrtoint ptr %enable_remap to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %enable_remap, align 8
  %enable_adjustment = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 1
  %140 = ptrtoint ptr %enable_adjustment to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %enable_adjustment, align 8
  br label %cleanup

if.else59:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %enable_remap61 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 18, i32 1
  %141 = ptrtoint ptr %enable_remap61 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %enable_remap61, align 8
  %enable_adjustment63 = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 19, i32 1
  %142 = ptrtoint ptr %enable_adjustment63 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %enable_adjustment63, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else59, %__drm_ctm_to_dc_matrix.exit, %__set_output_tf.exit.thread, %__set_legacy_tf.exit.thread, %if.then7.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.else59 ], [ 0, %__drm_ctm_to_dc_matrix.exit ], [ -22, %if.then.i ], [ -22, %if.then7.i ], [ -12, %__set_legacy_tf.exit.thread ], [ -12, %__set_output_tf.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dm_update_plane_color_mgmt(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %dc_plane_state) local_unnamed_addr #0 align 64 {
entry:
  %tmp36.i.i = alloca %struct.fixed31_32, align 8
  %tmp41.i.i = alloca %struct.fixed31_32, align 8
  %tmp46.i.i = alloca %struct.fixed31_32, align 8
  %gamma.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.dc_plane_state, ptr %dc_plane_state, i32 0, i32 22
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 8
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %2)
  %switch = icmp eq i32 %2, 18
  %spec.select98 = zext i1 %switch to i32
  %cm_has_degamma = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 2
  %3 = ptrtoint ptr %cm_has_degamma to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cm_has_degamma, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else57, label %if.then

if.then:                                          ; preds = %entry
  %degamma_lut1 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc, i32 0, i32 10
  %5 = ptrtoint ptr %degamma_lut1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %degamma_lut1, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.land.rhs_crit_edge, label %__extract_blob_lut.exit

if.then.land.rhs_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

__extract_blob_lut.exit:                          ; preds = %if.then
  %length.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i.i, align 4
  %div1.i.i = lshr i32 %8, 3
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div1.i.i)
  %cmp.not = icmp eq i32 %div1.i.i, 4096
  br i1 %cmp.not, label %__extract_blob_lut.exit.do.end44_crit_edge, label %__extract_blob_lut.exit.land.rhs_crit_edge

__extract_blob_lut.exit.land.rhs_crit_edge:       ; preds = %__extract_blob_lut.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

__extract_blob_lut.exit.do.end44_crit_edge:       ; preds = %__extract_blob_lut.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end44

land.rhs:                                         ; preds = %__extract_blob_lut.exit.land.rhs_crit_edge, %if.then.land.rhs_crit_edge
  %cond5.i107 = phi ptr [ %10, %__extract_blob_lut.exit.land.rhs_crit_edge ], [ null, %if.then.land.rhs_crit_edge ]
  %degamma_size.0105 = phi i32 [ %div1.i.i, %__extract_blob_lut.exit.land.rhs_crit_edge ], [ 0, %if.then.land.rhs_crit_edge ]
  %.b97 = load i1, ptr @amdgpu_dm_update_plane_color_mgmt.__already_done, align 1
  br i1 %.b97, label %land.rhs.if.then41_crit_edge, label %if.then10, !prof !22

land.rhs.if.then41_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then41

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @amdgpu_dm_update_plane_color_mgmt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 479, i32 noundef 9, ptr noundef null) #3
  br label %if.then41

if.then41:                                        ; preds = %if.then10, %land.rhs.if.then41_crit_edge
  tail call void @kgdb_breakpoint() #3
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %__extract_blob_lut.exit.do.end44_crit_edge
  %cond5.i108 = phi ptr [ %10, %__extract_blob_lut.exit.do.end44_crit_edge ], [ %cond5.i107, %if.then41 ]
  %degamma_size.0106 = phi i32 [ 4096, %__extract_blob_lut.exit.do.end44_crit_edge ], [ %degamma_size.0105, %if.then41 ]
  %in_transfer_func = getelementptr inbounds %struct.dc_plane_state, ptr %dc_plane_state, i32 0, i32 11
  %11 = ptrtoint ptr %in_transfer_func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_transfer_func, align 4
  %type = getelementptr inbounds %struct.dc_transfer_func, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  %cm_is_degamma_srgb = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 3
  %14 = ptrtoint ptr %cm_is_degamma_srgb to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cm_is_degamma_srgb, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool45.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %in_transfer_func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in_transfer_func, align 4
  %tf50 = getelementptr inbounds %struct.dc_transfer_func, ptr %17, i32 0, i32 2
  %.spec.select98 = select i1 %tobool45.not, i32 3, i32 %spec.select98
  %18 = ptrtoint ptr %tf50 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.spec.select98, ptr %tf50, align 8
  %19 = load ptr, ptr %in_transfer_func, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gamma.i) #3
  %call.i = tail call ptr @dc_create_gamma() #3
  %20 = ptrtoint ptr %gamma.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %gamma.i, align 4
  %tobool.not.i100 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i100, label %do.end44.__set_input_tf.exit.thread_crit_edge, label %if.end.i

do.end44.__set_input_tf.exit.thread_crit_edge:    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_input_tf.exit.thread

if.end.i:                                         ; preds = %do.end44
  %type.i = getelementptr inbounds %struct.dc_gamma, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %type.i, align 4
  %num_entries.i = getelementptr inbounds %struct.dc_gamma, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %degamma_size.0106, ptr %num_entries.i, align 8
  %entries.i.i = getelementptr inbounds %struct.dc_gamma, ptr %call.i, i32 0, i32 3
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i.for.body20.i.i_crit_edge, %if.end.i
  %i.187.i.i = phi i32 [ %inc49.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ 0, %if.end.i ]
  %arrayidx21.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i108, i32 %i.187.i.i
  %23 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx21.i.i, align 2
  %green26.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i108, i32 %i.187.i.i, i32 1
  %25 = ptrtoint ptr %green26.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %green26.i.i, align 2
  %blue30.i.i = getelementptr %struct.drm_color_lut, ptr %cond5.i108, i32 %i.187.i.i, i32 2
  %27 = ptrtoint ptr %blue30.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %blue30.i.i, align 2
  %arrayidx35.i.i = getelementptr [4096 x %struct.fixed31_32], ptr %entries.i.i, i32 0, i32 %i.187.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp36.i.i) #3
  %conv37.i.i = zext i16 %24 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp36.i.i, i64 noundef %conv37.i.i, i64 noundef 65535) #3
  %29 = ptrtoint ptr %tmp36.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tmp36.i.i, align 8
  %31 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx35.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp36.i.i) #3
  %arrayidx40.i.i = getelementptr %struct.dc_gamma, ptr %call.i, i32 0, i32 3, i32 1, i32 %i.187.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp41.i.i) #3
  %conv42.i.i = zext i16 %26 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp41.i.i, i64 noundef %conv42.i.i, i64 noundef 65535) #3
  %32 = ptrtoint ptr %tmp41.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tmp41.i.i, align 8
  %34 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx40.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp41.i.i) #3
  %arrayidx45.i.i = getelementptr %struct.dc_gamma, ptr %call.i, i32 0, i32 3, i32 2, i32 %i.187.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp46.i.i) #3
  %conv47.i.i = zext i16 %28 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp46.i.i, i64 noundef %conv47.i.i, i64 noundef 65535) #3
  %35 = ptrtoint ptr %tmp46.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tmp46.i.i, align 8
  %37 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx45.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp46.i.i) #3
  %inc49.i.i = add nuw nsw i32 %i.187.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc49.i.i, 4096
  br i1 %exitcond.not.i.i, label %__drm_lut_to_dc_gamma.exit.i, label %for.body20.i.i.for.body20.i.i_crit_edge

for.body20.i.i.for.body20.i.i_crit_edge:          ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body20.i.i

__drm_lut_to_dc_gamma.exit.i:                     ; preds = %for.body20.i.i
  %38 = ptrtoint ptr %gamma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gamma.i, align 4
  %call1.i = call zeroext i1 @mod_color_calculate_degamma_params(ptr noundef null, ptr noundef %19, ptr noundef %39, i1 noundef zeroext true) #3
  call void @dc_gamma_release(ptr noundef nonnull %gamma.i) #3
  br i1 %call1.i, label %__set_input_tf.exit, label %__drm_lut_to_dc_gamma.exit.i.__set_input_tf.exit.thread_crit_edge

__drm_lut_to_dc_gamma.exit.i.__set_input_tf.exit.thread_crit_edge: ; preds = %__drm_lut_to_dc_gamma.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__set_input_tf.exit.thread

__set_input_tf.exit.thread:                       ; preds = %__drm_lut_to_dc_gamma.exit.i.__set_input_tf.exit.thread_crit_edge, %do.end44.__set_input_tf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gamma.i) #3
  br label %cleanup

__set_input_tf.exit:                              ; preds = %__drm_lut_to_dc_gamma.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gamma.i) #3
  br label %if.end76

if.else57:                                        ; preds = %entry
  %cm_is_degamma_srgb58 = getelementptr inbounds %struct.dm_crtc_state, ptr %crtc, i32 0, i32 3
  %40 = ptrtoint ptr %cm_is_degamma_srgb58 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cm_is_degamma_srgb58, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool59.not = icmp eq i8 %41, 0
  %in_transfer_func71 = getelementptr inbounds %struct.dc_plane_state, ptr %dc_plane_state, i32 0, i32 11
  %42 = ptrtoint ptr %in_transfer_func71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_transfer_func71, align 4
  %type72 = getelementptr inbounds %struct.dc_transfer_func, ptr %43, i32 0, i32 1
  br i1 %tobool59.not, label %if.else70, label %if.then60

if.then60:                                        ; preds = %if.else57
  %44 = ptrtoint ptr %type72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %type72, align 4
  %45 = ptrtoint ptr %in_transfer_func71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %in_transfer_func71, align 4
  %tf64 = getelementptr inbounds %struct.dc_transfer_func, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %tf64 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.select98, ptr %tf64, align 8
  br i1 %switch, label %land.lhs.true, label %if.then60.if.end76_crit_edge

if.then60.if.end76_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end76

land.lhs.true:                                    ; preds = %if.then60
  %48 = ptrtoint ptr %in_transfer_func71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %in_transfer_func71, align 4
  %call67 = tail call zeroext i1 @mod_color_calculate_degamma_params(ptr noundef null, ptr noundef %49, ptr noundef null, i1 noundef zeroext false) #3
  br i1 %call67, label %land.lhs.true.if.end76_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end76

if.else70:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %type72 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %type72, align 4
  %51 = ptrtoint ptr %in_transfer_func71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %in_transfer_func71, align 4
  %tf74 = getelementptr inbounds %struct.dc_transfer_func, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %tf74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %tf74, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else70, %land.lhs.true.if.end76_crit_edge, %if.then60.if.end76_crit_edge, %__set_input_tf.exit
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %land.lhs.true.cleanup_crit_edge, %__set_input_tf.exit.thread
  %retval.0 = phi i32 [ 0, %if.end76 ], [ -12, %land.lhs.true.cleanup_crit_edge ], [ -12, %__set_input_tf.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_color_calculate_degamma_params(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_create_gamma() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_color_calculate_regamma_params(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_gamma_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c", i32 303, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c", i32 312, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c", i32 479, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c", i32 201, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_color.c", i32 230, i32 2}
!11 = distinct !{null, !12, !"dc_fixpt_zero", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 67, i32 32}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i8 0, i8 2}
