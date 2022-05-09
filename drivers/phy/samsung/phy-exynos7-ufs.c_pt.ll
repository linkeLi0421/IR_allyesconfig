; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-exynos7-ufs.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos7-ufs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_ufs_phy_drvdata = type { ptr, %struct.pmu_isol, i8 }
%struct.pmu_isol = type { i32, i32, i32 }
%struct.samsung_ufs_phy_cfg = type { i32, i32, i32, i8, i8 }

@exynos7_ufs_phy_cfgs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @exynos7_pre_init_cfg, ptr null, ptr @exynos7_pre_pwr_hs_cfg, ptr @exynos7_post_pwr_hs_cfg], [16 x i8] zeroinitializer }, align 32
@exynos7_ufs_phy = dso_local constant { %struct.samsung_ufs_phy_drvdata, [44 x i8] } { %struct.samsung_ufs_phy_drvdata { ptr @exynos7_ufs_phy_cfgs, %struct.pmu_isol { i32 1824, i32 1, i32 1 }, i8 1 }, [44 x i8] zeroinitializer }, align 32
@exynos7_pre_init_cfg = internal constant { [15 x %struct.samsung_ufs_phy_cfg], [48 x i8] } { [15 x %struct.samsung_ufs_phy_cfg] [%struct.samsung_ufs_phy_cfg { i32 60, i32 0, i32 250, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 64, i32 0, i32 130, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 68, i32 0, i32 30, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 92, i32 0, i32 132, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 212, i32 404, i32 88, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 216, i32 408, i32 50, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 220, i32 412, i32 64, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 236, i32 428, i32 131, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 264, i32 456, i32 136, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 268, i32 460, i32 166, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 288, i32 480, i32 116, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 304, i32 496, i32 91, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 308, i32 500, i32 131, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 368, i32 560, i32 20, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@exynos7_pre_pwr_hs_cfg = internal constant { [18 x %struct.samsung_ufs_phy_cfg], [64 x i8] } { [18 x %struct.samsung_ufs_phy_cfg] [%struct.samsung_ufs_phy_cfg { i32 60, i32 0, i32 250, i8 2, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 64, i32 0, i32 130, i8 2, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 68, i32 0, i32 30, i8 2, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 88, i32 0, i32 255, i8 2, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 84, i32 0, i32 128, i8 2, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 92, i32 0, i32 148, i8 2, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 216, i32 408, i32 50, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 220, i32 412, i32 67, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 224, i32 416, i32 63, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 264, i32 456, i32 136, i8 38, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 264, i32 456, i32 187, i8 42, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 268, i32 460, i32 166, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 288, i32 480, i32 116, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 208, i32 400, i32 53, i8 38, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 208, i32 400, i32 54, i8 42, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 212, i32 404, i32 91, i8 38, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 212, i32 404, i32 92, i8 42, i8 2 }, %struct.samsung_ufs_phy_cfg zeroinitializer], [64 x i8] zeroinitializer }, align 32
@exynos7_post_pwr_hs_cfg = internal constant { [3 x %struct.samsung_ufs_phy_cfg], [48 x i8] } { [3 x %struct.samsung_ufs_phy_cfg] [%struct.samsung_ufs_phy_cfg { i32 84, i32 0, i32 0, i8 2, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 308, i32 500, i32 131, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"exynos7_ufs_phy_cfgs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 63, i32 42 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"exynos7_ufs_phy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 69, i32 38 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"exynos7_pre_init_cfg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 15, i32 41 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"exynos7_pre_pwr_hs_cfg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 34, i32 41 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"exynos7_post_pwr_hs_cfg\00", align 1
@___asan_gen_.14 = private constant [41 x i8] c"../drivers/phy/samsung/phy-exynos7-ufs.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 57, i32 41 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @exynos7_ufs_phy_cfgs, ptr @exynos7_ufs_phy, ptr @exynos7_pre_init_cfg, ptr @exynos7_pre_pwr_hs_cfg, ptr @exynos7_post_pwr_hs_cfg], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_ufs_phy_cfgs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_ufs_phy to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_pre_init_cfg to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_pre_pwr_hs_cfg to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_post_pwr_hs_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @exynos7_ufs_phy, !1, !"exynos7_ufs_phy", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-exynos7-ufs.c", i32 69, i32 38}
!2 = !{ptr @exynos7_ufs_phy_cfgs, !3, !"exynos7_ufs_phy_cfgs", i1 false, i1 false}
!3 = !{!"../drivers/phy/samsung/phy-exynos7-ufs.c", i32 63, i32 42}
!4 = !{ptr @exynos7_pre_init_cfg, !5, !"exynos7_pre_init_cfg", i1 false, i1 false}
!5 = !{!"../drivers/phy/samsung/phy-exynos7-ufs.c", i32 15, i32 41}
!6 = !{ptr @exynos7_pre_pwr_hs_cfg, !7, !"exynos7_pre_pwr_hs_cfg", i1 false, i1 false}
!7 = !{!"../drivers/phy/samsung/phy-exynos7-ufs.c", i32 34, i32 41}
!8 = !{ptr @exynos7_post_pwr_hs_cfg, !9, !"exynos7_post_pwr_hs_cfg", i1 false, i1 false}
!9 = !{!"../drivers/phy/samsung/phy-exynos7-ufs.c", i32 57, i32 41}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
