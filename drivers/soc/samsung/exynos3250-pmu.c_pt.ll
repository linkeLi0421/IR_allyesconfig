; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos3250-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos3250-pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_pmu_conf = type { i32, [3 x i8] }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }

@exynos3250_pmu_config = internal constant { [82 x %struct.exynos_pmu_conf], [176 x i8] } { [82 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4224, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] c"\00\00\03" }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 5040, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 5044, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 5056, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4368, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4372, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4380, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5060, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4392, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5064, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4400, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4404, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4440, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4448, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4456, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4460, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4468, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4472, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\03\03" }, %struct.exynos_pmu_conf { i32 4496, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4500, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4504, [3 x i8] c"\03\03\03" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4516, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4528, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4532, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4632, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4616, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4664, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4804, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4932, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4936, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4944, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4948, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4992, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5000, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5004, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5008, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5012, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5016, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5048, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], [176 x i8] zeroinitializer }, align 32
@exynos3250_pmu_data = dso_local constant { %struct.exynos_pmu_data, [16 x i8] } { %struct.exynos_pmu_data { ptr @exynos3250_pmu_config, ptr @exynos3250_pmu_init, ptr null, ptr @exynos3250_powerdown_conf_extra }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"exynos3250_pmu_config\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 13, i32 37 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"exynos3250_pmu_data\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../drivers/soc/samsung/exynos3250-pmu.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 167, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @exynos3250_pmu_config, ptr @exynos3250_pmu_data], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_pmu_config to i32), i32 656, i32 832, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_pmu_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos3250_pmu_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %or = or i32 %call, 128
  tail call void @pmu_raw_writel(i32 noundef %or, i32 noundef 9224) #2
  tail call void @pmu_raw_writel(i32 noundef 454754304, i32 noundef 520) #2
  %call1 = tail call i32 @pmu_raw_readl(i32 noundef 13068) #2
  %or2 = or i32 %call1, 768
  tail call void @pmu_raw_writel(i32 noundef %or2, i32 noundef 13068) #2
  %call3 = tail call i32 @pmu_raw_readl(i32 noundef 13068) #2
  %or4 = or i32 %call3, -2147483648
  tail call void @pmu_raw_writel(i32 noundef %or4, i32 noundef 13068) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos3250_powerdown_conf_extra(i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmu_raw_readl(i32 noundef 8200) #2
  %and = and i32 %call, -4
  %or = or i32 %and, 2
  tail call void @pmu_raw_writel(i32 noundef %or, i32 noundef 8200) #2
  %call.1 = tail call i32 @pmu_raw_readl(i32 noundef 8328) #2
  %and.1 = and i32 %call.1, -4
  %or.1 = or i32 %and.1, 2
  tail call void @pmu_raw_writel(i32 noundef %or.1, i32 noundef 8328) #2
  %call.2 = tail call i32 @pmu_raw_readl(i32 noundef 8456) #2
  %and.2 = and i32 %call.2, -4
  %or.2 = or i32 %and.2, 2
  tail call void @pmu_raw_writel(i32 noundef %or.2, i32 noundef 8456) #2
  %call.3 = tail call i32 @pmu_raw_readl(i32 noundef 8584) #2
  %and.3 = and i32 %call.3, -4
  %or.3 = or i32 %and.3, 2
  tail call void @pmu_raw_writel(i32 noundef %or.3, i32 noundef 8584) #2
  %call.4 = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %and.4 = and i32 %call.4, -4
  %or.4 = or i32 %and.4, 2
  tail call void @pmu_raw_writel(i32 noundef %or.4, i32 noundef 9224) #2
  %call.5 = tail call i32 @pmu_raw_readl(i32 noundef 11336) #2
  %and.5 = and i32 %call.5, -4
  %or.5 = or i32 %and.5, 2
  tail call void @pmu_raw_writel(i32 noundef %or.5, i32 noundef 11336) #2
  %call.6 = tail call i32 @pmu_raw_readl(i32 noundef 11432) #2
  %and.6 = and i32 %call.6, -4
  %or.6 = or i32 %and.6, 2
  tail call void @pmu_raw_writel(i32 noundef %or.6, i32 noundef 11432) #2
  %call.7 = tail call i32 @pmu_raw_readl(i32 noundef 15368) #2
  %and.7 = and i32 %call.7, -4
  %or.7 = or i32 %and.7, 2
  tail call void @pmu_raw_writel(i32 noundef %or.7, i32 noundef 15368) #2
  %call.8 = tail call i32 @pmu_raw_readl(i32 noundef 15432) #2
  %and.8 = and i32 %call.8, -4
  %or.8 = or i32 %and.8, 2
  tail call void @pmu_raw_writel(i32 noundef %or.8, i32 noundef 15432) #2
  %call.9 = tail call i32 @pmu_raw_readl(i32 noundef 15464) #2
  %and.9 = and i32 %call.9, -4
  %or.9 = or i32 %and.9, 2
  tail call void @pmu_raw_writel(i32 noundef %or.9, i32 noundef 15464) #2
  %call.10 = tail call i32 @pmu_raw_readl(i32 noundef 15496) #2
  %and.10 = and i32 %call.10, -4
  %or.10 = or i32 %and.10, 2
  tail call void @pmu_raw_writel(i32 noundef %or.10, i32 noundef 15496) #2
  %call.11 = tail call i32 @pmu_raw_readl(i32 noundef 15528) #2
  %and.11 = and i32 %call.11, -4
  %or.11 = or i32 %and.11, 2
  tail call void @pmu_raw_writel(i32 noundef %or.11, i32 noundef 15528) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp2.not = icmp eq i32 %mode, 2
  br i1 %cmp2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @pmu_raw_writel(i32 noundef 3000, i32 noundef 13340) #2
  tail call void @pmu_raw_writel(i32 noundef 3000, i32 noundef 13372) #2
  tail call void @pmu_raw_writel(i32 noundef 7500, i32 noundef 13852) #2
  tail call void @pmu_raw_writel(i32 noundef 7500, i32 noundef 13884) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmu_raw_readl(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmu_raw_writel(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @exynos3250_pmu_data, !1, !"exynos3250_pmu_data", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos3250-pmu.c", i32 167, i32 30}
!2 = !{ptr @exynos3250_pmu_config, !3, !"exynos3250_pmu_config", i1 false, i1 false}
!3 = !{!"../drivers/soc/samsung/exynos3250-pmu.c", i32 13, i32 37}
!4 = distinct !{null, !5, !"exynos3250_list_feed", i1 false, i1 false}
!5 = !{!"../drivers/soc/samsung/exynos3250-pmu.c", i32 99, i32 27}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
