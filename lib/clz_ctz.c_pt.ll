; ModuleID = '/llk/IR_all_yes/lib/clz_ctz.c_pt.bc'
source_filename = "../lib/clz_ctz.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__ctzsi2\22, \22a\22\09"
module asm "\09.weak\09__crc___ctzsi2\09\09\09\09"
module asm "\09.long\09__crc___ctzsi2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ctzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__ctzsi2\22\09\09\09\09\09"
module asm "__kstrtabns___ctzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__clzsi2\22, \22a\22\09"
module asm "\09.weak\09__crc___clzsi2\09\09\09\09"
module asm "\09.long\09__crc___clzsi2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__clzsi2\22\09\09\09\09\09"
module asm "__kstrtabns___clzsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__clzdi2\22, \22a\22\09"
module asm "\09.weak\09__crc___clzdi2\09\09\09\09"
module asm "\09.long\09__crc___clzdi2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__clzdi2\22\09\09\09\09\09"
module asm "__kstrtabns___clzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ctzdi2\22, \22a\22\09"
module asm "\09.weak\09__crc___ctzdi2\09\09\09\09"
module asm "\09.long\09__crc___ctzdi2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ctzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__ctzdi2\22\09\09\09\09\09"
module asm "__kstrtabns___ctzdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___ctzsi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ctzsi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___ctzsi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ctzsi2 to i32), ptr @__kstrtab___ctzsi2, ptr @__kstrtabns___ctzsi2 }, section "___ksymtab+__ctzsi2", align 4
@__kstrtab___clzsi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___clzsi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___clzsi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clzsi2 to i32), ptr @__kstrtab___clzsi2, ptr @__kstrtabns___clzsi2 }, section "___ksymtab+__clzsi2", align 4
@__kstrtab___clzdi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___clzdi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___clzdi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clzdi2 to i32), ptr @__kstrtab___clzdi2, ptr @__kstrtabns___clzdi2 }, section "___ksymtab+__clzdi2", align 4
@__kstrtab___ctzdi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ctzdi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___ctzdi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ctzdi2 to i32), ptr @__kstrtab___ctzdi2, ptr @__kstrtabns___ctzdi2 }, section "___ksymtab+__ctzdi2", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___clzdi2, ptr @__ksymtab___clzsi2, ptr @__ksymtab___ctzdi2, ptr @__ksymtab___ctzsi2], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @__ctzsi2(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = tail call i32 @llvm.cttz.i32(i32 %val, i1 false) #4, !range !16
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @__clzsi2(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 false) #4, !range !16
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @__clzdi2(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 false) #4, !range !16
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @__ctzdi2(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = tail call i32 @llvm.cttz.i32(i32 %val, i1 false) #4, !range !16
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab___ctzsi2, !1, !"__ksymtab___ctzsi2", i1 false, i1 false}
!1 = !{!"../lib/clz_ctz.c", i32 22, i32 1}
!2 = !{ptr @__ksymtab___clzsi2, !3, !"__ksymtab___clzsi2", i1 false, i1 false}
!3 = !{!"../lib/clz_ctz.c", i32 29, i32 1}
!4 = !{ptr @__ksymtab___clzdi2, !5, !"__ksymtab___clzdi2", i1 false, i1 false}
!5 = !{!"../lib/clz_ctz.c", i32 39, i32 1}
!6 = !{ptr @__ksymtab___ctzdi2, !7, !"__ksymtab___ctzdi2", i1 false, i1 false}
!7 = !{!"../lib/clz_ctz.c", i32 45, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i32 0, i32 33}
