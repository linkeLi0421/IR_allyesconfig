; ModuleID = '/llk/IR_all_yes/lib/math/lcm.c_pt.bc'
source_filename = "../lib/math/lcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm "\09.section \22___kcrctab_gpl+lcm\22, \22a\22\09"
module asm "\09.weak\09__crc_lcm\09\09\09\09"
module asm "\09.long\09__crc_lcm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lcm:\09\09\09\09\09"
module asm "\09.asciz \09\22lcm\22\09\09\09\09\09"
module asm "__kstrtabns_lcm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lcm_not_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_lcm_not_zero\09\09\09\09"
module asm "\09.long\09__crc_lcm_not_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lcm_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22lcm_not_zero\22\09\09\09\09\09"
module asm "__kstrtabns_lcm_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_lcm = external dso_local constant [0 x i8], align 1
@__kstrtabns_lcm = external dso_local constant [0 x i8], align 1
@__ksymtab_lcm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lcm to i32), ptr @__kstrtab_lcm, ptr @__kstrtabns_lcm }, section "___ksymtab_gpl+lcm", align 4
@__kstrtab_lcm_not_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_lcm_not_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_lcm_not_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lcm_not_zero to i32), ptr @__kstrtab_lcm_not_zero, ptr @__kstrtabns_lcm_not_zero }, section "___ksymtab_gpl+lcm_not_zero", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_lcm, ptr @__ksymtab_lcm_not_zero], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lcm(i32 noundef %a, i32 noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool.not = icmp eq i32 %a, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b)
  %tobool1.not = icmp eq i32 %b, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @gcd(i32 noundef %a, i32 noundef %b) #5
  %div = udiv i32 %a, %call
  %mul = mul i32 %div, %b
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %mul, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lcm_not_zero(i32 noundef %a, i32 noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool.not.i = icmp eq i32 %a, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b)
  %tobool1.not.i = icmp eq i32 %b, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lcm.exit.thread, label %lcm.exit

lcm.exit.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %spec.select7 = select i1 %tobool1.not.i, i32 %a, i32 %b
  br label %0

lcm.exit:                                         ; preds = %entry
  %call.i = tail call i32 @gcd(i32 noundef %a, i32 noundef %b) #5
  %div.i = udiv i32 %a, %call.i
  %mul.i = mul i32 %div.i, %b
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not = icmp eq i32 %mul.i, 0
  br i1 %tobool.not, label %lcm.exit._crit_edge, label %lcm.exit._crit_edge9

lcm.exit._crit_edge9:                             ; preds = %lcm.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %1

lcm.exit._crit_edge:                              ; preds = %lcm.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %0

0:                                                ; preds = %lcm.exit._crit_edge, %lcm.exit.thread
  %spec.select8 = phi i32 [ %spec.select7, %lcm.exit.thread ], [ %b, %lcm.exit._crit_edge ]
  br label %1

1:                                                ; preds = %0, %lcm.exit._crit_edge9
  %2 = phi i32 [ %spec.select8, %0 ], [ %mul.i, %lcm.exit._crit_edge9 ]
  ret i32 %2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_lcm, !1, !"__ksymtab_lcm", i1 false, i1 false}
!1 = !{!"../lib/math/lcm.c", i32 15, i32 1}
!2 = !{ptr @__ksymtab_lcm_not_zero, !3, !"__ksymtab_lcm_not_zero", i1 false, i1 false}
!3 = !{!"../lib/math/lcm.c", i32 26, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
