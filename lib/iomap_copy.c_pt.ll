; ModuleID = '/llk/IR_all_yes/lib/iomap_copy.c_pt.bc'
source_filename = "../lib/iomap_copy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__iowrite32_copy\22, \22a\22\09"
module asm "\09.weak\09__crc___iowrite32_copy\09\09\09\09"
module asm "\09.long\09__crc___iowrite32_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iowrite32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__iowrite32_copy\22\09\09\09\09\09"
module asm "__kstrtabns___iowrite32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__ioread32_copy\22, \22a\22\09"
module asm "\09.weak\09__crc___ioread32_copy\09\09\09\09"
module asm "\09.long\09__crc___ioread32_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ioread32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__ioread32_copy\22\09\09\09\09\09"
module asm "__kstrtabns___ioread32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__iowrite64_copy\22, \22a\22\09"
module asm "\09.weak\09__crc___iowrite64_copy\09\09\09\09"
module asm "\09.long\09__crc___iowrite64_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iowrite64_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__iowrite64_copy\22\09\09\09\09\09"
module asm "__kstrtabns___iowrite64_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___iowrite32_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___iowrite32_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___iowrite32_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iowrite32_copy to i32), ptr @__kstrtab___iowrite32_copy, ptr @__kstrtabns___iowrite32_copy }, section "___ksymtab_gpl+__iowrite32_copy", align 4
@__kstrtab___ioread32_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___ioread32_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___ioread32_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ioread32_copy to i32), ptr @__kstrtab___ioread32_copy, ptr @__kstrtabns___ioread32_copy }, section "___ksymtab_gpl+__ioread32_copy", align 4
@__kstrtab___iowrite64_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___iowrite64_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___iowrite64_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iowrite64_copy to i32), ptr @__kstrtab___iowrite64_copy, ptr @__kstrtabns___iowrite64_copy }, section "___ksymtab_gpl+__iowrite64_copy", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___ioread32_copy, ptr @__ksymtab___iowrite32_copy, ptr @__ksymtab___iowrite64_copy], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @__iowrite32_copy(ptr noundef %to, ptr noundef %from, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %add.ptr = getelementptr i32, ptr %from, i32 %count
  %cmp4 = icmp ugt ptr %add.ptr, %from
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %src.06 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %from, %entry.while.body_crit_edge ]
  %dst.05 = phi ptr [ %incdec.ptr1, %while.body.while.body_crit_edge ], [ %to, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %src.06, i32 1
  %0 = ptrtoint ptr %src.06 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src.06, align 4
  %incdec.ptr1 = getelementptr i32, ptr %dst.05, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.05, i32 %1) #3, !srcloc !14
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ioread32_copy(ptr nocapture noundef writeonly %to, ptr noundef %from, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %add.ptr = getelementptr i32, ptr %from, i32 %count
  %cmp4 = icmp ugt ptr %add.ptr, %from
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %src.06 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %from, %entry.while.body_crit_edge ]
  %dst.05 = phi ptr [ %incdec.ptr1, %while.body.while.body_crit_edge ], [ %to, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %src.06, i32 1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.06) #3, !srcloc !15
  %incdec.ptr1 = getelementptr i32, ptr %dst.05, i32 1
  %1 = ptrtoint ptr %dst.05 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %dst.05, align 4
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @__iowrite64_copy(ptr noundef %to, ptr noundef %from, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %mul = shl i32 %count, 1
  tail call void @__iowrite32_copy(ptr noundef %to, ptr noundef %from, i32 noundef %mul)
  ret void
}

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }
attributes #3 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab___iowrite32_copy, !1, !"__ksymtab___iowrite32_copy", i1 false, i1 false}
!1 = !{!"../lib/iomap_copy.c", i32 30, i32 1}
!2 = !{ptr @__ksymtab___ioread32_copy, !3, !"__ksymtab___ioread32_copy", i1 false, i1 false}
!3 = !{!"../lib/iomap_copy.c", i32 51, i32 1}
!4 = !{ptr @__ksymtab___iowrite64_copy, !5, !"__ksymtab___iowrite64_copy", i1 false, i1 false}
!5 = !{!"../lib/iomap_copy.c", i32 79, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 685376}
!15 = !{i64 685794}
