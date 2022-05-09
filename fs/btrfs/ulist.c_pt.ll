; ModuleID = '/llk/IR_all_yes/fs/btrfs/ulist.c_pt.bc'
source_filename = "../fs/btrfs/ulist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ulist = type { i32, %struct.list_head, %struct.rb_root }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ulist_node = type { i64, i64, %struct.list_head, %struct.rb_node }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!ret\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ulist.c\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@___asan_gen_.9 = private constant [20 x i8] c"../fs/btrfs/ulist.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 211, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 3491, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ulist_init(ptr noundef %ulist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %nodes, ptr %nodes, align 4
  %prev.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %nodes, ptr %prev.i, align 4
  %root = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 2
  %2 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %root, align 4
  %3 = ptrtoint ptr %ulist to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ulist, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ulist_release(ptr noundef %ulist) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nodes, align 4
  %cmp.not21 = icmp eq ptr %1, %nodes
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in22 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in22, i32 -16
  %2 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in22, align 8
  tail call void @kfree(ptr noundef %node.0) #7
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %root = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 2
  %3 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %root, align 4
  %4 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %nodes, ptr %nodes, align 4
  %prev.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nodes, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ulist_reinit(ptr noundef %ulist) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1
  %0 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nodes.i, align 4
  %cmp.not21.i = icmp eq ptr %1, %nodes.i
  br i1 %cmp.not21.i, label %entry.ulist_release.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ulist_release.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ulist_release.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn.in22.i, i32 -16
  %2 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in22.i, align 8
  tail call void @kfree(ptr noundef %node.0.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %nodes.i
  br i1 %cmp.not.i, label %for.body.i.ulist_release.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.ulist_release.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ulist_release.exit

ulist_release.exit:                               ; preds = %for.body.i.ulist_release.exit_crit_edge, %entry.ulist_release.exit_crit_edge
  %root.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 2
  %3 = ptrtoint ptr %nodes.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %nodes.i, ptr %nodes.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1, i32 1
  store volatile ptr %nodes.i, ptr %nodes.i, align 4
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nodes.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %root.i, align 4
  %6 = ptrtoint ptr %ulist to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ulist, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ulist_alloc(i32 noundef %gfp_mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %entry.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !18

entry.kmalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %entry.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %entry.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %gfp_mask, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %nodes.i = getelementptr inbounds %struct.ulist, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %nodes.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %nodes.i, ptr %nodes.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ulist, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nodes.i, ptr %prev.i.i, align 8
  %root.i = getelementptr inbounds %struct.ulist, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %root.i, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kmalloc.exit.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ulist_free(ptr noundef %ulist) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ulist, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %nodes.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1
  %0 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nodes.i, align 4
  %cmp.not21.i = icmp eq ptr %1, %nodes.i
  br i1 %cmp.not21.i, label %if.end.ulist_release.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ulist_release.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ulist_release.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn.in22.i, i32 -16
  %2 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in22.i, align 8
  tail call void @kfree(ptr noundef %node.0.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %nodes.i
  br i1 %cmp.not.i, label %for.body.i.ulist_release.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.ulist_release.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ulist_release.exit

ulist_release.exit:                               ; preds = %for.body.i.ulist_release.exit_crit_edge, %if.end.ulist_release.exit_crit_edge
  %root.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 2
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %root.i, align 4
  %4 = ptrtoint ptr %nodes.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %nodes.i, ptr %nodes.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nodes.i, ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %ulist) #7
  br label %return

return:                                           ; preds = %ulist_release.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ulist_add(ptr noundef %ulist, i64 noundef %val, i64 noundef %aux, i32 noundef %gfp_mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ulist_add_merge(ptr noundef %ulist, i64 noundef %val, i64 noundef %aux, ptr noundef null, i32 noundef %gfp_mask)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ulist_add_merge(ptr noundef %ulist, i64 noundef %val, i64 noundef %aux, ptr noundef writeonly %old_aux, i32 noundef %gfp_mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 2
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.016.i = load ptr, ptr %root.i, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %entry.if.end4_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %if.end6.i.while.body.i_crit_edge ], [ %n.016.i, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.018.i, i32 -24
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %val)
  %cmp.i = icmp ult i64 %2, %val
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %val)
  %cmp3.i = icmp ugt i64 %2, %val
  br i1 %cmp3.i, label %if.then4.i, label %ulist_rbtree_search.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_right.i, %if.then.i ], [ %rb_left.i, %if.then4.i ]
  %3 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.if.end4_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end6.i.if.end4_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

ulist_rbtree_search.exit:                         ; preds = %if.else.i
  %add.ptr.i.le = getelementptr i8, ptr %n.018.i, i32 -24
  %tobool.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool.not, label %ulist_rbtree_search.exit.if.end4_crit_edge, label %if.then

ulist_rbtree_search.exit.if.end4_crit_edge:       ; preds = %ulist_rbtree_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %ulist_rbtree_search.exit
  %tobool1.not = icmp eq ptr %old_aux, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %aux3 = getelementptr i8, ptr %n.018.i, i32 -16
  %4 = ptrtoint ptr %aux3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %aux3, align 8
  %6 = ptrtoint ptr %old_aux to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %old_aux, align 8
  br label %cleanup

if.end4:                                          ; preds = %ulist_rbtree_search.exit.if.end4_crit_edge, %if.end6.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %and.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.end4.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !18

if.end4.kmalloc.exit_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %if.end4
  %and2.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %if.end4.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end4.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 7
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef %gfp_mask, i32 noundef 40) #10
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end8

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %kmalloc.exit
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %val, ptr %call7.i, align 8
  %aux10 = getelementptr inbounds %struct.ulist_node, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %aux10 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %aux, ptr %aux10, align 8
  %11 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root.i, align 4
  %tobool.not27.i = icmp eq ptr %12, null
  br i1 %tobool.not27.i, label %if.end8.cond.end_crit_edge, label %if.end8.while.body.i31_crit_edge

if.end8.while.body.i31_crit_edge:                 ; preds = %if.end8
  br label %while.body.i31

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

while.body.i31:                                   ; preds = %if.end7.i.while.body.i31_crit_edge, %if.end8.while.body.i31_crit_edge
  %13 = phi ptr [ %17, %if.end7.i.while.body.i31_crit_edge ], [ %12, %if.end8.while.body.i31_crit_edge ]
  %add.ptr.i29 = getelementptr i8, ptr %13, i32 -24
  %14 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i29, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %val)
  %cmp.i30 = icmp ult i64 %15, %val
  br i1 %cmp.i30, label %if.then.i33, label %if.else.i34

if.then.i33:                                      ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i32 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  br label %if.end7.i

if.else.i34:                                      ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %val)
  %cmp4.i = icmp ugt i64 %15, %val
  br i1 %cmp4.i, label %if.then5.i, label %cond.false

if.then5.i:                                       ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i35 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i33
  %p.1.i = phi ptr [ %rb_right.i32, %if.then.i33 ], [ %rb_left.i35, %if.then5.i ]
  %16 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i36 = icmp eq ptr %17, null
  br i1 %tobool.not.i36, label %while.cond.while.end_crit_edge.i, label %if.end7.i.while.body.i31_crit_edge

if.end7.i.while.body.i31_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i31

while.cond.while.end_crit_edge.i:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail() #11
  unreachable

cond.end:                                         ; preds = %while.cond.while.end_crit_edge.i, %if.end8.cond.end_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end8.cond.end_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %root.i, %if.end8.cond.end_crit_edge ]
  %rb_node8.i = getelementptr inbounds %struct.ulist_node, ptr %call7.i, i32 0, i32 3
  %18 = ptrtoint ptr %rb_node8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %parent.0.lcssa.i, ptr %rb_node8.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.ulist_node, ptr %call7.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.ulist_node, ptr %call7.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rb_left.i.i, align 8
  %21 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rb_node8.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node8.i, ptr noundef %root.i) #7
  %list = getelementptr inbounds %struct.ulist_node, ptr %call7.i, i32 0, i32 2
  %nodes = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %23, ptr noundef %nodes) #7
  br i1 %call.i.i, label %if.end.i.i38, label %cond.end.list_add_tail.exit_crit_edge

cond.end.list_add_tail.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i38:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %nodes, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ulist_node, ptr %call7.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i38, %cond.end.list_add_tail.exit_crit_edge
  %28 = ptrtoint ptr %ulist to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ulist, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %ulist, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %kmalloc.exit.cleanup_crit_edge, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %list_add_tail.exit ], [ 0, %if.then2 ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %kmalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail() unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 211) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #7, !srcloc !19
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ulist_del(ptr noundef %ulist, i64 noundef %val, i64 noundef %aux) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 2
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.016.i = load ptr, ptr %root.i, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %if.end6.i.while.body.i_crit_edge ], [ %n.016.i, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.018.i, i32 -24
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %val)
  %cmp.i = icmp ult i64 %2, %val
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %val)
  %cmp3.i = icmp ugt i64 %2, %val
  br i1 %cmp3.i, label %if.then4.i, label %ulist_rbtree_search.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_right.i, %if.then.i ], [ %rb_left.i, %if.then4.i ]
  %3 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ulist_rbtree_search.exit:                         ; preds = %if.else.i
  %add.ptr.i.le = getelementptr i8, ptr %n.018.i, i32 -24
  %tobool.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool.not, label %ulist_rbtree_search.exit.cleanup_crit_edge, label %if.end

ulist_rbtree_search.exit.cleanup_crit_edge:       ; preds = %ulist_rbtree_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ulist_rbtree_search.exit
  %aux1 = getelementptr i8, ptr %n.018.i, i32 -16
  %4 = ptrtoint ptr %aux1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %aux1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %aux)
  %cmp.not = icmp eq i64 %5, %aux
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @rb_erase(ptr noundef nonnull %n.018.i, ptr noundef %root.i) #7
  %list.i = getelementptr i8, ptr %n.018.i, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.list_del.exit.i_crit_edge

if.end3.list_del.exit.i_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %n.018.i, i32 -4
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end3.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr i8, ptr %n.018.i, i32 -4
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %add.ptr.i.le) #7
  %14 = ptrtoint ptr %ulist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ulist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i8 = icmp eq i32 %15, 0
  br i1 %cmp.i8, label %do.body2.i, label %ulist_rbtree_erase.exit, !prof !20

do.body2.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ulist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 140, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

ulist_rbtree_erase.exit:                          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %15, -1
  %16 = ptrtoint ptr %ulist to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %ulist, align 4
  br label %cleanup

cleanup:                                          ; preds = %ulist_rbtree_erase.exit, %if.end.cleanup_crit_edge, %ulist_rbtree_search.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ulist_rbtree_erase.exit ], [ 1, %ulist_rbtree_search.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ulist_next(ptr noundef %ulist, ptr nocapture noundef %uiter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes = getelementptr inbounds %struct.ulist, ptr %ulist, i32 0, i32 1
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %nodes, align 4
  %cmp.i.not = icmp eq ptr %1, %nodes
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uiter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uiter, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp = icmp eq ptr %5, %nodes
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %nodes. = phi ptr [ %3, %land.lhs.true.if.end5_crit_edge ], [ %nodes, %if.end.if.end5_crit_edge ]
  %6 = ptrtoint ptr %nodes. to i32
  call void @__asan_load4_noabort(i32 %6)
  %storemerge = load ptr, ptr %nodes., align 4
  %7 = ptrtoint ptr %uiter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %storemerge, ptr %uiter, align 4
  %add.ptr = getelementptr i8, ptr %storemerge, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold noreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/ulist.c", i32 211, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @assertfail._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @assertfail._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
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
!19 = !{i64 2158185098, i64 2158185580, i64 2158185135, i64 2158185191, i64 2158185225, i64 2158185249, i64 2158185290, i64 2158185311, i64 2158185339, i64 2158185373}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2158218923, i64 2158219404, i64 2158218960, i64 2158219016, i64 2158219050, i64 2158219074, i64 2158219115, i64 2158219136, i64 2158219164, i64 2158219198}
