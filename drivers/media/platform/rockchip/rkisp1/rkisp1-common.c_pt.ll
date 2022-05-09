; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rkisp1/rkisp1-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon, i16, i16, i16, [10 x i16] }
%union.anon = type { i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rkisp1_sd_adjust_crop_rect(ptr nocapture noundef %crop, ptr nocapture noundef readonly %bounds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 2
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp.i = icmp ult i32 %1, 32
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %width.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 3
  %3 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp5.i = icmp ult i32 %4, 32
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.v4l2_rect_set_min_size.exit_crit_edge

if.end.i.v4l2_rect_set_min_size.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %v4l2_rect_set_min_size.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %height.i, align 4
  br label %v4l2_rect_set_min_size.exit

v4l2_rect_set_min_size.exit:                      ; preds = %if.then6.i, %if.end.i.v4l2_rect_set_min_size.exit_crit_edge
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width.i, align 4
  %width1.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %bounds, i32 0, i32 2
  %8 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.i = icmp ugt i32 %7, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %v4l2_rect_set_min_size.exit.if.end.i.i_crit_edge

v4l2_rect_set_min_size.exit.if.end.i.i_crit_edge: ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %v4l2_rect_set_min_size.exit.if.end.i.i_crit_edge
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %height4.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %bounds, i32 0, i32 3
  %13 = ptrtoint ptr %height4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.i.i = icmp ugt i32 %12, %14
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %v4l2_rect_set_max_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height.i, align 4
  br label %v4l2_rect_set_max_size.exit.i

v4l2_rect_set_max_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge
  %16 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crop, align 4
  %18 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bounds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i2 = icmp slt i32 %17, %19
  br i1 %cmp.i2, label %if.then.i3, label %v4l2_rect_set_max_size.exit.i.if.end.i5_crit_edge

v4l2_rect_set_max_size.exit.i.if.end.i5_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i5

if.then.i3:                                       ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %crop, align 4
  br label %if.end.i5

if.end.i5:                                        ; preds = %if.then.i3, %v4l2_rect_set_max_size.exit.i.if.end.i5_crit_edge
  %top.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 1
  %21 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %top.i, align 4
  %top4.i = getelementptr inbounds %struct.v4l2_rect, ptr %bounds, i32 0, i32 1
  %23 = ptrtoint ptr %top4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %top4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp5.i4 = icmp slt i32 %22, %24
  br i1 %cmp5.i4, label %if.then6.i6, label %if.end.i5.if.end9.i_crit_edge

if.end.i5.if.end9.i_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9.i

if.then6.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #4
  %25 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %top.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i6, %if.end.i5.if.end9.i_crit_edge
  %26 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crop, align 4
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 4
  %add.i = add i32 %29, %27
  %30 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bounds, align 4
  %32 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width1.i.i, align 4
  %add13.i = add i32 %33, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add13.i)
  %cmp14.i = icmp ugt i32 %add.i, %add13.i
  br i1 %cmp14.i, label %if.then15.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #4
  %sub.i = sub i32 %add13.i, %29
  %34 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i, ptr %crop, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.end9.i.if.end21.i_crit_edge
  %35 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %top.i, align 4
  %37 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height.i, align 4
  %add23.i = add i32 %38, %36
  %39 = ptrtoint ptr %top4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %top4.i, align 4
  %41 = ptrtoint ptr %height4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height4.i.i, align 4
  %add26.i = add i32 %42, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %add26.i)
  %cmp27.i = icmp ugt i32 %add23.i, %add26.i
  br i1 %cmp27.i, label %if.then28.i, label %if.end21.i.v4l2_rect_map_inside.exit_crit_edge

if.end21.i.v4l2_rect_map_inside.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %v4l2_rect_map_inside.exit

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #4
  %sub33.i = sub i32 %add26.i, %38
  %43 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub33.i, ptr %top.i, align 4
  br label %v4l2_rect_map_inside.exit

v4l2_rect_map_inside.exit:                        ; preds = %if.then28.i, %if.end21.i.v4l2_rect_map_inside.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rkisp1_sd_adjust_crop(ptr nocapture noundef %crop, ptr nocapture noundef readonly %bounds) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bounds, align 4
  %height2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %bounds, i32 0, i32 1
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %width.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 2
  %4 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 32
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %width.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %height.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 3
  %7 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp5.i.i = icmp ult i32 %8, 32
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_min_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_min_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %v4l2_rect_set_min_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %height.i.i, align 4
  br label %v4l2_rect_set_min_size.exit.i

v4l2_rect_set_min_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_min_size.exit.i_crit_edge
  %10 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp.i.i.i = icmp ugt i32 %11, %1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %v4l2_rect_set_min_size.exit.i.if.end.i.i.i_crit_edge

v4l2_rect_set_min_size.exit.i.if.end.i.i.i_crit_edge: ; preds = %v4l2_rect_set_min_size.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %v4l2_rect_set_min_size.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %width.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %v4l2_rect_set_min_size.exit.i.if.end.i.i.i_crit_edge
  %13 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp5.i.i.i = icmp ugt i32 %14, %3
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end.i.i.i.v4l2_rect_set_max_size.exit.i.i_crit_edge

if.end.i.i.i.v4l2_rect_set_max_size.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %v4l2_rect_set_max_size.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %3, ptr %height.i.i, align 4
  br label %v4l2_rect_set_max_size.exit.i.i

v4l2_rect_set_max_size.exit.i.i:                  ; preds = %if.then6.i.i.i, %if.end.i.i.i.v4l2_rect_set_max_size.exit.i.i_crit_edge
  %16 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i2.i = icmp slt i32 %17, 0
  br i1 %cmp.i2.i, label %if.then.i3.i, label %v4l2_rect_set_max_size.exit.i.i.if.end.i5.i_crit_edge

v4l2_rect_set_max_size.exit.i.i.if.end.i5.i_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i5.i

if.then.i3.i:                                     ; preds = %v4l2_rect_set_max_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %18 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %crop, align 4
  br label %if.end.i5.i

if.end.i5.i:                                      ; preds = %if.then.i3.i, %v4l2_rect_set_max_size.exit.i.i.if.end.i5.i_crit_edge
  %top.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 1
  %19 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %top.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5.i4.i = icmp slt i32 %20, 0
  br i1 %cmp5.i4.i, label %if.then6.i6.i, label %if.end.i5.i.if.end9.i.i_crit_edge

if.end.i5.i.if.end9.i.i_crit_edge:                ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9.i.i

if.then6.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #4
  %21 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %top.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i6.i, %if.end.i5.i.if.end9.i.i_crit_edge
  %22 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crop, align 4
  %24 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i.i, align 4
  %add.i.i = add i32 %25, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %1)
  %cmp14.i.i = icmp ugt i32 %add.i.i, %1
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.end9.i.i.if.end21.i.i_crit_edge

if.end9.i.i.if.end21.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21.i.i

if.then15.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %sub.i.i = sub i32 %1, %25
  %26 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i.i, ptr %crop, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then15.i.i, %if.end9.i.i.if.end21.i.i_crit_edge
  %27 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %top.i.i, align 4
  %29 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height.i.i, align 4
  %add23.i.i = add i32 %30, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i.i, i32 %3)
  %cmp27.i.i = icmp ugt i32 %add23.i.i, %3
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end21.i.i.rkisp1_sd_adjust_crop_rect.exit_crit_edge

if.end21.i.i.rkisp1_sd_adjust_crop_rect.exit_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %rkisp1_sd_adjust_crop_rect.exit

if.then28.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %sub33.i.i = sub i32 %3, %30
  %31 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub33.i.i, ptr %top.i.i, align 4
  br label %rkisp1_sd_adjust_crop_rect.exit

rkisp1_sd_adjust_crop_rect.exit:                  ; preds = %if.then28.i.i, %if.end21.i.i.rkisp1_sd_adjust_crop_rect.exit_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"rkisp1_sd_min_crop", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-common.c", i32 12, i32 31}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
