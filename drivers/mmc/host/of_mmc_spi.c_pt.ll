; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/of_mmc_spi.c_pt.bc'
source_filename = "../drivers/mmc/host/of_mmc_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mmc_spi_get_pdata\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_spi_get_pdata\09\09\09\09"
module asm "\09.long\09__crc_mmc_spi_get_pdata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_spi_get_pdata:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_spi_get_pdata\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_spi_get_pdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_spi_put_pdata\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_spi_put_pdata\09\09\09\09"
module asm "\09.long\09__crc_mmc_spi_put_pdata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_spi_put_pdata:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_spi_put_pdata\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_spi_put_pdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mmc_spi_platform_data = type { ptr, ptr, i32, i32, i16, i16, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.of_mmc_spi = type { %struct.mmc_spi_platform_data, i32 }

@__UNIQUE_ID_file273 = internal constant [44 x i8] c"of_mmc_spi.file=drivers/mmc/host/of_mmc_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [23 x i8] c"of_mmc_spi.license=GPL\00", section ".modinfo", align 1
@__kstrtab_mmc_spi_get_pdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_spi_get_pdata = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_spi_get_pdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_spi_get_pdata to i32), ptr @__kstrtab_mmc_spi_get_pdata, ptr @__kstrtabns_mmc_spi_get_pdata }, section "___ksymtab+mmc_spi_get_pdata", align 4
@__kstrtab_mmc_spi_put_pdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_spi_put_pdata = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_spi_put_pdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_spi_put_pdata to i32), ptr @__kstrtab_mmc_spi_put_pdata, ptr @__kstrtabns_mmc_spi_put_pdata }, section "___ksymtab+mmc_spi_put_pdata", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__ksymtab_mmc_spi_get_pdata, ptr @__ksymtab_mmc_spi_put_pdata], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmc_spi_get_pdata(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call ptr @dev_fwnode(ptr noundef %spi) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 32) #6
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ocr_mask = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %call7.i.i, i32 0, i32 6
  %call10 = tail call i32 @mmc_of_parse_voltage(ptr noundef %1, ptr noundef %ocr_mask) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %err_ocr, label %if.end12

if.end12:                                         ; preds = %if.end9
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %detect_irq = getelementptr inbounds %struct.of_mmc_spi, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %detect_irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %detect_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp14 = icmp sgt i32 %8, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @of_mmc_spi_init, ptr %call7.i.i, align 8
  %exit = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @of_mmc_spi_exit, ptr %exit, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %caps = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 8
  %or = or i32 %13, 32
  store i32 %or, ptr %caps, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %14 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %platform_data, align 8
  br label %cleanup

err_ocr:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %err_ocr, %if.end19, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %5, %if.then ], [ null, %err_ocr ], [ %call7.i.i, %if.end19 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse_voltage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_mmc_spi_init(ptr nocapture noundef readonly %dev, ptr noundef %irqhandler, ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %detect_irq = getelementptr inbounds %struct.of_mmc_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %detect_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %detect_irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef null, ptr noundef %irqhandler, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef %mmc) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @of_mmc_spi_exit(ptr nocapture noundef readonly %dev, ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %detect_irq = getelementptr inbounds %struct.of_mmc_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %detect_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %detect_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %mmc) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_spi_put_pdata(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call ptr @dev_fwnode(ptr noundef %spi) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef nonnull %1) #3
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %platform_data.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__UNIQUE_ID_file273, !1, !"__UNIQUE_ID_file273", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/of_mmc_spi.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_license274, !1, !"__UNIQUE_ID_license274", i1 false, i1 false}
!3 = !{ptr @__ksymtab_mmc_spi_get_pdata, !4, !"__ksymtab_mmc_spi_get_pdata", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/of_mmc_spi.c", i32 80, i32 1}
!5 = !{ptr @__ksymtab_mmc_spi_put_pdata, !6, !"__ksymtab_mmc_spi_put_pdata", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/of_mmc_spi.c", i32 93, i32 1}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
