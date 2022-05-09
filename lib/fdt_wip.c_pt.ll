; ModuleID = '/llk/IR_all_yes/lib/fdt_wip.c_pt.bc'
source_filename = "../lib/fdt_wip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, i32 noundef %idx, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %proplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen) #6
  %0 = ptrtoint ptr %proplen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %proplen, align 4, !annotation !8
  %call.i = call ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, ptr noundef nonnull %proplen) #6
  %tobool.not = icmp eq ptr %call.i, null
  %1 = ptrtoint ptr %proplen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proplen, align 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %len, %idx
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add)
  %cmp = icmp ult i32 %2, %add
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %call.i, i32 %idx
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %val, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -3, %if.end.cleanup_crit_edge ], [ %2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_setprop_inplace(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %proplen.i = alloca i32, align 4
  %proplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen) #6
  %0 = ptrtoint ptr %proplen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %proplen, align 4, !annotation !8
  %call = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %proplen) #6
  %tobool.not = icmp eq ptr %call, null
  %1 = ptrtoint ptr %proplen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proplen, align 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %len)
  %cmp.not = icmp eq i32 %2, %len
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @strlen(ptr noundef %name) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i) #6
  %3 = ptrtoint ptr %proplen.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %proplen.i, align 4, !annotation !8
  %call.i.i = call ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %call3, ptr noundef nonnull %proplen.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %4 = ptrtoint ptr %proplen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proplen.i, align 4
  br i1 %tobool.not.i, label %if.end2.fdt_setprop_inplace_namelen_partial.exit_crit_edge, label %if.end.i

if.end2.fdt_setprop_inplace_namelen_partial.exit_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %fdt_setprop_inplace_namelen_partial.exit

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %len)
  %cmp.i = icmp ult i32 %5, %len
  br i1 %cmp.i, label %if.end.i.fdt_setprop_inplace_namelen_partial.exit_crit_edge, label %if.end2.i

if.end.i.fdt_setprop_inplace_namelen_partial.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fdt_setprop_inplace_namelen_partial.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %6 = call ptr @memcpy(ptr %call.i.i, ptr %val, i32 %len)
  br label %fdt_setprop_inplace_namelen_partial.exit

fdt_setprop_inplace_namelen_partial.exit:         ; preds = %if.end2.i, %if.end.i.fdt_setprop_inplace_namelen_partial.exit_crit_edge, %if.end2.fdt_setprop_inplace_namelen_partial.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ -3, %if.end.i.fdt_setprop_inplace_namelen_partial.exit_crit_edge ], [ %5, %if.end2.fdt_setprop_inplace_namelen_partial.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fdt_setprop_inplace_namelen_partial.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %fdt_setprop_inplace_namelen_partial.exit ], [ -3, %if.end.cleanup_crit_edge ], [ %2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_nop_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !8
  %call.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %len) #6
  %tobool.not = icmp eq ptr %call.i, null
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %2, 12
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %add
  %cmp4.i = icmp ugt ptr %add.ptr.i, %call.i
  br i1 %cmp4.i, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %p.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %p.05.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %p.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p.05.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %2, %entry.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_node_end_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %depth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #6
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp4 = icmp sgt i32 %offset, -1
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

land.rhsthread-pre-split:                         ; preds = %while.body
  %1 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load i32, ptr %depth, align 4
  %cmp1 = icmp sgt i32 %.pr, -1
  br i1 %cmp1, label %land.rhsthread-pre-split.while.body_crit_edge, label %land.rhsthread-pre-split.while.end_crit_edge

land.rhsthread-pre-split.while.end_crit_edge:     ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

land.rhsthread-pre-split.while.body_crit_edge:    ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body:                                       ; preds = %land.rhsthread-pre-split.while.body_crit_edge, %entry.while.body_crit_edge
  %offset.addr.057 = phi i32 [ %call, %land.rhsthread-pre-split.while.body_crit_edge ], [ %offset, %entry.while.body_crit_edge ]
  %call = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.057, ptr noundef nonnull %depth) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.rhsthread-pre-split, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhsthread-pre-split.while.end_crit_edge, %entry.while.end_crit_edge
  %offset.addr.0.lcssa = phi i32 [ %offset, %entry.while.end_crit_edge ], [ %call, %while.body.while.end_crit_edge ], [ %call, %land.rhsthread-pre-split.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #6
  ret i32 %offset.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_nop_node(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %depth.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #6
  %0 = ptrtoint ptr %depth.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nodeoffset)
  %cmp4.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp4.i, label %entry.while.body.i_crit_edge, label %entry.fdt_node_end_offset_.exit.thread_crit_edge

entry.fdt_node_end_offset_.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %fdt_node_end_offset_.exit.thread

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

land.rhsthread-pre-split.i:                       ; preds = %while.body.i
  %1 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr.i = load i32, ptr %depth.i, align 4
  %cmp1.i = icmp sgt i32 %.pr.i, -1
  br i1 %cmp1.i, label %land.rhsthread-pre-split.i.while.body.i_crit_edge, label %if.end

land.rhsthread-pre-split.i.while.body.i_crit_edge: ; preds = %land.rhsthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i:                                     ; preds = %land.rhsthread-pre-split.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %offset.addr.05.i13 = phi i32 [ %call.i, %land.rhsthread-pre-split.i.while.body.i_crit_edge ], [ %nodeoffset, %entry.while.body.i_crit_edge ]
  %call.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.05.i13, ptr noundef nonnull %depth.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %land.rhsthread-pre-split.i, label %while.body.i.fdt_node_end_offset_.exit.thread_crit_edge

while.body.i.fdt_node_end_offset_.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fdt_node_end_offset_.exit.thread

fdt_node_end_offset_.exit.thread:                 ; preds = %while.body.i.fdt_node_end_offset_.exit.thread_crit_edge, %entry.fdt_node_end_offset_.exit.thread_crit_edge
  %offset.addr.0.lcssa.i.ph = phi i32 [ %nodeoffset, %entry.fdt_node_end_offset_.exit.thread_crit_edge ], [ %call.i, %while.body.i.fdt_node_end_offset_.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #6
  br label %cleanup

if.end:                                           ; preds = %land.rhsthread-pre-split.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #6
  %call.i7 = call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %nodeoffset, i32 noundef 0) #6
  %sub = sub i32 %call.i, %nodeoffset
  %add.ptr.i = getelementptr i8, ptr %call.i7, i32 %sub
  %cmp4.i8 = icmp ugt ptr %add.ptr.i, %call.i7
  br i1 %cmp4.i8, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %p.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call.i7, %if.end.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %p.05.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %p.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p.05.i, i32 1
  %cmp.i9 = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i9, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %fdt_node_end_offset_.exit.thread
  %retval.0 = phi i32 [ %offset.addr.0.lcssa.i.ph, %fdt_node_end_offset_.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_offset_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!8 = !{!"auto-init"}
