; ModuleID = '/llk/IR_all_yes/kernel/time/timecounter.c_pt.bc'
source_filename = "../kernel/time/timecounter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm "\09.section \22___kcrctab_gpl+timecounter_init\22, \22a\22\09"
module asm "\09.weak\09__crc_timecounter_init\09\09\09\09"
module asm "\09.long\09__crc_timecounter_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timecounter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22timecounter_init\22\09\09\09\09\09"
module asm "__kstrtabns_timecounter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+timecounter_read\22, \22a\22\09"
module asm "\09.weak\09__crc_timecounter_read\09\09\09\09"
module asm "\09.long\09__crc_timecounter_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timecounter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22timecounter_read\22\09\09\09\09\09"
module asm "__kstrtabns_timecounter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+timecounter_cyc2time\22, \22a\22\09"
module asm "\09.weak\09__crc_timecounter_cyc2time\09\09\09\09"
module asm "\09.long\09__crc_timecounter_cyc2time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timecounter_cyc2time:\09\09\09\09\09"
module asm "\09.asciz \09\22timecounter_cyc2time\22\09\09\09\09\09"
module asm "__kstrtabns_timecounter_cyc2time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }

@__kstrtab_timecounter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_timecounter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_timecounter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timecounter_init to i32), ptr @__kstrtab_timecounter_init, ptr @__kstrtabns_timecounter_init }, section "___ksymtab_gpl+timecounter_init", align 4
@__kstrtab_timecounter_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_timecounter_read = external dso_local constant [0 x i8], align 1
@__ksymtab_timecounter_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timecounter_read to i32), ptr @__kstrtab_timecounter_read, ptr @__kstrtabns_timecounter_read }, section "___ksymtab_gpl+timecounter_read", align 4
@__kstrtab_timecounter_cyc2time = external dso_local constant [0 x i8], align 1
@__kstrtabns_timecounter_cyc2time = external dso_local constant [0 x i8], align 1
@__ksymtab_timecounter_cyc2time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timecounter_cyc2time to i32), ptr @__kstrtab_timecounter_cyc2time, ptr @__kstrtabns_timecounter_cyc2time }, section "___ksymtab_gpl+timecounter_cyc2time", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_timecounter_cyc2time, ptr @__ksymtab_timecounter_init, ptr @__ksymtab_timecounter_read], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timecounter_init(ptr nocapture noundef writeonly %tc, ptr noundef %cc, i64 noundef %start_tstamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cc, ptr %tc, align 8
  %1 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cc, align 8
  %call = tail call i64 %2(ptr noundef %cc) #2
  %cycle_last = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 1
  %3 = ptrtoint ptr %cycle_last to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call, ptr %cycle_last, align 8
  %nsec = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 2
  %4 = ptrtoint ptr %nsec to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %start_tstamp, ptr %nsec, align 8
  %shift = getelementptr inbounds %struct.cyclecounter, ptr %cc, i32 0, i32 3
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %6 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %mask = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 3
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sub, ptr %mask, align 8
  %frac = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 4
  %8 = ptrtoint ptr %frac to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %frac, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @timecounter_read(ptr nocapture noundef %tc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i64 %3(ptr noundef %1) #2
  %cycle_last.i = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 1
  %4 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cycle_last.i, align 8
  %sub.i = sub i64 %call.i, %5
  %6 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tc, align 8
  %mask.i = getelementptr inbounds %struct.cyclecounter, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mask.i, align 8
  %and.i = and i64 %9, %sub.i
  %mask4.i = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 3
  %10 = ptrtoint ptr %mask4.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mask4.i, align 8
  %frac.i = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 4
  %mult.i.i = getelementptr inbounds %struct.cyclecounter, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mult.i.i, align 8
  %conv.i.i = zext i32 %13 to i64
  %mul.i.i = mul i64 %and.i, %conv.i.i
  %14 = ptrtoint ptr %frac.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %frac.i, align 8
  %add.i.i = add i64 %mul.i.i, %15
  %and.i.i = and i64 %add.i.i, %11
  store i64 %and.i.i, ptr %frac.i, align 8
  %shift.i.i = getelementptr inbounds %struct.cyclecounter, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift.i.i, align 4
  %sh_prom.i.i = zext i32 %17 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  store i64 %call.i, ptr %cycle_last.i, align 8
  %nsec1 = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 2
  %18 = ptrtoint ptr %nsec1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %nsec1, align 8
  %add = add i64 %shr.i.i, %19
  store i64 %add, ptr %nsec1, align 8
  ret i64 %add
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @timecounter_cyc2time(ptr nocapture noundef readonly %tc, i64 noundef %cycle_tstamp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cycle_last = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 1
  %0 = ptrtoint ptr %cycle_last to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cycle_last, align 8
  %sub = sub i64 %cycle_tstamp, %1
  %2 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc, align 8
  %mask = getelementptr inbounds %struct.cyclecounter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mask, align 8
  %and = and i64 %5, %sub
  %nsec1 = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 2
  %6 = ptrtoint ptr %nsec1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nsec1, align 8
  %frac2 = getelementptr inbounds %struct.timecounter, ptr %tc, i32 0, i32 4
  %8 = ptrtoint ptr %frac2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %frac2, align 8
  %div31 = lshr i64 %5, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %div31)
  %cmp = icmp ugt i64 %and, %div31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %sub6 = sub i64 %1, %cycle_tstamp
  %and9 = and i64 %5, %sub6
  %mult.i = getelementptr inbounds %struct.cyclecounter, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mult.i, align 8
  %conv.i = zext i32 %11 to i64
  %mul.i = mul i64 %and9, %conv.i
  %sub.i = sub i64 %mul.i, %9
  %shift.i = getelementptr inbounds %struct.cyclecounter, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shift.i, align 4
  %sh_prom.i = zext i32 %13 to i64
  %shr.i = lshr i64 %sub.i, %sh_prom.i
  %sub12 = sub i64 %7, %shr.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %mult.i32 = getelementptr inbounds %struct.cyclecounter, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %mult.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mult.i32, align 8
  %conv.i33 = zext i32 %15 to i64
  %mul.i34 = mul i64 %and, %conv.i33
  %add.i = add i64 %mul.i34, %9
  %shift.i35 = getelementptr inbounds %struct.cyclecounter, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %shift.i35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift.i35, align 4
  %sh_prom.i36 = zext i32 %17 to i64
  %shr.i37 = lshr i64 %add.i, %sh_prom.i36
  %add = add i64 %shr.i37, %7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nsec.0 = phi i64 [ %sub12, %if.then ], [ %add, %if.else ]
  ret i64 %nsec.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_timecounter_init, !1, !"__ksymtab_timecounter_init", i1 false, i1 false}
!1 = !{!"../kernel/time/timecounter.c", i32 18, i32 1}
!2 = !{ptr @__ksymtab_timecounter_read, !3, !"__ksymtab_timecounter_read", i1 false, i1 false}
!3 = !{!"../kernel/time/timecounter.c", i32 63, i32 1}
!4 = !{ptr @__ksymtab_timecounter_cyc2time, !5, !"__ksymtab_timecounter_cyc2time", i1 false, i1 false}
!5 = !{!"../kernel/time/timecounter.c", i32 99, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
