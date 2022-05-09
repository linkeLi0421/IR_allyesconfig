; ModuleID = '/llk/IR_all_yes/kernel/time/timeconv.c_pt.bc'
source_filename = "../kernel/time/timeconv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+time64_to_tm\22, \22a\22\09"
module asm "\09.weak\09__crc_time64_to_tm\09\09\09\09"
module asm "\09.long\09__crc_time64_to_tm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22time64_to_tm\22\09\09\09\09\09"
module asm "__kstrtabns_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_time64_to_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_time64_to_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_time64_to_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @time64_to_tm to i32), ptr @__kstrtab_time64_to_tm, ptr @__kstrtabns_time64_to_tm }, section "___ksymtab+time64_to_tm", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_time64_to_tm], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @time64_to_tm(i64 noundef %totalsecs, i32 noundef %offset, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %u64tmp = alloca i64, align 8
  %remainder = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %u64tmp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder) #4
  %0 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %remainder, align 4, !annotation !11
  %call = call i64 @div_s64_rem(i64 noundef %totalsecs, i32 noundef 86400, ptr noundef nonnull %remainder) #4
  %conv = trunc i64 %call to i32
  %1 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %remainder, align 4
  %add = add i32 %2, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp114 = icmp slt i32 %add, 0
  br i1 %cmp114, label %while.body.preheader, label %entry.while.cond3.preheader_crit_edge

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond3.preheader

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %smax = call i32 @llvm.smax.i32(i32 %add, i32 -86400)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -86400, i32 %add)
  %3 = icmp ult i32 %add, -86400
  %umin = zext i1 %3 to i32
  %4 = add nsw i32 %add, %umin
  %5 = sub i32 %smax, %4
  %6 = udiv i32 %5, 86400
  %7 = add nuw nsw i32 %6, %umin
  %8 = mul i32 %7, 86400
  %9 = add i32 %add, %8
  %10 = add i32 %9, 86400
  %11 = xor i32 %7, -1
  %12 = add i32 %11, %conv
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %while.body.preheader, %entry.while.cond3.preheader_crit_edge
  %days.0.lcssa = phi i32 [ %conv, %entry.while.cond3.preheader_crit_edge ], [ %12, %while.body.preheader ]
  %rem.0.lcssa = phi i32 [ %add, %entry.while.cond3.preheader_crit_edge ], [ %10, %while.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 86399, i32 %rem.0.lcssa)
  %cmp4118 = icmp sgt i32 %rem.0.lcssa, 86399
  br i1 %cmp4118, label %while.body6.preheader, label %while.cond3.preheader.while.end7_crit_edge

while.cond3.preheader.while.end7_crit_edge:       ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end7

while.body6.preheader:                            ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %13 = add nuw i32 %rem.0.lcssa, 86399
  %smin = call i32 @llvm.smin.i32(i32 %rem.0.lcssa, i32 172799)
  %14 = sub nuw i32 %13, %smin
  %15 = udiv i32 %14, 86400
  %.neg = mul nsw i32 %15, -86400
  %16 = add i32 %days.0.lcssa, %15
  %17 = add nsw i32 %rem.0.lcssa, -86400
  %18 = add nsw i32 %.neg, %17
  %19 = add i32 %16, 1
  br label %while.end7

while.end7:                                       ; preds = %while.body6.preheader, %while.cond3.preheader.while.end7_crit_edge
  %days.1.lcssa = phi i32 [ %days.0.lcssa, %while.cond3.preheader.while.end7_crit_edge ], [ %19, %while.body6.preheader ]
  %rem.1.lcssa = phi i32 [ %rem.0.lcssa, %while.cond3.preheader.while.end7_crit_edge ], [ %18, %while.body6.preheader ]
  %rem.1.lcssa.frozen = freeze i32 %rem.1.lcssa
  %div = sdiv i32 %rem.1.lcssa.frozen, 3600
  %tm_hour = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %tm_hour, align 4
  %21 = mul i32 %div, 3600
  %rem8.decomposed = sub i32 %rem.1.lcssa.frozen, %21
  %div9.lhs.trunc = trunc i32 %rem8.decomposed to i16
  %div9111 = sdiv i16 %div9.lhs.trunc, 60
  %div9.sext = sext i16 %div9111 to i32
  %tm_min = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 1
  %22 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div9.sext, ptr %tm_min, align 4
  %23 = mul i16 %div9111, 60
  %rem10112.decomposed = sub i16 %div9.lhs.trunc, %23
  %rem10.sext = sext i16 %rem10112.decomposed to i32
  %24 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem10.sext, ptr %result, align 4
  %add11 = add i32 %days.1.lcssa, 4
  %rem12 = srem i32 %add11, 7
  %tm_wday = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem12)
  %cmp14 = icmp slt i32 %rem12, 0
  %add17 = add nsw i32 %rem12, 7
  %spec.select = select i1 %cmp14, i32 %add17, i32 %rem12
  %25 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %tm_wday, align 4
  %conv18 = sext i32 %days.1.lcssa to i64
  %add19 = shl nsw i64 %conv18, 2
  %add20 = add i64 %add19, -9223372036854291941
  %26 = ptrtoint ptr %u64tmp to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add20, ptr %u64tmp, align 8
  %call21 = call i64 @div64_u64_rem(i64 noundef %add20, i64 noundef 146097, ptr noundef nonnull %u64tmp) #4
  %27 = ptrtoint ptr %u64tmp to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %u64tmp, align 8
  %29 = trunc i64 %28 to i32
  %add25 = or i32 %29, 3
  %conv26 = zext i32 %add25 to i64
  %mul27 = mul nuw nsw i64 %conv26, 2939745
  %shr = lshr i64 %mul27, 32
  %conv29 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv29)
  %tobool.not = icmp eq i32 %conv29, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.end7
  call void @__sanitizer_cov_trace_pc() #6
  %rem36 = and i32 %conv29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem36)
  %tobool37.not = icmp eq i32 %rem36, 0
  br label %cond.end

cond.false:                                       ; preds = %while.end7
  call void @__sanitizer_cov_trace_pc() #6
  %rem38 = and i64 %call21, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem38)
  %tobool39.not = icmp eq i64 %rem38, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %tobool37.not, %cond.true ], [ %tobool39.not, %cond.false ]
  %conv30 = trunc i64 %mul27 to i32
  %div32 = udiv i32 %conv30, 11758980
  %mul43 = mul nuw nsw i32 %div32, 2141
  %add44 = add nuw nsw i32 %mul43, 132377
  %shr45 = lshr i32 %add44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -696719417, i32 %conv30)
  %cmp49 = icmp ugt i32 %conv30, -696719417
  %sub59 = add nsw i32 %shr45, -12
  %cond62 = select i1 %cmp49, i32 %sub59, i32 %shr45
  %add70 = select i1 %cond.in, i32 60, i32 59
  %cond72 = select i1 %cmp49, i32 -306, i32 %add70
  %div48.lhs.trunc = trunc i32 %add44 to i16
  %div48113 = udiv i16 %div48.lhs.trunc, 2141
  %narrow = add nuw nsw i16 %div48113, 1
  %add63 = zext i16 %narrow to i32
  %mul33 = mul i64 %call21, 100
  %add35 = add i64 %shr, %mul33
  %conv53 = zext i1 %cmp49 to i64
  %add54 = add i64 %add35, %conv53
  %add73 = add nsw i32 %cond72, %div32
  %30 = trunc i64 %add54 to i32
  %conv75 = add i32 %30, 1581350388
  %tm_year = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 5
  %31 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv75, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond62, ptr %tm_mon, align 4
  %tm_mday = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 3
  %33 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add63, ptr %tm_mday, align 4
  %tm_yday = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 7
  %34 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add73, ptr %tm_yday, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u64tmp) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_time64_to_tm, !1, !"__ksymtab_time64_to_tm", i1 false, i1 false}
!1 = !{!"../kernel/time/timeconv.c", i32 141, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
