; ModuleID = '/llk/IR_all_yes/block/blk-mq-cpumap.c_pt.bc'
source_filename = "../block/blk-mq-cpumap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blk_mq_map_queues\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_map_queues\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_map_queues\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_map_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_blk_mq_map_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_map_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_map_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_map_queues to i32), ptr @__kstrtab_blk_mq_map_queues, ptr @__kstrtabns_blk_mq_map_queues }, section "___ksymtab_gpl+blk_mq_map_queues", align 4
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_blk_mq_map_queues], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_map_queues(ptr nocapture noundef readonly %qmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qmap, align 4
  %nr_queues1 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %qmap, i32 0, i32 1
  %2 = ptrtoint ptr %nr_queues1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_queues1, align 4
  %call75 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call75, i32 %4)
  %cmp76 = icmp ult i32 %call75, %4
  br i1 %cmp76, label %entry.for.body_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %call378 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call378, i32 %5)
  %cmp479 = icmp ult i32 %call378, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not80 = icmp ne i32 %3, 0
  %or.cond81 = select i1 %cmp479, i1 %cmp6.not80, i1 false
  br i1 %or.cond81, label %if.end.lr.ph, label %for.cond2.preheader.for.cond10.preheader_crit_edge

for.cond2.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond10.preheader

if.end.lr.ph:                                     ; preds = %for.cond2.preheader
  %queue_offset.i = getelementptr inbounds %struct.blk_mq_queue_map, ptr %qmap, i32 0, i32 2
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call77 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call75, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %call77
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arrayidx, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call77, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond10.preheader:                             ; preds = %if.end.for.cond10.preheader_crit_edge, %for.cond2.preheader.for.cond10.preheader_crit_edge
  %q.0.lcssa = phi i32 [ 0, %for.cond2.preheader.for.cond10.preheader_crit_edge ], [ %inc, %if.end.for.cond10.preheader_crit_edge ]
  %queue_offset.i70 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %qmap, i32 0, i32 2
  br label %for.cond10.outer

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %call383 = phi i32 [ %call378, %if.end.lr.ph ], [ %call3, %if.end.if.end_crit_edge ]
  %q.082 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end.if.end_crit_edge ]
  %inc = add nuw i32 %q.082, 1
  %8 = ptrtoint ptr %queue_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_offset.i, align 4
  %add.i = add i32 %q.082, %9
  %arrayidx8 = getelementptr i32, ptr %1, i32 %call383
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %arrayidx8, align 4
  %call3 = tail call i32 @cpumask_next(i32 noundef %call383, ptr noundef nonnull @__cpu_present_mask) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %11)
  %cmp4 = icmp ult i32 %call3, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %cmp6.not = icmp ult i32 %inc, %3
  %or.cond = select i1 %cmp4, i1 %cmp6.not, i1 false
  br i1 %or.cond, label %if.end.if.end_crit_edge, label %if.end.for.cond10.preheader_crit_edge

if.end.for.cond10.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond10.preheader

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.cond10:                                       ; preds = %for.cond10.outer, %for.body13.for.cond10_crit_edge
  %cpu.2 = phi i32 [ %call11, %for.body13.for.cond10_crit_edge ], [ %cpu.2.ph, %for.cond10.outer ]
  %call11 = tail call i32 @cpumask_next(i32 noundef %cpu.2, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %22)
  %cmp12 = icmp ult i32 %call11, %22
  br i1 %cmp12, label %for.body13, label %for.end34

for.body13:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr i32, ptr %1, i32 %call11
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %cmp15.not = icmp eq i32 %13, -1
  br i1 %cmp15.not, label %if.end17, label %for.body13.for.cond10_crit_edge

for.body13.for.cond10_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond10

if.end17:                                         ; preds = %for.body13
  %arrayidx14.le = getelementptr i32, ptr %1, i32 %call11
  call void @__sanitizer_cov_trace_cmp4(i32 %q.1.ph, i32 %3)
  %cmp18 = icmp ult i32 %q.1.ph, %3
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %inc20 = add nuw i32 %q.1.ph, 1
  %14 = ptrtoint ptr %queue_offset.i70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_offset.i70, align 4
  %rem.i68 = urem i32 %q.1.ph, %3
  %add.i69 = add i32 %rem.i68, %15
  br label %if.end33

if.else:                                          ; preds = %if.end17
  %thread_sibling.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call11, i32 5
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %thread_sibling.i, i32 noundef %22) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %16)
  %cmp.i = icmp ult i32 %call.i.i, %16
  %call.cpu.i = select i1 %cmp.i, i32 %call.i.i, i32 %call11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.cpu.i, i32 %call11)
  %cmp24 = icmp eq i32 %call.cpu.i, %call11
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %inc26 = add i32 %q.1.ph, 1
  %17 = ptrtoint ptr %queue_offset.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue_offset.i70, align 4
  %rem.i71 = urem i32 %q.1.ph, %3
  %add.i72 = add i32 %rem.i71, %18
  br label %if.end33

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx30 = getelementptr i32, ptr %1, i32 %call.cpu.i
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then25, %if.then19
  %add.i72.sink = phi i32 [ %add.i72, %if.then25 ], [ %20, %if.else29 ], [ %add.i69, %if.then19 ]
  %q.2 = phi i32 [ %inc26, %if.then25 ], [ %q.1.ph, %if.else29 ], [ %inc20, %if.then19 ]
  %21 = ptrtoint ptr %arrayidx14.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i72.sink, ptr %arrayidx14.le, align 4
  br label %for.cond10.outer

for.cond10.outer:                                 ; preds = %if.end33, %for.cond10.preheader
  %cpu.2.ph = phi i32 [ -1, %for.cond10.preheader ], [ %call11, %if.end33 ]
  %q.1.ph = phi i32 [ %q.0.lcssa, %for.cond10.preheader ], [ %q.2, %if.end33 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond10

for.end34:                                        ; preds = %for.cond10
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_hw_queue_to_node(ptr nocapture noundef readonly %qmap, i32 noundef %index) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ -1, %entry ], [ %call, %for.body.for.cond_crit_edge ]
  %call = tail call i32 @cpumask_next(i32 noundef %i.0, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %qmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qmap, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %call
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, %index
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_blk_mq_map_queues, !1, !"__ksymtab_blk_mq_map_queues", i1 false, i1 false}
!1 = !{!"../block/blk-mq-cpumap.c", i32 76, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
