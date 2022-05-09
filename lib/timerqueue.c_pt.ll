; ModuleID = '/llk/IR_all_yes/lib/timerqueue.c_pt.bc'
source_filename = "../lib/timerqueue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+timerqueue_add\22, \22a\22\09"
module asm "\09.weak\09__crc_timerqueue_add\09\09\09\09"
module asm "\09.long\09__crc_timerqueue_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timerqueue_add:\09\09\09\09\09"
module asm "\09.asciz \09\22timerqueue_add\22\09\09\09\09\09"
module asm "__kstrtabns_timerqueue_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+timerqueue_del\22, \22a\22\09"
module asm "\09.weak\09__crc_timerqueue_del\09\09\09\09"
module asm "\09.long\09__crc_timerqueue_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timerqueue_del:\09\09\09\09\09"
module asm "\09.asciz \09\22timerqueue_del\22\09\09\09\09\09"
module asm "__kstrtabns_timerqueue_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+timerqueue_iterate_next\22, \22a\22\09"
module asm "\09.weak\09__crc_timerqueue_iterate_next\09\09\09\09"
module asm "\09.long\09__crc_timerqueue_iterate_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timerqueue_iterate_next:\09\09\09\09\09"
module asm "\09.asciz \09\22timerqueue_iterate_next\22\09\09\09\09\09"
module asm "__kstrtabns_timerqueue_iterate_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@timerqueue_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/timerqueue.c\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_timerqueue_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_timerqueue_add = external dso_local constant [0 x i8], align 1
@__ksymtab_timerqueue_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timerqueue_add to i32), ptr @__kstrtab_timerqueue_add, ptr @__kstrtabns_timerqueue_add }, section "___ksymtab_gpl+timerqueue_add", align 4
@timerqueue_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_timerqueue_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_timerqueue_del = external dso_local constant [0 x i8], align 1
@__ksymtab_timerqueue_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timerqueue_del to i32), ptr @__kstrtab_timerqueue_del, ptr @__kstrtabns_timerqueue_del }, section "___ksymtab_gpl+timerqueue_del", align 4
@__kstrtab_timerqueue_iterate_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_timerqueue_iterate_next = external dso_local constant [0 x i8], align 1
@__ksymtab_timerqueue_iterate_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timerqueue_iterate_next to i32), ptr @__kstrtab_timerqueue_iterate_next, ptr @__kstrtabns_timerqueue_iterate_next }, section "___ksymtab_gpl+timerqueue_iterate_next", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [20 x i8] c"../lib/timerqueue.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 38, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_timerqueue_add, ptr @__ksymtab_timerqueue_del, ptr @__ksymtab_timerqueue_iterate_next, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @timerqueue_add(ptr noundef %head, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 8
  %2 = ptrtoint ptr %node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp eq i32 %1, %2
  br i1 %cmp.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @timerqueue_add.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !19

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #3
  store i1 true, ptr @timerqueue_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head, align 4
  %tobool.not2.i = icmp eq ptr %4, null
  br i1 %tobool.not2.i, label %if.then.i.critedge.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end30
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %node, i32 0, i32 1
  %5 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %expires.i.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %7 = phi ptr [ %4, %while.body.lr.ph.i ], [ %11, %while.body.i.while.body.i_crit_edge ]
  %leftmost.0.off03.i = phi i1 [ true, %while.body.lr.ph.i ], [ %leftmost.1.off0.i, %while.body.i.while.body.i_crit_edge ]
  %expires4.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %expires4.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %expires4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %9)
  %cmp.i.i = icmp slt i64 %6, %9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %link.1.i = select i1 %cmp.i.i, ptr %rb_left.i, ptr %rb_right.i
  %leftmost.1.off0.i = select i1 %cmp.i.i, i1 %leftmost.0.off03.i, i1 false
  %10 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  %phi.cast.le.i = ptrtoint ptr %7 to i32
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %phi.cast.le.i, ptr %node, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 1
  %13 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 2
  %14 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_left.i.i, align 4
  %15 = ptrtoint ptr %link.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node, ptr %link.1.i, align 4
  br i1 %leftmost.1.off0.i, label %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge, label %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge

while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %rb_add_cached.exit

while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then.i.i

if.then.i.critedge.i:                             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #3
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %node, align 4
  %rb_right.i.c.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 1
  %17 = ptrtoint ptr %rb_right.i.c.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_right.i.c.i, align 4
  %rb_left.i.c.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i.c.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_left.i.c.i, align 4
  %19 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node, ptr %head, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.critedge.i, %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge
  %rb_leftmost.i.i = getelementptr inbounds %struct.rb_root_cached, ptr %head, i32 0, i32 1
  %20 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node, ptr %rb_leftmost.i.i, align 4
  %phi.cmp = icmp ne ptr %node, null
  br label %rb_add_cached.exit

rb_add_cached.exit:                               ; preds = %if.then.i.i, %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge
  %spec.select.i = phi i1 [ false, %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge ], [ %phi.cmp, %if.then.i.i ]
  tail call void @rb_insert_color(ptr noundef %node, ptr noundef %head) #4
  ret i1 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @timerqueue_del(ptr noundef %head, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 8
  %2 = ptrtoint ptr %node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b57 = load i1, ptr @timerqueue_del.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !19

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #3
  store i1 true, ptr @timerqueue_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %4, %node
  br i1 %cmp.i, label %if.then.i, label %if.end29.rb_erase_cached.exit_crit_edge

if.end29.rb_erase_cached.exit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #3
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #3
  %call.i = tail call ptr @rb_next(ptr noundef %node) #4
  %5 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %if.end29.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %node, ptr noundef %head) #4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %node, align 8
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %head, align 4
  %cmp47 = icmp ne ptr %8, null
  ret i1 %cmp47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @timerqueue_iterate_next(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %call = tail call ptr @rb_next(ptr noundef nonnull %node) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../lib/timerqueue.c", i32 38, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_timerqueue_add, !4, !"__ksymtab_timerqueue_add", i1 false, i1 false}
!4 = !{!"../lib/timerqueue.c", i32 42, i32 1}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../lib/timerqueue.c", i32 55, i32 2}
!7 = !{ptr @__ksymtab_timerqueue_del, !8, !"__ksymtab_timerqueue_del", i1 false, i1 false}
!8 = !{!"../lib/timerqueue.c", i32 62, i32 1}
!9 = !{ptr @__ksymtab_timerqueue_iterate_next, !10, !"__ksymtab_timerqueue_iterate_next", i1 false, i1 false}
!10 = !{!"../lib/timerqueue.c", i32 84, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
