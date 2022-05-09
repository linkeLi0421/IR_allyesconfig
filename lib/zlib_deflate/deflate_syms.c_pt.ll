; ModuleID = '/llk/IR_all_yes/lib/zlib_deflate/deflate_syms.c_pt.bc'
source_filename = "../lib/zlib_deflate/deflate_syms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zlib_deflate_workspacesize\22, \22a\22\09"
module asm "\09.weak\09__crc_zlib_deflate_workspacesize\09\09\09\09"
module asm "\09.long\09__crc_zlib_deflate_workspacesize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflate_workspacesize:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflate_workspacesize\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflate_workspacesize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zlib_deflate_dfltcc_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_zlib_deflate_dfltcc_enabled\09\09\09\09"
module asm "\09.long\09__crc_zlib_deflate_dfltcc_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflate_dfltcc_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflate_dfltcc_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflate_dfltcc_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zlib_deflate\22, \22a\22\09"
module asm "\09.weak\09__crc_zlib_deflate\09\09\09\09"
module asm "\09.long\09__crc_zlib_deflate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflate:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflate\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zlib_deflateInit2\22, \22a\22\09"
module asm "\09.weak\09__crc_zlib_deflateInit2\09\09\09\09"
module asm "\09.long\09__crc_zlib_deflateInit2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflateInit2:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflateInit2\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflateInit2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zlib_deflateEnd\22, \22a\22\09"
module asm "\09.weak\09__crc_zlib_deflateEnd\09\09\09\09"
module asm "\09.long\09__crc_zlib_deflateEnd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflateEnd:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflateEnd\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflateEnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zlib_deflateReset\22, \22a\22\09"
module asm "\09.weak\09__crc_zlib_deflateReset\09\09\09\09"
module asm "\09.long\09__crc_zlib_deflateReset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zlib_deflateReset:\09\09\09\09\09"
module asm "\09.asciz \09\22zlib_deflateReset\22\09\09\09\09\09"
module asm "__kstrtabns_zlib_deflateReset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_zlib_deflate_workspacesize = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflate_workspacesize = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflate_workspacesize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflate_workspacesize to i32), ptr @__kstrtab_zlib_deflate_workspacesize, ptr @__kstrtabns_zlib_deflate_workspacesize }, section "___ksymtab+zlib_deflate_workspacesize", align 4
@__kstrtab_zlib_deflate_dfltcc_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflate_dfltcc_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflate_dfltcc_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflate_dfltcc_enabled to i32), ptr @__kstrtab_zlib_deflate_dfltcc_enabled, ptr @__kstrtabns_zlib_deflate_dfltcc_enabled }, section "___ksymtab+zlib_deflate_dfltcc_enabled", align 4
@__kstrtab_zlib_deflate = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflate = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflate to i32), ptr @__kstrtab_zlib_deflate, ptr @__kstrtabns_zlib_deflate }, section "___ksymtab+zlib_deflate", align 4
@__kstrtab_zlib_deflateInit2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflateInit2 = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflateInit2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflateInit2 to i32), ptr @__kstrtab_zlib_deflateInit2, ptr @__kstrtabns_zlib_deflateInit2 }, section "___ksymtab+zlib_deflateInit2", align 4
@__kstrtab_zlib_deflateEnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflateEnd = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflateEnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflateEnd to i32), ptr @__kstrtab_zlib_deflateEnd, ptr @__kstrtabns_zlib_deflateEnd }, section "___ksymtab+zlib_deflateEnd", align 4
@__kstrtab_zlib_deflateReset = external dso_local constant [0 x i8], align 1
@__kstrtabns_zlib_deflateReset = external dso_local constant [0 x i8], align 1
@__ksymtab_zlib_deflateReset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zlib_deflateReset to i32), ptr @__kstrtab_zlib_deflateReset, ptr @__kstrtabns_zlib_deflateReset }, section "___ksymtab+zlib_deflateReset", align 4
@__UNIQUE_ID_file106 = internal constant [48 x i8] c"zlib_deflate.file=lib/zlib_deflate/zlib_deflate\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [25 x i8] c"zlib_deflate.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_zlib_deflate, ptr @__ksymtab_zlib_deflateEnd, ptr @__ksymtab_zlib_deflateInit2, ptr @__ksymtab_zlib_deflateReset, ptr @__ksymtab_zlib_deflate_dfltcc_enabled, ptr @__ksymtab_zlib_deflate_workspacesize], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_dfltcc_enabled() #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateReset(ptr noundef) #0

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_zlib_deflate_workspacesize, !1, !"__ksymtab_zlib_deflate_workspacesize", i1 false, i1 false}
!1 = !{!"../lib/zlib_deflate/deflate_syms.c", i32 14, i32 1}
!2 = !{ptr @__ksymtab_zlib_deflate_dfltcc_enabled, !3, !"__ksymtab_zlib_deflate_dfltcc_enabled", i1 false, i1 false}
!3 = !{!"../lib/zlib_deflate/deflate_syms.c", i32 15, i32 1}
!4 = !{ptr @__ksymtab_zlib_deflate, !5, !"__ksymtab_zlib_deflate", i1 false, i1 false}
!5 = !{!"../lib/zlib_deflate/deflate_syms.c", i32 16, i32 1}
!6 = !{ptr @__ksymtab_zlib_deflateInit2, !7, !"__ksymtab_zlib_deflateInit2", i1 false, i1 false}
!7 = !{!"../lib/zlib_deflate/deflate_syms.c", i32 17, i32 1}
!8 = !{ptr @__ksymtab_zlib_deflateEnd, !9, !"__ksymtab_zlib_deflateEnd", i1 false, i1 false}
!9 = !{!"../lib/zlib_deflate/deflate_syms.c", i32 18, i32 1}
!10 = !{ptr @__ksymtab_zlib_deflateReset, !11, !"__ksymtab_zlib_deflateReset", i1 false, i1 false}
!11 = !{!"../lib/zlib_deflate/deflate_syms.c", i32 19, i32 1}
!12 = !{ptr @__UNIQUE_ID_file106, !13, !"__UNIQUE_ID_file106", i1 false, i1 false}
!13 = !{!"../lib/zlib_deflate/deflate_syms.c", i32 20, i32 1}
!14 = !{ptr @__UNIQUE_ID_license107, !13, !"__UNIQUE_ID_license107", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
