; ModuleID = '/llk/IR_all_yes/drivers/thermal/tegra/tegra124-soctherm.c_pt.bc'
source_filename = "../drivers/thermal/tegra/tegra124-soctherm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_tsensor = type { ptr, i32, ptr, i32, i32, i32, ptr }
%struct.tegra_soctherm_fuse = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_soctherm_soc = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, ptr }
%struct.tegra_tsensor_configuration = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_tsensor_group = type { ptr, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@tegra124_tsensors = internal constant { [8 x %struct.tegra_tsensor], [32 x i8] } { [8 x %struct.tegra_tsensor] [%struct.tegra_tsensor { ptr @.str, i32 192, ptr @tegra124_tsensor_config, i32 152, i32 1135400, i32 -6266900, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.1, i32 224, ptr @tegra124_tsensor_config, i32 132, i32 1122220, i32 -5700700, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.2, i32 256, ptr @tegra124_tsensor_config, i32 136, i32 1127000, i32 -6768200, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.3, i32 288, ptr @tegra124_tsensor_config, i32 300, i32 1110900, i32 -6232000, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.4, i32 320, ptr @tegra124_tsensor_config, i32 344, i32 1122300, i32 -5936400, ptr @tegra124_tsensor_group_mem }, %struct.tegra_tsensor { ptr @.str.5, i32 352, ptr @tegra124_tsensor_config, i32 348, i32 1145700, i32 -7124600, ptr @tegra124_tsensor_group_mem }, %struct.tegra_tsensor { ptr @.str.6, i32 384, ptr @tegra124_tsensor_config, i32 340, i32 1120100, i32 -6000500, ptr @tegra124_tsensor_group_gpu }, %struct.tegra_tsensor { ptr @.str.7, i32 416, ptr @tegra124_tsensor_config, i32 352, i32 1106500, i32 -6729300, ptr @tegra124_tsensor_group_pll }], [32 x i8] zeroinitializer }, align 32
@tegra124_tsensor_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @tegra124_tsensor_group_cpu, ptr @tegra124_tsensor_group_gpu, ptr @tegra124_tsensor_group_pll, ptr @tegra124_tsensor_group_mem], [16 x i8] zeroinitializer }, align 32
@tegra124_soctherm_fuse = internal constant { %struct.tegra_soctherm_fuse, [36 x i8] } { %struct.tegra_soctherm_fuse { i32 1023, i32 0, i32 2096128, i32 10, i32 65011712, i32 21, i32 508 }, [36 x i8] zeroinitializer }, align 32
@tegra124_soctherm = dso_local constant { %struct.tegra_soctherm_soc, [60 x i8] } { %struct.tegra_soctherm_soc { ptr @tegra124_tsensors, i32 8, ptr @tegra124_tsensor_groups, i32 4, ptr @tegra124_soctherm_fuse, i32 1000, i32 8, i8 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu0\00", [27 x i8] zeroinitializer }, align 32
@tegra124_tsensor_config = internal constant { %struct.tegra_tsensor_configuration, [36 x i8] } { %struct.tegra_tsensor_configuration { i32 16300, i32 1, i32 1, i32 0, i32 0, i32 120, i32 480 }, [36 x i8] zeroinitializer }, align 32
@tegra124_tsensor_group_cpu = internal constant { %struct.tegra_tsensor_group, [36 x i8] } { %struct.tegra_tsensor_group { ptr @.str.8, i8 0, i16 456, i32 -65536, i32 8, i32 8, i32 61440, i32 10, i32 16711680, i32 33554432, i32 268435456, i32 65280, i32 768, i16 0, i32 33423360, i32 130560 }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu1\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu2\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu3\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mem0\00", [27 x i8] zeroinitializer }, align 32
@tegra124_tsensor_group_mem = internal constant { %struct.tegra_tsensor_group, [36 x i8] } { %struct.tegra_tsensor_group { ptr @.str.9, i8 1, i16 460, i32 -65536, i32 8, i32 8, i32 240, i32 0, i32 255, i32 134217728, i32 268435456, i32 16711680, i32 50331648, i16 8, i32 33423360, i32 130560 }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mem1\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@tegra124_tsensor_group_gpu = internal constant { %struct.tegra_tsensor_group, [36 x i8] } { %struct.tegra_tsensor_group { ptr @.str.6, i8 2, i16 456, i32 65535, i32 8, i32 8, i32 3840, i32 5, i32 65280, i32 67108864, i32 268435456, i32 16711680, i32 196608, i16 4, i32 33423360, i32 130560 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pllx\00", [27 x i8] zeroinitializer }, align 32
@tegra124_tsensor_group_pll = internal constant { %struct.tegra_tsensor_group, [36 x i8] } { %struct.tegra_tsensor_group { ptr @.str.10, i8 3, i16 460, i32 65535, i32 8, i32 8, i32 15, i32 0, i32 0, i32 16777216, i32 268435456, i32 255, i32 3, i16 12, i32 33423360, i32 130560 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"tegra124_tsensors\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 127, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"tegra124_tsensor_groups\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 120, i32 42 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"tegra124_soctherm_fuse\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 200, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"tegra124_soctherm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 210, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 129, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [24 x i8] c"tegra124_tsensor_config\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 38, i32 49 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"tegra124_tsensor_group_cpu\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 46, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 137, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 145, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 153, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 161, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"tegra124_tsensor_group_mem\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 101, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 169, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 177, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"tegra124_tsensor_group_gpu\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 65, i32 41 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 185, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"tegra124_tsensor_group_pll\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 84, i32 41 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 48, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 103, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [45 x i8] c"../drivers/thermal/tegra/tegra124-soctherm.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 86, i32 10 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @tegra124_tsensors, ptr @tegra124_tsensor_groups, ptr @tegra124_soctherm_fuse, ptr @tegra124_soctherm, ptr @.str, ptr @tegra124_tsensor_config, ptr @tegra124_tsensor_group_cpu, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tegra124_tsensor_group_mem, ptr @.str.5, ptr @.str.6, ptr @tegra124_tsensor_group_gpu, ptr @.str.7, ptr @tegra124_tsensor_group_pll, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tsensors to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tsensor_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_soctherm_fuse to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_soctherm to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tsensor_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tsensor_group_cpu to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tsensor_group_mem to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tsensor_group_gpu to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tsensor_group_pll to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @tegra124_soctherm, !1, !"tegra124_soctherm", i1 false, i1 false}
!1 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 210, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 129, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 137, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 145, i32 11}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 153, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 161, i32 11}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 169, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 177, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 185, i32 11}
!18 = !{ptr @tegra124_tsensors, !19, !"tegra124_tsensors", i1 false, i1 false}
!19 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 127, i32 35}
!20 = !{ptr @tegra124_tsensor_config, !21, !"tegra124_tsensor_config", i1 false, i1 false}
!21 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 38, i32 49}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 48, i32 10}
!24 = !{ptr @tegra124_tsensor_group_cpu, !25, !"tegra124_tsensor_group_cpu", i1 false, i1 false}
!25 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 46, i32 41}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 103, i32 10}
!28 = !{ptr @tegra124_tsensor_group_mem, !29, !"tegra124_tsensor_group_mem", i1 false, i1 false}
!29 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 101, i32 41}
!30 = !{ptr @tegra124_tsensor_group_gpu, !31, !"tegra124_tsensor_group_gpu", i1 false, i1 false}
!31 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 65, i32 41}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 86, i32 10}
!34 = !{ptr @tegra124_tsensor_group_pll, !35, !"tegra124_tsensor_group_pll", i1 false, i1 false}
!35 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 84, i32 41}
!36 = !{ptr @tegra124_tsensor_groups, !37, !"tegra124_tsensor_groups", i1 false, i1 false}
!37 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 120, i32 42}
!38 = !{ptr @tegra124_soctherm_fuse, !39, !"tegra124_soctherm_fuse", i1 false, i1 false}
!39 = !{!"../drivers/thermal/tegra/tegra124-soctherm.c", i32 200, i32 41}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
