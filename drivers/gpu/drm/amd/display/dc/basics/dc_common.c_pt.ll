; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/basics/dc_common.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/dc_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon, %union.large_integer, i8 }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%union.large_integer = type { i64 }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.fixed31_32 = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.67 }
%struct.anon.67 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pipe_ctx = type { ptr, ptr, %struct.plane_resource, %struct.stream_resource, %struct.link_resource, ptr, %struct.pll_settings, i8, i8, ptr, ptr, ptr, ptr, %union.pipe_update_flags, ptr, ptr, i8 }
%struct.plane_resource = type { %struct.scaler_data, ptr, ptr, ptr, ptr, ptr, i8, %struct.dcn_fe_bandwidth }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
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
%struct.dc_bias_and_scale = type { i16, i16, i16, i16, i16, i16 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.is_rgb_cspace = private unnamed_addr constant [14 x i8] c"is_rgb_cspace\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/dc_common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 47, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_rgb_cspace(i32 noundef %output_color_space) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %output_color_space, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 14
  br i1 %0, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.is_rgb_cspace, i32 noundef 47) #3
  tail call void @kgdb_breakpoint() #3
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 16181, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  %switch.cast = trunc i32 %switch.tableidx to i14
  %switch.downshift = lshr i14 -4913, %switch.cast
  %2 = and i14 %switch.downshift, 1
  %3 = sext i14 %2 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.masked = icmp ne i14 %2, 0
  br label %return

return:                                           ; preds = %switch.lookup, %do.body
  %retval.0 = phi i1 [ false, %do.body ], [ %switch.masked, %switch.lookup ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_lower_pipe_tree_visible(ptr nocapture noundef readonly %pipe_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_ctx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %visible = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %visible, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bottom_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 10
  %4 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bottom_pipe, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %call = tail call zeroext i1 @is_lower_pipe_tree_visible(ptr noundef nonnull %5)
  br i1 %call, label %land.lhs.true4.return_crit_edge, label %land.lhs.true4.if.end7_crit_edge

land.lhs.true4.if.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end7:                                          ; preds = %land.lhs.true4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %land.lhs.true4.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end7 ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true4.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_upper_pipe_tree_visible(ptr nocapture noundef readonly %pipe_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_ctx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %visible = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %visible, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %top_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 9
  %4 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %top_pipe, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %call = tail call zeroext i1 @is_upper_pipe_tree_visible(ptr noundef nonnull %5)
  br i1 %call, label %land.lhs.true4.return_crit_edge, label %land.lhs.true4.if.end7_crit_edge

land.lhs.true4.if.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end7:                                          ; preds = %land.lhs.true4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %land.lhs.true4.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end7 ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true4.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_pipe_tree_visible(ptr nocapture noundef readonly %pipe_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_ctx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %visible = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %visible, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %top_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 9
  %4 = ptrtoint ptr %top_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %top_pipe, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true4:                                   ; preds = %if.end
  %call = tail call zeroext i1 @is_upper_pipe_tree_visible(ptr noundef nonnull %5)
  br i1 %call, label %land.lhs.true4.return_crit_edge, label %land.lhs.true4.if.end7_crit_edge

land.lhs.true4.if.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end7:                                          ; preds = %land.lhs.true4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %bottom_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 10
  %6 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bottom_pipe, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.end7
  %call11 = tail call zeroext i1 @is_lower_pipe_tree_visible(ptr noundef nonnull %7)
  br i1 %call11, label %land.lhs.true9.return_crit_edge, label %land.lhs.true9.if.end13_crit_edge

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %land.lhs.true9.return_crit_edge, %land.lhs.true4.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true4.return_crit_edge ], [ true, %land.lhs.true9.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @build_prescale_params(ptr nocapture noundef writeonly %bias_and_scale, ptr nocapture noundef readonly %plane_state) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp = alloca %struct.fixed31_32, align 8
  %agg.tmp7 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 22
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp = icmp ult i32 %1, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %cmp2.not = icmp eq i32 %1, 26
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %enable_adjustment = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %enable_adjustment to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_adjustment, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true4

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %coeff_reduction_factor = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 14
  %4 = ptrtoint ptr %coeff_reduction_factor to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %coeff_reduction_factor, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp7, i64 noundef 256, i64 noundef 255) #3
  %6 = ptrtoint ptr %coeff_reduction_factor to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack = load i64, ptr %coeff_reduction_factor, align 8
  %7 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  %8 = ptrtoint ptr %agg.tmp7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.0.load = load i64, ptr %agg.tmp7, align 8
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %.fca.0.load, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp, [1 x i64] %7, [1 x i64] %.fca.0.insert) #3
  %9 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.0.load16 = load i64, ptr %agg.tmp, align 8
  %.fca.0.insert17 = insertvalue [1 x i64] poison, i64 %.fca.0.load16, 0
  %call = call zeroext i16 @fixed_point_to_int_frac([1 x i64] %.fca.0.insert17, i8 noundef zeroext 2, i8 noundef zeroext 13) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink30 = phi i16 [ %call, %if.then ], [ 8192, %land.lhs.true4.if.end_crit_edge ], [ 8192, %land.lhs.true3.if.end_crit_edge ], [ 8192, %entry.if.end_crit_edge ]
  %scale_blue12 = getelementptr inbounds %struct.dc_bias_and_scale, ptr %bias_and_scale, i32 0, i32 4
  %10 = ptrtoint ptr %scale_blue12 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink30, ptr %scale_blue12, align 2
  %11 = ptrtoint ptr %bias_and_scale to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink30, ptr %bias_and_scale, align 2
  %scale_green14 = getelementptr inbounds %struct.dc_bias_and_scale, ptr %bias_and_scale, i32 0, i32 2
  %12 = ptrtoint ptr %scale_green14 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink30, ptr %scale_green14, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fixed_point_to_int_frac([1 x i64], i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8, [1 x i64], [1 x i64]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/dc_common.c", i32 47, i32 3}
!2 = !{ptr @__func__.is_rgb_cspace, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i8 0, i8 2}
