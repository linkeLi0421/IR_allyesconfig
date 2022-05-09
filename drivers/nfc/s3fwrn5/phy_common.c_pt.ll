; ModuleID = '/llk/IR_all_yes/drivers/nfc/s3fwrn5/phy_common.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/phy_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s3fwrn5_phy_set_wake\22, \22a\22\09"
module asm "\09.weak\09__crc_s3fwrn5_phy_set_wake\09\09\09\09"
module asm "\09.long\09__crc_s3fwrn5_phy_set_wake\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_set_wake\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3fwrn5_phy_power_ctrl\22, \22a\22\09"
module asm "\09.weak\09__crc_s3fwrn5_phy_power_ctrl\09\09\09\09"
module asm "\09.long\09__crc_s3fwrn5_phy_power_ctrl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_power_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_power_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_power_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3fwrn5_phy_set_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_s3fwrn5_phy_set_mode\09\09\09\09"
module asm "\09.long\09__crc_s3fwrn5_phy_set_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3fwrn5_phy_get_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_s3fwrn5_phy_get_mode\09\09\09\09"
module asm "\09.long\09__crc_s3fwrn5_phy_get_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_get_mode\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phy_common = type { ptr, i32, i32, %struct.mutex, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__kstrtab_s3fwrn5_phy_set_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_set_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_set_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_set_wake to i32), ptr @__kstrtab_s3fwrn5_phy_set_wake, ptr @__kstrtabns_s3fwrn5_phy_set_wake }, section "___ksymtab+s3fwrn5_phy_set_wake", align 4
@__kstrtab_s3fwrn5_phy_power_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_power_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_power_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_power_ctrl to i32), ptr @__kstrtab_s3fwrn5_phy_power_ctrl, ptr @__kstrtabns_s3fwrn5_phy_power_ctrl }, section "___ksymtab+s3fwrn5_phy_power_ctrl", align 4
@__kstrtab_s3fwrn5_phy_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_set_mode to i32), ptr @__kstrtab_s3fwrn5_phy_set_mode, ptr @__kstrtabns_s3fwrn5_phy_set_mode }, section "___ksymtab+s3fwrn5_phy_set_mode", align 4
@__kstrtab_s3fwrn5_phy_get_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_get_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_get_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_get_mode to i32), ptr @__kstrtab_s3fwrn5_phy_get_mode, ptr @__kstrtabns_s3fwrn5_phy_get_mode }, section "___ksymtab+s3fwrn5_phy_get_mode", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_s3fwrn5_phy_get_mode, ptr @__ksymtab_s3fwrn5_phy_power_ctrl, ptr @__ksymtab_s3fwrn5_phy_set_mode, ptr @__ksymtab_s3fwrn5_phy_set_wake], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3fwrn5_phy_set_wake(ptr noundef %phy_id, i1 noundef zeroext %wake) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #2
  %gpio_fw_wake = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 2
  %0 = ptrtoint ptr %gpio_fw_wake to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_fw_wake, align 4
  %conv = zext i1 %wake to i32
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %conv) #2
  br i1 %wake, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @msleep(i32 noundef 20) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @s3fwrn5_phy_power_ctrl(ptr nocapture noundef %phy, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.phy_common, ptr %phy, i32 0, i32 4
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %mode1, align 4
  %gpio_en = getelementptr inbounds %struct.phy_common, ptr %phy, i32 0, i32 1
  %3 = ptrtoint ptr %gpio_en to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_en, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %4) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #2
  %gpio_fw_wake = getelementptr inbounds %struct.phy_common, ptr %phy, i32 0, i32 2
  %5 = ptrtoint ptr %gpio_fw_wake to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_fw_wake, align 4
  %call.i19 = tail call ptr @gpio_to_desc(i32 noundef %6) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i19, i32 noundef 0) #2
  %7 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end.if.then8_crit_edge [
    i32 2, label %if.then4
    i32 0, label %if.end.return_crit_edge
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %gpio_fw_wake to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_fw_wake, align 4
  %call.i20 = tail call ptr @gpio_to_desc(i32 noundef %9) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i20, i32 noundef 1) #2
  br label %if.then8

if.then8:                                         ; preds = %if.then4, %if.end.if.then8_crit_edge
  tail call void @msleep(i32 noundef 20) #2
  %10 = ptrtoint ptr %gpio_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_en, align 4
  %call.i21 = tail call ptr @gpio_to_desc(i32 noundef %11) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i21, i32 noundef 0) #2
  tail call void @msleep(i32 noundef 20) #2
  br label %return

return:                                           ; preds = %if.then8, %if.end.return_crit_edge, %entry.return_crit_edge
  %12 = xor i1 %cmp, true
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3fwrn5_phy_set_mode(ptr noundef %phy_id, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #2
  %call = tail call zeroext i1 @s3fwrn5_phy_power_ctrl(ptr noundef %phy_id, i32 noundef %mode)
  tail call void @mutex_unlock(ptr noundef %mutex) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_phy_get_mode(ptr noundef %phy_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #2
  %mode1 = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 4
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #2
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_s3fwrn5_phy_set_wake, !1, !"__ksymtab_s3fwrn5_phy_set_wake", i1 false, i1 false}
!1 = !{!"../drivers/nfc/s3fwrn5/phy_common.c", i32 27, i32 1}
!2 = !{ptr @__ksymtab_s3fwrn5_phy_power_ctrl, !3, !"__ksymtab_s3fwrn5_phy_power_ctrl", i1 false, i1 false}
!3 = !{!"../drivers/nfc/s3fwrn5/phy_common.c", i32 49, i32 1}
!4 = !{ptr @__ksymtab_s3fwrn5_phy_set_mode, !5, !"__ksymtab_s3fwrn5_phy_set_mode", i1 false, i1 false}
!5 = !{!"../drivers/nfc/s3fwrn5/phy_common.c", i32 61, i32 1}
!6 = !{ptr @__ksymtab_s3fwrn5_phy_get_mode, !7, !"__ksymtab_s3fwrn5_phy_get_mode", i1 false, i1 false}
!7 = !{!"../drivers/nfc/s3fwrn5/phy_common.c", i32 76, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
