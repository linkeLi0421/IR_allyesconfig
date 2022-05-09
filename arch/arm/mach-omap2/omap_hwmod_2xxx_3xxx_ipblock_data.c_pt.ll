; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysc_regbits = type opaque

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@omap2_uart_sysc = internal global { %struct.omap_hwmod_class_sysconfig, [40 x i8] } { %struct.omap_hwmod_class_sysconfig { i32 80, i32 84, i32 88, i16 167, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, [40 x i8] zeroinitializer }, align 32
@omap2_uart_class = dso_local global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str, ptr @omap2_uart_sysc, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"venc\00", [27 x i8] zeroinitializer }, align 32
@omap2_venc_hwmod_class = dso_local global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l3\00", [29 x i8] zeroinitializer }, align 32
@l3_hwmod_class = dso_local global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l4\00", [29 x i8] zeroinitializer }, align 32
@l4_hwmod_class = dso_local global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@mpu_hwmod_class = dso_local global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@iva_hwmod_class = dso_local global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap_hwmod_sysc_type1 = external dso_local global %struct.sysc_regbits, align 1
@omap2_hdq1w_sysc = dso_local global { %struct.omap_hwmod_class_sysconfig, [40 x i8] } { %struct.omap_hwmod_class_sysconfig { i32 0, i32 20, i32 24, i16 131, ptr @omap_hwmod_sysc_type1, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hdq1w\00", [26 x i8] zeroinitializer }, align 32
@omap2_hdq1w_class = dso_local global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.6, ptr @omap2_hdq1w_sysc, ptr null, ptr @omap_hdq1w_reset, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 32, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"omap2_uart_sysc\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 20, i32 42 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"omap2_uart_class\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 31, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 42, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"omap2_venc_hwmod_class\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 41, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 50, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"l3_hwmod_class\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 49, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 54, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"l4_hwmod_class\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 53, i32 25 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 58, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"mpu_hwmod_class\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 57, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 62, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"iva_hwmod_class\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 61, i32 25 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"omap2_hdq1w_sysc\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 65, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 75, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"omap2_hdq1w_class\00", align 1
@___asan_gen_.53 = private constant [59 x i8] c"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 74, i32 25 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @omap2_uart_sysc, ptr @omap2_uart_class, ptr @.str.1, ptr @omap2_venc_hwmod_class, ptr @.str.2, ptr @l3_hwmod_class, ptr @.str.3, ptr @l4_hwmod_class, ptr @.str.4, ptr @mpu_hwmod_class, ptr @.str.5, ptr @iva_hwmod_class, ptr @omap2_hdq1w_sysc, ptr @.str.6, ptr @omap2_hdq1w_class], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_uart_sysc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_uart_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_venc_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_hdq1w_sysc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_hdq1w_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hdq1w_reset(ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 32, i32 10}
!2 = !{ptr @omap2_uart_class, !3, !"omap2_uart_class", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 31, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 42, i32 10}
!6 = !{ptr @omap2_venc_hwmod_class, !7, !"omap2_venc_hwmod_class", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 41, i32 25}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 50, i32 10}
!10 = !{ptr @l3_hwmod_class, !11, !"l3_hwmod_class", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 49, i32 25}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 54, i32 10}
!14 = !{ptr @l4_hwmod_class, !15, !"l4_hwmod_class", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 53, i32 25}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 58, i32 10}
!18 = !{ptr @mpu_hwmod_class, !19, !"mpu_hwmod_class", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 57, i32 25}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 62, i32 10}
!22 = !{ptr @iva_hwmod_class, !23, !"iva_hwmod_class", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 61, i32 25}
!24 = !{ptr @omap2_hdq1w_sysc, !25, !"omap2_hdq1w_sysc", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 65, i32 35}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 75, i32 10}
!28 = !{ptr @omap2_hdq1w_class, !29, !"omap2_hdq1w_class", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 74, i32 25}
!30 = !{ptr @omap2_uart_sysc, !31, !"omap2_uart_sysc", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/omap_hwmod_2xxx_3xxx_ipblock_data.c", i32 20, i32 42}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
