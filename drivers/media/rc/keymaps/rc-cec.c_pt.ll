; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-cec.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rc_map_table = type { i64, i32 }
%struct.rc_map_list = type { %struct.list_head, %struct.rc_map }
%struct.list_head = type { ptr, ptr }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@cec = internal global { [97 x %struct.rc_map_table], [400 x i8] } { [97 x %struct.rc_map_table] [%struct.rc_map_table { i64 0, i32 352 }, %struct.rc_map_table { i64 1, i32 103 }, %struct.rc_map_table { i64 2, i32 108 }, %struct.rc_map_table { i64 3, i32 105 }, %struct.rc_map_table { i64 4, i32 106 }, %struct.rc_map_table { i64 5, i32 614 }, %struct.rc_map_table { i64 6, i32 615 }, %struct.rc_map_table { i64 7, i32 616 }, %struct.rc_map_table { i64 8, i32 617 }, %struct.rc_map_table { i64 9, i32 618 }, %struct.rc_map_table { i64 10, i32 141 }, %struct.rc_map_table { i64 11, i32 139 }, %struct.rc_map_table { i64 12, i32 364 }, %struct.rc_map_table { i64 13, i32 174 }, %struct.rc_map_table { i64 16, i32 619 }, %struct.rc_map_table { i64 17, i32 438 }, %struct.rc_map_table { i64 29, i32 413 }, %struct.rc_map_table { i64 30, i32 620 }, %struct.rc_map_table { i64 31, i32 621 }, %struct.rc_map_table { i64 32, i32 512 }, %struct.rc_map_table { i64 33, i32 513 }, %struct.rc_map_table { i64 34, i32 514 }, %struct.rc_map_table { i64 35, i32 515 }, %struct.rc_map_table { i64 36, i32 516 }, %struct.rc_map_table { i64 37, i32 517 }, %struct.rc_map_table { i64 38, i32 518 }, %struct.rc_map_table { i64 39, i32 519 }, %struct.rc_map_table { i64 40, i32 520 }, %struct.rc_map_table { i64 41, i32 521 }, %struct.rc_map_table { i64 42, i32 52 }, %struct.rc_map_table { i64 43, i32 28 }, %struct.rc_map_table { i64 44, i32 355 }, %struct.rc_map_table { i64 47, i32 624 }, %struct.rc_map_table { i64 48, i32 402 }, %struct.rc_map_table { i64 49, i32 403 }, %struct.rc_map_table { i64 50, i32 412 }, %struct.rc_map_table { i64 51, i32 213 }, %struct.rc_map_table { i64 52, i32 393 }, %struct.rc_map_table { i64 53, i32 358 }, %struct.rc_map_table { i64 54, i32 138 }, %struct.rc_map_table { i64 55, i32 104 }, %struct.rc_map_table { i64 56, i32 109 }, %struct.rc_map_table { i64 64, i32 116 }, %struct.rc_map_table { i64 65, i32 115 }, %struct.rc_map_table { i64 66, i32 114 }, %struct.rc_map_table { i64 67, i32 113 }, %struct.rc_map_table { i64 68, i32 200 }, %struct.rc_map_table { i64 69, i32 166 }, %struct.rc_map_table { i64 70, i32 201 }, %struct.rc_map_table { i64 71, i32 167 }, %struct.rc_map_table { i64 72, i32 168 }, %struct.rc_map_table { i64 73, i32 208 }, %struct.rc_map_table { i64 74, i32 161 }, %struct.rc_map_table { i64 75, i32 159 }, %struct.rc_map_table { i64 76, i32 158 }, %struct.rc_map_table { i64 77, i32 625 }, %struct.rc_map_table { i64 78, i32 626 }, %struct.rc_map_table { i64 80, i32 371 }, %struct.rc_map_table { i64 81, i32 378 }, %struct.rc_map_table { i64 82, i32 627 }, %struct.rc_map_table { i64 83, i32 365 }, %struct.rc_map_table { i64 84, i32 359 }, %struct.rc_map_table { i64 85, i32 171 }, %struct.rc_map_table { i64 88, i32 622 }, %struct.rc_map_table { i64 89, i32 150 }, %struct.rc_map_table { i64 90, i32 623 }, %struct.rc_map_table { i64 96, i32 200 }, %struct.rc_map_table { i64 24581, i32 208 }, %struct.rc_map_table { i64 24582, i32 208 }, %struct.rc_map_table { i64 24583, i32 208 }, %struct.rc_map_table { i64 24597, i32 409 }, %struct.rc_map_table { i64 24598, i32 409 }, %struct.rc_map_table { i64 24599, i32 409 }, %struct.rc_map_table { i64 24585, i32 629 }, %struct.rc_map_table { i64 24586, i32 629 }, %struct.rc_map_table { i64 24587, i32 629 }, %struct.rc_map_table { i64 24601, i32 630 }, %struct.rc_map_table { i64 24602, i32 630 }, %struct.rc_map_table { i64 24603, i32 630 }, %struct.rc_map_table { i64 24608, i32 168 }, %struct.rc_map_table { i64 24612, i32 200 }, %struct.rc_map_table { i64 24613, i32 201 }, %struct.rc_map_table { i64 97, i32 164 }, %struct.rc_map_table { i64 98, i32 167 }, %struct.rc_map_table { i64 99, i32 626 }, %struct.rc_map_table { i64 100, i32 166 }, %struct.rc_map_table { i64 101, i32 113 }, %struct.rc_map_table { i64 102, i32 628 }, %struct.rc_map_table { i64 107, i32 116 }, %struct.rc_map_table { i64 108, i32 142 }, %struct.rc_map_table { i64 109, i32 143 }, %struct.rc_map_table { i64 113, i32 401 }, %struct.rc_map_table { i64 114, i32 398 }, %struct.rc_map_table { i64 115, i32 399 }, %struct.rc_map_table { i64 116, i32 400 }, %struct.rc_map_table { i64 117, i32 63 }, %struct.rc_map_table { i64 118, i32 631 }], [400 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rc-cec\00", [25 x i8] zeroinitializer }, align 32
@cec_map = dso_local global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @cec, i32 97, i32 0, i32 0, i32 22, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 26, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 170, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"cec_map\00", align 1
@___asan_gen_.8 = private constant [37 x i8] c"../drivers/media/rc/keymaps/rc-cec.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 165, i32 20 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @cec, ptr @.str, ptr @cec_map], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec to i32), i32 1552, i32 1952, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
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

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-cec.c", i32 170, i32 12}
!2 = !{ptr @cec_map, !3, !"cec_map", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-cec.c", i32 165, i32 20}
!4 = !{ptr @cec, !5, !"cec", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-cec.c", i32 26, i32 28}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
