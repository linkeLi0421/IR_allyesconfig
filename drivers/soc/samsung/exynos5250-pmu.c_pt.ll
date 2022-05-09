; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos5250-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos5250-pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_pmu_conf = type { i32, [3 x i8] }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }

@exynos5250_pmu_config = internal constant { [101 x %struct.exynos_pmu_conf], [216 x i8] } { [101 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4160, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4168, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4224, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] c"\03\03\03" }, %struct.exynos_pmu_conf { i32 9736, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4400, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4404, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4420, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4452, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4496, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4500, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4504, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4516, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4528, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4532, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4544, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4552, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4556, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4560, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4564, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4568, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4572, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4576, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4580, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4584, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 12104, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4588, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4596, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4604, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4664, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4668, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4688, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4896, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4932, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4936, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 5120, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5124, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5128, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5132, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5140, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5144, [3 x i8] c"\07\07\00" }, %struct.exynos_pmu_conf { i32 5248, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5252, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5256, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5260, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5268, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5272, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 5312, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5316, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5320, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5324, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5332, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5336, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 5504, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5508, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5512, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5516, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5524, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5528, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], [216 x i8] zeroinitializer }, align 32
@exynos5250_pmu_data = dso_local constant { %struct.exynos_pmu_data, [16 x i8] } { %struct.exynos_pmu_data { ptr @exynos5250_pmu_config, ptr @exynos5250_pmu_init, ptr @exynos5_powerdown_conf, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"exynos5250_pmu_config\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 13, i32 37 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"exynos5250_pmu_data\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../drivers/soc/samsung/exynos5250-pmu.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 187, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @exynos5250_pmu_config, ptr @exynos5250_pmu_data], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_pmu_config to i32), i32 808, i32 1024, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_pmu_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5250_pmu_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmu_raw_readl(i32 noundef 1032) #2
  %and = and i32 %call, -1048577
  tail call void @pmu_raw_writel(i32 noundef %and, i32 noundef 1032) #2
  %call1 = tail call i32 @pmu_raw_readl(i32 noundef 1036) #2
  %and2 = and i32 %call1, -1048577
  tail call void @pmu_raw_writel(i32 noundef %and2, i32 noundef 1036) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5_powerdown_conf(i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmu_raw_readl(i32 noundef 8200) #2
  %or = or i32 %call, 3
  tail call void @pmu_raw_writel(i32 noundef %or, i32 noundef 8200) #2
  %call.1 = tail call i32 @pmu_raw_readl(i32 noundef 8328) #2
  %or.1 = or i32 %call.1, 3
  tail call void @pmu_raw_writel(i32 noundef %or.1, i32 noundef 8328) #2
  %call.2 = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %or.2 = or i32 %call.2, 3
  tail call void @pmu_raw_writel(i32 noundef %or.2, i32 noundef 9224) #2
  %call.3 = tail call i32 @pmu_raw_readl(i32 noundef 16392) #2
  %or.3 = or i32 %call.3, 3
  tail call void @pmu_raw_writel(i32 noundef %or.3, i32 noundef 16392) #2
  %call.4 = tail call i32 @pmu_raw_readl(i32 noundef 16424) #2
  %or.4 = or i32 %call.4, 3
  tail call void @pmu_raw_writel(i32 noundef %or.4, i32 noundef 16424) #2
  %call.5 = tail call i32 @pmu_raw_readl(i32 noundef 16456) #2
  %or.5 = or i32 %call.5, 3
  tail call void @pmu_raw_writel(i32 noundef %or.5, i32 noundef 16456) #2
  %call.6 = tail call i32 @pmu_raw_readl(i32 noundef 16488) #2
  %or.6 = or i32 %call.6, 3
  tail call void @pmu_raw_writel(i32 noundef %or.6, i32 noundef 16488) #2
  %call.7 = tail call i32 @pmu_raw_readl(i32 noundef 16552) #2
  %or.7 = or i32 %call.7, 3
  tail call void @pmu_raw_writel(i32 noundef %or.7, i32 noundef 16552) #2
  %call.8 = tail call i32 @pmu_raw_readl(i32 noundef 16584) #2
  %or.8 = or i32 %call.8, 3
  tail call void @pmu_raw_writel(i32 noundef %or.8, i32 noundef 16584) #2
  %call.9 = tail call i32 @pmu_raw_readl(i32 noundef 11336) #2
  %or.9 = or i32 %call.9, 3
  tail call void @pmu_raw_writel(i32 noundef %or.9, i32 noundef 11336) #2
  %call.10 = tail call i32 @pmu_raw_readl(i32 noundef 11464) #2
  %or.10 = or i32 %call.10, 3
  tail call void @pmu_raw_writel(i32 noundef %or.10, i32 noundef 11464) #2
  %call2 = tail call i32 @pmu_raw_readl(i32 noundef 9224) #2
  %or3 = or i32 %call2, 128
  tail call void @pmu_raw_writel(i32 noundef %or3, i32 noundef 9224) #2
  %call8 = tail call i32 @pmu_raw_readl(i32 noundef 8328) #2
  %and = and i32 %call8, -16842753
  tail call void @pmu_raw_writel(i32 noundef %and, i32 noundef 8328) #2
  %call8.1 = tail call i32 @pmu_raw_readl(i32 noundef 8712) #2
  %and.1 = and i32 %call8.1, -16842753
  tail call void @pmu_raw_writel(i32 noundef %and.1, i32 noundef 8712) #2
  %call8.2 = tail call i32 @pmu_raw_readl(i32 noundef 8840) #2
  %and.2 = and i32 %call8.2, -16842753
  tail call void @pmu_raw_writel(i32 noundef %and.2, i32 noundef 8840) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmu_raw_readl(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmu_raw_writel(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @exynos5250_pmu_data, !1, !"exynos5250_pmu_data", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos5250-pmu.c", i32 187, i32 30}
!2 = !{ptr @exynos5250_pmu_config, !3, !"exynos5250_pmu_config", i1 false, i1 false}
!3 = !{!"../drivers/soc/samsung/exynos5250-pmu.c", i32 13, i32 37}
!4 = distinct !{null, !5, !"exynos5_list_both_cnt_feed", i1 false, i1 false}
!5 = !{!"../drivers/soc/samsung/exynos5250-pmu.c", i32 118, i32 27}
!6 = distinct !{null, !7, !"exynos5_list_disable_wfi_wfe", i1 false, i1 false}
!7 = !{!"../drivers/soc/samsung/exynos5250-pmu.c", i32 132, i32 27}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
