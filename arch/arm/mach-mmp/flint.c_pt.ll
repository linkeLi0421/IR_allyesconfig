; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mmp/flint.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/flint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxa_gpio_platform_data = type { i32, ptr }
%struct.pxa_device_desc = type { ptr, ptr, i32, i32, i32, i32, [2 x i32] }
%struct.smc91x_platdata = type { i32, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flint Development Platform\00", [37 x i8] zeroinitializer }, align 32
@__mach_desc_FLINT = internal constant %struct.machine_desc { i32 2383, ptr @.str, i32 0, ptr null, i32 368, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_map_io, ptr null, ptr @mmp2_init_irq, ptr @mmp2_timer_init, ptr @flint_init, ptr null, ptr null, ptr @mmp_restart }, section ".arch.info.init", align 4
@flint_pin_config = internal global [36 x i32] [i32 361517, i32 361518, i32 361519, i32 361520, i32 360599, i32 360593, i32 360594, i32 360600, i32 360601, i32 360602, i32 360561, i32 361627, i32 360616, i32 360615, i32 360614, i32 360613, i32 360555, i32 360554, i32 360553, i32 360552, i32 360559, i32 360612, i32 360611, i32 360610, i32 360609, i32 360558, i32 360557, i32 360556, i32 360591, i32 360592, i32 360595, i32 360596, i32 360598, i32 360597, i32 360560, i32 360608], section ".init.data", align 4
@mmp2_device_gpio = external dso_local global %struct.platform_device, align 8
@mmp2_gpio_pdata = internal global { %struct.pxa_gpio_platform_data, [24 x i8] } { %struct.pxa_gpio_platform_data { i32 128, ptr null }, [24 x i8] zeroinitializer }, align 32
@smc91x_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.1, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flint_smc91x_info, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @smc91x_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@mmp2_device_uart1 = external dso_local global %struct.pxa_device_desc, align 4
@mmp2_device_uart2 = external dso_local global %struct.pxa_device_desc, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smc91x\00", [25 x i8] zeroinitializer }, align 32
@flint_smc91x_info = internal global { %struct.smc91x_platdata, [24 x i8] } { %struct.smc91x_platdata { i32 10, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@smc91x_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 -1879047424, i32 -1877999617, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 283, i32 283, ptr null, i32 1025, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 124, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"mmp2_gpio_pdata\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 78, i32 38 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"smc91x_device\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 99, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 100, i32 20 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"flint_smc91x_info\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 82, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"smc91x_resources\00", align 1
@___asan_gen_.18 = private constant [29 x i8] c"../arch/arm/mach-mmp/flint.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 86, i32 24 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__mach_desc_FLINT, ptr @.str, ptr @mmp2_gpio_pdata, ptr @smc91x_device, ptr @.str.1, ptr @flint_smc91x_info, ptr @smc91x_resources], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_gpio_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91x_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flint_smc91x_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91x_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmp_map_io() #0 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmp2_init_irq() #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp2_timer_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @flint_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mfp_config(ptr noundef nonnull @flint_pin_config, i32 noundef 36) #3
  %call.i = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_uart1, ptr noundef null, i32 noundef 0) #3
  %call.i5 = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_uart2, ptr noundef null, i32 noundef 0) #3
  %call2 = tail call i32 @platform_device_add_data(ptr noundef nonnull @mmp2_device_gpio, ptr noundef nonnull @mmp2_gpio_pdata, i32 noundef 8) #3
  %call3 = tail call i32 @platform_device_register(ptr noundef nonnull @mmp2_device_gpio) #3
  %call4 = tail call i32 @platform_device_register(ptr noundef nonnull @smc91x_device) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_restart(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfp_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa_register_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mmp/flint.c", i32 124, i32 1}
!2 = !{ptr @__mach_desc_FLINT, !1, !"__mach_desc_FLINT", i1 false, i1 false}
!3 = !{ptr @flint_pin_config, !4, !"flint_pin_config", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-mmp/flint.c", i32 30, i32 22}
!5 = !{ptr @mmp2_gpio_pdata, !6, !"mmp2_gpio_pdata", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-mmp/flint.c", i32 78, i32 38}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-mmp/flint.c", i32 100, i32 20}
!9 = !{ptr @smc91x_device, !10, !"smc91x_device", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-mmp/flint.c", i32 99, i32 31}
!11 = !{ptr @flint_smc91x_info, !12, !"flint_smc91x_info", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-mmp/flint.c", i32 82, i32 31}
!13 = !{ptr @smc91x_resources, !14, !"smc91x_resources", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-mmp/flint.c", i32 86, i32 24}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
