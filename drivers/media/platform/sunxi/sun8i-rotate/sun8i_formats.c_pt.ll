; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sunxi/sun8i-rotate/sun8i_formats.c_pt.bc'
source_filename = "../drivers/media/platform/sunxi/sun8i-rotate/sun8i_formats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rotate_format = type { i32, i32, i32, [3 x i32], i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }

@rotate_formats = internal constant { [28 x %struct.rotate_format], [240 x i8] } { [28 x %struct.rotate_format] [%struct.rotate_format { i32 875708738, i32 0, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 875713089, i32 1, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 875708993, i32 2, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 875708754, i32 3, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 875714626, i32 4, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 875713112, i32 5, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 876758866, i32 6, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 877807426, i32 7, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 859981650, i32 8, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 861030210, i32 9, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 1346520914, i32 10, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 842093121, i32 12, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 842089025, i32 13, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 842088786, i32 14, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 842088775, i32 15, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 892424769, i32 16, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 892420673, i32 17, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 892420434, i32 18, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 892420418, i32 19, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 1, i32 1, i32 2 }, %struct.rotate_format { i32 1431918169, i32 34, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, i32 1, i32 1 }, %struct.rotate_format { i32 1498831189, i32 33, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, i32 1, i32 1 }, %struct.rotate_format { i32 1448695129, i32 32, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, i32 1, i32 1 }, %struct.rotate_format { i32 825644622, i32 36, i32 2, [3 x i32] [i32 1, i32 2, i32 0], i32 2, i32 1, i32 1 }, %struct.rotate_format { i32 909203022, i32 37, i32 2, [3 x i32] [i32 1, i32 2, i32 0], i32 2, i32 1, i32 1 }, %struct.rotate_format { i32 1345466932, i32 38, i32 3, [3 x i32] [i32 1, i32 1, i32 1], i32 2, i32 1, i32 1 }, %struct.rotate_format { i32 825382478, i32 40, i32 2, [3 x i32] [i32 1, i32 2, i32 0], i32 2, i32 2, i32 1 }, %struct.rotate_format { i32 842094158, i32 41, i32 2, [3 x i32] [i32 1, i32 2, i32 0], i32 2, i32 2, i32 1 }, %struct.rotate_format { i32 842093913, i32 42, i32 3, [3 x i32] [i32 1, i32 1, i32 1], i32 2, i32 2, i32 3 }], [240 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [30 x i64] [i64 28, i64 32, i64 825382478, i64 825644622, i64 842088775, i64 842088786, i64 842089025, i64 842093121, i64 842093913, i64 842094158, i64 859981650, i64 861030210, i64 875708738, i64 875708754, i64 875708993, i64 875713089, i64 875713112, i64 875714626, i64 876758866, i64 877807426, i64 892420418, i64 892420434, i64 892420673, i64 892424769, i64 909203022, i64 1345466932, i64 1346520914, i64 1431918169, i64 1448695129, i64 1498831189]
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"rotate_formats\00", align 1
@___asan_gen_.2 = private constant [61 x i8] c"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_formats.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 13, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @rotate_formats], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_formats to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rotate_find_format(i32 noundef %pixelformat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pixelformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pixelformat, label %for.cond.27 [
    i32 875708738, label %entry.cleanup_crit_edge
    i32 875713089, label %cleanup.fold.split
    i32 875708993, label %cleanup.fold.split7
    i32 875708754, label %cleanup.fold.split8
    i32 875714626, label %cleanup.fold.split9
    i32 875713112, label %cleanup.fold.split10
    i32 876758866, label %cleanup.fold.split11
    i32 877807426, label %cleanup.fold.split12
    i32 859981650, label %cleanup.fold.split13
    i32 861030210, label %cleanup.fold.split14
    i32 1346520914, label %cleanup.fold.split15
    i32 842093121, label %cleanup.fold.split16
    i32 842089025, label %cleanup.fold.split17
    i32 842088786, label %cleanup.fold.split18
    i32 842088775, label %cleanup.fold.split19
    i32 892424769, label %cleanup.fold.split20
    i32 892420673, label %cleanup.fold.split21
    i32 892420434, label %cleanup.fold.split22
    i32 892420418, label %cleanup.fold.split23
    i32 1431918169, label %cleanup.fold.split24
    i32 1498831189, label %cleanup.fold.split25
    i32 1448695129, label %cleanup.fold.split26
    i32 825644622, label %cleanup.fold.split27
    i32 909203022, label %cleanup.fold.split28
    i32 1345466932, label %cleanup.fold.split29
    i32 825382478, label %cleanup.fold.split30
    i32 842094158, label %cleanup.fold.split31
    i32 842093913, label %cleanup.fold.split32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.27:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split7:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split32, %cleanup.fold.split31, %cleanup.fold.split30, %cleanup.fold.split29, %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split7, %cleanup.fold.split, %for.cond.27, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @rotate_formats, %entry.cleanup_crit_edge ], [ null, %for.cond.27 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 2), %cleanup.fold.split7 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 3), %cleanup.fold.split8 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 4), %cleanup.fold.split9 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 5), %cleanup.fold.split10 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 6), %cleanup.fold.split11 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 7), %cleanup.fold.split12 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 8), %cleanup.fold.split13 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 9), %cleanup.fold.split14 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 10), %cleanup.fold.split15 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 11), %cleanup.fold.split16 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 12), %cleanup.fold.split17 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 13), %cleanup.fold.split18 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 14), %cleanup.fold.split19 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 15), %cleanup.fold.split20 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 16), %cleanup.fold.split21 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 17), %cleanup.fold.split22 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 18), %cleanup.fold.split23 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 19), %cleanup.fold.split24 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 20), %cleanup.fold.split25 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 21), %cleanup.fold.split26 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 22), %cleanup.fold.split27 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 23), %cleanup.fold.split28 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 24), %cleanup.fold.split29 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 25), %cleanup.fold.split30 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 26), %cleanup.fold.split31 ], [ getelementptr inbounds ([28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 27), %cleanup.fold.split32 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rotate_enum_fmt(ptr nocapture noundef %f, i1 noundef zeroext %dst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %index.017 = phi i32 [ 0, %entry ], [ %index.1, %for.inc.for.body_crit_edge ]
  %i.015 = phi i32 [ 0, %entry ], [ %inc7, %for.inc.for.body_crit_edge ]
  %0 = add nsw i32 %i.015, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %tobool1.not = icmp ult i32 %0, 8
  %or.cond = select i1 %dst, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.017, i32 %2)
  %cmp3 = icmp eq i32 %index.017, %2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx5 = getelementptr [28 x %struct.rotate_format], ptr @rotate_formats, i32 0, i32 %i.015
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelformat, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %inc = add i32 %index.017, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %index.1 = phi i32 [ %inc, %if.end6 ], [ %index.017, %for.body.for.inc_crit_edge ]
  %inc7 = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc7, 28
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @rotate_formats, !1, !"rotate_formats", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_formats.c", i32 13, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
