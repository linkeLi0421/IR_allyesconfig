; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_hw_sequencer.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_hw_sequencer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.out_csc_color_matrix_type = type { i32, [12 x i16] }
%struct.tg_color = type { i16, i16, i16 }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.graphics_object_id = type { i32 }
%struct.csdp_ref_clk_ds_params = type { i8, i32, i32, i32 }
%struct.pixel_clk_flags = type { i8, [3 x i8] }
%struct.encoder_info_frame = type { %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.link_resource = type { ptr }
%struct.pll_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.pipe_update_flags = type { i32 }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon.26, %union.large_integer, i8 }
%union.anon.26 = type { %struct.anon.28 }
%struct.anon.28 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%union.large_integer = type { i64 }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.35 }
%struct.anon.35 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.36, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.18 }
%union.anon.18 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.19 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.19 = type { i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.24, i32, i32, i32, i32 }
%struct.anon.24 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.25 }
%struct.anon.25 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.36 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dc_transfer_func = type { %struct.kref, i32, i32, i32, %union.anon.22 }
%union.anon.22 = type { %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], [1025 x %struct.fixed31_32], i16, i16, i16, i16 }

@output_csc_matrix = internal constant { [8 x %struct.out_csc_color_matrix_type], [32 x i8] } { [8 x %struct.out_csc_color_matrix_type] [%struct.out_csc_color_matrix_type { i32 0, [12 x i16] [i16 8192, i16 0, i16 0, i16 0, i16 0, i16 8192, i16 0, i16 0, i16 0, i16 0, i16 8192, i16 0] }, %struct.out_csc_color_matrix_type { i32 1, [12 x i16] [i16 7015, i16 0, i16 0, i16 513, i16 0, i16 7015, i16 0, i16 513, i16 0, i16 0, i16 7015, i16 513] }, %struct.out_csc_color_matrix_type { i32 2, [12 x i16] [i16 3588, i16 -3004, i16 -583, i16 4100, i16 2097, i16 4118, i16 800, i16 513, i16 -1211, i16 -2377, i16 3588, i16 4100] }, %struct.out_csc_color_matrix_type { i32 3, [12 x i16] [i16 3588, i16 -3259, i16 -329, i16 4100, i16 1491, i16 5017, i16 506, i16 513, i16 -822, i16 -2765, i16 3588, i16 4100] }, %struct.out_csc_color_matrix_type { i32 5, [12 x i16] [i16 3584, i16 -3001, i16 -583, i16 4096, i16 2449, i16 4809, i16 934, i16 512, i16 -1209, i16 -2375, i16 3584, i16 4096] }, %struct.out_csc_color_matrix_type { i32 6, [12 x i16] [i16 3584, i16 -3255, i16 -329, i16 4096, i16 1742, i16 5859, i16 591, i16 512, i16 -821, i16 -2763, i16 3584, i16 4096] }, %struct.out_csc_color_matrix_type { i32 4, [12 x i16] [i16 4096, i16 -3767, i16 -329, i16 0, i16 2152, i16 5554, i16 486, i16 0, i16 -1144, i16 -2952, i16 4096, i16 0] }, %struct.out_csc_color_matrix_type { i32 7, [12 x i16] [i16 0, i16 0, i16 0, i16 4096, i16 0, i16 0, i16 0, i16 512, i16 0, i16 0, i16 0, i16 4096] }], [32 x i8] zeroinitializer }, align 32
@black_color_format = internal constant { [6 x %struct.tg_color], [60 x i8] } { [6 x %struct.tg_color] [%struct.tg_color zeroinitializer, %struct.tg_color { i16 64, i16 64, i16 64 }, %struct.tg_color { i16 512, i16 64, i16 512 }, %struct.tg_color { i16 500, i16 64, i16 500 }, %struct.tg_color { i16 418, i16 32, i16 418 }, %struct.tg_color { i16 255, i16 255, i16 0 }], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: failed to blank crtc!\0A\00", [37 x i8] zeroinitializer }, align 32
@__const.get_mpctree_visual_confirm_color.pipe_colors = private unnamed_addr constant [6 x %struct.tg_color] [%struct.tg_color { i16 1023, i16 0, i16 0 }, %struct.tg_color { i16 1023, i16 255, i16 0 }, %struct.tg_color { i16 1023, i16 1023, i16 0 }, %struct.tg_color { i16 0, i16 1023, i16 0 }, %struct.tg_color { i16 0, i16 0, i16 1023 }, %struct.tg_color { i16 511, i16 0, i16 511 }], align 2
@switch.table.find_color_matrix = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 9, i64 10, i64 13, i64 20]
@__sancov_gen_cov_switch_values.1 = internal global [23 x i64] [i64 21, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"output_csc_matrix\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 76, i32 47 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"black_color_format\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 56, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_hw_sequencer.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 288, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"switch.table.find_color_matrix\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @output_csc_matrix, ptr @black_color_format, ptr @.str, ptr @switch.table.find_color_matrix], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_csc_matrix to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @black_color_format to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.find_color_matrix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local ptr @find_color_matrix(i32 noundef %color_space, ptr nocapture noundef writeonly %array_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %color_space, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 17
  br i1 %0, label %switch.hole_check, label %entry.if.else6.i_crit_edge

entry.if.else6.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else6.i

if.else6.i:                                       ; preds = %switch.hole_check.if.else6.i_crit_edge, %entry.if.else6.i_crit_edge
  %1 = and i32 %color_space, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %switch.i.i = icmp eq i32 %1, 6
  br i1 %switch.i.i, label %if.else6.i.for.end_crit_edge, label %if.else9.i

if.else6.i.for.end_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.else9.i:                                       ; preds = %if.else6.i
  %2 = zext i32 %color_space to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %color_space, label %for.end.fold.split [
    i32 9, label %if.else9.i.for.end_crit_edge
    i32 10, label %for.inc.4
    i32 13, label %for.inc.5.thread
    i32 20, label %if.else9.i.for.inc.6_crit_edge
    i32 6, label %if.else9.i.for.inc.6_crit_edge29
  ]

if.else9.i.for.inc.6_crit_edge29:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.else9.i.for.inc.6_crit_edge:                   ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.else9.i.for.end_crit_edge:                     ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5.thread:                                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6:                                        ; preds = %if.else9.i.for.inc.6_crit_edge, %if.else9.i.for.inc.6_crit_edge29
  br label %for.end

for.end.fold.split:                               ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 93343, %switch.tableidx
  %3 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.lobit.not = icmp eq i32 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else6.i_crit_edge, label %switch.lookup

switch.hole_check.if.else6.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else6.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.find_color_matrix, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.end

for.end:                                          ; preds = %switch.lookup, %for.end.fold.split, %for.inc.6, %for.inc.4, %for.inc.5.thread, %if.else9.i.for.end_crit_edge, %if.else6.i.for.end_crit_edge
  %i.07.lcssa = phi i32 [ 5, %for.inc.4 ], [ 7, %for.inc.6 ], [ 3, %if.else6.i.for.end_crit_edge ], [ 4, %if.else9.i.for.end_crit_edge ], [ 6, %for.inc.5.thread ], [ 0, %for.end.fold.split ], [ %switch.load, %switch.lookup ]
  %regval = getelementptr [8 x %struct.out_csc_color_matrix_type], ptr @output_csc_matrix, i32 0, i32 %i.07.lcssa, i32 1
  %5 = ptrtoint ptr %array_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %array_size, align 4
  ret ptr %regval
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @color_space_to_black_color(ptr nocapture noundef readnone %dc, i32 noundef %colorspace, ptr nocapture noundef writeonly %black_color) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %colorspace to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %colorspace, label %entry.sw.epilog_crit_edge [
    i32 5, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge5
    i32 20, label %entry.sw.bb_crit_edge6
    i32 9, label %entry.sw.bb_crit_edge7
    i32 10, label %entry.sw.bb_crit_edge8
    i32 13, label %entry.sw.bb_crit_edge9
    i32 3, label %sw.bb1
    i32 0, label %entry.sw.bb2_crit_edge
    i32 1, label %entry.sw.bb2_crit_edge10
    i32 2, label %entry.sw.bb2_crit_edge11
    i32 4, label %entry.sw.bb2_crit_edge12
    i32 7, label %entry.sw.bb2_crit_edge13
    i32 8, label %entry.sw.bb2_crit_edge14
    i32 11, label %entry.sw.bb2_crit_edge15
    i32 12, label %entry.sw.bb2_crit_edge16
    i32 14, label %entry.sw.bb2_crit_edge17
    i32 15, label %entry.sw.bb2_crit_edge18
    i32 16, label %entry.sw.bb2_crit_edge19
    i32 17, label %entry.sw.bb2_crit_edge20
    i32 18, label %entry.sw.bb2_crit_edge21
    i32 19, label %entry.sw.bb2_crit_edge22
  ]

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %1 = call ptr @memcpy(ptr %black_color, ptr getelementptr inbounds ([6 x %struct.tg_color], ptr @black_color_format, i32 0, i32 3), i32 6)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = call ptr @memcpy(ptr %black_color, ptr getelementptr inbounds ([6 x %struct.tg_color], ptr @black_color_format, i32 0, i32 1), i32 6)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge10, %entry.sw.bb2_crit_edge11, %entry.sw.bb2_crit_edge12, %entry.sw.bb2_crit_edge13, %entry.sw.bb2_crit_edge14, %entry.sw.bb2_crit_edge15, %entry.sw.bb2_crit_edge16, %entry.sw.bb2_crit_edge17, %entry.sw.bb2_crit_edge18, %entry.sw.bb2_crit_edge19, %entry.sw.bb2_crit_edge20, %entry.sw.bb2_crit_edge21, %entry.sw.bb2_crit_edge22
  %3 = call ptr @memcpy(ptr %black_color, ptr @black_color_format, i32 6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hwss_wait_for_blank_complete(ptr noundef %tg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg, align 4
  %is_blanked = getelementptr inbounds %struct.timing_generator_funcs, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %is_blanked to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_blanked, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %entry.for.body_crit_edge
  %counter.014 = phi i32 [ %inc, %if.end4.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tg, align 4
  %is_blanked2 = getelementptr inbounds %struct.timing_generator_funcs, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %is_blanked2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_blanked2, align 4
  %call = tail call zeroext i1 %7(ptr noundef %tg) #7
  br i1 %call, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #7
  %inc = add nuw nsw i32 %counter.014, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.then6, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ true, %entry.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_mpctree_visual_confirm_color(ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef writeonly %color) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %top_pipe.0 = phi ptr [ %pipe_ctx, %entry ], [ %1, %while.cond.while.cond_crit_edge ]
  %top_pipe1 = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe.0, i32 0, i32 9
  %0 = ptrtoint ptr %top_pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %top_pipe1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe.0, i32 0, i32 7
  %2 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pipe_idx, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [6 x %struct.tg_color], ptr @__const.get_mpctree_visual_confirm_color.pipe_colors, i32 0, i32 %idxprom
  %4 = call ptr @memcpy(ptr %color, ptr %arrayidx, i32 6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @get_surface_visual_confirm_color(ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef writeonly %color) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 9
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb5
    i32 7, label %sw.bb16
    i32 8, label %sw.bb19
    i32 6, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1023, ptr %color, align 2
  %4 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_ctx, align 8
  %layer_index = getelementptr inbounds %struct.dc_plane_state, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %layer_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %layer_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %8 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1023, ptr %color_b_cb, align 2
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %9 = ptrtoint ptr %color_g_y to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 511, ptr %color_g_y, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %color_b_cb7 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %10 = ptrtoint ptr %color_b_cb7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1023, ptr %color_b_cb7, align 2
  %11 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe_ctx, align 8
  %layer_index9 = getelementptr inbounds %struct.dc_plane_state, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %layer_index9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %layer_index9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10 = icmp sgt i32 %14, 0
  br i1 %cmp10, label %if.then12, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %color_g_y14 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %15 = ptrtoint ptr %color_g_y14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1023, ptr %color_g_y14, align 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %color_g_y18 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %16 = ptrtoint ptr %color_g_y18 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1023, ptr %color_g_y18, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %color_g_y21 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %17 = ptrtoint ptr %color_g_y21 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1023, ptr %color_g_y21, align 2
  %18 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1023, ptr %color, align 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %19 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1023, ptr %color, align 2
  %color_b_cb28 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %20 = ptrtoint ptr %color_b_cb28 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1023, ptr %color_b_cb28, align 2
  %color_g_y30 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %21 = ptrtoint ptr %color_g_y30 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1023, ptr %color_g_y30, align 2
  %22 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe_ctx, align 8
  %layer_index32 = getelementptr inbounds %struct.dc_plane_state, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %layer_index32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %layer_index32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33 = icmp sgt i32 %25, 0
  br i1 %cmp33, label %if.then35, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then35:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %color_g_y30 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 225, ptr %color_g_y30, align 2
  %27 = ptrtoint ptr %color_b_cb28 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %color_b_cb28, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then35, %sw.bb24.sw.epilog_crit_edge, %sw.bb19, %sw.bb16, %if.then12, %sw.bb5.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_hdr_visual_confirm_color(ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef writeonly %color) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %top_pipe_ctx.0 = phi ptr [ %pipe_ctx, %entry ], [ %1, %while.cond.while.cond_crit_edge ]
  %top_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe_ctx.0, i32 0, i32 9
  %0 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %top_pipe, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %format = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe_ctx.0, i32 0, i32 2, i32 0, i32 9
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb13
  ]

sw.bb:                                            ; preds = %while.end
  %stream = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe_ctx.0, i32 0, i32 1
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream, align 4
  %out_transfer_func = getelementptr inbounds %struct.dc_stream_state, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %out_transfer_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_transfer_func, align 4
  %tf = getelementptr inbounds %struct.dc_transfer_func, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tf, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %10, label %sw.bb.sw.epilog_crit_edge [
    i32 2, label %if.then
    i32 7, label %if.then8
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1023, ptr %color, align 2
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1023, ptr %color, align 2
  %color_b_cb = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %14 = ptrtoint ptr %color_b_cb to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1023, ptr %color_b_cb, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.end
  %stream14 = getelementptr inbounds %struct.pipe_ctx, ptr %top_pipe_ctx.0, i32 0, i32 1
  %15 = ptrtoint ptr %stream14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream14, align 4
  %out_transfer_func15 = getelementptr inbounds %struct.dc_stream_state, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %out_transfer_func15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_transfer_func15, align 4
  %tf16 = getelementptr inbounds %struct.dc_transfer_func, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %tf16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tf16, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %20, label %sw.bb13.sw.epilog_crit_edge [
    i32 2, label %if.then19
    i32 7, label %if.then28
  ]

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %color_b_cb21 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %22 = ptrtoint ptr %color_b_cb21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1023, ptr %color_b_cb21, align 2
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %color_g_y = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %23 = ptrtoint ptr %color_g_y to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1023, ptr %color_g_y, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 511, ptr %color, align 2
  %color_b_cb36 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 2
  %25 = ptrtoint ptr %color_b_cb36 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 511, ptr %color_b_cb36, align 2
  %color_g_y39 = getelementptr inbounds %struct.tg_color, ptr %color, i32 0, i32 1
  %26 = ptrtoint ptr %color_g_y39 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 511, ptr %color_g_y39, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then28, %if.then19, %sw.bb13.sw.epilog_crit_edge, %if.then8, %if.then, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_surface_tile_visual_confirm_color(ptr nocapture noundef readonly %pipe_ctx, ptr nocapture noundef writeonly %color) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %bottom_pipe_ctx.0 = phi ptr [ %pipe_ctx, %entry ], [ %1, %while.cond.while.cond_crit_edge ]
  %bottom_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %bottom_pipe_ctx.0, i32 0, i32 10
  %0 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bottom_pipe, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = ptrtoint ptr %bottom_pipe_ctx.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bottom_pipe_ctx.0, align 8
  %tiling_info = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %tiling_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tiling_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  br i1 %cond, label %sw.bb, label %while.end.sw.epilog_crit_edge

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1023, ptr %color, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_hw_sequencer.c", i32 288, i32 3}
!2 = !{ptr @output_csc_matrix, !3, !"output_csc_matrix", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_hw_sequencer.c", i32 76, i32 47}
!4 = !{ptr @black_color_format, !5, !"black_color_format", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_hw_sequencer.c", i32 56, i32 30}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
