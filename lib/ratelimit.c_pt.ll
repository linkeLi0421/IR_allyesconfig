; ModuleID = '/llk/IR_all_yes/lib/ratelimit.c_pt.bc'
source_filename = "../lib/ratelimit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+___ratelimit\22, \22a\22\09"
module asm "\09.weak\09__crc____ratelimit\09\09\09\09"
module asm "\09.long\09__crc____ratelimit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab____ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22___ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns____ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___ratelimit._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: %d callbacks suppressed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"___ratelimit\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/ratelimit.c\00", [16 x i8] zeroinitializer }, align 32
@___ratelimit._entry_ptr = internal global ptr @___ratelimit._entry, section ".printk_index", align 4
@__kstrtab____ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns____ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab____ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @___ratelimit to i32), ptr @__kstrtab____ratelimit, ptr @__kstrtabns____ratelimit }, section "___ksymtab+___ratelimit", align 4
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [19 x i8] c"../lib/ratelimit.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 50, i32 5 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @___ratelimit._entry, ptr @___ratelimit._entry_ptr, ptr @__ksymtab____ratelimit, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @___ratelimit(ptr noundef %rs, ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %interval = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body1:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !16
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.end14, label %do.end14.thread

do.end14:                                         ; preds = %do.body1
  tail call void @trace_hardirqs_off() #5
  %call16 = tail call i32 @_raw_spin_trylock(ptr noundef %rs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then27, label %do.end14.if.end52_crit_edge

do.end14.if.end52_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

do.end14.thread:                                  ; preds = %do.body1
  %call16121 = tail call i32 @_raw_spin_trylock(ptr noundef %rs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16121)
  %tobool17.not122 = icmp eq i32 %call16121, 0
  br i1 %tobool17.not122, label %do.end14.thread.do.body29_crit_edge, label %do.end14.thread.if.end52_crit_edge

do.end14.thread.if.end52_crit_edge:               ; preds = %do.end14.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

do.end14.thread.do.body29_crit_edge:              ; preds = %do.end14.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body29

if.then27:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @trace_hardirqs_on() #5
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.end14.thread.do.body29_crit_edge
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !17
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !18

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #5, !srcloc !19
  br label %cleanup

if.end52:                                         ; preds = %do.end14.thread.if.end52_crit_edge, %do.end14.if.end52_crit_edge
  %begin = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 5
  %4 = ptrtoint ptr %begin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %begin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool53.not = icmp eq i32 %5, 0
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %begin to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %begin, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge
  %8 = ptrtoint ptr %begin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %begin, align 4
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 4
  %add = add i32 %11, %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp59 = icmp slt i32 %sub, 0
  br i1 %cmp59, label %if.then61, label %if.end56.if.end77_crit_edge

if.end56.if.end77_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end77

if.then61:                                        ; preds = %if.end56
  %missed = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 4
  %13 = ptrtoint ptr %missed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %missed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool62.not = icmp eq i32 %14, 0
  br i1 %tobool62.not, label %if.then61.if.end75_crit_edge, label %if.then63

if.then61.if.end75_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end75

if.then63:                                        ; preds = %if.then61
  %flags64 = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 6
  %15 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags64, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %do.end69, label %if.then63.if.end75_crit_edge

if.then63.if.end75_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end75

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #4
  %call72 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str, ptr noundef %func, i32 noundef %14) #6
  %17 = ptrtoint ptr %missed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %missed, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %if.then63.if.end75_crit_edge, %if.then61.if.end75_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %begin to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %begin, align 4
  %printed = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 3
  %20 = ptrtoint ptr %printed to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %printed, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end56.if.end77_crit_edge
  %burst = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 2
  %21 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool78.not = icmp eq i32 %22, 0
  br i1 %tobool78.not, label %if.end77.if.else_crit_edge, label %land.lhs.true

if.end77.if.else_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true:                                    ; preds = %if.end77
  %printed80 = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 3
  %23 = ptrtoint ptr %printed80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %printed80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp81 = icmp sgt i32 %22, %24
  br i1 %cmp81, label %land.lhs.true.do.body88_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true.do.body88_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body88

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end77.if.else_crit_edge
  %missed85 = getelementptr inbounds %struct.ratelimit_state, ptr %rs, i32 0, i32 4
  %25 = ptrtoint ptr %missed85 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %missed85, align 4
  br label %do.body88

do.body88:                                        ; preds = %if.else, %land.lhs.true.do.body88_crit_edge
  %.sink = phi i32 [ %26, %if.else ], [ %24, %land.lhs.true.do.body88_crit_edge ]
  %printed80.sink = phi ptr [ %missed85, %if.else ], [ %printed80, %land.lhs.true.do.body88_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true.do.body88_crit_edge ]
  %inc = add i32 %.sink, 1
  %27 = ptrtoint ptr %printed80.sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %printed80.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs, i32 noundef %2) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body88, %do.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body88 ], [ 0, %do.end44 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/ratelimit.c", i32 50, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @___ratelimit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @___ratelimit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab____ratelimit, !7, !"__ksymtab____ratelimit", i1 false, i1 false}
!7 = !{!"../lib/ratelimit.c", i32 70, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 814980, i64 815041}
!17 = !{i64 817712}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 817997}
