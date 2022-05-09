; ModuleID = '/llk/IR_all_yes/lib/dec_and_lock.c_pt.bc'
source_filename = "../lib/dec_and_lock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+_atomic_dec_and_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__atomic_dec_and_lock\09\09\09\09"
module asm "\09.long\09__crc__atomic_dec_and_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__atomic_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_atomic_dec_and_lock\22\09\09\09\09\09"
module asm "__kstrtabns__atomic_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_atomic_dec_and_lock_irqsave\22, \22a\22\09"
module asm "\09.weak\09__crc__atomic_dec_and_lock_irqsave\09\09\09\09"
module asm "\09.long\09__crc__atomic_dec_and_lock_irqsave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__atomic_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_atomic_dec_and_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__atomic_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab__atomic_dec_and_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__atomic_dec_and_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__atomic_dec_and_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_atomic_dec_and_lock to i32), ptr @__kstrtab__atomic_dec_and_lock, ptr @__kstrtabns__atomic_dec_and_lock }, section "___ksymtab+_atomic_dec_and_lock", align 4
@__kstrtab__atomic_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__atomic_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__atomic_dec_and_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_atomic_dec_and_lock_irqsave to i32), ptr @__kstrtab__atomic_dec_and_lock_irqsave, ptr @__kstrtabns__atomic_dec_and_lock_irqsave }, section "___ksymtab+_atomic_dec_and_lock_irqsave", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab__atomic_dec_and_lock, ptr @__ksymtab__atomic_dec_and_lock_irqsave], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_atomic_dec_and_lock(ptr noundef %atomic, ptr noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atomic, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %atomic, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %atomic, ptr %atomic, i32 1, i32 -1, ptr elementtype(i32) %atomic) #5, !srcloc !13
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %atomic, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %atomic, i32 1, i32 3, i32 1) #5
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %atomic, ptr %atomic, i32 1, ptr elementtype(i32) %atomic) #5, !srcloc !16
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i7 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i7, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %atomic_add_unless.exit.thread
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 1, %if.end.return_crit_edge ], [ 0, %atomic_add_unless.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_atomic_dec_and_lock_irqsave(ptr noundef %atomic, ptr noundef %lock, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atomic, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %atomic, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %atomic, ptr %atomic, i32 1, i32 -1, ptr elementtype(i32) %atomic) #5, !srcloc !13
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %do.body1, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  br label %return

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call3, ptr %flags, align 4
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %atomic, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %atomic, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %atomic, ptr %atomic, i32 1, ptr elementtype(i32) %atomic) #5, !srcloc !16
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i12 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i12, label %do.body1.return_crit_edge, label %if.end7

do.body1.return_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end7:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %4) #5
  br label %return

return:                                           ; preds = %if.end7, %do.body1.return_crit_edge, %atomic_add_unless.exit.thread
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 1, %do.body1.return_crit_edge ], [ 0, %atomic_add_unless.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__ksymtab__atomic_dec_and_lock, !1, !"__ksymtab__atomic_dec_and_lock", i1 false, i1 false}
!1 = !{!"../lib/dec_and_lock.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab__atomic_dec_and_lock_irqsave, !3, !"__ksymtab__atomic_dec_and_lock_irqsave", i1 false, i1 false}
!3 = !{!"../lib/dec_and_lock.c", i32 51, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2148476091}
!13 = !{i64 962691, i64 962716, i64 962738, i64 962754, i64 962766, i64 962786, i64 962810, i64 962826, i64 962838}
!14 = !{i64 2148476279}
!15 = !{i64 2148565148}
!16 = !{i64 2148479857, i64 2148479889, i64 2148479918, i64 2148479952, i64 2148479983, i64 2148480006}
!17 = !{i64 2148565377}
