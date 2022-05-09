; ModuleID = '/llk/IR_all_yes/drivers/iio/industrialio-triggered-event.c_pt.bc'
source_filename = "../drivers/iio/industrialio-triggered-event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iio_triggered_event_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_triggered_event_setup\09\09\09\09"
module asm "\09.long\09__crc_iio_triggered_event_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_triggered_event_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_triggered_event_setup\22\09\09\09\09\09"
module asm "__kstrtabns_iio_triggered_event_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iio_triggered_event_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_triggered_event_cleanup\09\09\09\09"
module asm "\09.long\09__crc_iio_triggered_event_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_triggered_event_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_triggered_event_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_iio_triggered_event_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s_consumer%d\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_iio_triggered_event_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_triggered_event_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_triggered_event_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_triggered_event_setup to i32), ptr @__kstrtab_iio_triggered_event_setup, ptr @__kstrtabns_iio_triggered_event_setup }, section "___ksymtab+iio_triggered_event_setup", align 4
@__kstrtab_iio_triggered_event_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_triggered_event_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_triggered_event_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_triggered_event_cleanup to i32), ptr @__kstrtab_iio_triggered_event_cleanup, ptr @__kstrtabns_iio_triggered_event_cleanup }, section "___ksymtab+iio_triggered_event_cleanup", align 4
@__UNIQUE_ID_author187 = internal constant [53 x i8] c"industrialio_triggered_event.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [94 x i8] c"industrialio_triggered_event.description=IIO helper functions for setting up triggered events\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [75 x i8] c"industrialio_triggered_event.file=drivers/iio/industrialio-triggered-event\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [41 x i8] c"industrialio_triggered_event.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [46 x i8] c"../drivers/iio/industrialio-triggered-event.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 38, i32 14 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_iio_triggered_event_cleanup, ptr @__ksymtab_iio_triggered_event_setup, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_triggered_event_setup(ptr noundef %indio_dev, ptr noundef %h, ptr noundef %thread) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %call = tail call i32 @iio_device_id(ptr noundef %indio_dev) #2
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @iio_alloc_pollfunc(ptr noundef %h, ptr noundef %thread, i32 noundef 8192, ptr noundef %indio_dev, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %call) #2
  %pollfunc_event = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 12
  %2 = ptrtoint ptr %pollfunc_event to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %pollfunc_event, align 4
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %indio_dev, align 8
  %or = or i32 %4, 16
  store i32 %or, ptr %indio_dev, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_alloc_pollfunc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_triggered_event_cleanup(ptr nocapture noundef %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %indio_dev, align 8
  %and = and i32 %1, -17
  store i32 %and, ptr %indio_dev, align 8
  %pollfunc_event = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 12
  %2 = ptrtoint ptr %pollfunc_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pollfunc_event, align 4
  tail call void @iio_dealloc_pollfunc(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_dealloc_pollfunc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/industrialio-triggered-event.c", i32 38, i32 14}
!2 = !{ptr @__ksymtab_iio_triggered_event_setup, !3, !"__ksymtab_iio_triggered_event_setup", i1 false, i1 false}
!3 = !{!"../drivers/iio/industrialio-triggered-event.c", i32 49, i32 1}
!4 = !{ptr @__ksymtab_iio_triggered_event_cleanup, !5, !"__ksymtab_iio_triggered_event_cleanup", i1 false, i1 false}
!5 = !{!"../drivers/iio/industrialio-triggered-event.c", i32 60, i32 1}
!6 = !{ptr @__UNIQUE_ID_author187, !7, !"__UNIQUE_ID_author187", i1 false, i1 false}
!7 = !{!"../drivers/iio/industrialio-triggered-event.c", i32 62, i32 1}
!8 = !{ptr @__UNIQUE_ID_description188, !9, !"__UNIQUE_ID_description188", i1 false, i1 false}
!9 = !{!"../drivers/iio/industrialio-triggered-event.c", i32 63, i32 1}
!10 = !{ptr @__UNIQUE_ID_file189, !11, !"__UNIQUE_ID_file189", i1 false, i1 false}
!11 = !{!"../drivers/iio/industrialio-triggered-event.c", i32 64, i32 1}
!12 = !{ptr @__UNIQUE_ID_license190, !11, !"__UNIQUE_ID_license190", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
