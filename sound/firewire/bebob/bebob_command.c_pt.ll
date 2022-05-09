; ModuleID = '/llk/IR_all_yes/sound/firewire/bebob/bebob_command.c_pt.bc'
source_filename = "../sound/firewire/bebob/bebob_command.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_audio_set_selector(ptr noundef %unit, i32 noundef %subunit_id, i32 noundef %fb_id, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call7.i.i, align 8
  %2 = trunc i32 %subunit_id to i8
  %3 = and i8 %2, 7
  %conv = or i8 %3, 8
  %arrayidx1 = getelementptr i8, ptr %call7.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call7.i.i, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -72, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr i8, ptr %call7.i.i, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %arrayidx3, align 1
  %conv5 = trunc i32 %fb_id to i8
  %arrayidx6 = getelementptr i8, ptr %call7.i.i, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i8, ptr %call7.i.i, i32 5
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %call7.i.i, i32 6
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx8, align 2
  %conv10 = trunc i32 %num to i8
  %arrayidx11 = getelementptr i8, ptr %call7.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %call7.i.i, i32 8
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx12, align 8
  %call13 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i, i32 noundef 12, i32 noundef 510) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end.if.end36_crit_edge, label %if.else

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call13)
  %cmp17 = icmp ult i32 %call13, 9
  br i1 %cmp17, label %if.else.if.end36_crit_edge, label %if.else20

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %switch.selectcmp = icmp eq i8 %13, 10
  %switch.select = select i1 %switch.selectcmp, i32 -22, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %switch.selectcmp54 = icmp eq i8 %13, 8
  %switch.select55 = select i1 %switch.selectcmp54, i32 -38, i32 %switch.select
  br label %if.end36

if.end36:                                         ; preds = %if.else20, %if.else.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %err.0 = phi i32 [ %call13, %if.end.if.end36_crit_edge ], [ -5, %if.else.if.end36_crit_edge ], [ %switch.select55, %if.else20 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcp_avc_transaction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_audio_get_selector(ptr noundef %unit, i32 noundef %subunit_id, i32 noundef %fb_id, ptr nocapture noundef writeonly %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %2 = trunc i32 %subunit_id to i8
  %3 = and i8 %2, 7
  %conv = or i8 %3, 8
  %arrayidx1 = getelementptr i8, ptr %call7.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call7.i.i, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -72, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr i8, ptr %call7.i.i, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %arrayidx3, align 1
  %conv5 = trunc i32 %fb_id to i8
  %arrayidx6 = getelementptr i8, ptr %call7.i.i, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i8, ptr %call7.i.i, i32 5
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %call7.i.i, i32 6
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr i8, ptr %call7.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %call7.i.i, i32 8
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx10, align 8
  %call11 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i, i32 noundef 12, i32 noundef 382) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.end_crit_edge, label %if.else

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call11)
  %cmp15 = icmp ult i32 %call11, 9
  br i1 %cmp15, label %if.else.end_crit_edge, label %if.else18

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else18:                                        ; preds = %if.else
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call7.i.i, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end44 [
    i8 8, label %if.else18.end_crit_edge
    i8 10, label %if.then29
    i8 11, label %if.then35
  ]

if.else18.end_crit_edge:                          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then29:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then35:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end44:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %conv46 = zext i8 %16 to i32
  %17 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv46, ptr %num, align 4
  br label %end

end:                                              ; preds = %if.end44, %if.then35, %if.then29, %if.else18.end_crit_edge, %if.else.end_crit_edge, %if.end.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end44 ], [ -38, %if.else18.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then35 ], [ -22, %if.then29 ], [ %call11, %if.end.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_bridgeco_get_plug_type(ptr noundef %unit, ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i.i, i32 2
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 3
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %arrayidx2.i, align 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call7.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %add.ptr2.i.i = getelementptr i8, ptr %addr, i32 1
  %7 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 5)
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 9
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx3.i, align 1
  %call1 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i, i32 noundef 12, i32 noundef 766) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %if.else

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call1)
  %cmp4 = icmp ult i32 %call1, 11
  br i1 %cmp4, label %if.else.end_crit_edge, label %if.else6

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else6:                                         ; preds = %if.else
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %10, label %if.end30 [
    i8 8, label %if.else6.end_crit_edge
    i8 10, label %if.then15
    i8 11, label %if.then21
  ]

if.else6.end_crit_edge:                           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then15:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then21:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end30:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx31 = getelementptr i8, ptr %call7.i.i, i32 10
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx31, align 2
  %conv32 = zext i8 %13 to i32
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv32, ptr %type, align 4
  br label %end

end:                                              ; preds = %if.end30, %if.then21, %if.then15, %if.else6.end_crit_edge, %if.else.end_crit_edge, %if.end.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end30 ], [ -38, %if.else6.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then21 ], [ -22, %if.then15 ], [ %call1, %if.end.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_bridgeco_get_plug_ch_count(ptr noundef %unit, ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %ch_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i.i, i32 2
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 3
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %arrayidx2.i, align 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call7.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %add.ptr2.i.i = getelementptr i8, ptr %addr, i32 1
  %7 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 5)
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 9
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx3.i, align 1
  %call1 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i, i32 noundef 12, i32 noundef 766) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %if.else

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call1)
  %cmp4 = icmp ult i32 %call1, 11
  br i1 %cmp4, label %if.else.end_crit_edge, label %if.else6

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else6:                                         ; preds = %if.else
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %10, label %if.end30 [
    i8 8, label %if.else6.end_crit_edge
    i8 10, label %if.then15
    i8 11, label %if.then21
  ]

if.else6.end_crit_edge:                           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then15:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then21:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end30:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx31 = getelementptr i8, ptr %call7.i.i, i32 10
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx31, align 2
  %conv32 = zext i8 %13 to i32
  %14 = ptrtoint ptr %ch_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv32, ptr %ch_count, align 4
  br label %end

end:                                              ; preds = %if.end30, %if.then21, %if.then15, %if.else6.end_crit_edge, %if.else.end_crit_edge, %if.end.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end30 ], [ -38, %if.else6.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then21 ], [ -22, %if.then15 ], [ %call1, %if.end.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_bridgeco_get_plug_ch_pos(ptr noundef %unit, ptr nocapture noundef readonly %addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %buf, align 1
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 2
  %1 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -64, ptr %arrayidx2.i, align 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %buf, i32 1
  %5 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 4
  %add.ptr2.i.i = getelementptr i8, ptr %addr, i32 1
  %6 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 5)
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 9
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %arrayidx3.i, align 1
  %call = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef %buf, i32 noundef 12, ptr noundef %buf, i32 noundef 256, i32 noundef 766) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.else

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call)
  %cmp1 = icmp ult i32 %call, 11
  br i1 %cmp1, label %if.else.end_crit_edge, label %if.else3

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else3:                                         ; preds = %if.else
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %9, label %if.end26 [
    i8 8, label %if.else3.end_crit_edge
    i8 10, label %if.then12
    i8 11, label %if.then18
  ]

if.else3.end_crit_edge:                           ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then12:                                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then18:                                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end26:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %buf, i32 10
  %sub = add nsw i32 %call, -10
  %11 = call ptr @memmove(ptr %buf, ptr %add.ptr, i32 %sub)
  br label %end

end:                                              ; preds = %if.end26, %if.then18, %if.then12, %if.else3.end_crit_edge, %if.else.end_crit_edge, %entry.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end26 ], [ -38, %if.else3.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then18 ], [ -22, %if.then12 ], [ %call, %entry.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_bridgeco_get_plug_section_type(ptr noundef %unit, ptr nocapture noundef readonly %addr, i32 noundef %id, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i.i, i32 2
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 3
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %arrayidx2.i, align 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call7.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %add.ptr2.i.i = getelementptr i8, ptr %addr, i32 1
  %7 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 5)
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 9
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %arrayidx3.i, align 1
  %9 = trunc i32 %id to i8
  %conv = add i8 %9, 1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 10
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 2
  %call1 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i, i32 noundef 12, i32 noundef 1790) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %if.else

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call1)
  %cmp5 = icmp ult i32 %call1, 12
  br i1 %cmp5, label %if.else.end_crit_edge, label %if.else8

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else8:                                         ; preds = %if.else
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i.i, align 8
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %12, label %if.end34 [
    i8 8, label %if.else8.end_crit_edge
    i8 10, label %if.then19
    i8 11, label %if.then25
  ]

if.else8.end_crit_edge:                           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then19:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then25:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end34:                                         ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx35 = getelementptr i8, ptr %call7.i.i, i32 11
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx35, align 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %type, align 1
  br label %end

end:                                              ; preds = %if.end34, %if.then25, %if.then19, %if.else8.end_crit_edge, %if.else.end_crit_edge, %if.end.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end34 ], [ -38, %if.else8.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then25 ], [ -22, %if.then19 ], [ %call1, %if.end.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_bridgeco_get_plug_input(ptr noundef %unit, ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 18) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i.i, i32 2
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 3
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %arrayidx2.i, align 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %call7.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %add.ptr2.i.i = getelementptr i8, ptr %addr, i32 1
  %7 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 5)
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 9
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %arrayidx3.i, align 1
  %call1 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 16, ptr noundef nonnull %call7.i.i, i32 noundef 16, i32 noundef 254) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %if.else

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1)
  %cmp4 = icmp ult i32 %call1, 16
  br i1 %cmp4, label %if.else.end_crit_edge, label %if.else6

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else6:                                         ; preds = %if.else
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %10, label %if.end30 [
    i8 8, label %if.else6.end_crit_edge
    i8 10, label %if.then15
    i8 11, label %if.then21
  ]

if.else6.end_crit_edge:                           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then15:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then21:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end30:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 10
  %12 = call ptr @memcpy(ptr %input, ptr %add.ptr, i32 5)
  br label %end

end:                                              ; preds = %if.end30, %if.then21, %if.then15, %if.else6.end_crit_edge, %if.else.end_crit_edge, %if.end.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end30 ], [ -38, %if.else6.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then21 ], [ -22, %if.then15 ], [ %call1, %if.end.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_bridgeco_get_plug_strm_fmt(ptr noundef %unit, ptr nocapture noundef readonly %addr, ptr noundef %buf, ptr nocapture noundef %len, i32 noundef %eid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf, null
  br i1 %cmp, label %entry.end_crit_edge, label %lor.lhs.false

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp1 = icmp ult i32 %1, 12
  br i1 %cmp1, label %lor.lhs.false.end_crit_edge, label %if.end

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buf, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 47, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -63, ptr %arrayidx3, align 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 1
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 1
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %add.ptr2.i = getelementptr i8, ptr %addr, i32 1
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr2.i, i32 5)
  %conv = trunc i32 %eid to i8
  %arrayidx4 = getelementptr i8, ptr %buf, i32 10
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx4, align 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %buf, i32 noundef 12, ptr noundef nonnull %buf, i32 noundef %11, i32 noundef 1278) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end.end_crit_edge, label %if.else

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp8 = icmp ult i32 %call, 12
  br i1 %cmp8, label %if.else.end_crit_edge, label %if.else11

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else11:                                        ; preds = %if.else
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %13, label %if.else29 [
    i8 8, label %if.else11.end_crit_edge
    i8 10, label %if.then22
    i8 11, label %if.then28
  ]

if.else11.end_crit_edge:                          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then22:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then28:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.else29:                                        ; preds = %if.else11
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4, align 1
  %conv31 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31, i32 %eid)
  %cmp32.not = icmp eq i32 %conv31, %eid
  br i1 %cmp32.not, label %if.end44, label %if.else29.end_crit_edge

if.else29.end_crit_edge:                          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end44:                                         ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %buf, i32 11
  %sub = add nsw i32 %call, -11
  %17 = call ptr @memmove(ptr %buf, ptr %add.ptr, i32 %sub)
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %len, align 4
  br label %end

end:                                              ; preds = %if.end44, %if.else29.end_crit_edge, %if.then28, %if.then22, %if.else11.end_crit_edge, %if.else.end_crit_edge, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end44 ], [ -22, %lor.lhs.false.end_crit_edge ], [ -22, %entry.end_crit_edge ], [ -5, %if.else29.end_crit_edge ], [ -38, %if.else11.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then28 ], [ -22, %if.then22 ], [ %call, %if.end.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

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
