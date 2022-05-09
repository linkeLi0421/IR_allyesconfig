; ModuleID = '/llk/IR_all_yes/lib/bitrev.c_pt.bc'
source_filename = "../lib/bitrev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+byte_rev_table\22, \22a\22\09"
module asm "\09.weak\09__crc_byte_rev_table\09\09\09\09"
module asm "\09.long\09__crc_byte_rev_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_byte_rev_table:\09\09\09\09\09"
module asm "\09.asciz \09\22byte_rev_table\22\09\09\09\09\09"
module asm "__kstrtabns_byte_rev_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_author106 = internal constant [52 x i8] c"bitrev.author=Akinobu Mita <akinobu.mita@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description107 = internal constant [51 x i8] c"bitrev.description=Bit ordering reversal functions\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [23 x i8] c"bitrev.file=lib/bitrev\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [19 x i8] c"bitrev.license=GPL\00", section ".modinfo", align 1
@byte_rev_table = dso_local constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", [64 x i8] zeroinitializer }, align 32
@__kstrtab_byte_rev_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_byte_rev_table = external dso_local constant [0 x i8], align 1
@__ksymtab_byte_rev_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @byte_rev_table to i32), ptr @__kstrtab_byte_rev_table, ptr @__kstrtabns_byte_rev_table }, section "___ksymtab_gpl+byte_rev_table", align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"byte_rev_table\00", align 1
@___asan_gen_.2 = private constant [16 x i8] c"../lib/bitrev.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 11, i32 10 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_description107, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_byte_rev_table, ptr @byte_rev_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byte_rev_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
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

attributes #0 = { nounwind uwtable(sync) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__UNIQUE_ID_author106, !1, !"__UNIQUE_ID_author106", i1 false, i1 false}
!1 = !{!"../lib/bitrev.c", i32 7, i32 1}
!2 = !{ptr @__UNIQUE_ID_description107, !3, !"__UNIQUE_ID_description107", i1 false, i1 false}
!3 = !{!"../lib/bitrev.c", i32 8, i32 1}
!4 = !{ptr @__UNIQUE_ID_file108, !5, !"__UNIQUE_ID_file108", i1 false, i1 false}
!5 = !{!"../lib/bitrev.c", i32 9, i32 1}
!6 = !{ptr @__UNIQUE_ID_license109, !5, !"__UNIQUE_ID_license109", i1 false, i1 false}
!7 = !{ptr @byte_rev_table, !8, !"byte_rev_table", i1 false, i1 false}
!8 = !{!"../lib/bitrev.c", i32 11, i32 10}
!9 = !{ptr @__ksymtab_byte_rev_table, !10, !"__ksymtab_byte_rev_table", i1 false, i1 false}
!10 = !{!"../lib/bitrev.c", i32 45, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
