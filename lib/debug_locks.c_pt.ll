; ModuleID = '/llk/IR_all_yes/lib/debug_locks.c_pt.bc'
source_filename = "../lib/debug_locks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+debug_locks\22, \22a\22\09"
module asm "\09.weak\09__crc_debug_locks\09\09\09\09"
module asm "\09.long\09__crc_debug_locks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_locks\22\09\09\09\09\09"
module asm "__kstrtabns_debug_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+debug_locks_silent\22, \22a\22\09"
module asm "\09.weak\09__crc_debug_locks_silent\09\09\09\09"
module asm "\09.long\09__crc_debug_locks_silent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_locks_silent:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_locks_silent\22\09\09\09\09\09"
module asm "__kstrtabns_debug_locks_silent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+debug_locks_off\22, \22a\22\09"
module asm "\09.weak\09__crc_debug_locks_off\09\09\09\09"
module asm "\09.long\09__crc_debug_locks_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_locks_off:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_locks_off\22\09\09\09\09\09"
module asm "__kstrtabns_debug_locks_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@debug_locks = dso_local global i32 1, section ".data..read_mostly", align 4
@__kstrtab_debug_locks = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_locks = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_locks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_locks to i32), ptr @__kstrtab_debug_locks, ptr @__kstrtabns_debug_locks }, section "___ksymtab_gpl+debug_locks", align 4
@debug_locks_silent = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_debug_locks_silent = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_locks_silent = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_locks_silent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_locks_silent to i32), ptr @__kstrtab_debug_locks_silent, ptr @__kstrtabns_debug_locks_silent }, section "___ksymtab_gpl+debug_locks_silent", align 4
@__kstrtab_debug_locks_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_locks_off = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_locks_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_locks_off to i32), ptr @__kstrtab_debug_locks_off, ptr @__kstrtabns_debug_locks_off }, section "___ksymtab_gpl+debug_locks_off", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_debug_locks, ptr @__ksymtab_debug_locks_off, ptr @__ksymtab_debug_locks_silent], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @debug_locks_off() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @debug_locks, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !18
  tail call void @llvm.prefetch.p0(ptr nonnull @debug_locks, i32 1, i32 3, i32 1) #5
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @debug_locks) #5, !srcloc !19
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool1.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @console_verbose() #5
  br label %return

return:                                           ; preds = %if.then3, %if.then.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.then.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @debug_locks, !1, !"debug_locks", i1 false, i1 false}
!1 = !{!"../lib/debug_locks.c", i32 25, i32 5}
!2 = !{ptr @__ksymtab_debug_locks, !3, !"__ksymtab_debug_locks", i1 false, i1 false}
!3 = !{!"../lib/debug_locks.c", i32 26, i32 1}
!4 = !{ptr @__ksymtab_debug_locks_silent, !5, !"__ksymtab_debug_locks_silent", i1 false, i1 false}
!5 = !{!"../lib/debug_locks.c", i32 34, i32 1}
!6 = !{ptr @__ksymtab_debug_locks_off, !7, !"__ksymtab_debug_locks_off", i1 false, i1 false}
!7 = !{!"../lib/debug_locks.c", i32 49, i32 1}
!8 = !{ptr @debug_locks_silent, !9, !"debug_locks_silent", i1 false, i1 false}
!9 = !{!"../lib/debug_locks.c", i32 33, i32 5}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2149109975}
!19 = !{i64 990915, i64 990932, i64 990956, i64 990982, i64 991000}
!20 = !{i64 2149110318}
