; ModuleID = '/llk/IR_all_yes/drivers/watchdog/watchdog_hrtimer_pretimeout.c_pt.bc'
source_filename = "../drivers/watchdog/watchdog_hrtimer_pretimeout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.watchdog_core_data = type { %struct.device, %struct.cdev, ptr, %struct.mutex, i64, i64, i64, %struct.hrtimer, %struct.kthread_work, %struct.hrtimer, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_hrtimer_pretimeout_init(ptr nocapture noundef readonly %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %pretimeout_timer = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 9
  tail call void @hrtimer_init(ptr noundef %pretimeout_timer, i32 noundef 1, i32 noundef 1) #2
  %function = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @watchdog_hrtimer_pretimeout, ptr %function, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_hrtimer_pretimeout(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wdd = getelementptr i8, ptr %timer, i32 -192
  %0 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdd, align 8
  tail call void @watchdog_notify_pretimeout(ptr noundef %1) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_hrtimer_pretimeout_start(ptr nocapture noundef readonly %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %4 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pretimeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.then_crit_edge, label %watchdog_pretimeout_invalid.exit

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

watchdog_pretimeout_invalid.exit:                 ; preds = %land.lhs.true
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %6 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout.i, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %9 = icmp ult i32 %8, %5
  br i1 %9, label %watchdog_pretimeout_invalid.exit.if.else_crit_edge, label %watchdog_pretimeout_invalid.exit.if.then_crit_edge

watchdog_pretimeout_invalid.exit.if.then_crit_edge: ; preds = %watchdog_pretimeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

watchdog_pretimeout_invalid.exit.if.else_crit_edge: ; preds = %watchdog_pretimeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

if.then:                                          ; preds = %watchdog_pretimeout_invalid.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %wd_data = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %10 = ptrtoint ptr %wd_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wd_data, align 4
  %pretimeout_timer = getelementptr inbounds %struct.watchdog_core_data, ptr %11, i32 0, i32 9
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout, align 4
  %sub = sub i32 %13, %5
  %conv = zext i32 %sub to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000000
  tail call void @hrtimer_start_range_ns(ptr noundef %pretimeout_timer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 1) #2
  br label %if.end

if.else:                                          ; preds = %watchdog_pretimeout_invalid.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %wd_data3 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %14 = ptrtoint ptr %wd_data3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wd_data3, align 4
  %pretimeout_timer4 = getelementptr inbounds %struct.watchdog_core_data, ptr %15, i32 0, i32 9
  %call5 = tail call i32 @hrtimer_cancel(ptr noundef %pretimeout_timer4) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_hrtimer_pretimeout_stop(ptr nocapture noundef readonly %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data, align 4
  %pretimeout_timer = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 9
  %call = tail call i32 @hrtimer_cancel(ptr noundef %pretimeout_timer) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
