; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_dcn303.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn303.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dmub_srv_common_regs = type { %struct.dmub_srv_common_reg_offset, %struct.dmub_srv_common_reg_mask, %struct.dmub_srv_common_reg_shift }
%struct.dmub_srv_common_reg_offset = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_common_reg_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_common_reg_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@dmub_srv_dcn303_regs = dso_local constant { %struct.dmub_srv_common_regs, [112 x i8] } { %struct.dmub_srv_common_regs { %struct.dmub_srv_common_reg_offset { i32 14006, i32 13967, i32 13966, i32 13969, i32 13971, i32 13970, i32 13972, i32 13973, i32 13975, i32 13974, i32 13976, i32 13977, i32 13979, i32 13978, i32 13980, i32 13981, i32 13983, i32 13982, i32 13941, i32 13943, i32 13945, i32 13947, i32 13949, i32 13951, i32 13953, i32 13955, i32 13942, i32 13944, i32 13946, i32 13948, i32 13950, i32 13952, i32 13954, i32 13956, i32 13925, i32 13926, i32 13927, i32 13928, i32 13929, i32 13930, i32 13931, i32 13932, i32 13933, i32 13934, i32 13935, i32 13936, i32 13937, i32 13938, i32 13939, i32 13940, i32 13910, i32 13911, i32 13921, i32 13912, i32 13913, i32 13922, i32 13987, i32 13988, i32 13989, i32 13990, i32 13991, i32 13992, i32 13993, i32 13994, i32 13995, i32 13996, i32 13997, i32 13998, i32 13999, i32 14000, i32 14001, i32 14002, i32 14008, i32 13706, i32 14337, i32 14675, i32 14677, i32 13958, i32 14013, i32 13964, i32 14010, i32 13965 }, %struct.dmub_srv_common_reg_mask { i32 65536, i32 131072, i32 524288, i32 28672, i32 1792, i32 65536, i32 16128, i32 2097152, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 65536, i32 256, i32 16777215, i32 16777215, i32 64 }, %struct.dmub_srv_common_reg_shift { i8 16, i8 17, i8 19, i8 12, i8 8, i8 16, i8 8, i8 21, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 16, i8 8, i8 0, i8 0, i8 6 } }, [112 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"dmub_srv_dcn303_regs\00", align 1
@___asan_gen_.2 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn303.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 22, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dmub_srv_dcn303_regs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmub_srv_dcn303_regs to i32), i32 496, i32 608, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
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

!0 = !{ptr @dmub_srv_dcn303_regs, !1, !"dmub_srv_dcn303_regs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn303.c", i32 22, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
