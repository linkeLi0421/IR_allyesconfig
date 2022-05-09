; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/platformdata.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/platformdata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s3c_sdhci_platdata = type { i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr }

@s3c_set_platdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: no platform data supplied\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_set_platdata\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-s3c/platformdata.c\00", [63 x i8] zeroinitializer }, align 32
@s3c_set_platdata._entry_ptr = internal global ptr @s3c_set_platdata._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [36 x i8] c"../arch/arm/mach-s3c/platformdata.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 22, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @s3c_set_platdata._entry, ptr @s3c_set_platdata._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_set_platdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s3c_set_platdata(ptr noundef %pd, i32 noundef %pdsize, ptr nocapture noundef %pdev) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pd, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmemdup(ptr noundef nonnull %pd, i32 noundef %pdsize, i32 noundef 3264) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %platform_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call1, %if.end4 ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @s3c_sdhci_set_platdata(ptr nocapture noundef readonly %pd, ptr nocapture noundef %set) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cd_type = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 4
  %0 = ptrtoint ptr %cd_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cd_type, align 4
  %cd_type1 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 4
  %2 = ptrtoint ptr %cd_type1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cd_type1, align 4
  %ext_cd_init = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 7
  %3 = ptrtoint ptr %ext_cd_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext_cd_init, align 4
  %ext_cd_init2 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 7
  %5 = ptrtoint ptr %ext_cd_init2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ext_cd_init2, align 4
  %ext_cd_cleanup = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 8
  %6 = ptrtoint ptr %ext_cd_cleanup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_cd_cleanup, align 4
  %ext_cd_cleanup3 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 8
  %8 = ptrtoint ptr %ext_cd_cleanup3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ext_cd_cleanup3, align 4
  %ext_cd_gpio = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 5
  %9 = ptrtoint ptr %ext_cd_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ext_cd_gpio, align 4
  %ext_cd_gpio4 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 5
  %11 = ptrtoint ptr %ext_cd_gpio4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ext_cd_gpio4, align 4
  %ext_cd_gpio_invert = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 6
  %12 = ptrtoint ptr %ext_cd_gpio_invert to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ext_cd_gpio_invert, align 4, !range !15
  %ext_cd_gpio_invert5 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 6
  %14 = ptrtoint ptr %ext_cd_gpio_invert5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ext_cd_gpio_invert5, align 4
  %15 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cfg_gpio = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 9
  %18 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg_gpio, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cfg_gpio12 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 9
  %20 = ptrtoint ptr %cfg_gpio12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cfg_gpio12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %host_caps = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 1
  %21 = ptrtoint ptr %host_caps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %host_caps17 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 1
  %23 = ptrtoint ptr %host_caps17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host_caps17, align 4
  %or = or i32 %24, %22
  store i32 %or, ptr %host_caps17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %host_caps2 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 2
  %25 = ptrtoint ptr %host_caps2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_caps2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.end18.if.end24_crit_edge, label %if.then20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %host_caps222 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 2
  %27 = ptrtoint ptr %host_caps222 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %host_caps222, align 4
  %or23 = or i32 %28, %26
  store i32 %or23, ptr %host_caps222, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end18.if.end24_crit_edge
  %pm_caps = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %pd, i32 0, i32 3
  %29 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pm_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not = icmp eq i32 %30, 0
  br i1 %tobool25.not, label %if.end24.if.end30_crit_edge, label %if.then26

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %pm_caps28 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %set, i32 0, i32 3
  %31 = ptrtoint ptr %pm_caps28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pm_caps28, align 4
  %or29 = or i32 %32, %30
  store i32 %or29, ptr %pm_caps28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end24.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/platformdata.c", i32 22, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s3c_set_platdata._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s3c_set_platdata._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
