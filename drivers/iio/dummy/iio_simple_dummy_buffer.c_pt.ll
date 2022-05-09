; ModuleID = '/llk/IR_all_yes/drivers/iio/dummy/iio_simple_dummy_buffer.c_pt.bc'
source_filename = "../drivers/iio/dummy/iio_simple_dummy_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
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

@iio_simple_dummy_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } zeroinitializer, align 32
@fakedata = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 7, i16 -33, i16 -2, i16 344], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [34 x i8] c"iio_simple_dummy_buffer_setup_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 99, i32 42 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"fakedata\00", align 1
@___asan_gen_.5 = private constant [47 x i8] c"../drivers/iio/dummy/iio_simple_dummy_buffer.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 27, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @iio_simple_dummy_buffer_setup_ops, ptr @fakedata], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_simple_dummy_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakedata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_simple_dummy_configure_buffer(ptr noundef %indio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %indio_dev, ptr noundef null, ptr noundef nonnull @iio_simple_dummy_trigger_h, i32 noundef 0, ptr noundef nonnull @iio_simple_dummy_buffer_setup_ops, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_simple_dummy_trigger_h(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_bytes, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end:                                           ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masklength, align 8
  %6 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %7, i32 noundef %5) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %5)
  %cmp4.i = icmp eq i32 %call.i, %5
  br i1 %cmp4.i, label %if.end.if.end12_crit_edge, label %if.end.if.end.i32_crit_edge

if.end.if.end.i32_crit_edge:                      ; preds = %if.end
  br label %if.end.i32

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end.i32:                                       ; preds = %for.body, %if.end.if.end.i32_crit_edge
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %if.end.if.end.i32_crit_edge ]
  %j.0 = phi i32 [ %inc11, %for.body ], [ 0, %if.end.if.end.i32_crit_edge ]
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  %10 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active_scan_mask, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %11, i32 noundef %9) #3
  %cmp = icmp slt i32 %i.0, %call4.i
  br i1 %cmp, label %for.body, label %if.end.i32.if.end12_crit_edge

if.end.i32.if.end12_crit_edge:                    ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

for.body:                                         ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_scan_mask, align 4
  %14 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %masklength, align 8
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %13, i32 noundef %15, i32 noundef %j.0) #3
  %arrayidx = getelementptr [4 x i16], ptr @fakedata, i32 0, i32 %call9
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %arrayidx10 = getelementptr i16, ptr %call9.i, i32 %i.0
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx10, align 2
  %inc = add nuw nsw i32 %i.0, 1
  %inc11 = add i32 %call9, 1
  br label %if.end.i32

if.end12:                                         ; preds = %if.end.i32.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = tail call i64 @iio_get_time_ns(ptr noundef %1) #3
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scan_timestamp.i, align 8, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i40 = icmp eq i8 %20, 0
  br i1 %tobool.not.i40, label %if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i42

if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i42:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_bytes, align 4
  %div1.i = lshr i32 %22, 3
  %sub.i41 = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %call9.i, i32 %sub.i41
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call13, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i42, %if.end12.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i43 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %call9.i) #3
  tail call void @kfree(ptr noundef nonnull %call9.i) #3
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %25) #3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_simple_dummy_unconfigure_buffer(ptr noundef %indio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %indio_dev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @fakedata, !1, !"fakedata", i1 false, i1 false}
!1 = !{!"../drivers/iio/dummy/iio_simple_dummy_buffer.c", i32 27, i32 18}
!2 = !{ptr @iio_simple_dummy_buffer_setup_ops, !3, !"iio_simple_dummy_buffer_setup_ops", i1 false, i1 false}
!3 = !{!"../drivers/iio/dummy/iio_simple_dummy_buffer.c", i32 99, i32 42}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
