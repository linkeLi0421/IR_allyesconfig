; ModuleID = '/llk/IR_all_yes/lib/bcd.c_pt.bc'
source_filename = "../lib/bcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm "\09.section \22___kcrctab+_bcd2bin\22, \22a\22\09"
module asm "\09.weak\09__crc__bcd2bin\09\09\09\09"
module asm "\09.long\09__crc__bcd2bin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__bcd2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22_bcd2bin\22\09\09\09\09\09"
module asm "__kstrtabns__bcd2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_bin2bcd\22, \22a\22\09"
module asm "\09.weak\09__crc__bin2bcd\09\09\09\09"
module asm "\09.long\09__crc__bin2bcd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__bin2bcd:\09\09\09\09\09"
module asm "\09.asciz \09\22_bin2bcd\22\09\09\09\09\09"
module asm "__kstrtabns__bin2bcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab__bcd2bin = external dso_local constant [0 x i8], align 1
@__kstrtabns__bcd2bin = external dso_local constant [0 x i8], align 1
@__ksymtab__bcd2bin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_bcd2bin to i32), ptr @__kstrtab__bcd2bin, ptr @__kstrtabns__bcd2bin }, section "___ksymtab+_bcd2bin", align 4
@__kstrtab__bin2bcd = external dso_local constant [0 x i8], align 1
@__kstrtabns__bin2bcd = external dso_local constant [0 x i8], align 1
@__ksymtab__bin2bcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_bin2bcd to i32), ptr @__kstrtab__bin2bcd, ptr @__kstrtabns__bin2bcd }, section "___ksymtab+_bin2bcd", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab__bcd2bin, ptr @__ksymtab__bin2bcd], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @_bcd2bin(i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %conv = zext i8 %val to i32
  %and = and i32 %conv, 15
  %0 = lshr i32 %conv, 4
  %mul = mul nuw nsw i32 %0, 10
  %add = add nuw nsw i32 %mul, %and
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @_bin2bcd(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %div = udiv i32 %val, 10
  %shl = shl i32 %div, 4
  %0 = mul i32 %div, 10
  %rem.decomposed = sub i32 %val, %0
  %add = or i32 %shl, %rem.decomposed
  %conv = trunc i32 %add to i8
  ret i8 %conv
}

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__ksymtab__bcd2bin, !1, !"__ksymtab__bcd2bin", i1 false, i1 false}
!1 = !{!"../lib/bcd.c", i32 9, i32 1}
!2 = !{ptr @__ksymtab__bin2bcd, !3, !"__ksymtab__bin2bcd", i1 false, i1 false}
!3 = !{!"../lib/bcd.c", i32 15, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
