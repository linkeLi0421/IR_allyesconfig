; ModuleID = '/llk/IR_all_yes/drivers/iio/buffer/industrialio-triggered-buffer.c_pt.bc'
source_filename = "../drivers/iio/buffer/industrialio-triggered-buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iio_triggered_buffer_setup_ext\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_triggered_buffer_setup_ext\09\09\09\09"
module asm "\09.long\09__crc_iio_triggered_buffer_setup_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_triggered_buffer_setup_ext\22\09\09\09\09\09"
module asm "__kstrtabns_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iio_triggered_buffer_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_triggered_buffer_cleanup\09\09\09\09"
module asm "\09.long\09__crc_iio_triggered_buffer_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_triggered_buffer_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_triggered_buffer_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_iio_triggered_buffer_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_iio_triggered_buffer_setup_ext\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_iio_triggered_buffer_setup_ext\09\09\09\09"
module asm "\09.long\09__crc_devm_iio_triggered_buffer_setup_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_triggered_buffer_setup_ext\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
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
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s_consumer%d\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_triggered_buffer_setup_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_triggered_buffer_setup_ext to i32), ptr @__kstrtab_iio_triggered_buffer_setup_ext, ptr @__kstrtabns_iio_triggered_buffer_setup_ext }, section "___ksymtab+iio_triggered_buffer_setup_ext", align 4
@__kstrtab_iio_triggered_buffer_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_triggered_buffer_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_triggered_buffer_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_triggered_buffer_cleanup to i32), ptr @__kstrtab_iio_triggered_buffer_cleanup, ptr @__kstrtabns_iio_triggered_buffer_cleanup }, section "___ksymtab+iio_triggered_buffer_cleanup", align 4
@__kstrtab_devm_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_triggered_buffer_setup_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_triggered_buffer_setup_ext to i32), ptr @__kstrtab_devm_iio_triggered_buffer_setup_ext, ptr @__kstrtabns_devm_iio_triggered_buffer_setup_ext }, section "___ksymtab_gpl+devm_iio_triggered_buffer_setup_ext", align 4
@__UNIQUE_ID_author187 = internal constant [74 x i8] c"industrialio_triggered_buffer.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [96 x i8] c"industrialio_triggered_buffer.description=IIO helper functions for setting up triggered buffers\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [84 x i8] c"industrialio_triggered_buffer.file=drivers/iio/buffer/industrialio-triggered-buffer\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [42 x i8] c"industrialio_triggered_buffer.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [54 x i8] c"../drivers/iio/buffer/industrialio-triggered-buffer.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 59, i32 8 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_devm_iio_triggered_buffer_setup_ext, ptr @__ksymtab_iio_triggered_buffer_cleanup, ptr @__ksymtab_iio_triggered_buffer_setup_ext, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef %indio_dev, ptr noundef %h, ptr noundef %thread, i32 noundef %direction, ptr noundef %setup_ops, ptr noundef %buffer_attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iio_kfifo_allocate() #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #2
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @iio_alloc_pollfunc(ptr noundef %h, ptr noundef %thread, i32 noundef 8192, ptr noundef %indio_dev, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %call1) #2
  %pollfunc = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 11
  %2 = ptrtoint ptr %pollfunc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %pollfunc, align 8
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.end.error_kfifo_free_crit_edge, label %if.end5

if.end.error_kfifo_free_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %error_kfifo_free

if.end5:                                          ; preds = %if.end
  %setup_ops6 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 18
  %3 = ptrtoint ptr %setup_ops6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %setup_ops, ptr %setup_ops6, align 4
  %4 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %indio_dev, align 8
  %or = or i32 %5, 2
  store i32 %or, ptr %indio_dev, align 8
  %direction7 = getelementptr inbounds %struct.iio_buffer, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %direction7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %direction, ptr %direction7, align 4
  %attrs = getelementptr inbounds %struct.iio_buffer, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer_attrs, ptr %attrs, align 4
  %call8 = tail call i32 @iio_device_attach_buffer(ptr noundef %indio_dev, ptr noundef nonnull %call) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %error_dealloc_pollfunc, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

error_dealloc_pollfunc:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %pollfunc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pollfunc, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %9) #2
  br label %error_kfifo_free

error_kfifo_free:                                 ; preds = %error_dealloc_pollfunc, %if.end.error_kfifo_free_crit_edge
  %ret.0 = phi i32 [ %call8, %error_dealloc_pollfunc ], [ -12, %if.end.error_kfifo_free_crit_edge ]
  tail call void @iio_kfifo_free(ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %error_kfifo_free, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %ret.0, %error_kfifo_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_kfifo_allocate() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_alloc_pollfunc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_attach_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_dealloc_pollfunc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_triggered_buffer_cleanup(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pollfunc = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 11
  %0 = ptrtoint ptr %pollfunc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pollfunc, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %1) #2
  %buffer = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 3
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 8
  tail call void @iio_kfifo_free(ptr noundef %3) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef %indio_dev, ptr noundef %h, ptr noundef %thread, i32 noundef %direction, ptr noundef %ops, ptr noundef %buffer_attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %indio_dev, ptr noundef %h, ptr noundef %thread, i32 noundef %direction, ptr noundef %ops, ptr noundef %buffer_attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_iio_triggered_buffer_clean, ptr noundef %indio_dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %pollfunc.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 11
  %0 = ptrtoint ptr %pollfunc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pollfunc.i.i.i, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %1) #2
  %buffer.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 3
  %2 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer.i.i.i, align 8
  tail call void @iio_kfifo_free(ptr noundef %3) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_iio_triggered_buffer_clean(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pollfunc.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 11
  %0 = ptrtoint ptr %pollfunc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pollfunc.i, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %1) #2
  %buffer.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 3
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer.i, align 8
  tail call void @iio_kfifo_free(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/buffer/industrialio-triggered-buffer.c", i32 59, i32 8}
!2 = !{ptr @__ksymtab_iio_triggered_buffer_setup_ext, !3, !"__ksymtab_iio_triggered_buffer_setup_ext", i1 false, i1 false}
!3 = !{!"../drivers/iio/buffer/industrialio-triggered-buffer.c", i32 89, i32 1}
!4 = !{ptr @__ksymtab_iio_triggered_buffer_cleanup, !5, !"__ksymtab_iio_triggered_buffer_cleanup", i1 false, i1 false}
!5 = !{!"../drivers/iio/buffer/industrialio-triggered-buffer.c", i32 100, i32 1}
!6 = !{ptr @__ksymtab_devm_iio_triggered_buffer_setup_ext, !7, !"__ksymtab_devm_iio_triggered_buffer_setup_ext", i1 false, i1 false}
!7 = !{!"../drivers/iio/buffer/industrialio-triggered-buffer.c", i32 125, i32 1}
!8 = !{ptr @__UNIQUE_ID_author187, !9, !"__UNIQUE_ID_author187", i1 false, i1 false}
!9 = !{!"../drivers/iio/buffer/industrialio-triggered-buffer.c", i32 127, i32 1}
!10 = !{ptr @__UNIQUE_ID_description188, !11, !"__UNIQUE_ID_description188", i1 false, i1 false}
!11 = !{!"../drivers/iio/buffer/industrialio-triggered-buffer.c", i32 128, i32 1}
!12 = !{ptr @__UNIQUE_ID_file189, !13, !"__UNIQUE_ID_file189", i1 false, i1 false}
!13 = !{!"../drivers/iio/buffer/industrialio-triggered-buffer.c", i32 129, i32 1}
!14 = !{ptr @__UNIQUE_ID_license190, !13, !"__UNIQUE_ID_license190", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
