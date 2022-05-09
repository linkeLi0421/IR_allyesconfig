; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-mdp/mtk_mdp_regs.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-mdp/mtk_mdp_regs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtk_mdp_ctx = type { %struct.list_head, %struct.mtk_mdp_frame, %struct.mtk_mdp_frame, i32, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.mtk_mdp_ctrls, i8, i32, i32, i32, i32, %struct.mtk_mdp_vpu, %struct.mutex, %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.mtk_mdp_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], [8 x i32], %struct.mtk_mdp_addr, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.mtk_mdp_addr = type { [3 x i32] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mtk_mdp_ctrls = type { ptr, ptr, ptr, ptr }
%struct.mtk_mdp_vpu = type { ptr, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mdp_process_vsi = type <{ %struct.mdp_config, %struct.mdp_buffer, %struct.mdp_config, %struct.mdp_buffer, %struct.mdp_config_misc }>
%struct.mdp_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mdp_buffer = type { [3 x i64], [3 x i32], i32 }
%struct.mdp_config_misc = type { i32, i32, i32, i32 }
%struct.mtk_mdp_fmt = type { i32, i16, i16, [8 x i8], [8 x i8], i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 825381965, i64 842091854, i64 842091865, i64 842093913, i64 842094158, i64 842094169]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 825381965, i64 842091854, i64 842091865, i64 842093913, i64 842094158, i64 842094169]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_hw_set_input_addr(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %src_buffer = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %src_buffer to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv, ptr %src_buffer, align 4
  %arrayidx.1 = getelementptr [3 x i32], ptr %addr, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = zext i32 %6 to i64
  %arrayidx2.1 = getelementptr %struct.mdp_process_vsi, ptr %1, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %conv.1, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr [3 x i32], ptr %addr, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %conv.2 = zext i32 %9 to i64
  %arrayidx2.2 = getelementptr %struct.mdp_process_vsi, ptr %1, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %conv.2, ptr %arrayidx2.2, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_hw_set_output_addr(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %dst_buffer = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %dst_buffer to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv, ptr %dst_buffer, align 4
  %arrayidx.1 = getelementptr [3 x i32], ptr %addr, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = zext i32 %6 to i64
  %arrayidx2.1 = getelementptr %struct.mdp_process_vsi, ptr %1, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %conv.1, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr [3 x i32], ptr %addr, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %conv.2 = zext i32 %9 to i64
  %arrayidx2.2 = getelementptr %struct.mdp_process_vsi, ptr %1, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %conv.2, ptr %arrayidx2.2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mtk_mdp_hw_set_in_size(ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %s_frame = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %crop = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crop, align 4
  %crop_x = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %crop_x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %crop_x, align 4
  %top = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 1
  %5 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %top, align 4
  %crop_y = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %crop_y to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %crop_y, align 4
  %width = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %crop_w = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %crop_w to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %crop_w, align 4
  %height = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %crop_h = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %crop_h to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %crop_h, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %1, align 4
  %y = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %y, align 4
  %16 = ptrtoint ptr %s_frame to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_frame, align 4
  %w = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %w, align 4
  %height5 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height5, align 4
  %h = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %h, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_hw_set_in_image_format(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %fmt = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %num_comp = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_comp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_comp, align 2
  %conv = zext i16 %5 to i32
  %plane_num = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %plane_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %plane_num, align 4
  %7 = load ptr, ptr %fmt, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.epilog.i [
    i32 842091854, label %entry.mtk_mdp_map_color_format.exit_crit_edge
    i32 842094158, label %entry.mtk_mdp_map_color_format.exit_crit_edge20
    i32 825381965, label %sw.bb1.i
    i32 842091865, label %entry.sw.bb2.i_crit_edge
    i32 842093913, label %entry.sw.bb2.i_crit_edge21
    i32 842094169, label %sw.bb3.i
  ]

entry.sw.bb2.i_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb2.i

entry.mtk_mdp_map_color_format.exit_crit_edge20:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

entry.mtk_mdp_map_color_format.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge21
  br label %mtk_mdp_map_color_format.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

mtk_mdp_map_color_format.exit:                    ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.mtk_mdp_map_color_format.exit_crit_edge, %entry.mtk_mdp_map_color_format.exit_crit_edge20
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 51644520, %sw.bb3.i ], [ 51644488, %sw.bb2.i ], [ 710213708, %sw.bb1.i ], [ 39061580, %entry.mtk_mdp_map_color_format.exit_crit_edge ], [ 39061580, %entry.mtk_mdp_map_color_format.exit_crit_edge20 ]
  %format = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %format, align 4
  %w_stride = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %w_stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %w_stride, align 4
  %h_stride = getelementptr inbounds %struct.mdp_config, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %h_stride to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %h_stride, align 4
  %14 = ptrtoint ptr %plane_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plane_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not = icmp eq i32 %15, 0
  br i1 %cmp18.not, label %mtk_mdp_map_color_format.exit.for.end_crit_edge, label %mtk_mdp_map_color_format.exit.for.body_crit_edge

mtk_mdp_map_color_format.exit.for.body_crit_edge: ; preds = %mtk_mdp_map_color_format.exit
  br label %for.body

mtk_mdp_map_color_format.exit.for.end_crit_edge:  ; preds = %mtk_mdp_map_color_format.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mtk_mdp_map_color_format.exit.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mtk_mdp_map_color_format.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 1, i32 3, i32 %i.019
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.mdp_process_vsi, ptr %1, i32 0, i32 1, i32 1, i32 %i.019
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx6, align 4
  %inc = add nuw i32 %i.019, 1
  %19 = ptrtoint ptr %plane_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plane_num, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mtk_mdp_map_color_format.exit.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mtk_mdp_hw_set_out_size(ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %d_frame = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %dst_config = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2
  %crop = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crop, align 4
  %crop_x = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %crop_x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %crop_x, align 4
  %top = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2, i32 2, i32 1
  %5 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %top, align 4
  %crop_y = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %crop_y to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %crop_y, align 4
  %width = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2, i32 2, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %crop_w = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 8
  %10 = ptrtoint ptr %crop_w to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %crop_w, align 4
  %height = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2, i32 2, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %crop_h = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %crop_h to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %crop_h, align 4
  %14 = ptrtoint ptr %dst_config to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dst_config, align 4
  %y = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %y, align 4
  %16 = ptrtoint ptr %d_frame to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_frame, align 4
  %w = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %w, align 4
  %height5 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height5, align 4
  %h = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %h, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_hw_set_out_image_format(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %fmt = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %num_comp = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_comp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_comp, align 2
  %conv = zext i16 %5 to i32
  %plane_num = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %plane_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %plane_num, align 4
  %7 = load ptr, ptr %fmt, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %9, label %sw.epilog.i [
    i32 842091854, label %entry.mtk_mdp_map_color_format.exit_crit_edge
    i32 842094158, label %entry.mtk_mdp_map_color_format.exit_crit_edge20
    i32 825381965, label %sw.bb1.i
    i32 842091865, label %entry.sw.bb2.i_crit_edge
    i32 842093913, label %entry.sw.bb2.i_crit_edge21
    i32 842094169, label %sw.bb3.i
  ]

entry.sw.bb2.i_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb2.i

entry.mtk_mdp_map_color_format.exit_crit_edge20:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

entry.mtk_mdp_map_color_format.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge21
  br label %mtk_mdp_map_color_format.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mtk_mdp_map_color_format.exit

mtk_mdp_map_color_format.exit:                    ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.mtk_mdp_map_color_format.exit_crit_edge, %entry.mtk_mdp_map_color_format.exit_crit_edge20
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 51644520, %sw.bb3.i ], [ 51644488, %sw.bb2.i ], [ 710213708, %sw.bb1.i ], [ 39061580, %entry.mtk_mdp_map_color_format.exit_crit_edge ], [ 39061580, %entry.mtk_mdp_map_color_format.exit_crit_edge20 ]
  %format = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 10
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %format, align 4
  %w_stride = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %w_stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %w_stride, align 4
  %h_stride = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %h_stride to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %h_stride, align 4
  %14 = ptrtoint ptr %plane_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plane_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not = icmp eq i32 %15, 0
  br i1 %cmp18.not, label %mtk_mdp_map_color_format.exit.for.end_crit_edge, label %mtk_mdp_map_color_format.exit.for.body_crit_edge

mtk_mdp_map_color_format.exit.for.body_crit_edge: ; preds = %mtk_mdp_map_color_format.exit
  br label %for.body

mtk_mdp_map_color_format.exit.for.end_crit_edge:  ; preds = %mtk_mdp_map_color_format.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mtk_mdp_map_color_format.exit.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mtk_mdp_map_color_format.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 2, i32 3, i32 %i.019
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.mdp_process_vsi, ptr %1, i32 0, i32 3, i32 1, i32 %i.019
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx6, align 4
  %inc = add nuw i32 %i.019, 1
  %19 = ptrtoint ptr %plane_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plane_num, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mtk_mdp_map_color_format.exit.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mtk_mdp_hw_set_rotation(ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %misc1 = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 4
  %ctrls = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 12
  %2 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrls, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = ptrtoint ptr %misc1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %misc1, align 4
  %hflip = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hflip, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val3, align 4
  %hflip4 = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %hflip4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %hflip4, align 4
  %vflip = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 12, i32 2
  %12 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vflip, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val6, align 4
  %vflip7 = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %vflip7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %vflip7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mtk_mdp_hw_set_global_alpha(ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %global_alpha = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 12, i32 3
  %2 = ptrtoint ptr %global_alpha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global_alpha, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %alpha = getelementptr inbounds %struct.mdp_process_vsi, ptr %1, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %alpha, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
