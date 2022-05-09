; ModuleID = '/llk/IR_all_yes/drivers/iio/common/ssp_sensors/ssp_iio.c_pt.bc'
source_filename = "../drivers/iio/common/ssp_sensors/ssp_iio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ssp_common_buffer_postenable\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_common_buffer_postenable\09\09\09\09"
module asm "\09.long\09__crc_ssp_common_buffer_postenable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_common_buffer_postenable:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_common_buffer_postenable\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_common_buffer_postenable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssp_common_buffer_postdisable\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_common_buffer_postdisable\09\09\09\09"
module asm "\09.long\09__crc_ssp_common_buffer_postdisable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_common_buffer_postdisable:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_common_buffer_postdisable\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_common_buffer_postdisable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssp_common_process_data\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_common_process_data\09\09\09\09"
module asm "\09.long\09__crc_ssp_common_process_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_common_process_data:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_common_process_data\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_common_process_data:\09\09\09\09\09"
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
%struct.ssp_sensor_data = type { ptr, i32, ptr }

@__kstrtab_ssp_common_buffer_postenable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_common_buffer_postenable = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_common_buffer_postenable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_common_buffer_postenable to i32), ptr @__kstrtab_ssp_common_buffer_postenable, ptr @__kstrtabns_ssp_common_buffer_postenable }, section "___ksymtab+ssp_common_buffer_postenable", align 4
@__kstrtab_ssp_common_buffer_postdisable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_common_buffer_postdisable = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_common_buffer_postdisable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_common_buffer_postdisable to i32), ptr @__kstrtab_ssp_common_buffer_postdisable, ptr @__kstrtabns_ssp_common_buffer_postdisable }, section "___ksymtab+ssp_common_buffer_postdisable", align 4
@__kstrtab_ssp_common_process_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_common_process_data = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_common_process_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_common_process_data to i32), ptr @__kstrtab_ssp_common_process_data, ptr @__kstrtabns_ssp_common_process_data }, section "___ksymtab+ssp_common_process_data", align 4
@__UNIQUE_ID_author183 = internal constant [49 x i8] c"ssp_iio.author=Karol Wrona <k.wrona@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [46 x i8] c"ssp_iio.description=Samsung sensorhub commons\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [52 x i8] c"ssp_iio.file=drivers/iio/common/ssp_sensors/ssp_iio\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [20 x i8] c"ssp_iio.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__ksymtab_ssp_common_buffer_postdisable, ptr @__ksymtab_ssp_common_buffer_postenable, ptr @__ksymtab_ssp_common_process_data], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_common_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %8 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3265) #7
  %buffer = getelementptr inbounds %struct.ssp_sensor_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %type = getelementptr inbounds %struct.ssp_sensor_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %call6 = tail call i32 @ssp_get_sensor_delay(ptr noundef %7, i32 noundef %12) #4
  %call7 = tail call i32 @ssp_enable_sensor(ptr noundef %7, i32 noundef %12, i32 noundef %call6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_enable_sensor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_get_sensor_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_common_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.ssp_sensor_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %call3 = tail call i32 @ssp_disable_sensor(ptr noundef %7, i32 noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %buffer = getelementptr inbounds %struct.ssp_sensor_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_disable_sensor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_common_process_data(ptr noundef %indio_dev, ptr nocapture noundef readonly %buf, i32 noundef %len, i64 noundef %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %0 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scan_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %buffer = getelementptr inbounds %struct.ssp_sensor_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %buf, i32 %len)
  %scan_timestamp = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 9
  %7 = ptrtoint ptr %scan_timestamp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scan_timestamp, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end2.thread, label %if.then.i

if.end2.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr i8, ptr %buf, i32 %len
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %time.0.copyload = load i32, ptr %arrayidx, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %time.0.copyload)
  %conv = zext i32 %12 to i64
  %mul = mul nuw nsw i64 %conv, 1000000
  %add = add i64 %mul, %timestamp
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %15 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_bytes, align 4
  %div4.i = lshr i32 %16, 3
  %sub.i = add nsw i32 %div4.i, -1
  %arrayidx.i = getelementptr i64, ptr %14, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end2.thread
  %18 = phi ptr [ %10, %if.end2.thread ], [ %14, %if.then.i ]
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %indio_dev, ptr noundef %18) #4
  br label %cleanup

cleanup:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %iio_push_to_buffers_with_timestamp.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_ssp_common_buffer_postenable, !1, !"__ksymtab_ssp_common_buffer_postenable", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/ssp_sensors/ssp_iio.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab_ssp_common_buffer_postdisable, !3, !"__ksymtab_ssp_common_buffer_postdisable", i1 false, i1 false}
!3 = !{!"../drivers/iio/common/ssp_sensors/ssp_iio.c", i32 58, i32 1}
!4 = !{ptr @__ksymtab_ssp_common_process_data, !5, !"__ksymtab_ssp_common_process_data", i1 false, i1 false}
!5 = !{!"../drivers/iio/common/ssp_sensors/ssp_iio.c", i32 94, i32 1}
!6 = !{ptr @__UNIQUE_ID_author183, !7, !"__UNIQUE_ID_author183", i1 false, i1 false}
!7 = !{!"../drivers/iio/common/ssp_sensors/ssp_iio.c", i32 96, i32 1}
!8 = !{ptr @__UNIQUE_ID_description184, !9, !"__UNIQUE_ID_description184", i1 false, i1 false}
!9 = !{!"../drivers/iio/common/ssp_sensors/ssp_iio.c", i32 97, i32 1}
!10 = !{ptr @__UNIQUE_ID_file185, !11, !"__UNIQUE_ID_file185", i1 false, i1 false}
!11 = !{!"../drivers/iio/common/ssp_sensors/ssp_iio.c", i32 98, i32 1}
!12 = !{ptr @__UNIQUE_ID_license186, !11, !"__UNIQUE_ID_license186", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i8 0, i8 2}
