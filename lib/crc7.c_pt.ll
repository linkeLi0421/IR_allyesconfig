; ModuleID = '/llk/IR_all_yes/lib/crc7.c_pt.bc'
source_filename = "../lib/crc7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crc7_be_syndrome_table\22, \22a\22\09"
module asm "\09.weak\09__crc_crc7_be_syndrome_table\09\09\09\09"
module asm "\09.long\09__crc_crc7_be_syndrome_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc7_be_syndrome_table:\09\09\09\09\09"
module asm "\09.asciz \09\22crc7_be_syndrome_table\22\09\09\09\09\09"
module asm "__kstrtabns_crc7_be_syndrome_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crc7_be\22, \22a\22\09"
module asm "\09.weak\09__crc_crc7_be\09\09\09\09"
module asm "\09.long\09__crc_crc7_be\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc7_be:\09\09\09\09\09"
module asm "\09.asciz \09\22crc7_be\22\09\09\09\09\09"
module asm "__kstrtabns_crc7_be:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@crc7_be_syndrome_table = dso_local constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\12$6HZl~\90\82\B4\A6\D8\CA\FC\EE2 \16\04zh^L\A2\B0\86\94\EA\F8\CE\DCdv@R,>\08\1A\F4\E6\D0\C2\BC\AE\98\8AVDr`\1E\0C:(\C6\D4\E2\F0\8E\9C\AA\B8\C8\DA\EC\FE\80\92\A4\B6XJ|n\10\024&\FA\E8\DE\CC\B2\A0\96\84jxN\\\220\06\14\AC\BE\88\9A\E4\F6\C0\D2<.\18\0AtfPB\9E\8C\BA\A8\D6\C4\F2\E0\0E\1C*8FTbp\82\90\A6\B4\CA\D8\EE\FC\12\006$ZH~l\B0\A2\94\86\F8\EA\DC\CE 2\04\16hzL^\E6\F4\C2\D0\AE\BC\8A\98vdR@>,\1A\08\D4\C6\F0\E2\9C\8E\B8\AADV`r\0C\1E(:JXn|\02\10&4\DA\C8\FE\EC\92\80\B6\A4xj\\N0\22\14\06\E8\FA\CC\DE\A0\B2\84\96.<\0A\18ftBP\BE\AC\9A\88\F6\E4\D2\C0\1C\0E8*TFpb\8C\9E\A8\BA\C4\D6\E0\F2", [64 x i8] zeroinitializer }, align 32
@__kstrtab_crc7_be_syndrome_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc7_be_syndrome_table = external dso_local constant [0 x i8], align 1
@__ksymtab_crc7_be_syndrome_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc7_be_syndrome_table to i32), ptr @__kstrtab_crc7_be_syndrome_table, ptr @__kstrtabns_crc7_be_syndrome_table }, section "___ksymtab+crc7_be_syndrome_table", align 4
@__kstrtab_crc7_be = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc7_be = external dso_local constant [0 x i8], align 1
@__ksymtab_crc7_be = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc7_be to i32), ptr @__kstrtab_crc7_be, ptr @__kstrtabns_crc7_be }, section "___ksymtab+crc7_be", align 4
@__UNIQUE_ID_description106 = internal constant [35 x i8] c"crc7.description=CRC7 calculations\00", section ".modinfo", align 1
@__UNIQUE_ID_file107 = internal constant [19 x i8] c"crc7.file=lib/crc7\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [17 x i8] c"crc7.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"crc7_be_syndrome_table\00", align 1
@___asan_gen_.2 = private constant [14 x i8] c"../lib/crc7.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 17, i32 10 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_crc7_be, ptr @__ksymtab_crc7_be_syndrome_table, ptr @crc7_be_syndrome_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc7_be_syndrome_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @crc7_be(i8 noundef zeroext %crc, ptr nocapture noundef readonly %buffer, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not2 = icmp eq i32 %len, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %len.addr.05 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %buffer.addr.04 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer, %entry.while.body_crit_edge ]
  %crc.addr.03 = phi i8 [ %3, %while.body.while.body_crit_edge ], [ %crc, %entry.while.body_crit_edge ]
  %dec = add i32 %len.addr.05, -1
  %incdec.ptr = getelementptr i8, ptr %buffer.addr.04, i32 1
  %0 = ptrtoint ptr %buffer.addr.04 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer.addr.04, align 1
  %xor2.i = xor i8 %1, %crc.addr.03
  %xor.i = zext i8 %xor2.i to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @crc7_be_syndrome_table, i32 0, i32 %xor.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %crc.addr.0.lcssa = phi i8 [ %crc, %entry.while.end_crit_edge ], [ %3, %while.body.while.end_crit_edge ]
  ret i8 %crc.addr.0.lcssa
}

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @crc7_be_syndrome_table, !1, !"crc7_be_syndrome_table", i1 false, i1 false}
!1 = !{!"../lib/crc7.c", i32 17, i32 10}
!2 = !{ptr @__ksymtab_crc7_be_syndrome_table, !3, !"__ksymtab_crc7_be_syndrome_table", i1 false, i1 false}
!3 = !{!"../lib/crc7.c", i32 51, i32 1}
!4 = !{ptr @__ksymtab_crc7_be, !5, !"__ksymtab_crc7_be", i1 false, i1 false}
!5 = !{!"../lib/crc7.c", i32 71, i32 1}
!6 = !{ptr @__UNIQUE_ID_description106, !7, !"__UNIQUE_ID_description106", i1 false, i1 false}
!7 = !{!"../lib/crc7.c", i32 73, i32 1}
!8 = !{ptr @__UNIQUE_ID_file107, !9, !"__UNIQUE_ID_file107", i1 false, i1 false}
!9 = !{!"../lib/crc7.c", i32 74, i32 1}
!10 = !{ptr @__UNIQUE_ID_license108, !9, !"__UNIQUE_ID_license108", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
