; ModuleID = '/llk/IR_all_yes/net/ceph/crush/crush.c_pt.bc'
source_filename = "../net/ceph/crush/crush.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crush_bucket = type { i32, i16, i8, i8, i32, i32, ptr }
%struct.crush_bucket_uniform = type { %struct.crush_bucket, i32 }
%struct.crush_bucket_list = type { %struct.crush_bucket, ptr, ptr }
%struct.crush_bucket_tree = type { %struct.crush_bucket, i8, ptr }
%struct.crush_bucket_straw = type { %struct.crush_bucket, ptr, ptr }
%struct.crush_bucket_straw2 = type { %struct.crush_bucket, ptr }
%struct.crush_map = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uniform\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"list\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tree\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"straw\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"straw2\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@switch.table.crush_bucket_alg_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 13, i32 36 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 14, i32 33 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 15, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 16, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 17, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [26 x i8] c"../net/ceph/crush/crush.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 18, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [35 x i8] c"switch.table.crush_bucket_alg_name\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.crush_bucket_alg_name], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.crush_bucket_alg_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @crush_bucket_alg_name(i32 noundef %alg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %alg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.crush_bucket_alg_name, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.5, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crush_get_bucket_item_weight(ptr nocapture noundef readonly %b, i32 noundef %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %p)
  %cmp.not = icmp ugt i32 %1, %p
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %alg = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %alg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alg, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.return_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb2
    i8 4, label %sw.bb4
    i8 5, label %sw.bb7
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %item_weight = getelementptr inbounds %struct.crush_bucket_uniform, ptr %b, i32 0, i32 1
  br label %return.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %item_weights = getelementptr inbounds %struct.crush_bucket_list, ptr %b, i32 0, i32 1
  %5 = ptrtoint ptr %item_weights to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %item_weights, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %p
  br label %return.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %node_weights = getelementptr inbounds %struct.crush_bucket_tree, ptr %b, i32 0, i32 2
  %7 = ptrtoint ptr %node_weights to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node_weights, align 4
  %add.i = shl i32 %p, 1
  %sub.i = or i32 %add.i, 1
  %arrayidx3 = getelementptr i32, ptr %8, i32 %sub.i
  br label %return.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %item_weights5 = getelementptr inbounds %struct.crush_bucket_straw, ptr %b, i32 0, i32 1
  %9 = ptrtoint ptr %item_weights5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %item_weights5, align 4
  %arrayidx6 = getelementptr i32, ptr %10, i32 %p
  br label %return.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %item_weights8 = getelementptr inbounds %struct.crush_bucket_straw2, ptr %b, i32 0, i32 1
  %11 = ptrtoint ptr %item_weights8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %item_weights8, align 4
  %arrayidx9 = getelementptr i32, ptr %12, i32 %p
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %arrayidx9.sink = phi ptr [ %arrayidx9, %sw.bb7 ], [ %arrayidx6, %sw.bb4 ], [ %arrayidx3, %sw.bb2 ], [ %arrayidx, %sw.bb1 ], [ %item_weight, %sw.bb ]
  %13 = ptrtoint ptr %arrayidx9.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %14, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy_bucket_uniform(ptr noundef %b) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %items = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  %0 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items, align 4
  tail call void @kfree(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %b) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy_bucket_list(ptr noundef %b) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %item_weights = getelementptr inbounds %struct.crush_bucket_list, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %item_weights to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %item_weights, align 4
  tail call void @kfree(ptr noundef %1) #4
  %sum_weights = getelementptr inbounds %struct.crush_bucket_list, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %sum_weights to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sum_weights, align 4
  tail call void @kfree(ptr noundef %3) #4
  %items = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  %4 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %items, align 4
  tail call void @kfree(ptr noundef %5) #4
  tail call void @kfree(ptr noundef %b) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy_bucket_tree(ptr noundef %b) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %items = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  %0 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items, align 4
  tail call void @kfree(ptr noundef %1) #4
  %node_weights = getelementptr inbounds %struct.crush_bucket_tree, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %node_weights to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node_weights, align 4
  tail call void @kfree(ptr noundef %3) #4
  tail call void @kfree(ptr noundef %b) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy_bucket_straw(ptr noundef %b) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %straws = getelementptr inbounds %struct.crush_bucket_straw, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %straws to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %straws, align 4
  tail call void @kfree(ptr noundef %1) #4
  %item_weights = getelementptr inbounds %struct.crush_bucket_straw, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %item_weights to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item_weights, align 4
  tail call void @kfree(ptr noundef %3) #4
  %items = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  %4 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %items, align 4
  tail call void @kfree(ptr noundef %5) #4
  tail call void @kfree(ptr noundef %b) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy_bucket_straw2(ptr noundef %b) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %item_weights = getelementptr inbounds %struct.crush_bucket_straw2, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %item_weights to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %item_weights, align 4
  tail call void @kfree(ptr noundef %1) #4
  %items = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %items, align 4
  tail call void @kfree(ptr noundef %3) #4
  tail call void @kfree(ptr noundef %b) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy_bucket(ptr noundef %b) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %alg = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %alg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alg, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb2
    i8 4, label %sw.bb3
    i8 5, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %items.i = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %item_weights.i = getelementptr inbounds %struct.crush_bucket_list, ptr %b, i32 0, i32 1
  %3 = ptrtoint ptr %item_weights.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %item_weights.i, align 4
  tail call void @kfree(ptr noundef %4) #4
  %sum_weights.i = getelementptr inbounds %struct.crush_bucket_list, ptr %b, i32 0, i32 2
  %5 = ptrtoint ptr %sum_weights.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sum_weights.i, align 4
  tail call void @kfree(ptr noundef %6) #4
  %items.i10 = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %items.i11 = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  %7 = ptrtoint ptr %items.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %items.i11, align 4
  tail call void @kfree(ptr noundef %8) #4
  %node_weights.i = getelementptr inbounds %struct.crush_bucket_tree, ptr %b, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %straws.i = getelementptr inbounds %struct.crush_bucket_straw, ptr %b, i32 0, i32 2
  %9 = ptrtoint ptr %straws.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %straws.i, align 4
  tail call void @kfree(ptr noundef %10) #4
  %item_weights.i12 = getelementptr inbounds %struct.crush_bucket_straw, ptr %b, i32 0, i32 1
  %11 = ptrtoint ptr %item_weights.i12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %item_weights.i12, align 4
  tail call void @kfree(ptr noundef %12) #4
  %items.i13 = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %item_weights.i14 = getelementptr inbounds %struct.crush_bucket_straw2, ptr %b, i32 0, i32 1
  %13 = ptrtoint ptr %item_weights.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %item_weights.i14, align 4
  tail call void @kfree(ptr noundef %14) #4
  %items.i15 = getelementptr inbounds %struct.crush_bucket, ptr %b, i32 0, i32 6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %items.i15.sink = phi ptr [ %items.i15, %sw.bb4 ], [ %items.i13, %sw.bb3 ], [ %node_weights.i, %sw.bb2 ], [ %items.i10, %sw.bb1 ], [ %items.i, %sw.bb ]
  %15 = ptrtoint ptr %items.i15.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %items.i15.sink, align 4
  tail call void @kfree(ptr noundef %16) #4
  tail call void @kfree(ptr noundef %b) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy(ptr noundef %map) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %for.cond.preheader

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

for.cond.preheader:                               ; preds = %entry
  %max_buckets = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %max_buckets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_buckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp38 = icmp sgt i32 %3, 0
  br i1 %cmp38, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %b.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %b.039
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crush_destroy_bucket(ptr noundef nonnull %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %b.039, 1
  %8 = ptrtoint ptr %max_buckets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_buckets, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  tail call void @kfree(ptr noundef %11) #4
  br label %if.end7

if.end7:                                          ; preds = %for.end, %entry.if.end7_crit_edge
  %rules = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 1
  %12 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rules, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end20_crit_edge, label %for.cond11.preheader

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

for.cond11.preheader:                             ; preds = %if.end7
  %max_rules = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 3
  %14 = ptrtoint ptr %max_rules to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1240.not = icmp eq i32 %15, 0
  br i1 %cmp1240.not, label %for.cond11.preheader.for.end18_crit_edge, label %for.cond11.preheader.for.body13_crit_edge

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

for.cond11.preheader.for.end18_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end18

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %b10.041 = phi i32 [ %inc17, %for.body13.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  %16 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rules, align 4
  %arrayidx15 = getelementptr ptr, ptr %17, i32 %b10.041
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  tail call void @kfree(ptr noundef %19) #4
  %inc17 = add nuw i32 %b10.041, 1
  %20 = ptrtoint ptr %max_rules to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rules, align 4
  %cmp12 = icmp ult i32 %inc17, %21
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.end18_crit_edge

for.body13.for.end18_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end18

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body13

for.end18:                                        ; preds = %for.body13.for.end18_crit_edge, %for.cond11.preheader.for.end18_crit_edge
  %22 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rules, align 4
  tail call void @kfree(ptr noundef %23) #4
  br label %if.end20

if.end20:                                         ; preds = %for.end18, %if.end7.if.end20_crit_edge
  %type_names = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 12
  tail call void @clear_crush_names(ptr noundef %type_names) #4
  %names = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 13
  tail call void @clear_crush_names(ptr noundef %names) #4
  tail call void @clear_choose_args(ptr noundef %map) #4
  tail call void @kfree(ptr noundef %map) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_destroy_rule(ptr noundef %rule) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %rule) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_crush_names(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_choose_args(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/crush/crush.c", i32 13, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/crush/crush.c", i32 14, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ceph/crush/crush.c", i32 15, i32 33}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ceph/crush/crush.c", i32 16, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/crush/crush.c", i32 17, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ceph/crush/crush.c", i32 18, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
