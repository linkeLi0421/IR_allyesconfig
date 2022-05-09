; ModuleID = '/llk/IR_all_yes/lib/fonts/font_6x8.c_pt.bc'
source_filename = "../lib/fonts/font_6x8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6x8\00", [28 x i8] zeroinitializer }, align 32
@font_6x8 = dso_local constant { %struct.font_desc, [36 x i8] } { %struct.font_desc { i32 12, ptr @.str, i32 6, i32 8, i32 256, ptr getelementptr (i8, ptr @fontdata_6x8, i64 16), i32 0 }, [36 x i8] zeroinitializer }, align 32
@fontdata_6x8 = internal constant { { [4 x i32], <{ [2039 x i8], [9 x i8] }> }, [528 x i8] } { { [4 x i32], <{ [2039 x i8], [9 x i8] }> } { [4 x i32] [i32 0, i32 0, i32 2048, i32 0], <{ [2039 x i8], [9 x i8] }> <{ [2039 x i8] c"\00\00\00\00\00\00\00\00x\84\CC\84\CC\B4x\00x\FC\B4\FC\B4\CCx\00\00(||8\10\00\00\00\108|8\10\00\00\0088ll\108\00\00\108||\108\00\00\000x0\00\00\00\FC\FC\CC\84\CC\FC\FC\FC\000H\84H0\00\00\FC\CC\B4x\B4\CC\FC\FC<\14 xDD8\008DD8\108\10\00\18\14\14\10\10p`\00<$<$$ll\00\10T8l8T\10\00@`pxp`@\00\04\0C\1C<\1C\0C\04\00\108T\10T8\10\00HHHHH\00H\00<TT<\14\14\14\008D0(\14\0CD8\00\00\00\00\F8\F8\F8\00\108T\10T8\10|\108T\10\10\10\10\00\10\10\10\10T8\10\00\00\10\08|\08\10\00\00\00\10 | \10\00\00\00\00\00@@@x\00\00H\84\FC\84H\00\00\00\10\1088||\00\00||88\10\10\00\00\00\00\00\00\00\00\00\10\10\10\10\10\00\10\00((\00\00\00\00\00\00\00(|((|(\00\108@0\08p \00dd\08\10 LL\000HP TH4\00\10\10\00\00\00\00\00\00\08\10   \10\08\00 \10\08\08\08\10 \00\10T8T\10\00\00\00\00\10\10|\10\10\00\00\00\00\00\00\0000 \00\00\00|\00\00\00\00\00\00\00\00\00\18\18\00\04\08\08\10\10  @8DLTdD8\00\100P\10\10\10|\008D\04\08\10 |\008D\04\18\04D8\00\08\18(H|\08\08\00|@x\04\04D8\00\18 @xDD8\00|\04\04\08\10\10\10\008DD8DD8\008DD<\04\080\00\00\00\18\18\00\18\18\00\00\0000\0000 \04\08\10 \10\08\04\00\00\00|\00|\00\00\00 \10\08\04\08\10 \008D\04\08\10\00\10\008D\\T\\@8\00\10(DD|DD\00x$$8$$x\008D@@@D8\00x$$$$$x\00|@@x@@|\00|@@x@@@\008D@\\DD8\00DDD|DDD\008\10\10\10\10\108\00\1C\08\08\08HH0\00DHP`PHD\00@@@@@@|\00DlTTDDD\00DdTLDDD\008DDDDD8\00xDDx@@@\008DDDTH4\00xDDxPHD\008D@8\04D8\00|\10\10\10\10\10\10\00DDDDDD8\00DDDDD(\10\00DDDTTlD\00DD(\10(DD\00DDD(\10\10\10\00|\04\08\10 @|\00\18\10\10\10\10\10\18\00@  \10\10\08\08\040\10\10\10\10\100\00\10(D\00\00\00\00\00\00\00\00\00\00\00\00| \10\08\00\00\00\00\00\00\008\04<D<\00@@XdDdX\00\00\008D@D8\00\04\044LDL4\00\00\008D|@<\00\0C\10\108\10\10\10\00\004LDL4\048@@xDDDD\00\10\000\10\10\108\00\10\000\10\10\10\10`@@HPpHD\000\10\10\10\10\108\00\00\00hTTTT\00\00\00XdDDD\00\00\008DDD8\00\00\00xDdX@@\00\00<DL4\04\04\00\00Xd@@@\00\00\00<@8\04x\00\10\108\10\10\10\0C\00\00\00DDDL4\00\00\00DDD(\10\00\00\00TTTT(\00\00\00D(\10(D\00\00\00DDD<\048\00\00|\08\10 |\00\08\10\10 \10\10\08\00\10\10\00\10\10\10\10\00 \10\10\08\10\10 \00\00\00\00 T\08\00\00\00\00\10(DD|\00\008D@D8\10 \00(\00DDL4\00\18\008D|@<\00\18\008\04<D<\00(\008\04<D<\00\18\008\04<D<\00<\188\04<D<\00\00\008D@D8\10\18\008D|@<\00(\008D|@<\00\18\008D|@<\00(\000\10\10\108\00\18\000\10\10\108\00\18\000\10\10\108\00D\10(D|DD\000H8D|DD\00\10|@x@@|\00\00\00x\14|P<\00<PPxPP\\\00\18\008DDD8\00(\008DDD8\00\18\008DDD8\00\10(\00DDL4\00 \10\00DDL4\00(\00DDD<\048\848DDDD8\00\88DDDDD8\00\108TPT8\10\000H@p@Dx\00D(|\10|\10\10\00pHpH\\HD\00\0C\10\108\10\10`\00\18\008\04<D<\00\08\10\000\10\108\00\08\10\008DD8\00\08\10\00DDL4\004X\00XdDD\00XDdTLDD\008\04<D<\00|\008DDD8\00|\00\10\00\10 @D8\00\00\00\00|@@\00\00\00\00\00|\04\04\00\00 $(\10(D\08\1C $(\10(X<\08\10\00\10\10\10\10\10\00\00\00$H\90H$\00\00\00\90H$H\90\00\10D\10D\10D\10D\A8T\A8T\A8T\A8T\DCt\DCt\DCt\DCt\10\10\10\10\10\10\10\10\10\10\10\F0\10\10\10\10\10\10\F0\10\F0\10\10\10(((\E8((((\00\00\00\F8((((\00\00\F0\10\F0\10\10\10((\E8\08\E8(((((((((((\00\00\F8\08\E8(((((\E8\08\F8\00\00\00(((\F8\00\00\00\00\10\10\F0\10\F0\00\00\00\00\00\00\F0\10\10\10\10\10\10\10\1C\00\00\00\00\10\10\10\FC\00\00\00\00\00\00\00\FC\10\10\10\10\10\10\10\1C\10\10\10\10\00\00\00\FC\00\00\00\00\10\10\10\FC\10\10\10\10\10\10\1C\10\1C\10\10\10(((,((((((, <\00\00\00\00\00< ,(((((\EC\00\FC\00\00\00\00\00\FC\00\EC(((((, ,(((\00\00\FC\00\FC\00\00\00((\EC\00\EC(((\10\10\FC\00\FC\00\00\00(((\FC\00\00\00\00\00\00\FC\00\FC\10\10\10\00\00\00\FC(((((((<\00\00\00\00\10\10\1C\10\1C\00\00\00\00\00\1C\10\1C\10\10\10\00\00\00<(((((((\FC((((\10\10\FC\10\FC\10\10\10\10\10\10\F0\00\00\00\00\00\00\00\1C\10\10\10\10\FC\FC\FC\FC\FC\FC\FC\FC\00\00\00\00\FC\FC\FC\FC\E0\E0\E0\E0\E0\E0\E0\E0\1C\1C\1C\1C\1C\1C\1C\1C\FC\FC\FC\FC\00\00\00\00\00\004HHH4\00$DHHDDX@|DD@@@@\00\00\00|((((\00|$\10\08\10$|\00\00\00<HHH0\00\00\00HHHHt@\00\00|\10\10\10\0C\00\108DD8\108\008DD|DD8\008DDDD(l\00\18 \18$$$\18\00\00\008TTT8\00\00\048TT8@\00<@@8@@<\008DDDDDD\00\00\FC\00\FC\00\FC\00\00\10\10|\10\10\00|\00 \10\08\10 \008\00\08\10 \10\08\008\00\0C\10\10\10\10\10\10\10\10\10\10\10\10\10\10`\00\10\00|\00\10\00\00\00 T\08 T\08\000HH0\00\00\00\00\00\00\108\10\00\00\00\00\00\00\10\00\00\00\00\04\08\08PP  \00`PPP\00\00\00\00`\10 p\00\00\00\00\00888888", [9 x i8] zeroinitializer }> }, [528 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 2571, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"font_6x8\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 2569, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"fontdata_6x8\00", align 1
@___asan_gen_.9 = private constant [24 x i8] c"../lib/fonts/font_6x8.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 6, i32 31 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @font_6x8, ptr @fontdata_6x8], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @font_6x8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fontdata_6x8 to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
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
!1 = !{!"../lib/fonts/font_6x8.c", i32 2571, i32 10}
!2 = !{ptr @font_6x8, !3, !"font_6x8", i1 false, i1 false}
!3 = !{!"../lib/fonts/font_6x8.c", i32 2569, i32 24}
!4 = !{ptr @fontdata_6x8, !5, !"fontdata_6x8", i1 false, i1 false}
!5 = !{!"../lib/fonts/font_6x8.c", i32 6, i32 31}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
