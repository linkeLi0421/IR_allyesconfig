; ModuleID = '/llk/IR_all_yes/lib/llist.c_pt.bc'
source_filename = "../lib/llist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+llist_add_batch\22, \22a\22\09"
module asm "\09.weak\09__crc_llist_add_batch\09\09\09\09"
module asm "\09.long\09__crc_llist_add_batch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llist_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22llist_add_batch\22\09\09\09\09\09"
module asm "__kstrtabns_llist_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+llist_del_first\22, \22a\22\09"
module asm "\09.weak\09__crc_llist_del_first\09\09\09\09"
module asm "\09.long\09__crc_llist_del_first\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llist_del_first:\09\09\09\09\09"
module asm "\09.asciz \09\22llist_del_first\22\09\09\09\09\09"
module asm "__kstrtabns_llist_del_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+llist_reverse_order\22, \22a\22\09"
module asm "\09.weak\09__crc_llist_reverse_order\09\09\09\09"
module asm "\09.long\09__crc_llist_reverse_order\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llist_reverse_order:\09\09\09\09\09"
module asm "\09.asciz \09\22llist_reverse_order\22\09\09\09\09\09"
module asm "__kstrtabns_llist_reverse_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_llist_add_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_llist_add_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_llist_add_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llist_add_batch to i32), ptr @__kstrtab_llist_add_batch, ptr @__kstrtabns_llist_add_batch }, section "___ksymtab_gpl+llist_add_batch", align 4
@__kstrtab_llist_del_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_llist_del_first = external dso_local constant [0 x i8], align 1
@__ksymtab_llist_del_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llist_del_first to i32), ptr @__kstrtab_llist_del_first, ptr @__kstrtabns_llist_del_first }, section "___ksymtab_gpl+llist_del_first", align 4
@__kstrtab_llist_reverse_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_llist_reverse_order = external dso_local constant [0 x i8], align 1
@__ksymtab_llist_reverse_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llist_reverse_order to i32), ptr @__kstrtab_llist_reverse_order, ptr @__kstrtabns_llist_reverse_order }, section "___ksymtab_gpl+llist_reverse_order", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_llist_add_batch, ptr @__ksymtab_llist_del_first, ptr @__ksymtab_llist_reverse_order], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @llist_add_batch(ptr noundef %new_first, ptr nocapture noundef writeonly %new_last, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %new_first to i32
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %head, align 4
  %3 = ptrtoint ptr %new_last to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %new_last, align 4
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %head, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  %4 = ptrtoint ptr %2 to i32
  tail call void @llvm.prefetch.p0(ptr %head, i32 1, i32 3, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %head, i32 %4, i32 %0) #6, !srcloc !15
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %5, 1
  %6 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !16
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %do.end23, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end23:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %tobool.not = icmp eq ptr %2, null
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llist_del_first(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  br label %for.cond

for.cond:                                         ; preds = %__cmpxchg.exit.for.cond_crit_edge, %entry
  %entry1.0 = phi ptr [ %1, %entry ], [ %7, %__cmpxchg.exit.for.cond_crit_edge ]
  %cmp = icmp eq ptr %entry1.0, null
  br i1 %cmp, label %for.cond.cleanup_crit_edge, label %if.end

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %2 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry1.0, align 4
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %head, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !18
  %4 = ptrtoint ptr %entry1.0 to i32
  %5 = ptrtoint ptr %3 to i32
  tail call void @llvm.prefetch.p0(ptr %head, i32 1, i32 3, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %head, i32 %4, i32 %5) #6, !srcloc !15
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %6, 1
  %7 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  %cmp30 = icmp eq ptr %entry1.0, %7
  br i1 %cmp30, label %__cmpxchg.exit.cleanup_crit_edge, label %__cmpxchg.exit.for.cond_crit_edge

__cmpxchg.exit.for.cond_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %__cmpxchg.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret ptr %entry1.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llist_reverse_order(ptr noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %tobool.not6 = icmp eq ptr %head, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %head.addr.08 = phi ptr [ %1, %while.body.while.body_crit_edge ], [ %head, %entry.while.body_crit_edge ]
  %new_head.07 = phi ptr [ %head.addr.08, %while.body.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %head.addr.08 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.addr.08, align 4
  store ptr %new_head.07, ptr %head.addr.08, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %new_head.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %head.addr.08, %while.body.while.end_crit_edge ]
  ret ptr %new_head.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_llist_add_batch, !1, !"__ksymtab_llist_add_batch", i1 false, i1 false}
!1 = !{!"../lib/llist.c", i32 37, i32 1}
!2 = !{ptr @__ksymtab_llist_del_first, !3, !"__ksymtab_llist_del_first", i1 false, i1 false}
!3 = !{!"../lib/llist.c", i32 70, i32 1}
!4 = !{ptr @__ksymtab_llist_reverse_order, !5, !"__ksymtab_llist_reverse_order", i1 false, i1 false}
!5 = !{!"../lib/llist.c", i32 92, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2148717591}
!15 = !{i64 719847, i64 719868, i64 719891, i64 719910, i64 719929}
!16 = !{i64 2148718004}
!17 = !{i64 2148725153}
!18 = !{i64 2148728922}
!19 = !{i64 2148729334}
