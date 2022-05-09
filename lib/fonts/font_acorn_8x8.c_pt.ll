; ModuleID = '/llk/IR_all_yes/lib/fonts/font_acorn_8x8.c_pt.bc'
source_filename = "../lib/fonts/font_acorn_8x8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Acorn8x8\00", [23 x i8] zeroinitializer }, align 32
@font_acorn_8x8 = dso_local constant { %struct.font_desc, [36 x i8] } { %struct.font_desc { i32 8, ptr @.str, i32 8, i32 8, i32 256, ptr getelementptr (i8, ptr @acorndata_8x8, i64 16), i32 0 }, [36 x i8] zeroinitializer }, align 32
@acorndata_8x8 = internal constant { { [4 x i32], <{ [2038 x i8], [10 x i8] }> }, [528 x i8] } { { [4 x i32], <{ [2038 x i8], [10 x i8] }> } { [4 x i32] [i32 0, i32 0, i32 2048, i32 0], <{ [2038 x i8], [10 x i8] }> <{ [2038 x i8] c"\00\00\00\00\00\00\00\00~\81\A5\81\BD\99\81~~\FF\BD\FF\C3\E7\FF~l\FE\FE\FE|8\10\00\108|\FE|8\10\00\00\18<\E7\E7<\18\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00`x~~x`\00\00\06\1E~~\1E\06\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00<`<f<\06<\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\18\18<<~~\00\00~~<<\18\18\00\00\00\00\00\00\00\00\00\18<<\18\18\00\18\00lll\00\00\00\00\0066\7F6\7F66\00\0C?h>\0B~\18\00`f\0C\180f\06\008ll8mf;\00\18\18\18\00\00\00\00\00\0C\18000\18\0C\000\18\0C\0C\0C\180\00\00\18~<~\18\00\00\00\18\18~\18\18\00\00\00\00\00\00\00\18\180\00\00\00~\00\00\00\00\00\00\00\00\00\18\18\00\00\06\0C\180`\00\00<fn~vf<\00\188\18\18\18\18~\00<f\06\0C\180~\00<f\06\1C\06f<\00\0C\1C<l~\0C\0C\00~`|\06\06f<\00\1C0`|ff<\00~\06\0C\18000\00<ff<ff<\00<ff>\06\0C8\00\00\00\18\18\00\18\18\00\00\00\18\18\00\18\180\0C\180`0\18\0C\00\00\00~\00~\00\00\000\18\0C\06\0C\180\00<f\0C\18\18\00\18\00<fnjn`<\00<ff~fff\00|ff|ff|\00<f```f<\00xlffflx\00~``|``~\00~``|```\00<f`nff<\00fff~fff\00~\18\18\18\18\18~\00>\0C\0C\0C\0Cl8\00flxpxlf\00``````~\00cw\7Fkkcc\00ffv~nff\00<fffff<\00|ff|```\00<fffjl6\00|ff|lff\00<f`<\06f<\00~\18\18\18\18\18\18\00ffffff<\00fffff<\18\00cckk\7Fwc\00ff<\18<ff\00fff<\18\18\18\00~\06\0C\180`~\00|`````|\00\00`0\18\0C\06\00\00>\06\06\06\06\06>\00<f\00\00\00\00\00\00\00\00\00\00\00\00\00\FF0\18\00\00\00\00\00\00\00\00<\06>f>\00``|fff|\00\00\00<f`f<\00\06\06>fff>\00\00\00<f~`<\00\1C00|000\00\00\00>ff>\06<``|ffff\00\18\008\18\18\18<\00\18\008\18\18\18\18p``flxlf\008\18\18\18\18\18<\00\00\006\7Fkkc\00\00\00|ffff\00\00\00<fff<\00\00\00|ff|``\00\00>ff>\06\07\00\00lv```\00\00\00>`<\06|\0000|000\1C\00\00\00ffff>\00\00\00fff<\18\00\00\00ckk\7F6\00\00\00f<\18<f\00\00\00fff>\06<\00\00~\0C\180~\00\0C\18\18p\18\18\0C\00\18\18\18\18\18\18\18\000\18\18\0E\18\180\001kF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF<f``f<0`f\00ffff>\00\0C\18<f~`<\00\18f<\06>f>\00f\00<\06>f>\000\18<\06>f>\00<f<\06>f>\00\00\00<f`f<`<f<f~`<\00f\00<f~`<\000\18<f~`<\00f\00\008\18\18<\00<f\008\18\18<\000\18\008\18\18<\00ff\00<f~f\00\18f\00<f~f\00\0C\18~`|`~\00\00\00?\0D?l?\00?ff\7Fffg\00<f\00<ff<\00f\00\00<ff<\000\18\00<ff<\00<f\00fff>\000\18\00fff>\00f\00fff>\06<f\00<fff<\00f\00ffff<\00\08>khk>\08\00\1C60|00~\00f<\18\18~\18\18\00\00\00<<<<\00\00\00\00<<<<\00\00\0C\18<\06>f>\00\0C\18\008\18\18<\00\0C\18\00<ff<\00\0C\18\00fff>\006l\00|fff\006l\00fvnf\00\1C\06\1E6\1E\00>\00\1C666\1C\00>\00\18\00\18\180f<\00~\06\00\00\00\00\00\00~\06\00\00\00\00\00\00@\C0@OA\0F\08\0F@\C0@HH\0A\0F\02\18\00\18\18\18\18\18\00\003f\CC\CCf3\00\00\CCf33f\CC\00\22\88\22\88\22\88\22\88U\AAU\AAU\AAU\AA\DDw\DDw\DDw\DDw\18\18\18\18\18\18\18\18\18\18\18\F8\18\18\18\18\18\18\F8\18\F8\18\18\18fff\E6ffff\00\00\00\FEffff\00\00\F8\18\F8\18\18\18ff\E6\06\E6fffffffffff\00\00\FE\06\E6fffff\E6\06\FE\00\00\00fff\FE\00\00\00\00\18\18\F8\18\F8\00\00\00\00\00\00\F8\18\18\18\18\18\18\18\1F\00\00\00\00\18\18\18\FF\00\00\00\00\00\00\00\FF\18\18\18\18\18\18\18\1F\18\18\18\18\00\00\00\FF\00\00\00\00\18\18\18\FF\18\18\18\18\18\18\1F\18\1F\18\18\18fffgffffffg`\7F\00\00\00\00\00\7F`gfffff\E7\00\FF\00\00\00\00\00\FF\00\E7fffffg`gfff\00\00\FF\00\FF\00\00\00ff\E7\00\E7fff\18\18\FF\00\FF\00\00\00fff\FF\00\00\00\00\00\00\FF\00\FF\18\18\18\00\00\00\FFfffffff\7F\00\00\00\00\18\18\1F\18\1F\00\00\00\00\00\1F\18\1F\18\18\18\00\00\00\7Ffffffff\FFffff\18\18\FF\18\FF\18\18\18\18\18\18\F8\00\00\00\00\00\00\00\1F\18\18\18\18\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\F0\F0\F0\F0\F0\F0\F0\F0\0F\0F\0F\0F\0F\0F\0F\0F\FF\FF\FF\FF\00\00\00\00\00\00<<<<\00\00<fflffl\C0\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\003333>`\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\18\18~\18\18\00~\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\00<<<<\00\00\00\18\00\FF\00\18\00\00\00\00<<<<\00\00<f<\00\00\00\00\00\00\00<<<<\00\00\00\00\00\18\18\00\00\00\00\00<<<<\00\00\00\00<<<<\00\008\04\18 <\00\00\00\00\00<<<<", [10 x i8] zeroinitializer }> }, [528 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 270, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"font_acorn_8x8\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 268, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"acorndata_8x8\00", align 1
@___asan_gen_.9 = private constant [30 x i8] c"../lib/fonts/font_acorn_8x8.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 8, i32 31 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @font_acorn_8x8, ptr @acorndata_8x8], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @font_acorn_8x8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acorndata_8x8 to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
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
!1 = !{!"../lib/fonts/font_acorn_8x8.c", i32 270, i32 10}
!2 = !{ptr @font_acorn_8x8, !3, !"font_acorn_8x8", i1 false, i1 false}
!3 = !{!"../lib/fonts/font_acorn_8x8.c", i32 268, i32 24}
!4 = !{ptr @acorndata_8x8, !5, !"acorndata_8x8", i1 false, i1 false}
!5 = !{!"../lib/fonts/font_acorn_8x8.c", i32 8, i32 31}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
