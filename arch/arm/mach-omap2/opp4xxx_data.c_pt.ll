; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/opp4xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/opp4xxx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_volt_data = type { i32, i32, i8, i8 }

@omap443x_vdd_mpu_volt_data = dso_local global { [6 x %struct.omap_volt_data], [56 x i8] } { [6 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 576, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 579, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1325000, i32 582, i8 -6, i8 35 }, %struct.omap_volt_data { i32 1388000, i32 585, i8 -6, i8 39 }, %struct.omap_volt_data { i32 1398000, i32 588, i8 -6, i8 39 }, %struct.omap_volt_data zeroinitializer], [56 x i8] zeroinitializer }, align 32
@omap443x_vdd_iva_volt_data = dso_local global { [4 x %struct.omap_volt_data], [48 x i8] } { [4 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 950000, i32 556, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1114000, i32 559, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1291000, i32 562, i8 -6, i8 35 }, %struct.omap_volt_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@omap443x_vdd_core_volt_data = dso_local global { [3 x %struct.omap_volt_data], [60 x i8] } { [3 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 962000, i32 596, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1127000, i32 599, i8 -7, i8 22 }, %struct.omap_volt_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@omap446x_vdd_mpu_volt_data = dso_local global { [5 x %struct.omap_volt_data], [36 x i8] } { [5 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 576, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 579, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1313000, i32 582, i8 -6, i8 35 }, %struct.omap_volt_data { i32 1375000, i32 585, i8 -6, i8 39 }, %struct.omap_volt_data zeroinitializer], [36 x i8] zeroinitializer }, align 32
@omap446x_vdd_iva_volt_data = dso_local global { [5 x %struct.omap_volt_data], [36 x i8] } { [5 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 556, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 559, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1313000, i32 562, i8 -6, i8 35 }, %struct.omap_volt_data { i32 1375000, i32 565, i8 -6, i8 35 }, %struct.omap_volt_data zeroinitializer], [36 x i8] zeroinitializer }, align 32
@omap446x_vdd_core_volt_data = dso_local global { [4 x %struct.omap_volt_data], [48 x i8] } { [4 x %struct.omap_volt_data] [%struct.omap_volt_data { i32 1025000, i32 596, i8 -12, i8 12 }, %struct.omap_volt_data { i32 1200000, i32 599, i8 -7, i8 22 }, %struct.omap_volt_data { i32 1250000, i32 602, i8 -7, i8 22 }, %struct.omap_volt_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"omap443x_vdd_mpu_volt_data\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 39, i32 23 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"omap443x_vdd_iva_volt_data\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 52, i32 23 }
@___asan_gen_.7 = private unnamed_addr constant [28 x i8] c"omap443x_vdd_core_volt_data\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 62, i32 23 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"omap446x_vdd_mpu_volt_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 73, i32 23 }
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"omap446x_vdd_iva_volt_data\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 86, i32 23 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"omap446x_vdd_core_volt_data\00", align 1
@___asan_gen_.17 = private constant [38 x i8] c"../arch/arm/mach-omap2/opp4xxx_data.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 98, i32 23 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @omap443x_vdd_mpu_volt_data, ptr @omap443x_vdd_iva_volt_data, ptr @omap443x_vdd_core_volt_data, ptr @omap446x_vdd_mpu_volt_data, ptr @omap446x_vdd_iva_volt_data, ptr @omap446x_vdd_core_volt_data], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap443x_vdd_mpu_volt_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap443x_vdd_iva_volt_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap443x_vdd_core_volt_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap446x_vdd_mpu_volt_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap446x_vdd_iva_volt_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap446x_vdd_core_volt_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @omap443x_vdd_mpu_volt_data, !1, !"omap443x_vdd_mpu_volt_data", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/opp4xxx_data.c", i32 39, i32 23}
!2 = !{ptr @omap443x_vdd_iva_volt_data, !3, !"omap443x_vdd_iva_volt_data", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/opp4xxx_data.c", i32 52, i32 23}
!4 = !{ptr @omap443x_vdd_core_volt_data, !5, !"omap443x_vdd_core_volt_data", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/opp4xxx_data.c", i32 62, i32 23}
!6 = !{ptr @omap446x_vdd_mpu_volt_data, !7, !"omap446x_vdd_mpu_volt_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/opp4xxx_data.c", i32 73, i32 23}
!8 = !{ptr @omap446x_vdd_iva_volt_data, !9, !"omap446x_vdd_iva_volt_data", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/opp4xxx_data.c", i32 86, i32 23}
!10 = !{ptr @omap446x_vdd_core_volt_data, !11, !"omap446x_vdd_core_volt_data", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/opp4xxx_data.c", i32 98, i32 23}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
