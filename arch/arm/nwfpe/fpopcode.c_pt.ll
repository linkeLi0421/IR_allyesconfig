; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/fpopcode.c_pt.bc'
source_filename = "../arch/arm/nwfpe/fpopcode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.floatx80 = type <{ i16, i16, i64 }>

@floatx80Constant = dso_local constant { [8 x %struct.floatx80], [32 x i8] } { [8 x %struct.floatx80] [%struct.floatx80 zeroinitializer, %struct.floatx80 <{ i16 0, i16 16383, i64 -9223372036854775808 }>, %struct.floatx80 <{ i16 0, i16 16384, i64 -9223372036854775808 }>, %struct.floatx80 <{ i16 0, i16 16384, i64 -4611686018427387904 }>, %struct.floatx80 <{ i16 0, i16 16385, i64 -9223372036854775808 }>, %struct.floatx80 <{ i16 0, i16 16385, i64 -6917529027641081856 }>, %struct.floatx80 <{ i16 0, i16 16382, i64 -9223372036854775808 }>, %struct.floatx80 <{ i16 0, i16 16386, i64 -6917529027641081856 }>], [32 x i8] zeroinitializer }, align 32
@float64Constant = dso_local constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 0, i64 4607182418800017408, i64 4611686018427387904, i64 4613937818241073152, i64 4616189618054758400, i64 4617315517961601024, i64 4602678819172646912, i64 4621819117588971520], [32 x i8] zeroinitializer }, align 32
@float32Constant = dso_local constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1065353216, i32 1073741824, i32 1077936128, i32 1082130432, i32 1084227584, i32 1056964608, i32 1092616192], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"floatx80Constant\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 18, i32 16 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"float64Constant\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 30, i32 15 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"float32Constant\00", align 1
@___asan_gen_.8 = private constant [29 x i8] c"../arch/arm/nwfpe/fpopcode.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 41, i32 15 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @floatx80Constant, ptr @float64Constant, ptr @float32Constant], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @floatx80Constant to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @float64Constant to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @float32Constant to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
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

!0 = !{ptr @floatx80Constant, !1, !"floatx80Constant", i1 false, i1 false}
!1 = !{!"../arch/arm/nwfpe/fpopcode.c", i32 18, i32 16}
!2 = !{ptr @float64Constant, !3, !"float64Constant", i1 false, i1 false}
!3 = !{!"../arch/arm/nwfpe/fpopcode.c", i32 30, i32 15}
!4 = !{ptr @float32Constant, !5, !"float32Constant", i1 false, i1 false}
!5 = !{!"../arch/arm/nwfpe/fpopcode.c", i32 41, i32 15}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
