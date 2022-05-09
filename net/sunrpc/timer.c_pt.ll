; ModuleID = '/llk/IR_all_yes/net/sunrpc/timer.c_pt.bc'
source_filename = "../net/sunrpc/timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rpc_init_rtt\22, \22a\22\09"
module asm "\09.weak\09__crc_rpc_init_rtt\09\09\09\09"
module asm "\09.long\09__crc_rpc_init_rtt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_init_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_init_rtt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_init_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rpc_update_rtt\22, \22a\22\09"
module asm "\09.weak\09__crc_rpc_update_rtt\09\09\09\09"
module asm "\09.long\09__crc_rpc_update_rtt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_update_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_update_rtt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_update_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rpc_calc_rto\22, \22a\22\09"
module asm "\09.weak\09__crc_rpc_calc_rto\09\09\09\09"
module asm "\09.long\09__crc_rpc_calc_rto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_calc_rto:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_calc_rto\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_calc_rto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }

@__kstrtab_rpc_init_rtt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_init_rtt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_init_rtt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_init_rtt to i32), ptr @__kstrtab_rpc_init_rtt, ptr @__kstrtabns_rpc_init_rtt }, section "___ksymtab_gpl+rpc_init_rtt", align 4
@__kstrtab_rpc_update_rtt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_update_rtt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_update_rtt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_update_rtt to i32), ptr @__kstrtab_rpc_update_rtt, ptr @__kstrtabns_rpc_update_rtt }, section "___ksymtab_gpl+rpc_update_rtt", align 4
@__kstrtab_rpc_calc_rto = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_calc_rto = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_calc_rto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_calc_rto to i32), ptr @__kstrtab_rpc_calc_rto, ptr @__kstrtabns_rpc_calc_rto }, section "___ksymtab_gpl+rpc_calc_rto", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_rpc_calc_rto, ptr @__ksymtab_rpc_init_rtt, ptr @__ksymtab_rpc_update_rtt], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @rpc_init_rtt(ptr nocapture noundef writeonly %rt, i32 noundef %timeo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeo, ptr %rt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %timeo)
  %cmp = icmp ugt i32 %timeo, 20
  %sub = shl i32 %timeo, 3
  %shl = add i32 %sub, -160
  %init.0 = select i1 %cmp, i32 %shl, i32 0
  %arrayidx = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 1, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %init.0, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx4, align 4
  %arrayidx.1 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %init.0, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %arrayidx3.1, align 4
  %arrayidx4.1 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx4.1, align 4
  %arrayidx.2 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %init.0, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %arrayidx3.2, align 4
  %arrayidx4.2 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx4.2, align 4
  %arrayidx.3 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %init.0, ptr %arrayidx.3, align 4
  %arrayidx3.3 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %arrayidx3.3, align 4
  %arrayidx4.3 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx4.3, align 4
  %arrayidx.4 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %init.0, ptr %arrayidx.4, align 4
  %arrayidx3.4 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %arrayidx3.4, align 4
  %arrayidx4.4 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx4.4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rpc_update_rtt(ptr nocapture noundef %rt, i32 noundef %timer, i32 noundef %m) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer)
  %cmp = icmp eq i32 %timer, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m)
  %cmp1 = icmp slt i32 %m, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add i32 %timer, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m)
  %cmp4 = icmp eq i32 %m, 0
  %spec.store.select = select i1 %cmp4, i32 1, i32 %m
  %arrayidx = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 1, i32 %dec
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shr = ashr i32 %1, 3
  %sub = sub i32 %spec.store.select, %shr
  %add = add i32 %sub, %1
  store i32 %add, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %arrayidx13 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 2, i32 %dec
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx13, align 4
  %shr14 = ashr i32 %4, 2
  %sub15 = sub i32 %4, %shr14
  %add16 = add i32 %sub15, %2
  %5 = tail call i32 @llvm.smax.i32(i32 %add16, i32 10)
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rpc_calc_rto(ptr nocapture noundef readonly %rt, i32 noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer)
  %cmp = icmp eq i32 %timer, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rt, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add i32 %timer, -1
  %arrayidx = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 1, i32 %dec
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 7
  %shr = lshr i32 %add, 3
  %arrayidx1 = getelementptr %struct.rpc_rtt, ptr %rt, i32 0, i32 2, i32 %dec
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %add2 = add i32 %shr, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %add2, i32 6000)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_rpc_init_rtt, !1, !"__ksymtab_rpc_init_rtt", i1 false, i1 false}
!1 = !{!"../net/sunrpc/timer.c", i32 50, i32 1}
!2 = !{ptr @__ksymtab_rpc_update_rtt, !3, !"__ksymtab_rpc_update_rtt", i1 false, i1 false}
!3 = !{!"../net/sunrpc/timer.c", i32 90, i32 1}
!4 = !{ptr @__ksymtab_rpc_calc_rto, !5, !"__ksymtab_rpc_calc_rto", i1 false, i1 false}
!5 = !{!"../net/sunrpc/timer.c", i32 123, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
