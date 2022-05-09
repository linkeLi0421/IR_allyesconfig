; ModuleID = '/llk/IR_all_yes/lib/bsearch.c_pt.bc'
source_filename = "../lib/bsearch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bsearch\22, \22a\22\09"
module asm "\09.weak\09__crc_bsearch\09\09\09\09"
module asm "\09.long\09__crc_bsearch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsearch:\09\09\09\09\09"
module asm "\09.asciz \09\22bsearch\22\09\09\09\09\09"
module asm "__kstrtabns_bsearch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_bsearch = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsearch = external dso_local constant [0 x i8], align 1
@__ksymtab_bsearch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsearch to i32), ptr @__kstrtab_bsearch, ptr @__kstrtabns_bsearch }, section "___ksymtab+bsearch", align 4
@_kbl_addr_bsearch = internal global i32 ptrtoint (ptr @bsearch to i32), section "_kprobe_blacklist", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_bsearch, ptr @_kbl_addr_bsearch], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bsearch(ptr noundef %key, ptr noundef %base, i32 noundef %num, i32 noundef %size, ptr nocapture noundef readonly %cmp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp1.not16.i = icmp eq i32 %num, 0
  br i1 %cmp1.not16.i, label %entry.__inline_bsearch.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__inline_bsearch.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %__inline_bsearch.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %base.addr.018.i = phi ptr [ %base.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %base, %entry.while.body.i_crit_edge ]
  %num.addr.017.i = phi i32 [ %shr7.i, %if.end.i.while.body.i_crit_edge ], [ %num, %entry.while.body.i_crit_edge ]
  %shr.i = lshr i32 %num.addr.017.i, 1
  %mul.i = mul i32 %shr.i, %size
  %add.ptr.i = getelementptr i8, ptr %base.addr.018.i, i32 %mul.i
  %call.i = tail call i32 %cmp(ptr noundef %key, ptr noundef %add.ptr.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %while.body.i.__inline_bsearch.exit_crit_edge, label %if.end.i

while.body.i.__inline_bsearch.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %__inline_bsearch.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp sgt i32 %call.i, 0
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %size
  %dec.i = sext i1 %cmp3.i to i32
  %num.addr.1.i = add i32 %num.addr.017.i, %dec.i
  %base.addr.1.i = select i1 %cmp3.i, ptr %add.ptr5.i, ptr %base.addr.018.i
  %shr7.i = lshr i32 %num.addr.1.i, 1
  %cmp1.not.i = icmp ult i32 %num.addr.1.i, 2
  br i1 %cmp1.not.i, label %if.end.i.__inline_bsearch.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.body.i

if.end.i.__inline_bsearch.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %__inline_bsearch.exit

__inline_bsearch.exit:                            ; preds = %if.end.i.__inline_bsearch.exit_crit_edge, %while.body.i.__inline_bsearch.exit_crit_edge, %entry.__inline_bsearch.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__inline_bsearch.exit_crit_edge ], [ %add.ptr.i, %while.body.i.__inline_bsearch.exit_crit_edge ], [ null, %if.end.i.__inline_bsearch.exit_crit_edge ]
  ret ptr %retval.0.i
}

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }
attributes #3 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__ksymtab_bsearch, !1, !"__ksymtab_bsearch", i1 false, i1 false}
!1 = !{!"../lib/bsearch.c", i32 35, i32 1}
!2 = !{ptr @_kbl_addr_bsearch, !3, !"_kbl_addr_bsearch", i1 false, i1 false}
!3 = !{!"../lib/bsearch.c", i32 36, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
