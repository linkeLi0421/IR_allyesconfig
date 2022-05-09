; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/opp3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/opp3xxx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_volt_data = type { i32, i32, i8, i8 }

@omap34xx_vddmpu_volt_data = dso_local global { [6 x %struct.omap_volt_data], [56 x i8] } { [6 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 975000, i32 896, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1075000, i32 900, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 904, i8 -7, i8 24 }, %struct.omap_volt_data { i32 1270000, i32 908, i8 -7, i8 24 }, %struct.omap_volt_data { i32 1350000, i32 912, i8 -7, i8 24 }, %struct.omap_volt_data zeroinitializer], [56 x i8] zeroinitializer }, align 32
@omap34xx_vddcore_volt_data = dso_local global { [4 x %struct.omap_volt_data], [48 x i8] } { [4 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 975000, i32 916, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1050000, i32 920, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1150000, i32 924, i8 -7, i8 24 }, %struct.omap_volt_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@omap36xx_vddmpu_volt_data = dso_local global { [5 x %struct.omap_volt_data], [36 x i8] } { [5 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1012500, i32 900, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 904, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1325000, i32 912, i8 -6, i8 35 }, %struct.omap_volt_data { i32 1375000, i32 896, i8 -6, i8 39 }, %struct.omap_volt_data zeroinitializer], [36 x i8] zeroinitializer }, align 32
@omap36xx_vddcore_volt_data = dso_local global { [3 x %struct.omap_volt_data], [60 x i8] } { [3 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1000000, i32 920, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 924, i8 -7, i8 22 }, %struct.omap_volt_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"omap34xx_vddmpu_volt_data\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 37, i32 23 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"omap34xx_vddcore_volt_data\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 52, i32 23 }
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"omap36xx_vddmpu_volt_data\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 68, i32 23 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"omap36xx_vddcore_volt_data\00", align 1
@___asan_gen_.11 = private constant [38 x i8] c"../arch/arm/mach-omap2/opp3xxx_data.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 81, i32 23 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @omap34xx_vddmpu_volt_data, ptr @omap34xx_vddcore_volt_data, ptr @omap36xx_vddmpu_volt_data, ptr @omap36xx_vddcore_volt_data], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_vddmpu_volt_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_vddcore_volt_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_vddmpu_volt_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_vddcore_volt_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
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

!0 = !{ptr @omap34xx_vddmpu_volt_data, !1, !"omap34xx_vddmpu_volt_data", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/opp3xxx_data.c", i32 37, i32 23}
!2 = !{ptr @omap34xx_vddcore_volt_data, !3, !"omap34xx_vddcore_volt_data", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/opp3xxx_data.c", i32 52, i32 23}
!4 = !{ptr @omap36xx_vddmpu_volt_data, !5, !"omap36xx_vddmpu_volt_data", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/opp3xxx_data.c", i32 68, i32 23}
!6 = !{ptr @omap36xx_vddcore_volt_data, !7, !"omap36xx_vddcore_volt_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/opp3xxx_data.c", i32 81, i32 23}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
