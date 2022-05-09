; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/cik_blit_shaders.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/cik_blit_shaders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@cik_default_state = dso_local constant { [190 x i32], [168 x i8] } { [190 x i32] [i32 -1073321728, i32 0, i32 96, i32 0, i32 0, i32 42, i32 0, i32 0, i32 -1073452800, i32 8, i32 0, i32 0, i32 0, i32 0, i32 -1073518336, i32 15, i32 0, i32 0, i32 0, i32 -1073649408, i32 128, i32 0, i32 -1072862976, i32 131, i32 65535, i32 0, i32 536879104, i32 0, i32 536879104, i32 0, i32 536879104, i32 0, i32 536879104, i32 -1431655766, i32 0, i32 15, i32 15, i32 -1071486720, i32 148, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 -2147483648, i32 536879104, i32 0, i32 1065353216, i32 -1073452800, i32 256, i32 -1, i32 0, i32 0, i32 0, i32 -1073452800, i32 261, i32 0, i32 0, i32 0, i32 0, i32 -1073649408, i32 480, i32 0, i32 -1072928512, i32 512, i32 0, i32 0, i32 13369360, i32 528, i32 65536, i32 4, i32 256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1072600832, i32 640, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073583872, i32 658, i32 0, i32 0, i32 -1073649408, i32 673, i32 0, i32 -1073649408, i32 677, i32 0, i32 -1073583872, i32 680, i32 0, i32 0, i32 -1073583872, i32 685, i32 0, i32 0, i32 -1073649408, i32 725, i32 0, i32 -1073649408, i32 732, i32 43520, i32 -1073321728, i32 734, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073583872, i32 741, i32 0, i32 0, i32 -1071945472, i32 757, i32 1985229328, i32 -19088744, i32 0, i32 0, i32 5, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1073583872, i32 790, i32 14, i32 16], [168 x i8] zeroinitializer }, align 32
@cik_default_size = dso_local constant { i32, [28 x i8] } { i32 190, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"cik_default_state\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 31, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"cik_default_size\00", align 1
@___asan_gen_.5 = private constant [45 x i8] c"../drivers/gpu/drm/radeon/cik_blit_shaders.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 246, i32 11 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @cik_default_state, ptr @cik_default_size], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_default_state to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_default_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
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

!0 = !{ptr @cik_default_state, !1, !"cik_default_state", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/cik_blit_shaders.c", i32 31, i32 11}
!2 = !{ptr @cik_default_size, !3, !"cik_default_size", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/cik_blit_shaders.c", i32 246, i32 11}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
