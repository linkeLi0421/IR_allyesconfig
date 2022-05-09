; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adau-utils.c_pt.bc'
source_filename = "../sound/soc/codecs/adau-utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adau_calc_pll_cfg\22, \22a\22\09"
module asm "\09.weak\09__crc_adau_calc_pll_cfg\09\09\09\09"
module asm "\09.long\09__crc_adau_calc_pll_cfg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adau_calc_pll_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22adau_calc_pll_cfg\22\09\09\09\09\09"
module asm "__kstrtabns_adau_calc_pll_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_adau_calc_pll_cfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_adau_calc_pll_cfg = external dso_local constant [0 x i8], align 1
@__ksymtab_adau_calc_pll_cfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adau_calc_pll_cfg to i32), ptr @__kstrtab_adau_calc_pll_cfg, ptr @__kstrtabns_adau_calc_pll_cfg }, section "___ksymtab_gpl+adau_calc_pll_cfg", align 4
@__UNIQUE_ID_description106 = internal constant [78 x i8] c"snd_soc_adau_utils.description=ASoC ADAU audio CODECs shared helper functions\00", section ".modinfo", align 1
@__UNIQUE_ID_author107 = internal constant [63 x i8] c"snd_soc_adau_utils.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [60 x i8] c"snd_soc_adau_utils.file=sound/soc/codecs/snd-soc-adau-utils\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [34 x i8] c"snd_soc_adau_utils.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_adau_calc_pll_cfg], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @adau_calc_pll_cfg(i32 noundef %freq_in, i32 noundef %freq_out, ptr nocapture noundef writeonly %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool.not = icmp eq i32 %freq_out, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.else:                                          ; preds = %entry
  %rem = urem i32 %freq_out, %freq_in
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.else.if.end_crit_edge, label %if.then1

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %sub = add i32 %freq_in, 13499999
  %div2 = udiv i32 %sub, 13500000
  %div3 = udiv i32 %freq_in, %div2
  %rem5 = urem i32 %freq_out, %div3
  %call = tail call i32 @gcd(i32 noundef %rem5, i32 noundef %div3) #5
  %div6 = udiv i32 %rem5, %call
  %div7 = udiv i32 %div3, %call
  %dec = add nsw i32 %div2, -1
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else.if.end_crit_edge
  %div3.pn = phi i32 [ %div3, %if.then1 ], [ %freq_in, %if.else.if.end_crit_edge ]
  %n.0 = phi i32 [ %div6, %if.then1 ], [ 0, %if.else.if.end_crit_edge ]
  %m.0 = phi i32 [ %div7, %if.then1 ], [ 0, %if.else.if.end_crit_edge ]
  %div.0 = phi i32 [ %dec, %if.then1 ], [ 0, %if.else.if.end_crit_edge ]
  %r.0 = udiv i32 %freq_out, %div3.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %n.0)
  %cmp10 = icmp ugt i32 %n.0, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %m.0)
  %cmp11 = icmp ugt i32 %m.0, 65535
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div.0)
  %cmp13 = icmp ugt i32 %div.0, 3
  %or.cond73 = select i1 %or.cond, i1 true, i1 %cmp13
  %0 = add i32 %r.0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %0)
  %1 = icmp ult i32 %0, -7
  %2 = or i1 %or.cond73, %1
  br i1 %2, label %if.end.cleanup_crit_edge, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end20:                                         ; preds = %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %r.1 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ %r.0, %if.end.if.end20_crit_edge ]
  %n.1 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ %n.0, %if.end.if.end20_crit_edge ]
  %m.1 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ %m.0, %if.end.if.end20_crit_edge ]
  %div.1 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ %div.0, %if.end.if.end20_crit_edge ]
  %shr = lshr i32 %m.1, 8
  %conv = trunc i32 %shr to i8
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %regs, align 1
  %conv21 = trunc i32 %m.1 to i8
  %arrayidx22 = getelementptr i8, ptr %regs, i32 1
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv21, ptr %arrayidx22, align 1
  %shr23 = lshr i32 %n.1, 8
  %conv24 = trunc i32 %shr23 to i8
  %arrayidx25 = getelementptr i8, ptr %regs, i32 2
  %5 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv24, ptr %arrayidx25, align 1
  %conv27 = trunc i32 %n.1 to i8
  %arrayidx28 = getelementptr i8, ptr %regs, i32 3
  %6 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv27, ptr %arrayidx28, align 1
  %shl = shl nuw nsw i32 %r.1, 3
  %shl29 = shl nuw nsw i32 %div.1, 1
  %or = or i32 %shl29, %shl
  %conv30 = trunc i32 %or to i8
  %arrayidx31 = getelementptr i8, ptr %regs, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m.1)
  %cmp32.not = icmp ne i32 %m.1, 0
  %conv38 = zext i1 %cmp32.not to i8
  %spec.select = or i8 %conv30, %conv38
  %7 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %arrayidx31, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_adau_calc_pll_cfg, !1, !"__ksymtab_adau_calc_pll_cfg", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adau-utils.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_description106, !3, !"__UNIQUE_ID_description106", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/adau-utils.c", i32 58, i32 1}
!4 = !{ptr @__UNIQUE_ID_author107, !5, !"__UNIQUE_ID_author107", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/adau-utils.c", i32 59, i32 1}
!6 = !{ptr @__UNIQUE_ID_file108, !7, !"__UNIQUE_ID_file108", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/adau-utils.c", i32 60, i32 1}
!8 = !{ptr @__UNIQUE_ID_license109, !7, !"__UNIQUE_ID_license109", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
