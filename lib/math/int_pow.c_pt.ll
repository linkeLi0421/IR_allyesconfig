; ModuleID = '/llk/IR_all_yes/lib/math/int_pow.c_pt.bc'
source_filename = "../lib/math/int_pow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+int_pow\22, \22a\22\09"
module asm "\09.weak\09__crc_int_pow\09\09\09\09"
module asm "\09.long\09__crc_int_pow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_pow:\09\09\09\09\09"
module asm "\09.asciz \09\22int_pow\22\09\09\09\09\09"
module asm "__kstrtabns_int_pow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_int_pow = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_pow = external dso_local constant [0 x i8], align 1
@__ksymtab_int_pow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_pow to i32), ptr @__kstrtab_int_pow, ptr @__kstrtabns_int_pow }, section "___ksymtab_gpl+int_pow", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_int_pow], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @int_pow(i64 noundef %base, i32 noundef %exp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exp)
  %tobool.not8 = icmp eq i32 %exp, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %result.011 = phi i64 [ %spec.select, %while.body.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %exp.addr.010 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %exp, %entry.while.body_crit_edge ]
  %base.addr.09 = phi i64 [ %mul2, %while.body.while.body_crit_edge ], [ %base, %entry.while.body_crit_edge ]
  %and = and i32 %exp.addr.010, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %mul = select i1 %tobool1.not, i64 1, i64 %base.addr.09
  %spec.select = mul i64 %mul, %result.011
  %shr = lshr i32 %exp.addr.010, 1
  %mul2 = mul i64 %base.addr.09, %base.addr.09
  %tobool.not = icmp ult i32 %exp.addr.010, 2
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %result.0.lcssa = phi i64 [ 1, %entry.while.end_crit_edge ], [ %spec.select, %while.body.while.end_crit_edge ]
  ret i64 %result.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_int_pow, !1, !"__ksymtab_int_pow", i1 false, i1 false}
!1 = !{!"../lib/math/int_pow.c", i32 32, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
