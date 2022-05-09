; ModuleID = '/llk/IR_all_yes/drivers/video/videomode.c_pt.bc'
source_filename = "../drivers/video/videomode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+videomode_from_timing\22, \22a\22\09"
module asm "\09.weak\09__crc_videomode_from_timing\09\09\09\09"
module asm "\09.long\09__crc_videomode_from_timing\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videomode_from_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22videomode_from_timing\22\09\09\09\09\09"
module asm "__kstrtabns_videomode_from_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videomode_from_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_videomode_from_timings\09\09\09\09"
module asm "\09.long\09__crc_videomode_from_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videomode_from_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22videomode_from_timings\22\09\09\09\09\09"
module asm "__kstrtabns_videomode_from_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timing_entry = type { i32, i32, i32 }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.display_timings = type { i32, i32, ptr }

@__kstrtab_videomode_from_timing = external dso_local constant [0 x i8], align 1
@__kstrtabns_videomode_from_timing = external dso_local constant [0 x i8], align 1
@__ksymtab_videomode_from_timing = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videomode_from_timing to i32), ptr @__kstrtab_videomode_from_timing, ptr @__kstrtabns_videomode_from_timing }, section "___ksymtab_gpl+videomode_from_timing", align 4
@__kstrtab_videomode_from_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_videomode_from_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_videomode_from_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videomode_from_timings to i32), ptr @__kstrtab_videomode_from_timings, ptr @__kstrtabns_videomode_from_timings }, section "___ksymtab_gpl+videomode_from_timings", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_videomode_from_timing, ptr @__ksymtab_videomode_from_timings], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @videomode_from_timing(ptr nocapture noundef readonly %dt, ptr nocapture noundef writeonly %vm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %typ = getelementptr inbounds %struct.timing_entry, ptr %dt, i32 0, i32 1
  %0 = ptrtoint ptr %typ to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %typ, align 4
  %2 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vm, align 4
  %typ2 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %typ2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %typ2, align 4
  %hactive3 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 1
  %5 = ptrtoint ptr %hactive3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %hactive3, align 4
  %typ4 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %typ4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %typ4, align 4
  %hfront_porch5 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %8 = ptrtoint ptr %hfront_porch5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hfront_porch5, align 4
  %typ6 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %typ6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %typ6, align 4
  %hback_porch7 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %11 = ptrtoint ptr %hback_porch7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %hback_porch7, align 4
  %typ8 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %typ8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %typ8, align 4
  %hsync_len9 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %14 = ptrtoint ptr %hsync_len9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hsync_len9, align 4
  %typ10 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %typ10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %typ10, align 4
  %vactive11 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 5
  %17 = ptrtoint ptr %vactive11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %vactive11, align 4
  %typ12 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %typ12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %typ12, align 4
  %vfront_porch13 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 6
  %20 = ptrtoint ptr %vfront_porch13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %vfront_porch13, align 4
  %typ14 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %typ14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %typ14, align 4
  %vback_porch15 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 7
  %23 = ptrtoint ptr %vback_porch15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vback_porch15, align 4
  %typ16 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %typ16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %typ16, align 4
  %vsync_len17 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 8
  %26 = ptrtoint ptr %vsync_len17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %vsync_len17, align 4
  %flags = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 9
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %flags18 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  %29 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flags18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @videomode_from_timings(ptr nocapture noundef readonly %disp, ptr nocapture noundef writeonly %vm, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp.i = icmp ugt i32 %1, %index
  br i1 %cmp.i, label %display_timings_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

display_timings_get.exit:                         ; preds = %entry
  %timings.i = getelementptr inbounds %struct.display_timings, ptr %disp, i32 0, i32 2
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %display_timings_get.exit.cleanup_crit_edge, label %if.end

display_timings_get.exit.cleanup_crit_edge:       ; preds = %display_timings_get.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %display_timings_get.exit
  call void @__sanitizer_cov_trace_pc() #4
  %typ.i = getelementptr inbounds %struct.timing_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %typ.i, align 4
  %8 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %vm, align 4
  %typ2.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %typ2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %typ2.i, align 4
  %hactive3.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 1
  %11 = ptrtoint ptr %hactive3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %hactive3.i, align 4
  %typ4.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %typ4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %typ4.i, align 4
  %hfront_porch5.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %14 = ptrtoint ptr %hfront_porch5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hfront_porch5.i, align 4
  %typ6.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %typ6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %typ6.i, align 4
  %hback_porch7.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %17 = ptrtoint ptr %hback_porch7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hback_porch7.i, align 4
  %typ8.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %typ8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %typ8.i, align 4
  %hsync_len9.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %20 = ptrtoint ptr %hsync_len9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %hsync_len9.i, align 4
  %typ10.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %typ10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %typ10.i, align 4
  %vactive11.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 5
  %23 = ptrtoint ptr %vactive11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vactive11.i, align 4
  %typ12.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %typ12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %typ12.i, align 4
  %vfront_porch13.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 6
  %26 = ptrtoint ptr %vfront_porch13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %vfront_porch13.i, align 4
  %typ14.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %typ14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %typ14.i, align 4
  %vback_porch15.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 7
  %29 = ptrtoint ptr %vback_porch15.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %vback_porch15.i, align 4
  %typ16.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %typ16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %typ16.i, align 4
  %vsync_len17.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 8
  %32 = ptrtoint ptr %vsync_len17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %vsync_len17.i, align 4
  %flags.i = getelementptr inbounds %struct.display_timing, ptr %5, i32 0, i32 9
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %flags18.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  %35 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %flags18.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %display_timings_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %display_timings_get.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_videomode_from_timing, !1, !"__ksymtab_videomode_from_timing", i1 false, i1 false}
!1 = !{!"../drivers/video/videomode.c", i32 29, i32 1}
!2 = !{ptr @__ksymtab_videomode_from_timings, !3, !"__ksymtab_videomode_from_timings", i1 false, i1 false}
!3 = !{!"../drivers/video/videomode.c", i32 44, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
