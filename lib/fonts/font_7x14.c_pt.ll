; ModuleID = '/llk/IR_all_yes/lib/fonts/font_7x14.c_pt.bc'
source_filename = "../lib/fonts/font_7x14.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7x14\00", [27 x i8] zeroinitializer }, align 32
@font_7x14 = dso_local constant { %struct.font_desc, [36 x i8] } { %struct.font_desc { i32 4, ptr @.str, i32 7, i32 14, i32 256, ptr getelementptr (i8, ptr @fontdata_7x14, i64 16), i32 0 }, [36 x i8] zeroinitializer }, align 32
@fontdata_7x14 = internal constant { { [4 x i32], <{ [3566 x i8], [18 x i8] }> }, [912 x i8] } { { [4 x i32], <{ [3566 x i8], [18 x i8] }> } { [4 x i32] [i32 0, i32 0, i32 3584, i32 0], <{ [3566 x i8], [18 x i8] }> <{ [3566 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00|\82\AA\82\82\BA\92\82|\00\00\00\00\00|\FE\D6\FE\FE\C6\EE\FE\FE|\00\00\00\00\00\00\00l|\FE|8\18\10\00\00\00\00\00\00\108|\FE|8\10\00\00\00\00\00\00888\EE\EE\EE\10\108\00\00\00\00\00\108|\FE\FE|\10\108\00\00\00\00\00\00\00\00\18<<\18\00\00\00\00\00\FE\FE\FE\FE\FE\E6\C2\C2\E6\FE\FE\FE\FE\FE\00\00\00\00\008lDl8\00\00\00\00\FE\FE\FE\FE\FE\C6\92\BA\92\C6\FE\FE\FE\FE\00\1E\0E\1A\1Ax\CC\CC\CC\CCx\00\00\00\00<ffff<\18~\18\18\00\00\00\00>6>0000p\F0\E0\00\00\00\00~f~ffffn\EE\EC\C0\00\00\00\00\10\10\D68\EE8\D6\10\10\00\00\00\00\80\C0\E0\F0\FC\F0\E0\C0\80\00\00\00\00\00\04\0C\1C<\FC<\1C\0C\04\00\00\00\00\00\18<~\18\18\18~<\18\00\00\00\00\00lllllll\00ll\00\00\00\00~\D4\D4\D4t\14\14\14\14\16\00\00\00x\CC`8l\C6\C6l8\18\CCx\00\00\00\00\00\00\00\00\00\FC\FC\FC\FC\00\00\00\00\18<~\18\18\18~<\18~\00\00\00\00\18<~\18\18\18\18\18\18\18\00\00\00\00\18\18\18\18\18\18\18~<\18\00\00\00\00\00\00\000\18\FC\180\00\00\00\00\00\00\00\00\000`\FC`0\00\00\00\00\00\00\00\00\00\00\C0\C0\C0\FC\00\00\00\00\00\00\00\00\00(l\FEl(\00\00\00\00\00\00\00\00\0000xx\FC\FC\00\00\00\00\00\00\00\00\FC\FCxx00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18<<<\18\18\18\00\18\18\00\00\00\00lll(\00\00\00\00\00\00\00\00\00\00ll\FE\FEll\FE\FEll\00\00\0000x\CC\C4\C0x\0C\8C\CCx00\00\00\00\00\C0\C4\0C\180`\CC\8C\00\00\00\008ll8x\DE\CC\CC\DCv\00\00\00\00000`\00\00\00\00\00\00\00\00\00\00\0C\18000000\18\0C\00\00\00\000\18\0C\0C\0C\0C\0C\0C\180\00\00\00\00\00\00\00l8\FE8l\00\00\00\00\00\00\00\00\00\10\10|\10\10\00\00\00\00\00\00\00\00\00\00\00\00\00\18\18\180\00\00\00\00\00\00\00\00\FC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\18\00\00\00\00\00\00\00\04\0C\180`\C0\80\00\00\00\000x\CC\CC\DC\EC\CC\CCx0\00\00\00\00\188x\18\18\18\18\18\18|\00\00\00\00x\CC\0C\18\180`\C0\CC\FC\00\00\00\00x\CC\0C\0C8\0C\0C\0C\CCx\00\00\00\00\0C\1C<l\CC\FE\0C\0C\0C\0C\00\00\00\00\FC\C0\C0\C0\F8\0C\0C\0C\CCx\00\00\00\000`\C0\C0\F8\CC\CC\CC\CCx\00\00\00\00\FC\CC\0C\0C\18\180000\00\00\00\00x\CC\CC\CCx\CC\CC\CC\CCx\00\00\00\00x\CC\CC\CC|\0C\0C\0C\18p\00\00\00\00\00\00\18\18\00\00\00\18\18\00\00\00\00\00\00\00\18\18\00\00\00\18\180\00\00\00\00\00\04\0C\180`0\18\0C\04\00\00\00\00\00\00\00|\00\00|\00\00\00\00\00\00\00\00@`0\18\0C\180`@\00\00\00\00x\CC\CC\18000\0000\00\00\00\00\00\00x\CC\CC\DC\DC\D8\C0x\00\00\00\000x\CC\CC\CC\FC\CC\CC\CC\CC\00\00\00\00\F8lllxllll\F8\00\00\00\008l\C4\C0\C0\C0\C0\C4l8\00\00\00\00\F0\D8\CC\CC\CC\CC\CC\CC\D8\F0\00\00\00\00|ldhxh`dl|\00\00\00\00|d`hxh```p\00\00\00\008l\C4\C0\C0\DC\CC\CCl4\00\00\00\00\CC\CC\CC\CC\FC\CC\CC\CC\CC\CC\00\00\00\00<\18\18\18\18\18\18\18\18<\00\00\00\00\1C\0C\0C\0C\0C\0C\CC\CC\CCx\00\00\00\00\CC\CC\CC\D8\F0\F0\D8\CC\CC\CC\00\00\00\00\C0\C0\C0\C0\C0\C0\C0\C4\CC\FC\00\00\00\00\C6\EE\FE\FE\D6\C6\C6\C6\C6\C6\00\00\00\00\CC\EC\EC\FC\DC\DC\CC\CC\CC\CC\00\00\00\00x\CC\CC\CC\CC\CC\CC\CC\CCx\00\00\00\00\F8\CC\CC\CC\F8\C0\C0\C0\C0\C0\00\00\00\00x\CC\CC\CC\CC\CC\CC\CC\DCx\18\1C\00\00\F8\CC\CC\CC\F8\D8\CC\CC\CC\CC\00\00\00\00|\C4\C0\C0`8\0C\0C\8C\F8\00\00\00\00\FC\FC\B4000000x\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\CC\CCx\00\00\00\00\CC\CC\CC\CC\CC\CC\CCxx0\00\00\00\00\CC\CC\CC\CC\CC\CC\CC\FC\FCH\00\00\00\00\CC\CCxx00xx\CC\CC\00\00\00\00\CC\CC\CC\CCx00000\00\00\00\00\FC\CC\8C\18\180`\C4\CC\FC\00\00\00\00x````````x\00\00\00\00\00\00\80\C0\E0p8\1C\0C\04\00\00\00\00x\18\18\18\18\18\18\18\18x\00\00\00\108l\C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FE\00\00`0\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00x\0C|\CC\CC\CCv\00\00\00\00\C0\C0\C0\F0\D8\CC\CC\CC\CC\F8\00\00\00\00\00\00\00x\CC\C0\C0\C0\CCx\00\00\00\00\1C\0C\0C<l\CC\CC\CC\CCv\00\00\00\00\00\00\00x\CC\FC\C0\C0\CCx\00\00\00\008ld`\F0````\F0\00\00\00\00\00\00\00v\CC\CC\CC\CC\CC|\0C\CCx\00\C0\C0\C0\D8\EC\CC\CC\CC\CC\CC\00\00\00\0000\00p00000x\00\00\00\00\0C\0C\00\1C\0C\0C\0C\0C\0C\0C\CC\CCx\00\C0\C0\C0\CC\D8\F0\F0\D8\CC\CC\00\00\00\00p00000000x\00\00\00\00\00\00\00\EC\FE\D6\D6\D6\D6\D6\00\00\00\00\00\00\00\B8\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\00x\CC\CC\CC\CC\CCx\00\00\00\00\00\00\00\B8\CC\CC\CC\CC\CC\F8\C0\C0\C0\00\00\00\00t\CC\CC\CC\CC\CC|\0C\0C\0C\00\00\00\00\B8\EC\CC\C0\C0\C0\C0\00\00\00\00\00\00\00x\CC`0\18\CCx\00\00\00\00\1000\FC00006\1C\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CCv\00\00\00\00\00\00\00\CC\CC\CC\CC\CCx0\00\00\00\00\00\00\00\C6\C6\D6\D6\D6\FEl\00\00\00\00\00\00\00\CC\CCx0x\CC\CC\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC|\0C\18\F0\00\00\00\00\FC\CC\180`\CC\FC\00\00\00\00\1C000\E00000\1C\00\00\00\000000000000\00\00\00\00p\18\18\18\0E\18\18\18\18p\00\00\00\00\EC\B8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\108l\C6\C6\C6\FE\00\00\00\00\008l\C4\C0\C0\C0\C0\C4l8\18p\00\00\CC\00\00\CC\CC\CC\CC\CC\CCv\00\00\00\0C\180\00x\CC\FC\C0\C0\CCx\00\00\00\108l\00x\0C|\CC\CC\CCv\00\00\00\00\CC\00\00x\0C|\CC\CC\CCv\00\00\00`0\18\00x\0C|\CC\CC\CCv\00\00\008l8\00x\0C|\CC\CC\CCv\00\00\00\00\00\00\00x\CC\C0\C0\C0\CCx00\E0\108l\00x\CC\FC\C0\C0\CCx\00\00\00\00\CC\00\00x\CC\FC\C0\C0\CCx\00\00\00\C0`0\00x\CC\FC\C0\C0\CCx\00\00\00\00l\00\008\18\18\18\18\18<\00\00\000x\CC\00p00000x\00\00\00\C0`0\00p00000x\00\00\00\00\CC\000x\CC\CC\FC\CC\CC\CC\00\00\000HH0x\CC\FC\CC\CC\CC\CC\00\00\00\180\FC\CC\C4\D0\F0\D0\C4\CC\FC\00\00\00\00\00\00\00\EC66~\D8\D8n\00\00\00\00>l\CC\CC\FE\CC\CC\CC\CC\CE\00\00\00\108l\00x\CC\CC\CC\CC\CCx\00\00\00\00\CC\00\00x\CC\CC\CC\CC\CCx\00\00\00\C0`0\00x\CC\CC\CC\CC\CCx\00\00\000x\CC\00\CC\CC\CC\CC\CC\CCv\00\00\00`0\18\00\CC\CC\CC\CC\CC\CCv\00\00\00\00\CC\00\00\CC\CC\CC\CC\CC\CC|\0C\18p\CC\00x\CC\CC\CC\CC\CC\CC\CCx\00\00\00\CC\00\CC\CC\CC\CC\CC\CC\CC\CCx\00\00\0000|\CC\C0\C0\C0\CC|00\00\00\008ld`\F0````\E6\FC\00\00\00\00\CC\CCx0\FC0\FC000\00\00\00\F8\CC\CC\F8\C4\CC\DE\CC\CC\CC\C6\00\00\00\1C6000\FC000\B0\E0\00\00\00\180`\00x\0C|\CC\CC\CCv\00\00\00\180`\00p00000x\00\00\00\180`\00x\CC\CC\CC\CC\CCx\00\00\00\180`\00\CC\CC\CC\CC\CC\CCv\00\00\00\00v\DC\00\B8\CC\CC\CC\CC\CC\CC\00\00\00v\DC\00\CC\EC\EC\FC\DC\CC\CC\CC\00\00\00\00x\D8\D8|\00\FC\00\00\00\00\00\00\00\00p\D8\D8p\00\F8\00\00\00\00\00\00\00\0000\0000`\C0\CC\CCx\00\00\00\00\00\00\00\00\FC\C0\C0\C0\C0\00\00\00\00\00\00\00\00\00\FC\0C\0C\0C\0C\00\00\00\00`\E0bfl\180`\C0\B8L\180|`\E0bfl\180l\DC\B4~\0C\0C\00\0000\00000xxx0\00\00\00\00\00\00\006l\D8l6\00\00\00\00\00\00\00\00\00\D8l6l\D8\00\00\00\00\00\88\22\88\22\88\22\88\22\88\22\88\22\88\22T\AAT\AAT\AAT\AAT\AAT\AAT\AA\EE\BA\EE\BA\EE\BA\EE\BA\EE\BA\EE\BA\EE\BA00000000000000000000\F000000000000\F00\F00000000llllll\EClllllll\00\00\00\00\00\00\FClllllll\00\00\00\00\F00\F00000000llll\EC\0C\EClllllllllllllllllllll\00\00\00\00\FC\0C\EClllllllllll\EC\0C\FC\00\00\00\00\00\00\00llllll\FC\00\00\00\00\00\00\000000\F00\F0\00\00\00\00\00\00\00\00\00\00\00\00\00\F00000000000000>\00\00\00\00\00\00\00000000\FE\00\00\00\00\00\00\00\00\00\00\00\00\00\FE0000000000000>0000000\00\00\00\00\00\00\FE\00\00\00\00\00\00\00000000\FE00000000000>0>0000000llllllnllllllllllln`~\00\00\00\00\00\00\00\00\00\00\00~`nlllllllllll\EE\00\FE\00\00\00\00\00\00\00\00\00\00\00\FE\00\EEllllllllllln`nlllllll\00\00\00\00\FE\00\FE\00\00\00\00\00\00\00llll\EE\00\EElllllll0000\FE\00\FE\00\00\00\00\00\00\00llllll\FE\00\00\00\00\00\00\00\00\00\00\00\FE\00\FE0000000\00\00\00\00\00\00\FElllllllllllll~\00\00\00\00\00\00\000000>0>\00\00\00\00\00\00\00\00\00\00\00>0>0000000\00\00\00\00\00\00~lllllllllllll\FElllllll0000\FE0\FE0000000000000\F0\00\00\00\00\00\00\00\00\00\00\00\00\00>0000000\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\00\00\00\00\00\00\FE\FE\FE\FE\FE\FE\FE\FE\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\FE\FE\FE\FE\FE\FE\00\00\00\00\00\00\00\00\00\00\00\00v\DC\D8\D8\D8\DCv\00\00\00\00x\CC\CC\CC\D8\CC\C6\C6\C6\CC\00\00\00\00\FC\CC\CC\C0\C0\C0\C0\C0\C0\C0\00\00\00\00\00\FE\FElllllll\00\00\00\00\FC\CC`0\18\180`\CC\FC\00\00\00\00\00\00\00~\D8\D8\D8\D8\D8p\00\00\00\00\00\00\00\CC\CC\CC\CC\CC\CC\F8\C0\C0\80\00\00\00v\DC\18\18\18\18\18\18\00\00\00\00\FC0x\CC\CC\CC\CCx0\FC\00\00\00\008l\CC\CC\FC\CC\CC\CCl8\00\00\00\008l\C6\C6\C6llll\EE\00\00\00\00<`0\18|\CC\CC\CC\CCx\00\00\00\00\00\00\00|\D6\D6\D6|\00\00\00\00\00\00\00\06\0C|\D6\D6\E6|`\C0\00\00\00\00\1C0``|```0\1C\00\00\00\00\00x\CC\CC\CC\CC\CC\CC\CC\CC\00\00\00\00\00\00\FC\00\00\FC\00\00\FC\00\00\00\00\00\00\0000\FC00\00\00\FC\00\00\00\00\00`0\18\0C\180`\00\FC\00\00\00\00\00\180`\C0`0\18\00\FC\00\00\00\00\1C660000000000\18\18\18\18\18\18\18\18\D8\D8\D8p\00\00\00\00\00\000\00\FC\000\00\00\00\00\00\00\00\00\00v\DC\00v\DC\00\00\00\00\008ll8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0000\00\00\00\00\00\00\00\00\00\00\00\000\00\00\00\00\00\00\00\1E\18\18\18\18\18\D8\D8\D8x8\00\00\00\D8lllll\00\00\00\00\00\00\00\00x\CC\180d\FC\00\00\00\00\00\00\00\00\00\00\00|||||||", [18 x i8] zeroinitializer }> }, [912 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 4113, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"font_7x14\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 4111, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"fontdata_7x14\00", align 1
@___asan_gen_.9 = private constant [25 x i8] c"../lib/fonts/font_7x14.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 11, i32 31 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @font_7x14, ptr @fontdata_7x14], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @font_7x14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fontdata_7x14 to i32), i32 3600, i32 4512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
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
!1 = !{!"../lib/fonts/font_7x14.c", i32 4113, i32 10}
!2 = !{ptr @font_7x14, !3, !"font_7x14", i1 false, i1 false}
!3 = !{!"../lib/fonts/font_7x14.c", i32 4111, i32 24}
!4 = !{ptr @fontdata_7x14, !5, !"fontdata_7x14", i1 false, i1 false}
!5 = !{!"../lib/fonts/font_7x14.c", i32 11, i32 31}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
