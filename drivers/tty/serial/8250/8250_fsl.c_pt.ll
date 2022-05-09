; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_fsl.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_fsl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsl8250_handle_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl8250_handle_irq\09\09\09\09"
module asm "\09.long\09__crc_fsl8250_handle_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl8250_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl8250_handle_irq\22\09\09\09\09\09"
module asm "__kstrtabns_fsl8250_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_fsl8250_handle_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl8250_handle_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl8250_handle_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl8250_handle_irq to i32), ptr @__kstrtab_fsl8250_handle_irq, ptr @__kstrtabns_fsl8250_handle_irq }, section "___ksymtab_gpl+fsl8250_handle_irq", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_fsl8250_handle_irq], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl8250_handle_irq(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #2
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in, align 4
  %call7 = tail call i32 %1(ptr noundef %port, i32 noundef 2) #2
  %and = and i32 %call7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_raw_spin_unlock(ptr noundef %port) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %lsr_saved_flags = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 17
  %2 = ptrtoint ptr %lsr_saved_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lsr_saved_flags, align 4
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %if.end24, label %if.then15, !prof !11

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %and18 = and i8 %3, -17
  %5 = ptrtoint ptr %lsr_saved_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and18, ptr %lsr_saved_flags, align 4
  %6 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_in, align 4
  %call21 = tail call i32 %7(ptr noundef %port, i32 noundef 0) #2
  tail call void @_raw_spin_unlock(ptr noundef %port) #2
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %8 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_in, align 4
  %call28 = tail call i32 %9(ptr noundef %port, i32 noundef 5) #2
  %conv29 = trunc i32 %call28 to i8
  %and31 = and i32 %call28, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end24.if.end38_crit_edge, label %land.lhs.true

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end24
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %10 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ier, align 2
  %12 = and i8 %11, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool35.not = icmp eq i8 %12, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end38_crit_edge, label %if.then36

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call37 = tail call zeroext i8 @serial8250_rx_chars(ptr noundef %port, i8 noundef zeroext %conv29) #2
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true.if.end38_crit_edge, %if.end24.if.end38_crit_edge
  %lsr.0 = phi i8 [ %call37, %if.then36 ], [ %conv29, %land.lhs.true.if.end38_crit_edge ], [ %conv29, %if.end24.if.end38_crit_edge ]
  %and40 = and i32 %call28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end61_crit_edge, label %land.lhs.true42

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

land.lhs.true42:                                  ; preds = %if.end38
  %overrun_backoff_time_ms = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 27
  %13 = ptrtoint ptr %overrun_backoff_time_ms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %overrun_backoff_time_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp43.not = icmp eq i32 %14, 0
  br i1 %cmp43.not, label %land.lhs.true42.if.end61_crit_edge, label %if.then45

land.lhs.true42.if.end61_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

if.then45:                                        ; preds = %land.lhs.true42
  %15 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial_in, align 4
  %call47 = tail call i32 %16(ptr noundef %port, i32 noundef 1) #2
  %conv48 = trunc i32 %call47 to i8
  %ier49 = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %17 = ptrtoint ptr %ier49 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv48, ptr %ier49, align 2
  %and52 = and i32 %call47, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #4
  %ops = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 39
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %stop_rx = getelementptr inbounds %struct.uart_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %stop_rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stop_rx, align 4
  tail call void %21(ptr noundef %port) #2
  br label %if.else.i

if.else:                                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #4
  %overrun_backoff = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 26
  %call55 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %overrun_backoff) #2
  br label %if.else.i

if.else.i:                                        ; preds = %if.else, %if.then54
  %22 = ptrtoint ptr %overrun_backoff_time_ms to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %overrun_backoff_time_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #2
  %overrun_backoff59 = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %overrun_backoff59, i32 noundef %call2.i) #2
  br label %if.end61

if.end61:                                         ; preds = %if.else.i, %land.lhs.true42.if.end61_crit_edge, %if.end38.if.end61_crit_edge
  %call62 = tail call i32 @serial8250_modem_status(ptr noundef %port) #2
  %25 = and i8 %lsr.0, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool65.not = icmp eq i8 %25, 0
  br i1 %tobool65.not, label %if.end61.if.end72_crit_edge, label %land.lhs.true66

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end72

land.lhs.true66:                                  ; preds = %if.end61
  %ier67 = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %26 = ptrtoint ptr %ier67 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ier67, align 2
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool70.not = icmp eq i8 %28, 0
  br i1 %tobool70.not, label %land.lhs.true66.if.end72_crit_edge, label %if.then71

land.lhs.true66.if.end72_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end72

if.then71:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @serial8250_tx_chars(ptr noundef %port) #2
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %land.lhs.true66.if.end72_crit_edge, %if.end61.if.end72_crit_edge
  %29 = ptrtoint ptr %lsr_saved_flags to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv29, ptr %lsr_saved_flags, align 4
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 48
  %30 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.then.i109, label %if.end.i110

if.then.i109:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #2
  br label %cleanup

if.end.i110:                                      ; preds = %if.end72
  %sysrq_ch1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 47
  %32 = ptrtoint ptr %sysrq_ch1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sysrq_ch1.i, align 4
  store i32 0, ptr %sysrq_ch1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool4.not.i = icmp eq i32 %33, 0
  br i1 %tobool4.not.i, label %if.end.i110.cleanup_crit_edge, label %if.then5.i

if.end.i110.cleanup_crit_edge:                    ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @handle_sysrq(i32 noundef %33) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i110.cleanup_crit_edge, %if.then.i109, %if.then15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then15 ], [ 1, %if.then.i109 ], [ 1, %if.end.i110.cleanup_crit_edge ], [ 1, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @serial8250_rx_chars(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_modem_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

!0 = !{ptr @__ksymtab_fsl8250_handle_irq, !1, !"__ksymtab_fsl8250_handle_irq", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_fsl.c", i32 86, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 2000, i32 1}
