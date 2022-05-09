; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lib/drm_random.c_pt.bc'
source_filename = "../drivers/gpu/drm/lib/drm_random.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_random_reorder\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_random_reorder\09\09\09\09"
module asm "\09.long\09__crc_drm_random_reorder\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_random_reorder:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_random_reorder\22\09\09\09\09\09"
module asm "__kstrtabns_drm_random_reorder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_random_order\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_random_order\09\09\09\09"
module asm "\09.long\09__crc_drm_random_order\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_random_order:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_random_order\22\09\09\09\09\09"
module asm "__kstrtabns_drm_random_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_drm_random_reorder = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_random_reorder = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_random_reorder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_random_reorder to i32), ptr @__kstrtab_drm_random_reorder, ptr @__kstrtabns_drm_random_reorder }, section "___ksymtab+drm_random_reorder", align 4
@__kstrtab_drm_random_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_random_order = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_random_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_random_order to i32), ptr @__kstrtab_drm_random_order, ptr @__kstrtabns_drm_random_order }, section "___ksymtab+drm_random_order", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_drm_random_order, ptr @__ksymtab_drm_random_reorder], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_random_reorder(ptr nocapture noundef %order, i32 noundef %count, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp15.not = icmp eq i32 %count, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %do.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end.lr.ph:                                     ; preds = %entry
  %conv1.i = zext i32 %count to i64
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.lr.ph
  %i.016 = phi i32 [ 0, %do.end.lr.ph ], [ %inc, %do.end.do.end_crit_edge ]
  %call.i = tail call i32 @prandom_u32_state(ptr noundef %state) #4
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i = lshr i64 %mul.i, 32
  %conv3.i = trunc i64 %shr.i to i32
  %arrayidx = getelementptr i32, ptr %order, i32 %i.016
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %order, i32 %conv3.i
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  store i32 %3, ptr %arrayidx, align 4
  store i32 %1, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %do.end.for.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_random_order(i32 noundef %count, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 4) #4
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i, !prof !13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp14.not = icmp eq i32 %count, 0
  br i1 %cmp14.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call8.i, i32 %i.015
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.015, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp14.not, label %for.end.cleanup_crit_edge, label %do.end.lr.ph.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.lr.ph.i:                                   ; preds = %for.end
  %conv1.i.i = zext i32 %count to i64
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.lr.ph.i
  %i.016.i = phi i32 [ 0, %do.end.lr.ph.i ], [ %inc.i, %do.end.i.do.end.i_crit_edge ]
  %call.i.i = tail call i32 @prandom_u32_state(ptr noundef %state) #4
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %arrayidx.i = getelementptr i32, ptr %call8.i, i32 %i.016.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %call8.i, i32 %conv3.i.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  store i32 %7, ptr %arrayidx.i, align 4
  store i32 %5, ptr %arrayidx2.i, align 4
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i13 = phi ptr [ null, %if.end7.i.cleanup_crit_edge ], [ %call8.i, %for.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call8.i, %for.cond.preheader.cleanup_crit_edge ], [ %call8.i, %do.end.i.cleanup_crit_edge ]
  ret ptr %retval.0.i13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_drm_random_reorder, !1, !"__ksymtab_drm_random_reorder", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lib/drm_random.c", i32 26, i32 1}
!2 = !{ptr @__ksymtab_drm_random_order, !3, !"__ksymtab_drm_random_order", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/lib/drm_random.c", i32 42, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
