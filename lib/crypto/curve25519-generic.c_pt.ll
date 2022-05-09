; ModuleID = '/llk/IR_all_yes/lib/crypto/curve25519-generic.c_pt.bc'
source_filename = "../lib/crypto/curve25519-generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+curve25519_null_point\22, \22a\22\09"
module asm "\09.weak\09__crc_curve25519_null_point\09\09\09\09"
module asm "\09.long\09__crc_curve25519_null_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_curve25519_null_point:\09\09\09\09\09"
module asm "\09.asciz \09\22curve25519_null_point\22\09\09\09\09\09"
module asm "__kstrtabns_curve25519_null_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+curve25519_base_point\22, \22a\22\09"
module asm "\09.weak\09__crc_curve25519_base_point\09\09\09\09"
module asm "\09.long\09__crc_curve25519_base_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_curve25519_base_point:\09\09\09\09\09"
module asm "\09.asciz \09\22curve25519_base_point\22\09\09\09\09\09"
module asm "__kstrtabns_curve25519_base_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+curve25519_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_curve25519_generic\09\09\09\09"
module asm "\09.long\09__crc_curve25519_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_curve25519_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22curve25519_generic\22\09\09\09\09\09"
module asm "__kstrtabns_curve25519_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@curve25519_null_point = dso_local constant { [32 x i8], [32 x i8] } zeroinitializer, align 32
@curve25519_base_point = dso_local constant { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@__kstrtab_curve25519_null_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_curve25519_null_point = external dso_local constant [0 x i8], align 1
@__ksymtab_curve25519_null_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @curve25519_null_point to i32), ptr @__kstrtab_curve25519_null_point, ptr @__kstrtabns_curve25519_null_point }, section "___ksymtab+curve25519_null_point", align 4
@__kstrtab_curve25519_base_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_curve25519_base_point = external dso_local constant [0 x i8], align 1
@__ksymtab_curve25519_base_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @curve25519_base_point to i32), ptr @__kstrtab_curve25519_base_point, ptr @__kstrtabns_curve25519_base_point }, section "___ksymtab+curve25519_base_point", align 4
@__kstrtab_curve25519_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_curve25519_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_curve25519_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @curve25519_generic to i32), ptr @__kstrtab_curve25519_generic, ptr @__kstrtabns_curve25519_generic }, section "___ksymtab+curve25519_generic", align 4
@__UNIQUE_ID_file173 = internal constant [60 x i8] c"libcurve25519_generic.file=lib/crypto/libcurve25519-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [37 x i8] c"libcurve25519_generic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [67 x i8] c"libcurve25519_generic.description=Curve25519 scalar multiplication\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [66 x i8] c"libcurve25519_generic.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"curve25519_null_point\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 15, i32 10 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"curve25519_base_point\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../lib/crypto/curve25519-generic.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 16, i32 10 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_curve25519_base_point, ptr @__ksymtab_curve25519_generic, ptr @__ksymtab_curve25519_null_point, ptr @curve25519_null_point, ptr @curve25519_base_point], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curve25519_null_point to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curve25519_base_point to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @curve25519_generic(ptr noundef, ptr noundef, ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @curve25519_null_point, !1, !"curve25519_null_point", i1 false, i1 false}
!1 = !{!"../lib/crypto/curve25519-generic.c", i32 15, i32 10}
!2 = !{ptr @curve25519_base_point, !3, !"curve25519_base_point", i1 false, i1 false}
!3 = !{!"../lib/crypto/curve25519-generic.c", i32 16, i32 10}
!4 = !{ptr @__ksymtab_curve25519_null_point, !5, !"__ksymtab_curve25519_null_point", i1 false, i1 false}
!5 = !{!"../lib/crypto/curve25519-generic.c", i32 18, i32 1}
!6 = !{ptr @__ksymtab_curve25519_base_point, !7, !"__ksymtab_curve25519_base_point", i1 false, i1 false}
!7 = !{!"../lib/crypto/curve25519-generic.c", i32 19, i32 1}
!8 = !{ptr @__ksymtab_curve25519_generic, !9, !"__ksymtab_curve25519_generic", i1 false, i1 false}
!9 = !{!"../lib/crypto/curve25519-generic.c", i32 20, i32 1}
!10 = !{ptr @__UNIQUE_ID_file173, !11, !"__UNIQUE_ID_file173", i1 false, i1 false}
!11 = !{!"../lib/crypto/curve25519-generic.c", i32 22, i32 1}
!12 = !{ptr @__UNIQUE_ID_license174, !11, !"__UNIQUE_ID_license174", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description175, !14, !"__UNIQUE_ID_description175", i1 false, i1 false}
!14 = !{!"../lib/crypto/curve25519-generic.c", i32 23, i32 1}
!15 = !{ptr @__UNIQUE_ID_author176, !16, !"__UNIQUE_ID_author176", i1 false, i1 false}
!16 = !{!"../lib/crypto/curve25519-generic.c", i32 24, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
