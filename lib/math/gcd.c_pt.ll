; ModuleID = '/llk/IR_all_yes/lib/math/gcd.c_pt.bc'
source_filename = "../lib/math/gcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gcd\22, \22a\22\09"
module asm "\09.weak\09__crc_gcd\09\09\09\09"
module asm "\09.long\09__crc_gcd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gcd:\09\09\09\09\09"
module asm "\09.asciz \09\22gcd\22\09\09\09\09\09"
module asm "__kstrtabns_gcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_gcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_gcd = external dso_local constant [0 x i8], align 1
@__ksymtab_gcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gcd to i32), ptr @__kstrtab_gcd, ptr @__kstrtabns_gcd }, section "___ksymtab_gpl+gcd", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_gcd], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gcd(i32 noundef %a, i32 noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %b, %a
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool.not = icmp eq i32 %a, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b)
  %tobool1.not = icmp eq i32 %b, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.cttz.i32(i32 %b, i1 false) #2, !range !11
  %shr = lshr i32 %b, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %1 = tail call i32 @llvm.cttz.i32(i32 %a, i1 false) #2, !range !11
  %shr543 = lshr i32 %a, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr543)
  %cmp644 = icmp eq i32 %shr543, 1
  br i1 %cmp644, label %for.cond.preheader.if.then7_crit_edge, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end10

for.cond.preheader.if.then7_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %sub = sub i32 0, %or
  %and = and i32 %or, %sub
  br label %cleanup

if.then7:                                         ; preds = %if.end14.if.then7_crit_edge, %for.cond.preheader.if.then7_crit_edge
  %sub8 = sub i32 0, %or
  %and9 = and i32 %or, %sub8
  br label %cleanup

if.end10:                                         ; preds = %if.end14.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %shr546 = phi i32 [ %shr5, %if.end14.if.end10_crit_edge ], [ %shr543, %for.cond.preheader.if.end10_crit_edge ]
  %b.addr.045 = phi i32 [ %4, %if.end14.if.end10_crit_edge ], [ %shr, %for.cond.preheader.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr546, i32 %b.addr.045)
  %cmp11 = icmp eq i32 %shr546, %b.addr.045
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  %2 = tail call i32 @llvm.cttz.i32(i32 %or, i1 false) #2, !range !11
  %shl = shl i32 %shr546, %2
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %3 = tail call i32 @llvm.umax.i32(i32 %shr546, i32 %b.addr.045)
  %4 = tail call i32 @llvm.umin.i32(i32 %shr546, i32 %b.addr.045)
  %sub18 = sub i32 %3, %4
  %5 = tail call i32 @llvm.cttz.i32(i32 %sub18, i1 false) #2, !range !11
  %shr5 = lshr i32 %sub18, %5
  %cmp6 = icmp eq i32 %shr5, 1
  br i1 %cmp6, label %if.end14.if.then7_crit_edge, label %if.end14.if.end10_crit_edge

if.end14.if.end10_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.end14.if.then7_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then7

cleanup:                                          ; preds = %if.then12, %if.then7, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.then2 ], [ %and9, %if.then7 ], [ %shl, %if.then12 ], [ %or, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_gcd, !1, !"__ksymtab_gcd", i1 false, i1 false}
!1 = !{!"../lib/math/gcd.c", i32 85, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 33}
