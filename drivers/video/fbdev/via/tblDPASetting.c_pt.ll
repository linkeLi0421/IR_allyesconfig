; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/tblDPASetting.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/tblDPASetting.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.GFX_DPA_SETTING = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@GFX_DPA_SETTING_TBL_VT3324 = dso_local global { [6 x %struct.GFX_DPA_SETTING], [32 x i8] } { [6 x %struct.GFX_DPA_SETTING] [%struct.GFX_DPA_SETTING { i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0 }, %struct.GFX_DPA_SETTING { i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0 }, %struct.GFX_DPA_SETTING { i32 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0 }, %struct.GFX_DPA_SETTING { i32 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0 }, %struct.GFX_DPA_SETTING { i32 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0 }, %struct.GFX_DPA_SETTING { i32 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 14, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@GFX_DPA_SETTING_TBL_VT3327 = dso_local global { [6 x %struct.GFX_DPA_SETTING], [32 x i8] } { [6 x %struct.GFX_DPA_SETTING] [%struct.GFX_DPA_SETTING { i32 0, i8 7, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 8, i8 1 }, %struct.GFX_DPA_SETTING { i32 1, i8 7, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 8, i8 1 }, %struct.GFX_DPA_SETTING { i32 2, i8 6, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 8, i8 1 }, %struct.GFX_DPA_SETTING { i32 3, i8 3, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 8, i8 3 }, %struct.GFX_DPA_SETTING { i32 4, i8 3, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 1, i8 2 }, %struct.GFX_DPA_SETTING { i32 5, i8 0, i8 32, i8 0, i8 16, i8 0, i8 3, i8 0, i8 13, i8 3 }], [32 x i8] zeroinitializer }, align 32
@GFX_DPA_SETTING_TBL_VT3364 = dso_local global { [6 x %struct.GFX_DPA_SETTING], [32 x i8] } { [6 x %struct.GFX_DPA_SETTING] [%struct.GFX_DPA_SETTING { i32 0, i8 7, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 8 }, %struct.GFX_DPA_SETTING { i32 1, i8 7, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 8 }, %struct.GFX_DPA_SETTING { i32 2, i8 7, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 8 }, %struct.GFX_DPA_SETTING { i32 3, i8 7, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 8 }, %struct.GFX_DPA_SETTING { i32 4, i8 3, i8 0, i8 2, i8 0, i8 0, i8 3, i8 0, i8 0, i8 8 }, %struct.GFX_DPA_SETTING { i32 5, i8 1, i8 0, i8 2, i8 16, i8 0, i8 3, i8 0, i8 0, i8 8 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"GFX_DPA_SETTING_TBL_VT3324\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 10, i32 24 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"GFX_DPA_SETTING_TBL_VT3327\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 35, i32 24 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"GFX_DPA_SETTING_TBL_VT3364\00", align 1
@___asan_gen_.8 = private constant [43 x i8] c"../drivers/video/fbdev/via/tblDPASetting.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 55, i32 24 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @GFX_DPA_SETTING_TBL_VT3324, ptr @GFX_DPA_SETTING_TBL_VT3327, ptr @GFX_DPA_SETTING_TBL_VT3364], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GFX_DPA_SETTING_TBL_VT3324 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GFX_DPA_SETTING_TBL_VT3327 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GFX_DPA_SETTING_TBL_VT3364 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
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

!0 = !{ptr @GFX_DPA_SETTING_TBL_VT3324, !1, !"GFX_DPA_SETTING_TBL_VT3324", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/tblDPASetting.c", i32 10, i32 24}
!2 = !{ptr @GFX_DPA_SETTING_TBL_VT3327, !3, !"GFX_DPA_SETTING_TBL_VT3327", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/tblDPASetting.c", i32 35, i32 24}
!4 = !{ptr @GFX_DPA_SETTING_TBL_VT3364, !5, !"GFX_DPA_SETTING_TBL_VT3364", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/tblDPASetting.c", i32 55, i32 24}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
