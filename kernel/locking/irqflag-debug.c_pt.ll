; ModuleID = '/llk/IR_all_yes/kernel/locking/irqflag-debug.c_pt.bc'
source_filename = "../kernel/locking/irqflag-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+warn_bogus_irq_restore\22, \22a\22\09"
module asm "\09.weak\09__crc_warn_bogus_irq_restore\09\09\09\09"
module asm "\09.long\09__crc_warn_bogus_irq_restore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_warn_bogus_irq_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22warn_bogus_irq_restore\22\09\09\09\09\09"
module asm "__kstrtabns_warn_bogus_irq_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@warn_bogus_irq_restore.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/locking/irqflag-debug.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"raw_local_irq_restore() called with IRQs enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_warn_bogus_irq_restore = external dso_local constant [0 x i8], align 1
@__kstrtabns_warn_bogus_irq_restore = external dso_local constant [0 x i8], align 1
@__ksymtab_warn_bogus_irq_restore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @warn_bogus_irq_restore to i32), ptr @__kstrtab_warn_bogus_irq_restore, ptr @__kstrtabns_warn_bogus_irq_restore }, section "___ksymtab+warn_bogus_irq_restore", align 4
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [34 x i8] c"../kernel/locking/irqflag-debug.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 10, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_warn_bogus_irq_restore, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @warn_bogus_irq_restore() #0 section ".noinstr.text" align 64 {
entry:
  %.b40 = load i1, ptr @warn_bogus_irq_restore.__already_done, align 1
  br i1 %.b40, label %if.end27, label %if.then, !prof !15

if.then:                                          ; preds = %entry
  store i1 true, ptr @warn_bogus_irq_restore.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 10, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/locking/irqflag-debug.c", i32 10, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_warn_bogus_irq_restore, !5, !"__ksymtab_warn_bogus_irq_restore", i1 false, i1 false}
!5 = !{!"../kernel/locking/irqflag-debug.c", i32 13, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
