; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/vp44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vp44xx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_vp_common = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vp_param = type { i32, i32 }
%struct.omap_vp_ops = type { ptr, ptr }

@omap4_vp_common = internal constant { %struct.omap_vp_common, [36 x i8] } { %struct.omap_vp_common { i32 -16777216, i32 16711680, i32 65280, i8 8, i8 4, i8 2, i8 1, i8 0, i8 8, i8 0, i8 8, i8 16, i8 24, i8 0, i8 -1, ptr @omap4_vp_ops }, [36 x i8] zeroinitializer }, align 32
@omap4_vp_mpu = dso_local global { %struct.omap_vp_instance, [20 x i8] } { %struct.omap_vp_instance { ptr @omap4_vp_common, i8 88, i8 108, i8 104, i8 96, i8 92, i8 100, i8 2, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap4_vp_iva = dso_local global { %struct.omap_vp_instance, [20 x i8] } { %struct.omap_vp_instance { ptr @omap4_vp_common, i8 112, i8 -124, i8 -128, i8 120, i8 116, i8 124, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap4_vp_core = dso_local global { %struct.omap_vp_instance, [20 x i8] } { %struct.omap_vp_instance { ptr @omap4_vp_common, i8 64, i8 84, i8 80, i8 72, i8 68, i8 76, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap4_mpu_vp_data = dso_local global { %struct.omap_vp_param, [24 x i8] } { %struct.omap_vp_param { i32 1410000, i32 830000 }, [24 x i8] zeroinitializer }, align 32
@omap4_iva_vp_data = dso_local global { %struct.omap_vp_param, [24 x i8] } { %struct.omap_vp_param { i32 1260000, i32 830000 }, [24 x i8] zeroinitializer }, align 32
@omap4_core_vp_data = dso_local global { %struct.omap_vp_param, [24 x i8] } { %struct.omap_vp_param { i32 1200000, i32 830000 }, [24 x i8] zeroinitializer }, align 32
@omap4_vp_ops = internal constant { %struct.omap_vp_ops, [24 x i8] } { %struct.omap_vp_ops { ptr @omap_prm_vp_check_txdone, ptr @omap_prm_vp_clear_txdone }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"omap4_vp_common\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 36, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"omap4_vp_mpu\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 55, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"omap4_vp_iva\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 66, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"omap4_vp_core\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 77, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"omap4_mpu_vp_data\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 88, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"omap4_iva_vp_data\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 93, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"omap4_core_vp_data\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 98, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"omap4_vp_ops\00", align 1
@___asan_gen_.23 = private constant [37 x i8] c"../arch/arm/mach-omap2/vp44xx_data.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 27, i32 33 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @omap4_vp_common, ptr @omap4_vp_mpu, ptr @omap4_vp_iva, ptr @omap4_vp_core, ptr @omap4_mpu_vp_data, ptr @omap4_iva_vp_data, ptr @omap4_core_vp_data, ptr @omap4_vp_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vp_common to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vp_mpu to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vp_iva to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vp_core to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_mpu_vp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_iva_vp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_core_vp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @omap4_vp_mpu, !1, !"omap4_vp_mpu", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 55, i32 25}
!2 = !{ptr @omap4_vp_iva, !3, !"omap4_vp_iva", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 66, i32 25}
!4 = !{ptr @omap4_vp_core, !5, !"omap4_vp_core", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 77, i32 25}
!6 = !{ptr @omap4_mpu_vp_data, !7, !"omap4_mpu_vp_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 88, i32 22}
!8 = !{ptr @omap4_iva_vp_data, !9, !"omap4_iva_vp_data", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 93, i32 22}
!10 = !{ptr @omap4_core_vp_data, !11, !"omap4_core_vp_data", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 98, i32 22}
!12 = !{ptr @omap4_vp_common, !13, !"omap4_vp_common", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 36, i32 36}
!14 = !{ptr @omap4_vp_ops, !15, !"omap4_vp_ops", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/vp44xx_data.c", i32 27, i32 33}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
