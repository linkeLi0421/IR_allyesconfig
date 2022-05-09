; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-core/dvb_math.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_math.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+intlog2\22, \22a\22\09"
module asm "\09.weak\09__crc_intlog2\09\09\09\09"
module asm "\09.long\09__crc_intlog2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_intlog2:\09\09\09\09\09"
module asm "\09.asciz \09\22intlog2\22\09\09\09\09\09"
module asm "__kstrtabns_intlog2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+intlog10\22, \22a\22\09"
module asm "\09.weak\09__crc_intlog10\09\09\09\09"
module asm "\09.long\09__crc_intlog10\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_intlog10:\09\09\09\09\09"
module asm "\09.asciz \09\22intlog10\22\09\09\09\09\09"
module asm "__kstrtabns_intlog10:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/dvb-core/dvb_math.c\00", [62 x i8] zeroinitializer }, align 32
@logtable = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 369, i16 736, i16 1102, i16 1466, i16 1829, i16 2190, i16 2551, i16 2909, i16 3267, i16 3623, i16 3978, i16 4331, i16 4683, i16 5034, i16 5384, i16 5732, i16 6079, i16 6425, i16 6769, i16 7112, i16 7454, i16 7795, i16 8134, i16 8473, i16 8810, i16 9146, i16 9480, i16 9814, i16 10146, i16 10477, i16 10807, i16 11136, i16 11464, i16 11791, i16 12116, i16 12440, i16 12764, i16 13086, i16 13407, i16 13727, i16 14046, i16 14363, i16 14680, i16 14996, i16 15310, i16 15624, i16 15937, i16 16248, i16 16559, i16 16868, i16 17177, i16 17484, i16 17791, i16 18096, i16 18401, i16 18704, i16 19007, i16 19308, i16 19609, i16 19909, i16 20207, i16 20505, i16 20802, i16 21098, i16 21393, i16 21687, i16 21980, i16 22272, i16 22564, i16 22854, i16 23144, i16 23433, i16 23720, i16 24007, i16 24293, i16 24579, i16 24863, i16 25146, i16 25429, i16 25711, i16 25992, i16 26272, i16 26551, i16 26830, i16 27108, i16 27384, i16 27660, i16 27936, i16 28210, i16 28484, i16 28757, i16 29029, i16 29300, i16 29571, i16 29840, i16 30109, i16 30378, i16 30645, i16 30912, i16 31178, i16 31443, i16 31707, i16 31971, i16 32234, i16 32496, i16 32758, i16 -32517, i16 -32257, i16 -31998, i16 -31739, i16 -31481, i16 -31224, i16 -30967, i16 -30711, i16 -30456, i16 -30202, i16 -29948, i16 -29695, i16 -29442, i16 -29190, i16 -28939, i16 -28689, i16 -28439, i16 -28190, i16 -27941, i16 -27694, i16 -27446, i16 -27200, i16 -26954, i16 -26709, i16 -26464, i16 -26220, i16 -25977, i16 -25734, i16 -25492, i16 -25250, i16 -25009, i16 -24769, i16 -24530, i16 -24290, i16 -24052, i16 -23814, i16 -23577, i16 -23340, i16 -23104, i16 -22869, i16 -22634, i16 -22399, i16 -22166, i16 -21933, i16 -21700, i16 -21468, i16 -21236, i16 -21006, i16 -20775, i16 -20546, i16 -20316, i16 -20088, i16 -19860, i16 -19632, i16 -19405, i16 -19179, i16 -18953, i16 -18727, i16 -18502, i16 -18278, i16 -18054, i16 -17831, i16 -17608, i16 -17386, i16 -17164, i16 -16943, i16 -16723, i16 -16502, i16 -16283, i16 -16064, i16 -15845, i16 -15627, i16 -15409, i16 -15192, i16 -14976, i16 -14760, i16 -14544, i16 -14329, i16 -14114, i16 -13900, i16 -13686, i16 -13473, i16 -13260, i16 -13048, i16 -12836, i16 -12625, i16 -12414, i16 -12204, i16 -11994, i16 -11785, i16 -11576, i16 -11367, i16 -11159, i16 -10952, i16 -10745, i16 -10538, i16 -10332, i16 -10126, i16 -9921, i16 -9716, i16 -9511, i16 -9307, i16 -9104, i16 -8901, i16 -8698, i16 -8496, i16 -8294, i16 -8093, i16 -7892, i16 -7691, i16 -7491, i16 -7291, i16 -7092, i16 -6893, i16 -6695, i16 -6497, i16 -6299, i16 -6102, i16 -5905, i16 -5709, i16 -5513, i16 -5317, i16 -5122, i16 -4927, i16 -4733, i16 -4539, i16 -4346, i16 -4152, i16 -3960, i16 -3767, i16 -3575, i16 -3384, i16 -3193, i16 -3002, i16 -2811, i16 -2621, i16 -2432, i16 -2242, i16 -2053, i16 -1865, i16 -1677, i16 -1489, i16 -1302, i16 -1115, i16 -928, i16 -742, i16 -556, i16 -370, i16 -185], [128 x i8] zeroinitializer }, align 32
@__kstrtab_intlog2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_intlog2 = external dso_local constant [0 x i8], align 1
@__ksymtab_intlog2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @intlog2 to i32), ptr @__kstrtab_intlog2, ptr @__kstrtabns_intlog2 }, section "___ksymtab+intlog2", align 4
@__kstrtab_intlog10 = external dso_local constant [0 x i8], align 1
@__kstrtabns_intlog10 = external dso_local constant [0 x i8], align 1
@__ksymtab_intlog10 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @intlog10 to i32), ptr @__kstrtab_intlog10, ptr @__kstrtabns_intlog10 }, section "___ksymtab+intlog10", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 71, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"logtable\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../drivers/media/dvb-core/dvb_math.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 24, i32 29 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_intlog10, ptr @__ksymtab_intlog2, ptr @.str, ptr @logtable], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logtable to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @intlog2(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %do.end, label %if.end22, !prof !17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call i32 @llvm.ctlz.i32(i32 %value, i1 true) #3, !range !18
  %shl = shl i32 %value, %0
  %shr = lshr i32 %shl, 23
  %and = and i32 %shr, 255
  %and24 = and i32 %shl, 8388607
  %add = add nuw nsw i32 %shr, 1
  %and25 = and i32 %add, 255
  %arrayidx = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and25
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %arrayidx26 = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and
  %3 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx26, align 2
  %conv27 = zext i16 %4 to i32
  %sub28 = sub nsw i32 %conv, %conv27
  %and29 = and i32 %sub28, 65535
  %mul = mul i32 %and29, %and24
  %shr30 = lshr i32 %mul, 15
  %.neg = mul nsw i32 %0, -16777216
  %shl31 = add nsw i32 %.neg, 520093696
  %shl34 = shl nuw nsw i32 %conv27, 8
  %add35 = or i32 %shl31, %shl34
  %add36 = add i32 %add35, %shr30
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %add36, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @intlog10(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %do.end, label %intlog2.exit, !prof !17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

intlog2.exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call i32 @llvm.ctlz.i32(i32 %value, i1 true) #3, !range !18
  %shl.i = shl i32 %value, %0
  %shr.i = lshr i32 %shl.i, 23
  %and.i = and i32 %shr.i, 255
  %and24.i = and i32 %shl.i, 8388607
  %add.i = add nuw nsw i32 %shr.i, 1
  %and25.i = and i32 %add.i, 255
  %arrayidx.i = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and25.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %2 to i32
  %arrayidx26.i = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx26.i, align 2
  %conv27.i = zext i16 %4 to i32
  %sub28.i = sub nsw i32 %conv.i, %conv27.i
  %and29.i = and i32 %sub28.i, 65535
  %mul.i = mul i32 %and29.i, %and24.i
  %shr30.i = lshr i32 %mul.i, 15
  %.neg.i = mul nsw i32 %0, -16777216
  %shl31.i = add nsw i32 %.neg.i, 520093696
  %shl34.i = shl nuw nsw i32 %conv27.i, 8
  %add35.i = or i32 %shl31.i, %shl34.i
  %add36.i = add i32 %add35.i, %shr30.i
  %conv = zext i32 %add36.i to i64
  %mul = mul nuw nsw i64 %conv, 646456993
  %shr = lshr i64 %mul, 31
  %conv23 = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %intlog2.exit, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv23, %intlog2.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-core/dvb_math.c", i32 71, i32 3}
!2 = !{ptr @__ksymtab_intlog2, !3, !"__ksymtab_intlog2", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-core/dvb_math.c", i32 117, i32 1}
!4 = !{ptr @__ksymtab_intlog10, !5, !"__ksymtab_intlog10", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-core/dvb_math.c", i32 141, i32 1}
!6 = !{ptr @logtable, !7, !"logtable", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-core/dvb_math.c", i32 24, i32 29}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i32 0, i32 33}
