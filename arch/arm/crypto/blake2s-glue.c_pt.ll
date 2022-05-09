; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/blake2s-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/blake2s-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blake2s_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_blake2s_compress\09\09\09\09"
module asm "\09.long\09__crc_blake2s_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blake2s_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22blake2s_compress\22\09\09\09\09\09"
module asm "__kstrtabns_blake2s_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_blake2s_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_blake2s_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_blake2s_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blake2s_compress to i32), ptr @__kstrtab_blake2s_compress, ptr @__kstrtabns_blake2s_compress }, section "___ksymtab+blake2s_compress", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_blake2s_compress], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_compress(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_blake2s_compress, !1, !"__ksymtab_blake2s_compress", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/blake2s-glue.c", i32 7, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
