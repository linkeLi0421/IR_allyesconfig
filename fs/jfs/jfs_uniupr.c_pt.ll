; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_uniupr.c_pt.bc'
source_filename = "../fs/jfs/jfs_uniupr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.UNICASERANGE = type { i16, i16, ptr }

@UniUpperTable = dso_local global { [512 x i8], [128 x i8] } { [512 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\E0\E0\E0\E0\E0\E0\E0y\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\00\00\00\FF\00\FF\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\FF\00\FF\00\FF\00\00\FF\00\00\00\00\FF\00\00\FF\00\00\00\FF\00\FF\00\00\FF\00\00\00\FF\00\00\00\00\00\00\00\FF\FE\00\FF\FE\00\FF\FE\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\B1\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\FE\00\FF\00\00\00\FF\00\FF\00\FF\00\FF", [128 x i8] zeroinitializer }, align 32
@UniCaseRangeU03a0 = internal global { [47 x i8], [49 x i8] } { [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\DA\DB\DB\DB\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E1\E0\E0\E0\E0\E0\E0\E0\E0\E0\C0\C1\C1", [49 x i8] zeroinitializer }, align 32
@UniCaseRangeU0430 = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\00\B0\B0", [48 x i8] zeroinitializer }, align 32
@UniCaseRangeU0490 = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\00\00\FF\00\00\00\FF", [35 x i8] zeroinitializer }, align 32
@UniCaseRangeUff40 = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0", [37 x i8] zeroinitializer }, align 32
@UniUpperRange = dso_local global { [6 x %struct.UNICASERANGE], [48 x i8] } { [6 x %struct.UNICASERANGE] [%struct.UNICASERANGE { i16 928, i16 974, ptr @UniCaseRangeU03a0 }, %struct.UNICASERANGE { i16 1072, i16 1119, ptr @UniCaseRangeU0430 }, %struct.UNICASERANGE { i16 1168, i16 1228, ptr @UniCaseRangeU0490 }, %struct.UNICASERANGE { i16 7680, i16 8188, ptr @UniCaseRangeU1e00 }, %struct.UNICASERANGE { i16 -192, i16 -166, ptr @UniCaseRangeUff40 }, %struct.UNICASERANGE zeroinitializer], [48 x i8] zeroinitializer }, align 32
@UniCaseRangeU1e00 = internal global { <{ [500 x i8], [9 x i8] }>, [99 x i8] } { <{ [500 x i8], [9 x i8] }> <{ [500 x i8] c"\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\00\00\C5\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\00\00\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\00\00\00\00\00\00\00\00\00\00\00\08\00\08\00\08\00\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00JJVVVVdd\00\00pp~~\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\08\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\09", [9 x i8] zeroinitializer }>, [99 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"UniUpperTable\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 12, i32 13 }
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU03a0\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 48, i32 20 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU0430\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 55, i32 20 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU0490\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 62, i32 20 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"UniCaseRangeUff40\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 106, i32 20 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"UniUpperRange\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 114, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU1e00\00", align 1
@___asan_gen_.21 = private constant [23 x i8] c"../fs/jfs/jfs_uniupr.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 70, i32 20 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @UniUpperTable, ptr @UniCaseRangeU03a0, ptr @UniCaseRangeU0430, ptr @UniCaseRangeU0490, ptr @UniCaseRangeUff40, ptr @UniUpperRange, ptr @UniCaseRangeU1e00], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniUpperTable to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU03a0 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU0430 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU0490 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeUff40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniUpperRange to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU1e00 to i32), i32 509, i32 608, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @UniUpperTable, !1, !"UniUpperTable", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_uniupr.c", i32 12, i32 13}
!2 = !{ptr @UniUpperRange, !3, !"UniUpperRange", i1 false, i1 false}
!3 = !{!"../fs/jfs/jfs_uniupr.c", i32 114, i32 14}
!4 = !{ptr @UniCaseRangeU03a0, !5, !"UniCaseRangeU03a0", i1 false, i1 false}
!5 = !{!"../fs/jfs/jfs_uniupr.c", i32 48, i32 20}
!6 = !{ptr @UniCaseRangeU0430, !7, !"UniCaseRangeU0430", i1 false, i1 false}
!7 = !{!"../fs/jfs/jfs_uniupr.c", i32 55, i32 20}
!8 = !{ptr @UniCaseRangeU0490, !9, !"UniCaseRangeU0490", i1 false, i1 false}
!9 = !{!"../fs/jfs/jfs_uniupr.c", i32 62, i32 20}
!10 = !{ptr @UniCaseRangeU1e00, !11, !"UniCaseRangeU1e00", i1 false, i1 false}
!11 = !{!"../fs/jfs/jfs_uniupr.c", i32 70, i32 20}
!12 = !{ptr @UniCaseRangeUff40, !13, !"UniCaseRangeUff40", i1 false, i1 false}
!13 = !{!"../fs/jfs/jfs_uniupr.c", i32 106, i32 20}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
