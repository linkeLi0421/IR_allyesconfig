; ModuleID = '/llk/IR_all_yes/drivers/base/map.c_pt.bc'
source_filename = "../drivers/base/map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.probe = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.kobj_map = type { [255 x ptr], ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kobj_map(ptr nocapture noundef %domain, i32 noundef %dev, i32 noundef %range, ptr noundef %module, ptr noundef %probe, ptr noundef %lock, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %dev, -1
  %sub = add i32 %add, %range
  %shr = lshr i32 %sub, 20
  %shr1 = lshr i32 %dev, 20
  %sub2 = sub nsw i32 1, %shr1
  %add3 = add nsw i32 %sub2, %shr
  %0 = tail call i32 @llvm.umin.i32(i32 %add3, i32 255)
  %1 = mul nuw nsw i32 %0, 28
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #8
  %cmp5 = icmp eq ptr %call8.i, null
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp861.not = icmp eq i32 %0, 0
  br i1 %cmp861.not, label %for.end24.sink.split, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p.063 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call8.i, %for.cond.preheader.for.body_crit_edge ]
  %i.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %owner = getelementptr inbounds %struct.probe, ptr %p.063, i32 0, i32 3
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %module, ptr %owner, align 4
  %get = getelementptr inbounds %struct.probe, ptr %p.063, i32 0, i32 4
  %3 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %probe, ptr %get, align 4
  %lock9 = getelementptr inbounds %struct.probe, ptr %p.063, i32 0, i32 5
  %4 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock9, align 4
  %dev10 = getelementptr inbounds %struct.probe, ptr %p.063, i32 0, i32 1
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dev, ptr %dev10, align 4
  %range11 = getelementptr inbounds %struct.probe, ptr %p.063, i32 0, i32 2
  %6 = ptrtoint ptr %range11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %range, ptr %range11, align 4
  %data12 = getelementptr inbounds %struct.probe, ptr %p.063, i32 0, i32 6
  %7 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %data12, align 4
  %inc = add nuw nsw i32 %i.062, 1
  %incdec.ptr = getelementptr %struct.probe, ptr %p.063, i32 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %lock13 = getelementptr inbounds %struct.kobj_map, ptr %domain, i32 0, i32 1
  %8 = ptrtoint ptr %lock13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock13, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #5
  br i1 %cmp861.not, label %for.end.for.end24_crit_edge, label %for.body16.preheader

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end24

for.body16.preheader:                             ; preds = %for.end
  %idx.neg = sub nsw i32 0, %0
  %add.ptr = getelementptr %struct.probe, ptr %incdec.ptr, i32 %idx.neg
  br label %for.body16

for.body16:                                       ; preds = %while.end.for.body16_crit_edge, %for.body16.preheader
  %p.167 = phi ptr [ %incdec.ptr22, %while.end.for.body16_crit_edge ], [ %add.ptr, %for.body16.preheader ]
  %i.166 = phi i32 [ %inc21, %while.end.for.body16_crit_edge ], [ 0, %for.body16.preheader ]
  %index.065 = phi i32 [ %inc23, %while.end.for.body16_crit_edge ], [ %shr1, %for.body16.preheader ]
  %rem = urem i32 %index.065, 255
  %arrayidx = getelementptr [255 x ptr], ptr %domain, i32 0, i32 %rem
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %for.body16
  %s.0 = phi ptr [ %arrayidx, %for.body16 ], [ %11, %land.rhs.while.cond_crit_edge ]
  %10 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s.0, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %range17 = getelementptr inbounds %struct.probe, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %range17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %range17, align 4
  %cmp18 = icmp ult i32 %13, %range
  br i1 %cmp18, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %14 = ptrtoint ptr %p.167 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %p.167, align 4
  %15 = ptrtoint ptr %s.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %p.167, ptr %s.0, align 4
  %inc21 = add nuw nsw i32 %i.166, 1
  %incdec.ptr22 = getelementptr %struct.probe, ptr %p.167, i32 1
  %inc23 = add nuw nsw i32 %index.065, 1
  %exitcond68.not = icmp eq i32 %inc21, %0
  br i1 %exitcond68.not, label %while.end.for.end24_crit_edge, label %while.end.for.body16_crit_edge

while.end.for.body16_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

while.end.for.end24_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end24

for.end24.sink.split:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %lock1377 = getelementptr inbounds %struct.kobj_map, ptr %domain, i32 0, i32 1
  %16 = ptrtoint ptr %lock1377 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock1377, align 4
  tail call void @mutex_lock_nested(ptr noundef %17, i32 noundef 0) #5
  br label %for.end24

for.end24:                                        ; preds = %for.end24.sink.split, %while.end.for.end24_crit_edge, %for.end.for.end24_crit_edge
  %lock1378 = phi ptr [ %lock13, %for.end.for.end24_crit_edge ], [ %lock1377, %for.end24.sink.split ], [ %lock13, %while.end.for.end24_crit_edge ]
  %18 = ptrtoint ptr %lock1378 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock1378, align 4
  tail call void @mutex_unlock(ptr noundef %19) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kobj_unmap(ptr nocapture noundef %domain, i32 noundef %dev, i32 noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %dev, -1
  %sub = add i32 %add, %range
  %shr = lshr i32 %sub, 20
  %shr1 = lshr i32 %dev, 20
  %sub2 = sub nsw i32 1, %shr1
  %add3 = add nsw i32 %sub2, %shr
  %0 = tail call i32 @llvm.umin.i32(i32 %add3, i32 255)
  %lock = getelementptr inbounds %struct.kobj_map, ptr %domain, i32 0, i32 1
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp547.not = icmp eq i32 %0, 0
  br i1 %cmp547.not, label %entry.for.end20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %found.050 = phi ptr [ %found.4, %for.end.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %i.049 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %index.048 = phi i32 [ %inc19, %for.end.for.body_crit_edge ], [ %shr1, %entry.for.body_crit_edge ]
  %rem = urem i32 %index.048, 255
  %arrayidx = getelementptr [255 x ptr], ptr %domain, i32 0, i32 %rem
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not44 = icmp eq ptr %4, null
  br i1 %tobool.not44, label %for.body.for.end_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %5 = phi ptr [ %16, %for.inc.for.body7_crit_edge ], [ %4, %for.body.for.body7_crit_edge ]
  %s.045 = phi ptr [ %14, %for.inc.for.body7_crit_edge ], [ %arrayidx, %for.body.for.body7_crit_edge ]
  %dev8 = getelementptr inbounds %struct.probe, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %dev)
  %cmp9 = icmp eq i32 %7, %dev
  br i1 %cmp9, label %land.lhs.true, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body7
  %range10 = getelementptr inbounds %struct.probe, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %range10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %range10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %range)
  %cmp11 = icmp eq i32 %9, %range
  br i1 %cmp11, label %cleanup, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %s.045 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %s.045, align 4
  %tobool13.not = icmp eq ptr %found.050, null
  %spec.select = select i1 %tobool13.not, ptr %5, ptr %found.050
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body7.for.inc_crit_edge
  %13 = ptrtoint ptr %s.045 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s.045, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %for.body.for.end_crit_edge
  %found.4 = phi ptr [ %spec.select, %cleanup ], [ %found.050, %for.body.for.end_crit_edge ], [ %found.050, %for.inc.for.end_crit_edge ]
  %inc = add nuw nsw i32 %i.049, 1
  %inc19 = add nuw nsw i32 %index.048, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end.for.end20_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.for.end20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.end20:                                        ; preds = %for.end.for.end20_crit_edge, %entry.for.end20_crit_edge
  %found.0.lcssa = phi ptr [ null, %entry.for.end20_crit_edge ], [ %found.4, %for.end.for.end20_crit_edge ]
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %18) #5
  tail call void @kfree(ptr noundef %found.0.lcssa) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kobj_lookup(ptr nocapture noundef readonly %domain, i32 noundef %dev, ptr noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kobj_map, ptr %domain, i32 0, i32 1
  %shr = lshr i32 %dev, 20
  %rem.lhs.trunc = trunc i32 %shr to i16
  %rem69 = urem i16 %rem.lhs.trunc, 255
  %rem.zext = zext i16 %rem69 to i32
  %arrayidx = getelementptr [255 x ptr], ptr %domain, i32 0, i32 %rem.zext
  br label %retry

retry:                                            ; preds = %if.end24.retry_crit_edge, %entry
  %best.0 = phi i32 [ -1, %entry ], [ %sub15, %if.end24.retry_crit_edge ]
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.078 = load ptr, ptr %arrayidx, align 4
  %tobool.not79 = icmp eq ptr %p.078, null
  br i1 %tobool.not79, label %retry.for.end_crit_edge, label %retry.for.body_crit_edge

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

retry.for.end_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %retry.for.body_crit_edge
  %p.081 = phi ptr [ %p.0, %cleanup.for.body_crit_edge ], [ %p.078, %retry.for.body_crit_edge ]
  %best.180 = phi i32 [ %best.2, %cleanup.for.body_crit_edge ], [ %best.0, %retry.for.body_crit_edge ]
  %dev1 = getelementptr inbounds %struct.probe, ptr %p.081, i32 0, i32 1
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %dev)
  %cmp = icmp ugt i32 %4, %dev
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %range = getelementptr inbounds %struct.probe, ptr %p.081, i32 0, i32 2
  %5 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %range, align 4
  %add = add i32 %6, -1
  %sub = add i32 %add, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %dev)
  %cmp3 = icmp ult i32 %sub, %dev
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %best.180)
  %cmp6.not = icmp ult i32 %add, %best.180
  br i1 %cmp6.not, label %if.end8, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end8:                                          ; preds = %if.end
  %owner9 = getelementptr inbounds %struct.probe, ptr %p.081, i32 0, i32 3
  %7 = ptrtoint ptr %owner9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner9, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %8) #5
  br i1 %call, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %owner9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner9, align 4
  %data13 = getelementptr inbounds %struct.probe, ptr %p.081, i32 0, i32 6
  %11 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data13, align 4
  %get = getelementptr inbounds %struct.probe, ptr %p.081, i32 0, i32 4
  %13 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get, align 4
  %15 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %range, align 4
  %sub15 = add i32 %16, -1
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev1, align 4
  %sub17 = sub i32 %dev, %18
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub17, ptr %index, align 4
  %lock18 = getelementptr inbounds %struct.probe, ptr %p.081, i32 0, i32 5
  %20 = ptrtoint ptr %lock18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock18, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.end11.if.end24_crit_edge, label %land.lhs.true

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end11
  %call21 = tail call i32 %21(i32 noundef %dev, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @module_put(ptr noundef %10) #5
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %23) #5
  %call26 = tail call ptr %14(i32 noundef %dev, ptr noundef %index, ptr noundef %12) #5
  tail call void @module_put(ptr noundef %10) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end24.retry_crit_edge, label %if.end24.cleanup33_crit_edge

if.end24.cleanup33_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup33

if.end24.retry_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry

cleanup:                                          ; preds = %if.then23, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best.2 = phi i32 [ %sub15, %if.then23 ], [ %best.180, %lor.lhs.false.cleanup_crit_edge ], [ %best.180, %for.body.cleanup_crit_edge ], [ %best.180, %if.end8.cleanup_crit_edge ]
  %24 = ptrtoint ptr %p.081 to i32
  call void @__asan_load4_noabort(i32 %24)
  %p.0 = load ptr, ptr %p.081, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge, %retry.for.end_crit_edge
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %26) #5
  br label %cleanup33

cleanup33:                                        ; preds = %for.end, %if.end24.cleanup33_crit_edge
  %retval.3 = phi ptr [ null, %for.end ], [ %call26, %if.end24.cleanup33_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kobj_map_init(ptr noundef %base_probe, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #9
  %cmp = icmp eq ptr %call7.i, null
  %cmp2 = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %call7.i) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.probe, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %dev, align 4
  %range = getelementptr inbounds %struct.probe, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %range, align 8
  %get = getelementptr inbounds %struct.probe, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base_probe, ptr %get, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.018 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [255 x ptr], ptr %call7.i, i32 0, i32 %i.018
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %lock4 = getelementptr inbounds %struct.kobj_map, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock, ptr %lock4, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call7.i, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
