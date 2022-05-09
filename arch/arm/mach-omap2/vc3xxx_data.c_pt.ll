; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/vc3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vc3xxx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_vc_common = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_channel = type { i16, i16, i16, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_param = type { i32, i32, i32, i32 }

@omap3_vc_common = internal global { %struct.omap_vc_common, [44 x i8] } { %struct.omap_vc_common { i32 -16777216, i32 16777216, i8 60, i8 16, i8 0, i8 8, i8 24, i8 16, i8 8, i8 0, i8 56, i8 24, i8 8, i8 7 }, [44 x i8] zeroinitializer }, align 32
@omap3_vc_mpu = dso_local global { %struct.omap_vc_channel, [32 x i8] } { %struct.omap_vc_channel { i16 0, i16 0, i16 0, i8 0, i8 0, ptr @omap3_vc_common, i32 127, i32 255, i32 255, i8 44, i8 32, i8 36, i8 40, i8 52, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@omap3_vc_core = dso_local global { %struct.omap_vc_channel, [32 x i8] } { %struct.omap_vc_channel { i16 0, i16 0, i16 0, i8 0, i8 0, ptr @omap3_vc_common, i32 8323072, i32 16711680, i32 16711680, i8 48, i8 32, i8 36, i8 40, i8 52, i8 16, i8 0 }, [32 x i8] zeroinitializer }, align 32
@omap3_mpu_vc_data = dso_local global { %struct.omap_vc_param, [16 x i8] } { %struct.omap_vc_param { i32 1200000, i32 1000000, i32 975000, i32 600000 }, [16 x i8] zeroinitializer }, align 32
@omap3_core_vc_data = dso_local global { %struct.omap_vc_param, [16 x i8] } { %struct.omap_vc_param { i32 1200000, i32 1000000, i32 975000, i32 600000 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"omap3_vc_common\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 29, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"omap3_vc_mpu\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 46, i32 24 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"omap3_vc_core\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 60, i32 24 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"omap3_mpu_vc_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 81, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"omap3_core_vc_data\00", align 1
@___asan_gen_.14 = private constant [37 x i8] c"../arch/arm/mach-omap2/vc3xxx_data.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 88, i32 22 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @omap3_vc_common, ptr @omap3_vc_mpu, ptr @omap3_vc_core, ptr @omap3_mpu_vc_data, ptr @omap3_core_vc_data], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vc_common to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vc_mpu to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vc_core to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_mpu_vc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_core_vc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }]
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

!0 = !{ptr @omap3_vc_mpu, !1, !"omap3_vc_mpu", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/vc3xxx_data.c", i32 46, i32 24}
!2 = !{ptr @omap3_vc_core, !3, !"omap3_vc_core", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/vc3xxx_data.c", i32 60, i32 24}
!4 = !{ptr @omap3_mpu_vc_data, !5, !"omap3_mpu_vc_data", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/vc3xxx_data.c", i32 81, i32 22}
!6 = !{ptr @omap3_core_vc_data, !7, !"omap3_core_vc_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/vc3xxx_data.c", i32 88, i32 22}
!8 = !{ptr @omap3_vc_common, !9, !"omap3_vc_common", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/vc3xxx_data.c", i32 29, i32 30}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
