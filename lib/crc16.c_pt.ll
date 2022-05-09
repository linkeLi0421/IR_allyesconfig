; ModuleID = '/llk/IR_all_yes/lib/crc16.c_pt.bc'
source_filename = "../lib/crc16.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crc16_table\22, \22a\22\09"
module asm "\09.weak\09__crc_crc16_table\09\09\09\09"
module asm "\09.long\09__crc_crc16_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc16_table:\09\09\09\09\09"
module asm "\09.asciz \09\22crc16_table\22\09\09\09\09\09"
module asm "__kstrtabns_crc16_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crc16\22, \22a\22\09"
module asm "\09.weak\09__crc_crc16\09\09\09\09"
module asm "\09.long\09__crc_crc16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc16:\09\09\09\09\09"
module asm "\09.asciz \09\22crc16\22\09\09\09\09\09"
module asm "__kstrtabns_crc16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@crc16_table = dso_local constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 -16191, i16 -15999, i16 320, i16 -15615, i16 960, i16 640, i16 -15807, i16 -14847, i16 1728, i16 1920, i16 -14527, i16 1280, i16 -14911, i16 -15231, i16 1088, i16 -13311, i16 3264, i16 3456, i16 -12991, i16 3840, i16 -12351, i16 -12671, i16 3648, i16 2560, i16 -13631, i16 -13439, i16 2880, i16 -14079, i16 2496, i16 2176, i16 -14271, i16 -10239, i16 6336, i16 6528, i16 -9919, i16 6912, i16 -9279, i16 -9599, i16 6720, i16 7680, i16 -8511, i16 -8319, i16 8000, i16 -8959, i16 7616, i16 7296, i16 -9151, i16 5120, i16 -11071, i16 -10879, i16 5440, i16 -10495, i16 6080, i16 5760, i16 -10687, i16 -11775, i16 4800, i16 4992, i16 -11455, i16 4352, i16 -11839, i16 -12159, i16 4160, i16 -4095, i16 12480, i16 12672, i16 -3775, i16 13056, i16 -3135, i16 -3455, i16 12864, i16 13824, i16 -2367, i16 -2175, i16 14144, i16 -2815, i16 13760, i16 13440, i16 -3007, i16 15360, i16 -831, i16 -639, i16 15680, i16 -255, i16 16320, i16 16000, i16 -447, i16 -1535, i16 15040, i16 15232, i16 -1215, i16 14592, i16 -1599, i16 -1919, i16 14400, i16 10240, i16 -5951, i16 -5759, i16 10560, i16 -5375, i16 11200, i16 10880, i16 -5567, i16 -4607, i16 11968, i16 12160, i16 -4287, i16 11520, i16 -4671, i16 -4991, i16 11328, i16 -7167, i16 9408, i16 9600, i16 -6847, i16 9984, i16 -6207, i16 -6527, i16 9792, i16 8704, i16 -7487, i16 -7295, i16 9024, i16 -7935, i16 8640, i16 8320, i16 -8127, i16 -24575, i16 24768, i16 24960, i16 -24255, i16 25344, i16 -23615, i16 -23935, i16 25152, i16 26112, i16 -22847, i16 -22655, i16 26432, i16 -23295, i16 26048, i16 25728, i16 -23487, i16 27648, i16 -21311, i16 -21119, i16 27968, i16 -20735, i16 28608, i16 28288, i16 -20927, i16 -22015, i16 27328, i16 27520, i16 -21695, i16 26880, i16 -22079, i16 -22399, i16 26688, i16 30720, i16 -18239, i16 -18047, i16 31040, i16 -17663, i16 31680, i16 31360, i16 -17855, i16 -16895, i16 32448, i16 32640, i16 -16575, i16 32000, i16 -16959, i16 -17279, i16 31808, i16 -19455, i16 29888, i16 30080, i16 -19135, i16 30464, i16 -18495, i16 -18815, i16 30272, i16 29184, i16 -19775, i16 -19583, i16 29504, i16 -20223, i16 29120, i16 28800, i16 -20415, i16 20480, i16 -28479, i16 -28287, i16 20800, i16 -27903, i16 21440, i16 21120, i16 -28095, i16 -27135, i16 22208, i16 22400, i16 -26815, i16 21760, i16 -27199, i16 -27519, i16 21568, i16 -25599, i16 23744, i16 23936, i16 -25279, i16 24320, i16 -24639, i16 -24959, i16 24128, i16 23040, i16 -25919, i16 -25727, i16 23360, i16 -26367, i16 22976, i16 22656, i16 -26559, i16 -30719, i16 18624, i16 18816, i16 -30399, i16 19200, i16 -29759, i16 -30079, i16 19008, i16 19968, i16 -28991, i16 -28799, i16 20288, i16 -29439, i16 19904, i16 19584, i16 -29631, i16 17408, i16 -31551, i16 -31359, i16 17728, i16 -30975, i16 18368, i16 18048, i16 -31167, i16 -32255, i16 17088, i16 17280, i16 -31935, i16 16640, i16 -32319, i16 -32639, i16 16448], [128 x i8] zeroinitializer }, align 32
@__kstrtab_crc16_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc16_table = external dso_local constant [0 x i8], align 1
@__ksymtab_crc16_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc16_table to i32), ptr @__kstrtab_crc16_table, ptr @__kstrtabns_crc16_table }, section "___ksymtab+crc16_table", align 4
@__kstrtab_crc16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc16 = external dso_local constant [0 x i8], align 1
@__ksymtab_crc16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc16 to i32), ptr @__kstrtab_crc16, ptr @__kstrtabns_crc16 }, section "___ksymtab+crc16", align 4
@__UNIQUE_ID_description106 = internal constant [37 x i8] c"crc16.description=CRC16 calculations\00", section ".modinfo", align 1
@__UNIQUE_ID_file107 = internal constant [21 x i8] c"crc16.file=lib/crc16\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [18 x i8] c"crc16.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"crc16_table\00", align 1
@___asan_gen_.2 = private constant [15 x i8] c"../lib/crc16.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 11, i32 11 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_crc16, ptr @__ksymtab_crc16_table, ptr @crc16_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc16_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @crc16(i16 noundef zeroext %crc, ptr nocapture noundef readonly %buffer, i32 noundef %len) #0 align 64 {
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
  %crc.addr.03 = phi i16 [ %xor4.i, %while.body.while.body_crit_edge ], [ %crc, %entry.while.body_crit_edge ]
  %dec = add i32 %len.addr.05, -1
  %incdec.ptr = getelementptr i8, ptr %buffer.addr.04, i32 1
  %0 = ptrtoint ptr %buffer.addr.04 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer.addr.04, align 1
  %2 = lshr i16 %crc.addr.03, 8
  %conv2.i = zext i8 %1 to i32
  %3 = and i16 %crc.addr.03, 255
  %conv.masked.i = zext i16 %3 to i32
  %and.i = xor i32 %conv2.i, %conv.masked.i
  %arrayidx.i = getelementptr [256 x i16], ptr @crc16_table, i32 0, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %xor4.i = xor i16 %5, %2
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %crc.addr.0.lcssa = phi i16 [ %crc, %entry.while.end_crit_edge ], [ %xor4.i, %while.body.while.end_crit_edge ]
  ret i16 %crc.addr.0.lcssa
}

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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

!0 = !{ptr @crc16_table, !1, !"crc16_table", i1 false, i1 false}
!1 = !{!"../lib/crc16.c", i32 11, i32 11}
!2 = !{ptr @__ksymtab_crc16_table, !3, !"__ksymtab_crc16_table", i1 false, i1 false}
!3 = !{!"../lib/crc16.c", i32 45, i32 1}
!4 = !{ptr @__ksymtab_crc16, !5, !"__ksymtab_crc16", i1 false, i1 false}
!5 = !{!"../lib/crc16.c", i32 61, i32 1}
!6 = !{ptr @__UNIQUE_ID_description106, !7, !"__UNIQUE_ID_description106", i1 false, i1 false}
!7 = !{!"../lib/crc16.c", i32 63, i32 1}
!8 = !{ptr @__UNIQUE_ID_file107, !9, !"__UNIQUE_ID_file107", i1 false, i1 false}
!9 = !{!"../lib/crc16.c", i32 64, i32 1}
!10 = !{ptr @__UNIQUE_ID_license108, !9, !"__UNIQUE_ID_license108", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
