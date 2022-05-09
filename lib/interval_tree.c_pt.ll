; ModuleID = '/llk/IR_all_yes/lib/interval_tree.c_pt.bc'
source_filename = "../lib/interval_tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+interval_tree_insert\22, \22a\22\09"
module asm "\09.weak\09__crc_interval_tree_insert\09\09\09\09"
module asm "\09.long\09__crc_interval_tree_insert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_interval_tree_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22interval_tree_insert\22\09\09\09\09\09"
module asm "__kstrtabns_interval_tree_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+interval_tree_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_interval_tree_remove\09\09\09\09"
module asm "\09.long\09__crc_interval_tree_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_interval_tree_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22interval_tree_remove\22\09\09\09\09\09"
module asm "__kstrtabns_interval_tree_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+interval_tree_iter_first\22, \22a\22\09"
module asm "\09.weak\09__crc_interval_tree_iter_first\09\09\09\09"
module asm "\09.long\09__crc_interval_tree_iter_first\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_interval_tree_iter_first:\09\09\09\09\09"
module asm "\09.asciz \09\22interval_tree_iter_first\22\09\09\09\09\09"
module asm "__kstrtabns_interval_tree_iter_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+interval_tree_iter_next\22, \22a\22\09"
module asm "\09.weak\09__crc_interval_tree_iter_next\09\09\09\09"
module asm "\09.long\09__crc_interval_tree_iter_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_interval_tree_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22interval_tree_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns_interval_tree_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__kstrtab_interval_tree_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns_interval_tree_insert = external dso_local constant [0 x i8], align 1
@__ksymtab_interval_tree_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @interval_tree_insert to i32), ptr @__kstrtab_interval_tree_insert, ptr @__kstrtabns_interval_tree_insert }, section "___ksymtab_gpl+interval_tree_insert", align 4
@__kstrtab_interval_tree_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_interval_tree_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_interval_tree_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @interval_tree_remove to i32), ptr @__kstrtab_interval_tree_remove, ptr @__kstrtabns_interval_tree_remove }, section "___ksymtab_gpl+interval_tree_remove", align 4
@__kstrtab_interval_tree_iter_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_interval_tree_iter_first = external dso_local constant [0 x i8], align 1
@__ksymtab_interval_tree_iter_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @interval_tree_iter_first to i32), ptr @__kstrtab_interval_tree_iter_first, ptr @__kstrtabns_interval_tree_iter_first }, section "___ksymtab_gpl+interval_tree_iter_first", align 4
@__kstrtab_interval_tree_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_interval_tree_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_interval_tree_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @interval_tree_iter_next to i32), ptr @__kstrtab_interval_tree_iter_next, ptr @__kstrtabns_interval_tree_iter_next }, section "___ksymtab_gpl+interval_tree_iter_next", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_interval_tree_insert, ptr @__ksymtab_interval_tree_iter_first, ptr @__ksymtab_interval_tree_iter_next, ptr @__ksymtab_interval_tree_remove], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @interval_tree_insert(ptr noundef %node, ptr noundef %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %start1 = getelementptr inbounds %struct.interval_tree_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %start1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start1, align 4
  %last2 = getelementptr inbounds %struct.interval_tree_node, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %last2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last2, align 4
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %tobool.not29 = icmp eq ptr %5, null
  br i1 %tobool.not29, label %if.then.i.critedge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi ptr [ %13, %if.end.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %leftmost.0.off030 = phi i1 [ %leftmost.1.off0, %if.end.while.body_crit_edge ], [ true, %entry.while.body_crit_edge ]
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__subtree_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp = icmp ult i32 %8, %3
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %__subtree_last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %start4 = getelementptr inbounds %struct.interval_tree_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %start4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %11)
  %cmp5 = icmp ult i32 %1, %11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %leftmost.1.off0 = select i1 %cmp5, i1 %leftmost.0.off030, i1 false
  %link.1 = select i1 %cmp5, ptr %rb_left, ptr %rb_right
  %12 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link.1, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end
  %phi.cast.le = ptrtoint ptr %6 to i32
  %__subtree_last9 = getelementptr inbounds %struct.interval_tree_node, ptr %node, i32 0, i32 3
  %14 = ptrtoint ptr %__subtree_last9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %__subtree_last9, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %phi.cast.le, ptr %node, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 2
  %17 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i, align 4
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node, ptr %link.1, align 4
  br i1 %leftmost.1.off0, label %while.cond.while.end_crit_edge.if.then.i_crit_edge, label %while.cond.while.end_crit_edge.rb_insert_augmented_cached.exit_crit_edge

while.cond.while.end_crit_edge.rb_insert_augmented_cached.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  br label %rb_insert_augmented_cached.exit

while.cond.while.end_crit_edge.if.then.i_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last9.c = getelementptr inbounds %struct.interval_tree_node, ptr %node, i32 0, i32 3
  %19 = ptrtoint ptr %__subtree_last9.c to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %3, ptr %__subtree_last9.c, align 4
  %20 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %node, align 4
  %rb_right.i.c = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 1
  %21 = ptrtoint ptr %rb_right.i.c to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_right.i.c, align 4
  %rb_left.i.c = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 2
  %22 = ptrtoint ptr %rb_left.i.c to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rb_left.i.c, align 4
  %23 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %node, ptr %root, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.critedge, %while.cond.while.end_crit_edge.if.then.i_crit_edge
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %24 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node, ptr %rb_leftmost.i, align 4
  br label %rb_insert_augmented_cached.exit

rb_insert_augmented_cached.exit:                  ; preds = %if.then.i, %while.cond.while.end_crit_edge.rb_insert_augmented_cached.exit_crit_edge
  tail call void @__rb_insert_augmented(ptr noundef %node, ptr noundef %root, ptr noundef nonnull @interval_tree_augment_rotate) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @interval_tree_remove(ptr noundef %node, ptr noundef %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %1, %node
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @rb_next(ptr noundef %node) #7
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 1
  %3 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 2
  %5 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else6.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node, align 4
  %and.i.i.i = and i32 %8, -4
  %9 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rb_change_child.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %11, %node
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %rb_left.i.i.i.i, ptr %rb_right.i.i.i.i
  br label %__rb_change_child.exit.i.i.i

__rb_change_child.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i = phi ptr [ %root, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.then.i.i.i.i ]
  %12 = ptrtoint ptr %rb_left.sink.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %4, ptr %rb_left.sink.i.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %__rb_change_child.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %4, align 4
  br label %if.end69.i.i.i

if.else.i.i.i:                                    ; preds = %__rb_change_child.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and4.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool5.not.i.i.i, ptr null, ptr %9
  br label %if.end69.i.i.i

if.else6.i.i.i:                                   ; preds = %if.end.i
  %tobool7.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.else12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  %and11.i.i.i = and i32 %15, -4
  %17 = inttoptr i32 %and11.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool.not.i2.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i, label %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge, label %if.then.i7.i.i.i

if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rb_change_child.exit9.i.i.i

if.then.i7.i.i.i:                                 ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %rb_left.i3.i.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_left.i3.i.i.i, align 4
  %cmp.i4.i.i.i = icmp eq ptr %19, %node
  %rb_right.i5.i.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %spec.select.i6.i.i.i = select i1 %cmp.i4.i.i.i, ptr %rb_left.i3.i.i.i, ptr %rb_right.i5.i.i.i
  br label %__rb_change_child.exit9.i.i.i

__rb_change_child.exit9.i.i.i:                    ; preds = %if.then.i7.i.i.i, %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i = phi ptr [ %root, %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i, %if.then.i7.i.i.i ]
  %20 = ptrtoint ptr %rb_left.sink.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %6, ptr %rb_left.sink.i8.i.i.i, align 4
  br label %if.end69.i.i.i

if.else12.i.i.i:                                  ; preds = %if.else6.i.i.i
  %rb_left13.i.i.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %rb_left13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_left13.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.else12.i.i.i.do.body.i.i.i_crit_edge

if.else12.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %if.else12.i.i.i
  br label %do.body.i.i.i

if.then15.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %rb_right16.i.i.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %rb_right16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rb_right16.i.i.i, align 4
  %__subtree_last.i.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %node, i32 0, i32 3
  %25 = ptrtoint ptr %__subtree_last.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %__subtree_last.i.i.i.i, align 4
  %__subtree_last4.i.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %4, i32 0, i32 3
  %27 = ptrtoint ptr %__subtree_last4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %__subtree_last4.i.i.i.i, align 4
  %.pre.i.i.i = ptrtoint ptr %4 to i32
  br label %if.end42.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.else12.i.i.i.do.body.i.i.i_crit_edge
  %tmp.0.i.i.i = phi ptr [ %29, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %22, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %successor.0.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %4, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %rb_left18.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %rb_left18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rb_left18.i.i.i, align 4
  %tobool19.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool19.not.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %rb_right20.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %rb_right20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rb_right20.i.i.i, align 4
  %rb_left26.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %rb_left26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %rb_left26.i.i.i, align 4
  store volatile ptr %4, ptr %rb_right20.i.i.i, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %34, 1
  %35 = ptrtoint ptr %tmp.0.i.i.i to i32
  %or.i.i.i.i = or i32 %and.i.i.i.i, %35
  store i32 %or.i.i.i.i, ptr %4, align 4
  %__subtree_last.i10.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %node, i32 0, i32 3
  %36 = ptrtoint ptr %__subtree_last.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__subtree_last.i10.i.i.i, align 4
  %__subtree_last4.i11.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %tmp.0.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %__subtree_last4.i11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %__subtree_last4.i11.i.i.i, align 4
  %cmp.not8.i.i.i.i = icmp eq ptr %successor.0.i.i.i, %tmp.0.i.i.i
  br i1 %cmp.not8.i.i.i.i, label %do.end.i.i.i.if.end42.i.i.i_crit_edge, label %do.end.i.i.i.while.body.i.i.i.i_crit_edge

do.end.i.i.i.while.body.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i
  br label %while.body.i.i.i.i

do.end.i.i.i.if.end42.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i.i.i

while.body.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, %do.end.i.i.i.while.body.i.i.i.i_crit_edge
  %rb.addr.09.i.i.i.i = phi ptr [ %56, %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %successor.0.i.i.i, %do.end.i.i.i.while.body.i.i.i.i_crit_edge ]
  %last.i.i.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %rb.addr.09.i.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %last.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i.i.i, label %while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last.i.i.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %__subtree_last.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %__subtree_last.i.i.i.i.i, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 %40) #7
  br label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i, %while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i = phi i32 [ %40, %while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge ], [ %45, %if.then.i.i.i.i.i ]
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %rb_right.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rb_right.i.i.i.i.i, align 4
  %tobool7.not.i.i.i.i.i = icmp eq ptr %47, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i

if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last14.i.i.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %__subtree_last14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %__subtree_last14.i.i.i.i.i, align 4
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 %max.0.i.i.i.i.i) #7
  br label %if.end19.i.i.i.i.i

if.end19.i.i.i.i.i:                               ; preds = %if.then8.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge ], [ %50, %if.then8.i.i.i.i.i ]
  %__subtree_last21.i.i.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %rb.addr.09.i.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %__subtree_last21.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %__subtree_last21.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %max.1.i.i.i.i.i)
  %cmp22.i.i.i.i.i = icmp eq i32 %52, %max.1.i.i.i.i.i
  br i1 %cmp22.i.i.i.i.i, label %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i.i.i.i

if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge:      ; preds = %if.end19.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end19.i.i.i.i.i
  %53 = ptrtoint ptr %__subtree_last21.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %max.1.i.i.i.i.i, ptr %__subtree_last21.i.i.i.i.i, align 4
  %54 = ptrtoint ptr %rb.addr.09.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rb.addr.09.i.i.i.i, align 4
  %and.i12.i.i.i = and i32 %55, -4
  %56 = inttoptr i32 %and.i12.i.i.i to ptr
  %cmp.not.i.i.i.i = icmp eq ptr %tmp.0.i.i.i, %56
  br i1 %cmp.not.i.i.i.i, label %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge

cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i.i

cleanup.i.i.i.i.if.end42.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge, %do.end.i.i.i.if.end42.i.i.i_crit_edge, %if.then15.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %35, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %.pre.i.i.i, %if.then15.i.i.i ], [ %35, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %35, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %parent.0.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %4, %if.then15.i.i.i ], [ %successor.0.i.i.i, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %successor.0.i.i.i, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %successor.1.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %4, %if.then15.i.i.i ], [ %tmp.0.i.i.i, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %tmp.0.i.i.i, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %child2.0.i.i.i = phi ptr [ %31, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %24, %if.then15.i.i.i ], [ %31, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %31, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rb_left.i.i.i, align 4
  %rb_left49.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %rb_left49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %58, ptr %rb_left49.i.i.i, align 4
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %58, align 4
  %and.i13.i.i.i = and i32 %61, 1
  %or.i14.i.i.i = or i32 %and.i13.i.i.i, %.pre-phi.i.i.i
  store i32 %or.i14.i.i.i, ptr %58, align 4
  %62 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %node, align 4
  %and55.i.i.i = and i32 %63, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i)
  %tobool.not.i15.i.i.i = icmp eq i32 %and55.i.i.i, 0
  br i1 %tobool.not.i15.i.i.i, label %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge, label %if.then.i20.i.i.i

if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge: ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rb_change_child.exit22.i.i.i

if.then.i20.i.i.i:                                ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %64 = inttoptr i32 %and55.i.i.i to ptr
  %rb_left.i16.i.i.i = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %rb_left.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rb_left.i16.i.i.i, align 4
  %cmp.i17.i.i.i = icmp eq ptr %66, %node
  %rb_right.i18.i.i.i = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 1
  %spec.select.i19.i.i.i = select i1 %cmp.i17.i.i.i, ptr %rb_left.i16.i.i.i, ptr %rb_right.i18.i.i.i
  br label %__rb_change_child.exit22.i.i.i

__rb_change_child.exit22.i.i.i:                   ; preds = %if.then.i20.i.i.i, %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge
  %rb_left.sink.i21.i.i.i = phi ptr [ %root, %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge ], [ %spec.select.i19.i.i.i, %if.then.i20.i.i.i ]
  %67 = ptrtoint ptr %rb_left.sink.i21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %successor.1.i.i.i, ptr %rb_left.sink.i21.i.i.i, align 4
  %tobool56.not.i.i.i = icmp eq ptr %child2.0.i.i.i, null
  br i1 %tobool56.not.i.i.i, label %if.else58.i.i.i, label %if.then57.i.i.i

if.then57.i.i.i:                                  ; preds = %__rb_change_child.exit22.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %parent.0.i.i.i to i32
  %or.i23.i.i.i = or i32 %68, 1
  %69 = ptrtoint ptr %child2.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i23.i.i.i, ptr %child2.0.i.i.i, align 4
  br label %if.end66.i.i.i

if.else58.i.i.i:                                  ; preds = %__rb_change_child.exit22.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %successor.1.i.i.i, align 4
  %and60.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i)
  %tobool61.not.i.i.i = icmp eq i32 %and60.i.i.i, 0
  %spec.select1.i.i.i = select i1 %tobool61.not.i.i.i, ptr null, ptr %parent.0.i.i.i
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.else58.i.i.i, %if.then57.i.i.i
  %rebalance.1.i.i.i = phi ptr [ null, %if.then57.i.i.i ], [ %spec.select1.i.i.i, %if.else58.i.i.i ]
  %72 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %63, ptr %successor.1.i.i.i, align 4
  br label %if.end69.i.i.i

if.end69.i.i.i:                                   ; preds = %if.end66.i.i.i, %__rb_change_child.exit9.i.i.i, %if.else.i.i.i, %if.then2.i.i.i
  %tmp.1.i.i.i = phi ptr [ %successor.1.i.i.i, %if.end66.i.i.i ], [ %17, %__rb_change_child.exit9.i.i.i ], [ %9, %if.else.i.i.i ], [ %9, %if.then2.i.i.i ]
  %rebalance.2.i.i.i = phi ptr [ %rebalance.1.i.i.i, %if.end66.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i ], [ %spec.select.i.i.i, %if.else.i.i.i ], [ null, %if.then2.i.i.i ]
  %cmp.not8.i24.i.i.i = icmp eq ptr %tmp.1.i.i.i, null
  br i1 %cmp.not8.i24.i.i.i, label %if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge

if.end69.i.i.i.while.body.i29.i.i.i_crit_edge:    ; preds = %if.end69.i.i.i
  br label %while.body.i29.i.i.i

if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rb_erase_augmented.exit.i.i

while.body.i29.i.i.i:                             ; preds = %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge, %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge
  %rb.addr.09.i25.i.i.i = phi ptr [ %90, %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge ], [ %tmp.1.i.i.i, %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge ]
  %last.i.i26.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %rb.addr.09.i25.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %last.i.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last.i.i26.i.i.i, align 4
  %rb_left.i.i27.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i25.i.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %rb_left.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rb_left.i.i27.i.i.i, align 4
  %tobool.not.i.i28.i.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i28.i.i.i, label %while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge, label %if.then.i.i31.i.i.i

while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i35.i.i.i

if.then.i.i31.i.i.i:                              ; preds = %while.body.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last.i.i30.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %__subtree_last.i.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %__subtree_last.i.i30.i.i.i, align 4
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 %74) #7
  br label %if.end5.i.i35.i.i.i

if.end5.i.i35.i.i.i:                              ; preds = %if.then.i.i31.i.i.i, %while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge
  %max.0.i.i32.i.i.i = phi i32 [ %74, %while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge ], [ %79, %if.then.i.i31.i.i.i ]
  %rb_right.i.i33.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i25.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %rb_right.i.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rb_right.i.i33.i.i.i, align 4
  %tobool7.not.i.i34.i.i.i = icmp eq ptr %81, null
  br i1 %tobool7.not.i.i34.i.i.i, label %if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge, label %if.then8.i.i37.i.i.i

if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge: ; preds = %if.end5.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i.i41.i.i.i

if.then8.i.i37.i.i.i:                             ; preds = %if.end5.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last14.i.i36.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %__subtree_last14.i.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %__subtree_last14.i.i36.i.i.i, align 4
  %84 = tail call i32 @llvm.umax.i32(i32 %83, i32 %max.0.i.i32.i.i.i) #7
  br label %if.end19.i.i41.i.i.i

if.end19.i.i41.i.i.i:                             ; preds = %if.then8.i.i37.i.i.i, %if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge
  %max.1.i.i38.i.i.i = phi i32 [ %max.0.i.i32.i.i.i, %if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge ], [ %84, %if.then8.i.i37.i.i.i ]
  %__subtree_last21.i.i39.i.i.i = getelementptr inbounds %struct.interval_tree_node, ptr %rb.addr.09.i25.i.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %__subtree_last21.i.i39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %__subtree_last21.i.i39.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %max.1.i.i38.i.i.i)
  %cmp22.i.i40.i.i.i = icmp eq i32 %86, %max.1.i.i38.i.i.i
  br i1 %cmp22.i.i40.i.i.i, label %if.end19.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %cleanup.i44.i.i.i

if.end19.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %if.end19.i.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rb_erase_augmented.exit.i.i

cleanup.i44.i.i.i:                                ; preds = %if.end19.i.i41.i.i.i
  %87 = ptrtoint ptr %__subtree_last21.i.i39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %max.1.i.i38.i.i.i, ptr %__subtree_last21.i.i39.i.i.i, align 4
  %88 = ptrtoint ptr %rb.addr.09.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rb.addr.09.i25.i.i.i, align 4
  %and.i42.i.i.i = and i32 %89, -4
  %90 = inttoptr i32 %and.i42.i.i.i to ptr
  %cmp.not.i43.i.i.i = icmp eq i32 %and.i42.i.i.i, 0
  br i1 %cmp.not.i43.i.i.i, label %cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge

cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i29.i.i.i

cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rb_erase_augmented.exit.i.i

__rb_erase_augmented.exit.i.i:                    ; preds = %cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, %if.end19.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, %if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %rebalance.2.i.i.i, null
  br i1 %tobool.not.i.i, label %__rb_erase_augmented.exit.i.i.rb_erase_augmented_cached.exit_crit_edge, label %if.then.i.i

__rb_erase_augmented.exit.i.i.rb_erase_augmented_cached.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rb_erase_augmented_cached.exit

if.then.i.i:                                      ; preds = %__rb_erase_augmented.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i, ptr noundef %root, ptr noundef nonnull @interval_tree_augment_rotate) #7
  br label %rb_erase_augmented_cached.exit

rb_erase_augmented_cached.exit:                   ; preds = %if.then.i.i, %__rb_erase_augmented.exit.i.i.rb_erase_augmented_cached.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @interval_tree_iter_first(ptr nocapture noundef readonly %root, i32 noundef %start, i32 noundef %last) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__subtree_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp = icmp ult i32 %3, %start
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %4 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost, align 4
  %start8 = getelementptr inbounds %struct.interval_tree_node, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %start8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %last)
  %cmp9 = icmp ugt i32 %7, %last
  br i1 %cmp9, label %if.end4.cleanup_crit_edge, label %if.end4.while.body.i_crit_edge

if.end4.while.body.i_crit_edge:                   ; preds = %if.end4
  br label %while.body.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.backedge, %if.end4.while.body.i_crit_edge
  %node.addr.0.i = phi ptr [ %node.addr.0.i.be, %while.body.i.backedge ], [ %1, %if.end4.while.body.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.addr.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body.i.if.end4.i_crit_edge, label %if.then.i

while.body.i.if.end4.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %while.body.i
  %__subtree_last.i = getelementptr inbounds %struct.interval_tree_node, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__subtree_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %start)
  %cmp.not.i = icmp ult i32 %11, %start
  br i1 %cmp.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.while.body.i.backedge_crit_edge

if.then.i.while.body.i.backedge_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.backedge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %while.body.i.if.end4.i_crit_edge
  %start5.i = getelementptr inbounds %struct.interval_tree_node, ptr %node.addr.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %start5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %last)
  %cmp6.not.i = icmp ugt i32 %13, %last
  br i1 %cmp6.not.i, label %if.end4.i.cleanup_crit_edge, label %if.then7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7.i:                                       ; preds = %if.end4.i
  %last8.i = getelementptr inbounds %struct.interval_tree_node, ptr %node.addr.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %last8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %start)
  %cmp9.not.i = icmp ult i32 %15, %start
  br i1 %cmp9.not.i, label %if.end11.i, label %if.then7.i.cleanup_crit_edge

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.i:                                       ; preds = %if.then7.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.addr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_right.i, align 4
  %tobool13.not.i = icmp eq ptr %17, null
  br i1 %tobool13.not.i, label %if.end11.i.cleanup_crit_edge, label %if.then14.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14.i:                                      ; preds = %if.end11.i
  %__subtree_last20.i = getelementptr inbounds %struct.interval_tree_node, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %__subtree_last20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__subtree_last20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %start)
  %cmp21.not.i = icmp ult i32 %19, %start
  br i1 %cmp21.not.i, label %if.then14.i.cleanup_crit_edge, label %if.then14.i.while.body.i.backedge_crit_edge

if.then14.i.while.body.i.backedge_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.backedge

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.i.backedge:                            ; preds = %if.then14.i.while.body.i.backedge_crit_edge, %if.then.i.while.body.i.backedge_crit_edge
  %node.addr.0.i.be = phi ptr [ %9, %if.then.i.while.body.i.backedge_crit_edge ], [ %17, %if.then14.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

cleanup:                                          ; preds = %if.then14.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %if.end4.i.cleanup_crit_edge ], [ null, %if.then14.i.cleanup_crit_edge ], [ null, %if.end11.i.cleanup_crit_edge ], [ %node.addr.0.i, %if.then7.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @interval_tree_iter_next(ptr noundef readonly %node, i32 noundef %start, i32 noundef %last) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_right, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %entry
  %rb.0 = phi ptr [ %1, %entry ], [ %20, %if.else.while.cond_crit_edge ]
  %node.addr.0 = phi ptr [ %node, %entry ], [ %21, %if.else.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %rb.0, null
  br i1 %tobool.not, label %while.cond.do.body.preheader_crit_edge, label %if.then

while.cond.do.body.preheader_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.do.body.preheader_crit_edge, %while.cond.do.body.preheader_crit_edge
  br label %do.body

if.then:                                          ; preds = %while.cond
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %rb.0, i32 0, i32 3
  %2 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__subtree_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp.not = icmp ult i32 %3, %start
  br i1 %cmp.not, label %if.then.do.body.preheader_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.do.body.preheader_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.preheader

while.body.i:                                     ; preds = %while.body.i.backedge, %if.then.while.body.i_crit_edge
  %node.addr.0.i = phi ptr [ %node.addr.0.i.be, %while.body.i.backedge ], [ %rb.0, %if.then.while.body.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.addr.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.body.i.if.end4.i_crit_edge, label %if.then.i

while.body.i.if.end4.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.i:                                        ; preds = %while.body.i
  %__subtree_last.i = getelementptr inbounds %struct.interval_tree_node, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__subtree_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %start)
  %cmp.not.i = icmp ult i32 %7, %start
  br i1 %cmp.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.while.body.i.backedge_crit_edge

if.then.i.while.body.i.backedge_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.backedge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %while.body.i.if.end4.i_crit_edge
  %start5.i = getelementptr inbounds %struct.interval_tree_node, ptr %node.addr.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %start5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %last)
  %cmp6.not.i = icmp ugt i32 %9, %last
  br i1 %cmp6.not.i, label %if.end4.i.cleanup23_crit_edge, label %if.then7.i

if.end4.i.cleanup23_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

if.then7.i:                                       ; preds = %if.end4.i
  %last8.i = getelementptr inbounds %struct.interval_tree_node, ptr %node.addr.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %last8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %start)
  %cmp9.not.i = icmp ult i32 %11, %start
  br i1 %cmp9.not.i, label %if.end11.i, label %if.then7.i.cleanup23_crit_edge

if.then7.i.cleanup23_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

if.end11.i:                                       ; preds = %if.then7.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.addr.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_right.i, align 4
  %tobool13.not.i = icmp eq ptr %13, null
  br i1 %tobool13.not.i, label %if.end11.i.cleanup23_crit_edge, label %if.then14.i

if.end11.i.cleanup23_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

if.then14.i:                                      ; preds = %if.end11.i
  %__subtree_last20.i = getelementptr inbounds %struct.interval_tree_node, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %__subtree_last20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__subtree_last20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %start)
  %cmp21.not.i = icmp ult i32 %15, %start
  br i1 %cmp21.not.i, label %if.then14.i.cleanup23_crit_edge, label %if.then14.i.while.body.i.backedge_crit_edge

if.then14.i.while.body.i.backedge_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.backedge

if.then14.i.cleanup23_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

while.body.i.backedge:                            ; preds = %if.then14.i.while.body.i.backedge_crit_edge, %if.then.i.while.body.i.backedge_crit_edge
  %node.addr.0.i.be = phi ptr [ %5, %if.then.i.while.body.i.backedge_crit_edge ], [ %13, %if.then14.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %do.body.preheader
  %node.addr.1 = phi ptr [ %18, %if.end7.do.body_crit_edge ], [ %node.addr.0, %do.body.preheader ]
  %16 = ptrtoint ptr %node.addr.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node.addr.1, align 4
  %and = and i32 %17, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup23_crit_edge, label %if.end7

do.body.cleanup23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

if.end7:                                          ; preds = %do.body
  %18 = inttoptr i32 %and to ptr
  %rb_right13 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %rb_right13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rb_right13, align 4
  %cmp14 = icmp eq ptr %node.addr.1, %20
  br i1 %cmp14, label %if.end7.do.body_crit_edge, label %do.end

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %if.end7
  %21 = inttoptr i32 %and to ptr
  %start15 = getelementptr inbounds %struct.interval_tree_node, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %start15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %last)
  %cmp16 = icmp ugt i32 %23, %last
  br i1 %cmp16, label %do.end.cleanup23_crit_edge, label %if.else

do.end.cleanup23_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

if.else:                                          ; preds = %do.end
  %last18 = getelementptr inbounds %struct.interval_tree_node, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %last18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last18, align 4
  %cmp19.not = icmp ult i32 %25, %start
  br i1 %cmp19.not, label %if.else.while.cond_crit_edge, label %cleanup23.loopexit51.split.loop.exit

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

cleanup23.loopexit51.split.loop.exit:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %26 = inttoptr i32 %and to ptr
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.loopexit51.split.loop.exit, %do.end.cleanup23_crit_edge, %do.body.cleanup23_crit_edge, %if.then14.i.cleanup23_crit_edge, %if.end11.i.cleanup23_crit_edge, %if.then7.i.cleanup23_crit_edge, %if.end4.i.cleanup23_crit_edge
  %retval.3 = phi ptr [ %26, %cleanup23.loopexit51.split.loop.exit ], [ null, %if.end4.i.cleanup23_crit_edge ], [ null, %if.then14.i.cleanup23_crit_edge ], [ null, %if.end11.i.cleanup23_crit_edge ], [ %node.addr.0.i, %if.then7.i.cleanup23_crit_edge ], [ null, %do.body.cleanup23_crit_edge ], [ null, %do.end.cleanup23_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @interval_tree_augment_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last = getelementptr inbounds %struct.interval_tree_node, ptr %rb_old, i32 0, i32 3
  %0 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__subtree_last, align 4
  %__subtree_last4 = getelementptr inbounds %struct.interval_tree_node, ptr %rb_new, i32 0, i32 3
  %2 = ptrtoint ptr %__subtree_last4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %__subtree_last4, align 4
  %last.i = getelementptr inbounds %struct.interval_tree_node, ptr %rb_old, i32 0, i32 2
  %3 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb_old, i32 0, i32 2
  %5 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last.i = getelementptr inbounds %struct.interval_tree_node, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__subtree_last.i, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %4) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %entry.if.end5.i_crit_edge
  %max.0.i = phi i32 [ %4, %entry.if.end5.i_crit_edge ], [ %9, %if.then.i ]
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb_old, i32 0, i32 1
  %10 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_right.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end5.i.interval_tree_augment_compute_max.exit_crit_edge, label %if.then8.i

if.end5.i.interval_tree_augment_compute_max.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %interval_tree_augment_compute_max.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %__subtree_last14.i = getelementptr inbounds %struct.interval_tree_node, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %__subtree_last14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__subtree_last14.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %max.0.i) #7
  br label %interval_tree_augment_compute_max.exit

interval_tree_augment_compute_max.exit:           ; preds = %if.then8.i, %if.end5.i.interval_tree_augment_compute_max.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end5.i.interval_tree_augment_compute_max.exit_crit_edge ], [ %14, %if.then8.i ]
  %15 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max.1.i, ptr %__subtree_last, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_interval_tree_insert, !1, !"__ksymtab_interval_tree_insert", i1 false, i1 false}
!1 = !{!"../lib/interval_tree.c", i32 14, i32 1}
!2 = !{ptr @__ksymtab_interval_tree_remove, !3, !"__ksymtab_interval_tree_remove", i1 false, i1 false}
!3 = !{!"../lib/interval_tree.c", i32 15, i32 1}
!4 = !{ptr @__ksymtab_interval_tree_iter_first, !5, !"__ksymtab_interval_tree_iter_first", i1 false, i1 false}
!5 = !{!"../lib/interval_tree.c", i32 16, i32 1}
!6 = !{ptr @__ksymtab_interval_tree_iter_next, !7, !"__ksymtab_interval_tree_iter_next", i1 false, i1 false}
!7 = !{!"../lib/interval_tree.c", i32 17, i32 1}
!8 = distinct !{null, !9, !"interval_tree_augment", i1 false, i1 false}
!9 = !{!"../lib/interval_tree.c", i32 10, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
