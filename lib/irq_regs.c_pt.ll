; ModuleID = '/llk/IR_all_yes/lib/irq_regs.c_pt.bc'
source_filename = "../lib/irq_regs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__irq_regs\22, \22a\22\09"
module asm "\09.weak\09__crc___irq_regs\09\09\09\09"
module asm "\09.long\09__crc___irq_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_regs\22\09\09\09\09\09"
module asm "__kstrtabns___irq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__irq_regs = weak dso_local global ptr null, section ".data..percpu", align 4
@__kstrtab___irq_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_regs = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_regs to i32), ptr @__kstrtab___irq_regs, ptr @__kstrtabns___irq_regs }, section "___ksymtab+__irq_regs", align 4
@__pcpu_scope___irq_regs = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique___irq_regs = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___irq_regs], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  ret void
}

attributes #0 = { nounwind uwtable(sync) }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab___irq_regs, !1, !"__ksymtab___irq_regs", i1 false, i1 false}
!1 = !{!"../lib/irq_regs.c", i32 13, i32 1}
!2 = !{ptr @__pcpu_scope___irq_regs, !3, !"__pcpu_scope___irq_regs", i1 false, i1 false}
!3 = !{!"../lib/irq_regs.c", i32 12, i32 1}
!4 = !{ptr @__pcpu_unique___irq_regs, !3, !"__pcpu_unique___irq_regs", i1 false, i1 false}
!5 = !{ptr @__irq_regs, !3, !"__irq_regs", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
