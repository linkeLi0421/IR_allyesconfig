; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pack_hdmi_infoframe(ptr nocapture noundef writeonly %packed_frame, ptr nocapture noundef readonly %raw_frame, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %sw.bb [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %entry.sw.bb1_crit_edge
    i32 15, label %entry.sw.bb5_crit_edge
    i32 14, label %entry.sw.bb9_crit_edge
    i32 13, label %entry.sw.bb13_crit_edge
    i32 12, label %entry.sw.bb18_crit_edge
    i32 11, label %entry.sw.bb23_crit_edge
    i32 10, label %entry.sw.bb27_crit_edge
    i32 9, label %entry.sw.bb31_crit_edge
    i32 8, label %entry.sw.bb36_crit_edge
    i32 7, label %entry.sw.bb40_crit_edge
    i32 6, label %entry.sw.bb44_crit_edge
    i32 5, label %entry.sw.bb49_crit_edge
    i32 4, label %entry.sw.bb54_crit_edge
    i32 3, label %entry.sw.bb58_crit_edge
    i32 2, label %entry.sw.bb62_crit_edge
    i32 1, label %entry.sw.bb67_crit_edge
  ]

entry.sw.bb67_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb67

entry.sw.bb62_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb62

entry.sw.bb58_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb58

entry.sw.bb54_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb54

entry.sw.bb49_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb49

entry.sw.bb44_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb44

entry.sw.bb40_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb40

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb36

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb31

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb27

entry.sw.bb23_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb23

entry.sw.bb18_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb18

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb13

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb9

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb5

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr i8, ptr %raw_frame, i32 16
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 16
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %subpack1_high.0 = phi i32 [ %shl, %sw.bb ], [ 0, %entry.sw.bb1_crit_edge ]
  %arrayidx2 = getelementptr i8, ptr %raw_frame, i32 15
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %subpack1_high.0
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb1, %entry.sw.bb5_crit_edge
  %subpack1_high.1 = phi i32 [ %or, %sw.bb1 ], [ 0, %entry.sw.bb5_crit_edge ]
  %arrayidx6 = getelementptr i8, ptr %raw_frame, i32 14
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %6 to i32
  %or8 = or i32 %subpack1_high.1, %conv7
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb5, %entry.sw.bb9_crit_edge
  %subpack1_high.2 = phi i32 [ %or8, %sw.bb5 ], [ 0, %entry.sw.bb9_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %raw_frame, i32 13
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %shl12 = shl nuw i32 %conv11, 24
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb9, %entry.sw.bb13_crit_edge
  %subpack1_low.0 = phi i32 [ %shl12, %sw.bb9 ], [ 0, %entry.sw.bb13_crit_edge ]
  %subpack1_high.3 = phi i32 [ %subpack1_high.2, %sw.bb9 ], [ 0, %entry.sw.bb13_crit_edge ]
  %arrayidx14 = getelementptr i8, ptr %raw_frame, i32 12
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %or17 = or i32 %shl16, %subpack1_low.0
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb13, %entry.sw.bb18_crit_edge
  %subpack1_low.1 = phi i32 [ %or17, %sw.bb13 ], [ 0, %entry.sw.bb18_crit_edge ]
  %subpack1_high.4 = phi i32 [ %subpack1_high.3, %sw.bb13 ], [ 0, %entry.sw.bb18_crit_edge ]
  %arrayidx19 = getelementptr i8, ptr %raw_frame, i32 11
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %12 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %or22 = or i32 %shl21, %subpack1_low.1
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb18, %entry.sw.bb23_crit_edge
  %subpack1_low.2 = phi i32 [ %or22, %sw.bb18 ], [ 0, %entry.sw.bb23_crit_edge ]
  %subpack1_high.5 = phi i32 [ %subpack1_high.4, %sw.bb18 ], [ 0, %entry.sw.bb23_crit_edge ]
  %arrayidx24 = getelementptr i8, ptr %raw_frame, i32 10
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %14 to i32
  %or26 = or i32 %subpack1_low.2, %conv25
  br label %sw.bb27

sw.bb27:                                          ; preds = %sw.bb23, %entry.sw.bb27_crit_edge
  %subpack1_low.3 = phi i32 [ %or26, %sw.bb23 ], [ 0, %entry.sw.bb27_crit_edge ]
  %subpack1_high.6 = phi i32 [ %subpack1_high.5, %sw.bb23 ], [ 0, %entry.sw.bb27_crit_edge ]
  %arrayidx28 = getelementptr i8, ptr %raw_frame, i32 9
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %16 to i32
  %shl30 = shl nuw nsw i32 %conv29, 16
  br label %sw.bb31

sw.bb31:                                          ; preds = %sw.bb27, %entry.sw.bb31_crit_edge
  %subpack0_high.0 = phi i32 [ %shl30, %sw.bb27 ], [ 0, %entry.sw.bb31_crit_edge ]
  %subpack1_low.4 = phi i32 [ %subpack1_low.3, %sw.bb27 ], [ 0, %entry.sw.bb31_crit_edge ]
  %subpack1_high.7 = phi i32 [ %subpack1_high.6, %sw.bb27 ], [ 0, %entry.sw.bb31_crit_edge ]
  %arrayidx32 = getelementptr i8, ptr %raw_frame, i32 8
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %18 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %or35 = or i32 %shl34, %subpack0_high.0
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb31, %entry.sw.bb36_crit_edge
  %subpack0_high.1 = phi i32 [ %or35, %sw.bb31 ], [ 0, %entry.sw.bb36_crit_edge ]
  %subpack1_low.5 = phi i32 [ %subpack1_low.4, %sw.bb31 ], [ 0, %entry.sw.bb36_crit_edge ]
  %subpack1_high.8 = phi i32 [ %subpack1_high.7, %sw.bb31 ], [ 0, %entry.sw.bb36_crit_edge ]
  %arrayidx37 = getelementptr i8, ptr %raw_frame, i32 7
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %20 to i32
  %or39 = or i32 %subpack0_high.1, %conv38
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb36, %entry.sw.bb40_crit_edge
  %subpack0_high.2 = phi i32 [ %or39, %sw.bb36 ], [ 0, %entry.sw.bb40_crit_edge ]
  %subpack1_low.6 = phi i32 [ %subpack1_low.5, %sw.bb36 ], [ 0, %entry.sw.bb40_crit_edge ]
  %subpack1_high.9 = phi i32 [ %subpack1_high.8, %sw.bb36 ], [ 0, %entry.sw.bb40_crit_edge ]
  %arrayidx41 = getelementptr i8, ptr %raw_frame, i32 6
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %22 to i32
  %shl43 = shl nuw i32 %conv42, 24
  br label %sw.bb44

sw.bb44:                                          ; preds = %sw.bb40, %entry.sw.bb44_crit_edge
  %subpack0_low.0 = phi i32 [ %shl43, %sw.bb40 ], [ 0, %entry.sw.bb44_crit_edge ]
  %subpack0_high.3 = phi i32 [ %subpack0_high.2, %sw.bb40 ], [ 0, %entry.sw.bb44_crit_edge ]
  %subpack1_low.7 = phi i32 [ %subpack1_low.6, %sw.bb40 ], [ 0, %entry.sw.bb44_crit_edge ]
  %subpack1_high.10 = phi i32 [ %subpack1_high.9, %sw.bb40 ], [ 0, %entry.sw.bb44_crit_edge ]
  %arrayidx45 = getelementptr i8, ptr %raw_frame, i32 5
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %24 to i32
  %shl47 = shl nuw nsw i32 %conv46, 16
  %or48 = or i32 %shl47, %subpack0_low.0
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb44, %entry.sw.bb49_crit_edge
  %subpack0_low.1 = phi i32 [ %or48, %sw.bb44 ], [ 0, %entry.sw.bb49_crit_edge ]
  %subpack0_high.4 = phi i32 [ %subpack0_high.3, %sw.bb44 ], [ 0, %entry.sw.bb49_crit_edge ]
  %subpack1_low.8 = phi i32 [ %subpack1_low.7, %sw.bb44 ], [ 0, %entry.sw.bb49_crit_edge ]
  %subpack1_high.11 = phi i32 [ %subpack1_high.10, %sw.bb44 ], [ 0, %entry.sw.bb49_crit_edge ]
  %arrayidx50 = getelementptr i8, ptr %raw_frame, i32 4
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %26 to i32
  %shl52 = shl nuw nsw i32 %conv51, 8
  %or53 = or i32 %shl52, %subpack0_low.1
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb49, %entry.sw.bb54_crit_edge
  %subpack0_low.2 = phi i32 [ %or53, %sw.bb49 ], [ 0, %entry.sw.bb54_crit_edge ]
  %subpack0_high.5 = phi i32 [ %subpack0_high.4, %sw.bb49 ], [ 0, %entry.sw.bb54_crit_edge ]
  %subpack1_low.9 = phi i32 [ %subpack1_low.8, %sw.bb49 ], [ 0, %entry.sw.bb54_crit_edge ]
  %subpack1_high.12 = phi i32 [ %subpack1_high.11, %sw.bb49 ], [ 0, %entry.sw.bb54_crit_edge ]
  %arrayidx55 = getelementptr i8, ptr %raw_frame, i32 3
  %27 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %28 to i32
  %or57 = or i32 %subpack0_low.2, %conv56
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb54, %entry.sw.bb58_crit_edge
  %subpack0_low.3 = phi i32 [ %or57, %sw.bb54 ], [ 0, %entry.sw.bb58_crit_edge ]
  %subpack0_high.6 = phi i32 [ %subpack0_high.5, %sw.bb54 ], [ 0, %entry.sw.bb58_crit_edge ]
  %subpack1_low.10 = phi i32 [ %subpack1_low.9, %sw.bb54 ], [ 0, %entry.sw.bb58_crit_edge ]
  %subpack1_high.13 = phi i32 [ %subpack1_high.12, %sw.bb54 ], [ 0, %entry.sw.bb58_crit_edge ]
  %arrayidx59 = getelementptr i8, ptr %raw_frame, i32 2
  %29 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %30 to i32
  %shl61 = shl nuw nsw i32 %conv60, 16
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb58, %entry.sw.bb62_crit_edge
  %header.0 = phi i32 [ %shl61, %sw.bb58 ], [ 0, %entry.sw.bb62_crit_edge ]
  %subpack0_low.4 = phi i32 [ %subpack0_low.3, %sw.bb58 ], [ 0, %entry.sw.bb62_crit_edge ]
  %subpack0_high.7 = phi i32 [ %subpack0_high.6, %sw.bb58 ], [ 0, %entry.sw.bb62_crit_edge ]
  %subpack1_low.11 = phi i32 [ %subpack1_low.10, %sw.bb58 ], [ 0, %entry.sw.bb62_crit_edge ]
  %subpack1_high.14 = phi i32 [ %subpack1_high.13, %sw.bb58 ], [ 0, %entry.sw.bb62_crit_edge ]
  %arrayidx63 = getelementptr i8, ptr %raw_frame, i32 1
  %31 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %32 to i32
  %shl65 = shl nuw nsw i32 %conv64, 8
  %or66 = or i32 %shl65, %header.0
  br label %sw.bb67

sw.bb67:                                          ; preds = %sw.bb62, %entry.sw.bb67_crit_edge
  %header.1 = phi i32 [ %or66, %sw.bb62 ], [ 0, %entry.sw.bb67_crit_edge ]
  %subpack0_low.5 = phi i32 [ %subpack0_low.4, %sw.bb62 ], [ 0, %entry.sw.bb67_crit_edge ]
  %subpack0_high.8 = phi i32 [ %subpack0_high.7, %sw.bb62 ], [ 0, %entry.sw.bb67_crit_edge ]
  %subpack1_low.12 = phi i32 [ %subpack1_low.11, %sw.bb62 ], [ 0, %entry.sw.bb67_crit_edge ]
  %subpack1_high.15 = phi i32 [ %subpack1_high.14, %sw.bb62 ], [ 0, %entry.sw.bb67_crit_edge ]
  %33 = ptrtoint ptr %raw_frame to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %raw_frame, align 1
  %conv69 = zext i8 %34 to i32
  %or70 = or i32 %header.1, %conv69
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb67, %entry.sw.epilog_crit_edge
  %header.2 = phi i32 [ %or70, %sw.bb67 ], [ %len, %entry.sw.epilog_crit_edge ]
  %subpack0_low.6 = phi i32 [ %subpack0_low.5, %sw.bb67 ], [ %len, %entry.sw.epilog_crit_edge ]
  %subpack0_high.9 = phi i32 [ %subpack0_high.8, %sw.bb67 ], [ %len, %entry.sw.epilog_crit_edge ]
  %subpack1_low.13 = phi i32 [ %subpack1_low.12, %sw.bb67 ], [ %len, %entry.sw.epilog_crit_edge ]
  %subpack1_high.16 = phi i32 [ %subpack1_high.15, %sw.bb67 ], [ %len, %entry.sw.epilog_crit_edge ]
  %35 = ptrtoint ptr %packed_frame to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %header.2, ptr %packed_frame, align 4
  %subpack0_low72 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %packed_frame, i32 0, i32 1
  %36 = ptrtoint ptr %subpack0_low72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %subpack0_low.6, ptr %subpack0_low72, align 4
  %subpack0_high73 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %packed_frame, i32 0, i32 2
  %37 = ptrtoint ptr %subpack0_high73 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %subpack0_high.9, ptr %subpack0_high73, align 4
  %subpack1_low74 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %packed_frame, i32 0, i32 3
  %38 = ptrtoint ptr %subpack1_low74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %subpack1_low.13, ptr %subpack1_low74, align 4
  %subpack1_high75 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %packed_frame, i32 0, i32 4
  %39 = ptrtoint ptr %subpack1_high75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %subpack1_high.16, ptr %subpack1_high75, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
