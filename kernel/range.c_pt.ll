; ModuleID = '/llk/IR_all_yes/kernel/range.c_pt.bc'
source_filename = "../kernel/range.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.range = type { i64, i64 }

@subtract_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: run out of slot in ranges\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"subtract_range\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel/range.c\00", [17 x i8] zeroinitializer }, align 32
@subtract_range._entry_ptr = internal global ptr @subtract_range._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [18 x i8] c"../kernel/range.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 105, i32 5 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @subtract_range._entry, ptr @subtract_range._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subtract_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @add_range(ptr nocapture noundef writeonly %range, i32 noundef %az, i32 noundef %nr_range, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp.not = icmp ult i64 %start, %end
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_range, i32 %az)
  %cmp1.not = icmp slt i32 %nr_range, %az
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end3, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.range, ptr %range, i32 %nr_range
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %start, ptr %arrayidx, align 8
  %end6 = getelementptr %struct.range, ptr %range, i32 %nr_range, i32 1
  %1 = ptrtoint ptr %end6 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %end, ptr %end6, align 8
  %inc = add nsw i32 %nr_range, 1
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %inc, %if.end3 ], [ %nr_range, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_range_with_merge(ptr nocapture noundef %range, i32 noundef %az, i32 noundef %nr_range, i64 noundef %start, i64 noundef %end) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp.not = icmp ult i64 %start, %end
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_range)
  %cmp190 = icmp sgt i32 %nr_range, 0
  br i1 %cmp190, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %nr_range.addr.094 = phi i32 [ %nr_range.addr.1, %cleanup.for.body_crit_edge ], [ %nr_range, %for.cond.preheader.for.body_crit_edge ]
  %start.addr.093 = phi i64 [ %start.addr.1, %cleanup.for.body_crit_edge ], [ %start, %for.cond.preheader.for.body_crit_edge ]
  %end.addr.092 = phi i64 [ %end.addr.1, %cleanup.for.body_crit_edge ], [ %end, %for.cond.preheader.for.body_crit_edge ]
  %i.091 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.range, ptr %range, i32 %i.091
  %end2 = getelementptr %struct.range, ptr %range, i32 %i.091, i32 1
  %0 = ptrtoint ptr %end2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %end2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 %start.addr.093)
  %5 = tail call i64 @llvm.umin.i64(i64 %1, i64 %end.addr.092)
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %5)
  %cmp16 = icmp ugt i64 %4, %5
  br i1 %cmp16, label %if.end4.cleanup_crit_edge, label %if.end18

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i64 @llvm.umin.i64(i64 %3, i64 %start.addr.093)
  %7 = tail call i64 @llvm.umax.i64(i64 %1, i64 %end.addr.092)
  %add = add nsw i32 %i.091, 1
  %arrayidx36 = getelementptr %struct.range, ptr %range, i32 %add
  %sub = sub i32 %nr_range.addr.094, %add
  %mul = shl i32 %sub, 4
  %8 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx36, i32 %mul)
  %sub38 = add nsw i32 %nr_range.addr.094, -1
  %arrayidx39 = getelementptr %struct.range, ptr %range, i32 %sub38
  %dec44 = add i32 %i.091, -1
  %9 = call ptr @memset(ptr %arrayidx39, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %i.1 = phi i32 [ %dec44, %if.end18 ], [ %i.091, %for.body.cleanup_crit_edge ], [ %i.091, %if.end4.cleanup_crit_edge ]
  %end.addr.1 = phi i64 [ %7, %if.end18 ], [ %end.addr.092, %for.body.cleanup_crit_edge ], [ %end.addr.092, %if.end4.cleanup_crit_edge ]
  %start.addr.1 = phi i64 [ %6, %if.end18 ], [ %start.addr.093, %for.body.cleanup_crit_edge ], [ %start.addr.093, %if.end4.cleanup_crit_edge ]
  %nr_range.addr.1 = phi i32 [ %sub38, %if.end18 ], [ %nr_range.addr.094, %for.body.cleanup_crit_edge ], [ %nr_range.addr.094, %if.end4.cleanup_crit_edge ]
  %inc = add i32 %i.1, 1
  %cmp1 = icmp slt i32 %inc, %nr_range.addr.1
  br i1 %cmp1, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %end.addr.0.lcssa = phi i64 [ %end, %for.cond.preheader.for.end_crit_edge ], [ %end.addr.1, %cleanup.for.end_crit_edge ]
  %start.addr.0.lcssa = phi i64 [ %start, %for.cond.preheader.for.end_crit_edge ], [ %start.addr.1, %cleanup.for.end_crit_edge ]
  %nr_range.addr.0.lcssa = phi i32 [ %nr_range, %for.cond.preheader.for.end_crit_edge ], [ %nr_range.addr.1, %cleanup.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %start.addr.0.lcssa, i64 %end.addr.0.lcssa)
  %cmp.not.i = icmp ult i64 %start.addr.0.lcssa, %end.addr.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_range.addr.0.lcssa, i32 %az)
  %cmp1.not.i = icmp slt i32 %nr_range.addr.0.lcssa, %az
  %or.cond.i = and i1 %cmp.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end3.i, label %for.end.cleanup46_crit_edge

for.end.cleanup46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end3.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.range, ptr %range, i32 %nr_range.addr.0.lcssa
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %start.addr.0.lcssa, ptr %arrayidx.i, align 8
  %end6.i = getelementptr %struct.range, ptr %range, i32 %nr_range.addr.0.lcssa, i32 1
  %11 = ptrtoint ptr %end6.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %end.addr.0.lcssa, ptr %end6.i, align 8
  %inc.i = add nsw i32 %nr_range.addr.0.lcssa, 1
  br label %cleanup46

cleanup46:                                        ; preds = %if.end3.i, %for.end.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %nr_range, %entry.cleanup46_crit_edge ], [ %inc.i, %if.end3.i ], [ %nr_range.addr.0.lcssa, %for.end.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @subtract_range(ptr nocapture noundef %range, i32 noundef %az, i64 noundef %start, i64 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp.not = icmp ult i64 %start, %end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %az)
  %cmp1144 = icmp sgt i32 %az, 0
  %or.cond146 = and i1 %cmp.not, %cmp1144
  br i1 %or.cond146, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc75.for.body_crit_edge, %entry.for.body_crit_edge
  %j.0145 = phi i32 [ %inc76, %for.inc75.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.range, ptr %range, i32 %j.0145
  %end2 = getelementptr %struct.range, ptr %range, i32 %j.0145, i32 1
  %0 = ptrtoint ptr %end2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %end2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.body.for.inc75_crit_edge, label %if.end4

for.body.for.inc75_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc75

if.end4:                                          ; preds = %for.body
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %start)
  %cmp7.not = icmp ult i64 %3, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %end)
  %cmp10.not = icmp ugt i64 %1, %end
  %or.cond = select i1 %cmp7.not, i1 true, i1 %cmp10.not
  br i1 %or.cond, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  br label %for.inc75

if.end16:                                         ; preds = %if.end4
  br i1 %cmp7.not, label %land.lhs.true35, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %end)
  %cmp27 = icmp ult i64 %3, %end
  %or.cond139 = select i1 %cmp10.not, i1 %cmp27, i1 false
  br i1 %or.cond139, label %if.then28, label %land.lhs.true20.for.inc75_crit_edge

land.lhs.true20.for.inc75_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc75

if.then28:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %end, ptr %arrayidx, align 8
  br label %for.inc75

land.lhs.true35:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %end)
  %cmp38.not = icmp ule i64 %1, %end
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %start)
  %cmp42 = icmp ugt i64 %1, %start
  %or.cond140 = and i1 %cmp38.not, %cmp42
  br i1 %or.cond140, label %if.then43, label %land.lhs.true50

if.then43:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %end2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %start, ptr %end2, align 8
  br label %for.inc75

land.lhs.true50:                                  ; preds = %land.lhs.true35
  br i1 %cmp10.not, label %land.lhs.true50.for.body57_crit_edge, label %land.lhs.true50.for.inc75_crit_edge

land.lhs.true50.for.inc75_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc75

land.lhs.true50.for.body57_crit_edge:             ; preds = %land.lhs.true50
  br label %for.body57

for.body57:                                       ; preds = %for.inc.for.body57_crit_edge, %land.lhs.true50.for.body57_crit_edge
  %i.0143 = phi i32 [ %inc, %for.inc.for.body57_crit_edge ], [ 0, %land.lhs.true50.for.body57_crit_edge ]
  %end59 = getelementptr %struct.range, ptr %range, i32 %i.0143, i32 1
  %7 = ptrtoint ptr %end59 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %end59, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp60 = icmp eq i64 %8, 0
  br i1 %cmp60, label %if.then64.critedge, label %for.inc

for.inc:                                          ; preds = %for.body57
  %inc = add nuw nsw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %az
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body57_crit_edge

for.inc.for.body57_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

if.then64.critedge:                               ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx67 = getelementptr %struct.range, ptr %range, i32 %i.0143
  %9 = ptrtoint ptr %end59 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %1, ptr %end59, align 8
  %10 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %end, ptr %arrayidx67, align 8
  br label %if.end71

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %if.end71

if.end71:                                         ; preds = %do.end, %if.then64.critedge
  %11 = ptrtoint ptr %end2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %start, ptr %end2, align 8
  br label %for.inc75

for.inc75:                                        ; preds = %if.end71, %land.lhs.true50.for.inc75_crit_edge, %if.then43, %if.then28, %land.lhs.true20.for.inc75_crit_edge, %if.then11, %for.body.for.inc75_crit_edge
  %inc76 = add nuw nsw i32 %j.0145, 1
  %exitcond149.not = icmp eq i32 %inc76, %az
  br i1 %exitcond149.not, label %for.inc75.cleanup_crit_edge, label %for.inc75.for.body_crit_edge

for.inc75.for.body_crit_edge:                     ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc75.cleanup_crit_edge:                      ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc75.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clean_sort_range(ptr noundef %range, i32 noundef %az) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %az, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp74 = icmp sgt i32 %sub, 0
  br i1 %cmp74, label %entry.for.body_crit_edge, label %entry.for.end25_crit_edge

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %entry.for.body_crit_edge
  %k.077 = phi i32 [ %k.2, %for.inc24.for.body_crit_edge ], [ %sub, %entry.for.body_crit_edge ]
  %i.075 = phi i32 [ %inc, %for.inc24.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.range, ptr %range, i32 %i.075
  %end = getelementptr %struct.range, ptr %range, i32 %i.075, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.cond1.preheader, label %for.body.for.inc24_crit_edge

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc24

for.cond1.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %k.077, i32 %i.075)
  %cmp269 = icmp sgt i32 %k.077, %i.075
  br i1 %cmp269, label %for.cond1.preheader.for.body3_crit_edge, label %for.cond1.preheader.for.end_crit_edge

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %j.070 = phi i32 [ %dec, %for.inc.for.body3_crit_edge ], [ %k.077, %for.cond1.preheader.for.body3_crit_edge ]
  %end5 = getelementptr %struct.range, ptr %range, i32 %j.070, i32 1
  %2 = ptrtoint ptr %end5 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %end5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool6.not = icmp eq i64 %3, 0
  br i1 %tobool6.not, label %for.inc, label %for.body3.for.end_crit_edge

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body3
  %dec = add nsw i32 %j.070, -1
  %cmp2 = icmp sgt i32 %dec, %i.075
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.end25_crit_edge

for.inc.for.end25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ %k.077, %for.cond1.preheader.for.end_crit_edge ], [ %j.070, %for.body3.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %i.075)
  %cmp9 = icmp eq i32 %j.0.lcssa, %i.075
  br i1 %cmp9, label %for.end.for.end25_crit_edge, label %if.end11

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr %struct.range, ptr %range, i32 %j.0.lcssa
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx12, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx, align 8
  %end16 = getelementptr %struct.range, ptr %range, i32 %j.0.lcssa, i32 1
  %7 = ptrtoint ptr %end16 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %end16, align 8
  %9 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %end, align 8
  %dec23 = add nsw i32 %j.0.lcssa, -1
  %10 = call ptr @memset(ptr %arrayidx12, i32 0, i32 16)
  br label %for.inc24

for.inc24:                                        ; preds = %if.end11, %for.body.for.inc24_crit_edge
  %k.2 = phi i32 [ %k.077, %for.body.for.inc24_crit_edge ], [ %dec23, %if.end11 ]
  %inc = add nuw nsw i32 %i.075, 1
  %cmp = icmp slt i32 %inc, %k.2
  br i1 %cmp, label %for.inc24.for.body_crit_edge, label %for.inc24.for.end25_crit_edge

for.inc24.for.end25_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end25:                                        ; preds = %for.inc24.for.end25_crit_edge, %for.end.for.end25_crit_edge, %for.inc.for.end25_crit_edge, %entry.for.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %az)
  %cmp2778 = icmp sgt i32 %az, 0
  br i1 %cmp2778, label %for.end25.for.body28_crit_edge, label %for.end25.for.end36_crit_edge

for.end25.for.end36_crit_edge:                    ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.end25.for.body28_crit_edge:                   ; preds = %for.end25
  br label %for.body28

for.body28:                                       ; preds = %for.inc34.for.body28_crit_edge, %for.end25.for.body28_crit_edge
  %i.179 = phi i32 [ %inc35, %for.inc34.for.body28_crit_edge ], [ 0, %for.end25.for.body28_crit_edge ]
  %end30 = getelementptr %struct.range, ptr %range, i32 %i.179, i32 1
  %11 = ptrtoint ptr %end30 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %end30, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool31.not = icmp eq i64 %12, 0
  br i1 %tobool31.not, label %for.body28.for.end36_crit_edge, label %for.inc34

for.body28.for.end36_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.inc34:                                        ; preds = %for.body28
  %inc35 = add nuw nsw i32 %i.179, 1
  %exitcond.not = icmp eq i32 %inc35, %az
  br i1 %exitcond.not, label %for.inc34.for.end36_crit_edge, label %for.inc34.for.body28_crit_edge

for.inc34.for.body28_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %for.body28.for.end36_crit_edge, %for.end25.for.end36_crit_edge
  %nr_range.0 = phi i32 [ %az, %for.end25.for.end36_crit_edge ], [ %i.179, %for.body28.for.end36_crit_edge ], [ %az, %for.inc34.for.end36_crit_edge ]
  tail call void @sort(ptr noundef %range, i32 noundef %nr_range.0, i32 noundef 16, ptr noundef nonnull @cmp_range, ptr noundef null) #7
  ret i32 %nr_range.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_range(ptr nocapture noundef readonly %x1, ptr nocapture noundef readonly %x2) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %x1, align 8
  %2 = ptrtoint ptr %x2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %x2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp4 = icmp ugt i64 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sort_range(ptr noundef %range, i32 noundef %nr_range) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sort(ptr noundef %range, i32 noundef %nr_range, i32 noundef 16, ptr noundef nonnull @cmp_range, ptr noundef null) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/range.c", i32 105, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @subtract_range._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @subtract_range._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
