; ModuleID = '/llk/IR_all_yes/lib/check_signature.c_pt.bc'
source_filename = "../lib/check_signature.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+check_signature\22, \22a\22\09"
module asm "\09.weak\09__crc_check_signature\09\09\09\09"
module asm "\09.long\09__crc_check_signature\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_check_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22check_signature\22\09\09\09\09\09"
module asm "__kstrtabns_check_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_check_signature = external dso_local constant [0 x i8], align 1
@__kstrtabns_check_signature = external dso_local constant [0 x i8], align 1
@__ksymtab_check_signature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @check_signature to i32), ptr @__kstrtab_check_signature, ptr @__kstrtabns_check_signature }, section "___ksymtab+check_signature", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_check_signature], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_signature(ptr noundef %io_addr, ptr nocapture noundef readonly %signature, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not8 = icmp eq i32 %length, 0
  br i1 %tobool.not8, label %entry.return_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %return

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %dec11.in = phi i32 [ %dec11, %if.end.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %io_addr.addr.010 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %io_addr, %entry.while.body_crit_edge ]
  %signature.addr.09 = phi ptr [ %incdec.ptr4, %if.end.while.body_crit_edge ], [ %signature, %entry.while.body_crit_edge ]
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %io_addr.addr.010) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  %1 = ptrtoint ptr %signature.addr.09 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %signature.addr.09, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %2)
  %cmp.not = icmp eq i8 %0, %2
  br i1 %cmp.not, label %if.end, label %while.body.return_crit_edge

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %return

if.end:                                           ; preds = %while.body
  %dec11 = add i32 %dec11.in, -1
  %incdec.ptr = getelementptr i8, ptr %io_addr.addr.010, i32 1
  %incdec.ptr4 = getelementptr i8, ptr %signature.addr.09, i32 1
  %tobool.not = icmp eq i32 %dec11, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %return

return:                                           ; preds = %if.end.return_crit_edge, %while.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 0, %while.body.return_crit_edge ]
  ret i32 %retval.0
}

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }
attributes #3 = { nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{ptr @__ksymtab_check_signature, !1, !"__ksymtab_check_signature", i1 false, i1 false}
!1 = !{!"../lib/check_signature.c", i32 27, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{i64 684003}
!11 = !{i64 2149348465}
