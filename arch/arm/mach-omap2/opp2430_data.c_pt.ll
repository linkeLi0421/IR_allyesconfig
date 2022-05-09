; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/opp2430_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/opp2430_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.prcm_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }

@omap2430_rate_table = dso_local constant { [11 x %struct.prcm_config], [144 x i8] } { [11 x %struct.prcm_config] [%struct.prcm_config { i32 13000000, i32 798000000, i32 399000000, i32 2, i32 98, i32 2, i32 72355910, i32 18414592, i32 2, i32 6, i32 253441, i16 2 }, %struct.prcm_config { i32 13000000, i32 658000000, i32 329000000, i32 2, i32 66, i32 2, i32 139464772, i32 17089024, i32 2, i32 4, i32 281601, i16 2 }, %struct.prcm_config { i32 13000000, i32 532000000, i32 266000000, i32 2, i32 66, i32 2, i32 139464772, i32 17027584, i32 2, i32 4, i32 253441, i16 2 }, %struct.prcm_config { i32 13000000, i32 400000000, i32 200000000, i32 2, i32 66, i32 2, i32 139464772, i32 17599488, i32 2, i32 4, i32 186881, i16 2 }, %struct.prcm_config { i32 13000000, i32 399000000, i32 199000000, i32 2, i32 98, i32 2, i32 72355910, i32 18414592, i32 1, i32 6, i32 253441, i16 2 }, %struct.prcm_config { i32 13000000, i32 329000000, i32 164000000, i32 2, i32 66, i32 2, i32 139464772, i32 17089024, i32 1, i32 4, i32 281601, i16 2 }, %struct.prcm_config { i32 13000000, i32 266000000, i32 133000000, i32 2, i32 66, i32 2, i32 139464772, i32 17027584, i32 1, i32 4, i32 253441, i16 2 }, %struct.prcm_config { i32 13000000, i32 200000000, i32 100000000, i32 2, i32 66, i32 2, i32 139464772, i32 17599488, i32 1, i32 4, i32 186881, i16 2 }, %struct.prcm_config { i32 13000000, i32 13000000, i32 13000000, i32 1, i32 33, i32 1, i32 38801441, i32 16781312, i32 2, i32 1, i32 20481, i16 2 }, %struct.prcm_config { i32 12000000, i32 12000000, i32 12000000, i32 1, i32 33, i32 1, i32 38801441, i32 25169920, i32 2, i32 1, i32 20481, i16 2 }, %struct.prcm_config zeroinitializer], [144 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"omap2430_rate_table\00", align 1
@___asan_gen_.2 = private constant [38 x i8] c"../arch/arm/mach-omap2/opp2430_data.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 54, i32 26 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @omap2430_rate_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_rate_table to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @omap2430_rate_table, !1, !"omap2430_rate_table", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/opp2430_data.c", i32 54, i32 26}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
