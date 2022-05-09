; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_phy_cfg = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }

@msm_hdmi_phy_8x60_cfg = dso_local constant { %struct.hdmi_phy_cfg, [36 x i8] } { %struct.hdmi_phy_cfg { i32 0, ptr @hdmi_phy_8x60_powerup, ptr @hdmi_phy_8x60_powerdown, ptr null, i32 0, ptr null, i32 0 }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"msm_hdmi_phy_8x60_cfg\00", align 1
@___asan_gen_.2 = private constant [44 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 125, i32 27 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @msm_hdmi_phy_8x60_cfg], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_phy_8x60_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_phy_8x60_powerup(ptr nocapture noundef readonly %phy, i32 noundef %pixclock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 12, ptr noundef %1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000000, i32 %pixclock)
  %cmp = icmp eq i32 %pixclock, 27000000
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %. = select i1 %cmp, i32 83, i32 84
  tail call void @msm_writel(i32 noundef %., ptr noundef %add.ptr.i) #2
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %5, i32 8
  tail call void @msm_writel(i32 noundef 127, ptr noundef %add.ptr.i29) #2
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 8
  tail call void @msm_writel(i32 noundef 63, ptr noundef %add.ptr.i31) #2
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %9, i32 8
  tail call void @msm_writel(i32 noundef 31, ptr noundef %add.ptr.i33) #2
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %11, i32 12
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i35) #2
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %13, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i37) #2
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %15, i32 48
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i39) #2
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %17, i32 8
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i41) #2
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %19, i32 8
  tail call void @msm_writel(i32 noundef 129, ptr noundef %add.ptr.i43) #2
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i45) #2
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %23, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i47) #2
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %25, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i49) #2
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %27, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i51) #2
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %29, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i53) #2
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %31, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i55) #2
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %33, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i57) #2
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %35, i32 44
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i59) #2
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %37, i32 48
  tail call void @msm_writel(i32 noundef 19, ptr noundef %add.ptr.i61) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_phy_8x60_powerdown(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 724
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #2
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %4, i32 724
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i6) #2
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %6, i32 8
  tail call void @msm_writel(i32 noundef 31, ptr noundef %add.ptr.i8) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #2
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i10) #2
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 8
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i12) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @msm_hdmi_phy_8x60_cfg, !1, !"msm_hdmi_phy_8x60_cfg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c", i32 125, i32 27}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
