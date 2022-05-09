; ModuleID = '/llk/IR_all_yes/sound/firewire/oxfw/oxfw-command.c_pt.bc'
source_filename = "../sound/firewire/oxfw/oxfw-command.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@amdtp_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_stream_set_format(ptr noundef %unit, i32 noundef %dir, i32 noundef %pid, ptr nocapture noundef readonly %format, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #8
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call9.i, align 128
  %arrayidx1 = getelementptr i8, ptr %call9.i, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call9.i, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -65, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr i8, ptr %call9.i, i32 3
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %arrayidx3, align 1
  %conv = trunc i32 %dir to i8
  %arrayidx4 = getelementptr i8, ptr %call9.i, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i8, ptr %call9.i, i32 5
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %call9.i, i32 6
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx6, align 2
  %conv7 = trunc i32 %pid to i8
  %arrayidx8 = getelementptr i8, ptr %call9.i, i32 7
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %call9.i, i32 8
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx9, align 8
  %arrayidx10 = getelementptr i8, ptr %call9.i, i32 9
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx10, align 1
  %add.ptr = getelementptr i8, ptr %call9.i, i32 10
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %format, i32 %len)
  %call13 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull %call9.i, i32 noundef %add, i32 noundef 510) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end.if.end37_crit_edge, label %if.else

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %add)
  %cmp18 = icmp ult i32 %call13, %add
  br i1 %cmp18, label %if.else.if.end37_crit_edge, label %if.else21

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %switch.selectcmp = icmp eq i8 %12, 10
  %switch.select = select i1 %switch.selectcmp, i32 -22, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %switch.selectcmp61 = icmp eq i8 %12, 8
  %switch.select62 = select i1 %switch.selectcmp61, i32 -6, i32 %switch.select
  br label %if.end37

if.end37:                                         ; preds = %if.else21, %if.else.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %err.0 = phi i32 [ %call13, %if.end.if.end37_crit_edge ], [ -5, %if.else.if.end37_crit_edge ], [ %switch.select62, %if.else21 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end37 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcp_avc_transaction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_stream_get_format(ptr noundef %unit, i32 noundef %dir, i32 noundef %pid, ptr noundef %buf, ptr nocapture noundef %len, i32 noundef %eid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %eid)
  %cmp = icmp eq i32 %eid, 255
  %. = select i1 %cmp, i8 -64, i8 -63
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -65, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 3
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %., ptr %arrayidx3, align 1
  %conv4 = trunc i32 %dir to i8
  %arrayidx5 = getelementptr i8, ptr %buf, i32 4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 5
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %buf, i32 6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx7, align 1
  %conv8 = trunc i32 %pid to i8
  %arrayidx9 = getelementptr i8, ptr %buf, i32 7
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 8
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %buf, i32 9
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx11, align 1
  %conv13 = trunc i32 %eid to i8
  %arrayidx14 = getelementptr i8, ptr %buf, i32 10
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %buf, i32 11
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx15, align 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %call = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef %buf, i32 noundef 12, ptr noundef %buf, i32 noundef %13, i32 noundef 254) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %entry.end_crit_edge, label %if.else19

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp20 = icmp ult i32 %call, 12
  br i1 %cmp20, label %if.else19.end_crit_edge, label %if.else23

if.else19.end_crit_edge:                          ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.else23:                                        ; preds = %if.else19
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.else41 [
    i8 8, label %if.else23.end_crit_edge
    i8 10, label %if.then34
    i8 11, label %if.then40
  ]

if.else23.end_crit_edge:                          ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then34:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then40:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.else41:                                        ; preds = %if.else23
  br i1 %cmp, label %if.then61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else41
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 1
  %conv45 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv45, i32 %eid)
  %cmp46.not = icmp eq i32 %conv45, %eid
  br i1 %cmp46.not, label %if.else63, label %land.lhs.true.end_crit_edge

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then61:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %call, -10
  %19 = call ptr @memmove(ptr %buf, ptr %arrayidx14, i32 %sub)
  br label %if.end67

if.else63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %sub65 = add nsw i32 %call, -11
  %20 = call ptr @memmove(ptr %buf, ptr %arrayidx15, i32 %sub65)
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %if.then61
  %storemerge = phi i32 [ %sub65, %if.else63 ], [ %sub, %if.then61 ]
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %len, align 4
  br label %end

end:                                              ; preds = %if.end67, %land.lhs.true.end_crit_edge, %if.then40, %if.then34, %if.else23.end_crit_edge, %if.else19.end_crit_edge, %entry.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end67 ], [ -5, %land.lhs.true.end_crit_edge ], [ -6, %if.else23.end_crit_edge ], [ -5, %if.else19.end_crit_edge ], [ -11, %if.then40 ], [ -22, %if.then34 ], [ %call, %entry.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_general_inquiry_sig_fmt(ptr noundef %unit, i32 noundef %rate, i32 noundef %dir, i16 noundef zeroext %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdtp_rate_table to i32))
  %0 = load i32, ptr @amdtp_rate_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %rate)
  %cmp1 = icmp eq i32 %0, %rate
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp1.1 = icmp eq i32 %1, %rate
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %rate)
  %cmp1.2 = icmp eq i32 %2, %rate
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3) to i32))
  %3 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp1.3 = icmp eq i32 %3, %rate
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4) to i32))
  %4 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp1.4 = icmp eq i32 %4, %rate
  br i1 %cmp1.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5) to i32))
  %5 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp1.5 = icmp eq i32 %5, %rate
  br i1 %cmp1.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.5

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6) to i32))
  %6 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp1.6 = icmp eq i32 %6, %rate
  br i1 %cmp1.6, label %for.inc.5.if.end4_crit_edge, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %sfc.069.lcssa = phi i8 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 8) #9
  %cmp5 = icmp eq ptr %call7.i.i, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %call7.i.i, align 8
  %arrayidx9 = getelementptr i8, ptr %call7.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp10 = icmp eq i32 %dir, 0
  %spec.select71 = select i1 %cmp10, i8 25, i8 24
  %10 = getelementptr i8, ptr %call7.i.i, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select71, ptr %10, align 2
  %conv15 = trunc i16 %pid to i8
  %arrayidx16 = getelementptr i8, ptr %call7.i.i, i32 3
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv15, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr i8, ptr %call7.i.i, i32 4
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -112, ptr %arrayidx17, align 4
  %arrayidx20 = getelementptr i8, ptr %call7.i.i, i32 5
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sfc.069.lcssa, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %call7.i.i, i32 6
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx21, align 2
  %arrayidx22 = getelementptr i8, ptr %call7.i.i, i32 7
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx22, align 1
  %call23 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 8, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end7.if.end39_crit_edge, label %if.else27

if.end7.if.end39_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.else27:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call23)
  %cmp28 = icmp ult i32 %call23, 8
  br i1 %cmp28, label %if.else27.if.end39_crit_edge, label %if.else31

if.else27.if.end39_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.else31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %cmp34 = icmp eq i8 %18, 8
  %spec.select = select i1 %cmp34, i32 -6, i32 %call23
  br label %if.end39

if.end39:                                         ; preds = %if.else31, %if.else27.if.end39_crit_edge, %if.end7.if.end39_crit_edge
  %err.0 = phi i32 [ %call23, %if.end7.if.end39_crit_edge ], [ -5, %if.else27.if.end39_crit_edge ], [ %spec.select, %if.else31 ]
  %19 = tail call i32 @llvm.smin.i32(i32 %err.0, i32 0)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end4.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end39 ], [ -12, %if.end4.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
