; ModuleID = '/llk/IR_all_yes/lib/hweight.c_pt.bc'
source_filename = "../lib/hweight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__sw_hweight32\22, \22a\22\09"
module asm "\09.weak\09__crc___sw_hweight32\09\09\09\09"
module asm "\09.long\09__crc___sw_hweight32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight32:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight32\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__sw_hweight16\22, \22a\22\09"
module asm "\09.weak\09__crc___sw_hweight16\09\09\09\09"
module asm "\09.long\09__crc___sw_hweight16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight16:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight16\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__sw_hweight8\22, \22a\22\09"
module asm "\09.weak\09__crc___sw_hweight8\09\09\09\09"
module asm "\09.long\09__crc___sw_hweight8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight8:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight8\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__sw_hweight64\22, \22a\22\09"
module asm "\09.weak\09__crc___sw_hweight64\09\09\09\09"
module asm "\09.long\09__crc___sw_hweight64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sw_hweight64:\09\09\09\09\09"
module asm "\09.asciz \09\22__sw_hweight64\22\09\09\09\09\09"
module asm "__kstrtabns___sw_hweight64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___sw_hweight32 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight32 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight32 to i32), ptr @__kstrtab___sw_hweight32, ptr @__kstrtabns___sw_hweight32 }, section "___ksymtab+__sw_hweight32", align 4
@__kstrtab___sw_hweight16 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight16 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight16 to i32), ptr @__kstrtab___sw_hweight16, ptr @__kstrtabns___sw_hweight16 }, section "___ksymtab+__sw_hweight16", align 4
@__kstrtab___sw_hweight8 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight8 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight8 to i32), ptr @__kstrtab___sw_hweight8, ptr @__kstrtabns___sw_hweight8 }, section "___ksymtab+__sw_hweight8", align 4
@__kstrtab___sw_hweight64 = external dso_local constant [0 x i8], align 1
@__kstrtabns___sw_hweight64 = external dso_local constant [0 x i8], align 1
@__ksymtab___sw_hweight64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sw_hweight64 to i32), ptr @__kstrtab___sw_hweight64, ptr @__kstrtabns___sw_hweight64 }, section "___ksymtab+__sw_hweight64", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___sw_hweight16, ptr @__ksymtab___sw_hweight32, ptr @__ksymtab___sw_hweight64, ptr @__ksymtab___sw_hweight8], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight32(i32 noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %shr = lshr i32 %w, 1
  %and = and i32 %shr, 1431655765
  %sub = sub i32 %w, %and
  %and1 = and i32 %sub, 858993459
  %shr2 = lshr i32 %sub, 2
  %and3 = and i32 %shr2, 858993459
  %add = add nuw nsw i32 %and3, %and1
  %shr4 = lshr i32 %add, 4
  %add5 = add nuw nsw i32 %shr4, %add
  %and6 = and i32 %add5, 252645135
  %shr7 = lshr i32 %and6, 8
  %add8 = add nuw nsw i32 %shr7, %and6
  %shr9 = lshr i32 %add8, 16
  %add10 = add nuw nsw i32 %shr9, %add8
  %and11 = and i32 %add10, 63
  ret i32 %and11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight16(i32 noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %shr = lshr i32 %w, 1
  %and = and i32 %shr, 21845
  %sub = sub i32 %w, %and
  %and1 = and i32 %sub, 13107
  %shr2 = lshr i32 %sub, 2
  %and3 = and i32 %shr2, 13107
  %add = add nuw nsw i32 %and3, %and1
  %shr4 = lshr i32 %add, 4
  %add5 = add nuw nsw i32 %shr4, %add
  %and6 = and i32 %add5, 3855
  %shr7 = lshr i32 %and6, 8
  %add8 = add nuw nsw i32 %shr7, %and6
  %and9 = and i32 %add8, 31
  ret i32 %and9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight8(i32 noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %shr = lshr i32 %w, 1
  %and = and i32 %shr, 85
  %sub = sub i32 %w, %and
  %and1 = and i32 %sub, 51
  %shr2 = lshr i32 %sub, 2
  %and3 = and i32 %shr2, 51
  %add = add nuw nsw i32 %and3, %and1
  %shr4 = lshr i32 %add, 4
  %add5 = add nuw nsw i32 %shr4, %add
  %and6 = and i32 %add5, 15
  ret i32 %and6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__sw_hweight64(i64 noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %shr = lshr i64 %w, 32
  %conv = trunc i64 %shr to i32
  %shr.i = lshr i32 %conv, 1
  %and.i = and i32 %shr.i, 1431655765
  %sub.i = sub i32 %conv, %and.i
  %and1.i = and i32 %sub.i, 858993459
  %shr2.i = lshr i32 %sub.i, 2
  %and3.i = and i32 %shr2.i, 858993459
  %add.i = add nuw nsw i32 %and3.i, %and1.i
  %shr4.i = lshr i32 %add.i, 4
  %add5.i = add nuw nsw i32 %shr4.i, %add.i
  %and6.i = and i32 %add5.i, 252645135
  %shr7.i = lshr i32 %and6.i, 8
  %add8.i = add nuw nsw i32 %shr7.i, %and6.i
  %shr9.i = lshr i32 %add8.i, 16
  %add10.i = add nuw nsw i32 %shr9.i, %add8.i
  %and11.i = and i32 %add10.i, 63
  %conv1 = trunc i64 %w to i32
  %shr.i4 = lshr i32 %conv1, 1
  %and.i5 = and i32 %shr.i4, 1431655765
  %sub.i6 = sub i32 %conv1, %and.i5
  %and1.i7 = and i32 %sub.i6, 858993459
  %shr2.i8 = lshr i32 %sub.i6, 2
  %and3.i9 = and i32 %shr2.i8, 858993459
  %add.i10 = add nuw nsw i32 %and3.i9, %and1.i7
  %shr4.i11 = lshr i32 %add.i10, 4
  %add5.i12 = add nuw nsw i32 %shr4.i11, %add.i10
  %and6.i13 = and i32 %add5.i12, 252645135
  %shr7.i14 = lshr i32 %and6.i13, 8
  %add8.i15 = add nuw nsw i32 %shr7.i14, %and6.i13
  %shr9.i16 = lshr i32 %add8.i15, 16
  %add10.i17 = add nuw nsw i32 %shr9.i16, %add8.i15
  %and11.i18 = and i32 %add10.i17, 63
  %add = add nuw nsw i32 %and11.i, %and11.i18
  ret i32 %add
}

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab___sw_hweight32, !1, !"__ksymtab___sw_hweight32", i1 false, i1 false}
!1 = !{!"../lib/hweight.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab___sw_hweight16, !3, !"__ksymtab___sw_hweight16", i1 false, i1 false}
!3 = !{!"../lib/hweight.c", i32 37, i32 1}
!4 = !{ptr @__ksymtab___sw_hweight8, !5, !"__ksymtab___sw_hweight8", i1 false, i1 false}
!5 = !{!"../lib/hweight.c", i32 45, i32 1}
!6 = !{ptr @__ksymtab___sw_hweight64, !7, !"__ksymtab___sw_hweight64", i1 false, i1 false}
!7 = !{!"../lib/hweight.c", i32 68, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
