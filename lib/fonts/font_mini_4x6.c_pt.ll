; ModuleID = '/llk/IR_all_yes/lib/fonts/font_mini_4x6.c_pt.bc'
source_filename = "../lib/fonts/font_mini_4x6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MINI4x6\00", [24 x i8] zeroinitializer }, align 32
@font_mini_4x6 = dso_local constant { %struct.font_desc, [36 x i8] } { %struct.font_desc { i32 9, ptr @.str, i32 4, i32 6, i32 256, ptr getelementptr (i8, ptr @fontdata_mini_4x6, i64 16), i32 3 }, [36 x i8] zeroinitializer }, align 32
@fontdata_mini_4x6 = internal constant { { [4 x i32], [1536 x i8] }, [400 x i8] } { { [4 x i32], [1536 x i8] } { [4 x i32] [i32 0, i32 0, i32 1536, i32 0], [1536 x i8] c"\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\00\00\00\00\00\00DDD\00D\00\AA\AA\00\00\00\00\AA\FF\FF\AA\00\00Df\EE\CCD\00\AA\22D\88\AA\00f\99f\AA\DD\00\22D\00\00\00\00\22DDD\22\00D\22\22\22D\00\00\EE\EE\EE\00\00\00D\EED\00\00\00\00\00D\88\00\00\00\EE\00\00\00\00\00\00\00D\00\00\22D\88\00\00D\AA\AA\AAD\00D\CCDD\EE\00\CC\22D\88\EE\00\EE\22f\22\EE\00\AA\AA\EE\22\22\00\EE\88\EE\22\EE\00\EE\88\EE\AA\EE\00\EE\22\22\22\22\00\EE\AA\EE\AA\EE\00\EE\AA\EE\22\22\00\00\00D\00D\00\00\00D\00D\88\22D\88D\22\00\00\EE\00\EE\00\00\88D\22D\88\00\EE\22f\00D\00D\EE\EE\88D\00D\AA\EE\AA\AA\00\CC\AA\CC\AA\CC\00f\88\88\88f\00\CC\AA\AA\AA\CC\00\EE\88\EE\88\EE\00\EE\88\EE\88\88\00f\88\EE\AAf\00\AA\AA\EE\AA\AA\00\EEDDD\EE\00\22\22\22\AAD\00\AA\AA\CC\AA\AA\00\88\88\88\88\EE\00\AA\EE\EE\AA\AA\00\AA\EE\EE\EE\AA\00D\AA\AA\AAD\00\CC\AA\CC\88\88\00D\AA\AA\EEf\00\CC\AA\EE\CC\AA\00f\88D\22\CC\00\EEDDDD\00\AA\AA\AA\AAf\00\AA\AA\AADD\00\AA\AA\EE\EE\AA\00\AA\AAD\AA\AA\00\AA\AADDD\00\EE\22D\88\EE\00fDDDf\00\00\88D\22\00\00f\22\22\22f\00D\AA\00\00\00\00\00\00\00\00\00\FF\88D\00\00\00\00\00\00f\AA\EE\00\88\88\CC\AA\CC\00\00\00f\88f\00\22\22f\AAf\00\00\EE\EE\88f\00\22D\EEDD\00\00f\AAf\EE\00\88\88\CC\AA\AA\00D\00DDD\00D\00DD\88\00\00\88\AA\CC\AA\00\00\CCDD\EE\00\00\00\EE\EE\AA\00\00\00\CC\AA\AA\00\00D\AA\AAD\00\00\00\CC\AA\CC\88\00\00f\AAf\22\00\CC\AA\88\88\00\00f\CC\22\CC\00\00D\EEDD\00\00\00\AA\AAf\00\00\00\AA\EED\00\00\00\AA\EE\EE\00\00\00\AAD\AA\00\00\00\AA\EE\22\CC\00\EEf\CC\EE\00\22D\CCD\22\00DDDDD\00\88DfD\88\00U\AA\00\00\00\00D\AA\AA\EE\00\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\00f\CCf\00\00\00\CCf\CC\00\00\88\22\88\22\88\22\AAU\AAU\AAU\DD\BB\DD\BB\DD\BBDDDDDDDD\CCDDDDD\CC\CCDDff\EEfff\00\00\EEfff\00\00\CC\CCDDff\EE\EEffffffff\00\00\EE\EEffff\EE\EE\00\00ff\EE\00\00\00DD\CC\CC\00\00\00\00\CCDDDDDw\00\00\00DD\FF\00\00\00\00\00\FFDDDDDwDDD\00\00\FF\00\00\00DD\FFDDDDDwwDDffwfffffww\00\00\00\00wwffff\FF\FF\00\00\00\00\FF\FFffffwwff\00\00\FF\FF\00\00ff\FF\FFffDD\FF\FF\00\00ff\FF\00\00\00\00\00\FF\FFDD\00\00\FFfffffw\00\00\00DDww\00\00\00\00wwDD\00\00wfffff\FFfffDD\FF\FFDDDD\CC\00\00\00\00\00wDDD\FF\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\CC\CC\CC\CC\CC\CC333333\FF\FF\FF\00\00\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\EE\EE\EE\EE\EE\00\00\00ff\00\00\EE\EE\EE\EE\EE\00" }, [400 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 2152, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"font_mini_4x6\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 2150, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"fontdata_mini_4x6\00", align 1
@___asan_gen_.9 = private constant [29 x i8] c"../lib/fonts/font_mini_4x6.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 46, i32 31 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @font_mini_4x6, ptr @fontdata_mini_4x6], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @font_mini_4x6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fontdata_mini_4x6 to i32), i32 1552, i32 1952, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
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
!1 = !{!"../lib/fonts/font_mini_4x6.c", i32 2152, i32 10}
!2 = !{ptr @font_mini_4x6, !3, !"font_mini_4x6", i1 false, i1 false}
!3 = !{!"../lib/fonts/font_mini_4x6.c", i32 2150, i32 24}
!4 = !{ptr @fontdata_mini_4x6, !5, !"fontdata_mini_4x6", i1 false, i1 false}
!5 = !{!"../lib/fonts/font_mini_4x6.c", i32 46, i32 31}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
