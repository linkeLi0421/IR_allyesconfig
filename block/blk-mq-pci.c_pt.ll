; ModuleID = '/llk/IR_all_yes/block/blk-mq-pci.c_pt.bc'
source_filename = "../block/blk-mq-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blk_mq_pci_map_queues\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_pci_map_queues\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_pci_map_queues\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_pci_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_pci_map_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_pci_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@blk_mq_pci_map_queues.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block/blk-mq-pci.c\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_blk_mq_pci_map_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_pci_map_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_pci_map_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_pci_map_queues to i32), ptr @__kstrtab_blk_mq_pci_map_queues, ptr @__kstrtabns_blk_mq_pci_map_queues }, section "___ksymtab_gpl+blk_mq_pci_map_queues", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../block/blk-mq-pci.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 44, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_blk_mq_pci_map_queues, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_pci_map_queues(ptr nocapture noundef readonly %qmap, ptr noundef %pdev, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_queues = getelementptr inbounds %struct.blk_mq_queue_map, ptr %qmap, i32 0, i32 1
  %0 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp66.not = icmp eq i32 %1, 0
  br i1 %cmp66.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %queue_offset = getelementptr inbounds %struct.blk_mq_queue_map, ptr %qmap, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %queue.067, %offset
  %call = tail call ptr @pci_irq_get_affinity(ptr noundef %pdev, i32 noundef %add) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %fallback, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body
  %call263 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %call) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call263, i32 %2)
  %cmp364 = icmp ult i32 %call263, %2
  br i1 %cmp364, label %for.cond1.preheader.for.body4_crit_edge, label %for.cond1.preheader.for.inc_crit_edge

for.cond1.preheader.for.inc_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %call265 = phi i32 [ %call2, %for.body4.for.body4_crit_edge ], [ %call263, %for.cond1.preheader.for.body4_crit_edge ]
  %3 = ptrtoint ptr %queue_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %queue_offset, align 4
  %add5 = add i32 %4, %queue.067
  %5 = ptrtoint ptr %qmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qmap, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %call265
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add5, ptr %arrayidx, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call265, ptr noundef nonnull %call) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call2, %8
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc_crit_edge

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc:                                          ; preds = %for.body4.for.inc_crit_edge, %for.cond1.preheader.for.inc_crit_edge
  %inc = add nuw i32 %queue.067, 1
  %9 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_queues, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

fallback:                                         ; preds = %for.body
  %11 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8 = icmp ugt i32 %12, 1
  br i1 %cmp8, label %land.rhs, label %fallback.if.end38_crit_edge

fallback.if.end38_crit_edge:                      ; preds = %fallback
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

land.rhs:                                         ; preds = %fallback
  %.b60 = load i1, ptr @blk_mq_pci_map_queues.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end38_crit_edge, label %if.then16, !prof !14

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @blk_mq_pci_map_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #3
  br label %if.end38

if.end38:                                         ; preds = %if.then16, %land.rhs.if.end38_crit_edge, %fallback.if.end38_crit_edge
  %call3.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %13)
  %cmp4.i = icmp ult i32 %call3.i, %13
  br i1 %cmp4.i, label %if.end38.for.body.i_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end38.for.body.i_crit_edge:                    ; preds = %if.end38
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end38.for.body.i_crit_edge
  %call5.i = phi i32 [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %call3.i, %if.end38.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %qmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qmap, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %call5.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @cpumask_next(i32 noundef %call5.i, ptr noundef nonnull @__cpu_possible_mask) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_irq_get_affinity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../block/blk-mq-pci.c", i32 44, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_blk_mq_pci_map_queues, !4, !"__ksymtab_blk_mq_pci_map_queues", i1 false, i1 false}
!4 = !{!"../block/blk-mq-pci.c", i32 48, i32 1}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 2000, i32 1}
