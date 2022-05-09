; ModuleID = '/llk/IR_all_yes/drivers/iio/common/st_sensors/st_sensors_buffer.c_pt.bc'
source_filename = "../drivers/iio/common/st_sensors/st_sensors_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_sensors_trigger_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_st_sensors_trigger_handler\09\09\09\09"
module asm "\09.long\09__crc_st_sensors_trigger_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_sensors_trigger_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22st_sensors_trigger_handler\22\09\09\09\09\09"
module asm "__kstrtabns_st_sensors_trigger_handler:\09\09\09\09\09"
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
%struct.st_sensor_data = type { ptr, %struct.iio_mount_matrix, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i8, i8, i32, i8, i8, i64, [32 x i8], [16 x i8], [112 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.78, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.78 = type { i8, i8, i8, i8, i8, i32 }

@__kstrtab_st_sensors_trigger_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_sensors_trigger_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_st_sensors_trigger_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_sensors_trigger_handler to i32), ptr @__kstrtab_st_sensors_trigger_handler, ptr @__kstrtabns_st_sensors_trigger_handler }, section "___ksymtab+st_sensors_trigger_handler", align 4
@__UNIQUE_ID_author290 = internal constant [53 x i8] c"st_sensors.author=Denis Ciocca <denis.ciocca@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"st_sensors.description=STMicroelectronics ST-sensors buffer\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [57 x i8] c"st_sensors.file=drivers/iio/common/st_sensors/st_sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"st_sensors.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_st_sensors_trigger_handler], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_sensors_trigger_handler(i32 %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #2
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %hw_timestamp = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %hw_timestamp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hw_timestamp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %timestamp.0 = phi i64 [ %5, %if.then ], [ %call3, %if.else ]
  %buffer_data = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %num_data_channels1.i = getelementptr inbounds %struct.st_sensor_data, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %num_data_channels1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_data_channels1.i, align 4
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active_scan_mask.i, align 4
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %11, i32 noundef %9, i32 noundef 0) #2
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %9)
  %cmp38.i = icmp ult i32 %call2.i, %9
  br i1 %cmp38.i, label %for.body.lr.ph.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %if.end
  %regmap.i = getelementptr inbounds %struct.st_sensor_data, ptr %7, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buf.addr.040.i = phi ptr [ %buffer_data, %for.body.lr.ph.i ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.039.i = phi i32 [ %call2.i, %for.body.lr.ph.i ], [ %call18.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels.i, align 8
  %realbits.i = getelementptr %struct.iio_chan_spec, ptr %13, i32 %i.039.i, i32 5, i32 1
  %14 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %realbits.i, align 1
  %conv.i = zext i8 %15 to i32
  %shift.i = getelementptr %struct.iio_chan_spec, ptr %13, i32 %i.039.i, i32 5, i32 3
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift.i, align 1
  %conv4.i = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, 7
  %sub.i = add nuw nsw i32 %add.i, %conv4.i
  %div37.i = lshr i32 %sub.i, 3
  %storagebits.i = getelementptr %struct.iio_chan_spec, ptr %13, i32 %i.039.i, i32 5, i32 2
  %18 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %storagebits.i, align 2
  %20 = lshr i8 %19, 3
  %21 = zext i8 %20 to i32
  %22 = ptrtoint ptr %buf.addr.040.i to i32
  %sub8.i = add i32 %22, -1
  %add9.i = add i32 %sub8.i, %21
  %neg.i = sub nsw i32 0, %21
  %and.i = and i32 %add9.i, %neg.i
  %23 = inttoptr i32 %and.i to ptr
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 8
  %address.i = getelementptr %struct.iio_chan_spec, ptr %13, i32 %i.039.i, i32 3
  %26 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %address.i, align 4
  %call11.i = tail call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef %27, ptr noundef %23, i32 noundef %div37.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %for.body.i.st_sensors_get_buffer_element_error_crit_edge, label %for.inc.i

for.body.i.st_sensors_get_buffer_element_error_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %st_sensors_get_buffer_element_error

for.inc.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 %21
  %28 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %active_scan_mask.i, align 4
  %add17.i = add nuw i32 %i.039.i, 1
  %call18.i = tail call i32 @_find_next_bit_be(ptr noundef %29, i32 noundef %9, i32 noundef %add17.i) #2
  %cmp.i = icmp ult i32 %call18.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end6_crit_edge

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.end6:                                          ; preds = %for.inc.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %scan_timestamp.i, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.end6.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end6.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %33, 3
  %sub.i17 = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer_data, i32 %sub.i17
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %timestamp.0, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end6.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer_data) #2
  br label %st_sensors_get_buffer_element_error

st_sensors_get_buffer_element_error:              ; preds = %iio_push_to_buffers_with_timestamp.exit, %for.body.i.st_sensors_get_buffer_element_error_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %36) #2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_st_sensors_trigger_handler, !1, !"__ksymtab_st_sensors_trigger_handler", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/st_sensors/st_sensors_buffer.c", i32 80, i32 1}
!2 = !{ptr @__UNIQUE_ID_author290, !3, !"__UNIQUE_ID_author290", i1 false, i1 false}
!3 = !{!"../drivers/iio/common/st_sensors/st_sensors_buffer.c", i32 82, i32 1}
!4 = !{ptr @__UNIQUE_ID_description291, !5, !"__UNIQUE_ID_description291", i1 false, i1 false}
!5 = !{!"../drivers/iio/common/st_sensors/st_sensors_buffer.c", i32 83, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/iio/common/st_sensors/st_sensors_buffer.c", i32 84, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
