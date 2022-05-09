; ModuleID = '/llk/IR_all_yes/lib/math/rational.c_pt.bc'
source_filename = "../lib/math/rational.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rational_best_approximation\22, \22a\22\09"
module asm "\09.weak\09__crc_rational_best_approximation\09\09\09\09"
module asm "\09.long\09__crc_rational_best_approximation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rational_best_approximation:\09\09\09\09\09"
module asm "\09.asciz \09\22rational_best_approximation\22\09\09\09\09\09"
module asm "__kstrtabns_rational_best_approximation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_rational_best_approximation = external dso_local constant [0 x i8], align 1
@__kstrtabns_rational_best_approximation = external dso_local constant [0 x i8], align 1
@__ksymtab_rational_best_approximation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rational_best_approximation to i32), ptr @__kstrtab_rational_best_approximation, ptr @__kstrtabns_rational_best_approximation }, section "___ksymtab+rational_best_approximation", align 4
@__UNIQUE_ID_file108 = internal constant [32 x i8] c"rational.file=lib/math/rational\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [24 x i8] c"rational.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_rational_best_approximation], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @rational_best_approximation(i32 noundef %given_numerator, i32 noundef %given_denominator, i32 noundef %max_numerator, i32 noundef %max_denominator, ptr nocapture noundef writeonly %best_numerator, ptr nocapture noundef writeonly %best_denominator) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %d.0 = phi i32 [ %given_denominator, %entry ], [ %rem.decomposed, %if.end.for.cond_crit_edge ]
  %n0.0 = phi i32 [ 0, %entry ], [ %n1.0, %if.end.for.cond_crit_edge ]
  %d0.0 = phi i32 [ 1, %entry ], [ %d1.0, %if.end.for.cond_crit_edge ]
  %n1.0 = phi i32 [ 1, %entry ], [ %add, %if.end.for.cond_crit_edge ]
  %d1.0 = phi i32 [ 0, %entry ], [ %add2, %if.end.for.cond_crit_edge ]
  %n.0 = phi i32 [ %given_numerator, %entry ], [ %d.0, %if.end.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.0)
  %cmp = icmp eq i32 %d.0, 0
  br i1 %cmp, label %for.cond.for.end_crit_edge, label %if.end

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end:                                           ; preds = %for.cond
  %n.0.frozen = freeze i32 %n.0
  %d.0.frozen = freeze i32 %d.0
  %div = udiv i32 %n.0.frozen, %d.0.frozen
  %0 = mul i32 %div, %d.0.frozen
  %rem.decomposed = sub i32 %n.0.frozen, %0
  %mul = mul i32 %div, %n1.0
  %add = add i32 %mul, %n0.0
  %mul1 = mul i32 %div, %d1.0
  %add2 = add i32 %mul1, %d0.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_numerator)
  %cmp3 = icmp ugt i32 %add, %max_numerator
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %max_denominator)
  %cmp4 = icmp ugt i32 %add2, %max_denominator
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then5, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d1.0)
  %tobool.not = icmp eq i32 %d1.0, 0
  br i1 %tobool.not, label %if.then5.if.end8_crit_edge, label %if.then6

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %sub = sub i32 %max_denominator, %d0.0
  %div7 = udiv i32 %sub, %d1.0
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then5.if.end8_crit_edge
  %t.0 = phi i32 [ %div7, %if.then6 ], [ -1, %if.then5.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n1.0)
  %tobool9.not = icmp eq i32 %n1.0, 0
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %if.then10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  %sub11 = sub i32 %max_numerator, %n0.0
  %div12 = udiv i32 %sub11, %n1.0
  %1 = tail call i32 @llvm.umin.i32(i32 %t.0, i32 %div12)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  %t.1 = phi i32 [ %1, %if.then10 ], [ %t.0, %if.end8.if.end14_crit_edge ]
  br i1 %tobool.not, label %if.end14.if.then25_crit_edge, label %lor.lhs.false16

if.end14.if.then25_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then25

lor.lhs.false16:                                  ; preds = %if.end14
  %mul17 = shl i32 %t.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul17, i32 %div)
  %cmp18 = icmp ugt i32 %mul17, %div
  br i1 %cmp18, label %lor.lhs.false16.if.then25_crit_edge, label %lor.lhs.false19

lor.lhs.false16.if.then25_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then25

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul17, i32 %div)
  %cmp21 = icmp eq i32 %mul17, %div
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false19.for.end_crit_edge

lor.lhs.false19.for.end_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

land.lhs.true:                                    ; preds = %lor.lhs.false19
  %mul22 = mul i32 %d0.0, %d.0
  %mul23 = mul i32 %rem.decomposed, %d1.0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul22, i32 %mul23)
  %cmp24 = icmp ugt i32 %mul22, %mul23
  br i1 %cmp24, label %land.lhs.true.if.then25_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then25

if.then25:                                        ; preds = %land.lhs.true.if.then25_crit_edge, %lor.lhs.false16.if.then25_crit_edge, %if.end14.if.then25_crit_edge
  %mul26 = mul i32 %t.1, %n1.0
  %add27 = add i32 %mul26, %n0.0
  %mul28 = mul i32 %t.1, %d1.0
  %add29 = add i32 %mul28, %d0.0
  br label %for.end

for.end:                                          ; preds = %if.then25, %land.lhs.true.for.end_crit_edge, %lor.lhs.false19.for.end_crit_edge, %for.cond.for.end_crit_edge
  %n1.2.ph = phi i32 [ %n1.0, %lor.lhs.false19.for.end_crit_edge ], [ %n1.0, %land.lhs.true.for.end_crit_edge ], [ %add27, %if.then25 ], [ %n1.0, %for.cond.for.end_crit_edge ]
  %d1.2.ph = phi i32 [ %d1.0, %lor.lhs.false19.for.end_crit_edge ], [ %d1.0, %land.lhs.true.for.end_crit_edge ], [ %add29, %if.then25 ], [ %d1.0, %for.cond.for.end_crit_edge ]
  %2 = ptrtoint ptr %best_numerator to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %n1.2.ph, ptr %best_numerator, align 4
  %3 = ptrtoint ptr %best_denominator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %d1.2.ph, ptr %best_denominator, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_rational_best_approximation, !1, !"__ksymtab_rational_best_approximation", i1 false, i1 false}
!1 = !{!"../lib/math/rational.c", i32 109, i32 1}
!2 = !{ptr @__UNIQUE_ID_file108, !3, !"__UNIQUE_ID_file108", i1 false, i1 false}
!3 = !{!"../lib/math/rational.c", i32 111, i32 1}
!4 = !{ptr @__UNIQUE_ID_license109, !3, !"__UNIQUE_ID_license109", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
