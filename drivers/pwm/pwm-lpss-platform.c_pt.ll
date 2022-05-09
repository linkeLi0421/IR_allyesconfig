; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-lpss-platform.c_pt.bc'
source_filename = "../drivers/pwm/pwm-lpss-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.pwm_lpss_boardinfo = type { i32, i32, i32, i8, i8 }
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

@__initcall__kmod_pwm_lpss_platform__184_109_pwm_lpss_driver_platform_init6 = internal global ptr @pwm_lpss_driver_platform_init, section ".initcall6.init", align 4
@pwm_lpss_driver_platform = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_lpss_probe_platform, ptr @pwm_lpss_remove_platform, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @pwm_lpss_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_lpss_driver_platform_exit = internal global ptr @pwm_lpss_driver_platform_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description185 = internal constant [65 x i8] c"pwm_lpss_platform.description=PWM platform driver for Intel LPSS\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [53 x i8] c"pwm_lpss_platform.file=drivers/pwm/pwm-lpss-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [33 x i8] c"pwm_lpss_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [42 x i8] c"pwm_lpss_platform.alias=platform:pwm-lpss\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm-lpss\00", [23 x i8] zeroinitializer }, align 32
@pwm_lpss_acpi_match = internal constant { [5 x %struct.acpi_device_id], [40 x i8] } { [5 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"80860F09\00", i32 ptrtoint (ptr @pwm_lpss_byt_info to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"80862288\00", i32 ptrtoint (ptr @pwm_lpss_bsw_info to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"80862289\00", i32 ptrtoint (ptr @pwm_lpss_bsw_info to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"80865AC8\00", i32 ptrtoint (ptr @pwm_lpss_bxt_info to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pwm_lpss_byt_info = internal constant { %struct.pwm_lpss_boardinfo, [16 x i8] } { %struct.pwm_lpss_boardinfo { i32 25000000, i32 1, i32 16, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@pwm_lpss_bsw_info = internal constant { %struct.pwm_lpss_boardinfo, [16 x i8] } { %struct.pwm_lpss_boardinfo { i32 19200000, i32 1, i32 16, i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@pwm_lpss_bxt_info = internal constant { %struct.pwm_lpss_boardinfo, [16 x i8] } { %struct.pwm_lpss_boardinfo { i32 19200000, i32 4, i32 22, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"pwm_lpss_driver_platform\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 101, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 103, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"pwm_lpss_acpi_match\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 92, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"pwm_lpss_byt_info\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 19, i32 40 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"pwm_lpss_bsw_info\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 26, i32 40 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"pwm_lpss_bxt_info\00", align 1
@___asan_gen_.17 = private constant [35 x i8] c"../drivers/pwm/pwm-lpss-platform.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 34, i32 40 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_pwm_lpss_driver_platform_exit, ptr @__initcall__kmod_pwm_lpss_platform__184_109_pwm_lpss_driver_platform_init6, ptr @pwm_lpss_driver_platform_exit, ptr @pwm_lpss_driver_platform, ptr @.str, ptr @pwm_lpss_acpi_match, ptr @pwm_lpss_byt_info, ptr @pwm_lpss_bsw_info, ptr @pwm_lpss_bxt_info], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_driver_platform to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_acpi_match to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_byt_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_bsw_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_lpss_bxt_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_lpss_driver_platform_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_lpss_driver_platform, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_lpss_driver_platform_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_lpss_driver_platform) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_lpss_probe_platform(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_lpss_remove_platform(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_pwm_lpss_platform__184_109_pwm_lpss_driver_platform_init6, !1, !"__initcall__kmod_pwm_lpss_platform__184_109_pwm_lpss_driver_platform_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 109, i32 1}
!2 = !{ptr @__exitcall_pwm_lpss_driver_platform_exit, !1, !"__exitcall_pwm_lpss_driver_platform_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description185, !4, !"__UNIQUE_ID_description185", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 111, i32 1}
!5 = !{ptr @__UNIQUE_ID_file186, !6, !"__UNIQUE_ID_file186", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 112, i32 1}
!7 = !{ptr @__UNIQUE_ID_license187, !6, !"__UNIQUE_ID_license187", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias188, !9, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 113, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 103, i32 11}
!12 = !{ptr @pwm_lpss_driver_platform, !13, !"pwm_lpss_driver_platform", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 101, i32 31}
!14 = !{ptr @pwm_lpss_acpi_match, !15, !"pwm_lpss_acpi_match", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 92, i32 36}
!16 = !{ptr @pwm_lpss_byt_info, !17, !"pwm_lpss_byt_info", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 19, i32 40}
!18 = !{ptr @pwm_lpss_bsw_info, !19, !"pwm_lpss_bsw_info", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 26, i32 40}
!20 = !{ptr @pwm_lpss_bxt_info, !21, !"pwm_lpss_bxt_info", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-lpss-platform.c", i32 34, i32 40}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
