; ModuleID = '/llk/IR_all_yes/lib/crc-itu-t.c_pt.bc'
source_filename = "../lib/crc-itu-t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crc_itu_t_table\22, \22a\22\09"
module asm "\09.weak\09__crc_crc_itu_t_table\09\09\09\09"
module asm "\09.long\09__crc_crc_itu_t_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc_itu_t_table:\09\09\09\09\09"
module asm "\09.asciz \09\22crc_itu_t_table\22\09\09\09\09\09"
module asm "__kstrtabns_crc_itu_t_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crc_itu_t\22, \22a\22\09"
module asm "\09.weak\09__crc_crc_itu_t\09\09\09\09"
module asm "\09.long\09__crc_crc_itu_t\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc_itu_t:\09\09\09\09\09"
module asm "\09.asciz \09\22crc_itu_t\22\09\09\09\09\09"
module asm "__kstrtabns_crc_itu_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@crc_itu_t_table = dso_local constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 4129, i16 8258, i16 12387, i16 16516, i16 20645, i16 24774, i16 28903, i16 -32504, i16 -28375, i16 -24246, i16 -20117, i16 -15988, i16 -11859, i16 -7730, i16 -3601, i16 4657, i16 528, i16 12915, i16 8786, i16 21173, i16 17044, i16 29431, i16 25302, i16 -27847, i16 -31976, i16 -19589, i16 -23718, i16 -11331, i16 -15460, i16 -3073, i16 -7202, i16 9314, i16 13379, i16 1056, i16 5121, i16 25830, i16 29895, i16 17572, i16 21637, i16 -23190, i16 -19125, i16 -31448, i16 -27383, i16 -6674, i16 -2609, i16 -14932, i16 -10867, i16 13907, i16 9842, i16 5649, i16 1584, i16 30423, i16 26358, i16 22165, i16 18100, i16 -18597, i16 -22662, i16 -26855, i16 -30920, i16 -2081, i16 -6146, i16 -10339, i16 -14404, i16 18628, i16 22757, i16 26758, i16 30887, i16 2112, i16 6241, i16 10242, i16 14371, i16 -13876, i16 -9747, i16 -5746, i16 -1617, i16 -30392, i16 -26263, i16 -22262, i16 -18133, i16 23285, i16 19156, i16 31415, i16 27286, i16 6769, i16 2640, i16 14899, i16 10770, i16 -9219, i16 -13348, i16 -1089, i16 -5218, i16 -25735, i16 -29864, i16 -17605, i16 -21734, i16 27814, i16 31879, i16 19684, i16 23749, i16 11298, i16 15363, i16 3168, i16 7233, i16 -4690, i16 -625, i16 -12820, i16 -8755, i16 -21206, i16 -17141, i16 -29336, i16 -25271, i16 32407, i16 28342, i16 24277, i16 20212, i16 15891, i16 11826, i16 7761, i16 3696, i16 -97, i16 -4162, i16 -8227, i16 -12292, i16 -16613, i16 -20678, i16 -24743, i16 -28808, i16 -28280, i16 -32343, i16 -20022, i16 -24085, i16 -12020, i16 -16083, i16 -3762, i16 -7825, i16 4224, i16 161, i16 12482, i16 8419, i16 20484, i16 16421, i16 28742, i16 24679, i16 -31815, i16 -27752, i16 -23557, i16 -19494, i16 -15555, i16 -11492, i16 -7297, i16 -3234, i16 689, i16 4752, i16 8947, i16 13010, i16 16949, i16 21012, i16 25207, i16 29270, i16 -18966, i16 -23093, i16 -27224, i16 -31351, i16 -2706, i16 -6833, i16 -10964, i16 -15091, i16 13538, i16 9411, i16 5280, i16 1153, i16 29798, i16 25671, i16 21540, i16 17413, i16 -22565, i16 -18438, i16 -30823, i16 -26696, i16 -6305, i16 -2178, i16 -14563, i16 -10436, i16 9939, i16 14066, i16 1681, i16 5808, i16 26199, i16 30326, i16 17941, i16 22068, i16 -9908, i16 -13971, i16 -1778, i16 -5841, i16 -26168, i16 -30231, i16 -18038, i16 -22101, i16 22596, i16 18533, i16 30726, i16 26663, i16 6336, i16 2273, i16 14466, i16 10403, i16 -13443, i16 -9380, i16 -5313, i16 -1250, i16 -29703, i16 -25640, i16 -21573, i16 -17510, i16 19061, i16 23124, i16 27191, i16 31254, i16 2801, i16 6864, i16 10931, i16 14994, i16 -722, i16 -4849, i16 -8852, i16 -12979, i16 -16982, i16 -21109, i16 -25112, i16 -29239, i16 31782, i16 27655, i16 23652, i16 19525, i16 15522, i16 11395, i16 7392, i16 3265, i16 -4321, i16 -194, i16 -12451, i16 -8324, i16 -20581, i16 -16454, i16 -28711, i16 -24584, i16 28183, i16 32310, i16 20053, i16 24180, i16 11923, i16 16050, i16 3793, i16 7920], [128 x i8] zeroinitializer }, align 32
@__kstrtab_crc_itu_t_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc_itu_t_table = external dso_local constant [0 x i8], align 1
@__ksymtab_crc_itu_t_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc_itu_t_table to i32), ptr @__kstrtab_crc_itu_t_table, ptr @__kstrtabns_crc_itu_t_table }, section "___ksymtab+crc_itu_t_table", align 4
@__kstrtab_crc_itu_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc_itu_t = external dso_local constant [0 x i8], align 1
@__ksymtab_crc_itu_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc_itu_t to i32), ptr @__kstrtab_crc_itu_t, ptr @__kstrtabns_crc_itu_t }, section "___ksymtab+crc_itu_t", align 4
@__UNIQUE_ID_description106 = internal constant [50 x i8] c"crc_itu_t.description=CRC ITU-T V.41 calculations\00", section ".modinfo", align 1
@__UNIQUE_ID_file107 = internal constant [29 x i8] c"crc_itu_t.file=lib/crc-itu-t\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [22 x i8] c"crc_itu_t.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"crc_itu_t_table\00", align 1
@___asan_gen_.2 = private constant [19 x i8] c"../lib/crc-itu-t.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 11, i32 11 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_crc_itu_t, ptr @__ksymtab_crc_itu_t_table, ptr @crc_itu_t_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_itu_t_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext %crc, ptr nocapture noundef readonly %buffer, i32 noundef %len) #0 align 64 {
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
  %shl.i = shl i16 %crc.addr.03, 8
  %2 = lshr i16 %crc.addr.03, 8
  %3 = zext i16 %2 to i32
  %conv2.i = zext i8 %1 to i32
  %xor.i = xor i32 %conv2.i, %3
  %arrayidx.i = getelementptr [256 x i16], ptr @crc_itu_t_table, i32 0, i32 %xor.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %xor4.i = xor i16 %5, %shl.i
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

!0 = !{ptr @crc_itu_t_table, !1, !"crc_itu_t_table", i1 false, i1 false}
!1 = !{!"../lib/crc-itu-t.c", i32 11, i32 11}
!2 = !{ptr @__ksymtab_crc_itu_t_table, !3, !"__ksymtab_crc_itu_t_table", i1 false, i1 false}
!3 = !{!"../lib/crc-itu-t.c", i32 46, i32 1}
!4 = !{ptr @__ksymtab_crc_itu_t, !5, !"__ksymtab_crc_itu_t", i1 false, i1 false}
!5 = !{!"../lib/crc-itu-t.c", i32 63, i32 1}
!6 = !{ptr @__UNIQUE_ID_description106, !7, !"__UNIQUE_ID_description106", i1 false, i1 false}
!7 = !{!"../lib/crc-itu-t.c", i32 65, i32 1}
!8 = !{ptr @__UNIQUE_ID_file107, !9, !"__UNIQUE_ID_file107", i1 false, i1 false}
!9 = !{!"../lib/crc-itu-t.c", i32 66, i32 1}
!10 = !{ptr @__UNIQUE_ID_license108, !9, !"__UNIQUE_ID_license108", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
