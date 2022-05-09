; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/vp3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vp3xxx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_vp_common = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vp_param = type { i32, i32 }
%struct.omap_vp_ops = type { ptr, ptr }

@omap3_vp_common = internal constant { %struct.omap_vp_common, [36 x i8] } { %struct.omap_vp_common { i32 -16777216, i32 16711680, i32 65280, i8 8, i8 4, i8 2, i8 1, i8 0, i8 8, i8 0, i8 8, i8 16, i8 24, i8 0, i8 -1, ptr @omap3_vp_ops }, [36 x i8] zeroinitializer }, align 32
@omap3_vp_mpu = dso_local global { %struct.omap_vp_instance, [20 x i8] } { %struct.omap_vp_instance { ptr @omap3_vp_common, i8 -80, i8 -76, i8 -72, i8 -68, i8 -60, i8 -64, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap3_vp_core = dso_local global { %struct.omap_vp_instance, [20 x i8] } { %struct.omap_vp_instance { ptr @omap3_vp_common, i8 -48, i8 -44, i8 -40, i8 -36, i8 -28, i8 -32, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap3_mpu_vp_data = dso_local global { %struct.omap_vp_param, [24 x i8] } { %struct.omap_vp_param { i32 1425000, i32 850000 }, [24 x i8] zeroinitializer }, align 32
@omap3_core_vp_data = dso_local global { %struct.omap_vp_param, [24 x i8] } { %struct.omap_vp_param { i32 1150000, i32 900000 }, [24 x i8] zeroinitializer }, align 32
@omap3_vp_ops = internal constant { %struct.omap_vp_ops, [24 x i8] } { %struct.omap_vp_ops { ptr @omap_prm_vp_check_txdone, ptr @omap_prm_vp_clear_txdone }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"omap3_vp_common\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 36, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"omap3_vp_mpu\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 56, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"omap3_vp_core\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 67, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"omap3_mpu_vp_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 78, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"omap3_core_vp_data\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 83, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"omap3_vp_ops\00", align 1
@___asan_gen_.17 = private constant [37 x i8] c"../arch/arm/mach-omap2/vp3xxx_data.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 27, i32 33 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @omap3_vp_common, ptr @omap3_vp_mpu, ptr @omap3_vp_core, ptr @omap3_mpu_vp_data, ptr @omap3_core_vp_data, ptr @omap3_vp_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vp_common to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vp_mpu to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vp_core to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_mpu_vp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_core_vp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_vp_check_txdone(i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_prm_vp_clear_txdone(i8 noundef zeroext) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @omap3_vp_mpu, !1, !"omap3_vp_mpu", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/vp3xxx_data.c", i32 56, i32 25}
!2 = !{ptr @omap3_vp_core, !3, !"omap3_vp_core", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/vp3xxx_data.c", i32 67, i32 25}
!4 = !{ptr @omap3_mpu_vp_data, !5, !"omap3_mpu_vp_data", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/vp3xxx_data.c", i32 78, i32 22}
!6 = !{ptr @omap3_core_vp_data, !7, !"omap3_core_vp_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/vp3xxx_data.c", i32 83, i32 22}
!8 = !{ptr @omap3_vp_common, !9, !"omap3_vp_common", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/vp3xxx_data.c", i32 36, i32 36}
!10 = !{ptr @omap3_vp_ops, !11, !"omap3_vp_ops", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/vp3xxx_data.c", i32 27, i32 33}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
