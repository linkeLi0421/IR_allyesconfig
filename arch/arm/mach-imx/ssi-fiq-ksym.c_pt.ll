; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/ssi-fiq-ksym.c_pt.bc'
source_filename = "../arch/arm/mach-imx/ssi-fiq-ksym.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+imx_ssi_fiq_tx_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_ssi_fiq_tx_buffer\09\09\09\09"
module asm "\09.long\09__crc_imx_ssi_fiq_tx_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_ssi_fiq_tx_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_ssi_fiq_tx_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_imx_ssi_fiq_tx_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_ssi_fiq_rx_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_ssi_fiq_rx_buffer\09\09\09\09"
module asm "\09.long\09__crc_imx_ssi_fiq_rx_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_ssi_fiq_rx_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_ssi_fiq_rx_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_imx_ssi_fiq_rx_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_ssi_fiq_start\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_ssi_fiq_start\09\09\09\09"
module asm "\09.long\09__crc_imx_ssi_fiq_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_ssi_fiq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_ssi_fiq_start\22\09\09\09\09\09"
module asm "__kstrtabns_imx_ssi_fiq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_ssi_fiq_end\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_ssi_fiq_end\09\09\09\09"
module asm "\09.long\09__crc_imx_ssi_fiq_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_ssi_fiq_end:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_ssi_fiq_end\22\09\09\09\09\09"
module asm "__kstrtabns_imx_ssi_fiq_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_ssi_fiq_base\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_ssi_fiq_base\09\09\09\09"
module asm "\09.long\09__crc_imx_ssi_fiq_base\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_ssi_fiq_base:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_ssi_fiq_base\22\09\09\09\09\09"
module asm "__kstrtabns_imx_ssi_fiq_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@imx_ssi_fiq_tx_buffer = external dso_local global i32, align 4
@__kstrtab_imx_ssi_fiq_tx_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_ssi_fiq_tx_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_ssi_fiq_tx_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_ssi_fiq_tx_buffer to i32), ptr @__kstrtab_imx_ssi_fiq_tx_buffer, ptr @__kstrtabns_imx_ssi_fiq_tx_buffer }, section "___ksymtab+imx_ssi_fiq_tx_buffer", align 4
@imx_ssi_fiq_rx_buffer = external dso_local global i32, align 4
@__kstrtab_imx_ssi_fiq_rx_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_ssi_fiq_rx_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_ssi_fiq_rx_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_ssi_fiq_rx_buffer to i32), ptr @__kstrtab_imx_ssi_fiq_rx_buffer, ptr @__kstrtabns_imx_ssi_fiq_rx_buffer }, section "___ksymtab+imx_ssi_fiq_rx_buffer", align 4
@imx_ssi_fiq_start = external dso_local global i8, align 1
@__kstrtab_imx_ssi_fiq_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_ssi_fiq_start = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_ssi_fiq_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_ssi_fiq_start to i32), ptr @__kstrtab_imx_ssi_fiq_start, ptr @__kstrtabns_imx_ssi_fiq_start }, section "___ksymtab+imx_ssi_fiq_start", align 4
@imx_ssi_fiq_end = external dso_local global i8, align 1
@__kstrtab_imx_ssi_fiq_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_ssi_fiq_end = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_ssi_fiq_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_ssi_fiq_end to i32), ptr @__kstrtab_imx_ssi_fiq_end, ptr @__kstrtabns_imx_ssi_fiq_end }, section "___ksymtab+imx_ssi_fiq_end", align 4
@imx_ssi_fiq_base = external dso_local global i32, align 4
@__kstrtab_imx_ssi_fiq_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_ssi_fiq_base = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_ssi_fiq_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_ssi_fiq_base to i32), ptr @__kstrtab_imx_ssi_fiq_base, ptr @__kstrtabns_imx_ssi_fiq_base }, section "___ksymtab+imx_ssi_fiq_base", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_imx_ssi_fiq_base, ptr @__ksymtab_imx_ssi_fiq_end, ptr @__ksymtab_imx_ssi_fiq_rx_buffer, ptr @__ksymtab_imx_ssi_fiq_start, ptr @__ksymtab_imx_ssi_fiq_tx_buffer], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_imx_ssi_fiq_tx_buffer, !1, !"__ksymtab_imx_ssi_fiq_tx_buffer", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/ssi-fiq-ksym.c", i32 12, i32 1}
!2 = !{ptr @__ksymtab_imx_ssi_fiq_rx_buffer, !3, !"__ksymtab_imx_ssi_fiq_rx_buffer", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/ssi-fiq-ksym.c", i32 13, i32 1}
!4 = !{ptr @__ksymtab_imx_ssi_fiq_start, !5, !"__ksymtab_imx_ssi_fiq_start", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/ssi-fiq-ksym.c", i32 14, i32 1}
!6 = !{ptr @__ksymtab_imx_ssi_fiq_end, !7, !"__ksymtab_imx_ssi_fiq_end", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/ssi-fiq-ksym.c", i32 15, i32 1}
!8 = !{ptr @__ksymtab_imx_ssi_fiq_base, !9, !"__ksymtab_imx_ssi_fiq_base", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-imx/ssi-fiq-ksym.c", i32 16, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
