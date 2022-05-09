; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx8qm-rsrc.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx8qm-rsrc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.imx_clk_scu_rsrc_table = type { ptr, i8 }

@imx8qm_clk_scu_rsrc_table = internal constant { [98 x i32], [120 x i8] } { [98 x i32] [i32 0, i32 5, i32 28, i32 29, i32 32, i32 34, i32 35, i32 45, i32 46, i32 49, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 144, i32 148, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 207, i32 208, i32 209, i32 210, i32 211, i32 237, i32 238, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 262, i32 265, i32 266, i32 267, i32 268, i32 269, i32 270, i32 271, i32 272, i32 273, i32 288, i32 308, i32 325, i32 366, i32 367, i32 393, i32 394, i32 395, i32 396, i32 397, i32 398, i32 399, i32 400, i32 401, i32 402, i32 403, i32 404, i32 405, i32 406, i32 407, i32 408, i32 409, i32 410, i32 411, i32 412, i32 413, i32 492, i32 493, i32 494, i32 506, i32 523, i32 540], [120 x i8] zeroinitializer }, align 32
@imx_clk_scu_rsrc_imx8qm = dso_local constant { %struct.imx_clk_scu_rsrc_table, [24 x i8] } { %struct.imx_clk_scu_rsrc_table { ptr @imx8qm_clk_scu_rsrc_table, i8 98 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"imx8qm_clk_scu_rsrc_table\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 12, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"imx_clk_scu_rsrc_imx8qm\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../drivers/clk/imx/clk-imx8qm-rsrc.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 113, i32 37 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @imx8qm_clk_scu_rsrc_table, ptr @imx_clk_scu_rsrc_imx8qm], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qm_clk_scu_rsrc_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_clk_scu_rsrc_imx8qm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @imx_clk_scu_rsrc_imx8qm, !1, !"imx_clk_scu_rsrc_imx8qm", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx8qm-rsrc.c", i32 113, i32 37}
!2 = !{ptr @imx8qm_clk_scu_rsrc_table, !3, !"imx8qm_clk_scu_rsrc_table", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx8qm-rsrc.c", i32 12, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
