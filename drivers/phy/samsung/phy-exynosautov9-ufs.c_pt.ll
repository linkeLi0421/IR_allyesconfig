; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-exynosautov9-ufs.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynosautov9-ufs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_ufs_phy_drvdata = type { ptr, %struct.pmu_isol, i8 }
%struct.pmu_isol = type { i32, i32, i32 }
%struct.samsung_ufs_phy_cfg = type { i32, i32, i32, i8, i8 }

@exynosautov9_ufs_phy_cfgs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @exynosautov9_pre_init_cfg, ptr null, ptr @exynosautov9_pre_pwr_hs_cfg, ptr null], [16 x i8] zeroinitializer }, align 32
@exynosautov9_ufs_phy = dso_local constant { %struct.samsung_ufs_phy_drvdata, [44 x i8] } { %struct.samsung_ufs_phy_drvdata { ptr @exynosautov9_ufs_phy_cfgs, %struct.pmu_isol { i32 1832, i32 1, i32 1 }, i8 0 }, [44 x i8] zeroinitializer }, align 32
@exynosautov9_pre_init_cfg = internal constant { [15 x %struct.samsung_ufs_phy_cfg], [48 x i8] } { [15 x %struct.samsung_ufs_phy_cfg] [%struct.samsung_ufs_phy_cfg { i32 140, i32 0, i32 128, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 116, i32 0, i32 16, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 272, i32 592, i32 181, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 308, i32 628, i32 67, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 364, i32 684, i32 32, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 376, i32 696, i32 192, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 224, i32 544, i32 18, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 356, i32 676, i32 88, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 432, i32 752, i32 24, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 436, i32 756, i32 2, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 140, i32 0, i32 192, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 140, i32 0, i32 0, i8 0, i8 1 }, %struct.samsung_ufs_phy_cfg { i32 264, i32 456, i32 93, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 268, i32 460, i32 128, i8 0, i8 2 }, %struct.samsung_ufs_phy_cfg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@exynosautov9_pre_pwr_hs_cfg = internal constant { [7 x %struct.samsung_ufs_phy_cfg], [48 x i8] } { [7 x %struct.samsung_ufs_phy_cfg] [%struct.samsung_ufs_phy_cfg { i32 200, i32 392, i32 188, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 240, i32 432, i32 127, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 288, i32 480, i32 192, i8 2, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 296, i32 488, i32 0, i8 58, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 300, i32 492, i32 16, i8 58, i8 2 }, %struct.samsung_ufs_phy_cfg { i32 308, i32 500, i32 99, i8 58, i8 2 }, %struct.samsung_ufs_phy_cfg zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"exynosautov9_ufs_phy_cfgs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 54, i32 42 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"exynosautov9_ufs_phy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 59, i32 38 }
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"exynosautov9_pre_init_cfg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 18, i32 41 }
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"exynosautov9_pre_pwr_hs_cfg\00", align 1
@___asan_gen_.11 = private constant [46 x i8] c"../drivers/phy/samsung/phy-exynosautov9-ufs.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 41, i32 41 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @exynosautov9_ufs_phy_cfgs, ptr @exynosautov9_ufs_phy, ptr @exynosautov9_pre_init_cfg, ptr @exynosautov9_pre_pwr_hs_cfg], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosautov9_ufs_phy_cfgs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosautov9_ufs_phy to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosautov9_pre_init_cfg to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosautov9_pre_pwr_hs_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @exynosautov9_ufs_phy, !1, !"exynosautov9_ufs_phy", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-exynosautov9-ufs.c", i32 59, i32 38}
!2 = !{ptr @exynosautov9_ufs_phy_cfgs, !3, !"exynosautov9_ufs_phy_cfgs", i1 false, i1 false}
!3 = !{!"../drivers/phy/samsung/phy-exynosautov9-ufs.c", i32 54, i32 42}
!4 = !{ptr @exynosautov9_pre_init_cfg, !5, !"exynosautov9_pre_init_cfg", i1 false, i1 false}
!5 = !{!"../drivers/phy/samsung/phy-exynosautov9-ufs.c", i32 18, i32 41}
!6 = !{ptr @exynosautov9_pre_pwr_hs_cfg, !7, !"exynosautov9_pre_pwr_hs_cfg", i1 false, i1 false}
!7 = !{!"../drivers/phy/samsung/phy-exynosautov9-ufs.c", i32 41, i32 41}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
