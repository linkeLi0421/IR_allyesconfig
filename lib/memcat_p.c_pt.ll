; ModuleID = '/llk/IR_all_yes/lib/memcat_p.c_pt.bc'
source_filename = "../lib/memcat_p.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__memcat_p\22, \22a\22\09"
module asm "\09.weak\09__crc___memcat_p\09\09\09\09"
module asm "\09.long\09__crc___memcat_p\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___memcat_p:\09\09\09\09\09"
module asm "\09.asciz \09\22__memcat_p\22\09\09\09\09\09"
module asm "__kstrtabns___memcat_p:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___memcat_p = external dso_local constant [0 x i8], align 1
@__kstrtabns___memcat_p = external dso_local constant [0 x i8], align 1
@__ksymtab___memcat_p = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__memcat_p to i32), ptr @__kstrtab___memcat_p, ptr @__kstrtabns___memcat_p }, section "___ksymtab_gpl+__memcat_p", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___memcat_p], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__memcat_p(ptr noundef readonly %a, ptr noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %tobool.not40 = icmp eq ptr %1, null
  br i1 %tobool.not40, label %entry.for.cond1.preheader_crit_edge, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  br label %for.inc

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %entry.for.cond1.preheader_crit_edge ], [ %inc, %for.inc.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 4
  %tobool2.not43 = icmp eq ptr %3, null
  br i1 %tobool2.not43, label %for.cond1.preheader.for.end7_crit_edge, label %for.cond1.preheader.for.inc4_crit_edge

for.cond1.preheader.for.inc4_crit_edge:           ; preds = %for.cond1.preheader
  br label %for.inc4

for.cond1.preheader.for.end7_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end7

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %entry.for.inc_crit_edge
  %nr.042 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %p.041 = phi ptr [ %incdec.ptr, %for.inc.for.inc_crit_edge ], [ %a, %entry.for.inc_crit_edge ]
  %inc = add i32 %nr.042, 1
  %incdec.ptr = getelementptr ptr, ptr %p.041, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.inc.for.cond1.preheader_crit_edge, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

for.inc.for.cond1.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond1.preheader

for.inc4:                                         ; preds = %for.inc4.for.inc4_crit_edge, %for.cond1.preheader.for.inc4_crit_edge
  %nr.145 = phi i32 [ %inc5, %for.inc4.for.inc4_crit_edge ], [ %nr.0.lcssa, %for.cond1.preheader.for.inc4_crit_edge ]
  %p.144 = phi ptr [ %incdec.ptr6, %for.inc4.for.inc4_crit_edge ], [ %b, %for.cond1.preheader.for.inc4_crit_edge ]
  %inc5 = add i32 %nr.145, 1
  %incdec.ptr6 = getelementptr ptr, ptr %p.144, i32 1
  %6 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %incdec.ptr6, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %for.inc4.for.end7_crit_edge, label %for.inc4.for.inc4_crit_edge

for.inc4.for.inc4_crit_edge:                      ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc4

for.inc4.for.end7_crit_edge:                      ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end7

for.end7:                                         ; preds = %for.inc4.for.end7_crit_edge, %for.cond1.preheader.for.end7_crit_edge
  %p.1.lcssa = phi ptr [ %b, %for.cond1.preheader.for.end7_crit_edge ], [ %incdec.ptr6, %for.inc4.for.end7_crit_edge ]
  %nr.1.lcssa = phi i32 [ %nr.0.lcssa, %for.cond1.preheader.for.end7_crit_edge ], [ %inc5, %for.inc4.for.end7_crit_edge ]
  %inc8 = add i32 %nr.1.lcssa, 1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc8, i32 4) #5
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %for.end7.cleanup_crit_edge, label %if.end7.i, !prof !10

for.end7.cleanup_crit_edge:                       ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7.i:                                        ; preds = %for.end7
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #6
  %tobool9.not = icmp eq ptr %call8.i, null
  br i1 %tobool9.not, label %if.end7.i.cleanup_crit_edge, label %for.cond10.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond10.preheader:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nr.1.lcssa)
  %cmp48 = icmp sgt i32 %nr.1.lcssa, -1
  br i1 %cmp48, label %for.cond10.preheader.for.body11_crit_edge, label %for.cond10.preheader.cleanup_crit_edge

for.cond10.preheader.cleanup_crit_edge:           ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond10.preheader.for.body11_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond10.preheader.for.body11_crit_edge
  %nr.250 = phi i32 [ %dec13, %for.body11.for.body11_crit_edge ], [ %nr.1.lcssa, %for.cond10.preheader.for.body11_crit_edge ]
  %p.249 = phi ptr [ %cond, %for.body11.for.body11_crit_edge ], [ %p.1.lcssa, %for.cond10.preheader.for.body11_crit_edge ]
  %11 = ptrtoint ptr %p.249 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.249, align 4
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %nr.250
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx, align 4
  %dec13 = add nsw i32 %nr.250, -1
  %cmp14 = icmp eq ptr %p.249, %b
  %arrayidx15 = getelementptr ptr, ptr %a, i32 %dec13
  %add.ptr = getelementptr ptr, ptr %p.249, i32 -1
  %cond = select i1 %cmp14, ptr %arrayidx15, ptr %add.ptr
  %cmp.not = icmp eq i32 %nr.250, 0
  br i1 %cmp.not, label %for.body11.cleanup_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body11

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.body11.cleanup_crit_edge, %for.cond10.preheader.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %for.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end7.i.cleanup_crit_edge ], [ null, %for.end7.cleanup_crit_edge ], [ %call8.i, %for.cond10.preheader.cleanup_crit_edge ], [ %call8.i, %for.body11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{ptr @__ksymtab___memcat_p, !1, !"__ksymtab___memcat_p", i1 false, i1 false}
!1 = !{!"../lib/memcat_p.c", i32 33, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"branch_weights", i32 1, i32 2000}
