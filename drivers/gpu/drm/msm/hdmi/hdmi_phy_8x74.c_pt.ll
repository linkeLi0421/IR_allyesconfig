; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_phy_cfg = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }

@hdmi_phy_8x74_reg_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@hdmi_phy_8x74_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@msm_hdmi_phy_8x74_cfg = dso_local constant { %struct.hdmi_phy_cfg, [36 x i8] } { %struct.hdmi_phy_cfg { i32 2, ptr @hdmi_phy_8x74_powerup, ptr @hdmi_phy_8x74_powerdown, ptr @hdmi_phy_8x74_reg_names, i32 2, ptr @hdmi_phy_8x74_clk_names, i32 2 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"core-vdda\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alt_iface\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"hdmi_phy_8x74_reg_names\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 27, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"hdmi_phy_8x74_clk_names\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 32, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"msm_hdmi_phy_8x74_cfg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 36, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 28, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 29, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 33, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [44 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 33, i32 11 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @hdmi_phy_8x74_reg_names, ptr @hdmi_phy_8x74_clk_names, ptr @msm_hdmi_phy_8x74_cfg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_phy_8x74_reg_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_phy_8x74_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_phy_8x74_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_phy_8x74_powerup(ptr nocapture noundef readonly %phy, i32 noundef %pixclock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 27, ptr noundef %1) #2
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void @msm_writel(i32 noundef 242, ptr noundef %add.ptr.i) #2
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 52
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i10) #2
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 60
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i12) #2
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 64
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i14) #2
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 68
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i16) #2
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i18) #2
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %15, i32 20
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr.i20) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_phy_8x74_powerdown(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void @msm_writel(i32 noundef 127, ptr noundef %add.ptr.i) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @msm_hdmi_phy_8x74_cfg, !1, !"msm_hdmi_phy_8x74_cfg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c", i32 36, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c", i32 28, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c", i32 29, i32 2}
!6 = !{ptr @hdmi_phy_8x74_reg_names, !7, !"hdmi_phy_8x74_reg_names", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c", i32 27, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c", i32 33, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c", i32 33, i32 11}
!12 = !{ptr @hdmi_phy_8x74_clk_names, !13, !"hdmi_phy_8x74_clk_names", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c", i32 32, i32 27}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
