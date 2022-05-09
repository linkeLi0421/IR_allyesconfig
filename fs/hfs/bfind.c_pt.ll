; ModuleID = '/llk/IR_all_yes/fs/hfs/bfind.c_pt.bc'
source_filename = "../fs/hfs/bfind.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@hfs_brec_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013hfs: inconsistency in B*Tree (%d,%d,%d,%u,%u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hfs_brec_find\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/hfs/bfind.c\00", [17 x i8] zeroinitializer }, align 32
@hfs_brec_find._entry_ptr = internal global ptr @hfs_brec_find._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 8]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [18 x i8] c"../fs/hfs/bfind.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 153, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @hfs_brec_find._entry, ptr @hfs_brec_find._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_brec_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_find_init(ptr noundef %tree, ptr nocapture noundef writeonly %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tree1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %0 = ptrtoint ptr %tree1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tree, ptr %tree1, align 4
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %1 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bnode, align 4
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 13
  %2 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_key_len, align 4
  %mul = shl i32 %3, 1
  %add = add i32 %mul, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %4 = ptrtoint ptr %search_key to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %search_key, align 4
  %5 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_key_len, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %6
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 2
  %7 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr3, ptr %fd, align 4
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 3
  %8 = ptrtoint ptr %cnid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnid, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.cleanup.sink.split_crit_edge
    i32 3, label %sw.bb4
    i32 8, label %sw.bb6
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb4, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb4 ], [ 2, %sw.bb6 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %tree_lock, i32 noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_find_exit(ptr nocapture noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %0 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnode, align 4
  tail call void @hfs_bnode_put(ptr noundef %1) #5
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %2 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %search_key, align 4
  tail call void @kfree(ptr noundef %3) #5
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %4 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tree, align 4
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %5, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %tree_lock) #5
  %6 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tree, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hfs_brec_find(ptr noundef %bnode, ptr nocapture noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off) #5
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off, align 2, !annotation !15
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %bnode, i32 0, i32 5
  %1 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num_recs, align 4
  %conv = zext i16 %2 to i32
  %sub = add nsw i32 %conv, -1
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %entry
  %b.0 = phi i32 [ 0, %entry ], [ %b.1, %if.end11.do.body_crit_edge ]
  %e.0 = phi i32 [ %sub, %entry ], [ %e.1, %if.end11.do.body_crit_edge ]
  %add = add i32 %e.0, %b.0
  %div = sdiv i32 %add, 2
  %conv1 = trunc i32 %div to i16
  %call = call zeroext i16 @hfs_brec_lenoff(ptr noundef %bnode, i16 noundef zeroext %conv1, ptr noundef nonnull %off) #5
  %call3 = call zeroext i16 @hfs_brec_keylen(ptr noundef %bnode, i16 noundef zeroext %conv1) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3)
  %cmp = icmp eq i16 %call3, 0
  br i1 %cmp, label %do.body.fail_crit_edge, label %if.end

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end:                                           ; preds = %do.body
  %conv4 = zext i16 %call3 to i32
  %3 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fd, align 4
  %5 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %off, align 2
  %conv6 = zext i16 %6 to i32
  call void @hfs_bnode_read(ptr noundef %bnode, ptr noundef %4, i32 noundef %conv6, i32 noundef %conv4) #5
  %7 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnode, align 4
  %keycmp = getelementptr inbounds %struct.hfs_btree, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %keycmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %keycmp, align 4
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fd, align 4
  %13 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %search_key, align 4
  %call9 = call i32 %10(ptr noundef %12, ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end11

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp12 = icmp slt i32 %call9, 0
  %add15 = add nsw i32 %div, 1
  %sub16 = add nsw i32 %div, -1
  %b.1 = select i1 %cmp12, i32 %add15, i32 %b.0
  %e.1 = select i1 %cmp12, i32 %e.0, i32 %sub16
  %cmp18.not = icmp sgt i32 %b.1, %e.1
  br i1 %cmp18.not, label %do.end, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %e.1)
  %cmp20.not = icmp ne i32 %div, %e.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %e.1)
  %cmp22 = icmp sgt i32 %e.1, -1
  %or.cond = and i1 %cmp20.not, %cmp22
  br i1 %or.cond, label %if.then24, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then24:                                        ; preds = %do.end
  %conv25 = trunc i32 %e.1 to i16
  %call26 = call zeroext i16 @hfs_brec_lenoff(ptr noundef %bnode, i16 noundef zeroext %conv25, ptr noundef nonnull %off) #5
  %call28 = call zeroext i16 @hfs_brec_keylen(ptr noundef %bnode, i16 noundef zeroext %conv25) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call28)
  %cmp30 = icmp eq i16 %call28, 0
  br i1 %cmp30, label %if.then24.fail_crit_edge, label %if.end33

if.then24.fail_crit_edge:                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end33:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %conv29 = zext i16 %call28 to i32
  %15 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fd, align 4
  %17 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %off, align 2
  %conv35 = zext i16 %18 to i32
  call void @hfs_bnode_read(ptr noundef %bnode, ptr noundef %16, i32 noundef %conv35, i32 noundef %conv29) #5
  br label %done

done:                                             ; preds = %if.end33, %do.end.done_crit_edge, %if.end.done_crit_edge
  %conv39.pre-phi = phi i32 [ %conv4, %do.end.done_crit_edge ], [ %conv29, %if.end33 ], [ %conv4, %if.end.done_crit_edge ]
  %len.0 = phi i16 [ %call, %do.end.done_crit_edge ], [ %call26, %if.end33 ], [ %call, %if.end.done_crit_edge ]
  %e.2 = phi i32 [ %e.1, %do.end.done_crit_edge ], [ %e.1, %if.end33 ], [ %div, %if.end.done_crit_edge ]
  %res.0 = phi i32 [ -2, %do.end.done_crit_edge ], [ -2, %if.end33 ], [ 0, %if.end.done_crit_edge ]
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %19 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %e.2, ptr %record, align 4
  %20 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %off, align 2
  %conv38 = zext i16 %21 to i32
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %22 = ptrtoint ptr %keyoffset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv38, ptr %keyoffset, align 4
  %keylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 6
  %23 = ptrtoint ptr %keylength to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv39.pre-phi, ptr %keylength, align 4
  %add42 = add nuw nsw i32 %conv39.pre-phi, %conv38
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %24 = ptrtoint ptr %entryoffset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add42, ptr %entryoffset, align 4
  %conv43 = zext i16 %len.0 to i32
  %sub45 = sub nsw i32 %conv43, %conv39.pre-phi
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %25 = ptrtoint ptr %entrylength to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub45, ptr %entrylength, align 4
  br label %fail

fail:                                             ; preds = %done, %if.then24.fail_crit_edge, %do.body.fail_crit_edge
  %res.1 = phi i32 [ %res.0, %done ], [ -22, %if.then24.fail_crit_edge ], [ -22, %do.body.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off) #5
  ret i32 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfs_brec_lenoff(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfs_brec_keylen(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_brec_find(ptr nocapture noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !15
  %tree1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %1 = ptrtoint ptr %tree1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tree1, align 4
  %bnode2 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %3 = ptrtoint ptr %bnode2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bnode2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hfs_bnode_put(ptr noundef nonnull %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %bnode2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bnode2, align 4
  %root = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %root, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 14
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %call85 = call ptr @hfs_bnode_find(ptr noundef %2, i32 noundef %7) #5
  %cmp.i86 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.end7.if.then9_crit_edge, label %if.end11.lr.ph

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.end11.lr.ph:                                   ; preds = %if.end7
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  br label %if.end11

if.then9:                                         ; preds = %if.end30.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  %call.lcssa = phi ptr [ %call85, %if.end7.if.then9_crit_edge ], [ %call, %if.end30.if.then9_crit_edge ]
  %10 = ptrtoint ptr %call.lcssa to i32
  br label %for.end

if.end11:                                         ; preds = %if.end30.if.end11_crit_edge, %if.end11.lr.ph
  %call90 = phi ptr [ %call85, %if.end11.lr.ph ], [ %call, %if.end30.if.end11_crit_edge ]
  %height.089 = phi i32 [ %9, %if.end11.lr.ph ], [ %dec, %if.end30.if.end11_crit_edge ]
  %parent.088 = phi i32 [ 0, %if.end11.lr.ph ], [ %nidx.087, %if.end30.if.end11_crit_edge ]
  %nidx.087 = phi i32 [ %7, %if.end11.lr.ph ], [ %21, %if.end30.if.end11_crit_edge ]
  %height12 = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 7
  %11 = ptrtoint ptr %height12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %height12, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %height.089, i32 %conv)
  %cmp.not = icmp eq i32 %height.089, %conv
  br i1 %cmp.not, label %if.end15, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end15:                                         ; preds = %if.end11
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 6
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 2
  %conv16 = zext i8 %14 to i32
  %dec = add i32 %height.089, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool17.not = icmp eq i32 %dec, 0
  %cond = select i1 %tobool17.not, i32 255, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv16)
  %cmp18.not = icmp eq i32 %cond, %conv16
  br i1 %cmp18.not, label %if.end21, label %if.end15.do.end_crit_edge

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end21:                                         ; preds = %if.end15
  %parent22 = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 4
  %15 = ptrtoint ptr %parent22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent.088, ptr %parent22, align 4
  %call23 = call i32 @__hfs_brec_find(ptr noundef %call90, ptr noundef %fd)
  br i1 %tobool17.not, label %if.end21.for.end_crit_edge, label %if.end26

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end26:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %record, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp27 = icmp slt i32 %17, 0
  br i1 %cmp27, label %if.end26.release_crit_edge, label %if.end30

if.end26.release_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end30:                                         ; preds = %if.end26
  %18 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entryoffset, align 4
  call void @hfs_bnode_read(ptr noundef %call90, ptr noundef nonnull %data, i32 noundef %19, i32 noundef 4) #5
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data, align 4
  call void @hfs_bnode_put(ptr noundef %call90) #5
  %call = call ptr @hfs_bnode_find(ptr noundef %2, i32 noundef %21) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end30.if.then9_crit_edge, label %if.end30.if.end11_crit_edge

if.end30.if.end11_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end30.if.then9_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.then9
  %bnode.0 = phi ptr [ null, %if.then9 ], [ %call90, %if.end21.for.end_crit_edge ]
  %res.0 = phi i32 [ %10, %if.then9 ], [ %call23, %if.end21.for.end_crit_edge ]
  %22 = ptrtoint ptr %bnode2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bnode.0, ptr %bnode2, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end15.do.end_crit_edge, %if.end11.do.end_crit_edge
  %height.1 = phi i32 [ %height.089, %if.end11.do.end_crit_edge ], [ %dec, %if.end15.do.end_crit_edge ]
  %conv.le = zext i8 %12 to i32
  %type34 = getelementptr inbounds %struct.hfs_bnode, ptr %call90, i32 0, i32 6
  %23 = ptrtoint ptr %type34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %type34, align 2
  %conv35 = zext i8 %24 to i32
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %height.1, i32 noundef %conv.le, i32 noundef %conv35, i32 noundef %nidx.087, i32 noundef %parent.088) #9
  br label %release

release:                                          ; preds = %do.end, %if.end26.release_crit_edge
  %res.1 = phi i32 [ -5, %do.end ], [ %call23, %if.end26.release_crit_edge ]
  call void @hfs_bnode_put(ptr noundef %call90) #5
  br label %cleanup

cleanup:                                          ; preds = %release, %for.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %for.end ], [ %res.1, %release ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_bnode_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_brec_read(ptr nocapture noundef %fd, ptr noundef %rec, i32 noundef %rec_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hfs_brec_find(ptr noundef %fd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %0 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rec_len)
  %cmp = icmp sgt i32 %1, %rec_len
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %2 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %4 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entryoffset, align 4
  tail call void @hfs_bnode_read(ptr noundef %3, ptr noundef %rec, i32 noundef %5, i32 noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_brec_goto(ptr nocapture noundef %fd, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off) #5
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off, align 2, !annotation !15
  %bnode1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %1 = ptrtoint ptr %bnode1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bnode1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp = icmp slt i32 %cnt, 0
  br i1 %cmp, label %if.then, label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %entry
  %record18 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  br label %while.cond15

if.then:                                          ; preds = %entry
  %sub = sub i32 0, %cnt
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %if.then
  %cnt.addr.0 = phi i32 [ %sub, %if.then ], [ %sub5, %if.end.while.cond_crit_edge ]
  %bnode.0 = phi ptr [ %2, %if.then ], [ %call, %if.end.while.cond_crit_edge ]
  %5 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %record, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cnt.addr.0)
  %cmp3 = icmp slt i32 %6, %cnt.addr.0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.0, i32 0, i32 5
  %7 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_recs, align 4
  %conv = zext i16 %8 to i32
  %sub6 = add nsw i32 %conv, -1
  %9 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub6, ptr %record, align 4
  %prev = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %while.body.out_crit_edge, label %if.end

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %while.body
  %add.neg = xor i32 %6, -1
  %sub5 = add i32 %cnt.addr.0, %add.neg
  tail call void @hfs_bnode_put(ptr noundef %bnode.0) #5
  %call = tail call ptr @hfs_bnode_find(ptr noundef %4, i32 noundef %11) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call to i32
  br label %out

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %sub14 = sub i32 %6, %cnt.addr.0
  %13 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub14, ptr %record, align 4
  br label %if.end40

while.cond15:                                     ; preds = %if.end31.while.cond15_crit_edge, %while.cond15.preheader
  %cnt.addr.1 = phi i32 [ %sub27, %if.end31.while.cond15_crit_edge ], [ %cnt, %while.cond15.preheader ]
  %bnode.1 = phi ptr [ %call32, %if.end31.while.cond15_crit_edge ], [ %2, %while.cond15.preheader ]
  %num_recs16 = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.1, i32 0, i32 5
  %14 = ptrtoint ptr %num_recs16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_recs16, align 4
  %conv17 = zext i16 %15 to i32
  %16 = ptrtoint ptr %record18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %record18, align 4
  %sub19 = sub i32 %conv17, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.addr.1, i32 %sub19)
  %cmp20.not = icmp slt i32 %cnt.addr.1, %sub19
  br i1 %cmp20.not, label %while.end37, label %while.body22

while.body22:                                     ; preds = %while.cond15
  %18 = ptrtoint ptr %record18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %record18, align 4
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %bnode.1, i32 0, i32 3
  %19 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool29.not = icmp eq i32 %20, 0
  br i1 %tobool29.not, label %while.body22.out_crit_edge, label %if.end31

while.body22.out_crit_edge:                       ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end31:                                         ; preds = %while.body22
  %sub27 = sub i32 %cnt.addr.1, %sub19
  tail call void @hfs_bnode_put(ptr noundef %bnode.1) #5
  %call32 = tail call ptr @hfs_bnode_find(ptr noundef %4, i32 noundef %20) #5
  %cmp.i111 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then34, label %if.end31.while.cond15_crit_edge

if.end31.while.cond15_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond15

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call32 to i32
  br label %out

while.end37:                                      ; preds = %while.cond15
  call void @__sanitizer_cov_trace_pc() #7
  %add39 = add i32 %17, %cnt.addr.1
  %22 = ptrtoint ptr %record18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add39, ptr %record18, align 4
  br label %if.end40

if.end40:                                         ; preds = %while.end37, %while.end
  %bnode.2 = phi ptr [ %bnode.0, %while.end ], [ %bnode.1, %while.end37 ]
  %record41 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %23 = ptrtoint ptr %record41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %record41, align 4
  %conv42 = trunc i32 %24 to i16
  %call43 = call zeroext i16 @hfs_brec_lenoff(ptr noundef %bnode.2, i16 noundef zeroext %conv42, ptr noundef nonnull %off) #5
  %25 = ptrtoint ptr %record41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %record41, align 4
  %conv45 = trunc i32 %26 to i16
  %call46 = call zeroext i16 @hfs_brec_keylen(ptr noundef %bnode.2, i16 noundef zeroext %conv45) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call46)
  %cmp48 = icmp eq i16 %call46, 0
  br i1 %cmp48, label %if.end40.out_crit_edge, label %if.end51

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %conv47 = zext i16 %call46 to i32
  %27 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %off, align 2
  %conv52 = zext i16 %28 to i32
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %29 = ptrtoint ptr %keyoffset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv52, ptr %keyoffset, align 4
  %keylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 6
  %30 = ptrtoint ptr %keylength to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv47, ptr %keylength, align 4
  %add56 = add nuw nsw i32 %conv52, %conv47
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %31 = ptrtoint ptr %entryoffset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add56, ptr %entryoffset, align 4
  %conv57 = zext i16 %call43 to i32
  %sub59 = sub nsw i32 %conv57, %conv47
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %32 = ptrtoint ptr %entrylength to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub59, ptr %entrylength, align 4
  %33 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fd, align 4
  call void @hfs_bnode_read(ptr noundef %bnode.2, ptr noundef %34, i32 noundef %conv52, i32 noundef %conv47) #5
  br label %out

out:                                              ; preds = %if.end51, %if.end40.out_crit_edge, %if.then34, %while.body22.out_crit_edge, %if.then10, %while.body.out_crit_edge
  %bnode.3 = phi ptr [ null, %if.then10 ], [ %bnode.2, %if.end51 ], [ null, %if.then34 ], [ %bnode.2, %if.end40.out_crit_edge ], [ %bnode.0, %while.body.out_crit_edge ], [ %bnode.1, %while.body22.out_crit_edge ]
  %res.0 = phi i32 [ %12, %if.then10 ], [ 0, %if.end51 ], [ %21, %if.then34 ], [ -22, %if.end40.out_crit_edge ], [ -2, %while.body.out_crit_edge ], [ -2, %while.body22.out_crit_edge ]
  %35 = ptrtoint ptr %bnode1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %bnode.3, ptr %bnode1, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off) #5
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfs/bfind.c", i32 153, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfs_brec_find._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfs_brec_find._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
