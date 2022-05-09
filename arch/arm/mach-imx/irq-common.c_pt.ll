; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/irq-common.c_pt.bc'
source_filename = "../arch/arm/mach-imx/irq-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mxc_set_irq_fiq\22, \22a\22\09"
module asm "\09.weak\09__crc_mxc_set_irq_fiq\09\09\09\09"
module asm "\09.long\09__crc_mxc_set_irq_fiq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxc_set_irq_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22mxc_set_irq_fiq\22\09\09\09\09\09"
module asm "__kstrtabns_mxc_set_irq_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_mxc_set_irq_fiq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxc_set_irq_fiq = external dso_local constant [0 x i8], align 1
@__ksymtab_mxc_set_irq_fiq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxc_set_irq_fiq to i32), ptr @__kstrtab_mxc_set_irq_fiq, ptr @__kstrtabns_mxc_set_irq_fiq }, section "___ksymtab+mxc_set_irq_fiq", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mxc_set_irq_fiq], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxc_set_irq_fiq(i32 noundef %irq, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %irq) #2
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end9_crit_edge, label %irq_get_chip_data.exit

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

irq_get_chip_data.exit:                           ; preds = %entry
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %irq_get_chip_data.exit.if.end9_crit_edge, label %land.lhs.true

irq_get_chip_data.exit.if.end9_crit_edge:         ; preds = %irq_get_chip_data.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

land.lhs.true:                                    ; preds = %irq_get_chip_data.exit
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %call5 = tail call ptr @irq_get_irq_data(i32 noundef %irq) #2
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call5, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %call8 = tail call i32 %7(i32 noundef %9, i32 noundef %type) #2
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %irq_get_chip_data.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then4 ], [ -38, %if.then.if.end9_crit_edge ], [ -38, %land.lhs.true.if.end9_crit_edge ], [ -38, %irq_get_chip_data.exit.if.end9_crit_edge ], [ -38, %entry.if.end9_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_mxc_set_irq_fiq, !1, !"__ksymtab_mxc_set_irq_fiq", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/irq-common.c", i32 31, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
