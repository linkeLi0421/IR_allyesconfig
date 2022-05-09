; ModuleID = '/llk/IR_all_yes/crypto/crct10dif_common.c_pt.bc'
source_filename = "../crypto/crct10dif_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crc_t10dif_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_crc_t10dif_generic\09\09\09\09"
module asm "\09.long\09__crc_crc_t10dif_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc_t10dif_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22crc_t10dif_generic\22\09\09\09\09\09"
module asm "__kstrtabns_crc_t10dif_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@t10_dif_crc_table = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 -29769, i16 -25383, i16 5998, i16 -19963, i16 14770, i16 11996, i16 -23189, i16 -4163, i16 25610, i16 29540, i16 -1837, i16 23992, i16 -10737, i16 -16031, i16 19158, i16 21709, i16 -8326, i16 -14316, i16 17315, i16 -6456, i16 28031, i16 31249, i16 -3674, i16 -17552, i16 12487, i16 10153, i16 -21474, i16 2421, i16 -32062, i16 -27220, i16 7707, i16 -22118, i16 8749, i16 13635, i16 -16652, i16 7071, i16 -28632, i16 -30906, i16 3313, i16 17959, i16 -12912, i16 -9474, i16 20809, i16 -3038, i16 32661, i16 26875, i16 -7348, i16 -681, i16 30432, i16 24974, i16 -5575, i16 20306, i16 -15131, i16 -11381, i16 22588, i16 4842, i16 -26275, i16 -29133, i16 1412, i16 -24337, i16 11096, i16 15414, i16 -18559, i16 -10109, i16 21300, i16 17498, i16 -12307, i16 27270, i16 -7887, i16 -2465, i16 32232, i16 14142, i16 -17271, i16 -21529, i16 8272, i16 -31429, i16 3724, i16 6626, i16 -28075, i16 -29618, i16 2041, i16 4247, i16 -25824, i16 15947, i16 -18948, i16 -23918, i16 10533, i16 25587, i16 -6076, i16 -214, i16 29853, i16 -11786, i16 23105, i16 19759, i16 -14696, i16 28953, i16 -1362, i16 -4672, i16 26231, i16 -15588, i16 18603, i16 24517, i16 -11150, i16 -24924, i16 5395, i16 637, i16 -30262, i16 11425, i16 -22762, i16 -20360, i16 15311, i16 9684, i16 -20893, i16 -18163, i16 12986, i16 -26671, i16 7270, i16 2824, i16 -32577, i16 -13719, i16 16862, i16 22192, i16 -8953, i16 30828, i16 -3109, i16 -6987, i16 28418, i16 15025, i16 -20218, i16 -22936, i16 11743, i16 -30540, i16 771, i16 5229, i16 -24614, i16 -10996, i16 24251, i16 18901, i16 -15774, i16 26377, i16 -4930, i16 -1072, i16 28775, i16 28284, i16 -6709, i16 -3419, i16 30994, i16 -9095, i16 22478, i16 16544, i16 -13545, i16 -32319, i16 2678, i16 7448, i16 -26961, i16 13252, i16 -18317, i16 -20707, i16 9386, i16 -27861, i16 6300, i16 4082, i16 -31675, i16 8494, i16 -21863, i16 -16905, i16 13888, i16 31894, i16 -2271, i16 -8113, i16 27640, i16 -12653, i16 17700, i16 21066, i16 -9731, i16 -14362, i16 19537, i16 23359, i16 -12152, i16 30179, i16 -428, i16 -5830, i16 25229, i16 10331, i16 -23572, i16 -19326, i16 16181, i16 -26018, i16 4585, i16 1671, i16 -29392, i16 -7630, i16 27013, i16 32491, i16 -2724, i16 20535, i16 -9344, i16 -13074, i16 18265, i16 3471, i16 -31176, i16 -28330, i16 6881, i16 -16502, i16 13373, i16 9043, i16 -22300, i16 -18689, i16 15688, i16 10790, i16 -24175, i16 1274, i16 -28851, i16 -26589, i16 5012, i16 22850, i16 -11531, i16 -14949, i16 20012, i16 -5305, i16 24816, i16 30622, i16 -983, i16 19368, i16 -16353, i16 -10383, i16 23750, i16 -1619, i16 29210, i16 25972, i16 -4413, i16 -23531, i16 12194, i16 14540, i16 -19589, i16 5648, i16 -25177, i16 -30007, i16 382, i16 8037, i16 -27438, i16 -31812, i16 2059, i16 -21152, i16 9943, i16 12729, i16 -17906, i16 -3880, i16 31599, i16 27649, i16 -6218, i16 17117, i16 -13974, i16 -8700, i16 21939], [128 x i8] zeroinitializer }, align 32
@__kstrtab_crc_t10dif_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc_t10dif_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_crc_t10dif_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc_t10dif_generic to i32), ptr @__kstrtab_crc_t10dif_generic, ptr @__kstrtabns_crc_t10dif_generic }, section "___ksymtab+crc_t10dif_generic", align 4
@__UNIQUE_ID_description106 = internal constant [65 x i8] c"crct10dif_common.description=T10 DIF CRC calculation common code\00", section ".modinfo", align 1
@__UNIQUE_ID_file107 = internal constant [46 x i8] c"crct10dif_common.file=crypto/crct10dif_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [29 x i8] c"crct10dif_common.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"t10_dif_crc_table\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../crypto/crct10dif_common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 35, i32 20 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_crc_t10dif_generic, ptr @t10_dif_crc_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t10_dif_crc_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @crc_t10dif_generic(i16 noundef zeroext %crc, ptr nocapture noundef readonly %buffer, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp11.not = icmp eq i32 %len, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %crc.addr.012 = phi i16 [ %xor5, %for.body.for.body_crit_edge ], [ %crc, %entry.for.body_crit_edge ]
  %shl = shl i16 %crc.addr.012, 8
  %0 = lshr i16 %crc.addr.012, 8
  %1 = zext i16 %0 to i32
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.013
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %xor = xor i32 %conv2, %1
  %arrayidx3 = getelementptr [256 x i16], ptr @t10_dif_crc_table, i32 0, i32 %xor
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx3, align 2
  %xor5 = xor i16 %5, %shl
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %crc.addr.0.lcssa = phi i16 [ %crc, %entry.for.end_crit_edge ], [ %xor5, %for.body.for.end_crit_edge ]
  ret i16 %crc.addr.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_crc_t10dif_generic, !1, !"__ksymtab_crc_t10dif_generic", i1 false, i1 false}
!1 = !{!"../crypto/crct10dif_common.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_description106, !3, !"__UNIQUE_ID_description106", i1 false, i1 false}
!3 = !{!"../crypto/crct10dif_common.c", i32 81, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../crypto/crct10dif_common.c", i32 82, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @t10_dif_crc_table, !8, !"t10_dif_crc_table", i1 false, i1 false}
!8 = !{!"../crypto/crct10dif_common.c", i32 35, i32 20}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
