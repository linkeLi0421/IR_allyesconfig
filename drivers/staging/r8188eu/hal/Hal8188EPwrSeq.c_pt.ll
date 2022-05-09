; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/Hal8188EPwrSeq.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/Hal8188EPwrSeq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wl_pwr_cfg = type { i16, i8, i8, i8 }

@rtl8188E_power_on_flow = dso_local global { [9 x %struct.wl_pwr_cfg], [42 x i8] } { [9 x %struct.wl_pwr_cfg] [%struct.wl_pwr_cfg { i16 6, i8 32, i8 2, i8 2 }, %struct.wl_pwr_cfg { i16 2, i8 16, i8 3, i8 0 }, %struct.wl_pwr_cfg { i16 38, i8 16, i8 -128, i8 -128 }, %struct.wl_pwr_cfg { i16 5, i8 16, i8 -128, i8 0 }, %struct.wl_pwr_cfg { i16 5, i8 16, i8 24, i8 0 }, %struct.wl_pwr_cfg { i16 5, i8 16, i8 1, i8 1 }, %struct.wl_pwr_cfg { i16 5, i8 32, i8 1, i8 0 }, %struct.wl_pwr_cfg { i16 35, i8 16, i8 16, i8 0 }, %struct.wl_pwr_cfg { i16 -1, i8 64, i8 0, i8 0 }], [42 x i8] zeroinitializer }, align 32
@rtl8188E_card_disable_flow = dso_local global { [10 x %struct.wl_pwr_cfg], [36 x i8] } { [10 x %struct.wl_pwr_cfg] [%struct.wl_pwr_cfg { i16 31, i8 16, i8 -1, i8 0 }, %struct.wl_pwr_cfg { i16 35, i8 16, i8 16, i8 16 }, %struct.wl_pwr_cfg { i16 5, i8 16, i8 2, i8 2 }, %struct.wl_pwr_cfg { i16 5, i8 32, i8 2, i8 0 }, %struct.wl_pwr_cfg { i16 38, i8 16, i8 -128, i8 -128 }, %struct.wl_pwr_cfg { i16 5, i8 16, i8 24, i8 8 }, %struct.wl_pwr_cfg { i16 7, i8 16, i8 -1, i8 0 }, %struct.wl_pwr_cfg { i16 65, i8 16, i8 16, i8 0 }, %struct.wl_pwr_cfg { i16 -496, i8 16, i8 16, i8 16 }, %struct.wl_pwr_cfg { i16 -1, i8 64, i8 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@rtl8188E_enter_lps_flow = dso_local global { [11 x %struct.wl_pwr_cfg], [62 x i8] } { [11 x %struct.wl_pwr_cfg] [%struct.wl_pwr_cfg { i16 1314, i8 16, i8 -1, i8 127 }, %struct.wl_pwr_cfg { i16 1528, i8 32, i8 -1, i8 0 }, %struct.wl_pwr_cfg { i16 1529, i8 32, i8 -1, i8 0 }, %struct.wl_pwr_cfg { i16 1530, i8 32, i8 -1, i8 0 }, %struct.wl_pwr_cfg { i16 1531, i8 32, i8 -1, i8 0 }, %struct.wl_pwr_cfg { i16 2, i8 16, i8 1, i8 0 }, %struct.wl_pwr_cfg { i16 2, i8 48, i8 0, i8 0 }, %struct.wl_pwr_cfg { i16 256, i8 16, i8 -1, i8 63 }, %struct.wl_pwr_cfg { i16 257, i8 16, i8 2, i8 0 }, %struct.wl_pwr_cfg { i16 1363, i8 16, i8 32, i8 32 }, %struct.wl_pwr_cfg { i16 -1, i8 64, i8 0, i8 0 }], [62 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"rtl8188E_power_on_flow\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 7, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"rtl8188E_card_disable_flow\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 19, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"rtl8188E_enter_lps_flow\00", align 1
@___asan_gen_.8 = private constant [48 x i8] c"../drivers/staging/r8188eu/hal/Hal8188EPwrSeq.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 33, i32 19 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @rtl8188E_power_on_flow, ptr @rtl8188E_card_disable_flow, ptr @rtl8188E_enter_lps_flow], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188E_power_on_flow to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188E_card_disable_flow to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188E_enter_lps_flow to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @rtl8188E_power_on_flow, !1, !"rtl8188E_power_on_flow", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/Hal8188EPwrSeq.c", i32 7, i32 19}
!2 = !{ptr @rtl8188E_card_disable_flow, !3, !"rtl8188E_card_disable_flow", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/hal/Hal8188EPwrSeq.c", i32 19, i32 19}
!4 = !{ptr @rtl8188E_enter_lps_flow, !5, !"rtl8188E_enter_lps_flow", i1 false, i1 false}
!5 = !{!"../drivers/staging/r8188eu/hal/Hal8188EPwrSeq.c", i32 33, i32 19}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
