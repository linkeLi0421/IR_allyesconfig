; ModuleID = '/llk/IR_all_yes/mm/interval_tree.c_pt.bc'
source_filename = "../mm/interval_tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.80, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon_vma_chain = type { ptr, ptr, %struct.list_head, %struct.rb_node, i32, i32, i32 }

@anon_vma_interval_tree_verify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mm/interval_tree.c\00", [45 x i8] zeroinitializer }, align 32
@anon_vma_interval_tree_verify.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [22 x i8] c"../mm/interval_tree.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 108, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vma_interval_tree_insert(ptr noundef %node, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff.i, align 4
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node, align 4
  %sub.i.i = sub i32 %3, %5
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.i = add i32 %1, -1
  %sub.i = add i32 %add.i, %shr.i.i
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root, align 4
  %tobool.not29 = icmp eq ptr %7, null
  br i1 %tobool.not29, label %while.end.thread, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9
  %rb_subtree_last836 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 1
  %9 = ptrtoint ptr %rb_subtree_last836 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %rb_subtree_last836, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %8, align 4
  %rb_right.i37 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %rb_right.i37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rb_right.i37, align 4
  %rb_left.i38 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %rb_left.i38 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_left.i38, align 4
  %13 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %root, align 4
  br label %if.then.i

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %14 = phi ptr [ %21, %if.end.while.body_crit_edge ], [ %7, %entry.while.body_crit_edge ]
  %leftmost.0.off030 = phi i1 [ %leftmost.1.off0, %if.end.while.body_crit_edge ], [ true, %entry.while.body_crit_edge ]
  %rb_subtree_last = getelementptr inbounds %struct.anon.81, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rb_subtree_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub.i)
  %cmp = icmp ult i32 %16, %sub.i
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %rb_subtree_last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %vm_pgoff.i28 = getelementptr i8, ptr %14, i32 32
  %18 = ptrtoint ptr %vm_pgoff.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_pgoff.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %19)
  %cmp4 = icmp ult i32 %1, %19
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  %leftmost.1.off0 = select i1 %cmp4, i1 %leftmost.0.off030, i1 false
  %link.1 = select i1 %cmp4, ptr %rb_left, ptr %rb_right
  %20 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link.1, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end
  %phi.cast.le = ptrtoint ptr %14 to i32
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9
  %rb_subtree_last8 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 1
  %23 = ptrtoint ptr %rb_subtree_last8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %rb_subtree_last8, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %phi.cast.le, ptr %22, align 4
  %rb_right.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i, align 4
  %27 = ptrtoint ptr %link.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %link.1, align 4
  br i1 %leftmost.1.off0, label %while.end.if.then.i_crit_edge, label %while.end.rb_insert_augmented_cached.exit_crit_edge

while.end.rb_insert_augmented_cached.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rb_insert_augmented_cached.exit

while.end.if.then.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %while.end.if.then.i_crit_edge, %while.end.thread
  %28 = phi ptr [ %8, %while.end.thread ], [ %22, %while.end.if.then.i_crit_edge ]
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %29 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %rb_leftmost.i, align 4
  br label %rb_insert_augmented_cached.exit

rb_insert_augmented_cached.exit:                  ; preds = %if.then.i, %while.end.rb_insert_augmented_cached.exit_crit_edge
  %30 = phi ptr [ %22, %while.end.rb_insert_augmented_cached.exit_crit_edge ], [ %28, %if.then.i ]
  tail call void @__rb_insert_augmented(ptr noundef %30, ptr noundef %root, ptr noundef nonnull @vma_interval_tree_augment_rotate) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vma_interval_tree_remove(ptr noundef %node, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %1 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %2, %0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @rb_next(ptr noundef %0) #5
  %3 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %rb_right.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else6.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %and.i.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %12, %0
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %rb_left.i.i.i.i, ptr %rb_right.i.i.i.i
  br label %__rb_change_child.exit.i.i.i

__rb_change_child.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i = phi ptr [ %root, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.then.i.i.i.i ]
  %13 = ptrtoint ptr %rb_left.sink.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %5, ptr %rb_left.sink.i.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %__rb_change_child.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %5, align 4
  br label %__rb_erase_augmented.exit.thread.i.i

if.else.i.i.i:                                    ; preds = %__rb_change_child.exit.i.i.i
  %and4.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.else.i.i.i.__rb_erase_augmented.exit.thread.i.i_crit_edge, label %if.else.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge

if.else.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_erase_augmented.exit.i.i

if.else.i.i.i.__rb_erase_augmented.exit.thread.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_erase_augmented.exit.thread.i.i

if.else6.i.i.i:                                   ; preds = %if.end.i
  %tobool7.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.else12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %7, align 4
  %and11.i.i.i = and i32 %16, -4
  %18 = inttoptr i32 %and11.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool.not.i135.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool.not.i135.i.i.i, label %if.then8.i.i.i.__rb_change_child.exit142.i.i.i_crit_edge, label %if.then.i140.i.i.i

if.then8.i.i.i.__rb_change_child.exit142.i.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit142.i.i.i

if.then.i140.i.i.i:                               ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i136.i.i.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %rb_left.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rb_left.i136.i.i.i, align 4
  %cmp.i137.i.i.i = icmp eq ptr %20, %0
  %rb_right.i138.i.i.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %spec.select.i139.i.i.i = select i1 %cmp.i137.i.i.i, ptr %rb_left.i136.i.i.i, ptr %rb_right.i138.i.i.i
  br label %__rb_change_child.exit142.i.i.i

__rb_change_child.exit142.i.i.i:                  ; preds = %if.then.i140.i.i.i, %if.then8.i.i.i.__rb_change_child.exit142.i.i.i_crit_edge
  %rb_left.sink.i141.i.i.i = phi ptr [ %root, %if.then8.i.i.i.__rb_change_child.exit142.i.i.i_crit_edge ], [ %spec.select.i139.i.i.i, %if.then.i140.i.i.i ]
  %21 = ptrtoint ptr %rb_left.sink.i141.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %7, ptr %rb_left.sink.i141.i.i.i, align 4
  br label %__rb_erase_augmented.exit.thread.i.i

if.else12.i.i.i:                                  ; preds = %if.else6.i.i.i
  %rb_left13.i.i.i = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %rb_left13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_left13.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.else12.i.i.i.do.body.i.i.i_crit_edge

if.else12.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %if.else12.i.i.i
  br label %do.body.i.i.i

if.then15.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right16.i.i.i = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %rb_right16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rb_right16.i.i.i, align 4
  %rb_subtree_last.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 1
  %26 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rb_subtree_last.i, align 4
  %rb_subtree_last4.i = getelementptr inbounds %struct.anon.81, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %rb_subtree_last4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rb_subtree_last4.i, align 4
  %.pre.i.i.i = ptrtoint ptr %5 to i32
  br label %if.end42.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.else12.i.i.i.do.body.i.i.i_crit_edge
  %tmp.0.i.i.i = phi ptr [ %30, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %23, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %successor.0.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %5, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %rb_left18.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %rb_left18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rb_left18.i.i.i, align 4
  %tobool19.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool19.not.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %rb_right20.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %rb_right20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rb_right20.i.i.i, align 4
  %rb_left26.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %rb_left26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %rb_left26.i.i.i, align 4
  store volatile ptr %5, ptr %rb_right20.i.i.i, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %35, 1
  %36 = ptrtoint ptr %tmp.0.i.i.i to i32
  %or.i.i.i.i = or i32 %and.i.i.i.i, %36
  store i32 %or.i.i.i.i, ptr %5, align 4
  %rb_subtree_last.i1 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 1
  %37 = ptrtoint ptr %rb_subtree_last.i1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rb_subtree_last.i1, align 4
  %rb_subtree_last4.i2 = getelementptr inbounds %struct.anon.81, ptr %tmp.0.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %rb_subtree_last4.i2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rb_subtree_last4.i2, align 4
  %cmp.not8.i = icmp eq ptr %successor.0.i.i.i, %tmp.0.i.i.i
  br i1 %cmp.not8.i, label %do.end.i.i.i.if.end42.i.i.i_crit_edge, label %do.end.i.i.i.while.body.i_crit_edge

do.end.i.i.i.while.body.i_crit_edge:              ; preds = %do.end.i.i.i
  br label %while.body.i

do.end.i.i.i.if.end42.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.end.i.i.i.while.body.i_crit_edge
  %rb.addr.09.i = phi ptr [ %61, %cleanup.i.while.body.i_crit_edge ], [ %successor.0.i.i.i, %do.end.i.i.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %rb.addr.09.i, i32 -44
  %vm_pgoff.i.i.i = getelementptr i8, ptr %rb.addr.09.i, i32 32
  %40 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_pgoff.i.i.i, align 4
  %vm_end.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i, i32 -40
  %42 = ptrtoint ptr %vm_end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vm_end.i.i.i.i, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %sub.i.i.i.i = sub i32 %43, %45
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.i.i.i = add i32 %41, -1
  %sub.i.i.i = add i32 %add.i.i.i, %shr.i.i.i.i
  %rb_left.i.i = getelementptr i8, ptr %rb.addr.09.i, i32 8
  %46 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i3 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i3, label %while.body.i.if.end5.i.i_crit_edge, label %if.then.i.i4

while.body.i.if.end5.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i

if.then.i.i4:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i.i = getelementptr inbounds %struct.anon.81, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %rb_subtree_last.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rb_subtree_last.i.i, align 4
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 %sub.i.i.i) #5
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then.i.i4, %while.body.i.if.end5.i.i_crit_edge
  %max.0.i.i = phi i32 [ %sub.i.i.i, %while.body.i.if.end5.i.i_crit_edge ], [ %50, %if.then.i.i4 ]
  %rb_right.i.i = getelementptr i8, ptr %rb.addr.09.i, i32 4
  %51 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rb_right.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %52, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end19.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end19.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i.i = getelementptr inbounds %struct.anon.81, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %rb_subtree_last14.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rb_subtree_last14.i.i, align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 %max.0.i.i) #5
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end19.i.i_crit_edge
  %max.1.i.i = phi i32 [ %max.0.i.i, %if.end5.i.i.if.end19.i.i_crit_edge ], [ %55, %if.then8.i.i ]
  %rb_subtree_last21.i.i = getelementptr i8, ptr %rb.addr.09.i, i32 12
  %56 = ptrtoint ptr %rb_subtree_last21.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rb_subtree_last21.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %max.1.i.i)
  %cmp22.i.i = icmp eq i32 %57, %max.1.i.i
  br i1 %cmp22.i.i, label %if.end19.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i

if.end19.i.i.if.end42.i.i.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i

cleanup.i:                                        ; preds = %if.end19.i.i
  %58 = ptrtoint ptr %rb_subtree_last21.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %max.1.i.i, ptr %rb_subtree_last21.i.i, align 4
  %59 = ptrtoint ptr %rb.addr.09.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rb.addr.09.i, align 4
  %and.i = and i32 %60, -4
  %61 = inttoptr i32 %and.i to ptr
  %cmp.not.i = icmp eq ptr %tmp.0.i.i.i, %61
  br i1 %cmp.not.i, label %cleanup.i.if.end42.i.i.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cleanup.i.if.end42.i.i.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %cleanup.i.if.end42.i.i.i_crit_edge, %if.end19.i.i.if.end42.i.i.i_crit_edge, %do.end.i.i.i.if.end42.i.i.i_crit_edge, %if.then15.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %if.then15.i.i.i ], [ %36, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %36, %if.end19.i.i.if.end42.i.i.i_crit_edge ], [ %36, %cleanup.i.if.end42.i.i.i_crit_edge ]
  %parent.0.i.i.i = phi ptr [ %5, %if.then15.i.i.i ], [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %successor.0.i.i.i, %if.end19.i.i.if.end42.i.i.i_crit_edge ], [ %successor.0.i.i.i, %cleanup.i.if.end42.i.i.i_crit_edge ]
  %successor.1.i.i.i = phi ptr [ %5, %if.then15.i.i.i ], [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %tmp.0.i.i.i, %if.end19.i.i.if.end42.i.i.i_crit_edge ], [ %tmp.0.i.i.i, %cleanup.i.if.end42.i.i.i_crit_edge ]
  %child2.0.i.i.i = phi ptr [ %25, %if.then15.i.i.i ], [ %32, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %32, %if.end19.i.i.if.end42.i.i.i_crit_edge ], [ %32, %cleanup.i.if.end42.i.i.i_crit_edge ]
  %62 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rb_left.i.i.i, align 4
  %rb_left49.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %rb_left49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %63, ptr %rb_left49.i.i.i, align 4
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %63, align 4
  %and.i143.i.i.i = and i32 %66, 1
  %or.i144.i.i.i = or i32 %and.i143.i.i.i, %.pre-phi.i.i.i
  store i32 %or.i144.i.i.i, ptr %63, align 4
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %0, align 4
  %and55.i.i.i = and i32 %68, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i)
  %tobool.not.i145.i.i.i = icmp eq i32 %and55.i.i.i, 0
  br i1 %tobool.not.i145.i.i.i, label %if.end42.i.i.i.__rb_change_child.exit152.i.i.i_crit_edge, label %if.then.i150.i.i.i

if.end42.i.i.i.__rb_change_child.exit152.i.i.i_crit_edge: ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit152.i.i.i

if.then.i150.i.i.i:                               ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = inttoptr i32 %and55.i.i.i to ptr
  %rb_left.i146.i.i.i = getelementptr inbounds %struct.rb_node, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %rb_left.i146.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rb_left.i146.i.i.i, align 4
  %cmp.i147.i.i.i = icmp eq ptr %71, %0
  %rb_right.i148.i.i.i = getelementptr inbounds %struct.rb_node, ptr %69, i32 0, i32 1
  %spec.select.i149.i.i.i = select i1 %cmp.i147.i.i.i, ptr %rb_left.i146.i.i.i, ptr %rb_right.i148.i.i.i
  br label %__rb_change_child.exit152.i.i.i

__rb_change_child.exit152.i.i.i:                  ; preds = %if.then.i150.i.i.i, %if.end42.i.i.i.__rb_change_child.exit152.i.i.i_crit_edge
  %rb_left.sink.i151.i.i.i = phi ptr [ %root, %if.end42.i.i.i.__rb_change_child.exit152.i.i.i_crit_edge ], [ %spec.select.i149.i.i.i, %if.then.i150.i.i.i ]
  %72 = ptrtoint ptr %rb_left.sink.i151.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %successor.1.i.i.i, ptr %rb_left.sink.i151.i.i.i, align 4
  %tobool56.not.i.i.i = icmp eq ptr %child2.0.i.i.i, null
  br i1 %tobool56.not.i.i.i, label %if.else58.i.i.i, label %if.then57.i.i.i

if.then57.i.i.i:                                  ; preds = %__rb_change_child.exit152.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %parent.0.i.i.i to i32
  %or.i153.i.i.i = or i32 %73, 1
  %74 = ptrtoint ptr %child2.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i153.i.i.i, ptr %child2.0.i.i.i, align 4
  br label %if.end66.i.i.i

if.else58.i.i.i:                                  ; preds = %__rb_change_child.exit152.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %successor.1.i.i.i, align 4
  %and60.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i)
  %tobool61.not.i.i.i = icmp eq i32 %and60.i.i.i, 0
  %spec.select134.i.i.i = select i1 %tobool61.not.i.i.i, ptr null, ptr %parent.0.i.i.i
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.else58.i.i.i, %if.then57.i.i.i
  %rebalance.1.i.i.i = phi ptr [ null, %if.then57.i.i.i ], [ %spec.select134.i.i.i, %if.else58.i.i.i ]
  %77 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %68, ptr %successor.1.i.i.i, align 4
  br label %__rb_erase_augmented.exit.i.i

__rb_erase_augmented.exit.thread.i.i:             ; preds = %__rb_change_child.exit142.i.i.i, %if.else.i.i.i.__rb_erase_augmented.exit.thread.i.i_crit_edge, %if.then2.i.i.i
  %tmp.1.i.ph.i.i = phi ptr [ %10, %if.then2.i.i.i ], [ %18, %__rb_change_child.exit142.i.i.i ], [ %10, %if.else.i.i.i.__rb_erase_augmented.exit.thread.i.i_crit_edge ]
  %cmp.not8.i5 = icmp eq ptr %tmp.1.i.ph.i.i, null
  br i1 %cmp.not8.i5, label %__rb_erase_augmented.exit.thread.i.i.rb_erase_augmented_cached.exit_crit_edge, label %__rb_erase_augmented.exit.thread.i.i.while.body.i16_crit_edge

__rb_erase_augmented.exit.thread.i.i.while.body.i16_crit_edge: ; preds = %__rb_erase_augmented.exit.thread.i.i
  br label %while.body.i16

__rb_erase_augmented.exit.thread.i.i.rb_erase_augmented_cached.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rb_erase_augmented_cached.exit

while.body.i16:                                   ; preds = %cleanup.i31.while.body.i16_crit_edge, %__rb_erase_augmented.exit.thread.i.i.while.body.i16_crit_edge
  %rb.addr.09.i6 = phi ptr [ %99, %cleanup.i31.while.body.i16_crit_edge ], [ %tmp.1.i.ph.i.i, %__rb_erase_augmented.exit.thread.i.i.while.body.i16_crit_edge ]
  %add.ptr.i7 = getelementptr i8, ptr %rb.addr.09.i6, i32 -44
  %vm_pgoff.i.i.i8 = getelementptr i8, ptr %rb.addr.09.i6, i32 32
  %78 = ptrtoint ptr %vm_pgoff.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vm_pgoff.i.i.i8, align 4
  %vm_end.i.i.i.i9 = getelementptr i8, ptr %rb.addr.09.i6, i32 -40
  %80 = ptrtoint ptr %vm_end.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vm_end.i.i.i.i9, align 4
  %82 = ptrtoint ptr %add.ptr.i7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i7, align 4
  %sub.i.i.i.i10 = sub i32 %81, %83
  %shr.i.i.i.i11 = lshr i32 %sub.i.i.i.i10, 12
  %add.i.i.i12 = add i32 %79, -1
  %sub.i.i.i13 = add i32 %add.i.i.i12, %shr.i.i.i.i11
  %rb_left.i.i14 = getelementptr i8, ptr %rb.addr.09.i6, i32 8
  %84 = ptrtoint ptr %rb_left.i.i14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rb_left.i.i14, align 4
  %tobool.not.i.i15 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i15, label %while.body.i16.if.end5.i.i22_crit_edge, label %if.then.i.i18

while.body.i16.if.end5.i.i22_crit_edge:           ; preds = %while.body.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i22

if.then.i.i18:                                    ; preds = %while.body.i16
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i.i17 = getelementptr inbounds %struct.anon.81, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %rb_subtree_last.i.i17 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rb_subtree_last.i.i17, align 4
  %88 = tail call i32 @llvm.umax.i32(i32 %87, i32 %sub.i.i.i13) #5
  br label %if.end5.i.i22

if.end5.i.i22:                                    ; preds = %if.then.i.i18, %while.body.i16.if.end5.i.i22_crit_edge
  %max.0.i.i19 = phi i32 [ %sub.i.i.i13, %while.body.i16.if.end5.i.i22_crit_edge ], [ %88, %if.then.i.i18 ]
  %rb_right.i.i20 = getelementptr i8, ptr %rb.addr.09.i6, i32 4
  %89 = ptrtoint ptr %rb_right.i.i20 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rb_right.i.i20, align 4
  %tobool7.not.i.i21 = icmp eq ptr %90, null
  br i1 %tobool7.not.i.i21, label %if.end5.i.i22.if.end19.i.i28_crit_edge, label %if.then8.i.i24

if.end5.i.i22.if.end19.i.i28_crit_edge:           ; preds = %if.end5.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i28

if.then8.i.i24:                                   ; preds = %if.end5.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i.i23 = getelementptr inbounds %struct.anon.81, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %rb_subtree_last14.i.i23 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rb_subtree_last14.i.i23, align 4
  %93 = tail call i32 @llvm.umax.i32(i32 %92, i32 %max.0.i.i19) #5
  br label %if.end19.i.i28

if.end19.i.i28:                                   ; preds = %if.then8.i.i24, %if.end5.i.i22.if.end19.i.i28_crit_edge
  %max.1.i.i25 = phi i32 [ %max.0.i.i19, %if.end5.i.i22.if.end19.i.i28_crit_edge ], [ %93, %if.then8.i.i24 ]
  %rb_subtree_last21.i.i26 = getelementptr i8, ptr %rb.addr.09.i6, i32 12
  %94 = ptrtoint ptr %rb_subtree_last21.i.i26 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rb_subtree_last21.i.i26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %max.1.i.i25)
  %cmp22.i.i27 = icmp eq i32 %95, %max.1.i.i25
  br i1 %cmp22.i.i27, label %if.end19.i.i28.rb_erase_augmented_cached.exit_crit_edge, label %cleanup.i31

if.end19.i.i28.rb_erase_augmented_cached.exit_crit_edge: ; preds = %if.end19.i.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %rb_erase_augmented_cached.exit

cleanup.i31:                                      ; preds = %if.end19.i.i28
  %96 = ptrtoint ptr %rb_subtree_last21.i.i26 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %max.1.i.i25, ptr %rb_subtree_last21.i.i26, align 4
  %97 = ptrtoint ptr %rb.addr.09.i6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rb.addr.09.i6, align 4
  %and.i29 = and i32 %98, -4
  %99 = inttoptr i32 %and.i29 to ptr
  %cmp.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %cmp.not.i30, label %cleanup.i31.rb_erase_augmented_cached.exit_crit_edge, label %cleanup.i31.while.body.i16_crit_edge

cleanup.i31.while.body.i16_crit_edge:             ; preds = %cleanup.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i16

cleanup.i31.rb_erase_augmented_cached.exit_crit_edge: ; preds = %cleanup.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %rb_erase_augmented_cached.exit

__rb_erase_augmented.exit.i.i:                    ; preds = %if.end66.i.i.i, %if.else.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge
  %tmp.1.i.i.i = phi ptr [ %successor.1.i.i.i, %if.end66.i.i.i ], [ %10, %if.else.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge ]
  %rebalance.2.i.i.i = phi ptr [ %rebalance.1.i.i.i, %if.end66.i.i.i ], [ %10, %if.else.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge ]
  %cmp.not8.i33 = icmp eq ptr %tmp.1.i.i.i, null
  br i1 %cmp.not8.i33, label %__rb_erase_augmented.exit.i.i.vma_interval_tree_augment_propagate.exit60_crit_edge, label %__rb_erase_augmented.exit.i.i.while.body.i44_crit_edge

__rb_erase_augmented.exit.i.i.while.body.i44_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i
  br label %while.body.i44

__rb_erase_augmented.exit.i.i.vma_interval_tree_augment_propagate.exit60_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vma_interval_tree_augment_propagate.exit60

while.body.i44:                                   ; preds = %cleanup.i59.while.body.i44_crit_edge, %__rb_erase_augmented.exit.i.i.while.body.i44_crit_edge
  %rb.addr.09.i34 = phi ptr [ %121, %cleanup.i59.while.body.i44_crit_edge ], [ %tmp.1.i.i.i, %__rb_erase_augmented.exit.i.i.while.body.i44_crit_edge ]
  %add.ptr.i35 = getelementptr i8, ptr %rb.addr.09.i34, i32 -44
  %vm_pgoff.i.i.i36 = getelementptr i8, ptr %rb.addr.09.i34, i32 32
  %100 = ptrtoint ptr %vm_pgoff.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vm_pgoff.i.i.i36, align 4
  %vm_end.i.i.i.i37 = getelementptr i8, ptr %rb.addr.09.i34, i32 -40
  %102 = ptrtoint ptr %vm_end.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vm_end.i.i.i.i37, align 4
  %104 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i35, align 4
  %sub.i.i.i.i38 = sub i32 %103, %105
  %shr.i.i.i.i39 = lshr i32 %sub.i.i.i.i38, 12
  %add.i.i.i40 = add i32 %101, -1
  %sub.i.i.i41 = add i32 %add.i.i.i40, %shr.i.i.i.i39
  %rb_left.i.i42 = getelementptr i8, ptr %rb.addr.09.i34, i32 8
  %106 = ptrtoint ptr %rb_left.i.i42 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rb_left.i.i42, align 4
  %tobool.not.i.i43 = icmp eq ptr %107, null
  br i1 %tobool.not.i.i43, label %while.body.i44.if.end5.i.i50_crit_edge, label %if.then.i.i46

while.body.i44.if.end5.i.i50_crit_edge:           ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i50

if.then.i.i46:                                    ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i.i45 = getelementptr inbounds %struct.anon.81, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %rb_subtree_last.i.i45 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rb_subtree_last.i.i45, align 4
  %110 = tail call i32 @llvm.umax.i32(i32 %109, i32 %sub.i.i.i41) #5
  br label %if.end5.i.i50

if.end5.i.i50:                                    ; preds = %if.then.i.i46, %while.body.i44.if.end5.i.i50_crit_edge
  %max.0.i.i47 = phi i32 [ %sub.i.i.i41, %while.body.i44.if.end5.i.i50_crit_edge ], [ %110, %if.then.i.i46 ]
  %rb_right.i.i48 = getelementptr i8, ptr %rb.addr.09.i34, i32 4
  %111 = ptrtoint ptr %rb_right.i.i48 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rb_right.i.i48, align 4
  %tobool7.not.i.i49 = icmp eq ptr %112, null
  br i1 %tobool7.not.i.i49, label %if.end5.i.i50.if.end19.i.i56_crit_edge, label %if.then8.i.i52

if.end5.i.i50.if.end19.i.i56_crit_edge:           ; preds = %if.end5.i.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i56

if.then8.i.i52:                                   ; preds = %if.end5.i.i50
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i.i51 = getelementptr inbounds %struct.anon.81, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %rb_subtree_last14.i.i51 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rb_subtree_last14.i.i51, align 4
  %115 = tail call i32 @llvm.umax.i32(i32 %114, i32 %max.0.i.i47) #5
  br label %if.end19.i.i56

if.end19.i.i56:                                   ; preds = %if.then8.i.i52, %if.end5.i.i50.if.end19.i.i56_crit_edge
  %max.1.i.i53 = phi i32 [ %max.0.i.i47, %if.end5.i.i50.if.end19.i.i56_crit_edge ], [ %115, %if.then8.i.i52 ]
  %rb_subtree_last21.i.i54 = getelementptr i8, ptr %rb.addr.09.i34, i32 12
  %116 = ptrtoint ptr %rb_subtree_last21.i.i54 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rb_subtree_last21.i.i54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %max.1.i.i53)
  %cmp22.i.i55 = icmp eq i32 %117, %max.1.i.i53
  br i1 %cmp22.i.i55, label %if.end19.i.i56.vma_interval_tree_augment_propagate.exit60_crit_edge, label %cleanup.i59

if.end19.i.i56.vma_interval_tree_augment_propagate.exit60_crit_edge: ; preds = %if.end19.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %vma_interval_tree_augment_propagate.exit60

cleanup.i59:                                      ; preds = %if.end19.i.i56
  %118 = ptrtoint ptr %rb_subtree_last21.i.i54 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %max.1.i.i53, ptr %rb_subtree_last21.i.i54, align 4
  %119 = ptrtoint ptr %rb.addr.09.i34 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rb.addr.09.i34, align 4
  %and.i57 = and i32 %120, -4
  %121 = inttoptr i32 %and.i57 to ptr
  %cmp.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %cmp.not.i58, label %cleanup.i59.vma_interval_tree_augment_propagate.exit60_crit_edge, label %cleanup.i59.while.body.i44_crit_edge

cleanup.i59.while.body.i44_crit_edge:             ; preds = %cleanup.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i44

cleanup.i59.vma_interval_tree_augment_propagate.exit60_crit_edge: ; preds = %cleanup.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %vma_interval_tree_augment_propagate.exit60

vma_interval_tree_augment_propagate.exit60:       ; preds = %cleanup.i59.vma_interval_tree_augment_propagate.exit60_crit_edge, %if.end19.i.i56.vma_interval_tree_augment_propagate.exit60_crit_edge, %__rb_erase_augmented.exit.i.i.vma_interval_tree_augment_propagate.exit60_crit_edge
  %tobool.not.i.i = icmp eq ptr %rebalance.2.i.i.i, null
  br i1 %tobool.not.i.i, label %vma_interval_tree_augment_propagate.exit60.rb_erase_augmented_cached.exit_crit_edge, label %if.then.i.i

vma_interval_tree_augment_propagate.exit60.rb_erase_augmented_cached.exit_crit_edge: ; preds = %vma_interval_tree_augment_propagate.exit60
  call void @__sanitizer_cov_trace_pc() #7
  br label %rb_erase_augmented_cached.exit

if.then.i.i:                                      ; preds = %vma_interval_tree_augment_propagate.exit60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i, ptr noundef %root, ptr noundef nonnull @vma_interval_tree_augment_rotate) #5
  br label %rb_erase_augmented_cached.exit

rb_erase_augmented_cached.exit:                   ; preds = %if.then.i.i, %vma_interval_tree_augment_propagate.exit60.rb_erase_augmented_cached.exit_crit_edge, %cleanup.i31.rb_erase_augmented_cached.exit_crit_edge, %if.end19.i.i28.rb_erase_augmented_cached.exit_crit_edge, %__rb_erase_augmented.exit.thread.i.i.rb_erase_augmented_cached.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vma_interval_tree_iter_first(ptr nocapture noundef readonly %root, i32 noundef %start, i32 noundef %last) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rb_subtree_last = getelementptr inbounds %struct.anon.81, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb_subtree_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp = icmp ult i32 %3, %start
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %4 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost, align 4
  %vm_pgoff.i = getelementptr i8, ptr %5, i32 32
  %6 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %last)
  %cmp8 = icmp ugt i32 %7, %last
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %if.end4.while.body.i_crit_edge

if.end4.while.body.i_crit_edge:                   ; preds = %if.end4
  br label %while.body.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.backedge, %if.end4.while.body.i_crit_edge
  %.pn.i.pn = phi ptr [ %.pn.i.pn.be, %while.body.i.backedge ], [ %1, %if.end4.while.body.i_crit_edge ]
  %node.addr.0.i = getelementptr i8, ptr %.pn.i.pn, i32 -44
  %rb_left.i = getelementptr i8, ptr %.pn.i.pn, i32 8
  %8 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body.i.if.end4.i_crit_edge, label %if.then.i

while.body.i.if.end4.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %while.body.i
  %rb_subtree_last.i = getelementptr inbounds %struct.anon.81, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rb_subtree_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %start)
  %cmp.not.i = icmp ult i32 %11, %start
  br i1 %cmp.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.while.body.i.backedge_crit_edge

if.then.i.while.body.i.backedge_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.backedge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %while.body.i.if.end4.i_crit_edge
  %vm_pgoff.i.i = getelementptr i8, ptr %.pn.i.pn, i32 32
  %12 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_pgoff.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %last)
  %cmp5.not.i = icmp ugt i32 %13, %last
  br i1 %cmp5.not.i, label %if.end4.i.cleanup_crit_edge, label %if.then6.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.i:                                       ; preds = %if.end4.i
  %vm_end.i.i.i = getelementptr i8, ptr %.pn.i.pn, i32 -40
  %14 = ptrtoint ptr %vm_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end.i.i.i, align 4
  %16 = ptrtoint ptr %node.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node.addr.0.i, align 4
  %sub.i.i.i = sub i32 %15, %17
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.i.i = add i32 %13, -1
  %sub.i.i = add i32 %add.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %start)
  %cmp8.not.i = icmp ult i32 %sub.i.i, %start
  br i1 %cmp8.not.i, label %if.end10.i, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.then6.i
  %rb_right.i = getelementptr i8, ptr %.pn.i.pn, i32 4
  %18 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_right.i, align 4
  %tobool12.not.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %if.then13.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.i:                                      ; preds = %if.end10.i
  %rb_subtree_last19.i = getelementptr inbounds %struct.anon.81, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %rb_subtree_last19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb_subtree_last19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %start)
  %cmp20.not.i = icmp ult i32 %21, %start
  br i1 %cmp20.not.i, label %if.then13.i.cleanup_crit_edge, label %if.then13.i.while.body.i.backedge_crit_edge

if.then13.i.while.body.i.backedge_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.backedge

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.backedge:                            ; preds = %if.then13.i.while.body.i.backedge_crit_edge, %if.then.i.while.body.i.backedge_crit_edge
  %.pn.i.pn.be = phi ptr [ %9, %if.then.i.while.body.i.backedge_crit_edge ], [ %19, %if.then13.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

cleanup:                                          ; preds = %if.then13.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %if.end4.i.cleanup_crit_edge ], [ null, %if.then13.i.cleanup_crit_edge ], [ null, %if.end10.i.cleanup_crit_edge ], [ %node.addr.0.i, %if.then6.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vma_interval_tree_iter_next(ptr noundef readonly %node, i32 noundef %start, i32 noundef %last) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_right = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_right, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %entry
  %rb.0 = phi ptr [ %1, %entry ], [ %23, %if.else.while.cond_crit_edge ]
  %node.addr.0 = phi ptr [ %node, %entry ], [ %add.ptr11, %if.else.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %rb.0, null
  br i1 %tobool.not, label %while.cond.do.body.preheader_crit_edge, label %if.then

while.cond.do.body.preheader_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.do.body.preheader_crit_edge, %while.cond.do.body.preheader_crit_edge
  br label %do.body

if.then:                                          ; preds = %while.cond
  %rb_subtree_last = getelementptr inbounds %struct.anon.81, ptr %rb.0, i32 0, i32 1
  %2 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb_subtree_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp.not = icmp ult i32 %3, %start
  br i1 %cmp.not, label %if.then.do.body.preheader_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.do.body.preheader_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.preheader

while.body.i:                                     ; preds = %while.body.i.backedge, %if.then.while.body.i_crit_edge
  %rb.0.pn = phi ptr [ %rb.0.pn.be, %while.body.i.backedge ], [ %rb.0, %if.then.while.body.i_crit_edge ]
  %node.addr.0.i = getelementptr i8, ptr %rb.0.pn, i32 -44
  %rb_left.i = getelementptr i8, ptr %rb.0.pn, i32 8
  %4 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.body.i.if.end4.i_crit_edge, label %if.then.i

while.body.i.if.end4.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %while.body.i
  %rb_subtree_last.i = getelementptr inbounds %struct.anon.81, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rb_subtree_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %start)
  %cmp.not.i = icmp ult i32 %7, %start
  br i1 %cmp.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.while.body.i.backedge_crit_edge

if.then.i.while.body.i.backedge_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.backedge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %while.body.i.if.end4.i_crit_edge
  %vm_pgoff.i.i = getelementptr i8, ptr %rb.0.pn, i32 32
  %8 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %last)
  %cmp5.not.i = icmp ugt i32 %9, %last
  br i1 %cmp5.not.i, label %if.end4.i.cleanup23_crit_edge, label %if.then6.i

if.end4.i.cleanup23_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.then6.i:                                       ; preds = %if.end4.i
  %vm_end.i.i.i = getelementptr i8, ptr %rb.0.pn, i32 -40
  %10 = ptrtoint ptr %vm_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end.i.i.i, align 4
  %12 = ptrtoint ptr %node.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node.addr.0.i, align 4
  %sub.i.i.i = sub i32 %11, %13
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.i.i = add i32 %9, -1
  %sub.i.i = add i32 %add.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %start)
  %cmp8.not.i = icmp ult i32 %sub.i.i, %start
  br i1 %cmp8.not.i, label %if.end10.i, label %if.then6.i.cleanup23_crit_edge

if.then6.i.cleanup23_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.end10.i:                                       ; preds = %if.then6.i
  %rb_right.i = getelementptr i8, ptr %rb.0.pn, i32 4
  %14 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_right.i, align 4
  %tobool12.not.i = icmp eq ptr %15, null
  br i1 %tobool12.not.i, label %if.end10.i.cleanup23_crit_edge, label %if.then13.i

if.end10.i.cleanup23_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.then13.i:                                      ; preds = %if.end10.i
  %rb_subtree_last19.i = getelementptr inbounds %struct.anon.81, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %rb_subtree_last19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb_subtree_last19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %start)
  %cmp20.not.i = icmp ult i32 %17, %start
  br i1 %cmp20.not.i, label %if.then13.i.cleanup23_crit_edge, label %if.then13.i.while.body.i.backedge_crit_edge

if.then13.i.while.body.i.backedge_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.backedge

if.then13.i.cleanup23_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

while.body.i.backedge:                            ; preds = %if.then13.i.while.body.i.backedge_crit_edge, %if.then.i.while.body.i.backedge_crit_edge
  %rb.0.pn.be = phi ptr [ %5, %if.then.i.while.body.i.backedge_crit_edge ], [ %15, %if.then13.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %do.body.preheader
  %node.addr.1 = phi ptr [ %add.ptr11, %if.end7.do.body_crit_edge ], [ %node.addr.0, %do.body.preheader ]
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %node.addr.1, i32 0, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and = and i32 %20, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup23_crit_edge, label %if.end7

do.body.cleanup23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.end7:                                          ; preds = %do.body
  %21 = inttoptr i32 %and to ptr
  %add.ptr11 = getelementptr i8, ptr %21, i32 -44
  %rb_right13 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %rb_right13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_right13, align 4
  %cmp14 = icmp eq ptr %18, %23
  br i1 %cmp14, label %if.end7.do.body_crit_edge, label %do.end

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %if.end7
  %24 = inttoptr i32 %and to ptr
  %vm_pgoff.i = getelementptr i8, ptr %24, i32 32
  %25 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %last)
  %cmp16 = icmp ugt i32 %26, %last
  br i1 %cmp16, label %do.end.cleanup23_crit_edge, label %if.else

do.end.cleanup23_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.else:                                          ; preds = %do.end
  %vm_end.i.i = getelementptr i8, ptr %24, i32 -40
  %27 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_end.i.i, align 4
  %29 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr11, align 4
  %sub.i.i41 = sub i32 %28, %30
  %shr.i.i = lshr i32 %sub.i.i41, 12
  %add.i = add i32 %26, -1
  %sub.i = add i32 %add.i, %shr.i.i
  %cmp19.not = icmp ult i32 %sub.i, %start
  br i1 %cmp19.not, label %if.else.while.cond_crit_edge, label %if.else.cleanup23_crit_edge

if.else.cleanup23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

cleanup23:                                        ; preds = %if.else.cleanup23_crit_edge, %do.end.cleanup23_crit_edge, %do.body.cleanup23_crit_edge, %if.then13.i.cleanup23_crit_edge, %if.end10.i.cleanup23_crit_edge, %if.then6.i.cleanup23_crit_edge, %if.end4.i.cleanup23_crit_edge
  %retval.3 = phi ptr [ null, %if.end4.i.cleanup23_crit_edge ], [ null, %if.then13.i.cleanup23_crit_edge ], [ null, %if.end10.i.cleanup23_crit_edge ], [ %node.addr.0.i, %if.then6.i.cleanup23_crit_edge ], [ null, %do.body.cleanup23_crit_edge ], [ %add.ptr11, %if.else.cleanup23_crit_edge ], [ null, %do.end.cleanup23_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vma_interval_tree_insert_after(ptr noundef %node, ptr noundef %prev, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff.i, align 4
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node, align 4
  %sub.i.i = sub i32 %3, %5
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.i = add i32 %1, -1
  %sub.i = add i32 %add.i, %shr.i.i
  %vm_pgoff.i61 = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff.i61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp.not = icmp eq i32 %1, %7
  br i1 %cmp.not, label %do.end9, label %if.then, !prof !18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_vma(ptr noundef %node) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/interval_tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #5, !srcloc !19
  unreachable

do.end9:                                          ; preds = %entry
  %rb_right = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 9, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_right, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end9.if.end34_crit_edge, label %if.else

do.end9.if.end34_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.else:                                          ; preds = %do.end9
  %rb_subtree_last = getelementptr inbounds %struct.anon.81, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rb_subtree_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub.i)
  %cmp16 = icmp ult i32 %11, %sub.i
  br i1 %cmp16, label %if.then17, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i, ptr %rb_subtree_last, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else.if.end19_crit_edge
  %rb_left63 = getelementptr i8, ptr %9, i32 8
  %13 = ptrtoint ptr %rb_left63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_left63, align 4
  %tobool21.not64 = icmp eq ptr %14, null
  br i1 %tobool21.not64, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %if.end19.while.body_crit_edge
  %15 = phi ptr [ %20, %if.end31.while.body_crit_edge ], [ %14, %if.end19.while.body_crit_edge ]
  %rb_subtree_last27 = getelementptr inbounds %struct.anon.81, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %rb_subtree_last27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb_subtree_last27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub.i)
  %cmp28 = icmp ult i32 %17, %sub.i
  br i1 %cmp28, label %if.then29, label %while.body.if.end31_crit_edge

while.body.if.end31_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then29:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %rb_subtree_last27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %rb_subtree_last27, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %while.body.if.end31_crit_edge
  %rb_left = getelementptr i8, ptr %15, i32 8
  %19 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rb_left, align 4
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %if.end31.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %if.end19.while.end_crit_edge
  %.pn.lcssa62 = phi ptr [ %9, %if.end19.while.end_crit_edge ], [ %15, %if.end31.while.end_crit_edge ]
  %rb_left.le = getelementptr i8, ptr %.pn.lcssa62, i32 8
  %parent.0 = getelementptr i8, ptr %.pn.lcssa62, i32 -44
  br label %if.end34

if.end34:                                         ; preds = %while.end, %do.end9.if.end34_crit_edge
  %parent.1 = phi ptr [ %parent.0, %while.end ], [ %prev, %do.end9.if.end34_crit_edge ]
  %link.0 = phi ptr [ %rb_left.le, %while.end ], [ %rb_right, %do.end9.if.end34_crit_edge ]
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9
  %rb_subtree_last35 = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 1
  %22 = ptrtoint ptr %rb_subtree_last35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i, ptr %rb_subtree_last35, align 4
  %23 = getelementptr inbounds %struct.vm_area_struct, ptr %parent.1, i32 0, i32 9
  %24 = ptrtoint ptr %23 to i32
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %21, align 4
  %rb_right.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.vm_area_struct, ptr %node, i32 0, i32 9, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i, align 4
  %28 = ptrtoint ptr %link.0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %link.0, align 4
  tail call void @__rb_insert_augmented(ptr noundef %21, ptr noundef %root, ptr noundef nonnull @vma_interval_tree_augment_rotate) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @anon_vma_interval_tree_insert(ptr noundef %node, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff.i.i, align 4
  %cached_vma_start = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 5
  %4 = ptrtoint ptr %cached_vma_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cached_vma_start, align 4
  %5 = load i32, ptr %vm_pgoff.i.i, align 4
  %vm_end.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end.i.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %sub.i.i.i = sub i32 %7, %9
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.i.i = add i32 %5, -1
  %sub.i.i = add i32 %add.i.i, %shr.i.i.i
  %cached_vma_last = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 6
  %10 = ptrtoint ptr %cached_vma_last to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i.i, ptr %cached_vma_last, align 4
  %11 = load i32, ptr %vm_pgoff.i.i, align 4
  %12 = load i32, ptr %vm_end.i.i.i, align 4
  %13 = load i32, ptr %1, align 4
  %sub.i.i.i.i = sub i32 %12, %13
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.i.i.i = add i32 %11, -1
  %sub.i.i.i7 = add i32 %add.i.i.i, %shr.i.i.i.i
  %14 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root, align 4
  %tobool.not29.i = icmp eq ptr %15, null
  br i1 %tobool.not29.i, label %while.end.thread.i, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.end.thread.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last836.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 4
  %16 = ptrtoint ptr %rb_subtree_last836.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i.i.i7, ptr %rb_subtree_last836.i, align 4
  %rb937.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3
  %17 = ptrtoint ptr %rb937.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rb937.i, align 4
  %rb_right.i38.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %rb_right.i38.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_right.i38.i, align 4
  %rb_left.i39.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %rb_left.i39.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rb_left.i39.i, align 4
  %20 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rb937.i, ptr %root, align 4
  br label %if.then.i.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %21 = phi ptr [ %30, %if.end.i.while.body.i_crit_edge ], [ %15, %entry.while.body.i_crit_edge ]
  %leftmost.0.off030.i = phi i1 [ %leftmost.1.off0.i, %if.end.i.while.body.i_crit_edge ], [ true, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %21, i32 -16
  %rb_subtree_last.i = getelementptr i8, ptr %21, i32 12
  %22 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rb_subtree_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub.i.i.i7)
  %cmp.i = icmp ult i32 %23, %sub.i.i.i7
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i.i.i7, ptr %rb_subtree_last.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %vm_pgoff.i.i28.i = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %vm_pgoff.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_pgoff.i.i28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %28)
  %cmp4.i = icmp ult i32 %11, %28
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  %leftmost.1.off0.i = select i1 %cmp4.i, i1 %leftmost.0.off030.i, i1 false
  %link.1.i = select i1 %cmp4.i, ptr %rb_left.i, ptr %rb_right.i
  %29 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %while.end.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i
  %phi.cast.le.i = ptrtoint ptr %21 to i32
  %rb_subtree_last8.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 4
  %31 = ptrtoint ptr %rb_subtree_last8.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i.i.i7, ptr %rb_subtree_last8.i, align 4
  %rb9.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3
  %32 = ptrtoint ptr %rb9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %phi.cast.le.i, ptr %rb9.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_left.i.i, align 4
  %35 = ptrtoint ptr %link.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rb9.i, ptr %link.1.i, align 4
  br i1 %leftmost.1.off0.i, label %while.end.i.if.then.i.i_crit_edge, label %while.end.i.__anon_vma_interval_tree_insert.exit_crit_edge

while.end.i.__anon_vma_interval_tree_insert.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_insert.exit

while.end.i.if.then.i.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %while.end.i.if.then.i.i_crit_edge, %while.end.thread.i
  %rb941.i = phi ptr [ %rb937.i, %while.end.thread.i ], [ %rb9.i, %while.end.i.if.then.i.i_crit_edge ]
  %rb_leftmost.i.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %36 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rb941.i, ptr %rb_leftmost.i.i, align 4
  br label %__anon_vma_interval_tree_insert.exit

__anon_vma_interval_tree_insert.exit:             ; preds = %if.then.i.i, %while.end.i.__anon_vma_interval_tree_insert.exit_crit_edge
  %rb940.i = phi ptr [ %rb9.i, %while.end.i.__anon_vma_interval_tree_insert.exit_crit_edge ], [ %rb941.i, %if.then.i.i ]
  tail call void @__rb_insert_augmented(ptr noundef %rb940.i, ptr noundef %root, ptr noundef nonnull @__anon_vma_interval_tree_augment_rotate) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @anon_vma_interval_tree_remove(ptr noundef %node, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rb.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3
  %rb_leftmost.i.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, %rb.i
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call ptr @rb_next(ptr noundef %rb.i) #5
  %2 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %rb_right.i.i.i.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.else6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  %7 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rb.i, align 4
  %and.i.i.i.i = and i32 %8, -4
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %11, %rb.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %spec.select.i.i.i.i.i = select i1 %cmp.i.i.i.i.i, ptr %rb_left.i.i.i.i.i, ptr %rb_right.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i

__rb_change_child.exit.i.i.i.i:                   ; preds = %if.then.i.i.i.i.i, %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i = phi ptr [ %root, %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %12 = ptrtoint ptr %rb_left.sink.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %4, ptr %rb_left.sink.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %__rb_change_child.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %4, align 4
  br label %__rb_erase_augmented.exit.thread.i.i.i

if.else.i.i.i.i:                                  ; preds = %__rb_change_child.exit.i.i.i.i
  %and4.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %and4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %if.else.i.i.i.i.__rb_erase_augmented.exit.thread.i.i.i_crit_edge, label %if.else.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge

if.else.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_erase_augmented.exit.i.i.i

if.else.i.i.i.i.__rb_erase_augmented.exit.thread.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_erase_augmented.exit.thread.i.i.i

if.else6.i.i.i.i:                                 ; preds = %if.end.i.i
  %tobool7.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.else12.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.else6.i.i.i.i
  %14 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rb.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  %and11.i.i.i.i = and i32 %15, -4
  %17 = inttoptr i32 %and11.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i)
  %tobool.not.i135.i.i.i.i = icmp eq i32 %and11.i.i.i.i, 0
  br i1 %tobool.not.i135.i.i.i.i, label %if.then8.i.i.i.i.__rb_change_child.exit142.i.i.i.i_crit_edge, label %if.then.i140.i.i.i.i

if.then8.i.i.i.i.__rb_change_child.exit142.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit142.i.i.i.i

if.then.i140.i.i.i.i:                             ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i136.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i136.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_left.i136.i.i.i.i, align 4
  %cmp.i137.i.i.i.i = icmp eq ptr %19, %rb.i
  %rb_right.i138.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %spec.select.i139.i.i.i.i = select i1 %cmp.i137.i.i.i.i, ptr %rb_left.i136.i.i.i.i, ptr %rb_right.i138.i.i.i.i
  br label %__rb_change_child.exit142.i.i.i.i

__rb_change_child.exit142.i.i.i.i:                ; preds = %if.then.i140.i.i.i.i, %if.then8.i.i.i.i.__rb_change_child.exit142.i.i.i.i_crit_edge
  %rb_left.sink.i141.i.i.i.i = phi ptr [ %root, %if.then8.i.i.i.i.__rb_change_child.exit142.i.i.i.i_crit_edge ], [ %spec.select.i139.i.i.i.i, %if.then.i140.i.i.i.i ]
  %20 = ptrtoint ptr %rb_left.sink.i141.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %6, ptr %rb_left.sink.i141.i.i.i.i, align 4
  br label %__rb_erase_augmented.exit.thread.i.i.i

if.else12.i.i.i.i:                                ; preds = %if.else6.i.i.i.i
  %rb_left13.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %rb_left13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_left13.i.i.i.i, align 4
  %tobool14.not.i.i.i.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i.i.i.i, label %if.then15.i.i.i.i, label %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge

if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %if.else12.i.i.i.i
  br label %do.body.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.else12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right16.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %rb_right16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rb_right16.i.i.i.i, align 4
  %rb_subtree_last.i.i = getelementptr %struct.anon_vma_chain, ptr %node, i32 0, i32 4
  %25 = ptrtoint ptr %rb_subtree_last.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rb_subtree_last.i.i, align 4
  %rb_subtree_last4.i.i = getelementptr i8, ptr %4, i32 12
  %27 = ptrtoint ptr %rb_subtree_last4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rb_subtree_last4.i.i, align 4
  %.pre.i.i.i.i = ptrtoint ptr %4 to i32
  br label %if.end42.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i = phi ptr [ %29, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %22, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %4, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %rb_left18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rb_left18.i.i.i.i, align 4
  %tobool19.not.i.i.i.i = icmp eq ptr %29, null
  br i1 %tobool19.not.i.i.i.i, label %do.end.i.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  %rb_right20.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %rb_right20.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rb_right20.i.i.i.i, align 4
  %rb_left26.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %rb_left26.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %rb_left26.i.i.i.i, align 4
  store volatile ptr %4, ptr %rb_right20.i.i.i.i, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %4, align 4
  %and.i.i.i.i.i = and i32 %34, 1
  %35 = ptrtoint ptr %tmp.0.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %35
  store i32 %or.i.i.i.i.i, ptr %4, align 4
  %rb_subtree_last.i1.i = getelementptr %struct.anon_vma_chain, ptr %node, i32 0, i32 4
  %36 = ptrtoint ptr %rb_subtree_last.i1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rb_subtree_last.i1.i, align 4
  %rb_subtree_last4.i2.i = getelementptr i8, ptr %tmp.0.i.i.i.i, i32 12
  %38 = ptrtoint ptr %rb_subtree_last4.i2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rb_subtree_last4.i2.i, align 4
  %cmp.not8.i.i = icmp eq ptr %successor.0.i.i.i.i, %tmp.0.i.i.i.i
  br i1 %cmp.not8.i.i, label %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %do.end.i.i.i.i.while.body.i.i_crit_edge

do.end.i.i.i.i.while.body.i.i_crit_edge:          ; preds = %do.end.i.i.i.i
  br label %while.body.i.i

do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %do.end.i.i.i.i.while.body.i.i_crit_edge
  %rb.addr.09.i.i = phi ptr [ %62, %cleanup.i.i.while.body.i.i_crit_edge ], [ %successor.0.i.i.i.i, %do.end.i.i.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %rb.addr.09.i.i, i32 -16
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 4
  %vm_pgoff.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %vm_pgoff.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vm_pgoff.i.i.i.i.i, align 4
  %vm_end.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %vm_end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_end.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %40, align 4
  %sub.i.i.i.i.i.i = sub i32 %44, %46
  %shr.i.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i.i, 12
  %add.i.i.i.i.i = add i32 %42, -1
  %sub.i.i.i.i.i = add i32 %add.i.i.i.i.i, %shr.i.i.i.i.i.i
  %rb_left.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i, i32 8
  %47 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i3.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i3.i, label %while.body.i.i.if.end5.i.i.i_crit_edge, label %if.then.i.i4.i

while.body.i.i.if.end5.i.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i.i

if.then.i.i4.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i.i.i = getelementptr i8, ptr %48, i32 12
  %49 = ptrtoint ptr %rb_subtree_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rb_subtree_last.i.i.i, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %50, i32 %sub.i.i.i.i.i) #5
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then.i.i4.i, %while.body.i.i.if.end5.i.i.i_crit_edge
  %max.0.i.i.i = phi i32 [ %sub.i.i.i.i.i, %while.body.i.i.if.end5.i.i.i_crit_edge ], [ %51, %if.then.i.i4.i ]
  %rb_right.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i, i32 4
  %52 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool7.not.i.i.i, label %if.end5.i.i.i.if.end19.i.i.i_crit_edge, label %if.then8.i.i.i

if.end5.i.i.i.if.end19.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i.i.i = getelementptr i8, ptr %53, i32 12
  %54 = ptrtoint ptr %rb_subtree_last14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rb_subtree_last14.i.i.i, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %max.0.i.i.i) #5
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge
  %max.1.i.i.i = phi i32 [ %max.0.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge ], [ %56, %if.then8.i.i.i ]
  %rb_subtree_last21.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i, i32 12
  %57 = ptrtoint ptr %rb_subtree_last21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rb_subtree_last21.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %max.1.i.i.i)
  %cmp22.i.i.i = icmp eq i32 %58, %max.1.i.i.i
  br i1 %cmp22.i.i.i, label %if.end19.i.i.i.if.end42.i.i.i.i_crit_edge, label %cleanup.i.i

if.end19.i.i.i.if.end42.i.i.i.i_crit_edge:        ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i.i

cleanup.i.i:                                      ; preds = %if.end19.i.i.i
  %59 = ptrtoint ptr %rb_subtree_last21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %max.1.i.i.i, ptr %rb_subtree_last21.i.i.i, align 4
  %60 = ptrtoint ptr %rb.addr.09.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rb.addr.09.i.i, align 4
  %and.i.i = and i32 %61, -4
  %62 = inttoptr i32 %and.i.i to ptr
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i.i.i, %62
  br i1 %cmp.not.i.i, label %cleanup.i.i.if.end42.i.i.i.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

cleanup.i.i.if.end42.i.i.i.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i.i

if.end42.i.i.i.i:                                 ; preds = %cleanup.i.i.if.end42.i.i.i.i_crit_edge, %if.end19.i.i.i.if.end42.i.i.i.i_crit_edge, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge, %if.then15.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %if.then15.i.i.i.i ], [ %35, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %35, %if.end19.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %35, %cleanup.i.i.if.end42.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i = phi ptr [ %4, %if.then15.i.i.i.i ], [ %tmp.0.i.i.i.i, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i, %if.end19.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i, %cleanup.i.i.if.end42.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i = phi ptr [ %4, %if.then15.i.i.i.i ], [ %tmp.0.i.i.i.i, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i, %if.end19.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i, %cleanup.i.i.if.end42.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i = phi ptr [ %24, %if.then15.i.i.i.i ], [ %31, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %31, %if.end19.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %31, %cleanup.i.i.if.end42.i.i.i.i_crit_edge ]
  %63 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %rb_left49.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %rb_left49.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %64, ptr %rb_left49.i.i.i.i, align 4
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %64, align 4
  %and.i143.i.i.i.i = and i32 %67, 1
  %or.i144.i.i.i.i = or i32 %and.i143.i.i.i.i, %.pre-phi.i.i.i.i
  store i32 %or.i144.i.i.i.i, ptr %64, align 4
  %68 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rb.i, align 4
  %and55.i.i.i.i = and i32 %69, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i)
  %tobool.not.i145.i.i.i.i = icmp eq i32 %and55.i.i.i.i, 0
  br i1 %tobool.not.i145.i.i.i.i, label %if.end42.i.i.i.i.__rb_change_child.exit152.i.i.i.i_crit_edge, label %if.then.i150.i.i.i.i

if.end42.i.i.i.i.__rb_change_child.exit152.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit152.i.i.i.i

if.then.i150.i.i.i.i:                             ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = inttoptr i32 %and55.i.i.i.i to ptr
  %rb_left.i146.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %rb_left.i146.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rb_left.i146.i.i.i.i, align 4
  %cmp.i147.i.i.i.i = icmp eq ptr %72, %rb.i
  %rb_right.i148.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 1
  %spec.select.i149.i.i.i.i = select i1 %cmp.i147.i.i.i.i, ptr %rb_left.i146.i.i.i.i, ptr %rb_right.i148.i.i.i.i
  br label %__rb_change_child.exit152.i.i.i.i

__rb_change_child.exit152.i.i.i.i:                ; preds = %if.then.i150.i.i.i.i, %if.end42.i.i.i.i.__rb_change_child.exit152.i.i.i.i_crit_edge
  %rb_left.sink.i151.i.i.i.i = phi ptr [ %root, %if.end42.i.i.i.i.__rb_change_child.exit152.i.i.i.i_crit_edge ], [ %spec.select.i149.i.i.i.i, %if.then.i150.i.i.i.i ]
  %73 = ptrtoint ptr %rb_left.sink.i151.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %successor.1.i.i.i.i, ptr %rb_left.sink.i151.i.i.i.i, align 4
  %tobool56.not.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i, label %if.else58.i.i.i.i, label %if.then57.i.i.i.i

if.then57.i.i.i.i:                                ; preds = %__rb_change_child.exit152.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %parent.0.i.i.i.i to i32
  %or.i153.i.i.i.i = or i32 %74, 1
  %75 = ptrtoint ptr %child2.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i153.i.i.i.i, ptr %child2.0.i.i.i.i, align 4
  br label %if.end66.i.i.i.i

if.else58.i.i.i.i:                                ; preds = %__rb_change_child.exit152.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %successor.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %successor.1.i.i.i.i, align 4
  %and60.i.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i)
  %tobool61.not.i.i.i.i = icmp eq i32 %and60.i.i.i.i, 0
  %spec.select134.i.i.i.i = select i1 %tobool61.not.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i
  br label %if.end66.i.i.i.i

if.end66.i.i.i.i:                                 ; preds = %if.else58.i.i.i.i, %if.then57.i.i.i.i
  %rebalance.1.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i ], [ %spec.select134.i.i.i.i, %if.else58.i.i.i.i ]
  %78 = ptrtoint ptr %successor.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %69, ptr %successor.1.i.i.i.i, align 4
  br label %__rb_erase_augmented.exit.i.i.i

__rb_erase_augmented.exit.thread.i.i.i:           ; preds = %__rb_change_child.exit142.i.i.i.i, %if.else.i.i.i.i.__rb_erase_augmented.exit.thread.i.i.i_crit_edge, %if.then2.i.i.i.i
  %tmp.1.i.ph.i.i.i = phi ptr [ %9, %if.then2.i.i.i.i ], [ %17, %__rb_change_child.exit142.i.i.i.i ], [ %9, %if.else.i.i.i.i.__rb_erase_augmented.exit.thread.i.i.i_crit_edge ]
  %cmp.not8.i5.i = icmp eq ptr %tmp.1.i.ph.i.i.i, null
  br i1 %cmp.not8.i5.i, label %__rb_erase_augmented.exit.thread.i.i.i.__anon_vma_interval_tree_remove.exit_crit_edge, label %__rb_erase_augmented.exit.thread.i.i.i.while.body.i16.i_crit_edge

__rb_erase_augmented.exit.thread.i.i.i.while.body.i16.i_crit_edge: ; preds = %__rb_erase_augmented.exit.thread.i.i.i
  br label %while.body.i16.i

__rb_erase_augmented.exit.thread.i.i.i.__anon_vma_interval_tree_remove.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_remove.exit

while.body.i16.i:                                 ; preds = %cleanup.i31.i.while.body.i16.i_crit_edge, %__rb_erase_augmented.exit.thread.i.i.i.while.body.i16.i_crit_edge
  %rb.addr.09.i6.i = phi ptr [ %102, %cleanup.i31.i.while.body.i16.i_crit_edge ], [ %tmp.1.i.ph.i.i.i, %__rb_erase_augmented.exit.thread.i.i.i.while.body.i16.i_crit_edge ]
  %add.ptr.i7.i = getelementptr i8, ptr %rb.addr.09.i6.i, i32 -16
  %79 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i7.i, align 4
  %vm_pgoff.i.i.i.i8.i = getelementptr inbounds %struct.vm_area_struct, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %vm_pgoff.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vm_pgoff.i.i.i.i8.i, align 4
  %vm_end.i.i.i.i.i9.i = getelementptr inbounds %struct.vm_area_struct, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %vm_end.i.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vm_end.i.i.i.i.i9.i, align 4
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %80, align 4
  %sub.i.i.i.i.i10.i = sub i32 %84, %86
  %shr.i.i.i.i.i11.i = lshr i32 %sub.i.i.i.i.i10.i, 12
  %add.i.i.i.i12.i = add i32 %82, -1
  %sub.i.i.i.i13.i = add i32 %add.i.i.i.i12.i, %shr.i.i.i.i.i11.i
  %rb_left.i.i14.i = getelementptr i8, ptr %rb.addr.09.i6.i, i32 8
  %87 = ptrtoint ptr %rb_left.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rb_left.i.i14.i, align 4
  %tobool.not.i.i15.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i15.i, label %while.body.i16.i.if.end5.i.i22.i_crit_edge, label %if.then.i.i18.i

while.body.i16.i.if.end5.i.i22.i_crit_edge:       ; preds = %while.body.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i22.i

if.then.i.i18.i:                                  ; preds = %while.body.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i.i17.i = getelementptr i8, ptr %88, i32 12
  %89 = ptrtoint ptr %rb_subtree_last.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rb_subtree_last.i.i17.i, align 4
  %91 = tail call i32 @llvm.umax.i32(i32 %90, i32 %sub.i.i.i.i13.i) #5
  br label %if.end5.i.i22.i

if.end5.i.i22.i:                                  ; preds = %if.then.i.i18.i, %while.body.i16.i.if.end5.i.i22.i_crit_edge
  %max.0.i.i19.i = phi i32 [ %sub.i.i.i.i13.i, %while.body.i16.i.if.end5.i.i22.i_crit_edge ], [ %91, %if.then.i.i18.i ]
  %rb_right.i.i20.i = getelementptr i8, ptr %rb.addr.09.i6.i, i32 4
  %92 = ptrtoint ptr %rb_right.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rb_right.i.i20.i, align 4
  %tobool7.not.i.i21.i = icmp eq ptr %93, null
  br i1 %tobool7.not.i.i21.i, label %if.end5.i.i22.i.if.end19.i.i28.i_crit_edge, label %if.then8.i.i24.i

if.end5.i.i22.i.if.end19.i.i28.i_crit_edge:       ; preds = %if.end5.i.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i28.i

if.then8.i.i24.i:                                 ; preds = %if.end5.i.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i.i23.i = getelementptr i8, ptr %93, i32 12
  %94 = ptrtoint ptr %rb_subtree_last14.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rb_subtree_last14.i.i23.i, align 4
  %96 = tail call i32 @llvm.umax.i32(i32 %95, i32 %max.0.i.i19.i) #5
  br label %if.end19.i.i28.i

if.end19.i.i28.i:                                 ; preds = %if.then8.i.i24.i, %if.end5.i.i22.i.if.end19.i.i28.i_crit_edge
  %max.1.i.i25.i = phi i32 [ %max.0.i.i19.i, %if.end5.i.i22.i.if.end19.i.i28.i_crit_edge ], [ %96, %if.then8.i.i24.i ]
  %rb_subtree_last21.i.i26.i = getelementptr i8, ptr %rb.addr.09.i6.i, i32 12
  %97 = ptrtoint ptr %rb_subtree_last21.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rb_subtree_last21.i.i26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %max.1.i.i25.i)
  %cmp22.i.i27.i = icmp eq i32 %98, %max.1.i.i25.i
  br i1 %cmp22.i.i27.i, label %if.end19.i.i28.i.__anon_vma_interval_tree_remove.exit_crit_edge, label %cleanup.i31.i

if.end19.i.i28.i.__anon_vma_interval_tree_remove.exit_crit_edge: ; preds = %if.end19.i.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_remove.exit

cleanup.i31.i:                                    ; preds = %if.end19.i.i28.i
  %99 = ptrtoint ptr %rb_subtree_last21.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %max.1.i.i25.i, ptr %rb_subtree_last21.i.i26.i, align 4
  %100 = ptrtoint ptr %rb.addr.09.i6.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rb.addr.09.i6.i, align 4
  %and.i29.i = and i32 %101, -4
  %102 = inttoptr i32 %and.i29.i to ptr
  %cmp.not.i30.i = icmp eq i32 %and.i29.i, 0
  br i1 %cmp.not.i30.i, label %cleanup.i31.i.__anon_vma_interval_tree_remove.exit_crit_edge, label %cleanup.i31.i.while.body.i16.i_crit_edge

cleanup.i31.i.while.body.i16.i_crit_edge:         ; preds = %cleanup.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i16.i

cleanup.i31.i.__anon_vma_interval_tree_remove.exit_crit_edge: ; preds = %cleanup.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_remove.exit

__rb_erase_augmented.exit.i.i.i:                  ; preds = %if.end66.i.i.i.i, %if.else.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge
  %tmp.1.i.i.i.i = phi ptr [ %successor.1.i.i.i.i, %if.end66.i.i.i.i ], [ %9, %if.else.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge ]
  %rebalance.2.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i, %if.end66.i.i.i.i ], [ %9, %if.else.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge ]
  %cmp.not8.i33.i = icmp eq ptr %tmp.1.i.i.i.i, null
  br i1 %cmp.not8.i33.i, label %__rb_erase_augmented.exit.i.i.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge, label %__rb_erase_augmented.exit.i.i.i.while.body.i44.i_crit_edge

__rb_erase_augmented.exit.i.i.i.while.body.i44.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i
  br label %while.body.i44.i

__rb_erase_augmented.exit.i.i.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_augment_propagate.exit60.i

while.body.i44.i:                                 ; preds = %cleanup.i59.i.while.body.i44.i_crit_edge, %__rb_erase_augmented.exit.i.i.i.while.body.i44.i_crit_edge
  %rb.addr.09.i34.i = phi ptr [ %126, %cleanup.i59.i.while.body.i44.i_crit_edge ], [ %tmp.1.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.while.body.i44.i_crit_edge ]
  %add.ptr.i35.i = getelementptr i8, ptr %rb.addr.09.i34.i, i32 -16
  %103 = ptrtoint ptr %add.ptr.i35.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i35.i, align 4
  %vm_pgoff.i.i.i.i36.i = getelementptr inbounds %struct.vm_area_struct, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %vm_pgoff.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vm_pgoff.i.i.i.i36.i, align 4
  %vm_end.i.i.i.i.i37.i = getelementptr inbounds %struct.vm_area_struct, ptr %104, i32 0, i32 1
  %107 = ptrtoint ptr %vm_end.i.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vm_end.i.i.i.i.i37.i, align 4
  %109 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %104, align 4
  %sub.i.i.i.i.i38.i = sub i32 %108, %110
  %shr.i.i.i.i.i39.i = lshr i32 %sub.i.i.i.i.i38.i, 12
  %add.i.i.i.i40.i = add i32 %106, -1
  %sub.i.i.i.i41.i = add i32 %add.i.i.i.i40.i, %shr.i.i.i.i.i39.i
  %rb_left.i.i42.i = getelementptr i8, ptr %rb.addr.09.i34.i, i32 8
  %111 = ptrtoint ptr %rb_left.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rb_left.i.i42.i, align 4
  %tobool.not.i.i43.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i43.i, label %while.body.i44.i.if.end5.i.i50.i_crit_edge, label %if.then.i.i46.i

while.body.i44.i.if.end5.i.i50.i_crit_edge:       ; preds = %while.body.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i50.i

if.then.i.i46.i:                                  ; preds = %while.body.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i.i45.i = getelementptr i8, ptr %112, i32 12
  %113 = ptrtoint ptr %rb_subtree_last.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rb_subtree_last.i.i45.i, align 4
  %115 = tail call i32 @llvm.umax.i32(i32 %114, i32 %sub.i.i.i.i41.i) #5
  br label %if.end5.i.i50.i

if.end5.i.i50.i:                                  ; preds = %if.then.i.i46.i, %while.body.i44.i.if.end5.i.i50.i_crit_edge
  %max.0.i.i47.i = phi i32 [ %sub.i.i.i.i41.i, %while.body.i44.i.if.end5.i.i50.i_crit_edge ], [ %115, %if.then.i.i46.i ]
  %rb_right.i.i48.i = getelementptr i8, ptr %rb.addr.09.i34.i, i32 4
  %116 = ptrtoint ptr %rb_right.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rb_right.i.i48.i, align 4
  %tobool7.not.i.i49.i = icmp eq ptr %117, null
  br i1 %tobool7.not.i.i49.i, label %if.end5.i.i50.i.if.end19.i.i56.i_crit_edge, label %if.then8.i.i52.i

if.end5.i.i50.i.if.end19.i.i56.i_crit_edge:       ; preds = %if.end5.i.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i56.i

if.then8.i.i52.i:                                 ; preds = %if.end5.i.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i.i51.i = getelementptr i8, ptr %117, i32 12
  %118 = ptrtoint ptr %rb_subtree_last14.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rb_subtree_last14.i.i51.i, align 4
  %120 = tail call i32 @llvm.umax.i32(i32 %119, i32 %max.0.i.i47.i) #5
  br label %if.end19.i.i56.i

if.end19.i.i56.i:                                 ; preds = %if.then8.i.i52.i, %if.end5.i.i50.i.if.end19.i.i56.i_crit_edge
  %max.1.i.i53.i = phi i32 [ %max.0.i.i47.i, %if.end5.i.i50.i.if.end19.i.i56.i_crit_edge ], [ %120, %if.then8.i.i52.i ]
  %rb_subtree_last21.i.i54.i = getelementptr i8, ptr %rb.addr.09.i34.i, i32 12
  %121 = ptrtoint ptr %rb_subtree_last21.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rb_subtree_last21.i.i54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %max.1.i.i53.i)
  %cmp22.i.i55.i = icmp eq i32 %122, %max.1.i.i53.i
  br i1 %cmp22.i.i55.i, label %if.end19.i.i56.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge, label %cleanup.i59.i

if.end19.i.i56.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge: ; preds = %if.end19.i.i56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_augment_propagate.exit60.i

cleanup.i59.i:                                    ; preds = %if.end19.i.i56.i
  %123 = ptrtoint ptr %rb_subtree_last21.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %max.1.i.i53.i, ptr %rb_subtree_last21.i.i54.i, align 4
  %124 = ptrtoint ptr %rb.addr.09.i34.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rb.addr.09.i34.i, align 4
  %and.i57.i = and i32 %125, -4
  %126 = inttoptr i32 %and.i57.i to ptr
  %cmp.not.i58.i = icmp eq i32 %and.i57.i, 0
  br i1 %cmp.not.i58.i, label %cleanup.i59.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge, label %cleanup.i59.i.while.body.i44.i_crit_edge

cleanup.i59.i.while.body.i44.i_crit_edge:         ; preds = %cleanup.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i44.i

cleanup.i59.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge: ; preds = %cleanup.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_augment_propagate.exit60.i

__anon_vma_interval_tree_augment_propagate.exit60.i: ; preds = %cleanup.i59.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge, %if.end19.i.i56.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge, %__rb_erase_augmented.exit.i.i.i.__anon_vma_interval_tree_augment_propagate.exit60.i_crit_edge
  %tobool.not.i.i.i = icmp eq ptr %rebalance.2.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %__anon_vma_interval_tree_augment_propagate.exit60.i.__anon_vma_interval_tree_remove.exit_crit_edge, label %if.then.i.i.i

__anon_vma_interval_tree_augment_propagate.exit60.i.__anon_vma_interval_tree_remove.exit_crit_edge: ; preds = %__anon_vma_interval_tree_augment_propagate.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_remove.exit

if.then.i.i.i:                                    ; preds = %__anon_vma_interval_tree_augment_propagate.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i, ptr noundef %root, ptr noundef nonnull @__anon_vma_interval_tree_augment_rotate) #5
  br label %__anon_vma_interval_tree_remove.exit

__anon_vma_interval_tree_remove.exit:             ; preds = %if.then.i.i.i, %__anon_vma_interval_tree_augment_propagate.exit60.i.__anon_vma_interval_tree_remove.exit_crit_edge, %cleanup.i31.i.__anon_vma_interval_tree_remove.exit_crit_edge, %if.end19.i.i28.i.__anon_vma_interval_tree_remove.exit_crit_edge, %__rb_erase_augmented.exit.thread.i.i.i.__anon_vma_interval_tree_remove.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @anon_vma_interval_tree_iter_first(ptr nocapture noundef readonly %root, i32 noundef %first, i32 noundef %last) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__anon_vma_interval_tree_iter_first.exit_crit_edge, label %if.end.i

entry.__anon_vma_interval_tree_iter_first.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_first.exit

if.end.i:                                         ; preds = %entry
  %rb_subtree_last.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb_subtree_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %first)
  %cmp.i = icmp ult i32 %3, %first
  br i1 %cmp.i, label %if.end.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, label %if.end4.i

if.end.i.__anon_vma_interval_tree_iter_first.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_first.exit

if.end4.i:                                        ; preds = %if.end.i
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %5, i32 -16
  %6 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr7.i, align 4
  %vm_pgoff.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %last)
  %cmp8.i = icmp ugt i32 %9, %last
  br i1 %cmp8.i, label %if.end4.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, label %if.end4.i.while.body.i.i_crit_edge

if.end4.i.while.body.i.i_crit_edge:               ; preds = %if.end4.i
  br label %while.body.i.i

if.end4.i.__anon_vma_interval_tree_iter_first.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_first.exit

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.end4.i.while.body.i.i_crit_edge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %while.body.i.i.backedge ], [ %1, %if.end4.i.while.body.i.i_crit_edge ]
  %node.addr.0.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 -16
  %rb_left.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 8
  %10 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end4.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %rb_subtree_last.i.i = getelementptr i8, ptr %11, i32 12
  %12 = ptrtoint ptr %rb_subtree_last.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb_subtree_last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %first)
  %cmp.not.i.i = icmp ult i32 %13, %first
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.while.body.i.i.backedge_crit_edge

if.then.i.i.while.body.i.i.backedge_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.backedge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %while.body.i.i.if.end4.i.i_crit_edge
  %14 = ptrtoint ptr %node.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node.addr.0.i.i, align 4
  %vm_pgoff.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %vm_pgoff.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_pgoff.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %last)
  %cmp5.not.i.i = icmp ugt i32 %17, %last
  br i1 %cmp5.not.i.i, label %if.end4.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, label %if.then6.i.i

if.end4.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_first.exit

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %vm_end.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %vm_end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 4
  %sub.i.i.i.i.i = sub i32 %19, %21
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, 12
  %add.i.i.i.i = add i32 %17, -1
  %sub.i.i.i.i = add i32 %add.i.i.i.i, %shr.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %first)
  %cmp8.not.i.i = icmp ult i32 %sub.i.i.i.i, %first
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.then6.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge

if.then6.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_first.exit

if.end10.i.i:                                     ; preds = %if.then6.i.i
  %rb_right.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 4
  %22 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_right.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %23, null
  br i1 %tobool12.not.i.i, label %if.end10.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, label %if.then13.i.i

if.end10.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_first.exit

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %rb_subtree_last19.i.i = getelementptr i8, ptr %23, i32 12
  %24 = ptrtoint ptr %rb_subtree_last19.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rb_subtree_last19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %first)
  %cmp20.not.i.i = icmp ult i32 %25, %first
  br i1 %cmp20.not.i.i, label %if.then13.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, label %if.then13.i.i.while.body.i.i.backedge_crit_edge

if.then13.i.i.while.body.i.i.backedge_crit_edge:  ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.backedge

if.then13.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_first.exit

while.body.i.i.backedge:                          ; preds = %if.then13.i.i.while.body.i.i.backedge_crit_edge, %if.then.i.i.while.body.i.i.backedge_crit_edge
  %.pn.i.pn.i.be = phi ptr [ %11, %if.then.i.i.while.body.i.i.backedge_crit_edge ], [ %23, %if.then13.i.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

__anon_vma_interval_tree_iter_first.exit:         ; preds = %if.then13.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, %if.end10.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, %if.then6.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, %if.end4.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, %if.end4.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, %if.end.i.__anon_vma_interval_tree_iter_first.exit_crit_edge, %entry.__anon_vma_interval_tree_iter_first.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__anon_vma_interval_tree_iter_first.exit_crit_edge ], [ null, %if.end.i.__anon_vma_interval_tree_iter_first.exit_crit_edge ], [ null, %if.end4.i.__anon_vma_interval_tree_iter_first.exit_crit_edge ], [ %node.addr.0.i.i, %if.then6.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge ], [ null, %if.end10.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge ], [ null, %if.then13.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge ], [ null, %if.end4.i.i.__anon_vma_interval_tree_iter_first.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @anon_vma_interval_tree_iter_next(ptr noundef readonly %node, i32 noundef %first, i32 noundef %last) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_right.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_right.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %entry
  %rb.0.i = phi ptr [ %1, %entry ], [ %24, %if.else.i.while.cond.i_crit_edge ]
  %node.addr.0.i = phi ptr [ %node, %entry ], [ %add.ptr11.i, %if.else.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %rb.0.i, null
  br i1 %tobool.not.i, label %while.cond.i.do.body.i.preheader_crit_edge, label %if.then.i

while.cond.i.do.body.i.preheader_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.do.body.i.preheader_crit_edge, %while.cond.i.do.body.i.preheader_crit_edge
  br label %do.body.i

if.then.i:                                        ; preds = %while.cond.i
  %rb_subtree_last.i = getelementptr i8, ptr %rb.0.i, i32 12
  %2 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb_subtree_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %first)
  %cmp.not.i = icmp ult i32 %3, %first
  br i1 %cmp.not.i, label %if.then.i.do.body.i.preheader_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.do.body.i.preheader_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.then.i.while.body.i.i_crit_edge
  %rb.0.pn.i = phi ptr [ %rb.0.pn.i.be, %while.body.i.i.backedge ], [ %rb.0.i, %if.then.i.while.body.i.i_crit_edge ]
  %node.addr.0.i.i = getelementptr i8, ptr %rb.0.pn.i, i32 -16
  %rb_left.i.i = getelementptr i8, ptr %rb.0.pn.i, i32 8
  %4 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end4.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %rb_subtree_last.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %rb_subtree_last.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rb_subtree_last.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %first)
  %cmp.not.i.i = icmp ult i32 %7, %first
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.while.body.i.i.backedge_crit_edge

if.then.i.i.while.body.i.i.backedge_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.backedge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %while.body.i.i.if.end4.i.i_crit_edge
  %8 = ptrtoint ptr %node.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node.addr.0.i.i, align 4
  %vm_pgoff.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %last)
  %cmp5.not.i.i = icmp ugt i32 %11, %last
  br i1 %cmp5.not.i.i, label %if.end4.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, label %if.then6.i.i

if.end4.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_next.exit

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %vm_end.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %vm_end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_end.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  %sub.i.i.i.i.i = sub i32 %13, %15
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, 12
  %add.i.i.i.i = add i32 %11, -1
  %sub.i.i.i.i = add i32 %add.i.i.i.i, %shr.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %first)
  %cmp8.not.i.i = icmp ult i32 %sub.i.i.i.i, %first
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.then6.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge

if.then6.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_next.exit

if.end10.i.i:                                     ; preds = %if.then6.i.i
  %rb_right.i.i = getelementptr i8, ptr %rb.0.pn.i, i32 4
  %16 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_right.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %17, null
  br i1 %tobool12.not.i.i, label %if.end10.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, label %if.then13.i.i

if.end10.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_next.exit

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %rb_subtree_last19.i.i = getelementptr i8, ptr %17, i32 12
  %18 = ptrtoint ptr %rb_subtree_last19.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rb_subtree_last19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %first)
  %cmp20.not.i.i = icmp ult i32 %19, %first
  br i1 %cmp20.not.i.i, label %if.then13.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, label %if.then13.i.i.while.body.i.i.backedge_crit_edge

if.then13.i.i.while.body.i.i.backedge_crit_edge:  ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.backedge

if.then13.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_next.exit

while.body.i.i.backedge:                          ; preds = %if.then13.i.i.while.body.i.i.backedge_crit_edge, %if.then.i.i.while.body.i.i.backedge_crit_edge
  %rb.0.pn.i.be = phi ptr [ %5, %if.then.i.i.while.body.i.i.backedge_crit_edge ], [ %17, %if.then13.i.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

do.body.i:                                        ; preds = %if.end7.i.do.body.i_crit_edge, %do.body.i.preheader
  %node.addr.1.i = phi ptr [ %add.ptr11.i, %if.end7.i.do.body.i_crit_edge ], [ %node.addr.0.i, %do.body.i.preheader ]
  %rb4.i = getelementptr inbounds %struct.anon_vma_chain, ptr %node.addr.1.i, i32 0, i32 3
  %20 = ptrtoint ptr %rb4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb4.i, align 4
  %and.i = and i32 %21, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, label %if.end7.i

do.body.i.__anon_vma_interval_tree_iter_next.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_next.exit

if.end7.i:                                        ; preds = %do.body.i
  %22 = inttoptr i32 %and.i to ptr
  %add.ptr11.i = getelementptr i8, ptr %22, i32 -16
  %rb_right13.i = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %rb_right13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rb_right13.i, align 4
  %cmp14.i = icmp eq ptr %rb4.i, %24
  br i1 %cmp14.i, label %if.end7.i.do.body.i_crit_edge, label %do.end.i

if.end7.i.do.body.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %if.end7.i
  %25 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr11.i, align 4
  %vm_pgoff.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_pgoff.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %last)
  %cmp16.i = icmp ugt i32 %28, %last
  br i1 %cmp16.i, label %do.end.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, label %if.else.i

do.end.i.__anon_vma_interval_tree_iter_next.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_next.exit

if.else.i:                                        ; preds = %do.end.i
  %vm_end.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %vm_end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_end.i.i.i.i, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 4
  %sub.i.i.i41.i = sub i32 %30, %32
  %shr.i.i.i.i = lshr i32 %sub.i.i.i41.i, 12
  %add.i.i.i = add i32 %28, -1
  %sub.i.i.i = add i32 %add.i.i.i, %shr.i.i.i.i
  %cmp19.not.i = icmp ult i32 %sub.i.i.i, %first
  br i1 %cmp19.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.else.i.__anon_vma_interval_tree_iter_next.exit_crit_edge

if.else.i.__anon_vma_interval_tree_iter_next.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_iter_next.exit

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

__anon_vma_interval_tree_iter_next.exit:          ; preds = %if.else.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, %do.end.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, %do.body.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, %if.then13.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, %if.end10.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, %if.then6.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge, %if.end4.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge
  %retval.3.i = phi ptr [ %node.addr.0.i.i, %if.then6.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge ], [ null, %if.end10.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge ], [ null, %if.then13.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge ], [ null, %if.end4.i.i.__anon_vma_interval_tree_iter_next.exit_crit_edge ], [ null, %do.body.i.__anon_vma_interval_tree_iter_next.exit_crit_edge ], [ null, %do.end.i.__anon_vma_interval_tree_iter_next.exit_crit_edge ], [ %add.ptr11.i, %if.else.i.__anon_vma_interval_tree_iter_next.exit_crit_edge ]
  ret ptr %retval.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @anon_vma_interval_tree_verify(ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_vma_start = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 5
  %0 = ptrtoint ptr %cached_vma_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cached_vma_start, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp eq i32 %1, %5
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b99 = load i1, ptr @anon_vma_interval_tree_verify.__already_done, align 1
  br i1 %.b99, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !18

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @anon_vma_interval_tree_verify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %cached_vma_last = getelementptr inbounds %struct.anon_vma_chain, ptr %node, i32 0, i32 6
  %6 = ptrtoint ptr %cached_vma_last to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cached_vma_last, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %vm_pgoff.i.i100 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff.i.i100 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff.i.i100, align 4
  %vm_end.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %vm_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_end.i.i.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  %sub.i.i.i = sub i32 %13, %15
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.i.i = add i32 %11, -1
  %sub.i.i = add i32 %add.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i.i)
  %cmp37.not = icmp eq i32 %7, %sub.i.i
  br i1 %cmp37.not, label %if.end27.if.end82_crit_edge, label %land.rhs44

if.end27.if.end82_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

land.rhs44:                                       ; preds = %if.end27
  %.b9798 = load i1, ptr @anon_vma_interval_tree_verify.__already_done.1, align 1
  br i1 %.b9798, label %land.rhs44.if.end82_crit_edge, label %if.then55, !prof !18

land.rhs44.if.end82_crit_edge:                    ; preds = %land.rhs44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then55:                                        ; preds = %land.rhs44
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @anon_vma_interval_tree_verify.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #5
  br label %if.end82

if.end82:                                         ; preds = %if.then55, %land.rhs44.if.end82_crit_edge, %if.end27.if.end82_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vma_interval_tree_augment_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rb_old, i32 -44
  %rb_subtree_last = getelementptr %struct.anon.81, ptr %rb_old, i32 0, i32 1
  %0 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb_subtree_last, align 4
  %rb_subtree_last4 = getelementptr inbounds %struct.anon.81, ptr %rb_new, i32 0, i32 1
  %2 = ptrtoint ptr %rb_subtree_last4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rb_subtree_last4, align 4
  %vm_pgoff.i.i = getelementptr i8, ptr %rb_old, i32 32
  %3 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_pgoff.i.i, align 4
  %vm_end.i.i.i = getelementptr i8, ptr %rb_old, i32 -40
  %5 = ptrtoint ptr %vm_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_end.i.i.i, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %sub.i.i.i = sub i32 %6, %8
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.i.i = add i32 %4, -1
  %sub.i.i = add i32 %add.i.i, %shr.i.i.i
  %rb_left.i = getelementptr i8, ptr %rb_old, i32 8
  %9 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i = getelementptr inbounds %struct.anon.81, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rb_subtree_last.i, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %sub.i.i) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %entry.if.end5.i_crit_edge
  %max.0.i = phi i32 [ %sub.i.i, %entry.if.end5.i_crit_edge ], [ %13, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %rb_old, i32 4
  %14 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_right.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %if.end5.i.vma_interval_tree_augment_compute_max.exit_crit_edge, label %if.then8.i

if.end5.i.vma_interval_tree_augment_compute_max.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vma_interval_tree_augment_compute_max.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i = getelementptr inbounds %struct.anon.81, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %rb_subtree_last14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb_subtree_last14.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %max.0.i) #5
  br label %vma_interval_tree_augment_compute_max.exit

vma_interval_tree_augment_compute_max.exit:       ; preds = %if.then8.i, %if.end5.i.vma_interval_tree_augment_compute_max.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end5.i.vma_interval_tree_augment_compute_max.exit_crit_edge ], [ %18, %if.then8.i ]
  %19 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %max.1.i, ptr %rb_subtree_last, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__anon_vma_interval_tree_augment_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rb_old, i32 -16
  %rb_subtree_last = getelementptr i8, ptr %rb_old, i32 12
  %0 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb_subtree_last, align 4
  %rb_subtree_last4 = getelementptr i8, ptr %rb_new, i32 12
  %2 = ptrtoint ptr %rb_subtree_last4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rb_subtree_last4, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %vm_pgoff.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_pgoff.i.i.i, align 4
  %vm_end.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end.i.i.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %sub.i.i.i.i = sub i32 %8, %10
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.i.i.i = add i32 %6, -1
  %sub.i.i.i = add i32 %add.i.i.i, %shr.i.i.i.i
  %rb_left.i = getelementptr i8, ptr %rb_old, i32 8
  %11 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last.i = getelementptr i8, ptr %12, i32 12
  %13 = ptrtoint ptr %rb_subtree_last.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rb_subtree_last.i, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %sub.i.i.i) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %entry.if.end5.i_crit_edge
  %max.0.i = phi i32 [ %sub.i.i.i, %entry.if.end5.i_crit_edge ], [ %15, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %rb_old, i32 4
  %16 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_right.i, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %if.end5.i.__anon_vma_interval_tree_augment_compute_max.exit_crit_edge, label %if.then8.i

if.end5.i.__anon_vma_interval_tree_augment_compute_max.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__anon_vma_interval_tree_augment_compute_max.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_subtree_last14.i = getelementptr i8, ptr %17, i32 12
  %18 = ptrtoint ptr %rb_subtree_last14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rb_subtree_last14.i, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %max.0.i) #5
  br label %__anon_vma_interval_tree_augment_compute_max.exit

__anon_vma_interval_tree_augment_compute_max.exit: ; preds = %if.then8.i, %if.end5.i.__anon_vma_interval_tree_augment_compute_max.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end5.i.__anon_vma_interval_tree_augment_compute_max.exit_crit_edge ], [ %20, %if.then8.i ]
  %21 = ptrtoint ptr %rb_subtree_last to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %max.1.i, ptr %rb_subtree_last, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../mm/interval_tree.c", i32 108, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../mm/interval_tree.c", i32 109, i32 2}
!5 = distinct !{null, !6, !"vma_interval_tree_augment", i1 false, i1 false}
!6 = !{!"../mm/interval_tree.c", i32 23, i32 1}
!7 = distinct !{null, !8, !"__anon_vma_interval_tree_augment", i1 false, i1 false}
!8 = !{!"../mm/interval_tree.c", i32 71, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2154778715, i64 2154779197, i64 2154778752, i64 2154778808, i64 2154778842, i64 2154778866, i64 2154778907, i64 2154778928, i64 2154778956, i64 2154778990}
