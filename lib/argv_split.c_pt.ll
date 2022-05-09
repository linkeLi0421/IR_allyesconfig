; ModuleID = '/llk/IR_all_yes/lib/argv_split.c_pt.bc'
source_filename = "../lib/argv_split.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+argv_free\22, \22a\22\09"
module asm "\09.weak\09__crc_argv_free\09\09\09\09"
module asm "\09.long\09__crc_argv_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_argv_free:\09\09\09\09\09"
module asm "\09.asciz \09\22argv_free\22\09\09\09\09\09"
module asm "__kstrtabns_argv_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+argv_split\22, \22a\22\09"
module asm "\09.weak\09__crc_argv_split\09\09\09\09"
module asm "\09.long\09__crc_argv_split\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_argv_split:\09\09\09\09\09"
module asm "\09.asciz \09\22argv_split\22\09\09\09\09\09"
module asm "__kstrtabns_argv_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_argv_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_argv_free = external dso_local constant [0 x i8], align 1
@__ksymtab_argv_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @argv_free to i32), ptr @__kstrtab_argv_free, ptr @__kstrtabns_argv_free }, section "___ksymtab+argv_free", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_argv_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_argv_split = external dso_local constant [0 x i8], align 1
@__ksymtab_argv_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @argv_split to i32), ptr @__kstrtab_argv_split, ptr @__kstrtabns_argv_split }, section "___ksymtab+argv_split", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_argv_free, ptr @__ksymtab_argv_split], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @argv_free(ptr noundef %argv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr = getelementptr ptr, ptr %argv, i32 -1
  %0 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %incdec.ptr, align 4
  tail call void @kfree(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %incdec.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @argv_split(i32 noundef %gfp, ptr noundef %str, ptr noundef writeonly %argcp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @kstrndup(ptr noundef %str, i32 noundef 8388607, i32 noundef %gfp) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not11.i = icmp eq i8 %1, 0
  br i1 %tobool.not11.i, label %if.end.count_argc.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.count_argc.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %count_argc.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %2 = phi i8 [ %7, %for.body.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %was_space.0.off014.i = phi i1 [ %not.cmp.not.i, %for.body.i.for.body.i_crit_edge ], [ true, %if.end.for.body.i_crit_edge ]
  %count.013.i = phi i32 [ %count.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %str.addr.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call, %if.end.for.body.i_crit_edge ]
  %conv.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 0
  %narrow.i = and i1 %was_space.0.off014.i, %cmp.not.i
  %spec.select.i = zext i1 %narrow.i to i32
  %count.1.i = add i32 %count.013.i, %spec.select.i
  %not.cmp.not.i = xor i1 %cmp.not.i, true
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.012.i, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.i.count_argc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.count_argc.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %count_argc.exit

count_argc.exit:                                  ; preds = %for.body.i.count_argc.exit_crit_edge, %if.end.count_argc.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.end.count_argc.exit_crit_edge ], [ %count.1.i, %for.body.i.count_argc.exit_crit_edge ]
  %add = add i32 %count.0.lcssa.i, 2
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %count_argc.exit.if.then4_crit_edge, label %if.end7.i, !prof !12

count_argc.exit.if.then4_crit_edge:               ; preds = %count_argc.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.end7.i:                                        ; preds = %count_argc.exit
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef %gfp) #7
  %tobool3.not = icmp eq ptr %call8.i, null
  br i1 %tobool3.not, label %if.end7.i.if.then4_crit_edge, label %if.end5

if.end7.i.if.then4_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.then4:                                         ; preds = %if.end7.i.if.then4_crit_edge, %count_argc.exit.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i
  %11 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %call8.i, align 128
  %incdec.ptr = getelementptr ptr, ptr %call8.i, i32 1
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not45 = icmp eq i8 %13, 0
  br i1 %tobool6.not45, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %14 = phi i8 [ %22, %for.inc.for.body_crit_edge ], [ %13, %if.end5.for.body_crit_edge ]
  %argv.049 = phi ptr [ %argv.1, %for.inc.for.body_crit_edge ], [ %incdec.ptr, %if.end5.for.body_crit_edge ]
  %was_space.0.off048 = phi i1 [ %20, %for.inc.for.body_crit_edge ], [ true, %if.end5.for.body_crit_edge ]
  %argv_str.046 = phi ptr [ %incdec.ptr15, %for.inc.for.body_crit_edge ], [ %call, %if.end5.for.body_crit_edge ]
  %conv = zext i8 %14 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %argv_str.046 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %argv_str.046, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %was_space.0.off048, label %if.then11, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr12 = getelementptr ptr, ptr %argv.049, i32 1
  %19 = ptrtoint ptr %argv.049 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %argv_str.046, ptr %argv.049, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else.for.inc_crit_edge, %if.then9
  %argv.1 = phi ptr [ %argv.049, %if.then9 ], [ %incdec.ptr12, %if.then11 ], [ %argv.049, %if.else.for.inc_crit_edge ]
  %20 = xor i1 %cmp.not, true
  %incdec.ptr15 = getelementptr i8, ptr %argv_str.046, i32 1
  %21 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr15, align 1
  %tobool6.not = icmp eq i8 %22, 0
  br i1 %tobool6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %argv.0.lcssa = phi ptr [ %incdec.ptr, %if.end5.for.end_crit_edge ], [ %argv.1, %for.inc.for.end_crit_edge ]
  %23 = ptrtoint ptr %argv.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %argv.0.lcssa, align 4
  %tobool16.not = icmp eq ptr %argcp, null
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.then17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %argcp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %count.0.lcssa.i, ptr %argcp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %for.end.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %incdec.ptr, %if.then17 ], [ %incdec.ptr, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__ksymtab_argv_free, !1, !"__ksymtab_argv_free", i1 false, i1 false}
!1 = !{!"../lib/argv_split.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_argv_split, !3, !"__ksymtab_argv_split", i1 false, i1 false}
!3 = !{!"../lib/argv_split.c", i32 95, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
