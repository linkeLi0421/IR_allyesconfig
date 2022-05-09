; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r600_blit_shaders.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r600_blit_shaders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@r6xx_default_state = dso_local constant { [280 x i32], [256 x i8] } { [280 x i32] [i32 -1073732608, i32 0, i32 -1073666048, i32 -2147483648, i32 -2147483648, i32 -1073649664, i32 16, i32 32768, i32 -1073649664, i32 1346, i32 117440515, i32 -1073649664, i32 1477, i32 0, i32 -1073649664, i32 867, i32 0, i32 -1073649664, i32 1548, i32 -2113929216, i32 -1073649664, i32 1550, i32 16908804, i32 -1073582336, i32 0, i32 0, i32 0, i32 -1073125120, i32 554, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073649408, i32 4, i32 0, i32 -1073583872, i32 10, i32 0, i32 0, i32 -1073649408, i32 512, i32 0, i32 -1073583872, i32 835, i32 96, i32 64, i32 -1073649408, i32 849, i32 43520, i32 -1072731904, i32 256, i32 2048, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073452800, i32 780, i32 16777216, i32 0, i32 0, i32 0, i32 -1073452800, i32 72, i32 1065353216, i32 0, i32 1065353216, i32 1065353216, i32 -1073649408, i32 128, i32 0, i32 -1073059584, i32 131, i32 65535, i32 0, i32 536879104, i32 0, i32 536879104, i32 0, i32 536879104, i32 0, i32 536879104, i32 0, i32 -1069520640, i32 148, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 -1073583872, i32 658, i32 0, i32 16400, i32 -1073125120, i32 768, i32 0, i32 0, i32 45, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 0, i32 0, i32 -1073649408, i32 786, i32 -1, i32 -1073321728, i32 894, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073452800, i32 438, i32 0, i32 0, i32 0, i32 0, i32 -1073649408, i32 549, i32 0, i32 -1073649408, i32 553, i32 0, i32 -1073649408, i32 567, i32 0, i32 -1073583872, i32 680, i32 0, i32 0, i32 -1072600832, i32 640, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073649408, i32 673, i32 0, i32 -1073649408, i32 677, i32 0, i32 -1073518336, i32 684, i32 0, i32 0, i32 0, i32 -1073649408, i32 212, i32 0, i32 -1073649408, i32 712, i32 0, i32 -1073256192, i32 514, i32 13369344, i32 528, i32 65536, i32 580, i32 256, i32 0, i32 0, i32 -1073583872, i32 142, i32 15, i32 15, i32 -1073649408, i32 488, i32 1, i32 -1073649408, i32 389, i32 0, i32 -1073649408, i32 401, i32 2816, i32 -1073387264, i32 433, i32 0, i32 0, i32 1, i32 0, i32 0, i32 -1073517056, i32 0, i32 18, i32 0, i32 0], [256 x i8] zeroinitializer }, align 32
@r7xx_default_state = dso_local constant { [271 x i32], [260 x i8] } { [271 x i32] [i32 -1073666048, i32 -2147483648, i32 -2147483648, i32 -1073649664, i32 16, i32 32768, i32 -1073649664, i32 1346, i32 117440514, i32 -1073649664, i32 1477, i32 0, i32 -1073649664, i32 867, i32 16384, i32 -1073649664, i32 1548, i32 0, i32 -1073649664, i32 1550, i32 4325892, i32 -1073582336, i32 0, i32 0, i32 0, i32 -1073125120, i32 554, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073649408, i32 4, i32 0, i32 -1073583872, i32 10, i32 0, i32 0, i32 -1073649408, i32 512, i32 0, i32 -1073583872, i32 835, i32 96, i32 0, i32 -1073649408, i32 849, i32 43520, i32 -1073125120, i32 256, i32 2048, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073518336, i32 268, i32 0, i32 0, i32 0, i32 -1073452800, i32 780, i32 16777216, i32 0, i32 0, i32 0, i32 -1073649408, i32 128, i32 0, i32 -1073059584, i32 131, i32 65535, i32 0, i32 536879104, i32 0, i32 536879104, i32 0, i32 536879104, i32 0, i32 536879104, i32 -1431655766, i32 -1069520640, i32 148, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 -1073583872, i32 658, i32 0, i32 5324800, i32 -1073125120, i32 768, i32 0, i32 0, i32 45, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 0, i32 0, i32 -1073649408, i32 786, i32 -1, i32 -1073321728, i32 894, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073452800, i32 438, i32 0, i32 0, i32 0, i32 0, i32 -1073649408, i32 549, i32 0, i32 -1073649408, i32 553, i32 0, i32 -1073649408, i32 567, i32 0, i32 -1073583872, i32 680, i32 0, i32 0, i32 -1072600832, i32 640, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073649408, i32 673, i32 0, i32 -1073649408, i32 677, i32 0, i32 -1073518336, i32 684, i32 0, i32 0, i32 0, i32 -1073649408, i32 212, i32 0, i32 -1073649408, i32 712, i32 0, i32 -1073256192, i32 514, i32 13369344, i32 528, i32 65536, i32 580, i32 256, i32 0, i32 0, i32 -1073583872, i32 142, i32 15, i32 15, i32 -1073649408, i32 488, i32 1, i32 -1073649408, i32 389, i32 0, i32 -1073649408, i32 401, i32 2816, i32 -1073387264, i32 433, i32 0, i32 1, i32 1, i32 0, i32 0, i32 -1073517056, i32 0, i32 18, i32 0, i32 0], [260 x i8] zeroinitializer }, align 32
@r6xx_vs = dso_local constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 4, i32 -2130706432, i32 8252, i32 -1811936504, i32 16384, i32 337644314, i32 0, i32 0, i32 1006632960, i32 1758269440, i32 655360, i32 0], [48 x i8] zeroinitializer }, align 32
@r6xx_ps = dso_local constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 -2139095040, i32 0, i32 -1809840504, i32 16, i32 856064, i32 -1333788672, i32 0], [32 x i8] zeroinitializer }, align 32
@r6xx_ps_size = dso_local constant { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@r6xx_vs_size = dso_local constant { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@r6xx_default_size = dso_local constant { i32, [28 x i8] } { i32 280, [28 x i8] zeroinitializer }, align 32
@r7xx_default_size = dso_local constant { i32, [28 x i8] } { i32 271, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"r6xx_default_state\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 41, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"r7xx_default_state\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 367, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"r6xx_vs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 684, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"r6xx_ps\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 704, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"r6xx_ps_size\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 716, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"r6xx_vs_size\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"r6xx_default_size\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 718, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"r7xx_default_size\00", align 1
@___asan_gen_.23 = private constant [46 x i8] c"../drivers/gpu/drm/radeon/r600_blit_shaders.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 719, i32 11 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @r6xx_default_state, ptr @r7xx_default_state, ptr @r6xx_vs, ptr @r6xx_ps, ptr @r6xx_ps_size, ptr @r6xx_vs_size, ptr @r6xx_default_size, ptr @r7xx_default_size], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6xx_default_state to i32), i32 1120, i32 1376, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r7xx_default_state to i32), i32 1084, i32 1344, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6xx_vs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6xx_ps to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6xx_ps_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6xx_vs_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r6xx_default_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r7xx_default_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @r6xx_default_state, !1, !"r6xx_default_state", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 41, i32 11}
!2 = !{ptr @r7xx_default_state, !3, !"r7xx_default_state", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 367, i32 11}
!4 = !{ptr @r6xx_vs, !5, !"r6xx_vs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 684, i32 11}
!6 = !{ptr @r6xx_ps, !7, !"r6xx_ps", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 704, i32 11}
!8 = !{ptr @r6xx_ps_size, !9, !"r6xx_ps_size", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 716, i32 11}
!10 = !{ptr @r6xx_vs_size, !11, !"r6xx_vs_size", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 717, i32 11}
!12 = !{ptr @r6xx_default_size, !13, !"r6xx_default_size", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 718, i32 11}
!14 = !{ptr @r7xx_default_size, !15, !"r7xx_default_size", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/r600_blit_shaders.c", i32 719, i32 11}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
