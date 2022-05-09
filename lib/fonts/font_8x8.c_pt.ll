; ModuleID = '/llk/IR_all_yes/lib/fonts/font_8x8.c_pt.bc'
source_filename = "../lib/fonts/font_8x8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGA8x8\00", [25 x i8] zeroinitializer }, align 32
@font_vga_8x8 = dso_local constant { %struct.font_desc, [36 x i8] } { %struct.font_desc { i32 0, ptr @.str, i32 8, i32 8, i32 256, ptr getelementptr (i8, ptr @fontdata_8x8, i64 16), i32 0 }, [36 x i8] zeroinitializer }, align 32
@fontdata_8x8 = internal constant { { [4 x i32], <{ [2038 x i8], [10 x i8] }> }, [528 x i8] } { { [4 x i32], <{ [2038 x i8], [10 x i8] }> } { [4 x i32] [i32 0, i32 0, i32 2048, i32 0], <{ [2038 x i8], [10 x i8] }> <{ [2038 x i8] c"\00\00\00\00\00\00\00\00~\81\A5\81\BD\99\81~~\FF\DB\FF\C3\E7\FF~l\FE\FE\FE|8\10\00\108|\FE|8\10\008|8\FE\FE\D6\108\108|\FE\FE|\108\00\00\18<<\18\00\00\FF\FF\E7\C3\C3\E7\FF\FF\00<fBBf<\00\FF\C3\99\BD\BD\99\C3\FF\0F\07\0F}\CC\CC\CCx<fff<\18~\18?3?00p\F0\E0\7Fc\7Fccg\E6\C0\18\DB<\E7\E7<\DB\18\80\E0\F8\FE\F8\E0\80\00\02\0E>\FE>\0E\02\00\18<~\18\18~<\18fffff\00f\00\7F\DB\DB{\1B\1B\1B\00>a<ff<\86|\00\00\00\00~~~\00\18<~\18~<\18\FF\18<~\18\18\18\18\00\18\18\18\18~<\18\00\00\18\0C\FE\0C\18\00\00\000`\FE`0\00\00\00\00\C0\C0\C0\FE\00\00\00$f\FFf$\00\00\00\18<~\FF\FF\00\00\00\FF\FF~<\18\00\00\00\00\00\00\00\00\00\00\18<<\18\18\00\18\00ff$\00\00\00\00\00ll\FEl\FEll\00\18>`<\06|\18\00\00\C6\CC\180f\C6\008l8v\DC\CCv\00\18\180\00\00\00\00\00\0C\18000\18\0C\000\18\0C\0C\0C\180\00\00f<\FF<f\00\00\00\18\18~\18\18\00\00\00\00\00\00\00\18\180\00\00\00~\00\00\00\00\00\00\00\00\00\18\18\00\06\0C\180`\C0\80\008l\C6\D6\C6l8\00\188\18\18\18\18~\00|\C6\06\1C0f\FE\00|\C6\06<\06\C6|\00\1C<l\CC\FE\0C\1E\00\FE\C0\C0\FC\06\C6|\008`\C0\FC\C6\C6|\00\FE\C6\0C\18000\00|\C6\C6|\C6\C6|\00|\C6\C6~\06\0Cx\00\00\18\18\00\00\18\18\00\00\18\18\00\00\18\180\06\0C\180\18\0C\06\00\00\00~\00\00~\00\00`0\18\0C\180`\00|\C6\0C\18\18\00\18\00|\C6\DE\DE\DE\C0x\008l\C6\FE\C6\C6\C6\00\FCff|ff\FC\00<f\C0\C0\C0f<\00\F8lfffl\F8\00\FEbhxhb\FE\00\FEbhxh`\F0\00<f\C0\C0\CEf:\00\C6\C6\C6\FE\C6\C6\C6\00<\18\18\18\18\18<\00\1E\0C\0C\0C\CC\CCx\00\E6flxlf\E6\00\F0```bf\FE\00\C6\EE\FE\FE\D6\C6\C6\00\C6\E6\F6\DE\CE\C6\C6\00|\C6\C6\C6\C6\C6|\00\FCff|``\F0\00|\C6\C6\C6\C6\CE|\0E\FCff|lf\E6\00<f0\18\0Cf<\00~~Z\18\18\18<\00\C6\C6\C6\C6\C6\C6|\00\C6\C6\C6\C6\C6l8\00\C6\C6\C6\D6\D6\FEl\00\C6\C6l8l\C6\C6\00fff<\18\18<\00\FE\C6\8C\182f\FE\00<00000<\00\C0`0\18\0C\06\02\00<\0C\0C\0C\0C\0C<\00\108l\C6\00\00\00\00\00\00\00\00\00\00\00\FF0\18\0C\00\00\00\00\00\00\00x\0C|\CCv\00\E0`|fff\DC\00\00\00|\C6\C0\C6|\00\1C\0C|\CC\CC\CCv\00\00\00|\C6\FE\C0|\00<f`\F8``\F0\00\00\00v\CC\CC|\0C\F8\E0`lvff\E6\00\18\008\18\18\18<\00\06\00\06\06\06ff<\E0`flxl\E6\008\18\18\18\18\18<\00\00\00\EC\FE\D6\D6\D6\00\00\00\DCffff\00\00\00|\C6\C6\C6|\00\00\00\DCff|`\F0\00\00v\CC\CC|\0C\1E\00\00\DCv``\F0\00\00\00~\C0|\06\FC\0000\FC006\1C\00\00\00\CC\CC\CC\CCv\00\00\00\C6\C6\C6l8\00\00\00\C6\D6\D6\FEl\00\00\00\C6l8l\C6\00\00\00\C6\C6\C6~\06\FC\00\00~L\182~\00\0E\18\18p\18\18\0E\00\18\18\18\18\18\18\18\00p\18\18\0E\18\18p\00v\DC\00\00\00\00\00\00\00\108l\C6\C6\FE\00|\C6\C0\C0\C6|\0Cx\CC\00\CC\CC\CC\CCv\00\0C\18|\C6\FE\C0|\00|\82x\0C|\CCv\00\C6\00x\0C|\CCv\000\18x\0C|\CCv\0000x\0C|\CCv\00\00\00~\C0\C0~\0C8|\82|\C6\FE\C0|\00\C6\00|\C6\FE\C0|\000\18|\C6\FE\C0|\00f\008\18\18\18<\00|\828\18\18\18<\000\18\008\18\18<\00\C68l\C6\FE\C6\C6\008l|\C6\FE\C6\C6\00\180\FE\C0\F8\C0\FE\00\00\00~\18~\D8~\00>l\CC\FE\CC\CC\CE\00|\82|\C6\C6\C6|\00\C6\00|\C6\C6\C6|\000\18|\C6\C6\C6|\00x\84\00\CC\CC\CCv\00`0\CC\CC\CC\CCv\00\C6\00\C6\C6\C6~\06\FC\C68l\C6\C6l8\00\C6\00\C6\C6\C6\C6|\00\18\18~\C0\C0~\18\188ld\F0`f\FC\00ff<~\18~\18\18\F8\CC\CC\FA\C6\CF\C6\C7\0E\1B\18<\18\D8p\00\180x\0C|\CCv\00\0C\18\008\18\18<\00\0C\18|\C6\C6\C6|\00\180\CC\CC\CC\CCv\00v\DC\00\DCfff\00v\DC\00\E6\F6\DE\CE\00<ll>\00~\00\008ll8\00|\00\00\18\00\18\180c>\00\00\00\00\FE\C0\C0\00\00\00\00\00\FE\06\06\00\00c\E6l~3f\CC\0Fc\E6lz6j\DF\06\18\00\18\18<<\18\00\003f\CCf3\00\00\00\CCf3f\CC\00\00\22\88\22\88\22\88\22\88U\AAU\AAU\AAU\AAw\DDw\DDw\DDw\DD\18\18\18\18\18\18\18\18\18\18\18\18\F8\18\18\18\18\18\F8\18\F8\18\18\186666\F6666\00\00\00\00\FE666\00\00\F8\18\F8\18\18\1866\F6\06\F666666666666\00\00\FE\06\F666666\F6\06\FE\00\00\006666\FE\00\00\00\18\18\F8\18\F8\00\00\00\00\00\00\00\F8\18\18\18\18\18\18\18\1F\00\00\00\18\18\18\18\FF\00\00\00\00\00\00\00\FF\18\18\18\18\18\18\18\1F\18\18\18\00\00\00\00\FF\00\00\00\18\18\18\18\FF\18\18\18\18\18\1F\18\1F\18\18\18666676666670?\00\00\00\00\00?0766666\F7\00\FF\00\00\00\00\00\FF\00\F766666707666\00\00\FF\00\FF\00\00\0066\F7\00\F7666\18\18\FF\00\FF\00\00\006666\FF\00\00\00\00\00\FF\00\FF\18\18\18\00\00\00\00\FF6666666?\00\00\00\18\18\1F\18\1F\00\00\00\00\00\1F\18\1F\18\18\18\00\00\00\00?6666666\FF666\18\18\FF\18\FF\18\18\18\18\18\18\18\F8\00\00\00\00\00\00\00\1F\18\18\18\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\F0\F0\F0\F0\F0\F0\F0\F0\0F\0F\0F\0F\0F\0F\0F\0F\FF\FF\FF\FF\00\00\00\00\00\00v\DC\C8\DCv\00x\CC\CC\D8\CC\C6\CC\00\FE\C6\C0\C0\C0\C0\C0\00\00\00\FEllll\00\FE\C6`0`\C6\FE\00\00\00~\D8\D8\D8p\00\00\00ffff|\C0\00v\DC\18\18\18\18\00~\18<ff<\18~8l\C6\FE\C6l8\008l\C6\C6ll\EE\00\0E\18\0C>ff<\00\00\00~\DB\DB~\00\00\06\0C~\DB\DB~`\C0\1E0`~`0\1E\00\00|\C6\C6\C6\C6\C6\00\00\FE\00\FE\00\FE\00\00\18\18~\18\18\00~\000\18\0C\180\00~\00\0C\180\18\0C\00~\00\0E\1B\1B\18\18\18\18\18\18\18\18\18\18\D8\D8p\00\18\00~\00\18\00\00\00v\DC\00v\DC\00\008ll8\00\00\00\00\00\00\00\18\18\00\00\00\00\00\00\18\00\00\00\00\0F\0C\0C\0C\ECl<\1Cl6666\00\00\00x\0C\180|\00\00\00\00\00<<<<", [10 x i8] zeroinitializer }> }, [528 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 2578, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"font_vga_8x8\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 2576, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"fontdata_8x8\00", align 1
@___asan_gen_.9 = private constant [24 x i8] c"../lib/fonts/font_8x8.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 12, i32 31 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @font_vga_8x8, ptr @fontdata_8x8], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @font_vga_8x8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fontdata_8x8 to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
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
!1 = !{!"../lib/fonts/font_8x8.c", i32 2578, i32 10}
!2 = !{ptr @font_vga_8x8, !3, !"font_vga_8x8", i1 false, i1 false}
!3 = !{!"../lib/fonts/font_8x8.c", i32 2576, i32 24}
!4 = !{ptr @fontdata_8x8, !5, !"fontdata_8x8", i1 false, i1 false}
!5 = !{!"../lib/fonts/font_8x8.c", i32 12, i32 31}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
