; ModuleID = '/llk/IR_all_yes/arch/arm/mach-tegra/hotplug.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/hotplug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@tegra_hotplug_shutdown = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-tegra/hotplug.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hotplug is not yet initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_hotplug__179_74_tegra_hotplug_init0 = internal global ptr @tegra_hotplug_init, section ".initcall0.init", align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/clk/tegra.h\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [23 x i8] c"tegra_hotplug_shutdown\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 20, i32 15 }
@___asan_gen_.10 = private constant [33 x i8] c"../arch/arm/mach-tegra/hotplug.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 41, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"../include/linux/clk/tegra.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 50, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_hotplug__179_74_tegra_hotplug_init0, ptr @tegra_hotplug_shutdown, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hotplug_shutdown to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_cpu_kill(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %2 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.critedge.i, !prof !18

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 50, i32 noundef 9, ptr noundef null) #3
  br label %tegra_wait_cpu_in_reset.exit

if.end23.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %4(i32 noundef %1) #3
  br label %tegra_wait_cpu_in_reset.exit

tegra_wait_cpu_in_reset.exit:                     ; preds = %if.end23.critedge.i, %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %5 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %disable_clock.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %disable_clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_clock.i, align 4
  %tobool.not.i3 = icmp eq ptr %7, null
  br i1 %tobool.not.i3, label %do.end.i4, label %if.end23.critedge.i5, !prof !18

do.end.i4:                                        ; preds = %tegra_wait_cpu_in_reset.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 82, i32 noundef 9, ptr noundef null) #3
  br label %tegra_disable_cpu_clock.exit

if.end23.critedge.i5:                             ; preds = %tegra_wait_cpu_in_reset.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(i32 noundef %1) #3
  br label %tegra_disable_cpu_clock.exit

tegra_disable_cpu_clock.exit:                     ; preds = %if.end23.critedge.i5, %do.end.i4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_cpu_die(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_hotplug_shutdown, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  ret void

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @tegra_disable_clean_inv_dcache(i32 noundef 0) #3
  %1 = load ptr, ptr @tegra_hotplug_shutdown, align 4
  tail call void %1() #3, !callees !19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #3, !srcloc !20
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_disable_clean_inv_dcache(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hotplug_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @soc_is_tegra() #3
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call1)
  %cmp = icmp eq i8 %call1, 32
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  store ptr @tegra20_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %call5)
  %cmp7 = icmp eq i8 %call5, 48
  br i1 %cmp7, label %if.then9, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  store ptr @tegra30_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4.if.end10_crit_edge
  %call11 = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %call11)
  %cmp13 = icmp eq i8 %call11, 53
  br i1 %cmp13, label %if.then15, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  store ptr @tegra30_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end10.if.end16_crit_edge
  %call17 = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call17)
  %cmp19 = icmp eq i8 %call17, 64
  br i1 %cmp19, label %if.then21, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  store ptr @tegra30_hotplug_shutdown, ptr @tegra_hotplug_shutdown, align 4
  br label %return

return:                                           ; preds = %if.then21, %if.end16.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_hotplug_shutdown() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_hotplug_shutdown() #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-tegra/hotplug.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_hotplug__179_74_tegra_hotplug_init0, !4, !"__initcall__kmod_hotplug__179_74_tegra_hotplug_init0", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-tegra/hotplug.c", i32 74, i32 1}
!5 = !{ptr @tegra_hotplug_shutdown, !6, !"tegra_hotplug_shutdown", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-tegra/hotplug.c", i32 20, i32 15}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/clk/tegra.h", i32 50, i32 6}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{ptr @tegra20_hotplug_shutdown, ptr @tegra30_hotplug_shutdown}
!20 = !{i64 2152598524, i64 2152599017, i64 2152598561, i64 2152598617, i64 2152598651, i64 2152598675, i64 2152598716, i64 2152598737, i64 2152598765, i64 2152598799}
