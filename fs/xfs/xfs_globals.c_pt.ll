; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_globals.c_pt.bc'
source_filename = "../fs/xfs/xfs_globals.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
%struct.xfs_globals = type { i32, i32, i32, i8, i8 }

@xfs_params = dso_local global { %struct.xfs_param, [32 x i8] } { %struct.xfs_param { %struct.xfs_sysctl_val { i32 0, i32 0, i32 1 }, %struct.xfs_sysctl_val { i32 0, i32 0, i32 1 }, %struct.xfs_sysctl_val { i32 0, i32 0, i32 256 }, %struct.xfs_sysctl_val { i32 0, i32 3, i32 11 }, %struct.xfs_sysctl_val { i32 100, i32 3000, i32 720000 }, %struct.xfs_sysctl_val { i32 0, i32 0, i32 1 }, %struct.xfs_sysctl_val { i32 0, i32 1, i32 1 }, %struct.xfs_sysctl_val { i32 0, i32 1, i32 1 }, %struct.xfs_sysctl_val { i32 0, i32 1, i32 1 }, %struct.xfs_sysctl_val { i32 50, i32 100, i32 3000 }, %struct.xfs_sysctl_val { i32 100, i32 1500, i32 720000 }, %struct.xfs_sysctl_val { i32 0, i32 0, i32 1 }, %struct.xfs_sysctl_val { i32 1, i32 1, i32 255 }, %struct.xfs_sysctl_val { i32 0, i32 1, i32 1 }, %struct.xfs_sysctl_val { i32 1, i32 3000, i32 360000 }, %struct.xfs_sysctl_val { i32 1, i32 300, i32 86400 } }, [32 x i8] zeroinitializer }, align 32
@xfs_globals = dso_local global { %struct.xfs_globals, [16 x i8] } { %struct.xfs_globals { i32 -1, i32 0, i32 0, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"xfs_params\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 14, i32 13 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"xfs_globals\00", align 1
@___asan_gen_.5 = private constant [24 x i8] c"../fs/xfs/xfs_globals.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 34, i32 20 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @xfs_params, ptr @xfs_globals], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_params to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_globals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
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

!0 = !{ptr @xfs_params, !1, !"xfs_params", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_globals.c", i32 14, i32 13}
!2 = !{ptr @xfs_globals, !3, !"xfs_globals", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_globals.c", i32 34, i32 20}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
